uint64_t sub_1D550BCB4()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D550BD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65506E6F69746361 && a2 == 0xEF64656D726F6672;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D568FEF0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D568FF10 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001D568FF30 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1D550BEC0(char a1)
{
  result = 0x65506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D550BF70()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v1 == 0x747865746E6F63 && v2 == 0xE700000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x726F727265 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D5616168();

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

uint64_t sub_1D550C048(uint64_t a1)
{
  v2 = sub_1D550D090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C084(uint64_t a1)
{
  v2 = sub_1D550D090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C0C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D550C114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D550BD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D550C13C(uint64_t a1)
{
  v2 = sub_1D550CE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C178(uint64_t a1)
{
  v2 = sub_1D550CE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C1B4(uint64_t a1)
{
  v2 = sub_1D550CEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C1F0(uint64_t a1)
{
  v2 = sub_1D550CEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C22C(uint64_t a1)
{
  v2 = sub_1D550D03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C268(uint64_t a1)
{
  v2 = sub_1D550D03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C2A4(uint64_t a1)
{
  v2 = sub_1D550CF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C2E0(uint64_t a1)
{
  v2 = sub_1D550CF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D550C31C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D550C368(uint64_t a1)
{
  v2 = sub_1D550CFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D550C3A4(uint64_t a1)
{
  v2 = sub_1D550CFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Response.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v164 = v1;
  v162 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B68, &qword_1D566E660);
  v7 = OUTLINED_FUNCTION_4(v6);
  v157 = v8;
  v158 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v156 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v161 = v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B70, &qword_1D566E668);
  OUTLINED_FUNCTION_4(v152);
  v149 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v148 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B78, &qword_1D566E670);
  v24 = OUTLINED_FUNCTION_4(v23);
  v154 = v25;
  v155 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v153 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B80, &qword_1D566E678);
  v31 = OUTLINED_FUNCTION_4(v30);
  v150 = v32;
  v151 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v147 = v36;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B88, &qword_1D566E680);
  OUTLINED_FUNCTION_4(v146);
  v145[1] = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_71_1();
  v163 = type metadata accessor for MusicDaemon.Response.Context(0);
  v41 = OUTLINED_FUNCTION_14(v163);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_135();
  v160 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  v159 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_159_1();
  v52 = type metadata accessor for MusicDaemon.Response(0);
  v53 = OUTLINED_FUNCTION_14(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v58 = v57 - v56;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B90, &qword_1D566E688);
  v166 = OUTLINED_FUNCTION_4(v59);
  v167 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v145 - v64;
  v66 = *(v5 + 24);
  v67 = *(v5 + 32);
  v68 = OUTLINED_FUNCTION_20_5();
  __swift_project_boxed_opaque_existential_1(v68, v69);
  sub_1D550CE98();
  v165 = v65;
  sub_1D56163D8();
  OUTLINED_FUNCTION_5_148();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v112 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v113 = *(v112 + 8);
      v161 = *v112;
      v162 = v113;
      v114 = *(v112 + 16);
      OUTLINED_FUNCTION_1_192();
      v115 = v159;
      sub_1D550BCB4();
      LOBYTE(v168) = 1;
      sub_1D550D03C();
      sub_1D5616018();
      LOBYTE(v168) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v116, v117);
      OUTLINED_FUNCTION_42_48();
      v118 = v164;
      sub_1D56160C8();
      if (v118)
      {
        sub_1D55078B4(v161, v162, v114);
        v119 = OUTLINED_FUNCTION_77_22();
        v120(v119);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v115, v121);
        v81 = OUTLINED_FUNCTION_16_94();
        goto LABEL_13;
      }

      v168 = v161;
      v169 = v162;
      v170 = v114;
      sub_1D550CF40();
      OUTLINED_FUNCTION_56_38();
      sub_1D5616068();
      v140 = OUTLINED_FUNCTION_77_22();
      v141(v140);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v159, v142);
      v143 = OUTLINED_FUNCTION_16_94();
      v144(v143);
      v132 = v161;
      v133 = v162;
      v134 = v114;
      goto LABEL_18;
    case 2u:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_55_35(v92);
      OUTLINED_FUNCTION_1_192();
      v93 = v160;
      sub_1D550BCB4();
      LOBYTE(v168) = 2;
      sub_1D550CFE8();
      OUTLINED_FUNCTION_62_39();
      LOBYTE(v168) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v94, v95);
      OUTLINED_FUNCTION_42_48();
      v96 = v164;
      sub_1D56160C8();
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_31_56();
        sub_1D55078B4(v97, v98, v99);
        v100 = OUTLINED_FUNCTION_16_94();
        v101(v100);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v93, v102);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_66_27();
      OUTLINED_FUNCTION_56_38();
      sub_1D5616068();
      v128 = OUTLINED_FUNCTION_16_94();
      v129(v128);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v160, v130);
      OUTLINED_FUNCTION_203_0();
      v131(v3, v52);
      v132 = OUTLINED_FUNCTION_31_56();
      goto LABEL_18;
    case 3u:
      sub_1D550BCB4();
      LOBYTE(v168) = 3;
      sub_1D550CF94();
      v104 = v148;
      v106 = v165;
      v105 = v166;
      sub_1D5616018();
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v107, v108);
      v109 = v152;
      sub_1D56160C8();
      OUTLINED_FUNCTION_19_3();
      v110(v104, v109);
      OUTLINED_FUNCTION_0_257();
      sub_1D550B1A4(v46, v111);
      OUTLINED_FUNCTION_203_0();
      v81 = v106;
      v103 = v105;
      goto LABEL_13;
    case 4u:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650);
      OUTLINED_FUNCTION_55_35(v82);
      v83 = v161;
      sub_1D4FB8058();
      LOBYTE(v168) = 4;
      sub_1D550CEEC();
      OUTLINED_FUNCTION_62_39();
      LOBYTE(v168) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v84, v85);
      OUTLINED_FUNCTION_42_48();
      v86 = v164;
      sub_1D5616068();
      if (!v86)
      {
        OUTLINED_FUNCTION_66_27();
        OUTLINED_FUNCTION_56_38();
        sub_1D56160C8();
        v122 = OUTLINED_FUNCTION_16_94();
        v123(v122);
        sub_1D4E50004(v161, &qword_1EC7ECCA0, &qword_1D5622EB8);
        OUTLINED_FUNCTION_203_0();
        v124(v3, v52);
        v125 = OUTLINED_FUNCTION_31_56();
        sub_1D55078C8(v125, v126, v127);
        goto LABEL_19;
      }

      v87 = OUTLINED_FUNCTION_31_56();
      sub_1D55078C8(v87, v88, v89);
      v90 = OUTLINED_FUNCTION_16_94();
      v91(v90);
      sub_1D4E50004(v83, &qword_1EC7ECCA0, &qword_1D5622EB8);
LABEL_8:
      OUTLINED_FUNCTION_203_0();
      v81 = v3;
      goto LABEL_9;
    default:
      v70 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
      v71 = *v70;
      v72 = *(v70 + 8);
      LODWORD(v162) = *(v70 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      LOBYTE(v168) = 0;
      sub_1D550D090();
      v73 = v165;
      v52 = v166;
      sub_1D5616018();
      LOBYTE(v168) = 0;
      OUTLINED_FUNCTION_2_190();
      sub_1D550A848(v74, v75);
      OUTLINED_FUNCTION_42_48();
      v76 = v164;
      sub_1D56160C8();
      if (v76)
      {
        sub_1D55078B4(v71, v72, v162);
        v77 = OUTLINED_FUNCTION_54_38();
        v78(v77);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v2, v79);
        OUTLINED_FUNCTION_203_0();
        v81 = v73;
LABEL_9:
        v103 = v52;
LABEL_13:
        v80(v81, v103);
      }

      else
      {
        v161 = v71;
        v168 = v71;
        v169 = v72;
        v135 = v162;
        v170 = v162;
        sub_1D550CF40();
        OUTLINED_FUNCTION_56_38();
        sub_1D5616068();
        v136 = OUTLINED_FUNCTION_54_38();
        v137(v136);
        OUTLINED_FUNCTION_0_257();
        sub_1D550B1A4(v2, v138);
        OUTLINED_FUNCTION_203_0();
        v139(v73, v52);
        v132 = v161;
        v133 = v72;
        v134 = v135;
LABEL_18:
        sub_1D55078B4(v132, v133, v134);
      }

LABEL_19:
      OUTLINED_FUNCTION_26();
      return;
  }
}

unint64_t sub_1D550CE98()
{
  result = qword_1EDD5E900[0];
  if (!qword_1EDD5E900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5E900);
  }

  return result;
}

unint64_t sub_1D550CEEC()
{
  result = qword_1EC7F7B98;
  if (!qword_1EC7F7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7B98);
  }

  return result;
}

unint64_t sub_1D550CF40()
{
  result = qword_1EDD592B0;
  if (!qword_1EDD592B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD592B0);
  }

  return result;
}

unint64_t sub_1D550CF94()
{
  result = qword_1EDD5E898;
  if (!qword_1EDD5E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E898);
  }

  return result;
}

unint64_t sub_1D550CFE8()
{
  result = qword_1EDD5E8B0;
  if (!qword_1EDD5E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8B0);
  }

  return result;
}

unint64_t sub_1D550D03C()
{
  result = qword_1EDD5E8C8;
  if (!qword_1EDD5E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8C8);
  }

  return result;
}

unint64_t sub_1D550D090()
{
  result = qword_1EC7F7BA0;
  if (!qword_1EC7F7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BA0);
  }

  return result;
}

void MusicDaemon.Response.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v156 - v8;
  v10 = sub_1D560D478();
  v11 = OUTLINED_FUNCTION_4(v10);
  v160 = v12;
  v161 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v159 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v157 = v21 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v158 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v156 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v156 - v28;
  v162 = type metadata accessor for MusicDaemon.Response.Context(0);
  v30 = OUTLINED_FUNCTION_14(v162);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v156 - v39;
  v41 = type metadata accessor for MusicDaemon.Response(0);
  v42 = OUTLINED_FUNCTION_14(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_148();
  sub_1D550B250();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27(v91);
      v93 = *v92;
      v157 = *(v92 + 8);
      v158 = v93;
      v94 = *(v92 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](1);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v95, v96);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_73_25();
      v98 = v1 + v97;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v99, v100);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v101 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_38_49(v101);
      v102 = v101[6];
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v103, v104);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v105 = *(v98 + v101[7]);
      if (v105 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v105);
      }

      v133 = v156;
      if (*(v98 + v101[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v98 + v101[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46((v1 + v137));
      v138 = *(v3 + 28);
      sub_1D4FB8150();
      v139 = v161;
      OUTLINED_FUNCTION_57(v133, 1, v161);
      if (v110)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v147 = v159;
        v146 = v160;
        (*(v160 + 32))(v159, v133, v139);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v148, v149);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v146 + 8))(v147, v139);
      }

      OUTLINED_FUNCTION_75_26();
      v151 = (v1 + v150);
      if (*v151 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v155 = v151[1];
        v154 = v151[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v155);
        MEMORY[0x1DA6EC0D0](v154);
      }

      OUTLINED_FUNCTION_74_29();
      sub_1D5614CB8();
      if (v94 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v163 = v158;
        v164 = v157;
        v165 = v94;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v132 = v1;
      goto LABEL_72;
    case 2u:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27(v65);
      v67 = *(v66 + 8);
      v157 = *v66;
      v68 = *(v66 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](2);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v69, v70);
      OUTLINED_FUNCTION_82_25();
      OUTLINED_FUNCTION_73_25();
      v72 = v0 + v71;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v73, v74);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v75 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_45_46((v72 + v75[5]));
      v76 = v75[6];
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v77, v78);
      sub_1D5614CB8();
      v79 = *(v72 + v75[7]);
      if (v79 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v79);
      }

      if (*(v72 + v75[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (*(v72 + v75[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v106 = v161;
      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46((v0 + v107));
      v108 = *(v3 + 28);
      v109 = v158;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v109, 1, v106);
      if (v110)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v112 = v159;
        v111 = v160;
        (*(v160 + 32))(v159, v109, v106);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v113, v114);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v111 + 8))(v112, v106);
      }

      OUTLINED_FUNCTION_75_26();
      v116 = (v0 + v115);
      if (*v116 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v118 = v116[1];
        v117 = v116[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v118);
        MEMORY[0x1DA6EC0D0](v117);
      }

      OUTLINED_FUNCTION_74_29();
      OUTLINED_FUNCTION_82_25();
      if (v68 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v163 = v157;
        v164 = v67;
        v165 = v68;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v132 = v0;
      goto LABEL_72;
    case 3u:
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](3);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v80, v81);
      OUTLINED_FUNCTION_82_25();
      OUTLINED_FUNCTION_73_25();
      v83 = v35 + v82;
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v84, v85);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v86 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_38_49(v86);
      v87 = v86[6];
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v88, v89);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v90 = *(v83 + v86[7]);
      if (v90 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v90);
      }

      if (*(v83 + v86[8]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v119 = v161;
      sub_1D56162F8();
      if (*(v83 + v86[9]) != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46((v35 + v120));
      v121 = *(v3 + 28);
      v122 = v157;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v122, 1, v119);
      if (v110)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v124 = v159;
        v123 = v160;
        (*(v160 + 32))(v159, v122, v119);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v125, v126);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v123 + 8))(v124, v119);
      }

      OUTLINED_FUNCTION_75_26();
      v128 = (v35 + v127);
      if (*v128 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v130 = v128[1];
        v129 = v128[2];
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v130);
        MEMORY[0x1DA6EC0D0](v129);
      }

      OUTLINED_FUNCTION_74_29();
      OUTLINED_FUNCTION_82_25();
      OUTLINED_FUNCTION_0_257();
      v132 = v35;
      goto LABEL_72;
    case 4u:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650);
      OUTLINED_FUNCTION_70_27(v60);
      v62 = *v61;
      v63 = *(v61 + 8);
      v64 = *(v61 + 16);
      sub_1D4FB8058();
      MEMORY[0x1DA6EC0D0](4);
      sub_1D4F87AF4();
      v163 = v62;
      v164 = v63;
      v165 = v64;
      OUTLINED_FUNCTION_84_20();
      sub_1D4E50004(v9, &qword_1EC7ECCA0, &qword_1D5622EB8);
      sub_1D55078C8(v62, v63, v64);
      goto LABEL_73;
    default:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658);
      OUTLINED_FUNCTION_70_27(v45);
      v47 = *v46;
      v157 = *(v46 + 8);
      v158 = v47;
      v48 = *(v46 + 16);
      OUTLINED_FUNCTION_1_192();
      sub_1D550BCB4();
      MEMORY[0x1DA6EC0D0](0);
      sub_1D560C368();
      OUTLINED_FUNCTION_4_151();
      sub_1D550A848(v49, v50);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_73_25();
      v52 = &v40[v51];
      sub_1D560D838();
      OUTLINED_FUNCTION_10_124();
      sub_1D550A848(v53, v54);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v55 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_38_49(v55);
      v56 = v55[6];
      sub_1D56106B8();
      OUTLINED_FUNCTION_9_126();
      sub_1D550A848(v57, v58);
      OUTLINED_FUNCTION_49_35();
      sub_1D5614CB8();
      v59 = v52[v55[7]];
      if (v59 == 3)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v59);
      }

      if (v52[v55[8]] != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      if (v52[v55[9]] != 2)
      {
        OUTLINED_FUNCTION_27();
      }

      v134 = v161;
      sub_1D56162F8();
      OUTLINED_FUNCTION_67_34();
      OUTLINED_FUNCTION_45_46(&v40[v135]);
      v136 = *(v3 + 28);
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v29, 1, v134);
      if (v110)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v141 = v159;
        v140 = v160;
        (*(v160 + 32))(v159, v29, v134);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_194();
        sub_1D550A848(v142, v143);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        (*(v140 + 8))(v141, v134);
      }

      OUTLINED_FUNCTION_75_26();
      v145 = &v40[v144];
      if (*v145 == 2)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v153 = *(v145 + 1);
        v152 = *(v145 + 2);
        OUTLINED_FUNCTION_27();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v153);
        MEMORY[0x1DA6EC0D0](v152);
      }

      OUTLINED_FUNCTION_74_29();
      sub_1D5614CB8();
      if (v48 == 255)
      {
        OUTLINED_FUNCTION_36();
      }

      else
      {
        v163 = v158;
        v164 = v157;
        v165 = v48;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_84_20();
        OUTLINED_FUNCTION_64_34();
      }

      OUTLINED_FUNCTION_0_257();
      v132 = v40;
LABEL_72:
      sub_1D550B1A4(v132, v131);
LABEL_73:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D550DF94(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void MusicDaemon.Response.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v146 = v0;
  v6 = v5;
  v140 = v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BA8, &qword_1D566E690);
  OUTLINED_FUNCTION_4(v144);
  v132 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v139 = v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BB0, &qword_1D566E698);
  OUTLINED_FUNCTION_4(v130);
  v128 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v136 = v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BB8, &qword_1D566E6A0);
  OUTLINED_FUNCTION_4(v134);
  v131 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v138 = v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BC0, &qword_1D566E6A8);
  OUTLINED_FUNCTION_4(v133);
  v129 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v137 = v27;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BC8, &qword_1D566E6B0);
  OUTLINED_FUNCTION_4(v127);
  v126[7] = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v135 = v32;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7BD0, &unk_1D566E6B8);
  OUTLINED_FUNCTION_4(v143);
  v141 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v37 = OUTLINED_FUNCTION_34();
  v142 = type metadata accessor for MusicDaemon.Response(v37);
  v38 = OUTLINED_FUNCTION_14(v142);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  v126[6] = v41 - v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_60_16();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = v126 - v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_159_1();
  v50 = v6[3];
  v51 = v6[4];
  v145 = v6;
  __swift_project_boxed_opaque_existential_1(v6, v50);
  sub_1D550CE98();
  v52 = v146;
  sub_1D5616398();
  if (v52)
  {
    goto LABEL_10;
  }

  v126[4] = v2;
  v126[2] = v4;
  v126[3] = v3;
  v146 = v49;
  v53 = v144;
  v126[5] = v1;
  v55 = v142;
  v54 = v143;
  v56 = sub_1D5615FE8();
  v60 = sub_1D4FE35F0(v56, 0);
  if (v58 == v59 >> 1)
  {
    v61 = v55;
LABEL_9:
    v75 = sub_1D5615C18();
    swift_allocError();
    v77 = v76;
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v77 = v61;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x1E69E6AF8], v75);
    swift_willThrow();
    swift_unknownObjectRelease();
    v79 = OUTLINED_FUNCTION_22_75();
    v80(v79, v54);
LABEL_10:
    v68 = v145;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v68);
    OUTLINED_FUNCTION_26();
    return;
  }

  v126[0] = 0;
  if (v58 < (v59 >> 1))
  {
    v62 = *(v57 + v58);
    v63 = sub_1D4FE35EC(v58 + 1, v59 >> 1, v60, v57, v58, v59);
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    v126[1] = v63;
    v61 = v55;
    if (v65 == v67 >> 1)
    {
      v68 = v126[0];
      switch(v62)
      {
        case 1:
          sub_1D550D03C();
          OUTLINED_FUNCTION_19_85();
          OUTLINED_FUNCTION_85_23();
          v151 = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v92, v93);
          sub_1D5615FD8();
          v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
          v150 = 1;
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615F78();
          OUTLINED_FUNCTION_60_30();
          v121 = *(v120 - 256);
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_22_75();
          v123(v122, v133);
          v124 = OUTLINED_FUNCTION_52_37();
          v125(v124);
          swift_storeEnumTagMultiPayload();
          v68 = v145;
          goto LABEL_24;
        case 2:
          sub_1D550CFE8();
          OUTLINED_FUNCTION_19_85();
          OUTLINED_FUNCTION_76_20();
          OUTLINED_FUNCTION_85_23();
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v83, v84);
          sub_1D5615FD8();
          if (v65)
          {
            OUTLINED_FUNCTION_63_28();
            v74 = OUTLINED_FUNCTION_22_75();
            v85 = v134;
            goto LABEL_20;
          }

          v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615F78();
          OUTLINED_FUNCTION_60_30();
          v110 = *(v109 - 256);
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_22_75();
          v112(v111, v134);
          v113 = OUTLINED_FUNCTION_11_121();
          v114(v113);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        case 3:
          sub_1D550CF94();
          OUTLINED_FUNCTION_19_85();
          OUTLINED_FUNCTION_76_20();
          OUTLINED_FUNCTION_85_23();
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v86, v87);
          v72 = v130;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_60_30();
          if (v65)
          {
            v89 = *(v88 - 256);
            swift_unknownObjectRelease();
            v74 = OUTLINED_FUNCTION_22_75();
            goto LABEL_19;
          }

          v96 = *(v88 - 256);
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_22_75();
          v98(v97, v72);
          v99 = OUTLINED_FUNCTION_11_121();
          v100(v99);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        case 4:
          sub_1D550CEEC();
          OUTLINED_FUNCTION_19_85();
          OUTLINED_FUNCTION_85_23();
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v81, v82);
          sub_1D5615F78();
          OUTLINED_FUNCTION_76_20();
          v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650) + 48);
          sub_1D550F4A8();
          OUTLINED_FUNCTION_53_35();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_60_30();
          v104 = *(v103 - 256);
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_22_75();
          v106(v105, v53);
          v107 = OUTLINED_FUNCTION_11_121();
          v108(v107);
          swift_storeEnumTagMultiPayload();
          goto LABEL_24;
        default:
          v149 = 0;
          sub_1D550D090();
          v69 = v135;
          OUTLINED_FUNCTION_19_85();
          OUTLINED_FUNCTION_76_20();
          type metadata accessor for MusicDaemon.Response.Context(0);
          v148 = 0;
          OUTLINED_FUNCTION_2_190();
          sub_1D550A848(v70, v71);
          v72 = v127;
          sub_1D5615FD8();
          if (v65)
          {
            OUTLINED_FUNCTION_63_28();
            OUTLINED_FUNCTION_19_3();
            v74 = v69;
LABEL_19:
            v85 = v72;
LABEL_20:
            v73(v74, v85);
            v90 = OUTLINED_FUNCTION_11_121();
            v91(v90);
          }

          else
          {
            v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48);
            v147 = 1;
            sub_1D550F4A8();
            sub_1D5615F78();
            OUTLINED_FUNCTION_60_30();
            v116 = *(v115 - 256);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_19_3();
            v117(v69, v72);
            v118 = OUTLINED_FUNCTION_11_121();
            v119(v118);
            swift_storeEnumTagMultiPayload();
LABEL_24:
            sub_1D550BCB4();
            sub_1D550BCB4();
          }

          break;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D550ED78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

unint64_t MusicDaemon.Response.Context.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  v6[2] = 0xD000000000000024;
  v6[3] = v1;
  strcpy(v6, "requestID: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  v2 = sub_1D560C338();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  strcpy(v6, ", item: ");
  BYTE1(v6[1]) = 0;
  WORD1(v6[1]) = 0;
  HIDWORD(v6[1]) = -402653184;
  v3 = v0 + *(type metadata accessor for MusicDaemon.Response.Context(0) + 20);
  v4 = sub_1D53A3188();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000024;
}

void MusicDaemon.Response.Context.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v7 = sub_1D560D478();
  v8 = OUTLINED_FUNCTION_4(v7);
  v52 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v50 = v12 - v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v49 - v15;
  OUTLINED_FUNCTION_9_0();
  v63 = 0xD000000000000024;
  v64 = v16;
  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  v54 = 0x657571657220200ALL;
  v55 = 0xEF22203A44497473;
  v17 = sub_1D560C338();
  MEMORY[0x1DA6EAC70](v17);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v54, v55);

  v54 = 0x6D65746920200A2CLL;
  v55 = 0xEA0000000000203ALL;
  v18 = type metadata accessor for MusicDaemon.Response.Context(0);
  v19 = v0 + v18[5];
  v61 = sub_1D53A34BC();
  v62 = v20;
  v59 = 10;
  v60 = 0xE100000000000000;
  v57 = 2105354;
  v58 = 0xE300000000000000;
  v21 = sub_1D4F53278();
  v22 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v23 = sub_1D5615968();
  v25 = v24;

  MEMORY[0x1DA6EAC70](v23, v25);

  OUTLINED_FUNCTION_65_33();

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1D5615B68();

  v54 = 0x6F63636120200A2CLL;
  v55 = 0xEF203A4449746E75;
  MEMORY[0x1DA6EAC70](*(v2 + v18[6]), *(v2 + v18[6] + 8));
  OUTLINED_FUNCTION_65_33();

  v26 = v18[7];
  v53 = v2;
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v1, 1, v7);
  if (v27)
  {
    sub_1D4E50004(v1, &qword_1EC7ECC98, &qword_1D5622EB0);
  }

  else
  {
    v28 = v51;
    v29 = v52;
    (*(v52 + 32))(v51, v1, v7);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v54 = 0xD000000000000012;
    v55 = v30;
    (*(v29 + 16))(v50, v28, v7);
    v61 = sub_1D5614DD8();
    v62 = v31;
    v59 = 10;
    v60 = 0xE100000000000000;
    v57 = 2105354;
    v58 = 0xE300000000000000;
    OUTLINED_FUNCTION_79_24();
    v49 = v22;
    v50 = v21;
    OUTLINED_FUNCTION_3_31();
    v32 = sub_1D5615968();
    v34 = v33;

    MEMORY[0x1DA6EAC70](v32, v34);

    OUTLINED_FUNCTION_65_33();

    (*(v29 + 8))(v28, v7);
  }

  v35 = (v53 + v18[8]);
  v36 = *v35;
  if (*v35 != 2)
  {
    v38 = v35[1];
    v37 = v35[2];
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v61 = 0xD000000000000012;
    v62 = v39;
    LOWORD(v54) = v36 & 0x101;
    BYTE2(v54) = BYTE2(v36) & 1;
    BYTE3(v54) = BYTE3(v36) & 1;
    v55 = v38;
    v56 = v37;
    v54 = sub_1D5614DD8();
    v55 = v40;
    v59 = 10;
    v60 = 0xE100000000000000;
    v57 = 2105354;
    v58 = 0xE300000000000000;
    OUTLINED_FUNCTION_79_24();
    v54 = v21;
    v53 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v41 = sub_1D5615968();
    v43 = v42;

    MEMORY[0x1DA6EAC70](v41, v43);

    MEMORY[0x1DA6EAC70](v61, v62);
  }

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v54 = 0xD000000000000010;
  v55 = v44;
  v45 = v18[9];
  sub_1D560C368();
  OUTLINED_FUNCTION_4_151();
  sub_1D550A848(v46, v47);
  v48 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v48);

  MEMORY[0x1DA6EAC70](v54, v55);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D550F4A8()
{
  result = qword_1EDD592A8;
  if (!qword_1EDD592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD592A8);
  }

  return result;
}

void sub_1D550F58C()
{
  sub_1D550F618();
  if (v0 <= 0x3F)
  {
    sub_1D550F698();
    if (v1 <= 0x3F)
    {
      sub_1D550F6E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D550F618()
{
  if (!qword_1EDD5E868)
  {
    type metadata accessor for MusicDaemon.Response.Context(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7B10, &qword_1D566E418);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5E868);
    }
  }
}

void sub_1D550F698()
{
  if (!qword_1EDD5E860)
  {
    v0 = type metadata accessor for MusicDaemon.Response.Context(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5E860);
    }
  }
}

void sub_1D550F6E0()
{
  if (!qword_1EDD5E810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5E810);
    }
  }
}

uint64_t sub_1D550F780()
{
  v0 = sub_1D560C368();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for MusicDaemon.Item();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_1D550F850();
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_1D550F8A8();
    if (v5 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_1D550F850()
{
  if (!qword_1EDD5F558)
  {
    sub_1D560D478();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5F558);
    }
  }
}

void sub_1D550F8A8()
{
  if (!qword_1EDD5EFA0)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5EFA0);
    }
  }
}

_BYTE *_s8ResponseO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8ResponseO28ObservationChangesCodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1D550FAB0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8ResponseO7ContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D550FC6C()
{
  result = qword_1EC7F7BE8;
  if (!qword_1EC7F7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BE8);
  }

  return result;
}

unint64_t sub_1D550FCC4()
{
  result = qword_1EC7F7BF0;
  if (!qword_1EC7F7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BF0);
  }

  return result;
}

unint64_t sub_1D550FD1C()
{
  result = qword_1EC7F7BF8;
  if (!qword_1EC7F7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7BF8);
  }

  return result;
}

unint64_t sub_1D550FD74()
{
  result = qword_1EC7F7C00;
  if (!qword_1EC7F7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C00);
  }

  return result;
}

unint64_t sub_1D550FDCC()
{
  result = qword_1EC7F7C08;
  if (!qword_1EC7F7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C08);
  }

  return result;
}

unint64_t sub_1D550FE24()
{
  result = qword_1EC7F7C10;
  if (!qword_1EC7F7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C10);
  }

  return result;
}

unint64_t sub_1D550FE7C()
{
  result = qword_1EC7F7C18;
  if (!qword_1EC7F7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C18);
  }

  return result;
}

unint64_t sub_1D550FED4()
{
  result = qword_1EDD5E8D0;
  if (!qword_1EDD5E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8D0);
  }

  return result;
}

unint64_t sub_1D550FF2C()
{
  result = qword_1EDD5E8D8;
  if (!qword_1EDD5E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8D8);
  }

  return result;
}

unint64_t sub_1D550FF84()
{
  result = qword_1EDD5E8B8;
  if (!qword_1EDD5E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8B8);
  }

  return result;
}

unint64_t sub_1D550FFDC()
{
  result = qword_1EDD5E8C0;
  if (!qword_1EDD5E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8C0);
  }

  return result;
}

unint64_t sub_1D5510034()
{
  result = qword_1EDD5E8A0;
  if (!qword_1EDD5E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8A0);
  }

  return result;
}

unint64_t sub_1D551008C()
{
  result = qword_1EDD5E8A8;
  if (!qword_1EDD5E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8A8);
  }

  return result;
}

unint64_t sub_1D55100E4()
{
  result = qword_1EDD5E888;
  if (!qword_1EDD5E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E888);
  }

  return result;
}

unint64_t sub_1D551013C()
{
  result = qword_1EDD5E890;
  if (!qword_1EDD5E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E890);
  }

  return result;
}

unint64_t sub_1D5510194()
{
  result = qword_1EDD5E8E0;
  if (!qword_1EDD5E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8E0);
  }

  return result;
}

unint64_t sub_1D55101EC()
{
  result = qword_1EDD5E8E8;
  if (!qword_1EDD5E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8E8);
  }

  return result;
}

unint64_t sub_1D5510244()
{
  result = qword_1EDD5E8F0;
  if (!qword_1EDD5E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8F0);
  }

  return result;
}

unint64_t sub_1D551029C()
{
  result = qword_1EDD5E8F8;
  if (!qword_1EDD5E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E8F8);
  }

  return result;
}

unint64_t sub_1D55102F4()
{
  result = qword_1EDD5E870;
  if (!qword_1EDD5E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E870);
  }

  return result;
}

unint64_t sub_1D551034C()
{
  result = qword_1EDD5E878;
  if (!qword_1EDD5E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5E878);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_56()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_39()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return sub_1D5616018();
}

void OUTLINED_FUNCTION_65_33()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  JUMPOUT(0x1DA6EAC70);
}

unint64_t OUTLINED_FUNCTION_66_27()
{
  v4 = *(v2 - 160);
  *(v2 - 112) = v1;
  *(v2 - 104) = v4;
  *(v2 - 96) = v0;
  *(v2 - 65) = 1;

  return sub_1D550CF40();
}

uint64_t OUTLINED_FUNCTION_78_26()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

uint64_t Artwork._artworkCatalog.getter()
{
  result = sub_1D5614038();
  if (!result)
  {

    return sub_1D5613F18();
  }

  return result;
}

uint64_t Artwork.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = sub_1D56140F8();
  v46 = v13;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = objc_opt_self();
  v16 = sub_1D5614BA8();
  v48[0] = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:v48];

  v18 = v48[0];
  if (v17)
  {
    v19 = sub_1D560C198();
    v21 = v20;

    v22 = sub_1D560B9C8();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D54CD0A4();
    sub_1D560B948();
    v40 = v46;
    sub_1D4E7661C(v46, &qword_1EC7E9CA0, &unk_1D561A0C0);

    sub_1D4E55E1C(v19, v21);

    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    sub_1D531EC24(v11, v40);
  }

  else
  {
    v25 = v18;
    v26 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D560C758();
    __swift_project_value_buffer(v27, qword_1EDD76DC8);

    v28 = v26;
    v29 = sub_1D560C738();
    v30 = sub_1D56156C8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = sub_1D5614BC8();
      v45 = a1;
      v34 = v33;

      v35 = sub_1D4E6835C(v32, v34, v48);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v47 = v26;
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v37 = sub_1D5614DB8();
      v39 = sub_1D4E6835C(v37, v38, v48);

      *(v31 + 14) = v39;
      a1 = v45;
      _os_log_impl(&dword_1D4E3F000, v29, v30, "Failed to initialize Artwork with dictionary: %{public}s. Error = %s.", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }

    v40 = v46;
  }

  sub_1D531EC24(v40, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    sub_1D4E7661C(v8, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v41 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_0(v14);
    (*(v42 + 32))(a1, v8, v14);
    v41 = 0;
  }

  result = __swift_storeEnumTagSinglePayload(a1, v41, 1, v14);
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Artwork.textGradient.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C20, &qword_1D566F0E0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D5613FD8();
  v7 = sub_1D5613FC8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F7C20, &qword_1D566F0E0);
    v8 = type metadata accessor for Artwork.TextGradient();
    v9 = a1;
    v10 = 1;
  }

  else
  {
    v11 = sub_1D5613F88();
    v12 = sub_1D5613FA8();
    v13 = type metadata accessor for Artwork.TextGradient();
    v14 = a1 + *(v13 + 24);
    sub_1D5613F98();
    v15 = a1 + *(v13 + 28);
    sub_1D5613FB8();
    *a1 = v11;
    a1[1] = v12;
    OUTLINED_FUNCTION_24_0(v7);
    (*(v16 + 8))(v1, v7);
    v9 = a1;
    v10 = 0;
    v8 = v13;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t Artwork.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C28, &qword_1D566F0E8);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_53();
  sub_1D56140D8();
  v7 = sub_1D56140C8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1D4E7661C(v1, &qword_1EC7F7C28, &qword_1D566F0E8);
    v8 = 1;
  }

  else
  {
    sub_1D5327D74(a1);
    OUTLINED_FUNCTION_24_0(v7);
    (*(v9 + 8))(v1, v7);
    v8 = 0;
  }

  v10 = type metadata accessor for Artwork.Gradient();
  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v10);
}

uint64_t Artwork.CropStyle.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Artwork.CropStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D5510CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Artwork.CropStyle.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1D5510D38@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.CropStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Artwork.ImageFormat.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Artwork.ImageFormat.rawValue.getter()
{
  v1 = 6778480;
  if (*v0 != 1)
  {
    v1 = 1667851624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778986;
  }
}

uint64_t sub_1D5510E00@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Artwork.ImageFormat.init(rawValue:)(a1);
}

uint64_t sub_1D5510E0C@<X0>(uint64_t *a1@<X8>)
{
  result = Artwork.ImageFormat.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Artwork.url(width:height:cropStyle:format:)(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v9 = a3[1];
  v10 = *a3;
  v11 = *a4;
  sub_1D5613F48();
  sub_1D56160F8();
  sub_1D4F53278();
  sub_1D5615968();

  sub_1D56160F8();
  OUTLINED_FUNCTION_1_193();

  OUTLINED_FUNCTION_1_193();

  v4 = 0xE300000000000000;
  v5 = 1667851624;
  if (v11 == 1)
  {
    v5 = 6778480;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v11)
  {
    v6 = v5;
  }

  else
  {
    v6 = 6778986;
  }

  if (v11)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1DA6EAC70](v6, v7);

  OUTLINED_FUNCTION_1_193();

  sub_1D560C028();
}

uint64_t Artwork.byAnalyzingColors()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D56140F8();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1D5613F58();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C30, &qword_1D566F0F8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D551127C, 0, 0);
}

uint64_t sub_1D551127C()
{
  (*(v0[10] + 16))(v0[7], v0[8], v0[9]);
  v1 = sub_1D5614038();
  v0[18] = v1;
  if (v1)
  {
    sub_1D56106C8();
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = *(MEMORY[0x1E69765B8] + 4);
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_1D55113CC;
    v6 = v0[17];

    return MEMORY[0x1EEDD1070](v6, v2, v3);
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[11];

    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D55113CC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D55114C8, 0, 0);
}

uint64_t sub_1D55114C8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1D5511BF0(v2, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v0[17], &qword_1EC7F7C30, &qword_1D566F0F8);

    sub_1D4E7661C(v7, &qword_1EC7F7C30, &qword_1D566F0F8);
  }

  else
  {
    v9 = v0[14];
    v8 = v0[15];
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[10];
    v13 = v0[11];
    v21 = v0[7];
    v22 = v0[9];
    (*(v10 + 32))(v9, v7, v11);
    sub_1D56106C8();
    (*(v10 + 16))(v8, v9, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    sub_1D5614108();

    (*(v10 + 8))(v9, v11);
    sub_1D4E7661C(v5, &qword_1EC7F7C30, &qword_1D566F0F8);
    (*(v12 + 8))(v21, v22);
    (*(v12 + 32))(v21, v13, v22);
  }

  v15 = v0[16];
  v14 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[11];

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D5511700()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_1D5511820;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FE2404;
  v0[13] = &block_descriptor_35;
  v0[14] = v2;
  [v1 preconnectToImageServiceWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5511820()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    v3 = sub_1D5511A28;
  }

  else
  {
    v3 = sub_1D5511930;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5511930()
{
  if (qword_1EDD54460 != -1)
  {
    OUTLINED_FUNCTION_2_191();
  }

  v0 = sub_1D560C758();
  __swift_project_value_buffer(v0, qword_1EDD76A60);
  v1 = sub_1D560C738();
  v2 = sub_1D56156E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D4E3F000, v1, v2, "Artwork.preconnectToImageService() succeeded.", v3, 2u);
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5511A28()
{
  v1 = *(v0 + 144);
  swift_willThrow();
  if (qword_1EDD54460 != -1)
  {
    OUTLINED_FUNCTION_2_191();
  }

  v2 = *(v0 + 144);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76A60);
  v4 = v2;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D4E3F000, v5, v6, "ArtworkImage.preconnectToImageService() failed with error: %{public}@.", v9, 0xCu);
    sub_1D4E7661C(v10, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D5511BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C30, &qword_1D566F0F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5511C64()
{
  result = qword_1EC7F7C38;
  if (!qword_1EC7F7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C38);
  }

  return result;
}

unint64_t sub_1D5511CBC()
{
  result = qword_1EC7F7C40;
  if (!qword_1EC7F7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C40);
  }

  return result;
}

_BYTE *_s11ImageFormatOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5511DFC()
{
  result = qword_1EC7F7C48;
  if (!qword_1EC7F7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C48);
  }

  return result;
}

uint64_t static MusicPlatformMigration.performImport(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5511E74, 0, 0);
}

uint64_t sub_1D5511E74()
{
  type metadata accessor for MusicPlatformMigration.ImportSession();
  v1 = swift_allocObject();
  v0[4] = v1;
  sub_1D5512508();
  sub_1D55140C0();
  v6 = (v0[2] + *v0[2]);
  v2 = *(v0[2] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1D55120D8;
  v4 = v0[3];

  return v6(v1);
}

uint64_t sub_1D55120D8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1D551237C;
  }

  else
  {
    v3 = sub_1D55121EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D55121EC()
{
  v2 = v0[6];
  v3 = v0[4];
  sub_1D55142F4();
  if (v2)
  {
    v4 = v2;
    if (qword_1EC7E90C8 != -1)
    {
      OUTLINED_FUNCTION_0_259();
      swift_once();
    }

    v5 = sub_1D560C758();
    v6 = OUTLINED_FUNCTION_31_57(v5, qword_1EC87C300);
    v7 = sub_1D560C738();
    v8 = sub_1D56156C8();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_55_1();
      swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_38_12();
      *v1 = 138543362;
      v10 = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v11;
      *v9 = v11;
      OUTLINED_FUNCTION_7_140();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
      sub_1D4E50004(v9, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v18 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v18);
    }

    v19 = v0[4];

    sub_1D551421C();
    swift_willThrow();

    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v21 = v0[4];

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_1D551237C()
{
  v2 = *(v0 + 48);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  v4 = OUTLINED_FUNCTION_31_57(v3, qword_1EC87C300);
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_55_1();
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_38_12();
    *v1 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_7_140();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1D4E50004(v7, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v16 = OUTLINED_FUNCTION_3_1();
    MEMORY[0x1DA6ED200](v16);
  }

  v17 = *(v0 + 32);

  sub_1D551421C();
  swift_willThrow();

  OUTLINED_FUNCTION_15_5();

  return v18();
}

void *sub_1D5512508()
{
  v1 = v0;
  v2 = sub_1D560C368();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() autoupdatingSharedLibrary];
  if (result)
  {
    v0[2] = result;
    sub_1D4ECC7A8(0, &qword_1EC7F7C70, 0x1E69B3400);
    OUTLINED_FUNCTION_222();
    v0[6] = sub_1D5614BD8();
    v0[7] = OUTLINED_FUNCTION_42_49();
    OUTLINED_FUNCTION_222();
    v0[8] = sub_1D5614BD8();
    OUTLINED_FUNCTION_222();
    v0[9] = sub_1D5614BD8();
    v0[10] = OUTLINED_FUNCTION_42_49();
    v11 = [objc_allocWithZone(MEMORY[0x1E69B3480]) init];
    [v11 setSourceType_];
    sub_1D4ECC7A8(0, &qword_1EC7F7C78, 0x1E69B3478);
    v12 = v11;
    v1[3] = sub_1D5512990(v12, 0);
    v13 = [v1[2] syncLibraryID];
    if (v13 && (v14 = v13, v50 = 0, v51 = 0, sub_1D5614D58(), v14, (v15 = v51) != 0))
    {
      v16 = v50;
    }

    else
    {

      v16 = 0;
      v15 = 0xE000000000000000;
    }

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v1[4] = v16;
      v1[5] = v15;
      if (qword_1EC7E90C8 != -1)
      {
        OUTLINED_FUNCTION_0_259();
        swift_once();
      }

      v18 = sub_1D560C758();
      OUTLINED_FUNCTION_31_57(v18, qword_1EC87C300);

      v19 = sub_1D560C738();
      sub_1D56156E8();

      if (OUTLINED_FUNCTION_37_4())
      {
        OUTLINED_FUNCTION_55_1();
        v20 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_3();
        v21 = swift_slowAlloc();
        v50 = v21;
        *v20 = 136446210;
        v22 = v1[4];
        v23 = v1[5];

        v24 = sub_1D4E6835C(v22, v23, &v50);

        *(v20 + 4) = v24;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        v30 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v30);
      }
    }

    else
    {

      sub_1D560C358();
      v31 = sub_1D560C338();
      v33 = v32;
      (*(v5 + 8))(v9, v2);
      v1[4] = v31;
      v1[5] = v33;
      if (qword_1EC7E90C8 != -1)
      {
        OUTLINED_FUNCTION_0_259();
        swift_once();
      }

      v34 = sub_1D560C758();
      OUTLINED_FUNCTION_31_57(v34, qword_1EC87C300);

      v35 = sub_1D560C738();
      sub_1D56156E8();

      if (OUTLINED_FUNCTION_37_4())
      {
        OUTLINED_FUNCTION_55_1();
        v36 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_3();
        v37 = swift_slowAlloc();
        v50 = v37;
        *v36 = 136446210;
        v38 = v1[4];
        v39 = v1[5];

        v40 = sub_1D4E6835C(v38, v39, &v50);

        *(v36 + 4) = v40;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        v46 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v46);
      }

      v47 = v1[4];
      v48 = v1[5];
      v49 = v1[2];
      v19 = sub_1D5614D38();
      [v49 setSyncLibraryID_];
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5512990(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_1D55129F0(void *__src)
{
  v3 = v1;
  memcpy(__dst, __src, 0x130uLL);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v4 = sub_1D560C758();
  v5 = __swift_project_value_buffer(v4, qword_1EC87C300);
  OUTLINED_FUNCTION_46_41(v5, v6, v7, v8, v9, v10, v11, v12, v147, v150, v153, v156, v160, v164, v168, v172, v176, v179, v182, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v187[0]);
  v177 = v5;
  v13 = sub_1D560C738();
  v14 = sub_1D56156E8();
  sub_1D5075464(__dst);
  v180 = v3;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_55_1();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v16 = swift_slowAlloc();
    v189 = v16;
    *v15 = 136446210;
    v17 = memcpy(__srca, __dst, sizeof(__srca));
    OUTLINED_FUNCTION_46_41(v17, v18, v19, v20, v21, v22, v23, v24, v148, v151, v154, v157, v161, v165, v169, v173, v5, v180, v183, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v187[0]);
    v25 = MigratedTrack.description.getter();
    v27 = v26;
    memcpy(v187, __srca, sizeof(v187));
    sub_1D5075464(v187);
    v28 = sub_1D4E6835C(v25, v27, &v189);

    *(v15 + 4) = v28;
    _os_log_impl(&dword_1D4E3F000, v13, v14, "[ImportSession] Adding track: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v3 = v180;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v162 = v2;
  v29 = [objc_allocWithZone(MEMORY[0x1E69B3400]) init];
  if (!v29)
  {
    goto LABEL_90;
  }

  v30 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E69B33F8]) init];
  if (!v31)
  {
LABEL_89:

LABEL_90:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v32 = v31;
  v184 = [objc_allocWithZone(MEMORY[0x1E69B3410]) init];
  if (!v184)
  {
LABEL_88:

    v30 = v32;
    goto LABEL_89;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69B33D8]) init];
  if (!v33)
  {
    goto LABEL_85;
  }

  v34 = v33;
  v35 = [objc_allocWithZone(MEMORY[0x1E69B33E0]) init];
  v170 = v34;
  if (!v35)
  {

    v30 = v32;
    v32 = v184;
    goto LABEL_87;
  }

  v36 = v35;
  v37 = [objc_allocWithZone(MEMORY[0x1E69B33F0]) init];
  v174 = v36;
  if (v37)
  {
    v38 = v37;
    v39 = v3[4];
    v40 = v3[5];
    v41 = sub_1D5614D38();
    [v38 setLibraryName_];

    v42 = sub_1D5614D38();
    [v38 setLibraryId_];
    v43 = v38;
    v44 = sub_1D560C738();
    v45 = sub_1D56156E8();
    v46 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_41_0();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v49 = swift_slowAlloc();
      v187[0] = v49;
      *v48 = 136446466;
      v50 = sub_1D55163DC(v43);
      if (!v51)
      {
LABEL_84:

        __break(1u);
LABEL_85:
        v170 = v184;
LABEL_87:

        v30 = v32;
        v32 = v170;
        goto LABEL_88;
      }

      v52 = sub_1D4E6835C(v50, v51, v187);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2050;
      v53 = [v43 libraryId];

      *(v48 + 14) = v53;
      _os_log_impl(&dword_1D4E3F000, v44, v45, "[ImportSession] Setting library identifier %{public}s: %{public}lld.", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v54 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v54);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      v34 = v170;
      v36 = v174;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D561C050;
    *(v55 + 56) = sub_1D4ECC7A8(0, &qword_1EC7F7C60, 0x1E69B33F0);
    *(v55 + 32) = v43;
    sub_1D4ECC7A8(0, &qword_1EC7F7C68, 0x1E695DF70);
    v56 = v43;
    v57 = MEMORY[0x1DA6EB5F0](v55);
    [v30 setLibraryIdentifiers_];

    v3 = v180;
  }

  v43 = __dst[0];
  v58 = __dst[1];
  OUTLINED_FUNCTION_23_77();
  v30 = v30;
  v59 = v3[6];
  swift_isUniquelyReferenced_nonNull_native();
  __srca[0] = v3[6];
  sub_1D4F154CC();
  v3[6] = __srca[0];
  swift_endAccess();
  if (*(__dst[17] + 16))
  {
    v61 = *(__dst[17] + 48);
    v60 = *(__dst[17] + 56);
  }

  else
  {
    v61 = 0;
    v60 = 0xE000000000000000;
  }

  sub_1D551620C(v61, v60, v36);
  if (__dst[5])
  {
  }

  v62 = OUTLINED_FUNCTION_222();
  sub_1D551620C(v62, v63, v34);
  if (__dst[5] && (v64 = __dst[16]) != 0)
  {
    v65 = __dst[15] & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v65 = 0;
    v64 = 0xE000000000000000;
  }

  v66 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v66 = v65;
  }

  if (v66)
  {
    sub_1D55162C8(v43, v58, v34);
    if (__dst[5])
    {
      v67 = __dst[16];
    }

    else
    {
      v67 = 0;
    }

    v3 = v180;
    OUTLINED_FUNCTION_23_77();
    if (v67)
    {
      v68 = v180[8];
      swift_isUniquelyReferenced_nonNull_native();
      __srca[0] = v180[8];
      sub_1D4F153A4();
      v180[8] = __srca[0];
    }

    else
    {
      sub_1D5515F34();
    }

    v36 = v174;
    swift_endAccess();
  }

  if (__dst[5] && (__dst[12] & 1) == 0)
  {
    v69 = __dst[11];
    if (__dst[11] >> 31)
    {
      __break(1u);
      goto LABEL_80;
    }
  }

  else
  {
    v69 = 1;
  }

  [v34 setNumDiscs_];
  if (!__dst[5] || (__dst[14] & 1) != 0)
  {
    v70 = 1;
    goto LABEL_43;
  }

  v70 = __dst[13];
  if (__dst[13] >> 31)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_43:
  [v34 setNumTracks_];
  [v184 setAlbum_];
  [v184 setArtist_];
  if (LOBYTE(__dst[21]))
  {
    v71 = 1;
  }

  else
  {
    v71 = __dst[20];
  }

  if (v71 >> 31)
  {
    goto LABEL_81;
  }

  [v184 setDiscNumber_];
  if (LOBYTE(__dst[23]))
  {
    v72 = 1;
  }

  else
  {
    v72 = __dst[22];
  }

  if (v72 >> 31)
  {
    goto LABEL_82;
  }

  [v184 setTrackNumber_];
  sub_1D5516270(__dst[2], __dst[3], v32);
  [v32 setMediaType_];
  if (LOBYTE(__dst[27]))
  {
    v73 = -978307200;
  }

  else
  {
    v73 = __dst[26] / 1000 - 978307200;
  }

  [v32 setReleaseDateTime_];
  if (LOBYTE(__dst[19]))
  {
    v74 = 0;
  }

  else
  {
    v74 = __dst[18];
  }

  if (v74 < 0)
  {
    goto LABEL_83;
  }

  [v32 setDuration_];
  [v32 setHasExplicitContent_];
  [v32 setSong_];
  [v32 setIsInUsersLibrary_];
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  v75 = v30;
  v76 = v32;
  v166 = v75;
  v77 = sub_1D5514064(v75, v32, &selRef_initWithMultiverseIdentifier_mediaItem_);
  v78 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1D561EAC0;
  *(v79 + 32) = v77;
  v80 = v77;
  v81 = sub_1D5615158();

  v82 = [v78 addItemsReturningResult_];

  v83 = [v82 success];
  if (v83)
  {
    v91 = [v82 resultingDatabasePersistentIDs];
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    sub_1D5516374();
    OUTLINED_FUNCTION_25_66();
    v92 = sub_1D5614BB8();

    v93 = sub_1D4ECA64C(v92);

    if (v93)
    {
      v94 = [v93 longLongValue];
    }

    else
    {
      v94 = 0;
    }

    v113 = sub_1D560C738();
    sub_1D56156E8();
    v114 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v114, v115))
    {
      OUTLINED_FUNCTION_55_1();
      v116 = swift_slowAlloc();
      *v116 = 134349056;
      *(v116 + 4) = v94;
      OUTLINED_FUNCTION_6_152();
      _os_log_impl(v117, v118, v119, v120, v121, 0xCu);
      v122 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v122);
    }

    OUTLINED_FUNCTION_41_53();
    if (v123)
    {
      OUTLINED_FUNCTION_23_77();

      v124 = v180[7];
      swift_isUniquelyReferenced_nonNull_native();
      v125 = v180[7];
      OUTLINED_FUNCTION_32_61();
      v180[7] = __srca[0];
      swift_endAccess();
    }

    else
    {

      v126 = sub_1D560C738();
      sub_1D56156C8();
      v127 = OUTLINED_FUNCTION_11_122();
      if (os_log_type_enabled(v127, v128))
      {
        OUTLINED_FUNCTION_10_125();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v129, v130, v131, v132, v133, 2u);
        v134 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v134);
      }
    }

    if (__dst[29] && (OUTLINED_FUNCTION_41_53(), v135))
    {
      OUTLINED_FUNCTION_23_77();

      v136 = v180[10];
      swift_isUniquelyReferenced_nonNull_native();
      v137 = v180[10];
      OUTLINED_FUNCTION_32_61();
      v180[10] = __srca[0];
      swift_endAccess();
    }

    else
    {
      v138 = sub_1D560C738();
      sub_1D56156C8();
      v139 = OUTLINED_FUNCTION_11_122();
      if (os_log_type_enabled(v139, v140))
      {
        OUTLINED_FUNCTION_10_125();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_152();
        _os_log_impl(v141, v142, v143, v144, v145, 2u);
        v146 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v146);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_41(v83, v84, v85, v86, v87, v88, v89, v90, v148, v151, v154, v157, v162, v166, v170, v174, v177, v180, v184, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v187[0]);
    v95 = sub_1D560C738();
    v96 = sub_1D56156C8();
    sub_1D5075464(__dst);
    if (os_log_type_enabled(v95, v96))
    {
      OUTLINED_FUNCTION_55_1();
      v158 = v80;
      v97 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v98 = swift_slowAlloc();
      v189 = v98;
      *v97 = 136446210;
      v99 = memcpy(__srca, __dst, sizeof(__srca));
      OUTLINED_FUNCTION_46_41(v99, v100, v101, v102, v103, v104, v105, v106, v149, v152, v155, v158, v163, v167, v171, v175, v178, v181, v185, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6], __srca[7], __srca[8], __srca[9], __srca[10], __srca[11], __srca[12], __srca[13], __srca[14], __srca[15], __srca[16], __srca[17], __srca[18], __srca[19], __srca[20], __srca[21], __srca[22], __srca[23], __srca[24], __srca[25], __srca[26], __srca[27], __srca[28], __srca[29], __srca[30], __srca[31], __srca[32], __srca[33], __srca[34], __srca[35], __srca[36], __srca[37], v187[0]);
      v107 = MigratedTrack.description.getter();
      v109 = v108;
      memcpy(v187, __srca, sizeof(v187));
      sub_1D5075464(v187);
      v110 = sub_1D4E6835C(v107, v109, &v189);

      *(v97 + 4) = v110;
      _os_log_impl(&dword_1D4E3F000, v95, v96, "[ImportSession] Failed to add track: %{public}s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v111 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v111);
      v80 = v159;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    sub_1D5516320();
    OUTLINED_FUNCTION_121_0();
    *v112 = 1;
    swift_willThrow();
  }
}

void sub_1D55136DC(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x68uLL);
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EC87C300);
  sub_1D50750CC(__dst, v101);
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();
  sub_1D5075128(__dst);
  v6 = &unk_1D561C000;
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_55_1();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v8 = swift_slowAlloc();
    v103 = v8;
    *v7 = 136446210;
    memcpy(__srca, __dst, sizeof(__srca));
    sub_1D50750CC(__dst, v101);
    v9 = MigratedPlaylist.description.getter();
    v11 = v10;
    memcpy(v101, __srca, sizeof(v101));
    sub_1D5075128(v101);
    v12 = sub_1D4E6835C(v9, v11, &v103);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[ImportSession] Adding playlist: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69B3400]) init];
  if (!v13)
  {
    goto LABEL_59;
  }

  v14 = v13;
  v99 = [objc_allocWithZone(MEMORY[0x1E69B3408]) init];
  if (!v99)
  {
LABEL_58:

LABEL_59:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B33F0]) init];
  if (v15)
  {
    v16 = v15;
    v17 = v2[4];
    v18 = v2[5];
    v19 = sub_1D5614D38();
    [v16 setLibraryName_];

    v20 = sub_1D5614D38();
    [v16 setLibraryId_];
    v21 = v16;
    v22 = sub_1D560C738();
    v23 = sub_1D56156E8();
    v24 = OUTLINED_FUNCTION_11_122();
    if (!os_log_type_enabled(v24, v25))
    {

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_41_0();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v27 = swift_slowAlloc();
    v101[0] = v27;
    *v26 = 136446466;
    v28 = sub_1D55163DC(v21);
    if (v29)
    {
      v30 = sub_1D4E6835C(v28, v29, v101);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2050;
      v31 = [v21 libraryId];

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1D4E3F000, v22, v23, "[ImportSession] Setting library identifier %{public}s: %{public}lld.", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v32 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v32);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      v6 = &unk_1D561C000;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D561C050;
      *(v33 + 56) = sub_1D4ECC7A8(0, &qword_1EC7F7C60, 0x1E69B33F0);
      *(v33 + 32) = v21;
      sub_1D4ECC7A8(0, &qword_1EC7F7C68, 0x1E695DF70);
      v34 = v21;
      v35 = MEMORY[0x1DA6EB5F0](v33);
      [v14 setLibraryIdentifiers_];

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_13:
  sub_1D5516440(__dst[2], __dst[3], v99);
  v97 = v14;
  if (__dst[5])
  {
    v36 = sub_1D5614D38();
  }

  else
  {
    v36 = 0;
  }

  [v99 setPlaylistDescription_];

  if (LOBYTE(__dst[7]))
  {
    v37 = -978307200;
  }

  else
  {
    v37 = __dst[6] / 1000 - 978307200;
  }

  [v99 setCreationDateTime_];
  if (LOBYTE(__dst[9]))
  {
    v38 = -978307200;
  }

  else
  {
    v38 = __dst[8] / 1000 - 978307200;
  }

  [v99 setCloudLastUpdateTime_];
  v39 = __dst[12];
  if (__dst[12])
  {
    v40 = __dst[11] & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v40 = 0;
  }

  if (__dst[12])
  {
    v41 = __dst[12];
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40;
  }

  if (v42)
  {
    swift_beginAccess();
    if (v39)
    {
      v43 = v2[9];
      swift_isUniquelyReferenced_nonNull_native();
      __srca[0] = v2[9];
      OUTLINED_FUNCTION_13_8();
      sub_1D4F153A4();
      v2[9] = __srca[0];
    }

    else
    {
      sub_1D5515F34();
    }

    swift_endAccess();
  }

  else
  {
  }

  v44 = __dst[10];
  v45 = *(__dst[10] + 16);
  if (v45)
  {
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v46 = (v44 + 40);
    v98 = v6[351];
    while (1)
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v49 = v2[6];
      v50 = *(v49 + 16);

      if (!v50)
      {
        goto LABEL_42;
      }

      v51 = sub_1D4E4EFA0();
      if ((v52 & 1) == 0)
      {
        break;
      }

      v53 = v51;

      v54 = *(*(v49 + 56) + 8 * v53);

      [v99 addItems_];

LABEL_46:
      v46 += 2;
      if (!--v45)
      {
        goto LABEL_47;
      }
    }

LABEL_42:

    v55 = sub_1D560C738();
    v56 = sub_1D56156C8();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_55_1();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_38_3();
      v58 = swift_slowAlloc();
      __srca[0] = v58;
      *v57 = v98;
      v59 = sub_1D4E6835C(v47, v48, __srca);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_1D4E3F000, v55, v56, "[ImportSession] Failed to map track identifier %{public}s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v60 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v60);
    }

    else
    {
    }

    goto LABEL_46;
  }

LABEL_47:
  sub_1D4ECC7A8(0, &qword_1EC7EA460, 0x1E69B3470);
  v61 = v97;
  v62 = v99;
  v63 = OUTLINED_FUNCTION_13_8();
  v66 = sub_1D5514064(v63, v64, v65);
  v67 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1D561EAC0;
  *(v68 + 32) = v66;
  v69 = v66;
  v70 = sub_1D5615158();

  v71 = [v67 addContainersReturningResult_];

  if ([v71 success])
  {
    v72 = [v71 resultingDatabasePersistentIDs];
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    sub_1D5516374();
    OUTLINED_FUNCTION_71();
    v73 = sub_1D5614BB8();

    v74 = sub_1D4ECA64C(v73);

    if (v74)
    {
      v75 = [v74 longLongValue];
    }

    else
    {
      v75 = 0;
    }

    v87 = sub_1D560C738();
    sub_1D56156E8();
    v88 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v88, v89))
    {
      OUTLINED_FUNCTION_55_1();
      v90 = swift_slowAlloc();
      *v90 = 134349056;
      *(v90 + 4) = v75;
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
      v96 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v96);
    }
  }

  else
  {
    v76 = sub_1D560C738();
    sub_1D56156C8();
    v77 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_10_125();
      v79 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v79);
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      v85 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v85);
    }

    sub_1D5516320();
    OUTLINED_FUNCTION_121_0();
    *v86 = 2;
    swift_willThrow();
  }
}

id sub_1D5514064(void *a1, void *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v5;
}

uint64_t sub_1D55140C0()
{
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v1 = sub_1D560C758();
  __swift_project_value_buffer(v1, qword_1EC87C300);
  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_10_125();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D4E3F000, v2, v3, "[ImportSession] Beginning import.", v4, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  result = [*(v0 + 24) start];
  if ((result & 1) == 0)
  {
    v6 = sub_1D560C738();
    sub_1D56156C8();
    v7 = OUTLINED_FUNCTION_9_127();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_10_125();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v9);
      OUTLINED_FUNCTION_16_95();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      v15 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v15);
    }

    sub_1D5516320();
    OUTLINED_FUNCTION_121_0();
    *v16 = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1D551421C()
{
  v2 = v0;
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EC87C300);
  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();
  v6 = OUTLINED_FUNCTION_11_122();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_10_125();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_28_68(v8);
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[ImportSession] Cancelling import session…", v1, 2u);
    v9 = OUTLINED_FUNCTION_3_196();
    MEMORY[0x1DA6ED200](v9);
  }

  v10 = *(v2 + 24);

  return [v10 cancel];
}

void sub_1D55142F4()
{
  v1 = v0;
  if (qword_1EC7E90C8 != -1)
  {
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EC87C300);
  v3 = sub_1D560C738();
  sub_1D56156E8();
  v4 = OUTLINED_FUNCTION_11_122();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_10_125();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v6, v7, "[ImportSession] Committing import session…");
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v8 = [*(v1 + 24) finish];
  v9 = sub_1D560C738();
  if (v8)
  {
    sub_1D56156E8();
    v10 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_10_125();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v12, v13, "[ImportSession] Import finished successfully - hooking up assets…");
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    sub_1D5514508();
    sub_1D55151B0();
    v14 = sub_1D560C738();
    sub_1D56156E8();
    v15 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_10_125();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6_152();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      v22 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v22);
    }
  }

  else
  {
    v23 = sub_1D56156C8();
    v24 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_10_125();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_68(v26);
      _os_log_impl(&dword_1D4E3F000, v9, v23, "[ImportSession] Failed to finish import session.", v1, 2u);
      v27 = OUTLINED_FUNCTION_3_196();
      MEMORY[0x1DA6ED200](v27);
    }

    sub_1D5516320();
    OUTLINED_FUNCTION_121_0();
    *v28 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1D5514508()
{
  v135[10] = *MEMORY[0x1E69E9840];
  v0 = sub_1D560C728();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v114 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF250, &qword_1D5630D10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v113 = v111 - v9;
  v133 = sub_1D560C0A8();
  v10 = OUTLINED_FUNCTION_4(v133);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v111 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v111 - v21;
  if (qword_1EC7E90C8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v131 = v19;
    v115 = v0;
    v23 = sub_1D560C758();
    v132 = __swift_project_value_buffer(v23, qword_1EC87C300);
    v24 = sub_1D560C738();
    v25 = sub_1D56156E8();
    v26 = OUTLINED_FUNCTION_11_122();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_10_125();
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D4E3F000, v24, v25, "[ImportSession] Importing track assets…", v28, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v19 = v120;
    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v29 = *(v19 + 7);
    v32 = *(v29 + 64);
    v31 = v29 + 64;
    v30 = v32;
    v0 = 1 << *(*(v19 + 7) + 32);
    v33 = -1;
    if (v0 < 64)
    {
      v33 = ~(-1 << v0);
    }

    v34 = v33 & v30;
    v124 = *(v19 + 7);

    OUTLINED_FUNCTION_146();
    swift_beginAccess();
    v35 = 0;
    v119 = 0;
    v36 = (v0 + 63) >> 6;
    v112 = (v3 + 8);
    v111[0] = v12 + 5;
    v121 = v12 + 2;
    v128 = v12 + 1;
    *&v37 = 134349314;
    v118 = v37;
    *&v37 = 136446466;
    v117 = v37;
    *&v37 = 136446210;
    v116 = v37;
    v130 = v22;
    v123 = v31;
    v122 = v36;
    if (v34)
    {
      while (1)
      {
LABEL_11:
        v39 = __clz(__rbit64(v34)) | (v35 << 6);
        v40 = *(*(v124 + 48) + 8 * v39);
        v41 = (*(v124 + 56) + 16 * v39);
        v43 = *v41;
        v42 = v41[1];

        v44 = OUTLINED_FUNCTION_47_46();
        v45 = sub_1D56156E8();
        v46 = OUTLINED_FUNCTION_11_122();
        v48 = os_log_type_enabled(v46, v47);
        v126 = v40;
        if (v48)
        {
          OUTLINED_FUNCTION_41_0();
          v49 = swift_slowAlloc();
          OUTLINED_FUNCTION_38_3();
          v50 = swift_slowAlloc();
          v135[0] = v50;
          *v49 = v118;
          *(v49 + 4) = v40;
          *(v49 + 12) = 2082;
          v51 = OUTLINED_FUNCTION_13_8();
          *(v49 + 14) = sub_1D4E6835C(v51, v52, v53);
          _os_log_impl(&dword_1D4E3F000, v44, v45, "[ImportSession] Setting file for track %{public}lld: %{public}s.", v49, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v50);
          v54 = OUTLINED_FUNCTION_3_1();
          MEMORY[0x1DA6ED200](v54);
          v22 = v130;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1D560BF28();

        sub_1D560BF48();
        v55 = sub_1D560BEF8();
        v57 = v56;
        v59 = [objc_opt_self() pathForBaseLocationPath_];
        sub_1D5614D68();
        v58 = v22;

        LOBYTE(v59) = v129;
        sub_1D560BF28();

        sub_1D560BF88();

        v60 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v60 = v55 & 0xFFFFFFFFFFFFLL;
        }

        v61 = v133;
        v62 = v125;
        if (!v60)
        {
          break;
        }

LABEL_29:
        (v121->isa)(v62, v58, v61);
        v76 = OUTLINED_FUNCTION_47_46();
        v77 = sub_1D56156E8();
        if (os_log_type_enabled(v76, v77))
        {
          OUTLINED_FUNCTION_41_0();
          v78 = swift_slowAlloc();
          v135[0] = swift_slowAlloc();
          *v78 = v117;
          OUTLINED_FUNCTION_1_194();
          v80 = v62;
          v62 = sub_1D5516530(&qword_1EC7EDF28, v79);
          v81 = sub_1D56160F8();
          v83 = v82;
          isa = v128->isa;
          isa(v80, v133);
          v84 = v81;
          v19 = v131;
          v85 = sub_1D4E6835C(v84, v83, v135);

          *(v78 + 4) = v85;
          *(v78 + 12) = 2082;
          OUTLINED_FUNCTION_146();
          swift_beginAccess();
          v86 = sub_1D56160F8();
          sub_1D4E6835C(v86, v87, v135);
          OUTLINED_FUNCTION_38_50();

          *(v78 + 14) = v62;
          _os_log_impl(&dword_1D4E3F000, v76, v77, "[ImportSession] Moving asset from %{public}s to %{public}s…", v78, 0x16u);
          swift_arrayDestroy();
          v61 = v133;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        else
        {

          isa = v128->isa;
          isa(v62, v61);
          v19 = v131;
        }

        v34 &= v34 - 1;
        v12 = [objc_opt_self() defaultManager];
        OUTLINED_FUNCTION_146();
        swift_beginAccess();
        sub_1D560BFF8();
        sub_1D5614D38();
        OUTLINED_FUNCTION_38_50();

        v88 = [v12 fileExistsAtPath:v62];

        v22 = v130;
        if (v88)
        {
          sub_1D560BFF8();
          sub_1D5614D38();
          OUTLINED_FUNCTION_38_50();

          v135[0] = 0;
          v89 = [v12 removeItemAtPath:v62 error:v135];

          v0 = v135[0];
          if (!v89)
          {
            goto LABEL_39;
          }

          v90 = v135[0];
        }

        v62 = sub_1D560BF68();
        v91 = sub_1D560BF68();
        v135[0] = 0;
        v92 = [v12 copyItemAtURL:v62 toURL:v91 error:v135];

        v0 = v135[0];
        if (!v92)
        {
LABEL_39:
          v99 = v0;
          OUTLINED_FUNCTION_38_50();
          v100 = sub_1D560BE98();

          v3 = v100;
          swift_willThrow();

          v101 = OUTLINED_FUNCTION_18_91();
          (v0)(v101);
          (v0)(v22, v61);
          (v0)(v19, v61);
          v102 = v100;
          v12 = OUTLINED_FUNCTION_47_46();
          v0 = sub_1D56156C8();

          if (os_log_type_enabled(v12, v0))
          {
            OUTLINED_FUNCTION_55_1();
            v3 = swift_slowAlloc();
            OUTLINED_FUNCTION_38_3();
            v103 = swift_slowAlloc();
            v135[0] = v103;
            *v3 = v116;
            v134 = v100;
            v104 = v100;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
            v105 = sub_1D5614DB8();
            v107 = sub_1D4E6835C(v105, v106, v135);

            *(v3 + 4) = v107;
            v22 = v130;
            _os_log_impl(&dword_1D4E3F000, v12, v0, "[ImportSession] Failed to move asset file. Error = %{public}s.", v3, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v103);
            v108 = OUTLINED_FUNCTION_3_1();
            MEMORY[0x1DA6ED200](v108);
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
          }

          else
          {
          }

          v119 = 0;
          goto LABEL_43;
        }

        v3 = *(v120 + 2);
        v93 = objc_allocWithZone(MEMORY[0x1E69B3538]);
        v94 = v0;
        v95 = [v93 initWithPersistentID:v126 inLibrary:v3];
        if (v95)
        {
          v3 = v95;
          v0 = v19;
          v96 = sub_1D560BFF8();
          sub_1D5516104(v96, v97, 0, v3);
        }

        v98 = OUTLINED_FUNCTION_18_91();
        (v0)(v98);
        (v0)(v22, v61);
        (v0)(v19, v61);
LABEL_43:
        v31 = v123;
        v36 = v122;
        if (!v34)
        {
          goto LABEL_7;
        }
      }

      sub_1D4ED0B14(v126, *(v120 + 10));
      if (v63)
      {
        LOBYTE(v59) = v63;
        sub_1D560C708();
        OUTLINED_FUNCTION_71();
        v65 = v64;
        sub_1D560C6C8();
        v66 = v115;
        if (__swift_getEnumTagSinglePayload(v65, 1, v115) == 1)
        {
          sub_1D4E50004(v65, &qword_1EC7EF250, &qword_1D5630D10);
          v62 = v125;
        }

        else
        {
          v67 = v65;
          v59 = sub_1D560C6F8();
          v69 = v68;
          (*v112)(v67, v66);
          v62 = v125;
          if (v69)
          {
            v70 = HIBYTE(v69) & 0xF;
            if ((v69 & 0x2000000000000000) == 0)
            {
              v70 = v59 & 0xFFFFFFFFFFFFLL;
            }

            if (v70)
            {
              OUTLINED_FUNCTION_146();
              swift_beginAccess();
              v71 = v111[1];
              sub_1D560BF98();

              swift_beginAccess();
              (*v111[0])(v131, v71, v61);
LABEL_28:
              v58 = v130;
              goto LABEL_29;
            }
          }
        }
      }

      v72 = OUTLINED_FUNCTION_47_46();
      sub_1D56156C8();
      v73 = OUTLINED_FUNCTION_9_127();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_10_125();
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1D4E3F000, v72, v59, "[ImportSession] Could not resolve file extension for imported track asset. This may not play correctly", v75, 2u);
        v62 = v125;
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
      }

      goto LABEL_28;
    }

LABEL_7:
    v38 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      break;
    }

    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_0_259();
    swift_once();
  }

  if (v38 < v36)
  {
    v34 = *(v31 + 8 * v38);
    ++v35;
    if (v34)
    {
      v35 = v38;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v110 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D55151B0()
{
  v0 = sub_1D560C0A8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_135();
  v108 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  v106 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v98[-v13];
  if (qword_1EC7E90C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  OUTLINED_FUNCTION_0_259();
  swift_once();
LABEL_2:
  v103 = v8;
  v115 = v0;
  v14 = sub_1D560C758();
  v110 = __swift_project_value_buffer(v14, qword_1EC87C300);
  v8 = v110;
  v15 = sub_1D560C738();
  sub_1D56156E8();
  v16 = OUTLINED_FUNCTION_9_127();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_10_125();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_28_68(v18);
    OUTLINED_FUNCTION_16_95();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    v24 = OUTLINED_FUNCTION_3_196();
    MEMORY[0x1DA6ED200](v24);
  }

  v0 = v112;
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v25 = v0[8];
  v27 = *(v25 + 64);
  v26 = v25 + 64;
  v28 = OUTLINED_FUNCTION_19_86(v0[8]);
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v109 = (v3 + 16);
  v114 = v3 + 8;
  v105 = v28;

  v34 = 0;
  *&v35 = 136446466;
  v104 = v35;
  while (1)
  {
    v36 = v114 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!v31)
    {
      break;
    }

LABEL_10:
    v38 = (v34 << 10) | (16 * __clz(__rbit64(v31)));
    v39 = (v105[6].isa + v38);
    v40 = *v39;
    v3 = v39[1];
    v41 = (v105[7].isa + v38);
    v42 = *v41;
    v43 = v41[1];

    v44 = v111;
    OUTLINED_FUNCTION_71();
    sub_1D560BF28();

    v45 = v106;
    (*v109)(v106, v44, v115);

    v46 = sub_1D560C738();
    v47 = sub_1D56156E8();

    v48 = OUTLINED_FUNCTION_37_4();
    v107 = v40;
    if (v48)
    {
      OUTLINED_FUNCTION_41_0();
      v49 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v117[0] = v102;
      *v49 = v104;
      *(v49 + 4) = sub_1D4E6835C(v40, v3, v117);
      *(v49 + 12) = 2082;
      OUTLINED_FUNCTION_1_194();
      sub_1D5516530(&qword_1EC7EDF28, v50);
      v100 = v46;
      v51 = v106;
      v99 = v47;
      v52 = v115;
      v53 = sub_1D56160F8();
      v101 = v3;
      v54 = v33;
      v55 = v26;
      v56 = v53;
      v113 = v36;
      v58 = v57;
      v59 = *v114;
      (*v114)(v51, v52);
      v60 = v56;
      v26 = v55;
      v33 = v54;
      v3 = v101;
      v61 = sub_1D4E6835C(v60, v58, v117);

      *(v49 + 14) = v61;
      v62 = v100;
      _os_log_impl(&dword_1D4E3F000, v100, v99, "[ImportSession] Importing album artwork for token %{public}s from location %{public}s.", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    else
    {

      v59 = *v114;
      (*v114)(v45, v115);
    }

    v31 &= v31 - 1;
    v63 = v111;
    v0 = *(v112 + 16);
    v8 = sub_1D560BF68();
    sub_1D5516178(v8, v107, v3, 1, 300, 8, v0);

    v59(v63, v115);
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v37 >= v33)
    {
      break;
    }

    v31 = *(v26 + 8 * v37);
    ++v34;
    if (v31)
    {
      v34 = v37;
      goto LABEL_10;
    }
  }

  v0 = v112;
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v64 = v0[9];
  v66 = *(v64 + 64);
  v65 = v64 + 64;
  v67 = OUTLINED_FUNCTION_19_86(v0[9]);
  v70 = v69 & v68;
  v72 = (v71 + 63) >> 6;
  v107 = v67;

  v3 = 0;
  v73 = v115;
  if (v70)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v74 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_26;
    }

    if (v74 >= v72)
    {
    }

    v70 = *(v65 + 8 * v74);
    ++v3;
    if (v70)
    {
      v3 = v74;
      do
      {
LABEL_19:
        v113 = v36;
        v75 = (v3 << 10) | (16 * __clz(__rbit64(v70)));
        v76 = *(v107 + 48) + v75;
        v77 = *v76;
        v78 = *(v76 + 8);
        v79 = (*(v107 + 56) + v75);
        v80 = *v79;
        v81 = v79[1];

        v82 = v108;
        OUTLINED_FUNCTION_71();
        sub_1D560BF28();

        v83 = v103;
        (*v109)(v103, v82, v73);

        v84 = sub_1D560C738();
        v85 = sub_1D56156E8();

        v86 = OUTLINED_FUNCTION_37_4();
        v111 = v77;
        if (v86)
        {
          OUTLINED_FUNCTION_41_0();
          v87 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v116 = v106;
          *v87 = v104;
          *(v87 + 4) = sub_1D4E6835C(v77, v78, &v116);
          *(v87 + 12) = 2082;
          OUTLINED_FUNCTION_1_194();
          sub_1D5516530(&qword_1EC7EDF28, v88);
          v105 = v84;
          sub_1D56160F8();
          LODWORD(v102) = v85;
          v89 = *v114;
          (*v114)(v83, v115);
          v90 = OUTLINED_FUNCTION_222();
          v93 = sub_1D4E6835C(v90, v91, v92);

          *(v87 + 14) = v93;
          v94 = v105;
          _os_log_impl(&dword_1D4E3F000, v105, v102, "[ImportSession] Importing playlist artwork for token %{public}s from location %{public}s.", v87, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
          v73 = v115;
          OUTLINED_FUNCTION_12_4();
          MEMORY[0x1DA6ED200]();
        }

        else
        {

          v89 = *v114;
          (*v114)(v83, v73);
        }

        v70 &= v70 - 1;
        v0 = *(v112 + 16);
        v95 = v108;
        v8 = sub_1D560BF68();
        sub_1D5516178(v8, v111, v78, 5, 300, 8, v0);

        v96 = v95;
        v36 = v113;
        v89(v96, v73);
      }

      while (v70);
    }
  }
}

uint64_t MusicPlatformMigration.ImportSession.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return v0;
}

uint64_t MusicPlatformMigration.ImportSession.__deallocating_deinit()
{
  MusicPlatformMigration.ImportSession.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

double sub_1D55159C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  sub_1D4F0DF68();
  if (v6)
  {
    OUTLINED_FUNCTION_54_4();
    v22 = *v3;
    v7 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
    v8 = OUTLINED_FUNCTION_20_95();
    OUTLINED_FUNCTION_27_72(v8, v9, v10, v11, v12, v13, v14, v15, v21, v22);
    v16 = type metadata accessor for MusicItemCache.Key();
    OUTLINED_FUNCTION_14(v16);
    sub_1D5516578(v7 + *(v17 + 72) * v2, type metadata accessor for MusicItemCache.Key);
    v18 = (*(v5 + 56) + 48 * v2);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    a1[2] = v18[2];
    sub_1D5516530(&qword_1EDD59100, type metadata accessor for MusicItemCache.Key);
    sub_1D5615D98();
    *v3 = v5;
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1D5515AEC()
{
  v2 = v0;
  v3 = *v0;
  sub_1D4F0E020();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F8, &qword_1D561E218);
  OUTLINED_FUNCTION_17_0();
  v5 = *(v12 + 48);
  v6 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 8))(v5 + *(v7 + 72) * v1, v6);
  v8 = *(*(v12 + 56) + 8 * v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD60, &qword_1D5634C08);
  OUTLINED_FUNCTION_13_97();
  sub_1D5516530(v9, v10);
  OUTLINED_FUNCTION_34_63();
  *v2 = v12;
  return v8;
}

uint64_t sub_1D5515BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  v7 = sub_1D4F0DDB4(a1);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_36_63();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
    v11 = OUTLINED_FUNCTION_20_95();
    OUTLINED_FUNCTION_27_72(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30);
    v19 = type metadata accessor for LooselyComparableTypedIdentifier();
    OUTLINED_FUNCTION_14(v19);
    sub_1D5516578(v3 + *(v20 + 72) * v9, type metadata accessor for LooselyComparableTypedIdentifier);
    v21 = *(v6 + 56);
    v22 = type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_14(v22);
    sub_1D5061C5C(v21 + *(v23 + 72) * v9, a2);
    sub_1D5516530(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier);
    OUTLINED_FUNCTION_25_66();
    sub_1D5615D98();
    v24 = OUTLINED_FUNCTION_29_61();
  }

  else
  {
    type metadata accessor for GenericMusicItem();
    v24 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t sub_1D5515D2C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  sub_1D4F15A78(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB400, &qword_1D561E220);
  OUTLINED_FUNCTION_17_0();
  v7 = *(*(v10 + 48) + 16 * v3 + 8);

  v8 = *(*(v10 + 56) + 8 * v3);
  _s9StatementCMa();
  sub_1D54E6D90();
  sub_1D5615D98();
  *v4 = v10;
  return v8;
}

uint64_t sub_1D5515DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  sub_1D4F0E2E8();
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_36_63();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
    v10 = OUTLINED_FUNCTION_20_95();
    OUTLINED_FUNCTION_27_72(v10, v11, v12, v13, v14, v15, v16, v17, v30, v31);
    v18 = sub_1D560C0A8();
    OUTLINED_FUNCTION_14(v18);
    (*(v19 + 8))(v2 + *(v19 + 72) * v8, v18);
    v20 = *(v5 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    OUTLINED_FUNCTION_14(v21);
    sub_1D4ECCB30(v20 + *(v22 + 72) * v8, a1);
    OUTLINED_FUNCTION_1_194();
    sub_1D5516530(v23, v24);
    OUTLINED_FUNCTION_25_66();
    sub_1D5615D98();
    v25 = OUTLINED_FUNCTION_29_61();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    v25 = OUTLINED_FUNCTION_25_9();
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_1D5515F34()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D4E4EFA0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB430, &qword_1D561E228);
  sub_1D5615D78();
  v8 = *(*(v13 + 48) + 16 * v5 + 8);

  v9 = (*(v13 + 56) + 16 * v5);
  v10 = *v9;
  v11 = v9[1];
  sub_1D5615D98();
  *v1 = v13;
  return v10;
}

uint64_t sub_1D5516014()
{
  v2 = v0;
  v3 = *v0;
  sub_1D4F0E020();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_5_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
  OUTLINED_FUNCTION_17_0();
  v5 = *(v12 + 48);
  v6 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 8))(v5 + *(v7 + 72) * v1, v6);
  v8 = *(*(v12 + 56) + 8 * v1);
  _s12WeakObserverCMa();
  OUTLINED_FUNCTION_13_97();
  sub_1D5516530(v9, v10);
  OUTLINED_FUNCTION_34_63();
  *v2 = v12;
  return v8;
}

void sub_1D5516104(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = sub_1D5614D38();

  [a4 populateLocationPropertiesWithPath:v6 isProtected:a3 & 1];
}

id sub_1D5516178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_1D5614D38();

  v13 = [a7 importOriginalArtworkFromFileURL:a1 withArtworkToken:v12 artworkType:a4 sourceType:a5 mediaType:a6];

  return v13;
}

void sub_1D551620C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();

  [a3 setName_];
}

void sub_1D5516270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setTitle_];
}

void sub_1D55162C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setArtworkId_];
}

unint64_t sub_1D5516320()
{
  result = qword_1EC7F7C50;
  if (!qword_1EC7F7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C50);
  }

  return result;
}

unint64_t sub_1D5516374()
{
  result = qword_1EC7F7C58;
  if (!qword_1EC7F7C58)
  {
    sub_1D4ECC7A8(255, &qword_1EC7EA460, 0x1E69B3470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7C58);
  }

  return result;
}

uint64_t sub_1D55163DC(void *a1)
{
  v1 = [a1 libraryName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}

void sub_1D5516440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  [a3 setName_];
}

uint64_t dispatch thunk of MusicPlatformMigration.ImportSession.add(_:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

uint64_t sub_1D5516530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5516578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_95()
{

  return sub_1D5615D78();
}

uint64_t OUTLINED_FUNCTION_23_77()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_63()
{

  return sub_1D5615D98();
}

uint64_t OUTLINED_FUNCTION_42_49()
{

  return sub_1D5614BD8();
}

uint64_t OUTLINED_FUNCTION_46_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return sub_1D50753B4(&STACK[0x2B8], &a58);
}

uint64_t OUTLINED_FUNCTION_47_46()
{
  v2 = *(v0 - 280);

  return sub_1D560C738();
}

void sub_1D55166B8()
{
  OUTLINED_FUNCTION_10_126();
  os_unfair_lock_lock(v0 + 12);
  sub_1D551AF20(&v0[4]);
  os_unfair_lock_unlock(v0 + 12);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    v2 = OUTLINED_FUNCTION_16_96();
    sub_1D551977C(v2, v3, 1, v4);
  }
}

void sub_1D5516740()
{
  OUTLINED_FUNCTION_10_126();
  os_unfair_lock_lock(v0 + 12);
  sub_1D551AEBC(&v0[4]);
  os_unfair_lock_unlock(v0 + 12);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    v2 = OUTLINED_FUNCTION_16_96();
    sub_1D551977C(v2, v3, 2, v4);
  }
}

void sub_1D55167C8(int a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v91 = a1;
  v88 = type metadata accessor for MusicDaemon.Request(0);
  v4 = OUTLINED_FUNCTION_14(v88);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_18_92(v7);
  v9 = OUTLINED_FUNCTION_12_104(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = type metadata accessor for MusicDaemon.Request.Context(0);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for MusicDaemon.Item();
  v25 = OUTLINED_FUNCTION_22(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v84 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  v85 = &v83 - v30;
  OUTLINED_FUNCTION_23();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v83 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v83 - v35;
  sub_1D550231C(&v83 - v35);
  OUTLINED_FUNCTION_0_260();
  sub_1D551ADD4(v36, v34, v37);
  v38 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  v40 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
  v95 = *(a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v39 = v95;
  v96 = v38;
  v97 = v40;
  v41 = *(v11 + 16);
  v86 = a2;
  v41(v16, a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v92);
  v42 = v40;
  v43 = v23;
  sub_1D4E58128(v39, v38, v42);
  v44 = v98;
  _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC(v34, &v95, v16, v93, v23);
  if (v44)
  {
    v45 = v93[0];
    v46 = v93[1];
    v47 = v94;
    sub_1D53476CC();
    swift_allocError();
    *v48 = v45;
    *(v48 + 8) = v46;
    *(v48 + 16) = v47;
    v58 = type metadata accessor for MusicDaemon.Item;
    v59 = v36;
  }

  else
  {
    v49 = v86;
    v50 = v87;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
    v52 = v89;
    *v89 = v91 & 1;
    OUTLINED_FUNCTION_5_149();
    sub_1D551ADD4(v43, v52 + v53, v54);
    swift_storeEnumTagMultiPayload();
    v55 = v90;
    sub_1D5519C8C();
    OUTLINED_FUNCTION_8_133();
    v57 = sub_1D551AD28(v52, v56);
    v60 = *(v55 + 16);
    MEMORY[0x1EEE9AC00](v57);
    *(&v83 - 2) = v49;
    *(&v83 - 1) = v50;

    os_unfair_lock_lock(v60 + 12);
    sub_1D551AC7C(&v60[4]);
    os_unfair_lock_unlock(v60 + 12);

    if (qword_1EDD544D0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v61 = sub_1D560C758();
    __swift_project_value_buffer(v61, qword_1EDD76B38);
    OUTLINED_FUNCTION_0_260();
    v62 = v85;
    sub_1D551ADD4(v36, v85, v63);

    v64 = sub_1D560C738();
    v65 = sub_1D56156E8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v98 = v43;
      v93[0] = v67;
      *v66 = 136446722;
      v95 = sub_1D55171AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
      v68 = sub_1D5614DB8();
      v69 = v65;
      v71 = sub_1D4E6835C(v68, v70, v93);

      *(v66 + 4) = v71;
      v92 = v36;
      *(v66 + 12) = 2082;
      if (v91)
      {
        v72 = 0x6F7661466F646E75;
      }

      else
      {
        v72 = 0x657469726F766166;
      }

      if (v91)
      {
        v73 = 0xEC00000065746972;
      }

      else
      {
        v73 = 0xE800000000000000;
      }

      v74 = sub_1D4E6835C(v72, v73, v93);

      *(v66 + 14) = v74;
      *(v66 + 22) = 2082;
      OUTLINED_FUNCTION_0_260();
      v75 = v84;
      sub_1D551ADD4(v62, v84, v76);
      v77 = OUTLINED_FUNCTION_9_128();
      MEMORY[0x1DA6EAC70](v77);

      OUTLINED_FUNCTION_6_153();
      sub_1D551AD28(v75, v78);
      sub_1D551AD28(v62, &v95);
      v79 = sub_1D4E6835C(v95, v96, v93);

      *(v66 + 24) = v79;
      _os_log_impl(&dword_1D4E3F000, v64, v69, "Session %{public}s perform(.%{public}s(item: %{public}s).", v66, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v98, v80);
      v59 = v92;
      v58 = &v95;
    }

    else
    {

      OUTLINED_FUNCTION_7_141();
      sub_1D551AD28(v62, v81);
      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v43, v82);
      v59 = v36;
      v58 = v65;
    }
  }

  sub_1D551AD28(v59, v58);
}

uint64_t sub_1D5516DD0()
{
  _s6ClientCMa();
  v0 = swift_allocObject();
  result = sub_1D5516E0C();
  qword_1EDD76CD0 = v0;
  return result;
}

uint64_t sub_1D5516E0C()
{
  v1 = v0;
  sub_1D560C368();
  _s12WeakObserverCMa();
  sub_1D551AED8(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  v2 = OUTLINED_FUNCTION_19_87();
  v3 = OUTLINED_FUNCTION_19_87();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7CA8, &qword_1D566F400);
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v1 + 16) = v4;
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EDD76B38);
  v6 = sub_1D560C738();
  v7 = sub_1D56156E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D4E3F000, v6, v7, "Init.", v8, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  return v1;
}

uint64_t sub_1D5516F7C()
{
  v0 = sub_1D5615718();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_1D560C9B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1D5615728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E699CC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  sub_1D560C9A8();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D551AED8(&qword_1EDD52698, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C98, &qword_1D566F3F0);
  sub_1D551AE50();
  sub_1D56159E8();
  result = sub_1D5615758();
  qword_1EDD591E8 = result;
  return result;
}

uint64_t sub_1D55171AC()
{
  v1 = v0[2];
  v4 = *v0;

  os_unfair_lock_lock((v1 + 48));
  sub_1D551AC98((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v5;

  return v2;
}

uint64_t sub_1D5517240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D560C788();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = *a1;
  if (!*a1)
  {
    v26 = a2;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D560C758();
    __swift_project_value_buffer(v8, qword_1EDD76B38);
    v9 = sub_1D560C738();
    v10 = sub_1D56156E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D4E3F000, v9, v10, "Creating xpc session.", v11, 2u);
      MEMORY[0x1DA6ED200](v11, -1, -1);
    }

    sub_1D560C7B8();
    if (qword_1EDD591E0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDD591E8;
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v13 = v12;

    sub_1D560C778();
    v14 = sub_1D560C768();
    if (v2)
    {

      v15 = v2;
      v16 = sub_1D560C738();
      v17 = sub_1D56156C8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v20 = v2;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "Failed to create xpc session with error: %{public}@.", v18, 0xCu);
        sub_1D4E50004(v19, &unk_1EC7F2C00, &qword_1D5623260);
        MEMORY[0x1DA6ED200](v19, -1, -1);
        MEMORY[0x1DA6ED200](v18, -1, -1);
      }

      else
      {
      }

      v7 = 0;
    }

    else
    {
      v7 = v14;

      *a1 = v7;
      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "XPC session created.", v24, 2u);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }
    }

    a2 = v26;
  }

  *a2 = v7;
}

double sub_1D551764C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D55176C8(a1);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1D55176C8(void *a1)
{
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  v2 = *(*(v145 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v145);
  v146 = v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v144 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v144 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v150 = v144 - v11;
  v151 = type metadata accessor for MusicDaemon.Response.Context(0);
  v12 = *(*(v151 - 1) + 64);
  v13 = MEMORY[0x1EEE9AC00](v151);
  v147 = v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v152 = v144 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v144 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v148 = v144 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v149 = v144 - v22;
  v23 = type metadata accessor for MusicDaemon.Response(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v154 = v144 - v28;
  v29 = sub_1D560C9E8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDD591E0 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDD591E8;
  *v33 = qword_1EDD591E8;
  (*(v30 + 104))(v33, *MEMORY[0x1E69E8020], v29);
  v35 = v34;
  LOBYTE(v34) = sub_1D560C9F8();
  (*(v30 + 8))(v33, v29);
  if (v34)
  {
    v36 = v153;
    sub_1D551A13C();
    sub_1D551AED8(&qword_1EDD59108, type metadata accessor for MusicDaemon.Response);
    v37 = v154;
    sub_1D560C7D8();
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v46 = sub_1D560C758();
    v144[1] = __swift_project_value_buffer(v46, qword_1EDD76B38);
    v47 = sub_1D560C738();
    v48 = sub_1D56156E8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D4E3F000, v47, v48, "Handling XPC message.", v49, 2u);
      v50 = v49;
      v36 = v153;
      MEMORY[0x1DA6ED200](v50, -1, -1);
    }

    sub_1D551ADD4(v37, v27, type metadata accessor for MusicDaemon.Response);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v123 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v124 = *v123;
        v125 = *(v123 + 1);
        v126 = v123[16];
        v55 = v148;
        sub_1D551ACC4(v27, v148);
        sub_1D5507888(v124, v125, v126);
        v127 = sub_1D560C738();
        v128 = sub_1D56156E8();
        sub_1D55078B4(v124, v125, v126);
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v157[0] = v130;
          *v129 = 136446210;
          *&v155 = v124;
          *(&v155 + 1) = v125;
          LOBYTE(v156) = v126;
          sub_1D5507888(v124, v125, v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v131 = sub_1D5614DB8();
          v133 = sub_1D4E6835C(v131, v132, v157);

          *(v129 + 4) = v133;
          v36 = v153;
          _os_log_impl(&dword_1D4E3F000, v127, v128, "Started observing item with error: %{public}s.", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v130);
          MEMORY[0x1DA6ED200](v130, -1, -1);
          v134 = v129;
          v55 = v148;
          MEMORY[0x1DA6ED200](v134, -1, -1);
        }

        v135 = *(v36 + 16);
        MEMORY[0x1EEE9AC00](v136);
        v144[-2] = v55;

        os_unfair_lock_lock(v135 + 12);
        sub_1D551AD9C(&v135[4], &v155);
        os_unfair_lock_unlock(v135 + 12);
        v137 = v155;

        if (v137)
        {
          *&v155 = v124;
          *(&v155 + 1) = v125;
          LOBYTE(v156) = v126;
          swift_unknownObjectRetain();
          sub_1D5503BA4();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
        v71 = v124;
        v72 = v125;
        v73 = v126;
        goto LABEL_38;
      case 2u:
        v94 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v95 = *v94;
        v96 = *(v94 + 1);
        v97 = v94[16];
        sub_1D551ACC4(v27, v152);
        sub_1D5507888(v95, v96, v97);
        v98 = sub_1D560C738();
        v99 = sub_1D56156E8();
        sub_1D55078B4(v95, v96, v97);
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v157[0] = v101;
          *v100 = 136446210;
          *&v155 = v95;
          *(&v155 + 1) = v96;
          LOBYTE(v156) = v97;
          sub_1D5507888(v95, v96, v97);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v102 = sub_1D5614DB8();
          v104 = sub_1D4E6835C(v102, v103, v157);

          *(v100 + 4) = v104;
          v36 = v153;
          _os_log_impl(&dword_1D4E3F000, v98, v99, "Stopped observing item with error: %{public}s.", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v101);
          MEMORY[0x1DA6ED200](v101, -1, -1);
          MEMORY[0x1DA6ED200](v100, -1, -1);
        }

        v105 = *(v36 + 16);
        MEMORY[0x1EEE9AC00](v106);
        v144[-2] = v152;

        os_unfair_lock_lock(v105 + 12);
        sub_1D551AD80(&v105[4], &v155);
        os_unfair_lock_unlock(v105 + 12);
        v107 = v155;
        v108 = v156;

        if (v107)
        {
          *&v155 = v95;
          *(&v155 + 1) = v96;
          LOBYTE(v156) = v97;
          swift_unknownObjectRetain();
          sub_1D5504858();
          swift_unknownObjectRelease();
        }

        sub_1D55078B4(v95, v96, v97);
        if (v108)
        {
          sub_1D551A5AC();
          v109 = sub_1D560C738();
          v110 = sub_1D56156E8();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 0;
            _os_log_impl(&dword_1D4E3F000, v109, v110, "Ending XPC session because nothing is being observed anymore.", v111, 2u);
            MEMORY[0x1DA6ED200](v111, -1, -1);
          }

          swift_unknownObjectRelease();
          sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
        }

        else
        {
          sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
          swift_unknownObjectRelease();
        }

        v122 = v152;
        goto LABEL_48;
      case 3u:
        sub_1D551ACC4(v27, v19);
        v112 = sub_1D560C738();
        v113 = sub_1D56156E8();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_1D4E3F000, v112, v113, "Content updated.", v114, 2u);
          MEMORY[0x1DA6ED200](v114, -1, -1);
        }

        v115 = *(v36 + 16);
        MEMORY[0x1EEE9AC00](v116);
        v144[-2] = v19;

        os_unfair_lock_lock(v115 + 12);
        sub_1D551AF3C(&v115[4], &v155);
        os_unfair_lock_unlock(v115 + 12);
        v117 = v155;

        if (v117)
        {
          v118 = v151[5];
          v119 = v151[7];
          v120 = &v19[v151[8]];
          v121 = *(v120 + 2);
          v155 = *v120;
          v156 = v121;
          swift_unknownObjectRetain();
          sub_1D5504120();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
        v122 = v19;
        goto LABEL_48;
      case 4u:
        v74 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B58, &qword_1D566E650) + 48)];
        v75 = *v74;
        v76 = *(v74 + 1);
        v77 = v74[16];
        v78 = v27;
        v79 = v150;
        sub_1D4FD23EC(v78, v150, &qword_1EC7ECCA0, &qword_1D5622EB8);
        sub_1D4F1C460(v79, v10, &qword_1EC7ECCA0, &qword_1D5622EB8);
        sub_1D550789C(v75, v76, v77);
        v80 = sub_1D560C738();
        v81 = sub_1D56156E8();
        v152 = v75;
        sub_1D55078C8(v75, v76, v77);
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v157[0] = v149;
          *v82 = 136446466;
          sub_1D4F1C460(v10, v7, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v83 = sub_1D5614DB8();
          v85 = v84;
          sub_1D4E50004(v10, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v86 = sub_1D4E6835C(v83, v85, v157);

          *(v82 + 4) = v86;
          *(v82 + 12) = 2082;
          v87 = v152;
          *&v155 = v152;
          *(&v155 + 1) = v76;
          LOBYTE(v156) = v77;
          sub_1D550789C(v152, v76, v77);
          v88 = sub_1D5614DB8();
          v90 = sub_1D4E6835C(v88, v89, v157);

          *(v82 + 14) = v90;
          _os_log_impl(&dword_1D4E3F000, v80, v81, "Failure tied to context: %{public}s with error: %{public}s.", v82, 0x16u);
          v91 = v149;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v91, -1, -1);
          v92 = v82;
          v79 = v150;
          MEMORY[0x1DA6ED200](v92, -1, -1);

          v93 = v151;
        }

        else
        {

          sub_1D4E50004(v10, &qword_1EC7ECCA0, &qword_1D5622EB8);
          v93 = v151;
          v87 = v152;
        }

        v138 = v146;
        sub_1D4F1C460(v79, v146, &qword_1EC7ECCA0, &qword_1D5622EB8);
        if (__swift_getEnumTagSinglePayload(v138, 1, v93) == 1)
        {
          sub_1D55078C8(v87, v76, v77);
          sub_1D4E50004(v79, &qword_1EC7ECCA0, &qword_1D5622EB8);
          sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
          sub_1D4E50004(v138, &qword_1EC7ECCA0, &qword_1D5622EB8);
        }

        else
        {
          v139 = v77;
          v140 = v147;
          v141 = sub_1D551ACC4(v138, v147);
          v142 = *(v153 + 16);
          MEMORY[0x1EEE9AC00](v141);
          v144[-2] = v140;

          os_unfair_lock_lock(v142 + 12);
          sub_1D551AF3C(&v142[4], &v155);
          os_unfair_lock_unlock(v142 + 12);
          v143 = v155;

          if (v143)
          {
            *&v155 = v87;
            *(&v155 + 1) = v76;
            LOBYTE(v156) = v139;
            swift_unknownObjectRetain();
            sub_1D5504F94();
            swift_unknownObjectRelease_n();
            sub_1D4E50004(v79, &qword_1EC7ECCA0, &qword_1D5622EB8);
            sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
            sub_1D55078C8(v87, v76, v139);
          }

          else
          {
            sub_1D55078C8(v87, v76, v139);
            sub_1D4E50004(v79, &qword_1EC7ECCA0, &qword_1D5622EB8);
            sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
          }

          v122 = v147;
LABEL_48:
          sub_1D551AD28(v122, type metadata accessor for MusicDaemon.Response.Context);
        }

        break;
      default:
        v51 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B60, &qword_1D566E658) + 48)];
        v52 = *v51;
        v53 = *(v51 + 1);
        v54 = v51[16];
        v55 = v149;
        sub_1D551ACC4(v27, v149);
        sub_1D5507888(v52, v53, v54);
        v56 = sub_1D560C738();
        v57 = sub_1D56156E8();
        sub_1D55078B4(v52, v53, v54);
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v157[0] = v59;
          *v58 = 136446210;
          *&v155 = v52;
          *(&v155 + 1) = v53;
          LOBYTE(v156) = v54;
          sub_1D5507888(v52, v53, v54);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B10, &qword_1D566E418);
          v60 = sub_1D5614DB8();
          v62 = sub_1D4E6835C(v60, v61, v157);

          *(v58 + 4) = v62;
          v36 = v153;
          _os_log_impl(&dword_1D4E3F000, v56, v57, "Action performed with error: %{public}s.", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          v63 = v59;
          v55 = v149;
          MEMORY[0x1DA6ED200](v63, -1, -1);
          MEMORY[0x1DA6ED200](v58, -1, -1);
        }

        v64 = *(v36 + 16);
        MEMORY[0x1EEE9AC00](v65);
        v144[-2] = v55;

        os_unfair_lock_lock(v64 + 12);
        sub_1D551ADB8(&v64[4], &v155);
        os_unfair_lock_unlock(v64 + 12);
        v66 = v155;

        if (v66)
        {
          v67 = v151[5];
          v68 = (v55 + v151[6]);
          v69 = *v68;
          v70 = v68[1];
          *&v155 = v52;
          *(&v155 + 1) = v53;
          LOBYTE(v156) = v54;
          swift_unknownObjectRetain();
          sub_1D5504AB0();
          swift_unknownObjectRelease_n();
        }

        sub_1D551AD28(v154, type metadata accessor for MusicDaemon.Response);
        v71 = v52;
        v72 = v53;
        v73 = v54;
LABEL_38:
        sub_1D55078B4(v71, v72, v73);
        v122 = v55;
        goto LABEL_48;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v38 = sub_1D560C758();
    __swift_project_value_buffer(v38, qword_1EDD76B38);
    v39 = a1;
    v40 = sub_1D560C738();
    v41 = sub_1D56156C8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      v44 = a1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_1D4E3F000, v40, v41, "Failed to decode XPC message with error: %{public}@.", v42, 0xCu);
      sub_1D4E50004(v43, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v43, -1, -1);
      MEMORY[0x1DA6ED200](v42, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D5518964(char *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D55189C4(a1);
  }

  return result;
}

void sub_1D55189C4(char *a1)
{
  v101 = sub_1D560C368();
  v97 = *(v101 - 8);
  v2 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C88, &qword_1D566F3E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v87 - v8;
  v9 = sub_1D560C7C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D560C9E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD591E0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v19 = qword_1EDD591E8;
    *v18 = qword_1EDD591E8;
    (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
    v20 = v19;
    LOBYTE(v19) = sub_1D560C9F8();
    (*(v15 + 8))(v18, v14);
    if (v19)
    {
      if (qword_1EDD544D0 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v21 = sub_1D560C758();
    v22 = __swift_project_value_buffer(v21, qword_1EDD76B38);
    v23 = *(v10 + 16);
    v23(v13, a1, v9);
    v92 = v22;
    v24 = sub_1D560C738();
    v25 = sub_1D56156E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      sub_1D551AED8(&unk_1EDD54450, MEMORY[0x1E69E84C0]);
      swift_allocError();
      v23(v28, v13, v9);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      (*(v10 + 8))(v13, v9);
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1D4E3F000, v24, v25, "XPC canceled with error: %{public}@", v26, 0xCu);
      sub_1D4E50004(v27, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v27, -1, -1);
      MEMORY[0x1DA6ED200](v26, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v18 = v101;
    v30 = v104;
    v14 = v105;
    v31 = v95;
    v32 = *(v95 + 16);

    os_unfair_lock_lock((v32 + 48));
    v33 = *(v32 + 16);
    *(v32 + 16) = 0;

    os_unfair_lock_unlock((v32 + 48));

    v34 = *(v31 + 16);

    os_unfair_lock_lock((v34 + 48));
    v35 = *(v34 + 40);
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return;
    }

    *(v34 + 40) = v36;
    os_unfair_lock_unlock((v34 + 48));

    if (v36 > 3)
    {
      break;
    }

    v9 = *(v31 + 16);

    os_unfair_lock_lock((v9 + 48));
    v40 = *(v9 + 24);

    os_unfair_lock_unlock((v9 + 48));

    v15 = 0;
    v43 = v40 + 64;
    v42 = *(v40 + 64);
    v96 = v40;
    v44 = 1 << *(v40 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v10 = v45 & v42;
    v46 = (v44 + 63) >> 6;
    v98 = (v97 + 16);
    v94 = v97 + 32;
    v102 = (v97 + 8);
    v103 = 0;
    v13 = &qword_1EC7F7C90;
    *&v41 = 136446466;
    v87 = v41;
    *&v41 = 138543362;
    v88 = v41;
    v100 = v40 + 64;
    a1 = v18;
    v93 = v46;
    if ((v45 & v42) != 0)
    {
      while (1)
      {
        v47 = a1;
        v48 = v15;
LABEL_20:
        v49 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v50 = v49 | (v48 << 6);
        v51 = v96;
        v52 = v97;
        v53 = v99;
        (*(v97 + 16))(v99, *(v96 + 48) + *(v97 + 72) * v50, v47);
        v54 = *(*(v51 + 56) + 8 * v50);
        v13 = &qword_1EC7F7C90;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        v56 = *(v55 + 48);
        v57 = *(v52 + 32);
        v30 = v104;
        v57(v104, v53, v47);
        *(v30 + v56) = v54;
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v55);

        v14 = v105;
        v46 = v93;
LABEL_21:
        sub_1D4FD23EC(v30, v14, &qword_1EC7F7C88, &qword_1D566F3E0);
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        if (__swift_getEnumTagSinglePayload(v14, 1, v9) == 1)
        {

          return;
        }

        v18 = v30;
        v58 = *(v14 + *(v9 + 48));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }

        a1 = v101;
        (*v102)(v14, v101);

LABEL_34:
        v43 = v100;
        v30 = v18;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = Strong;
      v60 = v103;
      sub_1D551977C(Strong, *(v58 + 24), 1, "Session %{public}s send(.beginObserving(item: %{public}s).");
      if (v60)
      {
        v61 = v60;
        v62 = sub_1D560C738();
        v63 = sub_1D56156C8();

        if (!os_log_type_enabled(v62, v63))
        {

          swift_unknownObjectRelease();
          v103 = 0;
          v14 = v105;
          v13 = &qword_1EC7F7C90;
          a1 = v101;
LABEL_33:
          (*v102)(v14, a1);
          goto LABEL_34;
        }

        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = v88;
        v66 = v60;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 4) = v67;
        *v65 = v67;
        _os_log_impl(&dword_1D4E3F000, v62, v63, "Error restarting observation: %{public}@.", v64, 0xCu);
        sub_1D4E50004(v65, &unk_1EC7F2C00, &qword_1D5623260);
        v68 = v101;
        MEMORY[0x1DA6ED200](v65, -1, -1);
        v69 = v64;
        v18 = v104;
        MEMORY[0x1DA6ED200](v69, -1, -1);
        swift_unknownObjectRelease();

        a1 = v68;
        v103 = 0;
        v14 = v105;
      }

      else
      {
        v103 = 0;

        swift_unknownObjectRetain();
        v70 = sub_1D560C738();
        v71 = sub_1D56156E8();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v107[0] = v91;
          *v72 = v87;
          v90 = v71;
          v106 = sub_1D55171AC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
          v73 = sub_1D5614DB8();
          v75 = sub_1D4E6835C(v73, v74, v107);

          *(v72 + 4) = v75;
          *(v72 + 12) = 2082;
          v76 = v99;
          v77 = *v98;
          v89 = v70;
          v78 = v101;
          v77(v99, v9 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id);
          sub_1D551AED8(&qword_1EDD5CF40, MEMORY[0x1E69695A8]);
          v79 = sub_1D56160F8();
          v81 = v80;
          (*v102)(v76, v78);
          v82 = sub_1D4E6835C(v79, v81, v107);
          v14 = v105;

          *(v72 + 14) = v82;
          v83 = v89;
          _os_log_impl(&dword_1D4E3F000, v89, v90, "⚠ Session %{public}s restarting observation for observer with ID %{public}s.", v72, 0x16u);
          v84 = v91;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v84, -1, -1);
          v85 = v72;
          v18 = v104;
          MEMORY[0x1DA6ED200](v85, -1, -1);

          a1 = v78;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          a1 = v101;
        }
      }

      v13 = &qword_1EC7F7C90;
      goto LABEL_33;
    }

LABEL_16:
    while (1)
    {
      v48 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v48 >= v46)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C90, &qword_1D566F3E8);
        __swift_storeEnumTagSinglePayload(v30, 1, 1, v86);
        v10 = 0;
        goto LABEL_21;
      }

      v10 = *(v43 + 8 * v48);
      ++v15;
      if (v10)
      {
        v47 = a1;
        v15 = v48;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v37 = sub_1D560C738();
  v38 = sub_1D56156E8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D4E3F000, v37, v38, "XPC retry count exceeded max retry count. Not attempting to restart observation.", v39, 2u);
    MEMORY[0x1DA6ED200](v39, -1, -1);
  }
}

void sub_1D5519578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s12WeakObserverCMa();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  sub_1D53A476C(v5, a3);
  v6 = *(a1 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 8);
  sub_1D4F155A4();
  *(a1 + 8) = v7;
}

void sub_1D5519628(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_1D4F0E020();
  if (v4)
  {
    v5 = v3;
    v6 = *(a1 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 8);
    v7 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
    sub_1D5615D78();
    v8 = v11[6];
    v9 = sub_1D560C368();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
    v10 = *(v11[7] + 8 * v5);
    _s12WeakObserverCMa();
    sub_1D551AED8(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
    sub_1D5615D98();

    *(a1 + 8) = v11;
  }
}

uint64_t sub_1D551977C(uint64_t a1, uint64_t a2, int a3, const char *a4, ...)
{
  v75 = a4;
  LODWORD(v80) = a3;
  v78 = type metadata accessor for MusicDaemon.Request(0);
  v5 = OUTLINED_FUNCTION_14(v78);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_18_92(v8);
  v10 = OUTLINED_FUNCTION_12_104(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for MusicDaemon.Request.Context(0);
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = type metadata accessor for MusicDaemon.Item();
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v77 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  v76 = &v75 - v31;
  OUTLINED_FUNCTION_23();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v75 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v75 - v36;
  sub_1D550231C(&v75 - v36);
  OUTLINED_FUNCTION_0_260();
  sub_1D551ADD4(v37, v35, v38);
  v40 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  v41 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
  v85 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v39 = v85;
  v86 = v40;
  v87 = v41;
  (*(v12 + 16))(v17, a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v82);
  sub_1D4E58128(v39, v40, v41);
  v42 = v88;
  _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC(v35, &v85, v17, v83, v24);
  if (v42)
  {
    v43 = v83[0];
    v44 = v83[1];
    v45 = v84;
    sub_1D53476CC();
    swift_allocError();
    *v46 = v43;
    *(v46 + 8) = v44;
    *(v46 + 16) = v45;
    v53 = type metadata accessor for MusicDaemon.Item;
    v54 = v37;
  }

  else
  {
    v47 = v76;
    v48 = v77;
    OUTLINED_FUNCTION_5_149();
    v49 = v79;
    sub_1D551ADD4(v24, v79, v50);
    swift_storeEnumTagMultiPayload();
    v51 = v81;
    sub_1D5519C8C();
    OUTLINED_FUNCTION_8_133();
    sub_1D551AD28(v49, v52);
    v56 = v51;
    if (qword_1EDD544D0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v57 = sub_1D560C758();
    __swift_project_value_buffer(v57, qword_1EDD76B38);
    OUTLINED_FUNCTION_0_260();
    sub_1D551ADD4(v37, v47, v58);

    v59 = v37;
    v60 = sub_1D560C738();
    v61 = sub_1D56156E8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v88 = v24;
      v63 = v62;
      v64 = swift_slowAlloc();
      v80 = v64;
      *v63 = 136446466;
      v82 = v59;
      v83[0] = v64;
      v85 = sub_1D55171AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7C80, &qword_1D566F3D8);
      v65 = sub_1D5614DB8();
      v67 = sub_1D4E6835C(v65, v66, v83);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      OUTLINED_FUNCTION_0_260();
      sub_1D551ADD4(v47, v48, v68);
      v69 = OUTLINED_FUNCTION_9_128();
      MEMORY[0x1DA6EAC70](v69);

      OUTLINED_FUNCTION_6_153();
      sub_1D551AD28(v48, v70);
      sub_1D551AD28(v47, &v85);
      v71 = sub_1D4E6835C(v85, v86, v83);

      *(v63 + 14) = v71;
      _os_log_impl(&dword_1D4E3F000, v60, v61, v75, v63, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();

      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v88, v72);
      v54 = v82;
      v53 = &v85;
    }

    else
    {

      OUTLINED_FUNCTION_7_141();
      sub_1D551AD28(v47, v73);
      OUTLINED_FUNCTION_1_195();
      sub_1D551AD28(v24, v74);
      v54 = v59;
      v53 = v56;
    }
  }

  return sub_1D551AD28(v54, v53);
}

uint64_t sub_1D5519C8C()
{
  if (sub_1D55171AC())
  {
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v1 = sub_1D560C758();
    __swift_project_value_buffer(v1, qword_1EDD76B38);
    v2 = sub_1D560C738();
    v3 = sub_1D56156E8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D4E3F000, v2, v3, "Sending XPC request.", v4, 2u);
      MEMORY[0x1DA6ED200](v4, -1, -1);
    }

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for MusicDaemon.Request(0);
    sub_1D551AED8(&qword_1EDD59120, type metadata accessor for MusicDaemon.Request);

    sub_1D560C798();
    if (v0)
    {

      v5 = v0;
      v6 = sub_1D560C738();
      v7 = sub_1D56156C8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v0;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_1D4E3F000, v6, v7, "XPC request error: %{public}@.", v8, 0xCu);
        sub_1D4E50004(v9, &unk_1EC7F2C00, &qword_1D5623260);
        MEMORY[0x1DA6ED200](v9, -1, -1);
        MEMORY[0x1DA6ED200](v8, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    sub_1D53476CC();
    swift_allocError();
    *v13 = xmmword_1D566F380;
    *(v13 + 16) = 2;
    return swift_willThrow();
  }
}

void sub_1D5519F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D560C368();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id, v6);
  v11 = *(a1 + 8);
  if (*(v11 + 16) && (sub_1D4F0E020(), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    v15 = *(v7 + 8);

    v15(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    _s12WeakObserverCMa();
    swift_allocObject();
    v16 = swift_unknownObjectRetain();
    sub_1D53A476C(v16, a3);
    v17 = *(a1 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 16);
    sub_1D4F155A4();
    *(a1 + 16) = v19;
  }
}

uint64_t sub_1D551A13C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >= 1)
  {
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 48));
}

void sub_1D551A198(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MusicDaemon.Response.Context(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - v11;
  v13 = sub_1D5516014();
  if (v13 || (v13 = sub_1D4ED0B58(a2 + *(v6 + 36), *(a1 + 8))) != 0)
  {
    v14 = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v14 + 24);

    *a3 = Strong;
    a3[1] = v16;
  }

  else
  {
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1D560C758();
    __swift_project_value_buffer(v17, qword_1EDD76B38);
    sub_1D551ADD4(a2, v12, type metadata accessor for MusicDaemon.Response.Context);
    sub_1D551ADD4(a2, v10, type metadata accessor for MusicDaemon.Response.Context);
    v18 = sub_1D560C738();
    v19 = sub_1D56156E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v20;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v20 = 136315394;
      v33[1] = sub_1D560C368();
      sub_1D551AED8(&qword_1EDD5CF40, MEMORY[0x1E69695A8]);
      v36 = v19;
      v35 = v18;
      v21 = sub_1D56160F8();
      v23 = v22;
      sub_1D551AD28(v12, type metadata accessor for MusicDaemon.Response.Context);
      v24 = sub_1D4E6835C(v21, v23, &v38);

      v25 = v34;
      *(v34 + 1) = v24;
      *(v25 + 6) = 2080;
      v26 = &v10[*(v6 + 36)];
      v27 = sub_1D56160F8();
      v29 = v28;
      sub_1D551AD28(v10, type metadata accessor for MusicDaemon.Response.Context);
      v30 = sub_1D4E6835C(v27, v29, &v38);

      *(v25 + 14) = v30;
      v31 = v35;
      _os_log_impl(&dword_1D4E3F000, v35, v36, "Couldn't find an observer to route the response to for request ID: %s and observer ID: %s.", v25, 0x16u);
      v32 = v37;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v32, -1, -1);
      MEMORY[0x1DA6ED200](v25, -1, -1);
    }

    else
    {

      sub_1D551AD28(v10, type metadata accessor for MusicDaemon.Response.Context);
      sub_1D551AD28(v12, type metadata accessor for MusicDaemon.Response.Context);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1D551A510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MusicDaemon.Response.Context(0) + 36);
  result = sub_1D5516014();
  if (result)
  {
    v6 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 24);
  }

  else
  {
    Strong = 0;
    v8 = 0;
  }

  *a2 = Strong;
  *(a2 + 8) = v8;
  *(a2 + 16) = *(*(a1 + 8) + 16) == 0;
  return result;
}

uint64_t sub_1D551A5AC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  sub_1D551AE34((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 48));
}

void sub_1D551A614(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(v3 + 16) && (v4 = *(type metadata accessor for MusicDaemon.Response.Context(0) + 36), sub_1D4F0E020(), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = *(v7 + 24);
    *a2 = Strong;
    a2[1] = v9;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t *sub_1D551A68C@<X0>(uint64_t *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = sub_1D560C7A8();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1D551A6DC(uint64_t a1, char *a2)
{
  v41 = a2;
  v3 = sub_1D560C7C8();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1D560C7E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7CA0, &qword_1D566F3F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  sub_1D4F1C460(a1, &v40 - v16, &qword_1EC7F7CA0, &qword_1D566F3F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v40;
    (*(v40 + 32))(v8, v17, v3);
    v19 = v8;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D560C758();
    __swift_project_value_buffer(v20, qword_1EDD76B38);
    v21 = *(v18 + 16);
    v22 = v42;
    v21(v42, v8, v3);
    v23 = sub_1D560C738();
    v24 = sub_1D56156C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = v19;
      v26 = v22;
      v27 = v25;
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      sub_1D551AED8(&unk_1EDD54450, MEMORY[0x1E69E84C0]);
      swift_allocError();
      v21(v29, v26, v3);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = *(v18 + 8);
      v31(v26, v3);
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1D4E3F000, v23, v24, "XPC failure received: %{public}@.", v27, 0xCu);
      sub_1D4E50004(v28, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v28, -1, -1);
      MEMORY[0x1DA6ED200](v27, -1, -1);

      return (v31)(v41, v3);
    }

    else
    {

      v39 = *(v18 + 8);
      v39(v22, v3);
      return (v39)(v19, v3);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v33 = v9;
    v34 = v10;
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D560C758();
    __swift_project_value_buffer(v35, qword_1EDD76B38);
    v36 = sub_1D560C738();
    v37 = sub_1D56156E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D4E3F000, v36, v37, "XPC response received.", v38, 2u);
      MEMORY[0x1DA6ED200](v38, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D55176C8(v13);
    }

    return (*(v34 + 8))(v13, v33);
  }
}

uint64_t sub_1D551AC10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D551AC98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D5517240(a1, a2);
}

uint64_t sub_1D551ACC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDaemon.Response.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D551AD28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D551ADD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t *sub_1D551AE34@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D551A68C(a1, a2);
}

unint64_t sub_1D551AE50()
{
  result = qword_1EDD52748;
  if (!qword_1EDD52748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7C98, &qword_1D566F3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52748);
  }

  return result;
}

void sub_1D551AEBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D5519628(a1);
}

uint64_t sub_1D551AED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicLibraryPlaylistViewModel.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D551B00C()
{
  result = qword_1EC7F7CB0;
  if (!qword_1EC7F7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7CB8, &qword_1D566F448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7CB0);
  }

  return result;
}

unint64_t sub_1D551B074()
{
  result = qword_1EC7F7CC0;
  if (!qword_1EC7F7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7CC0);
  }

  return result;
}

_BYTE *_s5ErrorOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Playlist.Entry.InternalItem.id.getter()
{
  Playlist.Entry.InternalItem.innerItem.getter(v1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_128();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D551B208@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry.InternalItem();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D551B62C(v1, v8 - v7);
  OUTLINED_FUNCTION_46_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = sub_1D560EEA8();
      goto LABEL_7;
    case 2u:
      v11 = sub_1D5613838();
LABEL_7:
      OUTLINED_FUNCTION_14(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_128();
      v15(v14);
      goto LABEL_10;
    case 3u:
      v10 = type metadata accessor for TVEpisode;
      goto LABEL_9;
    case 4u:
      v10 = type metadata accessor for UploadedAudio;
      goto LABEL_9;
    case 5u:
      v10 = type metadata accessor for UploadedVideo;
      goto LABEL_9;
    default:
      v10 = type metadata accessor for MusicMovie;
LABEL_9:
      sub_1D551C50C(v9, a1, v10);
LABEL_10:
      _s12InternalItemOMa(0);
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Playlist.Entry.InternalItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for Playlist.Entry.InternalItem();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v3, v1);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = sub_1D560EEA8();
      v14 = v13;
      v15 = MEMORY[0x1E69754B0];
      goto LABEL_7;
    case 2u:
      v13 = sub_1D5613838();
      v14 = v13;
      v15 = MEMORY[0x1E6976BB0];
LABEL_7:
      a1[3] = v13;
      a1[4] = v15;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0(v14);
      return (*(v17 + 32))();
    case 3u:
      a1[3] = type metadata accessor for TVEpisode();
      v16 = sub_1D4E74E24(&qword_1EDD54508, type metadata accessor for TVEpisode);
      v10 = OUTLINED_FUNCTION_104_0(v16);
      v11 = type metadata accessor for TVEpisode;
      return sub_1D551C50C(v1, v10, v11);
    case 4u:
      a1[3] = type metadata accessor for UploadedAudio();
      v12 = sub_1D4E74E24(&qword_1EDD57500, type metadata accessor for UploadedAudio);
      v10 = OUTLINED_FUNCTION_104_0(v12);
      v11 = type metadata accessor for UploadedAudio;
      return sub_1D551C50C(v1, v10, v11);
    case 5u:
      a1[3] = type metadata accessor for UploadedVideo();
      v19 = sub_1D4E74E24(&qword_1EDD57488, type metadata accessor for UploadedVideo);
      v10 = OUTLINED_FUNCTION_104_0(v19);
      v11 = type metadata accessor for UploadedVideo;
      return sub_1D551C50C(v1, v10, v11);
    default:
      a1[3] = type metadata accessor for MusicMovie();
      v9 = sub_1D4E74E24(&qword_1EDD59308, type metadata accessor for MusicMovie);
      v10 = OUTLINED_FUNCTION_104_0(v9);
      v11 = type metadata accessor for MusicMovie;
      return sub_1D551C50C(v1, v10, v11);
  }
}

uint64_t type metadata accessor for Playlist.Entry.InternalItem()
{
  result = qword_1EDD5D0F0;
  if (!qword_1EDD5D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D551B62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Playlist.Entry.InternalItem.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_83_25(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v49 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v14 = type metadata accessor for TVEpisode();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_129();
  v18 = type metadata accessor for MusicMovie();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v22 = sub_1D560EEA8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v26 = sub_1D5613838();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_98();
  v32 = type metadata accessor for Playlist.Entry.InternalItem();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v51, v0);
  OUTLINED_FUNCTION_128();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = OUTLINED_FUNCTION_41_54();
      v45(v44);
      MusicVideo.siriRepresentation.getter(v50);
      v46 = OUTLINED_FUNCTION_113_0();
      v47(v46);
      goto LABEL_10;
    case 2u:
      v38 = OUTLINED_FUNCTION_58_38(v29);
      v39(v38);
      OUTLINED_FUNCTION_80_15();
      Song.siriRepresentation.getter();
      v40 = *(v29 + 8);
      v41 = OUTLINED_FUNCTION_161();
      v42(v41);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_52_38();
      sub_1D551C50C(v0, v2, v43);
      TVEpisode.siriRepresentation.getter(v50);
      v37 = v2;
      break;
    case 4u:
      v32 = type metadata accessor for UploadedAudio;
      sub_1D551C50C(v0, v1, type metadata accessor for UploadedAudio);
      UploadedAudio.siriRepresentation.getter(v50);
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      v1 = v49;
      sub_1D551C50C(v0, v49, v48);
      UploadedVideo.siriRepresentation.getter(v50);
LABEL_8:
      v37 = v1;
      break;
    default:
      OUTLINED_FUNCTION_53_36();
      sub_1D551C50C(v0, v3, v36);
      MusicMovie.siriRepresentation.getter(v50);
      v37 = v3;
      break;
  }

  sub_1D4ED1490(v37, v32);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

void sub_1D551B9BC()
{
  OUTLINED_FUNCTION_47();
  v4 = type metadata accessor for TVEpisode();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v8 = type metadata accessor for MusicMovie();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v12 = sub_1D560EEA8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v42 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_129();
  v17 = sub_1D5613838();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v23 = type metadata accessor for Playlist.Entry.InternalItem();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_1D551B62C(v1, v28 - v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v41(v2, v29, v12);
      sub_1D560ED58();
      (*(v42 + 8))(v2, v12);
      break;
    case 2u:
      (*(v20 + 32))(v3, v29, v17);
      sub_1D5613668();
      v30 = *(v20 + 8);
      v31 = OUTLINED_FUNCTION_45_3();
      v32(v31);
      break;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      sub_1D551C50C(v29, v1, v33);
      if (qword_1EC7E91C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v34, v1);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v35, v1);
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      sub_1D4ED1490(v1, v36);
      break;
    case 4u:
    case 5u:
      sub_1D4ED1490(v29, type metadata accessor for Playlist.Entry.InternalItem);
      break;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v29, v0, v37);
      if (qword_1EDD542C0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v38, v1);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v39, v1);
      OUTLINED_FUNCTION_72_30();
      OUTLINED_FUNCTION_6_154();
      sub_1D4ED1490(v0, v40);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.InternalItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v99 = v4;
  v84 = type metadata accessor for UploadedVideo();
  v5 = OUTLINED_FUNCTION_14(v84);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v85 = v8;
  OUTLINED_FUNCTION_70_0();
  v83[0] = type metadata accessor for UploadedAudio();
  v9 = OUTLINED_FUNCTION_14(v83[0]);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v83[1] = v12;
  OUTLINED_FUNCTION_70_0();
  v86 = type metadata accessor for TVEpisode();
  v13 = OUTLINED_FUNCTION_14(v86);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v87 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D5613838();
  v18 = OUTLINED_FUNCTION_4(v17);
  v89 = v19;
  v90 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v88 = v22;
  OUTLINED_FUNCTION_70_0();
  v23 = sub_1D560EEA8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v92 = v25;
  v93 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v91 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = sub_1D560D838();
  v30 = OUTLINED_FUNCTION_4(v29);
  v96 = v31;
  v97 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v94 = type metadata accessor for MusicMovie();
  v34 = OUTLINED_FUNCTION_14(v94);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v95 = v37;
  OUTLINED_FUNCTION_70_0();
  v38 = sub_1D5610088();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v39);
  v46 = v83 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v98 = type metadata accessor for Playlist.Entry.InternalItem();
  v47 = OUTLINED_FUNCTION_14(v98);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v50 = v3[4];
  v51 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5610CF8();
  sub_1D560FE28();
  sub_1D4E74E24(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
  LOBYTE(v3) = OUTLINED_FUNCTION_32_62();
  v52 = *(v41 + 8);
  v52(v46, v38);
  if (v3)
  {
    v53 = OUTLINED_FUNCTION_122_1();
    (v52)(v53);
    OUTLINED_FUNCTION_74_1();
    __swift_project_boxed_opaque_existential_1(v100, v101);
    OUTLINED_FUNCTION_46_1();
    sub_1D5610CD8();
    v54 = sub_1D560D708();
    v56 = v55;
    (*(v96 + 8))(v1, v97);
    v57 = v95;
    *v95 = v54;
    *(v57 + 8) = v56;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v58 = v57 + *(v94 + 20);
    sub_1D5610D28();
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_5_150();
    sub_1D551C50C(v57, v0, v59);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1D551C50C(v0, v99, type metadata accessor for Playlist.Entry.InternalItem);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_46();
    return;
  }

  v95 = v0;
  sub_1D560FE38();
  OUTLINED_FUNCTION_32_62();
  v60 = OUTLINED_FUNCTION_34_64();
  (v52)(v60);
  if (v0)
  {
    v62 = OUTLINED_FUNCTION_122_1();
    (v52)(v62);
    OUTLINED_FUNCTION_74_1();
    sub_1D560EDD8();
    v63 = *(v92 + 32);
    v0 = v95;
    v64 = OUTLINED_FUNCTION_71();
    v65(v64);
    goto LABEL_6;
  }

  sub_1D560FDF8();
  OUTLINED_FUNCTION_32_62();
  v61 = OUTLINED_FUNCTION_34_64();
  (v52)(v61);
  sub_1D560FFA8();
  OUTLINED_FUNCTION_32_62();
  v66 = OUTLINED_FUNCTION_34_64();
  (v52)(v66);
  if (v0)
  {
    v68 = OUTLINED_FUNCTION_122_1();
    (v52)(v68);
    OUTLINED_FUNCTION_74_1();
    sub_1D56136E8();
    v69 = *(v89 + 32);
    v0 = v95;
    v70 = OUTLINED_FUNCTION_71();
    v71(v70);
    goto LABEL_6;
  }

  sub_1D560FE48();
  OUTLINED_FUNCTION_32_62();
  v67 = OUTLINED_FUNCTION_34_64();
  (v52)(v67);
  sub_1D5610078();
  OUTLINED_FUNCTION_32_62();
  v72 = OUTLINED_FUNCTION_34_64();
  (v52)(v72);
  if (v0)
  {
    v73 = OUTLINED_FUNCTION_122_1();
    (v52)(v73);
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_46_42();
    sub_1D560D708();
    v74 = OUTLINED_FUNCTION_42_50();
    v75(v74);
    v76 = v87;
    OUTLINED_FUNCTION_41_2();
    v77 = v76 + *(v86 + 20);
    OUTLINED_FUNCTION_71();
    sub_1D5610D28();
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_3_197();
    OUTLINED_FUNCTION_71_26(v78, v79, v80);
    goto LABEL_6;
  }

  sub_1D560FF28();
  OUTLINED_FUNCTION_32_62();
  v81 = OUTLINED_FUNCTION_34_64();
  (v52)(v81);
  sub_1D560FF38();
  OUTLINED_FUNCTION_32_62();
  v82 = OUTLINED_FUNCTION_34_64();
  (v52)(v82);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D551C50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

void Playlist.Entry.InternalItem.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v59 = OUTLINED_FUNCTION_83_25(v4);
  v5 = OUTLINED_FUNCTION_14(v59);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v60 = v8;
  OUTLINED_FUNCTION_70_0();
  v57 = type metadata accessor for UploadedAudio();
  v9 = OUTLINED_FUNCTION_14(v57);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v58 = v12;
  OUTLINED_FUNCTION_70_0();
  v56 = type metadata accessor for TVEpisode();
  v13 = OUTLINED_FUNCTION_14(v56);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v16 = sub_1D5613838();
  v17 = OUTLINED_FUNCTION_4(v16);
  v55 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_98();
  v21 = sub_1D560EEA8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v27 = type metadata accessor for MusicMovie();
  v28 = OUTLINED_FUNCTION_14(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_129();
  v31 = type metadata accessor for Playlist.Entry.InternalItem();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  sub_1D551B62C(v62, v36 - v35);
  OUTLINED_FUNCTION_122_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v24 + 32))(v0, v37, v21);
      sub_1D560EDC8();
      (*(v24 + 8))(v0, v21);
      goto LABEL_10;
    case 2u:
      (*(v55 + 32))(v3, v37, v16);
      OUTLINED_FUNCTION_80_15();
      sub_1D56136D8();
      v46 = *(v55 + 8);
      v47 = OUTLINED_FUNCTION_161();
      v48(v47);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v37, v2, v49);
      v50 = OUTLINED_FUNCTION_139_0(v56);
      OUTLINED_FUNCTION_14(v50);
      (*(v51 + 16))(v61, v2 + v0);
      v42 = v2;
      break;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      v43 = v58;
      sub_1D551C50C(v37, v58, v44);
      v45 = v57;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_51_36();
      v43 = v60;
      sub_1D551C50C(v37, v60, v52);
      v45 = v59;
LABEL_8:
      v53 = OUTLINED_FUNCTION_139_0(v45);
      OUTLINED_FUNCTION_14(v53);
      (*(v54 + 16))(v61, v43 + v0);
      v42 = v43;
      break;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v37, v1, v38);
      v39 = *(v27 + 20);
      v40 = sub_1D5611AB8();
      OUTLINED_FUNCTION_14(v40);
      (*(v41 + 16))(v61, v1 + v39);
      v42 = v1;
      break;
  }

  sub_1D4ED1490(v42, v21);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

void Playlist.Entry.InternalItem.artwork.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_83_25(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v65 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v64 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for TVEpisode();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_12();
  v18 = type metadata accessor for MusicMovie();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_129();
  v22 = sub_1D560EEA8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v28 = sub_1D5613838();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_98();
  v34 = type metadata accessor for Playlist.Entry.InternalItem();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v66, v0);
  OUTLINED_FUNCTION_71();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = OUTLINED_FUNCTION_41_54();
      v58(v57);
      sub_1D560EE78();
      v59 = OUTLINED_FUNCTION_113_0();
      v60(v59);
      goto LABEL_18;
    case 2u:
      v47 = OUTLINED_FUNCTION_58_38(v31);
      v48(v47);
      OUTLINED_FUNCTION_80_15();
      sub_1D56137F8();
      v49 = *(v31 + 8);
      v50 = OUTLINED_FUNCTION_161();
      v51(v50);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      v52 = OUTLINED_FUNCTION_24();
      sub_1D551C50C(v52, v53, v54);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v55, v25);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v56, v25);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      v46 = v1;
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v0, v64, v42);
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_50_39();
      sub_1D4E74E24(v43, v1);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v44, v1);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_1_196();
      v46 = v64;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v65;
      sub_1D551C50C(v0, v65, v61);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_48_42();
      sub_1D4E74E24(v62, v25);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v63, v25);
      OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24();
      v41 = type metadata accessor for UploadedVideo;
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v0, v2, v38);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v39, v25);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v40, v25);
      OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24();
      v41 = type metadata accessor for MusicMovie;
LABEL_16:
      v45 = v41;
      v46 = v2;
LABEL_17:
      sub_1D4ED1490(v46, v45);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.duration.getter()
{
  OUTLINED_FUNCTION_47();
  v60 = v1;
  v6 = type metadata accessor for UploadedVideo();
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v59 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for UploadedAudio();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v58 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = type metadata accessor for TVEpisode();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v20 = type metadata accessor for MusicMovie();
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_12();
  v24 = sub_1D560EEA8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v30 = sub_1D5613838();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v36 = type metadata accessor for Playlist.Entry.InternalItem();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_98();
  sub_1D551B62C(v60, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v27 + 32))(v3, v5, v24);
      sub_1D560EE88();
      v52 = *(v27 + 8);
      v53 = OUTLINED_FUNCTION_45_3();
      v54(v53);
      goto LABEL_19;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v47(v4, v5, v30);
      sub_1D5613818();
      (*(v33 + 8))(v4, v30);
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      sub_1D551C50C(v5, v0, v48);
      if (qword_1EC7E91A0 != -1)
      {
        swift_once();
      }

      sub_1D4E74E24(&qword_1EDD54508, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v49, type metadata accessor for TVEpisode);
      sub_1D560EC28();
      v46 = type metadata accessor for TVEpisode;
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      v0 = v58;
      sub_1D551C50C(v5, v58, v43);
      if (qword_1EC7E8E60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_49_36();
      sub_1D4E74E24(v44, v33);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v45, v33);
      OUTLINED_FUNCTION_72_30();
      v46 = type metadata accessor for UploadedAudio;
LABEL_12:
      v50 = v46;
      v51 = v0;
      goto LABEL_18;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v59;
      sub_1D551C50C(v5, v59, v55);
      if (qword_1EDD53E28 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_47_47();
      sub_1D4E74E24(v56, v36);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v57, v36);
      OUTLINED_FUNCTION_101_1();
      v42 = type metadata accessor for UploadedVideo;
      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v5, v2, v40);
      if (qword_1EDD541A8 != -1)
      {
        swift_once();
      }

      sub_1D4E74E24(&qword_1EDD59308, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v41, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_101_1();
      v42 = type metadata accessor for MusicMovie;
LABEL_17:
      v50 = v42;
      v51 = v2;
LABEL_18:
      sub_1D4ED1490(v51, v50);
LABEL_19:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.playParameters.getter()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_83_25(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v65 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for UploadedAudio();
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v64 = v13;
  OUTLINED_FUNCTION_70_0();
  v14 = type metadata accessor for TVEpisode();
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_12();
  v18 = type metadata accessor for MusicMovie();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_129();
  v22 = sub_1D560EEA8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v28 = sub_1D5613838();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_98();
  v34 = type metadata accessor for Playlist.Entry.InternalItem();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  sub_1D551B62C(v66, v0);
  OUTLINED_FUNCTION_71();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = OUTLINED_FUNCTION_41_54();
      v58(v57);
      sub_1D560ED68();
      v59 = OUTLINED_FUNCTION_113_0();
      v60(v59);
      goto LABEL_18;
    case 2u:
      v47 = OUTLINED_FUNCTION_58_38(v31);
      v48(v47);
      OUTLINED_FUNCTION_80_15();
      sub_1D5613688();
      v49 = *(v31 + 8);
      v50 = OUTLINED_FUNCTION_161();
      v51(v50);
      goto LABEL_18;
    case 3u:
      OUTLINED_FUNCTION_3_197();
      v52 = OUTLINED_FUNCTION_24();
      sub_1D551C50C(v52, v53, v54);
      if (qword_1EC7E9230 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_27_73();
      sub_1D4E74E24(v55, v25);
      OUTLINED_FUNCTION_88_0();
      sub_1D4E74E24(v56, v25);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_0_261();
      v46 = v1;
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v0, v64, v42);
      if (qword_1EC7E8EB0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_50_39();
      sub_1D4E74E24(v43, v1);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v44, v1);
      OUTLINED_FUNCTION_25_67();
      sub_1D560EC28();
      OUTLINED_FUNCTION_1_196();
      v46 = v64;
      goto LABEL_17;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      v2 = v65;
      sub_1D551C50C(v0, v65, v61);
      if (qword_1EDD53EF8 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_48_42();
      sub_1D4E74E24(v62, v25);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v63, v25);
      OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24();
      v41 = type metadata accessor for UploadedVideo;
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_5_150();
      sub_1D551C50C(v0, v2, v38);
      if (qword_1EDD542A0 != -1)
      {
        swift_once();
      }

      sub_1D56109F8();
      OUTLINED_FUNCTION_28_69();
      sub_1D4E74E24(v39, v25);
      OUTLINED_FUNCTION_85_1();
      sub_1D4E74E24(v40, v25);
      OUTLINED_FUNCTION_25_67();
      OUTLINED_FUNCTION_86_24();
      v41 = type metadata accessor for MusicMovie;
LABEL_16:
      v45 = v41;
      v46 = v2;
LABEL_17:
      sub_1D4ED1490(v46, v45);
LABEL_18:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  v6 = type metadata accessor for UploadedVideo();
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v51 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for UploadedAudio();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v15 = type metadata accessor for TVEpisode();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_12();
  v19 = type metadata accessor for MusicMovie();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_129();
  v23 = sub_1D560EEA8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v50 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v28 = sub_1D5613838();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_98();
  v34 = type metadata accessor for Playlist.Entry.InternalItem();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  sub_1D551B62C(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v44(v3, v4, v23);
      sub_1D560ECC8();
      OUTLINED_FUNCTION_74_7();
      v45 = *(v50 + 8);
      v46 = OUTLINED_FUNCTION_45_3();
      v48(v46, v47);
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v41 = OUTLINED_FUNCTION_161();
      v42(v41);
      sub_1D56135B8();
      OUTLINED_FUNCTION_74_7();
      (*(v31 + 8))(v5, v28);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_52_38();
      sub_1D551C50C(v4, v1, v43);
      TVEpisode.showName.getter();
      OUTLINED_FUNCTION_74_7();
      v39 = v1;
      goto LABEL_9;
    case 4u:
      sub_1D551C50C(v4, v0, type metadata accessor for UploadedAudio);
      UploadedAudio.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v39 = v0;
      v40 = type metadata accessor for UploadedAudio;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v51, v49);
      UploadedVideo.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v39 = v51;
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_53_36();
      sub_1D551C50C(v4, v2, v38);
      MusicMovie.artistName.getter();
      OUTLINED_FUNCTION_74_7();
      v39 = v2;
LABEL_9:
      v40 = v31;
LABEL_10:
      sub_1D4ED1490(v39, v40);
LABEL_11:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.title.getter()
{
  OUTLINED_FUNCTION_47();
  v60 = v0;
  v6 = type metadata accessor for UploadedVideo();
  v7 = OUTLINED_FUNCTION_22(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v59 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = type metadata accessor for UploadedAudio();
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v58 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = type metadata accessor for TVEpisode();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_12();
  v20 = type metadata accessor for MusicMovie();
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_129();
  v24 = sub_1D560EEA8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v30 = sub_1D5613838();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_98();
  v36 = type metadata accessor for Playlist.Entry.InternalItem();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  sub_1D551B62C(v60, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v50(v3, v4, v24);
      sub_1D560EE68();
      OUTLINED_FUNCTION_86_2();
      v51 = *(v27 + 8);
      v52 = OUTLINED_FUNCTION_45_3();
      v54(v52, v53);
      goto LABEL_15;
    case 2u:
      v46 = *(v33 + 32);
      v47 = OUTLINED_FUNCTION_161();
      v48(v47);
      sub_1D56137E8();
      OUTLINED_FUNCTION_86_2();
      (*(v33 + 8))(v5, v30);
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v1, v49);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_86_2();
      v41 = v1;
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_4_152();
      sub_1D551C50C(v4, v58, v42);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_49_36();
      sub_1D4E74E24(v43, v27);
      OUTLINED_FUNCTION_24_5();
      sub_1D4E74E24(v44, v27);
      OUTLINED_FUNCTION_72_30();
      v45 = type metadata accessor for UploadedAudio;
      v41 = v58;
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_2_192();
      sub_1D551C50C(v4, v59, v55);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_47_47();
      sub_1D4E74E24(v56, v36);
      OUTLINED_FUNCTION_23_2();
      sub_1D4E74E24(v57, v36);
      OUTLINED_FUNCTION_101_1();
      v45 = type metadata accessor for UploadedVideo;
      v41 = v59;
      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v2, v40);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_86_2();
      v41 = v2;
LABEL_8:
      v45 = v33;
LABEL_14:
      sub_1D4ED1490(v41, v45);
LABEL_15:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void static Playlist.Entry.InternalItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v114 = v2;
  v115 = v3;
  v105 = type metadata accessor for UploadedVideo();
  v4 = OUTLINED_FUNCTION_14(v105);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v109 = v7;
  OUTLINED_FUNCTION_70_0();
  v104 = type metadata accessor for UploadedAudio();
  v8 = OUTLINED_FUNCTION_14(v104);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v108 = v11;
  OUTLINED_FUNCTION_70_0();
  v103 = type metadata accessor for TVEpisode();
  v12 = OUTLINED_FUNCTION_14(v103);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v107 = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D5613838();
  v17 = OUTLINED_FUNCTION_4(v16);
  v112 = v18;
  v113 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v106 = v21;
  OUTLINED_FUNCTION_70_0();
  v22 = sub_1D560EEA8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v110 = v24;
  v111 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v101 = type metadata accessor for MusicMovie();
  v27 = OUTLINED_FUNCTION_14(v101);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v102 = v30;
  OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for Playlist.Entry.InternalItem();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = (&v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v100 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = (&v100 - v42);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v100 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v100 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = (&v100 - v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D10, &qword_1D566F510);
  v53 = OUTLINED_FUNCTION_22(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_40_2();
  v57 = *(v56 + 56);
  sub_1D551B62C(v114, v0);
  sub_1D551B62C(v115, v0 + v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = OUTLINED_FUNCTION_128();
      sub_1D551B62C(v79, v80);
      if (OUTLINED_FUNCTION_70_28() == 1)
      {
        v82 = v110;
        v81 = v111;
        (*(v110 + 32))(v1, v0 + v57, v111);
        sub_1D560EE28();
        v83 = *(v82 + 8);
        v83(v1, v81);
        v83(v49, v81);
        goto LABEL_24;
      }

      (*(v110 + 8))(v49, v111);
      goto LABEL_39;
    case 2u:
      sub_1D551B62C(v0, v46);
      if (OUTLINED_FUNCTION_70_28() != 2)
      {
        (*(v112 + 8))(v46, v113);
        goto LABEL_39;
      }

      v68 = v112;
      v67 = v113;
      v69 = v0 + v57;
      v70 = v106;
      (*(v112 + 32))(v106, v69, v113);
      sub_1D56137A8();
      v71 = *(v68 + 8);
      v71(v70, v67);
      v71(v46, v67);
LABEL_24:
      OUTLINED_FUNCTION_33_58();
      goto LABEL_52;
    case 3u:
      v72 = OUTLINED_FUNCTION_24();
      sub_1D551B62C(v72, v73);
      if (OUTLINED_FUNCTION_70_28() != 3)
      {
        OUTLINED_FUNCTION_0_261();
        v59 = v43;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_3_197();
      v74 = v107;
      sub_1D551C50C(v0 + v57, v107, v75);
      v76 = *v43 == *v74 && v43[1] == v74[1];
      if (v76 || (sub_1D5616168() & 1) != 0)
      {
        v77 = *(v103 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_0_261();
        sub_1D4ED1490(v74, v78);
      }

      else
      {
        OUTLINED_FUNCTION_0_261();
        sub_1D4ED1490(v74, v97);
      }

      OUTLINED_FUNCTION_0_261();
      v66 = v43;
      goto LABEL_51;
    case 4u:
      sub_1D551B62C(v0, v40);
      if (OUTLINED_FUNCTION_70_28() != 4)
      {
        OUTLINED_FUNCTION_1_196();
        v59 = v40;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_4_152();
      v60 = v108;
      sub_1D551C50C(v0 + v57, v108, v61);
      v62 = *v40 == *v60 && v40[1] == v60[1];
      if (v62 || (sub_1D5616168() & 1) != 0)
      {
        v63 = *(v104 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_1_196();
        sub_1D4ED1490(v60, v64);
      }

      else
      {
        OUTLINED_FUNCTION_1_196();
        sub_1D4ED1490(v60, v96);
      }

      OUTLINED_FUNCTION_1_196();
      v66 = v40;
      goto LABEL_51;
    case 5u:
      v84 = OUTLINED_FUNCTION_71();
      sub_1D551B62C(v84, v85);
      if (OUTLINED_FUNCTION_70_28() != 5)
      {
        OUTLINED_FUNCTION_10_127();
        v59 = v37;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_2_192();
      v86 = v109;
      sub_1D551C50C(v0 + v57, v109, v87);
      v88 = *v37 == *v86 && v37[1] == v86[1];
      if (v88 || (sub_1D5616168() & 1) != 0)
      {
        v89 = *(v105 + 20);
        sub_1D5611A78();
        OUTLINED_FUNCTION_10_127();
        sub_1D4ED1490(v86, v90);
      }

      else
      {
        OUTLINED_FUNCTION_10_127();
        sub_1D4ED1490(v86, v98);
      }

      OUTLINED_FUNCTION_10_127();
      v66 = v37;
      goto LABEL_51;
    default:
      sub_1D551B62C(v0, v51);
      if (OUTLINED_FUNCTION_70_28())
      {
        OUTLINED_FUNCTION_6_154();
        v59 = v51;
LABEL_38:
        sub_1D4ED1490(v59, v58);
LABEL_39:
        sub_1D5520B24(v0);
      }

      else
      {
        OUTLINED_FUNCTION_5_150();
        v91 = v102;
        sub_1D551C50C(v0 + v57, v102, v92);
        v93 = *v51 == *v91 && v51[1] == v91[1];
        if (v93 || (sub_1D5616168() & 1) != 0)
        {
          v94 = *(v101 + 20);
          sub_1D5611A78();
          OUTLINED_FUNCTION_6_154();
          sub_1D4ED1490(v91, v95);
        }

        else
        {
          OUTLINED_FUNCTION_6_154();
          sub_1D4ED1490(v91, v99);
        }

        OUTLINED_FUNCTION_6_154();
        v66 = v51;
LABEL_51:
        sub_1D4ED1490(v66, v65);
        OUTLINED_FUNCTION_33_58();
      }

LABEL_52:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v72 = v0;
  v70 = type metadata accessor for UploadedVideo();
  v6 = OUTLINED_FUNCTION_14(v70);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v71 = v9;
  OUTLINED_FUNCTION_70_0();
  v69 = type metadata accessor for UploadedAudio();
  v10 = OUTLINED_FUNCTION_14(v69);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_129();
  v68 = type metadata accessor for TVEpisode();
  v13 = OUTLINED_FUNCTION_14(v68);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v16 = sub_1D5613838();
  v17 = OUTLINED_FUNCTION_4(v16);
  v67 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_98();
  v21 = sub_1D560EEA8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v66 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_12();
  v26 = type metadata accessor for MusicMovie();
  v27 = OUTLINED_FUNCTION_14(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v30 = type metadata accessor for Playlist.Entry.InternalItem();
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  sub_1D551B62C(v72, v35 - v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v58(v1, v36, v21);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_54_39();
      sub_1D4E74E24(v59, v60);
      sub_1D5614CB8();
      (*(v66 + 8))(v1, v21);
      goto LABEL_10;
    case 2u:
      (*(v67 + 32))(v5, v36, v16);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_55_36();
      sub_1D4E74E24(v48, v49);
      sub_1D5614CB8();
      v50 = *(v67 + 8);
      v51 = OUTLINED_FUNCTION_161();
      v52(v51);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v36, v4, v53);
      OUTLINED_FUNCTION_65_28();
      v54 = *v4;
      v55 = v4[1];
      sub_1D5614E28();
      OUTLINED_FUNCTION_139_0(v68);
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v56, v57);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v43 = v4;
      break;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v36, v2, v44);
      OUTLINED_FUNCTION_65_28();
      v45 = *v2;
      v46 = v2[1];
      sub_1D5614E28();
      v47 = v69;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_51_36();
      v2 = v71;
      sub_1D551C50C(v36, v71, v61);
      OUTLINED_FUNCTION_65_28();
      v62 = *v71;
      v63 = v71[1];
      sub_1D5614E28();
      v47 = v70;
LABEL_8:
      OUTLINED_FUNCTION_139_0(v47);
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v64, v65);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v43 = v2;
      break;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v36, v3, v37);
      OUTLINED_FUNCTION_65_28();
      v38 = *v3;
      v39 = v3[1];
      sub_1D5614E28();
      v40 = *(v26 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_29_62();
      sub_1D4E74E24(v41, v42);
      OUTLINED_FUNCTION_61();
      sub_1D5614CB8();
      v43 = v3;
      break;
  }

  sub_1D4ED1490(v43, v21);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t Playlist.Entry.InternalItem.hashValue.getter()
{
  sub_1D56162D8();
  Playlist.Entry.InternalItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D551EDA0()
{
  sub_1D56162D8();
  Playlist.Entry.InternalItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D551EDDC@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.InternalItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D551EE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D551EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D551EF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D551EF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D551EFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D551F074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D551F0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D551F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D551F1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D551F264()
{
  sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return sub_1D5613028();
}

uint64_t sub_1D551F2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D551F364()
{
  sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return sub_1D5612FD8();
}

uint64_t sub_1D551F3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D551F464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74E24(&qword_1EC7F7D30, type metadata accessor for Playlist.Entry.InternalItem);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D551F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t Playlist.Entry.InternalItem.init(from:)(uint64_t *a1)
{
  v2 = sub_1D5615C08();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5616348();
  sub_1D5615BF8();
  v12 = sub_1D5615C18();
  swift_allocError();
  v14 = v13;
  (*(v5 + 16))(v13, v10, v2);
  v15 = *MEMORY[0x1E69E6B00];
  OUTLINED_FUNCTION_24_0(v12);
  (*(v16 + 104))(v14);
  swift_willThrow();
  (*(v5 + 8))(v10, v2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.InternalItem.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D5615C38();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163A8();
  sub_1D5615BF8();
  v14 = sub_1D5615C48();
  swift_allocError();
  v16 = v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D18, &qword_1D566F518) + 48);
  v16[3] = type metadata accessor for Playlist.Entry.InternalItem();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  sub_1D551B62C(v2, boxed_opaque_existential_0);
  (*(v7 + 16))(v16 + v17, v12, v4);
  v19 = *MEMORY[0x1E69E6B30];
  OUTLINED_FUNCTION_24_0(v14);
  (*(v20 + 104))(v16);
  swift_willThrow();
  return (*(v7 + 8))(v12, v4);
}

void Playlist.Entry.InternalItem.description.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v63 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v61 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = type metadata accessor for TVEpisode();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_129();
  v19 = sub_1D5613838();
  v20 = OUTLINED_FUNCTION_4(v19);
  v62 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v24 = sub_1D560EEA8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v28 = type metadata accessor for MusicMovie();
  v29 = OUTLINED_FUNCTION_22(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v32 = type metadata accessor for Playlist.Entry.InternalItem();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_98();
  v36 = OUTLINED_FUNCTION_42_3();
  sub_1D551B62C(v36, v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v54(v2, v4, v24);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_54_39();
      sub_1D4E74E24(v55, v56);
      v57 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v57);

      OUTLINED_FUNCTION_56_2();
      v49 = OUTLINED_FUNCTION_113_0();
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v44(v1, v4, v19);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_55_36();
      sub_1D4E74E24(v45, v46);
      v47 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v47);

      OUTLINED_FUNCTION_56_2();
      v48 = *(v62 + 8);
      v49 = OUTLINED_FUNCTION_122_1();
LABEL_8:
      v50(v49);
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v0, v51);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      v52 = TVEpisode.description.getter();
      MEMORY[0x1DA6EAC70](v52);

      OUTLINED_FUNCTION_56_2();
      v40 = v0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v4, v61, v41);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_81_28(v42);
      v43 = UploadedAudio.description.getter();
      MEMORY[0x1DA6EAC70](v43);

      OUTLINED_FUNCTION_56_2();
      v40 = v61;
      goto LABEL_6;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v63, v58);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      OUTLINED_FUNCTION_81_28(v59);
      v60 = UploadedVideo.description.getter();
      MEMORY[0x1DA6EAC70](v60);

      OUTLINED_FUNCTION_56_2();
      v40 = OUTLINED_FUNCTION_61();
      goto LABEL_10;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v3, v38);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_30_69();
      v39 = MusicMovie.description.getter();
      MEMORY[0x1DA6EAC70](v39);

      OUTLINED_FUNCTION_56_2();
      v40 = v3;
LABEL_6:
      v53 = v32;
LABEL_10:
      sub_1D4ED1490(v40, v53);
LABEL_11:
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_46();
      return;
  }
}

void Playlist.Entry.InternalItem.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = type metadata accessor for UploadedVideo();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v77 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for UploadedAudio();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v76 = v14;
  OUTLINED_FUNCTION_70_0();
  v15 = type metadata accessor for TVEpisode();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_12();
  v75 = sub_1D5613838();
  v19 = OUTLINED_FUNCTION_4(v75);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v24 = sub_1D560EEA8();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v30 = type metadata accessor for MusicMovie();
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v34 = type metadata accessor for Playlist.Entry.InternalItem();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_98();
  v38 = OUTLINED_FUNCTION_42_3();
  sub_1D551B62C(v38, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v27 + 32))(v2, v4, v24);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v65 = sub_1D560EDB8();
      OUTLINED_FUNCTION_7_4(v65, v66);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      v67 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v67);

      OUTLINED_FUNCTION_53();
      (*(v27 + 8))(v2, v24);
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v54(v1, v4, v75);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v55 = sub_1D56136C8();
      OUTLINED_FUNCTION_7_4(v55, v56);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      v57 = OUTLINED_FUNCTION_46_1();
      MEMORY[0x1DA6EAC70](v57);

      OUTLINED_FUNCTION_53();
      (*(v21 + 8))(v1, v75);
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_11_123();
      sub_1D551C50C(v4, v0, v58);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v59 = TVEpisode.debugDescription.getter();
      OUTLINED_FUNCTION_7_4(v59, v60);
      v61 = OUTLINED_FUNCTION_4_2();
      v63 = v62;

      MEMORY[0x1DA6EAC70](v61, v63);

      OUTLINED_FUNCTION_53();
      v46 = v0;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_22_76();
      sub_1D551C50C(v4, v76, v47);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_81_28(v48);
      v49 = UploadedAudio.debugDescription.getter();
      OUTLINED_FUNCTION_7_4(v49, v50);
      v51 = OUTLINED_FUNCTION_4_2();
      v53 = v52;

      MEMORY[0x1DA6EAC70](v51, v53);

      OUTLINED_FUNCTION_53();
      v46 = v76;
      goto LABEL_6;
    case 5u:
      OUTLINED_FUNCTION_21_80();
      sub_1D551C50C(v4, v77, v68);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_81_28(v69);
      v70 = UploadedVideo.debugDescription.getter();
      OUTLINED_FUNCTION_7_4(v70, v71);
      v72 = OUTLINED_FUNCTION_4_2();
      v74 = v73;

      MEMORY[0x1DA6EAC70](v72, v74);

      OUTLINED_FUNCTION_53();
      v46 = v77;
      v64 = v21;
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_12_105();
      sub_1D551C50C(v4, v3, v40);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_14_45();
      v41 = MusicMovie.debugDescription.getter();
      OUTLINED_FUNCTION_7_4(v41, v42);
      v43 = OUTLINED_FUNCTION_4_2();
      v45 = v44;

      MEMORY[0x1DA6EAC70](v43, v45);

      OUTLINED_FUNCTION_53();
      v46 = v3;
LABEL_6:
      v64 = v34;
LABEL_9:
      sub_1D4ED1490(v46, v64);
LABEL_10:
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D552044C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7F7CC8 = v4;
  return result;
}

uint64_t sub_1D55205A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5621D90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  result = (v6)(v5 + v2, *MEMORY[0x1E6975218], v0);
  qword_1EC7F7CD0 = v4;
  return result;
}

uint64_t sub_1D55206E8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7CD8);
  __swift_project_value_buffer(v0, qword_1EC7F7CD8);
  type metadata accessor for Playlist.Entry.InternalItem();
  sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem);
  return sub_1D560D978();
}

uint64_t sub_1D55207C0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F7CF0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E9738 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F7CD8);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D55208A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D562D010;
  v5 = v4 + v3;
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  sub_1D560D878();
  sub_1D560D8E8();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 3 * v2, v8, v0);
  if (qword_1EC7E8F18 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F08A0);
  v7(v5 + 4 * v2, v9, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 5 * v2, v10, v0);
  qword_1EC7F7D08 = v4;
  return result;
}

uint64_t sub_1D5520B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7D10, &qword_1D566F510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5520BD4(uint64_t a1)
{
  result = sub_1D4E74E24(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_58()
{

  return sub_1D4ED1490(v0, type metadata accessor for Playlist.Entry.InternalItem);
}

uint64_t OUTLINED_FUNCTION_42_50()
{
  v2 = *(v1 - 152);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_46_42()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_70_28()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_71_26(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 168);

  return sub_1D551C50C(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_72_30()
{

  return sub_1D560EC28();
}

uint64_t AudioAnalysis.debugDescription.getter()
{
  strcpy(v9, "AudioAnalysis(");
  HIBYTE(v9[1]) = -18;
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E9758 != -1)
  {
    OUTLINED_FUNCTION_26_78();
  }

  OUTLINED_FUNCTION_1_197();
  sub_1D552808C(v4);
  OUTLINED_FUNCTION_0_262();
  sub_1D552808C(v5);
  OUTLINED_FUNCTION_11_34();
  OUTLINED_FUNCTION_57_3();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5690550);
  sub_1D5615D48();
  sub_1D4F50E20(0x22203A646920200ALL);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E9760 != -1)
  {
    OUTLINED_FUNCTION_25_68();
  }

  OUTLINED_FUNCTION_11_34();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_3();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5690530);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);
  }

  if (qword_1EC7E9770 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
  OUTLINED_FUNCTION_11_34();
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](0x72656E6520200A2CLL, 0xEC000000203A7967);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v9[0];
}

uint64_t AudioAnalysis.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_201();
  sub_1D5610CD8();
  v13 = sub_1D560D708();
  v15 = v14;
  (*(v7 + 8))(v11, v4);
  *a2 = v13;
  a2[1] = v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = a2 + *(type metadata accessor for AudioAnalysis() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}