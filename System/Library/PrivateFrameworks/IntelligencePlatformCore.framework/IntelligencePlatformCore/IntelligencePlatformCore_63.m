unint64_t sub_1C49B0EBC()
{
  result = qword_1EC0C0B40;
  if (!qword_1EC0C0B40)
  {
    sub_1C4572308(&qword_1EC0C0B38, &qword_1C4F40020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B40);
  }

  return result;
}

uint64_t sub_1C49B0F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE570, &qword_1C4F40030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v54 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v53 = *(v54 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v55 = a1;
  v56 = a2;
  sub_1C4415EA8();
  v21 = sub_1C4F02058();
  v22 = v21;
  v23 = v21[2];
  if (v23 != 2)
  {
    if (v23 != 1)
    {

      goto LABEL_8;
    }

    sub_1C440AE0C();
    sub_1C4EFCC18();
    sub_1C49B15CC();
    v24 = sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    if (sub_1C44157D4(v13, 1, v24) == 1)
    {
      v25 = sub_1C442CD68();
      v26(v25);
      sub_1C4423A0C(v13, &qword_1EC0BE570, &qword_1C4F40030);
LABEL_8:
      type metadata accessor for NLLanguage(0);
      sub_1C49B1760();
      return sub_1C4F00F28();
    }

    sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = sub_1C4F01108();
    *(inited + 40) = 0;
    *(inited + 48) = 0xE000000000000000;
    type metadata accessor for NLLanguage(0);
    sub_1C49B1760();
    v40 = sub_1C4F00F28();
    v42 = sub_1C442CD68();
    v43(v42);
    v44 = v13;
LABEL_19:
    sub_1C4423A0C(v44, &qword_1EC0BE570, &qword_1C4F40030);
    return v40;
  }

  v27 = v21[4];
  v28 = v21[5];
  v29 = v21[6];
  v30 = v21[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = MEMORY[0x1C693FEF0](v27, v28, v29, v30);

  if (v22[2] >= 2uLL)
  {
    v52 = v31;
    v33 = v22[8];
    v34 = v22[9];
    v36 = v22[10];
    v35 = v22[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v37 = MEMORY[0x1C693FEF0](v33, v34, v36, v35);
    v39 = v38;

    sub_1C440AE0C();
    sub_1C4EFCC18();
    sub_1C4EFCC18();
    sub_1C49B15CC();
    sub_1C49B15CC();
    sub_1C456902C(&qword_1EC0BE578, qword_1C4F374B0);
    sub_1C440A6F0(v10);
    if (v45 || (sub_1C440A6F0(v7), v45))
    {

      sub_1C440A6F0(v10);
      if (!v45 && (sub_1C440A6F0(v7), v45))
      {
        sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
        v46 = swift_initStackObject();
        *(v46 + 16) = xmmword_1C4F0D130;
        v47 = sub_1C4F01108();

        *(v46 + 32) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0xE000000000000000;
        type metadata accessor for NLLanguage(0);
        sub_1C49B1760();
      }

      else
      {

        type metadata accessor for NLLanguage(0);
        sub_1C49B1760();
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0B50, &qword_1C4F40038);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_1C4F0D130;
      v49 = sub_1C4F01108();

      *(v48 + 32) = v49;
      *(v48 + 40) = v37;
      *(v48 + 48) = v39;
      type metadata accessor for NLLanguage(0);
      sub_1C49B1760();
    }

    v40 = sub_1C4F00F28();
    v50 = *(v53 + 8);
    v51 = v54;
    v50(v16, v54);
    v50(v19, v51);
    sub_1C4423A0C(v10, &qword_1EC0BE570, &qword_1C4F40030);
    v44 = v7;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49B15CC()
{
  v0 = sub_1C456902C(&qword_1EC0BE568, &unk_1C4F374A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1C49B17B8();
  sub_1C4EFCB68();
  sub_1C4AA0ED8();
  sub_1C4EFCBC8();
  (*(v1 + 8))(v4, v0);
}

unint64_t sub_1C49B1760()
{
  result = qword_1EDDDBB40;
  if (!qword_1EDDDBB40)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB40);
  }

  return result;
}

unint64_t sub_1C49B17B8()
{
  result = qword_1EC0C0B58;
  if (!qword_1EC0C0B58)
  {
    sub_1C4572308(&qword_1EC0BE568, &unk_1C4F374A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B58);
  }

  return result;
}

unint64_t sub_1C49B1820()
{
  result = qword_1EC0C0B68;
  if (!qword_1EC0C0B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C0B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageConsumptionStreamMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49B1944()
{
  result = qword_1EC0C0B80;
  if (!qword_1EC0C0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0B80);
  }

  return result;
}

uint64_t sub_1C49B19A4(uint64_t a1)
{
  v1 = sub_1C49B7634(a1);

  return v1;
}

uint64_t sub_1C49B19E8()
{
  v4 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v1124 = &v989 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v989 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v989 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v1131 = &v989 - v14;
  v15 = sub_1C4EF9DD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C444FE10();
  v1125 = v19;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C444FE10();
  v1126 = v22;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C444FE10();
  v1127 = v25;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C444FE10();
  v1128 = v28;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C444FE10();
  v1129 = v31;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C444FE10();
  v1132 = v34;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C444FE10();
  v1130 = v37;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C444FE10();
  i = v42;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C444FE10();
  v1122 = v45;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C444FE10();
  v1123 = v48;
  sub_1C4426C58();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C444FE10();
  sub_1C4413428();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v989 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v1134 = &v989 - v54;
  type metadata accessor for NLLanguage(0);
  v56 = v55;
  v57 = sub_1C456902C(&qword_1EC0C0B90, &qword_1C4F40130);
  sub_1C49B7E34(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
  v994 = v56;
  v1137 = sub_1C4F00F28();
  v1119 = sub_1C49BBC58();
  v1136 = sub_1C49B02C0();
  sub_1C49BBF58();
  v59 = *(v58 + 16);
  v1138 = v16;
  v1139 = v15;
  v1135 = v17;
  v1111 = v9;
  if (v59)
  {
    v1107 = v52;
    v1108 = v12;
    v52 = v58 + 64;
    v60 = *(v58 + 64);
    v61 = *(v58 + 32);
    sub_1C43FD030();
    v1 = v63 & v62;
    v65 = v64 + 63;
    v66 = v16;
    v67 = v65 >> 6;
    v1112 = v66 + 32;
    v1106 = (v66 + 16);
    v1105 = v17 + 7;
    v1120 = (v66 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4409E8C();
    v68 = 0;
    v70 = v69;
    v1121 = v69;
    while (1)
    {
      v71 = v68;
      if (!v1)
      {
        break;
      }

LABEL_7:
      v72 = v70[6];
      sub_1C43FE6F0(__clz(__rbit64(v1)));
      sub_1C4703354(v57);
      sub_1C43FC1CC();
      v74 = v73;
      v75 = sub_1C486C29C(v57);
      if (v74 & 1) != 0 || (v77)
      {
        goto LABEL_539;
      }

      if (v17 != v76)
      {
        goto LABEL_498;
      }

      if (v70 == v75)
      {

        sub_1C4418958();
        v78 = sub_1C4F01108();
      }

      else
      {
        v79 = sub_1C44BBE60();
        v78 = sub_1C486BF1C(v79, v80, v81, v82);
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v83 = v78;
      sub_1C4703354(v57);
      sub_1C43FC1CC();
      v85 = v84;
      v86 = sub_1C486C29C(v57);
      if (v85 & 1) != 0 || (v88)
      {
        goto LABEL_540;
      }

      if (v17 != v87)
      {
        goto LABEL_499;
      }

      if (v78 == v86)
      {

        v89 = v1131;
        v90 = v1139;
        sub_1C440BAA8(v1131, 1, 1, v1139);
        sub_1C4418958();
        sub_1C4EF9DC8();
        v91 = sub_1C44157D4(v89, 1, v90);
        v70 = v1121;
        if (v91 != 1)
        {
          sub_1C49B7950(v1131);
        }
      }

      else
      {
        v92 = v1131;
        v93 = sub_1C44BBE60();
        sub_1C4BDF4BC(v93, v94, v95, v96, v97);

        v98 = v1139;
        sub_1C440BAA8(v92, 0, 1, v1139);
        v99 = sub_1C4459BB0(&v1138);
        v100(v99, v92, v98);
        v70 = v1121;
      }

      if (v70[2])
      {
        sub_1C457B120(v57);
        v102 = v101;
        v104 = v103;

        v2 = 0.0;
        if (v104)
        {
          v2 = *(v70[7] + 8 * v102);
        }
      }

      else
      {

        v2 = 0.0;
      }

      v1 &= v1 - 1;
      v57 = sub_1C4F01138();
      v17 = v105;

      v106 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v106 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {
        v109 = v1138;
        v1099 = *(v1138 + 2);
        v1099(v1107, v1134, v1139);
        v110 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        sub_1C446244C();
        v111 = swift_allocObject();
        v109[4](v111 + v110, v1107, v1139);
        *(v70 + v111) = v2;
        sub_1C441D710();
        sub_1C43FBDBC();
        v112 = swift_allocObject();
        sub_1C4414288(v112, &v1130);
        sub_1C44754B4();
        sub_1C43FBDBC();
        v113 = swift_allocObject();
        sub_1C4414288(v113, &v1129);
        sub_1C442F938();
        sub_1C44042C4();
        v114 = swift_allocObject();
        *(v114 + 16) = sub_1C49B78E0;
        *(v114 + 24) = v111;
        v1115 = v111;
        v1102 = v114;
        sub_1C4425D60(v1118, &v1141);
        sub_1C4433D60();
        v1118 = sub_1C457EB50(v83);
        sub_1C43FC438();
        if (__OFADD__(v116, v117))
        {
          goto LABEL_506;
        }

        v118 = v115;
        sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
        sub_1C440AE20();
        sub_1C4F02458();
        sub_1C444110C();
        if (v119)
        {
          v1118 = sub_1C457EB50(v83);
          sub_1C446BF70();
          if (!v120)
          {
            goto LABEL_542;
          }

          v70 = v1137;
        }

        if ((v118 & 1) == 0)
        {
          sub_1C440BE20(&v1128);
          v122 = v121();
          sub_1C457EB30(v1118, v83, v122, v1137);
          v123 = v83;
          v70 = v1137;
        }

        v124 = v70[7];
        sub_1C44042C4();
        v125 = swift_allocObject();
        v126 = v1104;
        v1100 = v125;
        *(v125 + 16) = sub_1C49B78F8;
        *(v125 + 24) = v126;
        sub_1C446BC90();
        sub_1C4440D60(&v1143);
        swift_isUniquelyReferenced_nonNull_native();
        v127 = *(v124 + 8 * v118);
        sub_1C44050EC();
        *(v124 + 8 * v118) = v128;
        sub_1C457B1F0();
        v130 = sub_1C44365BC(v129, &v1142);
        sub_1C4403428(v130, v131);
        v134 = v132 + v133;
        if (__OFADD__(v132, v133))
        {
          goto LABEL_507;
        }

        sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
        sub_1C440AE20();
        v135 = sub_1C4F02458();
        v136 = v1140;
        if (v135)
        {
          sub_1C457B1F0();
          sub_1C4422B50(v137, &v1142);
          sub_1C4417468();
          if (!v120)
          {
            goto LABEL_542;
          }
        }

        sub_1C4440D60(&v1143);
        *(v124 + 8 * v134) = v136;

        v138 = *(v124 + 8 * v134);
        if ((v1116 & 1) == 0)
        {
          sub_1C440BE20(&v1126);
          v134 = v139();
          v140 = v1002;
          v1099(v1002, v1134, v1139);
          sub_1C457E054(v1117, v140, v134, v138);
        }

        v141 = *(v138 + 56);
        sub_1C44042C4();
        v142 = swift_allocObject();
        v143 = v1103;
        v1099 = v142;
        *(v142 + 16) = sub_1C49B7E80;
        *(v142 + 24) = v143;
        sub_1C44493E8();
        sub_1C4440D60(&v1142);
        swift_isUniquelyReferenced_nonNull_native();
        v144 = *(v141 + 8 * v134);
        sub_1C44050EC();
        *(v141 + 8 * v134) = v145;
        v146 = sub_1C442FF14();
        v148 = sub_1C445FAA8(v146, v147);
        v149 = sub_1C44365BC(v148, &v1141);
        sub_1C4403428(v149, v150);
        v153 = v151 + v152;
        if (__OFADD__(v151, v152))
        {
          goto LABEL_508;
        }

        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        sub_1C440AE20();
        v154 = sub_1C4F02458();
        v155 = v1140;
        if (v154)
        {
          v156 = sub_1C442FF14();
          sub_1C445FAA8(v156, v157);
          sub_1C4417468();
          if (!v120)
          {
            goto LABEL_542;
          }

          v17 = v158;
        }

        else
        {
          v17 = v1116;
        }

        sub_1C4440D60(&v1142);
        *(v141 + 8 * v153) = v155;

        v57 = *(v141 + 8 * v153);
        v159 = v1099;
        if ((v1118 & 1) == 0)
        {
          sub_1C440C5C8();
          sub_1C457DBD8(v17, 0x6472616F6279654BLL, 0xE900000000000073, v57);
        }

        *(*(v57 + 56) + 8 * v17) = v2;

        v160 = sub_1C4459BB0(&v1145);
        v161(v160, v1139);
        v1113[1] = sub_1C49B7948;
        v1113[3] = sub_1C49B7E7C;
        v1118 = sub_1C49B7918;
        v1117 = sub_1C49B7E80;
        v1114 = sub_1C49B78F8;
        v1113[5] = sub_1C49B78E0;
        v1113[4] = v1115;
        v1113[6] = v1104;
        v1115 = v1103;
        v1116 = v1102;
        v1113[2] = v1100;
        v1113[0] = v159;
        v70 = v1121;
      }

      else
      {
        v107 = sub_1C4459BB0(&v1145);
        v108(v107, v1139);
      }
    }

    while (1)
    {
      v68 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v68 >= v67)
      {

        v16 = v1138;
        v15 = v1139;
        v9 = v1111;
        v12 = v1108;
        goto LABEL_52;
      }

      v1 = *(v52 + 8 * v68);
      ++v71;
      if (v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_488:
    __break(1u);
LABEL_489:
    __break(1u);
LABEL_490:
    __break(1u);
LABEL_491:
    __break(1u);
LABEL_492:
    __break(1u);
LABEL_493:
    __break(1u);
LABEL_494:
    __break(1u);
    goto LABEL_495;
  }

  sub_1C4409E8C();
LABEL_52:
  sub_1C49BC878();
  if (!*(v162 + 16))
  {

LABEL_82:
    v1008 = 0;
    v1012 = 0;
    v1009 = 0;
    v1121 = 0;
    v1010 = 0;
    v1011 = 0;
    goto LABEL_87;
  }

  sub_1C4868270(v162);
  if (!v163)
  {
    v163 = sub_1C4F01108();
  }

  v52 = v163;
  sub_1C4868288();

  sub_1C440029C(v12);
  if (v120)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    sub_1C440029C(v12);
    if (!v120)
    {
      sub_1C49B7950(v12);
    }
  }

  else
  {
    (*(v16 + 4))(v1123, v12, v15);
  }

  v164 = sub_1C4F01138();
  v166 = v165;

  v167 = HIBYTE(v166) & 0xF;
  if ((v166 & 0x2000000000000000) == 0)
  {
    v167 = v164 & 0xFFFFFFFFFFFFLL;
  }

  if (!v167)
  {
    sub_1C443DFA4();
    v213(v1123, v15);

    goto LABEL_82;
  }

  v168 = v1110;
  v1134 = *(v16 + 2);
  (v1134)(v1110, v1123, v15);
  v169 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v170 = swift_allocObject();
  (*(v16 + 4))(v170 + v169, v168, v15);
  sub_1C44042C4();
  v171 = swift_allocObject();
  *(v171 + 16) = sub_1C49B79B8;
  *(v171 + 24) = v170;
  v1012 = v170;
  v1121 = v171;
  v172 = v1137;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4433D60();
  sub_1C457EB50(v52);
  sub_1C43FC438();
  if (__OFADD__(v175, v176))
  {
LABEL_501:
    __break(1u);
LABEL_502:
    __break(1u);
    goto LABEL_503;
  }

  v177 = v173;
  v178 = v174;
  sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
  sub_1C440AE20();
  sub_1C4F02458();
  sub_1C444110C();
  if (v179)
  {
    sub_1C457EB50(v52);
    sub_1C446BF70();
    if (!v120)
    {
      goto LABEL_542;
    }

    sub_1C44553D0();
  }

  if ((v178 & 1) == 0)
  {
    v180 = *(v1121 + 24);
    v181 = (*(v1121 + 16))();
    sub_1C457EB30(v177, v52, v181, v1137);
    v182 = v52;
    v172 = v1137;
  }

  v183 = *(v172 + 56);
  v184 = *(v183 + 8 * v177);
  swift_isUniquelyReferenced_nonNull_native();
  v185 = *(v183 + 8 * v177);
  sub_1C44050EC();
  *(v183 + 8 * v177) = v186;
  sub_1C457B1F0();
  sub_1C43FC438();
  v191 = v189 + v190;
  if (__OFADD__(v189, v190))
  {
    goto LABEL_502;
  }

  v192 = v187;
  v193 = v188;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  sub_1C4433588();
  v194 = sub_1C4F02458();
  v195 = v1140;
  if (v194)
  {
    sub_1C457B1F0();
    if ((v193 & 1) != (v197 & 1))
    {
      goto LABEL_542;
    }

    v192 = v196;
  }

  v198 = *(v183 + 8 * v177);
  *(v183 + 8 * v177) = v195;

  v199 = *(v183 + 8 * v177);
  if ((v193 & 1) == 0)
  {
    sub_1C49B6EEC(&v1140);
    v200 = sub_1C4401E34();
    (v1134)(v200, v1123, v1139);
    sub_1C457E054(v192, v191, v1140, v199);
  }

  v201 = *(v199 + 56);
  v202 = *(v201 + 8 * v192);
  swift_isUniquelyReferenced_nonNull_native();
  v203 = *(v201 + 8 * v192);
  sub_1C44050EC();
  *(v201 + 8 * v192) = v204;
  sub_1C445FAA8(0x5220656369766544, 0xED00006E6F696765);
  sub_1C43FC438();
  v17 = v207 + v208;
  if (__OFADD__(v207, v208))
  {
    goto LABEL_504;
  }

  v209 = v205;
  v1 = v206;
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  sub_1C4433588();
  v210 = sub_1C4F02458();
  v211 = v1140;
  if (v210)
  {
    sub_1C445FAA8(0x5220656369766544, 0xED00006E6F696765);
    sub_1C440F418();
    v9 = v1111;
    if (!v120)
    {
      goto LABEL_542;
    }

    v209 = v212;
  }

  else
  {
    v9 = v1111;
  }

  v214 = *(v201 + 8 * v192);
  *(v201 + 8 * v192) = v211;

  v215 = *(v201 + 8 * v192);
  if ((v1 & 1) == 0)
  {
    sub_1C457DBD8(v209, 0x5220656369766544, 0xED00006E6F696765, v215);
  }

  *(*(v215 + 56) + 8 * v209) = 0x3FF0000000000000;

  v16 = v1138;
  v15 = v1139;
  sub_1C443DFA4();
  v216(v1123, v15);
  v1011 = sub_1C49B1998;
  v1010 = sub_1C49B6EEC;
  v1009 = sub_1C49B7E7C;
  v1008 = sub_1C49B79B8;
LABEL_87:
  sub_1C49BCCB8();
  v218 = v217;
  if (!*(v217 + 16))
  {

LABEL_111:
    v1004 = 0;
    v1007 = 0;
    v1005 = 0;
    v1123 = 0;
    v1006 = 0;
    goto LABEL_112;
  }

  sub_1C4868270(v217);
  if (!v219)
  {
    v219 = sub_1C4F01108();
  }

  v220 = v219;
  sub_1C4868288();

  sub_1C440029C(v9);
  if (v120)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    sub_1C440029C(v9);
    if (!v120)
    {
      sub_1C49B7950(v9);
    }
  }

  else
  {
    (*(v16 + 4))(v1122, v9, v15);
  }

  sub_1C4F01138();
  sub_1C43FC1CC();

  sub_1C441D2C4();
  if (!v221)
  {
    sub_1C443DFA4();
    v255(v1122, v15);

    goto LABEL_111;
  }

  v1 = v16 + 16;
  v222 = *(v16 + 2);
  v223 = v1109;
  v222(v1109, v1122, v15);
  v224 = *(v16 + 80);
  sub_1C4441504();
  v225 = swift_allocObject();
  (*(v16 + 4))(v225 + v218, v223, v15);
  sub_1C44042C4();
  v226 = swift_allocObject();
  *(v226 + 16) = sub_1C49B7A44;
  *(v226 + 24) = v225;
  v1007 = v225;
  v1123 = v226;
  v227 = v1137;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4433D60();
  sub_1C457EB50(v220);
  sub_1C43FC438();
  if (__OFADD__(v230, v231))
  {
LABEL_503:
    __break(1u);
LABEL_504:
    __break(1u);
    goto LABEL_505;
  }

  v52 = v228;
  v232 = v229;
  sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
  sub_1C440AE20();
  sub_1C4F02458();
  sub_1C444110C();
  if (v233)
  {
    sub_1C457EB50(v220);
    sub_1C44331E4();
    if (!v120)
    {
      goto LABEL_542;
    }

    sub_1C440EFEC();
  }

  v1134 = v222;
  if ((v232 & 1) == 0)
  {
    v234 = *(v1123 + 24);
    (*(v1123 + 16))();
    v235 = sub_1C44584E8();
    sub_1C457EB30(v235, v220, v236, v1137);
    v237 = v220;
    v227 = v1137;
  }

  v9 = *(v227 + 56);
  v238 = *(v9 + 8 * v52);
  swift_isUniquelyReferenced_nonNull_native();
  v239 = *(v9 + 8 * v52);
  sub_1C44050EC();
  *(v9 + 8 * v52) = v240;
  sub_1C457B1F0();
  sub_1C43FC438();
  v17 = v243 + v244;
  if (__OFADD__(v243, v244))
  {
LABEL_505:
    __break(1u);
LABEL_506:
    __break(1u);
LABEL_507:
    __break(1u);
LABEL_508:
    __break(1u);
LABEL_509:
    __break(1u);
LABEL_510:
    __break(1u);
LABEL_511:
    __break(1u);
LABEL_512:
    __break(1u);
LABEL_513:
    __break(1u);
LABEL_514:
    __break(1u);
LABEL_515:
    __break(1u);
LABEL_516:
    __break(1u);
LABEL_517:
    __break(1u);
LABEL_518:
    __break(1u);
LABEL_519:
    __break(1u);
LABEL_520:
    __break(1u);
LABEL_521:
    __break(1u);
LABEL_522:
    __break(1u);
LABEL_523:
    __break(1u);
LABEL_524:
    __break(1u);
LABEL_525:
    __break(1u);
LABEL_526:
    __break(1u);
LABEL_527:
    __break(1u);
LABEL_528:
    __break(1u);
LABEL_529:
    __break(1u);
LABEL_530:
    __break(1u);
LABEL_531:
    __break(1u);
LABEL_532:
    __break(1u);
LABEL_533:
    __break(1u);
    goto LABEL_534;
  }

  v15 = v241;
  v245 = v242;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  sub_1C4433588();
  v246 = sub_1C4F02458();
  v247 = v1140;
  if ((v246 & 1) == 0)
  {
    goto LABEL_107;
  }

  sub_1C457B1F0();
  if ((v245 & 1) != (v249 & 1))
  {
LABEL_542:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v15 = v248;
LABEL_107:
  v250 = *(v9 + 8 * v52);
  *(v9 + 8 * v52) = v247;

  v251 = *(v9 + 8 * v52);
  if ((v245 & 1) == 0)
  {
    sub_1C49B6F34(&v1140);
    v252 = sub_1C4401E34();
    (v1134)(v252, v1122, v1139);
    sub_1C457E054(v15, v17, v1140, v251);
  }

  v253 = *(v251 + 56) + 8 * v15;
  sub_1C466018C();

  v16 = v1138;
  sub_1C443DFA4();
  v254(v1122);
  v1006 = sub_1C49B6F34;
  v1005 = sub_1C49B7E7C;
  v1004 = sub_1C49B7A44;
LABEL_112:
  v256 = sub_1C49BD178();
  v257 = v256;
  if (!*(v256 + 16))
  {

    sub_1C441BA9C();
    goto LABEL_160;
  }

  v259 = v256 + 64;
  v258 = *(v256 + 64);
  v260 = *(v256 + 32);
  sub_1C43FD030();
  v9 = v262 & v261;
  v264 = (v263 + 63) >> 6;
  v1102 = v16 + 32;
  v1100 = (v16 + 16);
  v1099 = (v1135 + 7);
  v1131 = v16 + 8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441BA9C();
  v1 = 0;
  v2 = 0.0;
  v1134 = v257;
LABEL_114:
  v265 = v1;
  if (!v9)
  {
    goto LABEL_116;
  }

  do
  {
    v1 = v265;
LABEL_119:
    v266 = *(v257 + 6);
    sub_1C442BCE0(__clz(__rbit64(v9)));
    swift_bridgeObjectRetain_n();
    v267 = sub_1C4703354(v257);
    v269 = v268;
    v271 = v270;
    v272 = sub_1C486C29C(v257);
    if (v271 & 1) != 0 || (v274)
    {
      goto LABEL_541;
    }

    if (v269 != v273)
    {
      goto LABEL_500;
    }

    if (v267 == v272)
    {

      sub_1C4418958();
      v275 = sub_1C4F01108();
    }

    else
    {
      v275 = sub_1C486BF1C(v267, v269, 0, v257);
    }

    v276 = v1124;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v277 = v275;
    sub_1C4868288();

    v278 = v1139;
    if (sub_1C44157D4(v276, 1, v1139) == 1)
    {
      sub_1C4418958();
      sub_1C4EF9DC8();
      if (sub_1C44157D4(v276, 1, v278) != 1)
      {
        sub_1C49B7950(v276);
      }
    }

    else
    {
      (*v1102)(i, v276, v278);
    }

    v9 &= v9 - 1;
    v17 = sub_1C465C3F4(v257, v1134);
    v52 = v279;

    v280 = sub_1C4F01138();
    v15 = v281;

    v282 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v282 = v280 & 0xFFFFFFFFFFFFLL;
    }

    if (v282)
    {
      v285 = sub_1C442F6EC();
      v286 = v1138;
      v1094 = *(v1138 + 2);
      (v1094)(v1101, i, v1139, v285);
      v287 = *(v286 + 80);
      sub_1C4441504();
      sub_1C4407384();
      v288 = swift_allocObject();
      v286[4](v288 + v280, v1101, v1139);
      *(v288 + v17) = v3;
      sub_1C443EF40();
      sub_1C43FBDBC();
      v289 = swift_allocObject();
      sub_1C443F24C(v289, &v1124);
      sub_1C4471CE0();
      sub_1C43FBDBC();
      v290 = swift_allocObject();
      sub_1C443F24C(v290, &v1123);
      sub_1C44AE090();
      sub_1C44042C4();
      v291 = swift_allocObject();
      *(v291 + 16) = sub_1C49B7AB4;
      *(v291 + 24) = v288;
      v1111 = v288;
      v1096 = v291;
      sub_1C4425D60(v1122, &v1138);
      sub_1C4433D60();
      v1122 = sub_1C457EB50(v277);
      sub_1C43FC438();
      v295 = v293 + v294;
      if (__OFADD__(v293, v294))
      {
        goto LABEL_509;
      }

      v296 = v292;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v297)
      {
        sub_1C457EB50(v277);
        sub_1C43FED0C();
        if (!v120)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
        if (v296)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v295 = v1122;
        if (v296)
        {
LABEL_142:
          v301 = *(v280 + 56);
          sub_1C44042C4();
          v302 = swift_allocObject();
          v303 = v1098;
          v1095 = v302;
          *(v302 + 16) = sub_1C49B7ACC;
          *(v302 + 24) = v303;
          sub_1C445ABE8();
          v304 = *(v301 + 8 * v295);
          swift_isUniquelyReferenced_nonNull_native();
          v305 = *(v301 + 8 * v295);
          sub_1C44050EC();
          v1122 = v295;
          *(v301 + 8 * v295) = v306;
          sub_1C457B1F0();
          v308 = sub_1C44365BC(v307, &v1145);
          sub_1C4403428(v308, v309);
          if (__OFADD__(v310, v311))
          {
            goto LABEL_510;
          }

          sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
          sub_1C440AE20();
          v312 = sub_1C4F02458();
          v313 = v1140;
          if (v312)
          {
            sub_1C457B1F0();
            sub_1C4417468();
            if (!v120)
            {
              goto LABEL_542;
            }

            v315 = v314;
          }

          else
          {
            v315 = v1120;
          }

          v316 = v1122;
          v317 = *(v301 + 8 * v1122);
          *(v301 + 8 * v1122) = v313;

          v318 = *(v301 + 8 * v316);
          if ((v1112 & 1) == 0)
          {
            sub_1C440BE20(&v1121);
            v319();
            v320 = sub_1C43FDA80();
            (v1094)(v320, i, v1139);
            sub_1C4435970(v315);
          }

          v52 = *(v318 + 56);
          sub_1C44042C4();
          v321 = swift_allocObject();
          v322 = v1097;
          v1094 = v321;
          *(v321 + 16) = sub_1C49B7AEC;
          *(v321 + 24) = v322;
          sub_1C443E1C0();
          v323 = *(v52 + 8 * v315);
          swift_isUniquelyReferenced_nonNull_native();
          v324 = *(v52 + 8 * v315);
          sub_1C44050EC();
          v1120 = v315;
          *(v52 + 8 * v315) = v325;
          v326 = sub_1C44351D4();
          v328 = sub_1C445FAA8(v326, v327);
          sub_1C44365BC(v328, &v1138);
          LODWORD(v1122) = v329;
          sub_1C440E4D8();
          if (v330)
          {
            goto LABEL_511;
          }

          sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
          sub_1C440AE20();
          v331 = sub_1C4F02458();
          v332 = v1140;
          if (v331)
          {
            v333 = sub_1C44351D4();
            v335 = sub_1C445FAA8(v333, v334);
            v337 = v1120;
            if ((v1122 & 1) != (v336 & 1))
            {
              goto LABEL_542;
            }

            v15 = v335;
          }

          else
          {
            v337 = v1120;
            v15 = v1112;
          }

          v338 = *(v52 + 8 * v337);
          *(v52 + 8 * v337) = v332;

          v17 = *(v52 + 8 * v337);
          v339 = v1094;
          if ((v1122 & 1) == 0)
          {
            sub_1C440C5C8();
            sub_1C457DBD8(v15, 0x6E6F697461636F4CLL, 0xE900000000000073, v17);
          }

          *(*(v17 + 56) + 8 * v15) = v3;

          v340 = sub_1C447CC2C();
          v341(v340);
          v1104 = sub_1C49B7E84;
          v1106 = sub_1C49B7E7C;
          v1122 = sub_1C49B7E7C;
          v1120 = sub_1C49B7AEC;
          v1110 = sub_1C49B7ACC;
          v1108 = sub_1C49B7AB4;
          v1107 = v1111;
          v1109 = v1098;
          v1111 = v1097;
          v1112 = v1096;
          v1105 = v1095;
          v1103 = v339;
          v257 = v1134;
          goto LABEL_114;
        }
      }

      sub_1C440BE20(&v1122);
      v299 = v298();
      sub_1C457EB30(v295, v277, v299, v1137);
      v300 = v277;
      v280 = v1137;
      goto LABEL_142;
    }

    v283 = sub_1C447CC2C();
    v284(v283);

    v265 = v1;
    v257 = v1134;
  }

  while (v9);
  while (1)
  {
LABEL_116:
    v1 = v265 + 1;
    if (__OFADD__(v265, 1))
    {
      goto LABEL_488;
    }

    if (v1 >= v264)
    {
      break;
    }

    v9 = *(v259 + 8 * v1);
    ++v265;
    if (v9)
    {
      goto LABEL_119;
    }
  }

LABEL_160:
  v342 = sub_1C49BD738(v1119);
  v343 = v342;
  if (!*(v342 + 16))
  {

    sub_1C4415AA0();
    goto LABEL_195;
  }

  v344 = *(v342 + 64);
  v345 = *(v342 + 32);
  sub_1C43FD030();
  sub_1C4430684();
  sub_1C4415AA0();
  v52 = 0;
  while (2)
  {
    v346 = v52;
    if (v1)
    {
LABEL_166:
      v347 = sub_1C4440A14();
      v348 = v347;
      v2 = 0.0;
      if (v257)
      {
        v257 = v343;
        v349 = sub_1C457EB50(v347);
        if (v350)
        {
          v2 = *(*(v343 + 7) + 8 * v349);
        }
      }

      v1 &= v1 - 1;
      sub_1C4F01138();
      sub_1C43FC1CC();

      sub_1C441D2C4();
      if (!v351)
      {

        continue;
      }

      sub_1C43FBDBC();
      v352 = swift_allocObject();
      *(v352 + 16) = v2;
      sub_1C44A17EC();
      sub_1C4418958();
      sub_1C4EF9DC8();
      sub_1C43FBDBC();
      v353 = swift_allocObject();
      sub_1C4414288(v353, &v1117);
      sub_1C445BDB4();
      sub_1C43FBDBC();
      v354 = swift_allocObject();
      sub_1C4414288(v354, &v1116);
      sub_1C44239FC(v1124);
      sub_1C44042C4();
      v355 = swift_allocObject();
      *(v355 + 16) = sub_1C49B7AF4;
      *(v355 + 24) = v352;
      v1101 = v352;
      v1089 = v355;
      sub_1C4425D60(v15, &v1128);
      sub_1C4433D60();
      v1124 = sub_1C457EB50(v348);
      v356 = *(v352 + 16);
      LODWORD(v1131) = v357;
      sub_1C440E4D8();
      if (v330)
      {
        goto LABEL_512;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v358)
      {
        sub_1C457EB50(v348);
        sub_1C4460AA4();
        if (!v120)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
        if (v359)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v15 = v1124;
        if (v1131)
        {
LABEL_179:
          v363 = *(v352 + 56);
          sub_1C44042C4();
          v364 = swift_allocObject();
          v365 = v1091;
          v1088 = v364;
          *(v364 + 16) = sub_1C49B7B14;
          *(v364 + 24) = v365;
          sub_1C4424754();
          v366 = *(v363 + 8 * v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1C441ED78(isUniquelyReferenced_nonNull_native, &v1126);
          v1124 = v15;
          *(v363 + 8 * v15) = v368;
          sub_1C49B7E88();
          sub_1C457B1F0();
          v1131 = v369;
          v370 = *(v352 + 16);
          sub_1C4403428(v369, v371);
          if (__OFADD__(v372, v373))
          {
            goto LABEL_513;
          }

          sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
          sub_1C4433588();
          v374 = sub_1C4475B10(&v1126);
          v375 = v1140;
          if (v374)
          {
            sub_1C49B7E88();
            sub_1C457B1F0();
            v1131 = v376;
            sub_1C4417468();
            v377 = v1124;
            if (!v120)
            {
              goto LABEL_542;
            }
          }

          else
          {
            v377 = v1124;
          }

          v378 = *(v363 + 8 * v377);
          *(v363 + 8 * v377) = v375;

          v379 = *(v363 + 8 * v377);
          if ((v1102 & 1) == 0)
          {
            sub_1C440BE20(&v1114);
            v375 = v380();
            sub_1C44223D0();
            v377 = v1002;
            v381(v1002, v1092, v1139);
            sub_1C44807C8();
          }

          v382 = *(v379 + 56);
          sub_1C44042C4();
          v383 = swift_allocObject();
          v384 = v1090;
          v1087 = v383;
          *(v383 + 16) = sub_1C49B7E80;
          *(v383 + 24) = v384;
          sub_1C44289D0();
          sub_1C4418078();
          v385 = swift_isUniquelyReferenced_nonNull_native();
          sub_1C441ED78(v385, &v1126);
          *(v382 + 8 * v377) = v386;
          v387 = sub_1C440F860();
          v1124 = sub_1C445FAA8(v387, v388);
          v389 = *(v375 + 16);
          sub_1C4403428(v1124, v390);
          v393 = v391 + v392;
          if (__OFADD__(v391, v392))
          {
            goto LABEL_514;
          }

          sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
          sub_1C4433588();
          v394 = sub_1C4475B10(&v1126);
          v257 = v1140;
          if (v394)
          {
            v395 = sub_1C440F860();
            v1124 = sub_1C445FAA8(v395, v396);
            sub_1C4417468();
            if (!v120)
            {
              goto LABEL_542;
            }
          }

          sub_1C4418078();
          *(v382 + 8 * v393) = v257;

          v17 = *(v382 + 8 * v393);
          v397 = v1124;
          if ((v1102 & 1) == 0)
          {
            v257 = v1087;
            sub_1C49B7948(&v1140);
            sub_1C457DBD8(v397, 0x736567617373654DLL, 0xE800000000000000, v17);
          }

          *(*(v17 + 56) + 8 * v397) = v2;

          (*v1134)(v1092, v1139);
          v1094 = sub_1C49B7E84;
          v1096 = sub_1C49B7E7C;
          v15 = sub_1C49B7E7C;
          v1124 = sub_1C49B7E80;
          v1100 = sub_1C49B7B14;
          v1098 = sub_1C49B7AF4;
          v1097 = v1101;
          v1099 = v1091;
          v1101 = v1090;
          v1102 = v1089;
          v1095 = v1088;
          v1093 = v1087;
          continue;
        }
      }

      sub_1C440BE20(&v1115);
      v361 = v360();
      sub_1C441B464(v361);
      v362 = v348;
      v352 = v1137;
      goto LABEL_179;
    }

    break;
  }

  while (1)
  {
    v52 = v346 + 1;
    if (__OFADD__(v346, 1))
    {
      goto LABEL_489;
    }

    if (v52 >= v9)
    {
      break;
    }

    v1 = *&v343[8 * v52 + 64];
    ++v346;
    if (v1)
    {
      goto LABEL_166;
    }
  }

LABEL_195:
  v398 = sub_1C49BDC4C(v1119);

  v399 = *(v398 + 16);
  v1003 = v15;
  if (v399)
  {
    v400 = *(v398 + 64);
    v401 = *(v398 + 32);
    sub_1C43FD030();
    sub_1C4430684();
    sub_1C442E0AC();
    v52 = 0;
    while (1)
    {
      v402 = v52;
      if (!v1)
      {
        break;
      }

LABEL_201:
      v403 = sub_1C4440A14();
      v404 = v403;
      v2 = 0.0;
      if (v257)
      {
        v257 = v398;
        v405 = sub_1C457EB50(v403);
        if (v406)
        {
          v2 = *(*(v398 + 56) + 8 * v405);
        }
      }

      v1 &= v1 - 1;
      sub_1C4F01138();
      sub_1C43FC1CC();

      sub_1C441D2C4();
      if (v407)
      {
        sub_1C43FBDBC();
        v408 = swift_allocObject();
        *(v408 + 16) = v2;
        sub_1C4460864();
        sub_1C4418958();
        sub_1C4EF9DC8();
        sub_1C43FBDBC();
        v409 = swift_allocObject();
        sub_1C4414288(v409, &v1112);
        sub_1C44EB8A0();
        sub_1C43FBDBC();
        v410 = swift_allocObject();
        sub_1C4414288(v410, &v1111);
        v411 = sub_1C49B7E88();
        sub_1C44239FC(v411);
        sub_1C44042C4();
        v412 = swift_allocObject();
        *(v412 + 16) = sub_1C49B7B34;
        *(v412 + 24) = v408;
        v1090 = v408;
        v1078 = v412;
        sub_1C4425D60(v1119, &v1117);
        sub_1C4433D60();
        v413 = sub_1C457EB50(v404);
        sub_1C44365BC(v413, &v1144);
        LODWORD(v1131) = v414;
        sub_1C440E4D8();
        if (v330)
        {
          goto LABEL_515;
        }

        sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
        sub_1C440AE20();
        sub_1C4F02458();
        sub_1C444110C();
        if (v415)
        {
          sub_1C457EB50(v404);
          sub_1C4460AA4();
          if (!v120)
          {
            goto LABEL_542;
          }

          sub_1C44553D0();
        }

        else
        {
          v15 = v1119;
          v416 = v1131;
        }

        if ((v416 & 1) == 0)
        {
          sub_1C440BE20(&v1110);
          v418 = v417();
          sub_1C441B464(v418);
          v419 = v404;
          v408 = v1137;
        }

        v420 = *(v408 + 56);
        sub_1C44042C4();
        v421 = swift_allocObject();
        v422 = v1080;
        v1077 = v421;
        *(v421 + 16) = sub_1C49B7B54;
        *(v421 + 24) = v422;
        sub_1C4495254();
        v423 = *(v420 + 8 * v15);
        v424 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C441ED78(v424, &v1117);
        v1119 = v15;
        *(v420 + 8 * v15) = v425;
        sub_1C4401830();
        sub_1C457B1F0();
        v1131 = v426;
        v427 = *(v408 + 16);
        sub_1C4403428(v426, v428);
        if (__OFADD__(v429, v430))
        {
          goto LABEL_516;
        }

        sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
        sub_1C4433588();
        v431 = sub_1C4475B10(&v1117);
        v432 = v1140;
        if (v431)
        {
          sub_1C4401830();
          sub_1C457B1F0();
          v1131 = v433;
          sub_1C4417468();
          v434 = v1119;
          if (!v120)
          {
            goto LABEL_542;
          }
        }

        else
        {
          v434 = v1119;
        }

        v435 = *(v420 + 8 * v434);
        *(v420 + 8 * v434) = v432;

        v436 = *(v420 + 8 * v434);
        if ((v1092 & 1) == 0)
        {
          sub_1C440BE20(&v1109);
          v437();
          sub_1C44223D0();
          v434 = v1002;
          v438(v1002, v1081, v1139);
          sub_1C44807C8();
        }

        v439 = *(v436 + 56);
        sub_1C44042C4();
        v440 = swift_allocObject();
        v441 = v1079;
        v1076 = v440;
        *(v440 + 16) = sub_1C49B7E80;
        *(v440 + 24) = v441;
        sub_1C447F54C();
        sub_1C4418078();
        v442 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C441ED78(v442, &v1117);
        *(v439 + 8 * v434) = v443;
        v444 = sub_1C4405E18();
        v446 = sub_1C445FAA8(v444, v445);
        v447 = sub_1C44365BC(v446, &v1144);
        sub_1C4403428(v447, v448);
        v451 = v449 + v450;
        if (__OFADD__(v449, v450))
        {
          goto LABEL_517;
        }

        sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        sub_1C4433588();
        v452 = sub_1C4475B10(&v1117);
        v453 = v1140;
        if (v452)
        {
          v454 = sub_1C4405E18();
          v456 = sub_1C445FAA8(v454, v455);
          sub_1C4422B50(v456, &v1144);
          sub_1C4417468();
          if (!v120)
          {
            goto LABEL_542;
          }
        }

        sub_1C4418078();
        *(v439 + 8 * v451) = v453;

        v17 = *(v439 + 8 * v451);
        v257 = v1076;
        v15 = v1119;
        if ((v1092 & 1) == 0)
        {
          sub_1C440C5C8();
          sub_1C457DBD8(v15, 0x697261666153, 0xE600000000000000, v17);
        }

        *(*(v17 + 56) + 8 * v15) = v2;

        (*v1134)(v1081, v1139);
        v1083 = sub_1C49B7E84;
        v1085 = sub_1C49B7E7C;
        v1119 = sub_1C49B7E7C;
        v1092 = sub_1C49B7E80;
        v1089 = sub_1C49B7B54;
        v1087 = sub_1C49B7B34;
        v1086 = v1090;
        v1088 = v1080;
        v1090 = v1079;
        v1091 = v1078;
        v1084 = v1077;
        v1082 = v257;
      }

      else
      {
      }
    }

    while (1)
    {
      v52 = v402 + 1;
      if (__OFADD__(v402, 1))
      {
        goto LABEL_490;
      }

      if (v52 >= v9)
      {
        break;
      }

      v1 = *(v398 + 64 + 8 * v52);
      ++v402;
      if (v1)
      {
        goto LABEL_201;
      }
    }
  }

  else
  {

    sub_1C442E0AC();
  }

  v457 = sub_1C49B0B58(3, v1136);
  v458 = v457;
  v459 = v1132;
  if (*(v457 + 16))
  {
    v460 = *(v457 + 64);
    v461 = *(v457 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    v1069 = v462;
    sub_1C4441970();
    sub_1C447CDF0(v463);
    sub_1C4414CEC();
    v464 = 0;
    v2 = 0.0;
    for (i = v0; ; v0 = i)
    {
      v465 = v464;
      if (!v398)
      {
        break;
      }

      while (1)
      {
        v464 = v465;
        v466 = *(v458 + 48);
        sub_1C442BCE0(__clz(__rbit64(v398)));
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v257);
        v468 = v467;

        v469 = v1130;
        if (v468)
        {
          v1134 = v468;
        }

        else
        {
          sub_1C4418958();
          v1134 = sub_1C4F01108();
        }

        v470 = sub_1C4423C28();
        sub_1C4868354(v470);
        sub_1C447F9C0();
        sub_1C442A458();
        sub_1C4EF9DE8();
        v471 = v458;
        sub_1C465C40C(v257, v458);
        sub_1C442A718();
        if (v458)
        {
          break;
        }

        v472 = sub_1C44602E4();
        v473(v472);

        v465 = v464;
      }

      v474 = sub_1C442F6EC();
      v476 = v1138;
      v475 = v1139;
      v1062 = *(v1138 + 2);
      v1062(v1070, v469, v1139, v474);
      v477 = *(v476 + 80);
      sub_1C4441504();
      sub_1C4407384();
      v478 = swift_allocObject();
      v479 = *(v476 + 4);
      sub_1C444AD3C();
      v480();
      *&v468[v478] = v3;
      sub_1C445A998();
      sub_1C43FBDBC();
      v481 = swift_allocObject();
      sub_1C443F24C(v481, &v1097);
      sub_1C447E300();
      sub_1C43FBDBC();
      v482 = swift_allocObject();
      sub_1C443F24C(v482, &v1096);
      sub_1C449DAE4();
      sub_1C44042C4();
      v483 = swift_allocObject();
      *(v483 + 16) = sub_1C49B7B74;
      *(v483 + 24) = v478;
      v1078 = v478;
      v1064 = v483;
      v484 = sub_1C4401830();
      sub_1C4425D60(v484, &v1111);
      sub_1C4433D60();
      v485 = sub_1C457EB50(v1134);
      sub_1C44365BC(v485, &v1112);
      LODWORD(v1081) = v486;
      sub_1C4411FD4();
      if (v330)
      {
        goto LABEL_518;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v459 = v1132;
      v458 = v471;
      if (v487)
      {
        v488 = v1134;
        sub_1C457EB50(v1134);
        if ((v1081 & 1) != (v489 & 1))
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v488 = v1134;
        v475 = v1080;
        v490 = v1081;
      }

      if ((v490 & 1) == 0)
      {
        sub_1C440BE20(&v1095);
        v491();
        v492 = sub_1C44584E8();
        sub_1C457EB30(v492, v488, v493, v1137);
        v494 = v488;
        v257 = v1137;
      }

      v1134 = v488;
      v495 = *(v257 + 7);
      sub_1C44042C4();
      v496 = swift_allocObject();
      v497 = v1066;
      v1063 = v496;
      *(v496 + 16) = sub_1C49B7B8C;
      *(v496 + 24) = v497;
      sub_1C4488590();
      v498 = *(v495 + 8 * v475);
      v499 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v499, &v1111);
      v1080 = v475;
      *(v495 + 8 * v475) = v500;
      sub_1C457B1F0();
      v1081 = v501;
      sub_1C442CD84(v501, v502);
      if (v330)
      {
        goto LABEL_519;
      }

      v504 = v503;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      if (sub_1C444C2B8(&v1111))
      {
        sub_1C457B1F0();
        v1081 = v505;
        sub_1C440F418();
        if (!v120)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(&v1112);
      v506 = *(v495 + 8 * v504);
      if ((v504 & 1) == 0)
      {
        sub_1C440BE20(&v1094);
        v507();
        v508 = sub_1C43FDA80();
        (v1062)(v508, v1130, v1139);
        v509 = sub_1C4401830();
        sub_1C4435970(v509);
      }

      v510 = *(v506 + 56);
      sub_1C44042C4();
      v511 = swift_allocObject();
      v512 = v1065;
      *(v511 + 16) = sub_1C49B7E80;
      *(v511 + 24) = v512;
      sub_1C44627E4();
      v513 = v1081;
      v514 = *(v510 + 8 * v1081);
      v515 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v515, &v1109);
      *(v510 + 8 * v513) = v516;
      v517 = sub_1C441DD70();
      v519 = sub_1C445FAA8(v517, v518);
      sub_1C44365BC(v519, &v1112);
      LODWORD(v1079) = v520;
      sub_1C4411FD4();
      if (v330)
      {
        goto LABEL_520;
      }

      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      if (sub_1C444C2B8(&v1109))
      {
        v521 = sub_1C441DD70();
        v523 = sub_1C445FAA8(v521, v522);
        sub_1C4422B50(v523, &v1112);
        sub_1C4417468();
        if (!v120)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(v1113);
      v17 = *(v510 + 8 * v511);
      v257 = v511;
      v52 = v1080;
      if ((v1079 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v52, 0x736B6F6F42, 0xE500000000000000, v17);
      }

      *(*(v17 + 56) + 8 * v52) = v3;

      (*v1131)(v1130, v1139);
      v1072 = sub_1C49B7E84;
      v1074[0] = sub_1C49B7E7C;
      v1081 = sub_1C49B7E7C;
      v1080 = sub_1C49B7E80;
      v1077 = sub_1C49B7B8C;
      v1075 = sub_1C49B7B74;
      v1074[1] = v1078;
      v1076 = v1066;
      v1078 = v1065;
      v1079 = v1064;
      v1073 = v1063;
      v1071 = v511;
    }

    while (1)
    {
      if (__OFADD__(v465, 1))
      {
        goto LABEL_491;
      }

      if (v465 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C4414CEC();
  }

  v524 = sub_1C49B0B58(6, v1136);
  v525 = v524;
  if (*(v524 + 16))
  {
    v526 = *(v524 + 64);
    v527 = *(v524 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    v1058 = v528;
    sub_1C4441970();
    sub_1C447CDF0(v529);
    sub_1C443FD80();
    v530 = 0;
    v2 = 0.0;
    for (i = v0; ; v0 = i)
    {
      v531 = v530;
      if (!v398)
      {
        break;
      }

      while (1)
      {
        v530 = v531;
        v532 = *(v525 + 48);
        sub_1C442BCE0(__clz(__rbit64(v398)));
        v533 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868270(v533);
        if (!v534)
        {
          v534 = sub_1C4F01108();
        }

        v1134 = v534;
        v535 = sub_1C4423C28();
        sub_1C4868354(v535);
        sub_1C447F9C0();
        sub_1C442A458();
        sub_1C4EF9DE8();
        v536 = v525;
        sub_1C465C40C(v257, v525);
        sub_1C442A718();
        if (v525)
        {
          break;
        }

        v537 = sub_1C44602E4();
        v538(v537);

        v531 = v530;
      }

      v539 = sub_1C442F6EC();
      v541 = v1138;
      v540 = v1139;
      v1051 = *(v1138 + 2);
      (v1051)(v1059, v459, v1139, v539);
      v542 = *(v541 + 80);
      sub_1C4441504();
      sub_1C4407384();
      v543 = swift_allocObject();
      v544 = *(v541 + 4);
      sub_1C444AD3C();
      v545();
      *(v543 + v17) = v3;
      sub_1C4495D2C();
      sub_1C43FBDBC();
      v546 = swift_allocObject();
      sub_1C443F24C(v546, &v1086);
      sub_1C444343C();
      sub_1C43FBDBC();
      v547 = swift_allocObject();
      sub_1C443F24C(v547, &v1085);
      sub_1C4428EC4();
      sub_1C44042C4();
      v548 = swift_allocObject();
      *(v548 + 16) = sub_1C49B7BAC;
      *(v548 + 24) = v543;
      v1068 = v543;
      v1053 = v548;
      sub_1C4425D60(v1130, &v1100);
      sub_1C4433D60();
      v549 = sub_1C457EB50(v1134);
      sub_1C44365BC(v549, &v1101);
      LODWORD(v1130) = v550;
      sub_1C4411FD4();
      if (v330)
      {
        goto LABEL_521;
      }

      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v459 = v1132;
      v525 = v536;
      if (v551)
      {
        v552 = v1134;
        sub_1C457EB50(v1134);
        if ((v1130 & 1) != (v553 & 1))
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v552 = v1134;
        v540 = v1070;
        v554 = v1130;
      }

      if ((v554 & 1) == 0)
      {
        sub_1C440BE20(&v1084);
        v555();
        v556 = sub_1C44584E8();
        sub_1C457EB30(v556, v552, v557, v1137);
        v558 = v552;
        v257 = v1137;
      }

      v1134 = v552;
      v559 = *(v257 + 7);
      sub_1C44042C4();
      v560 = swift_allocObject();
      v561 = v1055;
      v1052 = v560;
      *(v560 + 16) = sub_1C49B7BC4;
      *(v560 + 24) = v561;
      sub_1C445C198();
      v562 = *(v559 + 8 * v540);
      v563 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v563, &v1100);
      v1070 = v540;
      *(v559 + 8 * v540) = v564;
      sub_1C457B1F0();
      v1130 = v565;
      sub_1C442CD84(v565, v566);
      if (v330)
      {
        goto LABEL_522;
      }

      v568 = v567;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      if (sub_1C444C2B8(&v1100))
      {
        sub_1C457B1F0();
        v1130 = v569;
        sub_1C440F418();
        if (!v120)
        {
          goto LABEL_542;
        }
      }

      sub_1C445BFA4(&v1101);
      v570 = *(v559 + 8 * v568);
      if ((v568 & 1) == 0)
      {
        sub_1C440BE20(&v1083);
        v571();
        v572 = sub_1C43FDA80();
        (v1051)(v572, v459, v1139);
        sub_1C4435970(v1130);
      }

      v573 = *(v570 + 56);
      sub_1C44042C4();
      v574 = swift_allocObject();
      v575 = v1054;
      *(v574 + 16) = sub_1C49B7E80;
      *(v574 + 24) = v575;
      sub_1C441E084();
      v576 = v1130;
      v577 = *(v573 + 8 * v1130);
      v578 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v578, &v1098);
      *(v573 + 8 * v576) = v579;
      v580 = sub_1C43FC61C();
      v582 = sub_1C445FAA8(v580, v581);
      sub_1C44365BC(v582, &v1101);
      LODWORD(v1069) = v583;
      sub_1C4411FD4();
      if (v330)
      {
        goto LABEL_523;
      }

      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v584 = sub_1C444C2B8(&v1098);
      v585 = v1140;
      if (v584)
      {
        v586 = sub_1C43FC61C();
        v588 = sub_1C445FAA8(v586, v587);
        sub_1C4422B50(v588, &v1101);
        sub_1C4417468();
        if (!v120)
        {
          goto LABEL_542;
        }
      }

      v589 = v574;
      v590 = v1130;
      v591 = *(v573 + 8 * v1130);
      *(v573 + 8 * v1130) = v585;

      v17 = *(v573 + 8 * v590);
      v257 = v589;
      v52 = v1070;
      if ((v1069 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v52, 0x6F6F626F69647541, 0xEA0000000000736BLL, v17);
      }

      *(*(v17 + 56) + 8 * v52) = v3;

      v592 = sub_1C44602E4();
      v593(v592);
      v1061 = sub_1C49B7E84;
      v1063 = sub_1C49B7E7C;
      v1130 = sub_1C49B7E7C;
      v1070 = sub_1C49B7E80;
      v1067 = sub_1C49B7BC4;
      v1065 = sub_1C49B7BAC;
      v1064 = v1068;
      v1066 = v1055;
      v1068 = v1054;
      v1069 = v1053;
      v1062 = v1052;
      v1060 = v257;
    }

    while (1)
    {
      if (__OFADD__(v531, 1))
      {
        goto LABEL_492;
      }

      if (v531 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C443FD80();
  }

  v594 = sub_1C49B0B58(1, v1136);
  sub_1C44606B0(v594);
  if (v595)
  {
    v596 = *(v459 + 64);
    v597 = *(v459 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v598);
    sub_1C441E4E4();
    v599 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v600 = v599;
      if (!v398)
      {
        break;
      }

      while (1)
      {
        v599 = v600;
        sub_1C44184C8();
        sub_1C442BCE0(v601);
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v257);
        v603 = v602;

        if (!v603)
        {
          sub_1C4418958();
          v603 = sub_1C4F01108();
        }

        v604 = sub_1C4423C28();
        sub_1C4868354(v604);
        sub_1C447F9C0();
        sub_1C442A458();
        v605 = v1129;
        sub_1C4EF9DE8();
        sub_1C465C40C(v257, v459);
        sub_1C4414618();
        if (v459)
        {
          break;
        }

        v606 = sub_1C44044D0();
        v607(v606);

        sub_1C443F698();
      }

      sub_1C4408C78();
      v608 = sub_1C441AF98(&v1078);
      v1039 = v609;
      (v609)(v608);
      sub_1C442EC00();
      sub_1C4407384();
      v610 = swift_allocObject();
      sub_1C44167FC(v610);
      sub_1C444AD3C();
      v611();
      *(v605 + v17) = v3;
      sub_1C449AECC();
      sub_1C43FBDBC();
      v612 = swift_allocObject();
      sub_1C443F24C(v612, &v1075);
      sub_1C442576C();
      sub_1C43FBDBC();
      v613 = swift_allocObject();
      sub_1C443F24C(v613, v1074);
      sub_1C440EE18();
      sub_1C44042C4();
      v614 = swift_allocObject();
      *(v614 + 16) = sub_1C49B7BE4;
      *(v614 + 24) = v605;
      v1056 = v605;
      v1041 = v614;
      sub_1C4425D60(v1059, &v1088);
      sub_1C4433D60();
      v1043 = v603;
      v615 = sub_1C457EB50(v603);
      sub_1C442CD84(v615, v616);
      if (v330)
      {
        goto LABEL_524;
      }

      v619 = v617;
      v620 = v618;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v621 = v1044;
      if (v622)
      {
        v623 = v1043;
        sub_1C457EB50(v1043);
        sub_1C4404D54();
        if (!v120)
        {
          goto LABEL_542;
        }

        v619 = v624;
        v257 = v1137;
      }

      else
      {
        v623 = v1043;
      }

      if ((v620 & 1) == 0)
      {
        sub_1C440BE20(&v1073);
        v626 = v625();
        sub_1C457EB30(v619, v623, v626, v1137);
        v627 = v623;
        v257 = v1137;
      }

      v628 = *(v257 + 7);
      sub_1C44042C4();
      v629 = swift_allocObject();
      *(v629 + 16) = sub_1C49B7BFC;
      *(v629 + 24) = v621;
      v1040 = v629;
      sub_1C4485D60();
      v630 = *(v628 + 8 * v619);
      LODWORD(v1059) = swift_isUniquelyReferenced_nonNull_native();
      v631 = *(v628 + 8 * v619);
      sub_1C44050EC();
      v632 = v619;
      *(v628 + 8 * v619) = v633;
      sub_1C457B1F0();
      sub_1C442CD84(v634, v635);
      if (v330)
      {
        goto LABEL_525;
      }

      v638 = v636;
      v639 = v637;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v640 = sub_1C444C2B8(&v1090);
      v641 = v1140;
      if (v640)
      {
        sub_1C457B1F0();
        sub_1C440F418();
        if (!v120)
        {
          goto LABEL_542;
        }

        v638 = v642;
      }

      v643 = *(v628 + 8 * v632);
      *(v628 + 8 * v632) = v641;

      v644 = *(v628 + 8 * v632);
      if ((v639 & 1) == 0)
      {
        sub_1C440BE20(&v1072);
        v645();
        sub_1C43FDA80();
        sub_1C4413F44();
        v1039();
        sub_1C4435970(v638);
      }

      v646 = *(v644 + 56);
      sub_1C44042C4();
      v647 = swift_allocObject();
      v648 = v1042;
      v1039 = v647;
      *(v647 + 16) = sub_1C49B7E80;
      *(v647 + 24) = v648;
      sub_1C44803C0();
      v649 = *(v646 + 8 * v638);
      LODWORD(v1059) = swift_isUniquelyReferenced_nonNull_native();
      v650 = *(v646 + 8 * v638);
      sub_1C44050EC();
      *(v646 + 8 * v638) = v651;
      v652 = sub_1C447F17C();
      v654 = sub_1C445FAA8(v652, v653);
      sub_1C442CD84(v654, v655);
      if (v330)
      {
        goto LABEL_526;
      }

      v658 = v656;
      v659 = v657;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v660 = sub_1C444C2B8(&v1090);
      v661 = v1140;
      if (v660)
      {
        v662 = sub_1C447F17C();
        sub_1C445FAA8(v662, v663);
        sub_1C440F418();
        v52 = v1044;
        if (!v120)
        {
          goto LABEL_542;
        }

        v658 = v664;
      }

      else
      {
        v52 = v1044;
      }

      v665 = *(v646 + 8 * v638);
      *(v646 + 8 * v638) = v661;

      v17 = *(v646 + 8 * v638);
      v257 = v1039;
      if ((v659 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v658, 0x7374736163646F50, 0xE800000000000000, v17);
      }

      *(*(v17 + 56) + 8 * v658) = v3;

      sub_1C44223D0();
      v666(v1129, v1139);
      v1049 = sub_1C49B7E84;
      v1051 = sub_1C49B7E7C;
      v1059 = sub_1C49B7E7C;
      v1058 = sub_1C49B7E80;
      v1055 = sub_1C49B7BFC;
      v1053 = sub_1C49B7BE4;
      v1052 = v1056;
      v1054 = v52;
      v1056 = v1042;
      v1057 = v1041;
      v1050 = v1040;
      v1048 = v257;
      sub_1C4423770();
    }

    while (1)
    {
      if (__OFADD__(v600, 1))
      {
        goto LABEL_493;
      }

      if (v600 + 1 >= v0)
      {
        break;
      }

      sub_1C448F174();
    }
  }

  else
  {

    sub_1C441E4E4();
  }

  v667 = sub_1C49B0B58(5, v1136);
  sub_1C44606B0(v667);
  if (v668)
  {
    v670 = v459 + 64;
    v669 = *(v459 + 64);
    v671 = *(v459 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v672);
    sub_1C4425208();
    v673 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v674 = v673;
      if (v398)
      {
        goto LABEL_337;
      }

      do
      {
        v673 = v674 + 1;
        if (__OFADD__(v674, 1))
        {
          goto LABEL_494;
        }

        if (v673 >= v0)
        {

          goto LABEL_370;
        }

        v398 = *(v670 + 8 * v673);
        ++v674;
      }

      while (!v398);
LABEL_341:
      sub_1C44184C8();
      sub_1C442BCE0(v675);
      swift_bridgeObjectRetain_n();
      sub_1C4868270(v257);
      v677 = v676;

      if (!v677)
      {
        sub_1C4418958();
        v677 = sub_1C4F01108();
      }

      v678 = sub_1C4423C28();
      sub_1C4868354(v678);
      sub_1C447F9C0();
      sub_1C442A458();
      v679 = v1128;
      sub_1C4EF9DE8();
      v680 = v459;
      sub_1C465C40C(v257, v459);
      sub_1C4414618();
      if (!v459)
      {
        break;
      }

      sub_1C4408C78();
      v683 = sub_1C441AF98(&v1068);
      v1029 = v684;
      (v684)(v683);
      sub_1C442EC00();
      sub_1C4407384();
      v685 = swift_allocObject();
      sub_1C44167FC(v685);
      sub_1C444AD3C();
      v686();
      *(v679 + v17) = v3;
      sub_1C4416AF8();
      sub_1C43FBDBC();
      v687 = swift_allocObject();
      sub_1C443F24C(v687, &v1065);
      sub_1C4424D04();
      sub_1C43FBDBC();
      v688 = swift_allocObject();
      sub_1C443F24C(v688, &v1064);
      sub_1C44C1270();
      sub_1C44042C4();
      v689 = swift_allocObject();
      *(v689 + 16) = sub_1C49B7C1C;
      *(v689 + 24) = v679;
      v1045 = v679;
      v1031 = v689;
      sub_1C4425D60(v1129, &v1077);
      sub_1C4433D60();
      v690 = v677;
      v1129 = sub_1C457EB50(v677);
      sub_1C442CD84(v1129, v691);
      if (v330)
      {
        goto LABEL_527;
      }

      v693 = v692;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v694 = v1033;
      if (v695)
      {
        sub_1C457EB50(v690);
        sub_1C446BF70();
        if (!v120)
        {
          goto LABEL_542;
        }

        sub_1C44553D0();
      }

      else
      {
        v680 = v1129;
      }

      if ((v693 & 1) == 0)
      {
        sub_1C440BE20(&v1063);
        v697 = v696();
        sub_1C441B464(v697);
        v698 = v690;
        v257 = v1137;
      }

      v1047 = v690;
      v699 = *(v257 + 7);
      sub_1C44042C4();
      v700 = swift_allocObject();
      *(v700 + 16) = sub_1C49B7C38;
      *(v700 + 24) = v694;
      v1030 = v700;
      sub_1C44A1EBC();
      v701 = *(v699 + 8 * v680);
      LODWORD(v1129) = swift_isUniquelyReferenced_nonNull_native();
      v702 = *(v699 + 8 * v680);
      sub_1C44050EC();
      v703 = v680;
      *(v699 + 8 * v680) = v704;
      sub_1C457B1F0();
      sub_1C442CD84(v705, v706);
      if (v330)
      {
        goto LABEL_528;
      }

      v709 = v707;
      v710 = v708;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v711 = sub_1C4F02458();
      v712 = v1140;
      if (v711)
      {
        sub_1C457B1F0();
        sub_1C4404D54();
        if (!v120)
        {
          goto LABEL_542;
        }

        v709 = v713;
      }

      v714 = *(v699 + 8 * v703);
      *(v699 + 8 * v703) = v712;

      v715 = *(v699 + 8 * v703);
      if ((v710 & 1) == 0)
      {
        sub_1C440BE20(&v1062);
        v716();
        sub_1C43FDA80();
        sub_1C4413F44();
        v1029();
        sub_1C4435970(v709);
      }

      v52 = *(v715 + 56);
      sub_1C44042C4();
      v717 = swift_allocObject();
      v718 = v1032;
      v1029 = v717;
      *(v717 + 16) = sub_1C49B7E80;
      *(v717 + 24) = v718;
      sub_1C4424988();
      v719 = *(v52 + 8 * v709);
      LODWORD(v1046) = swift_isUniquelyReferenced_nonNull_native();
      v720 = *(v52 + 8 * v709);
      sub_1C44050EC();
      *(v52 + 8 * v709) = v721;
      v722 = sub_1C445075C();
      v1129 = v723;
      sub_1C445FAA8(v722, v723);
      sub_1C43FC438();
      if (__OFADD__(v726, v727))
      {
        goto LABEL_529;
      }

      v670 = v724;
      v728 = v725;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v729 = sub_1C4F02458();
      v730 = v1140;
      if (v729)
      {
        v731 = sub_1C445075C();
        sub_1C445FAA8(v731, v1129);
        sub_1C4404D54();
        if (!v120)
        {
          goto LABEL_542;
        }

        v670 = v732;
      }

      v733 = *(v52 + 8 * v709);
      *(v52 + 8 * v709) = v730;

      v17 = *(v52 + 8 * v709);
      v257 = v1029;
      if ((v728 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v670, 0x69616D6563696F56, v1129, v17);
      }

      *(*(v17 + 56) + 8 * v670) = v3;

      sub_1C44223D0();
      v734(v1128, v1139);
      v1038 = sub_1C49B7E84;
      v1040 = sub_1C49B7E7C;
      v1129 = sub_1C49B7E7C;
      v1047 = sub_1C49B7E80;
      v1044 = sub_1C49B7C38;
      v1042 = sub_1C49B7C1C;
      v1041 = v1045;
      v1043 = v1033;
      v1045 = v1032;
      v1046 = v1031;
      v1039 = v1030;
      v1037 = v257;
      sub_1C4423770();
    }

    v681 = sub_1C44044D0();
    v682(v681);

    sub_1C4423770();
LABEL_337:
    v673 = v674;
    goto LABEL_341;
  }

  sub_1C4425208();
LABEL_370:
  v735 = sub_1C49B0B58(4, v1136);
  sub_1C44606B0(v735);
  if (v736)
  {
    v737 = *(v459 + 64);
    v738 = *(v459 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v739);
    sub_1C4410448();
    v740 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v741 = v740;
      if (!v398)
      {
        break;
      }

      while (1)
      {
        v740 = v741;
        sub_1C44184C8();
        sub_1C442BCE0(v742);
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v257);
        v744 = v743;

        if (!v744)
        {
          sub_1C4418958();
          v744 = sub_1C4F01108();
        }

        v745 = sub_1C4423C28();
        sub_1C4868354(v745);
        sub_1C447F9C0();
        sub_1C442A458();
        v746 = v1127;
        sub_1C4EF9DE8();
        sub_1C465C40C(v257, v459);
        sub_1C4414618();
        if (v459)
        {
          break;
        }

        v747 = sub_1C44044D0();
        v748(v747);

        sub_1C443F698();
      }

      sub_1C4408C78();
      v749 = sub_1C441AF98(&v1057);
      v1017 = v750;
      (v750)(v749);
      sub_1C442EC00();
      sub_1C4407384();
      v751 = swift_allocObject();
      sub_1C44167FC(v751);
      sub_1C444AD3C();
      v752();
      *(v746 + v17) = v3;
      sub_1C4441764();
      sub_1C43FBDBC();
      v753 = swift_allocObject();
      sub_1C443F24C(v753, &v1054);
      sub_1C49B7E94();
      sub_1C43FBDBC();
      v754 = swift_allocObject();
      sub_1C443F24C(v754, &v1053);
      sub_1C4466D24();
      sub_1C44042C4();
      v755 = swift_allocObject();
      *(v755 + 16) = sub_1C49B7C60;
      *(v755 + 24) = v746;
      v1034 = v746;
      v1020 = v755;
      sub_1C4425D60(v1128, &v1067);
      sub_1C4433D60();
      v1128 = sub_1C457EB50(v744);
      sub_1C442CD84(v1128, v756);
      if (v330)
      {
        goto LABEL_530;
      }

      v758 = v757;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v1019 = v744;
      if (v759)
      {
        sub_1C457EB50(v744);
        sub_1C4404D54();
        v760 = v1022;
        if (!v120)
        {
          goto LABEL_542;
        }

        sub_1C440EFEC();
      }

      else
      {
        v760 = v1022;
        v52 = v1128;
      }

      if ((v758 & 1) == 0)
      {
        sub_1C440BE20(&v1052);
        v761();
        v762 = sub_1C44584E8();
        v763 = v1019;
        sub_1C457EB30(v762, v1019, v764, v1137);
        v765 = v763;
        v257 = v1137;
      }

      v766 = *(v257 + 7);
      sub_1C44042C4();
      v767 = swift_allocObject();
      *(v767 + 16) = sub_1C49B7C78;
      *(v767 + 24) = v760;
      v1018 = v767;
      sub_1C4429078();
      v768 = *(v766 + 8 * v52);
      swift_isUniquelyReferenced_nonNull_native();
      v769 = *(v766 + 8 * v52);
      sub_1C44050EC();
      *(v766 + 8 * v52) = v770;
      sub_1C457B1F0();
      v1128 = v771;
      sub_1C442CD84(v771, v772);
      if (v330)
      {
        goto LABEL_531;
      }

      v774 = v773;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v775 = sub_1C4F02458();
      v776 = v1140;
      if (v775)
      {
        sub_1C457B1F0();
        v1128 = v777;
        sub_1C446BF70();
        if (!v120)
        {
          goto LABEL_542;
        }
      }

      v778 = *(v766 + 8 * v52);
      *(v766 + 8 * v52) = v776;

      v779 = *(v766 + 8 * v52);
      if ((v774 & 1) == 0)
      {
        sub_1C440BE20(&v1050);
        v780();
        sub_1C43FDA80();
        sub_1C4413F44();
        v1017();
        sub_1C4435970(v1128);
      }

      v781 = *(v779 + 56);
      sub_1C44042C4();
      v782 = swift_allocObject();
      v783 = v1021;
      v784 = v782;
      *(v782 + 16) = sub_1C49B7E80;
      *(v782 + 24) = v783;
      sub_1C44BBC8C();
      v785 = v1128;
      v786 = *(v781 + 8 * v1128);
      v787 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C43FF314(v787, &v1068);
      *(v781 + 8 * v785) = v788;
      v789 = sub_1C445FDF0();
      v791 = sub_1C445FAA8(v789, v790);
      sub_1C442CD84(v791, v792);
      if (v330)
      {
        goto LABEL_532;
      }

      v795 = v793;
      v796 = v794;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v797 = sub_1C444C2B8(&v1068);
      v257 = v1140;
      if (v797)
      {
        v798 = sub_1C445FDF0();
        sub_1C445FAA8(v798, v799);
        sub_1C4404D54();
        if (!v120)
        {
          goto LABEL_542;
        }

        v52 = v800;
      }

      else
      {
        v52 = v795;
      }

      v801 = v784;
      v802 = v1128;
      v803 = *(v781 + 8 * v1128);
      *(v781 + 8 * v1128) = v257;

      v17 = *(v781 + 8 * v802);
      if ((v796 & 1) == 0)
      {
        v257 = v801;
        sub_1C49B7948(&v1140);
        sub_1C457DBD8(v52, 0x636973754DLL, 0xE500000000000000, v17);
      }

      *(*(v17 + 56) + 8 * v52) = v3;

      sub_1C44223D0();
      v804(v1127, v1139);
      v1027 = sub_1C49B7E84;
      v1029 = sub_1C49B7E7C;
      v1128 = sub_1C49B7E7C;
      v1036 = sub_1C49B7E80;
      v1033 = sub_1C49B7C78;
      v1031 = sub_1C49B7C60;
      v1030 = v1034;
      v1032 = v1022;
      v1034 = v1021;
      v1035 = v1020;
      v1028 = v1018;
      v1026 = v801;
      sub_1C4423770();
    }

    while (!__OFADD__(v741, 1))
    {
      if (v741 + 1 >= v0)
      {

        goto LABEL_406;
      }

      sub_1C448F174();
    }

LABEL_495:
    __break(1u);
LABEL_496:
    __break(1u);
LABEL_497:
    __break(1u);
LABEL_498:
    __break(1u);
LABEL_499:
    __break(1u);
LABEL_500:
    __break(1u);
    goto LABEL_501;
  }

  sub_1C4410448();
LABEL_406:
  v805 = sub_1C49B0B58(2, v1136);
  sub_1C44606B0(v805);
  if (v806)
  {
    v808 = v459 + 64;
    v807 = *(v459 + 64);
    v809 = *(v459 + 32);
    sub_1C43FD030();
    sub_1C44007A8();
    sub_1C4434630();
    sub_1C4441970();
    sub_1C442F280(v810);
    sub_1C44161C0();
    v811 = 0;
    sub_1C440CCB4();
    while (1)
    {
      v812 = v811;
      if (!v398)
      {
        goto LABEL_410;
      }

      while (1)
      {
        v811 = v812;
        sub_1C44184C8();
        sub_1C43FE6F0(v813);
        sub_1C4868270(v808);
        v815 = v814;

        if (!v815)
        {
          sub_1C4418958();
          v815 = sub_1C4F01108();
        }

        v398 &= v398 - 1;
        v816 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868354(v816);
        sub_1C43FC1CC();

        v817 = v1126;
        sub_1C4EF9DE8();
        v818 = v459;
        v819 = COERCE_DOUBLE(sub_1C465C40C(v808, v459));
        v821 = v820;
        v459 = *(v808 + 16);

        if (v459)
        {
          break;
        }

        v822 = sub_1C44044D0();
        v823(v822);

        sub_1C443F698();
        if (!v398)
        {
LABEL_410:
          while (!__OFADD__(v812, 1))
          {
            if (v812 + 1 >= v0)
            {

              goto LABEL_447;
            }

            sub_1C448F174();
          }

          goto LABEL_496;
        }
      }

      if (v821)
      {
        v824 = v2;
      }

      else
      {
        v824 = v819;
      }

      v826 = v1138;
      v825 = v1139;
      v996 = *(v1138 + 2);
      (v996)(v1014, v817, v1139);
      v827 = (*(v826 + 80) + 16) & ~*(v826 + 80);
      sub_1C446244C();
      v828 = swift_allocObject();
      v826[4](v828 + v827, v1014, v825);
      *(v828 + *&v819) = v824;
      sub_1C4488420();
      sub_1C43FBDBC();
      v829 = swift_allocObject();
      sub_1C443F24C(v829, &v1031);
      sub_1C445874C();
      sub_1C43FBDBC();
      v830 = swift_allocObject();
      sub_1C443F24C(v830, &v1030);
      sub_1C44B8FBC();
      sub_1C44042C4();
      v831 = swift_allocObject();
      *(v831 + 16) = sub_1C49B7C98;
      *(v831 + 24) = v828;
      v1023 = v828;
      v998 = v831;
      sub_1C4425D60(v1127, &v1056);
      sub_1C4433D60();
      v832 = v815;
      v1127 = sub_1C457EB50(v815);
      sub_1C43FC438();
      if (__OFADD__(v834, v835))
      {
        goto LABEL_533;
      }

      v836 = v833;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      v459 = v818;
      if (v837)
      {
        sub_1C457EB50(v832);
        sub_1C43FED0C();
        if (!v120)
        {
          goto LABEL_542;
        }

        v839 = v838;
        v819 = *&v1137;
      }

      else
      {
        v839 = v1127;
      }

      if ((v836 & 1) == 0)
      {
        sub_1C440BE20(&v1029);
        v841 = v840();
        sub_1C457EB30(v839, v832, v841, v1137);
        v842 = v832;
        v819 = *&v1137;
      }

      v1025 = v832;
      v843 = *(*&v819 + 56);
      sub_1C44042C4();
      v844 = swift_allocObject();
      v997 = v844;
      v845 = v1000;
      *(v844 + 2) = sub_1C49B7CB0;
      *(v844 + 3) = v845;
      sub_1C443E388();
      v846 = *(v843 + 8 * v839);
      LODWORD(v1127) = swift_isUniquelyReferenced_nonNull_native();
      v847 = *(v843 + 8 * v839);
      sub_1C44050EC();
      v848 = v839;
      *(v843 + 8 * v839) = v849;
      sub_1C457B1F0();
      sub_1C43FC438();
      if (__OFADD__(v852, v853))
      {
        break;
      }

      v854 = v850;
      v855 = v851;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C4433588();
      v856 = sub_1C4F02458();
      v857 = v1140;
      if (v856)
      {
        sub_1C457B1F0();
        sub_1C4404D54();
        if (!v120)
        {
          goto LABEL_542;
        }

        v854 = v858;
      }

      v859 = *(v843 + 8 * v848);
      *(v843 + 8 * v848) = v857;

      v860 = *(v843 + 8 * v848);
      if ((v855 & 1) == 0)
      {
        sub_1C440BE20(&v1028);
        v862 = v861();
        sub_1C4401E34();
        sub_1C4413F44();
        v996();
        sub_1C457E054(v854, v843, v862, v860);
      }

      v863 = *(v860 + 56);
      sub_1C44042C4();
      v864 = swift_allocObject();
      v865 = v999;
      v996 = v864;
      *(v864 + 16) = sub_1C49B7E80;
      *(v864 + 24) = v865;
      sub_1C44A1C38();
      v866 = *(v863 + 8 * v854);
      LODWORD(v1127) = swift_isUniquelyReferenced_nonNull_native();
      v867 = *(v863 + 8 * v854);
      sub_1C44050EC();
      *(v863 + 8 * v854) = v868;
      v869 = sub_1C444B1D4();
      sub_1C445FAA8(v869, v870);
      sub_1C43FC438();
      if (__OFADD__(v873, v874))
      {
        goto LABEL_535;
      }

      v875 = v871;
      v876 = v872;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v877 = sub_1C4F02458();
      v878 = v1140;
      if (v877)
      {
        v879 = sub_1C444B1D4();
        sub_1C445FAA8(v879, v880);
        sub_1C43FED0C();
        v808 = v1126;
        if (!v120)
        {
          goto LABEL_542;
        }

        v875 = v881;
      }

      else
      {
        v808 = v1126;
      }

      v882 = *(v863 + 8 * v854);
      *(v863 + 8 * v854) = v878;

      v883 = *(v863 + 8 * v854);
      v884 = v996;
      if ((v876 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v875, 0x6F69647541205654, 0xE800000000000000, v883);
      }

      *(*(v883 + 56) + 8 * v875) = v824;

      sub_1C44223D0();
      v885(v808, v1139);
      v1016 = sub_1C49B7E84;
      v1018 = sub_1C49B7E7C;
      v1127 = sub_1C49B7E7C;
      v1025 = sub_1C49B7E80;
      v1022 = sub_1C49B7CB0;
      v1020 = sub_1C49B7C98;
      v1019 = v1023;
      v1021 = v1000;
      v1023 = v999;
      v1024 = v998;
      v1017 = v997;
      v1015 = v884;
      sub_1C4423770();
    }

LABEL_534:
    __break(1u);
LABEL_535:
    __break(1u);
LABEL_536:
    __break(1u);
    goto LABEL_537;
  }

  sub_1C44161C0();
LABEL_447:
  v886 = sub_1C49B0B58(7, v1136);

  if (*(v886 + 2))
  {
    v888 = (v886 + 64);
    v887 = *(v886 + 8);
    v889 = v886[32];
    sub_1C43FD030();
    v892 = v891 & v890;
    v894 = (v893 + 63) >> 6;
    v993 = v895 + 16;
    v992 = v896 + 7;
    v991 = v895 + 32;
    i = v895 + 8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v897 = 0;
    v898 = 0;
    v899 = 0;
    v900 = 0;
    v1000 = 0;
    v901 = 0;
    v1001 = 0;
    v902 = 0;
    v999 = 0;
    v998 = 0;
    v997 = 0;
    v996 = 0;
    v903 = 0;
    v1131 = (v886 + 64);
    v1132 = v894;
    v1134 = v886;
    while (1)
    {
      v904 = v903;
      v1135 = v902;
      v1126 = v901;
      v1014 = v897;
      v1013 = v898;
      if (!v892)
      {
        goto LABEL_451;
      }

      while (1)
      {
        v903 = v904;
LABEL_454:
        v905 = *(*(v886 + 6) + ((v903 << 9) | (8 * __clz(__rbit64(v892)))));
        swift_bridgeObjectRetain_n();
        sub_1C4868270(v905);
        v907 = v906;

        if (v907)
        {
          v1136 = v907;
        }

        else
        {
          sub_1C4418958();
          v1136 = sub_1C4F01108();
        }

        v892 &= v892 - 1;
        v908 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4868354(v908);

        v909 = v1125;
        sub_1C4EF9DE8();
        v910 = COERCE_DOUBLE(sub_1C465C40C(v905, v886));
        v912 = v911;
        v913 = *(v905 + 16);

        if (v913)
        {
          break;
        }

        sub_1C44223D0();
        v914(v909, v1139);

        v904 = v903;
        v886 = v1134;
        v888 = v1131;
        v894 = v1132;
        if (!v892)
        {
LABEL_451:
          while (1)
          {
            v903 = v904 + 1;
            if (__OFADD__(v904, 1))
            {
              goto LABEL_497;
            }

            if (v903 >= v894)
            {
              v1138 = v900;
              v1139 = v899;

              v981 = v997;
              v982 = v999;
              v983 = v1001;
              v984 = v1000;
              goto LABEL_486;
            }

            v892 = *(v888 + 8 * v903);
            ++v904;
            if (v892)
            {
              goto LABEL_454;
            }
          }
        }
      }

      if (v912)
      {
        v915 = 0.0;
      }

      else
      {
        v915 = v910;
      }

      v917 = v1138;
      v916 = v1139;
      v989 = *(v1138 + 2);
      (v989)(v995, v909, v1139);
      sub_1C442EC00();
      sub_1C4407384();
      v918 = swift_allocObject();
      v917[4](v918 + v913, v995, v916);
      *(v918 + *&v910) = v915;
      sub_1C44263F8();
      sub_1C43FBDBC();
      v919 = swift_allocObject();
      sub_1C443F24C(v919, &v1046);
      sub_1C44239FC(v899);
      sub_1C43FBDBC();
      v920 = swift_allocObject();
      sub_1C443F24C(v920, &v1045);
      sub_1C44239FC(v1000);
      sub_1C44042C4();
      v921 = swift_allocObject();
      *(v921 + 16) = sub_1C49B7D5C;
      *(v921 + 24) = v918;
      v990 = v918;
      v1126 = v921;
      sub_1C44239FC(v1001);
      v922 = v1137;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4433D60();
      v923 = v1136;
      sub_1C457EB50(v1136);
      sub_1C43FC438();
      if (__OFADD__(v926, v927))
      {
        goto LABEL_536;
      }

      v928 = v924;
      v929 = v925;
      sub_1C456902C(&qword_1EC0C0B98, &qword_1C4F40138);
      sub_1C440AE20();
      sub_1C4F02458();
      sub_1C444110C();
      if (v930)
      {
        v931 = sub_1C457EB50(v923);
        if ((v929 & 1) != (v932 & 1))
        {
          goto LABEL_542;
        }

        v928 = v931;
        v922 = v1137;
      }

      if ((v929 & 1) == 0)
      {
        v933 = *(v1126 + 24);
        v934 = (*(v1126 + 16))();
        sub_1C457EB30(v928, v923, v934, v1137);
        v935 = v923;
        v922 = v1137;
      }

      v936 = *(v922 + 56);
      sub_1C44042C4();
      v937 = swift_allocObject();
      v938 = v1014;
      v1135 = v937;
      *(v937 + 16) = sub_1C49B7E14;
      *(v937 + 24) = v938;
      sub_1C44239FC(v999);
      v939 = *(v936 + 8 * v928);
      swift_isUniquelyReferenced_nonNull_native();
      v1140 = *(v936 + 8 * v928);
      *(v936 + 8 * v928) = 0x8000000000000000;
      sub_1C457B1F0();
      sub_1C43FC438();
      if (__OFADD__(v942, v943))
      {
        break;
      }

      v944 = v940;
      v945 = v941;
      sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
      sub_1C440AE20();
      v946 = sub_1C4F02458();
      v947 = v1140;
      if (v946)
      {
        sub_1C457B1F0();
        sub_1C44331E4();
        if (!v120)
        {
          goto LABEL_542;
        }

        v944 = v948;
      }

      v949 = *(v936 + 8 * v928);
      *(v936 + 8 * v928) = v947;

      v951 = *(v936 + 8 * v928);
      v952 = v944;
      if ((v945 & 1) == 0)
      {
        v953 = *(v1135 + 24);
        v954 = (*(v1135 + 16))(v950);
        v955 = v1002;
        (v989)(v1002, v1125, v1139);
        v956 = v955;
        v944 = v952;
        sub_1C457E054(v952, v956, v954, v951);
      }

      v957 = *(v951 + 56);
      sub_1C44042C4();
      v958 = swift_allocObject();
      v959 = v1013;
      v989 = v958;
      *(v958 + 16) = sub_1C49B7E80;
      *(v958 + 24) = v959;
      sub_1C44239FC(v997);
      v960 = *(v957 + 8 * v944);
      swift_isUniquelyReferenced_nonNull_native();
      v961 = *(v957 + 8 * v944);
      sub_1C44050EC();
      *(v957 + 8 * v944) = v962;
      v963 = sub_1C4410F14();
      sub_1C445FAA8(v963, v964);
      sub_1C43FC438();
      if (__OFADD__(v967, v968))
      {
        goto LABEL_538;
      }

      v969 = v965;
      v970 = v966;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C4433588();
      v971 = sub_1C4F02458();
      v972 = v1140;
      if (v971)
      {
        v973 = sub_1C4410F14();
        sub_1C445FAA8(v973, v974);
        sub_1C44331E4();
        if (!v120)
        {
          goto LABEL_542;
        }

        v969 = v975;
      }

      v976 = v1013;
      v977 = *(v957 + 8 * v952);
      *(v957 + 8 * v952) = v972;

      v978 = *(v957 + 8 * v952);
      v979 = v989;
      if ((v970 & 1) == 0)
      {
        sub_1C440C5C8();
        sub_1C457DBD8(v969, 0x6974627553205654, 0xEC00000073656C74, v978);
      }

      *(*(v978 + 56) + 8 * v969) = v915;

      sub_1C44223D0();
      v980(v1125, v1139);
      v997 = sub_1C49B7E84;
      v999 = sub_1C49B7E7C;
      v1001 = sub_1C49B7E7C;
      v1000 = sub_1C49B7E80;
      v899 = sub_1C49B7E14;
      v897 = sub_1C49B7D5C;
      v898 = v990;
      v900 = v1014;
      v901 = v976;
      v902 = v1126;
      v998 = v1135;
      v996 = v979;
      v886 = v1134;
      v888 = v1131;
      v894 = v1132;
    }

LABEL_537:
    __break(1u);
LABEL_538:
    __break(1u);
LABEL_539:
    __break(1u);
LABEL_540:
    __break(1u);
LABEL_541:
    __break(1u);
    goto LABEL_542;
  }

  v1014 = 0;
  v1013 = 0;
  v1138 = 0;
  v1139 = 0;
  v984 = 0;
  v1126 = 0;
  v983 = 0;
  v982 = 0;
  v981 = 0;
LABEL_486:
  v985 = sub_1C49B19A4(v1137);
  sub_1C441D710();
  sub_1C44754B4();
  sub_1C442F938();
  sub_1C44239FC(v1118);
  sub_1C446BC90();
  sub_1C44493E8();
  sub_1C44239FC(v1008);
  sub_1C44239FC(v1009);
  sub_1C44239FC(v1010);
  sub_1C44239FC(v1011);
  sub_1C44239FC(v1004);
  sub_1C44239FC(v1005);
  sub_1C44239FC(v1006);
  sub_1C443EF40();
  sub_1C4471CE0();
  sub_1C44AE090();
  sub_1C44239FC(v1122);
  sub_1C445ABE8();
  sub_1C443E1C0();
  sub_1C44A17EC();
  sub_1C445BDB4();
  sub_1C44239FC(v1124);
  sub_1C44239FC(v1003);
  sub_1C4424754();
  sub_1C44289D0();
  sub_1C4460864();
  sub_1C44EB8A0();
  v986 = sub_1C49B7E88();
  sub_1C44239FC(v986);
  sub_1C44239FC(v1119);
  sub_1C4495254();
  sub_1C447F54C();
  sub_1C445A998();
  sub_1C447E300();
  sub_1C449DAE4();
  v987 = sub_1C4401830();
  sub_1C44239FC(v987);
  sub_1C4488590();
  sub_1C44627E4();
  sub_1C4495D2C();
  sub_1C444343C();
  sub_1C4428EC4();
  sub_1C44239FC(v1130);
  sub_1C445C198();
  sub_1C441E084();
  sub_1C449AECC();
  sub_1C442576C();
  sub_1C440EE18();
  sub_1C44239FC(v1059);
  sub_1C4485D60();
  sub_1C44803C0();
  sub_1C4416AF8();
  sub_1C4424D04();
  sub_1C44C1270();
  sub_1C44239FC(v1129);
  sub_1C44A1EBC();
  sub_1C4424988();
  sub_1C4441764();
  sub_1C49B7E94();
  sub_1C4466D24();
  sub_1C44239FC(v1128);
  sub_1C4429078();
  sub_1C44BBC8C();
  sub_1C4488420();
  sub_1C445874C();
  sub_1C44B8FBC();
  sub_1C44239FC(v1127);
  sub_1C443E388();
  sub_1C44A1C38();
  sub_1C44263F8();
  sub_1C44239FC(v1139);
  sub_1C44239FC(v984);
  sub_1C44239FC(v983);
  sub_1C44239FC(v982);
  sub_1C44239FC(v981);
  return v985;
}

uint64_t sub_1C49B6EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B6F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B6F7C(uint64_t a1)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  v4 = sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188(v4);
  v6 = *(v5 + 72);
  sub_1C4462014();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  v8 = v7 + v2;
  v9 = *(v1 + 56);
  v10 = sub_1C4EF9DD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 16))(v8, a1, v10);
  *(v8 + v9) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v12, v13);
  sub_1C4451358();

  return sub_1C4F00F28();
}

uint64_t sub_1C49B70E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  v9 = sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  v15 = v14 + v13;
  v16 = *(v4 + 56);
  v17 = sub_1C4EF9DD8();
  sub_1C43FBCE0(v17);
  (*(v18 + 16))(v15, a1, v17);
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(v15 + v16) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v20, v21);
  sub_1C4451358();
  return sub_1C4F00F28();
}

uint64_t sub_1C49B729C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  v8 = sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188(v8);
  v10 = *(v9 + 72);
  sub_1C4462014();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0D130;
  v12 = v11 + v4;
  v13 = *(v3 + 56);
  sub_1C4418958();
  sub_1C4EF9DC8();
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(v12 + v13) = sub_1C4F00F28();
  sub_1C4EF9DD8();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v15, v16);
  return sub_1C4F00F28();
}

uint64_t sub_1C49B7424(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  return sub_1C4F00F28();
}

uint64_t sub_1C49B74D4(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1C4F01728();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C49B7560(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1C4461BB8(0, a2, a3);
      result = sub_1C4F01728();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1C49B75BC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C49B7798(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1C49B7634(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C49B75BC(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C49B7798(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1C49B7798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = sub_1C4F01138();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_17:
        sub_1C4586FE4(a1, a2, v4, a3);
        return;
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
      goto LABEL_17;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C49B78F8()
{
  v1 = *(v0 + 16);
  v2 = sub_1C442FF14();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7918@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B7950(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49B79C4()
{
  v1 = sub_1C4EF9DD8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C49B7ACC()
{
  v1 = *(v0 + 16);
  v2 = sub_1C44351D4();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7AF4()
{
  v1 = *(v0 + 16);
  v2 = sub_1C440F860();
  return sub_1C49B729C(v2, v3, v4);
}

uint64_t sub_1C49B7B14()
{
  v1 = *(v0 + 16);
  v2 = sub_1C440F860();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7B34()
{
  v1 = *(v0 + 16);
  v2 = sub_1C4405E18();
  return sub_1C49B729C(v2, v3, v4);
}

uint64_t sub_1C49B7B54()
{
  v1 = *(v0 + 16);
  v2 = sub_1C4405E18();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7B8C()
{
  v1 = *(v0 + 16);
  v2 = sub_1C441DD70();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7BC4()
{
  v1 = *(v0 + 16);
  v2 = sub_1C43FC61C();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7BFC()
{
  v1 = *(v0 + 16);
  v2 = sub_1C447F17C();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7C38()
{
  v1 = *(v0 + 16);
  v2 = sub_1C445075C();
  return sub_1C49B7424(v2, 0xE90000000000006CLL, v3);
}

uint64_t sub_1C49B7C78()
{
  v1 = *(v0 + 16);
  v2 = sub_1C445FDF0();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7CB0()
{
  v1 = *(v0 + 16);
  v2 = sub_1C444B1D4();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7CD0()
{
  v1 = sub_1C4EF9DD8();
  sub_1C43FBCE0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C49B7D74(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1C4EF9DD8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1C49B70E4(v2 + v6, a1, a2, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C49B7E14()
{
  v1 = *(v0 + 16);
  v2 = sub_1C4410F14();
  return sub_1C49B7424(v2, v3, v4);
}

uint64_t sub_1C49B7E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C49B7E94()
{
  v2 = *(v0 - 1016);
  v3 = *(v0 - 1024);

  return sub_1C44239FC(v2);
}

void sub_1C49B7EB4(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B030(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C49BAAA0(v6);
  *a1 = v3;
}

uint64_t sub_1C49B7F68()
{
  result = sub_1C4F00F28();
  qword_1EC1525E0 = result;
  return result;
}

uint64_t sub_1C49B7FA8(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v202 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v202 - v12;
  v14 = sub_1C4EF9DD8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v234 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v232 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v233 = v24;
  v239 = sub_1C456902C(&qword_1EC0C0BB8, &qword_1C4F40150);
  v25 = sub_1C43FBCE0(v239);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v237 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v236 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v238 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v235 = v34;
  type metadata accessor for NLLanguage(0);
  sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  sub_1C49B7E34(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
  result = sub_1C4F00F28();
  if (!*(a1 + 16))
  {
    return result;
  }

  v241 = result;
  v229 = v17;
  v230 = v14;
  v220 = v13;
  v221 = v10;
  v36 = a1 + 64;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(a1 + 64);
  v40 = (v37 + 63) >> 6;
  v41 = (v17 + 32);
  v227 = v17 + 16;
  v228 = (v17 + 8);
  v224 = 0x80000001C4FABB40;
  v225 = 0x80000001C4FABB20;
  v223 = 0x80000001C4FABB60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = 0;
  v231 = 0;
  v222 = xmmword_1C4F0F830;
  v226 = xmmword_1C4F0D130;
  while (1)
  {
    do
    {
LABEL_6:
      if (!v39)
      {
        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v44 >= v40)
          {

            return v241;
          }

          v43 = *(v36 + 8 * v44);
          ++v42;
          if (v43)
          {
            v42 = v44;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v43 = v39;
LABEL_12:
      v39 = (v43 - 1) & v43;
    }

    while (!*(a1 + 16));
    v242 = (v43 - 1) & v43;
    v243 = *(*(a1 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v43)))));
    v45 = sub_1C457EB50(v243);
    if ((v46 & 1) == 0)
    {
      v39 = v242;
      goto LABEL_19;
    }

    v47 = 0;
    v48 = *(*(a1 + 56) + 8 * v45);
    v49 = (v48 + 64);
    v50 = 1 << *(v48 + 32);
    v51 = (v50 + 63) >> 6;
    v39 = v242;
    if (v51)
    {
      while (!*v49)
      {
        ++v49;
        v47 -= 64;
        if (!--v51)
        {
          goto LABEL_19;
        }
      }

      v52 = __clz(__rbit64(*v49));
      if (v52 - v50 != v47)
      {
        if (-v47 < 0)
        {
          goto LABEL_91;
        }

        v53 = v52 - v47;
        if (v53 >= v50)
        {
          goto LABEL_91;
        }

        if (((*v49 >> v52) & 1) == 0)
        {
          goto LABEL_92;
        }

        if (*(*(*(v48 + 56) + 8 * v53) + 16))
        {
          break;
        }
      }
    }

LABEL_19:
  }

  if (!sub_1C44104A8())
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    sub_1C49B7E34(&qword_1EC0B8590, v54);
    sub_1C441D2D8();
  }

  sub_1C49B9148();
  sub_1C4426C64();
  v55 = sub_1C44104A8();
  if (!v55)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    sub_1C49B7E34(&qword_1EC0B8590, v63);
    v55 = sub_1C441D2D8();
  }

  sub_1C49B9614(v55, v56, v57, v58, v59, v60, v61, v62, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  sub_1C4426C64();
  v64 = sub_1C44104A8();
  if (!v64)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    sub_1C49B7E34(&qword_1EC0B8590, v72);
    v64 = sub_1C441D2D8();
  }

  sub_1C49B99C8(v64, v65, v66, v67, v68, v69, v70, v71, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  sub_1C4426C64();
  v73 = sub_1C44104A8();
  if (v73)
  {
    v81 = v73;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    sub_1C49B7E34(&qword_1EC0B8590, v82);
    v81 = sub_1C441D2D8();
  }

  sub_1C49B9DE4(v81, v74, v75, v76, v77, v78, v79, v80, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
  sub_1C4426C64();
  sub_1C4419C04();
  v84 = sub_1C49B7E34(&qword_1EC0B8590, v83);
  v203 = sub_1C4F00F28();
  v85 = sub_1C44104A8();
  v219 = v41;
  v209 = v84;
  if (!v85)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    v85 = sub_1C4F00F28();
  }

  v86 = v231;
  v211 = v7;
  v212 = v85;
  v87 = *(v85 + 64);
  v88 = *(v85 + 32);
  sub_1C43FEC90();
  v93 = v92 & v91;
  v95 = (v94 + 63) >> 6;
  v240 = v96;
  v205 = v95;
  v206 = v89;
  v207 = a1;
  v208 = v4;
  if (v93)
  {
    do
    {
      v231 = v86;
LABEL_42:
      v213 = (v93 - 1) & v93;
      v214 = v90;
      v98 = __clz(__rbit64(v93)) | (v90 << 6);
      v99 = v212;
      v100 = *(v212 + 48);
      v101 = v230;
      v204 = v229[9];
      v102 = v229;
      v103 = v235;
      v210 = v229[2];
      v210(v235, v100 + v204 * v98, v230);
      v104 = *(*(v99 + 56) + 8 * v98);
      v105 = *(v239 + 48);
      v106 = v102[4];
      v217 = v104;
      v218 = v106;
      v107 = v238;
      v106(v238, v103, v101);
      *(v107 + v105) = v104;
      sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
      v108 = (sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148) - 8);
      v109 = *(*v108 + 72);
      sub_1C4425268();
      v110 = swift_allocObject();
      *(v110 + 16) = v226;
      v111 = v110 + v103;
      v215 = v108[14];
      v216 = v110;
      v112 = v236;
      sub_1C445FFF0(v107, v236, &qword_1EC0C0BB8, &qword_1C4F40150);
      v113 = v239;
      v114 = *(v112 + *(v239 + 48));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v115 = sub_1C4441118();
      (v218)(v115);
      v116 = v237;
      sub_1C445FFF0(v107, v237, &qword_1EC0C0BB8, &qword_1C4F40150);
      *(v111 + v215) = *(v116 + *(v113 + 48));
      v117 = v229[1];
      v117(v116, v112);
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      v118 = sub_1C4F00F28();
      sub_1C49BA174(v118);
      v120 = v119;
      v122 = v121;

      v123 = 0;
      v124 = 1 << *(v122 + 32);
      v125 = (v124 + 63) >> 6;
      v126 = 64;
      v217 = v120;
      if (!v125)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v127 = *(v122 + v126);
        if (v127)
        {
          break;
        }

        v123 -= 64;
        --v125;
        v126 += 8;
        if (!v125)
        {
          goto LABEL_47;
        }
      }

      v128 = __clz(__rbit64(v127));
      if (v128 - v124 != v123)
      {
        v130 = v232;
        sub_1C486BF74(v128 - v123, *(v122 + 36), 0, v122);
        v131 = v233;
        v132 = sub_1C4441118();
        (v218)(v132);
        v210(v234, v131, v130);
        v133 = -1 << *(v122 + 32);
        v134 = sub_1C4F020D8();
        if (v134 == 1 << *(v122 + 32))
        {

          v135 = v203;
          sub_1C457B1F0();
          if (v137)
          {
            v218 = v136;
            swift_isUniquelyReferenced_nonNull_native();
            v244[0] = v135;
            v138 = *(v135 + 24);
            sub_1C456902C(&qword_1EC0C0BC0, &qword_1C4F40158);
            sub_1C4F02458();
            v139 = v244[0];
            v140 = v230;
            v117(*(v244[0] + 48) + v218 * v204, v230);
            v203 = v139;
            sub_1C4F02478();
          }

          else
          {
            v140 = v230;
          }

          v150 = v234;
        }

        else
        {
          v216 = v117;
          sub_1C4BDF5BC(v134, *(v122 + 36), 0, v122);
          sub_1C4426C64();
          v141 = v203;
          LODWORD(v218) = swift_isUniquelyReferenced_nonNull_native();
          v244[0] = v141;
          sub_1C457B1F0();
          if (__OFADD__(*(v141 + 16), (v143 & 1) == 0))
          {
            goto LABEL_94;
          }

          v144 = v142;
          v145 = v143;
          sub_1C456902C(&qword_1EC0C0BC0, &qword_1C4F40158);
          if (sub_1C4F02458())
          {
            sub_1C457B1F0();
            if ((v145 & 1) != (v147 & 1))
            {
              goto LABEL_100;
            }

            v144 = v146;
          }

          v148 = v244[0];
          v203 = v244[0];
          if (v145)
          {
            *(*(v244[0] + 56) + 8 * v144) = v1;
            v149 = v234;
          }

          else
          {
            *(v244[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
            v151 = v148;
            v149 = v234;
            v210(*(v148 + 48) + v144 * v204, v234, v230);
            *(*(v151 + 56) + 8 * v144) = v1;
            v152 = *(v151 + 16);
            v153 = __OFADD__(v152, 1);
            v154 = v152 + 1;
            if (v153)
            {
              goto LABEL_97;
            }

            *(v151 + 16) = v154;
          }

          v117 = v216;
          v150 = v149;
          v140 = v230;
        }

        v117(v150, v140);
        isUniquelyReferenced_nonNull_native = (v117)(v233, v140);
        v120 = v217;
      }

      else
      {
LABEL_47:
      }

      v155 = *(v120 + 16);
      v86 = v231;
      if (v155)
      {
        v156 = (v120 + 40);
        do
        {
          v157 = *v156;
          v231 = *(v156 - 1);
          v244[0] = v231;
          v244[1] = v157;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          *(&v202 - 2) = v244;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v158 = v240;
          if (sub_1C44CE068(sub_1C44CE790, (&v202 - 4), v240))
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v159 = v86;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v164 = v158[2];
              sub_1C443D664();
              v158 = isUniquelyReferenced_nonNull_native;
            }

            v161 = v158[2];
            v160 = v158[3];
            v240 = v158;
            if (v161 >= v160 >> 1)
            {
              sub_1C443D664();
              v240 = isUniquelyReferenced_nonNull_native;
            }

            v162 = v240;
            v240[2] = v161 + 1;
            v163 = &v162[16 * v161];
            *(v163 + 4) = v231;
            *(v163 + 5) = v157;
            v86 = v159;
          }

          v156 += 2;
          --v155;
        }

        while (v155);
      }

      sub_1C4420C3C(v238, &qword_1EC0C0BB8, &qword_1C4F40150);
      a1 = v207;
      v4 = v208;
      v7 = v211;
      v95 = v205;
      v89 = v206;
      v93 = v213;
      v90 = v214;
    }

    while (v213);
  }

  while (1)
  {
    v97 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v97 >= v95)
    {

      v244[0] = sub_1C4618808(v203);
      sub_1C49B7EB4(v244);
      v231 = v86;
      if (v86)
      {
        goto LABEL_99;
      }

      v165 = v244[0];
      v166 = *(v244[0] + 16);
      if (v166 <= 1)
      {
        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        inited = swift_initStackObject();
        sub_1C44007C0(inited);
        sub_1C441FDE4(v182);
        v183 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        sub_1C4432598(v183);
        if (v166 != 1)
        {
          goto LABEL_95;
        }

        v184 = sub_1C440BE2C();
        v185 = v221;
        sub_1C445FFF0(v184, v221, &qword_1EC0B8FA8, &qword_1C4F0EA80);

        v186 = v230;
        qword_1C4F0EBB8 = v230;
        v187 = sub_1C4422F90(&unk_1C4F0EBA0);
        v188 = v186;
        v41 = v219;
        (*v219)(v187, v185, v188);
        sub_1C43FDA94();
        qword_1C4F0EBE8 = MEMORY[0x1E69E6158];
        qword_1C4F0EBD0 = 0;
        qword_1C4F0EBD8 = 0xE000000000000000;
      }

      else
      {
        v218 = sub_1C440BE2C();
        v167 = v220;
        sub_1C445FFF0(v218, v220, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v168 = sub_1C4EF9D68();
        v170 = v169;
        v171 = v167;
        v172 = v230;
        (*v228)(v171, v230);

        if ((v170 & 0x2000000000000000) != 0)
        {
          v173 = (HIBYTE(v170) & 0xF);
        }

        else
        {
          v173 = (v168 & 0xFFFFFFFFFFFFLL);
        }

        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        if (v173)
        {
          v174 = swift_initStackObject();
          sub_1C44007C0(v174);
          sub_1C441FDE4(v175);
          v176 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4432598(v176);
          v177 = v221;
          sub_1C445FFF0(v218, v221, &qword_1EC0B8FA8, &qword_1C4F0EA80);
          v173[39] = v172;
          v178 = sub_1C4422F90(v173 + 36);
          v240 = *v219;
          (v240)(v178, v177, v172);
          sub_1C43FDA94();
          v7 = v211;
          if (v165[2] < 2uLL)
          {
            goto LABEL_96;
          }

          sub_1C445FFF0(v218 + *(v4 + 72), v211, &qword_1EC0B8FA8, &qword_1C4F0EA80);

          v179 = v230;
          v173[45] = v230;
          v180 = sub_1C4422F90(v173 + 42);
          v41 = v219;
          (v240)(v180, v7, v179);
        }

        else
        {
          v189 = v218;
          v190 = swift_allocObject();
          sub_1C44007C0(v190);
          sub_1C441FDE4(v191);
          v192 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4432598(v192);
          v193 = v165[2];
          v7 = v211;
          v240 = v165;
          if (v193 < 2)
          {
            goto LABEL_98;
          }

          v217 = *(v4 + 72);
          v194 = v221;
          sub_1C445FFF0(v189 + v217, v221, &qword_1EC0B8FA8, &qword_1C4F0EA80);
          v195 = v230;
          MEMORY[0x138] = v230;
          v196 = sub_1C4422F90(0x120);
          v197 = *v219;
          v198 = v194;
          v41 = v219;
          (*v219)(v196, v198, v195);
          sub_1C43FDA94();
          sub_1C445FFF0(v218 + v217, v7, &qword_1EC0B8FA8, &qword_1C4F0EA80);

          MEMORY[0x168] = v195;
          v199 = sub_1C4422F90(0x150);
          v197(v199, v7, v195);
          v4 = v208;
        }
      }

      sub_1C4F00F28();
      v200 = v241;
      swift_isUniquelyReferenced_nonNull_native();
      v244[0] = v200;
      v201 = v243;
      sub_1C46613F0();

      v241 = v244[0];
      v39 = v242;
      goto LABEL_6;
    }

    v93 = *(v89 + 8 * v97);
    ++v90;
    if (v93)
    {
      v231 = v86;
      v90 = v97;
      goto LABEL_42;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  __break(1u);
LABEL_100:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C49B9148()
{
  sub_1C43FEC28();
  v3 = sub_1C443FDE0();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C440D5C0(v11);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F140B0;
  *(inited + 32) = 0x6E6F697461636F4CLL;
  *(inited + 40) = 0xE900000000000073;
  sub_1C4410F34();
  v13[6] = v14;
  v13[7] = 0xE800000000000000;
  v13[8] = 0x697261666153;
  v13[9] = 0xE600000000000000;
  sub_1C44365C8();
  *(v15 + 80) = v16;
  *(v15 + 88) = v17;
  sub_1C4433D6C();
  v18[12] = v19;
  v18[13] = 0xEC00000073656C74;
  v18[14] = 0x736B6F6F42;
  v18[15] = 0xE500000000000000;
  v18[16] = 0x636973754DLL;
  v18[17] = 0xE500000000000000;
  sub_1C44023F0();
  *(v20 + 144) = v21;
  *(v20 + 152) = 0xEA0000000000736BLL;
  sub_1C4418B20();
  *(v22 + 160) = v23;
  *(v22 + 168) = v24;
  sub_1C445E8B8();
  *(v25 + 176) = v26;
  *(v25 + 184) = v27;
  v80 = v25;
  v29 = v0 + 64;
  v28 = *(v0 + 64);
  v30 = *(v0 + 32);
  sub_1C43FEC90();
  v33 = v32 & v31;
  sub_1C442E110();
  swift_bridgeObjectRetain_n();
  v34 = 0;
  v35 = 0;
  v79 = v3;
  v73 = v0 + 64;
  v72 = v1;
  if (v33)
  {
LABEL_2:
    v36 = v34;
LABEL_6:
    sub_1C441C35C();
    sub_1C4417478(v37);
    v38 = sub_1C4425D90(&v83);
    v76 = v39;
    (v39)(v38);
    v40 = *(v6 + 32);
    v41 = sub_1C4433594();
    v42(v41);
    v43 = sub_1C4402120();
    if (!sub_1C465C470(v43, v44))
    {
      sub_1C4F00F28();
    }

    sub_1C444FE1C();
    v74 = v33;
    v46 = sub_1C442CD98(v45);
    v50 = v49 & v48;
    v52 = (v51 + 63) >> 6;
    v81 = v46;
    if ((v49 & v48) != 0)
    {
      do
      {
        v53 = v47;
LABEL_13:
        v54 = sub_1C4413438(v46, __rbit64(v50));
        v50 &= v50 - 1;
        v82[0] = v0;
        v82[1] = v35;
        MEMORY[0x1EEE9AC00](v54);
        sub_1C43FC638();
        sub_1C442EC10(v55);
        v56 = sub_1C443598C();
        if (sub_1C44CE068(v56, v57, v80))
        {

          v47 = v53;
          v3 = v79;
        }

        else
        {
          v3 = v75;
          v76(v75, v78, v79);
          v58 = sub_1C440CCC4();
          v60 = sub_1C447F194(v58, v59, &v85);
          if (v68)
          {
            sub_1C441ED8C(v60, v61, v62, v63, v64, v65, v66, v67, v72, v73);
          }

          v77(v82, 0);
          v69 = sub_1C440E4E8(v84);
          v70(v69);
          sub_1C443F258();
        }

        v46 = v81;
      }

      while (v50);
    }

    while (1)
    {
      v53 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v53 >= v52)
      {
        v35 = v29;

        sub_1C4402C08(v84);
        v71(v78, v3);
        v34 = v36;
        v29 = v73;
        v33 = v74;
        goto LABEL_2;
      }

      v50 = *(v2 + 8 * v53);
      ++v47;
      if (v50)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v1)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v33 = *(v29 + 8 * v36);
      ++v34;
      if (v33)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
}

void sub_1C49B9614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v27;
  a22 = v28;
  v29 = sub_1C443FDE0();
  v30 = sub_1C43FCDF8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C440D5C0(v37);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 0x736B6F6F42;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x697261666153;
  *(inited + 56) = 0xE600000000000000;
  sub_1C4410F34();
  *(v39 + 64) = v40;
  *(v39 + 72) = 0xE800000000000000;
  sub_1C4433D6C();
  v41[10] = v42;
  v41[11] = 0xEC00000073656C74;
  v41[12] = 0x4C20656369766544;
  v41[13] = 0xEF65676175676E61;
  v85 = v41;
  v44 = v22 + 64;
  v43 = *(v22 + 64);
  v45 = *(v22 + 32);
  sub_1C43FEC90();
  sub_1C440F878();
  sub_1C441CB80();
  if (v24)
  {
LABEL_5:
    sub_1C441C35C();
    sub_1C4417478(v48);
    sub_1C4425D90(&v87);
    sub_1C4415AFC();
    v49();
    v50 = *(v32 + 32);
    v51 = sub_1C4433594();
    v52(v51);
    v53 = sub_1C4402120();
    v55 = sub_1C465C470(v53, v54);
    if (!v55)
    {
      v55 = sub_1C4F00F28();
    }

    v44 = v25;
    v56 = (v24 - 1) & v24;
    v57 = sub_1C442CD98(v55);
    v58 = sub_1C4416220(v57);
    if (v56)
    {
      while (1)
      {
        v23 = v59;
LABEL_12:
        sub_1C4413438(v58, __rbit64(v56));
        sub_1C44050F8();
        MEMORY[0x1EEE9AC00](v60);
        sub_1C43FC638();
        sub_1C442EC10(v61);
        v62 = sub_1C443598C();
        if (sub_1C44CE068(v62, v63, v85))
        {

          v59 = v23;
        }

        else
        {
          v64 = sub_1C4408C9C();
          v65(v64);
          v66 = sub_1C440CCC4();
          v68 = sub_1C447F194(v66, v67, &a14);
          if (v76)
          {
            sub_1C441ED8C(v68, v69, v70, v71, v72, v73, v74, v75, v82, v83);
          }

          v77 = sub_1C441BAFC();
          v78(v77);
          v79 = sub_1C440E4E8(&a12);
          v80(v79);
          sub_1C443F258();
        }

        v58 = v86;
      }
    }

    while (1)
    {
      v23 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v23 >= v25)
      {

        sub_1C4402C08(&a12);
        v81(v84, v29);
        sub_1C4405E2C();
        goto LABEL_2;
      }

      v56 = *(v26 + 8 * v23);
      ++v59;
      if (v56)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v47 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v24 = *(v44 + 8 * v47);
      ++v46;
      if (v24)
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
}

void sub_1C49B99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v25;
  a22 = v26;
  v27 = sub_1C443FDE0();
  v28 = sub_1C43FCDF8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v88 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  sub_1C440D5C0(v36);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x6472616F6279654BLL;
  *(inited + 40) = 0xE900000000000073;
  sub_1C4410F34();
  *(v38 + 48) = v39;
  *(v38 + 56) = 0xE800000000000000;
  v90 = v38;
  v41 = v22 + 64;
  v40 = *(v22 + 64);
  v42 = *(v22 + 32);
  sub_1C43FEC90();
  v45 = v44 & v43;
  sub_1C442E110();
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v47 = 0;
  v89 = v27;
  v83 = v22 + 64;
  v82 = v23;
  if (v45)
  {
LABEL_2:
    v48 = v46;
LABEL_6:
    sub_1C441C35C();
    sub_1C4417478(v49);
    v50 = sub_1C4425D90(&a12);
    v86 = v51;
    (v51)(v50);
    v52 = *(v30 + 32);
    v30 = v88;
    v52(v88, v41, v27);
    v53 = sub_1C4402120();
    if (!sub_1C465C470(v53, v54))
    {
      sub_1C4F00F28();
    }

    sub_1C444FE1C();
    v84 = v45;
    v56 = sub_1C442CD98(v55);
    v60 = v59 & v58;
    v62 = (v61 + 63) >> 6;
    v91 = v56;
    while (v60)
    {
      v63 = v57;
LABEL_14:
      v64 = sub_1C4413438(v56, __rbit64(v60));
      v60 &= v60 - 1;
      v92[0] = v22;
      v92[1] = v47;
      MEMORY[0x1EEE9AC00](v64);
      sub_1C43FC638();
      sub_1C442EC10(v65);
      v66 = sub_1C443598C();
      if (sub_1C44CE068(v66, v67, v90))
      {

        v57 = v63;
        v27 = v89;
        v56 = v91;
      }

      else
      {
        v27 = v85;
        v86(v85, v88, v89);
        v68 = sub_1C440CCC4();
        v70 = sub_1C447F194(v68, v69, &a20);
        if (v78)
        {
          sub_1C441ED8C(v70, v71, v72, v73, v74, v75, v76, v77, v82, v83);
        }

        v87(v92, 0);
        v79 = sub_1C440E4E8(&a18);
        v80(v79);
        sub_1C443F258();
        v56 = v91;
      }
    }

    while (1)
    {
      v63 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v63 >= v62)
      {
        v47 = v41;

        sub_1C4402C08(&a18);
        v81(v88, v27);
        v46 = v48;
        v41 = v83;
        v45 = v84;
        goto LABEL_2;
      }

      v60 = *(v24 + 8 * v63);
      ++v57;
      if (v60)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v48 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v45 = *(v41 + 8 * v48);
      ++v46;
      if (v45)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
}

void sub_1C49B9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v27;
  a22 = v28;
  v29 = sub_1C443FDE0();
  v30 = sub_1C43FCDF8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  sub_1C440D5C0(v37);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 0x636973754DLL;
  *(inited + 40) = 0xE500000000000000;
  sub_1C44023F0();
  *(v39 + 48) = v40;
  *(v39 + 56) = 0xEA0000000000736BLL;
  sub_1C44365C8();
  *(v41 + 64) = v42;
  *(v41 + 72) = 0xE800000000000000;
  sub_1C4418B20();
  *(v43 + 80) = v44;
  *(v43 + 88) = v45;
  sub_1C445E8B8();
  *(v46 + 96) = v47;
  *(v46 + 104) = 0xE90000000000006CLL;
  v90 = v46;
  v49 = v22 + 64;
  v48 = *(v22 + 64);
  v50 = *(v22 + 32);
  sub_1C43FEC90();
  sub_1C440F878();
  sub_1C441CB80();
  if (v24)
  {
LABEL_5:
    sub_1C441C35C();
    sub_1C4417478(v53);
    sub_1C4425D90(&v92);
    sub_1C4415AFC();
    v54();
    v55 = *(v32 + 32);
    v56 = sub_1C4433594();
    v57(v56);
    v58 = sub_1C4402120();
    v60 = sub_1C465C470(v58, v59);
    if (!v60)
    {
      v60 = sub_1C4F00F28();
    }

    v49 = v25;
    v61 = (v24 - 1) & v24;
    v62 = sub_1C442CD98(v60);
    v63 = sub_1C4416220(v62);
    if (v61)
    {
      while (1)
      {
        v23 = v64;
LABEL_12:
        sub_1C4413438(v63, __rbit64(v61));
        sub_1C44050F8();
        MEMORY[0x1EEE9AC00](v65);
        sub_1C43FC638();
        sub_1C442EC10(v66);
        v67 = sub_1C443598C();
        if (sub_1C44CE068(v67, v68, v90))
        {

          v64 = v23;
        }

        else
        {
          v69 = sub_1C4408C9C();
          v70(v69);
          v71 = sub_1C440CCC4();
          v73 = sub_1C447F194(v71, v72, &a14);
          if (v81)
          {
            sub_1C441ED8C(v73, v74, v75, v76, v77, v78, v79, v80, v87, v88);
          }

          v82 = sub_1C441BAFC();
          v83(v82);
          v84 = sub_1C440E4E8(&a12);
          v85(v84);
          sub_1C443F258();
        }

        v63 = v91;
      }
    }

    while (1)
    {
      v23 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v23 >= v25)
      {

        sub_1C4402C08(&a12);
        v86(v89, v29);
        sub_1C4405E2C();
        goto LABEL_2;
      }

      v61 = *(v26 + 8 * v23);
      ++v64;
      if (v61)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v24 = *(v49 + 8 * v52);
      ++v51;
      if (v24)
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
}

void sub_1C49BA174(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v44 - v5;
  if (!*(a1 + 16))
  {
    sub_1C4EF9DD8();
    sub_1C4419C04();
    sub_1C49B7E34(v33, v34);
    sub_1C4402120();
LABEL_31:
    sub_1C4F00F28();
    return;
  }

  sub_1C48683A8(a1);
  if (!v7)
  {
LABEL_26:
    sub_1C456902C(&qword_1EC0C0BC8, &qword_1C4F40160);
    v35 = sub_1C456902C(&qword_1EC0C0BD0, &qword_1C4F40168);
    v36 = *(*(v35 - 8) + 72);
    sub_1C4425268();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C4F0D130;
    v38 = v37 + v1;
    sub_1C48683F8();
    v39 = sub_1C4EF9DD8();
    if (sub_1C44157D4(v6, 1, v39) == 1)
    {
      sub_1C4EF9DC8();
      if (sub_1C44157D4(v6, 1, v39) != 1)
      {
        sub_1C4420C3C(v6, &qword_1EC0C0B88, &qword_1C4F40128);
      }
    }

    else
    {
      (*(*(v39 - 8) + 32))(v38, v6, v39);
    }

    v40 = *(v35 + 48);
    sub_1C49BA618();
    *(v38 + v40) = v41;
    sub_1C4419C04();
    sub_1C49B7E34(v42, v43);
    goto LABEL_31;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {

    goto LABEL_26;
  }

  v44[0] = v6;
  v44[1] = a1;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v10 = v52;
  v13 = sub_1C4703354(v8);
  v14 = 0;
  v15 = v8 + 64;
  v45 = v8 + 72;
  v46 = v9;
  v47 = v8 + 64;
  if ((v13 & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(v8 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v8 + 36) != v11)
      {
        goto LABEL_34;
      }

      v48 = v12;
      v17 = (*(v8 + 48) + 16 * v13);
      v19 = *v17;
      v18 = v17[1];
      v49 = v11;
      v50 = v19;
      v51 = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F01438();
      v22 = v21;
      v52 = v10;
      v23 = *(v10 + 16);
      if (v23 >= *(v10 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v10 = v52;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      v1 = 1 << *(v8 + 32);
      if (v13 >= v1)
      {
        goto LABEL_35;
      }

      v15 = v47;
      v25 = *(v47 + 8 * v16);
      if ((v25 & (1 << v13)) == 0)
      {
        goto LABEL_36;
      }

      if (*(v8 + 36) != v49)
      {
        goto LABEL_37;
      }

      v26 = v25 & (-2 << (v13 & 0x3F));
      if (v26)
      {
        v1 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v27 = v46;
      }

      else
      {
        v28 = v16 << 6;
        v29 = v16 + 1;
        v27 = v46;
        v30 = (v45 + 8 * v16);
        while (v29 < (v1 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1C440951C(v13, v49, v48 & 1);
            v1 = __clz(__rbit64(v31)) + v28;
            goto LABEL_20;
          }
        }

        sub_1C440951C(v13, v49, v48 & 1);
      }

LABEL_20:
      if (++v14 == v27)
      {

        v6 = v44[0];
        goto LABEL_26;
      }

      v12 = 0;
      v11 = *(v8 + 36);
      v13 = v1;
      if (v1 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C49BA618()
{
  v67 = sub_1C443FDE0();
  v2 = sub_1C43FCDF8(v67);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C456902C(&qword_1EC0C0BB8, &qword_1C4F40150);
  v8 = sub_1C43FBCE0(v64);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  v14 = v0 + 64;
  v13 = *(v0 + 64);
  v15 = *(v0 + 32);
  sub_1C43FEC90();
  v18 = v17 & v16;
  sub_1C442E110();
  v68 = v4;
  v69 = v0;
  v66 = v4 + 16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = 0;
  v20 = 0.0;
  v65 = v0 + 64;
  v61 = v1;
  v62 = v12;
  if (v18)
  {
    while (1)
    {
      v21 = v19;
LABEL_6:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = v22 | (v21 << 6);
      v24 = v69;
      (*(v68 + 16))(v12, *(v69 + 48) + *(v68 + 72) * v23, v67);
      v25 = *(*(v24 + 56) + 8 * v23);
      *&v12[*(v64 + 48)] = v25;
      v27 = v25 + 64;
      v26 = *(v25 + 64);
      v28 = *(v25 + 32);
      sub_1C43FEC90();
      v31 = v30 & v29;
      sub_1C442E110();
      v70 = v32;
      swift_bridgeObjectRetain_n();
      v33 = 0;
      for (i = 0.0; v31; i = i + v40 * v43)
      {
LABEL_11:
        v36 = __clz(__rbit64(v31)) | (v33 << 6);
        v37 = (*(v70 + 48) + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = *(*(v70 + 56) + 8 * v36);
        v41 = qword_1EC0B6DB8;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v41 != -1)
        {
          swift_once();
        }

        v42 = qword_1EC1525E0;
        v43 = 1.0;
        if (*(qword_1EC1525E0 + 16))
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v44 = sub_1C445FAA8(v39, v38);
          v46 = v45;

          if (v46)
          {
            v43 = *(*(v42 + 56) + 8 * v44);
          }
        }

        v31 &= v31 - 1;
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v35 >= v1)
        {
          break;
        }

        v31 = *(v27 + 8 * v35);
        ++v33;
        if (v31)
        {
          v33 = v35;
          goto LABEL_11;
        }
      }

      v20 = v20 + i;
      v12 = v62;
      sub_1C4420C3C(v62, &qword_1EC0C0BB8, &qword_1C4F40150);
      v19 = v21;
      v14 = v65;
      v1 = v61;
      if (!v18)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_33;
    }

    if (v21 >= v1)
    {
      break;
    }

    v18 = *(v14 + 8 * v21);
    ++v19;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v47 = v69;

  v71 = MEMORY[0x1E69E7CD0];
  v48 = 1 << *(v47 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v47 + 64);
  v51 = (v48 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = 0;
  v53 = v63;
  if (v50)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= v51)
    {

      v59 = *(v71 + 16);

      log(v59 + 1.0);
      return;
    }

    v50 = *(v14 + 8 * v54);
    ++v52;
    if (v50)
    {
      v52 = v54;
      do
      {
LABEL_27:
        v56 = v68;
        v55 = v69;
        v57 = v67;
        (*(v68 + 16))(v53, *(v69 + 48) + *(v68 + 72) * (__clz(__rbit64(v50)) | (v52 << 6)), v67);
        v58 = sub_1C465C470(v53, v55);
        (*(v56 + 8))(v53, v57);
        if (!v58)
        {
          v58 = sub_1C4F00F28();
        }

        v50 &= v50 - 1;
        sub_1C4D40014(v58);
        v14 = v65;
      }

      while (v50);
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1C49BAAA0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C49BAE38(v8, v9, a1, v4);
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
    sub_1C49BABE8(0, v2, 1, a1);
  }
}

void sub_1C49BABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v34 = v19;
      v35 = a3;
      v32 = v21;
      v33 = v20;
      v22 = v20;
      v23 = v39;
      do
      {
        sub_1C445FFF0(v21, v16, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C445FFF0(v19, v12, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v24 = *(v23 + 48);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        sub_1C4420C3C(v12, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C4420C3C(v16, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        if (v26 >= v25)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v27 = v38;
        sub_1C49BBBE8(v21, v38);
        v23 = v39;
        swift_arrayInitWithTakeFrontToBack();
        sub_1C49BBBE8(v27, v19);
        v19 += v36;
        v21 += v36;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v19 = v34 + v30;
      v20 = v33 - 1;
      v21 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C49BAE38(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v128 = *(v8 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v116 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v116 - v16;
  v129 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v135 = *v120;
    if (!v135)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v109 = (v19 + 16);
      v110 = *(v19 + 16);
      while (v110 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_136;
        }

        v111 = v5;
        v112 = v19;
        v5 = (v19 + 16 * v110);
        v113 = *v5;
        v114 = &v109[2 * v110];
        v19 = *(v114 + 1);
        sub_1C49BB748(*v129 + *(v128 + 72) * *v5, *v129 + *(v128 + 72) * *v114, *v129 + *(v128 + 72) * v19, v135);
        if (v111)
        {
          break;
        }

        if (v19 < v113)
        {
          goto LABEL_124;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_125;
        }

        *v5 = v113;
        v5[1] = v19;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_126;
        }

        v110 = *v109 - 1;
        sub_1C461950C(v114 + 16, v115, v114);
        *v109 = v110;
        v19 = v112;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v19 = sub_1C46194F4(v19);
    goto LABEL_100;
  }

  v118 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v135 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v121 = v18;
    if (v18 + 1 < v17)
    {
      v119 = v5;
      v22 = *v129;
      v126 = v22;
      v127 = v17;
      v23 = *(v128 + 72);
      v130 = v18 + 1;
      v24 = v22 + v23 * v21;
      v25 = v133;
      sub_1C445FFF0(v24, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v26 = v22 + v23 * v20;
      v27 = v134;
      sub_1C445FFF0(v26, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v28 = *(v8 + 48);
      v29 = *(v25 + v28);
      v30 = *(v27 + v28);
      sub_1C4420C3C(v27, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v25, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v31 = v127;
      v32 = v20 + 2;
      v131 = v23;
      v33 = v126 + v23 * (v20 + 2);
      while (1)
      {
        v34 = v32;
        if (++v130 >= v31)
        {
          break;
        }

        v35 = v133;
        sub_1C445FFF0(v33, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v36 = v134;
        sub_1C445FFF0(v24, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v37 = *(v135 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_1C4420C3C(v36, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C4420C3C(v35, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v31 = v127;
        v33 += v131;
        v24 += v131;
        v32 = v34 + 1;
        if (v30 < v29 == v39 >= v38)
        {
          goto LABEL_9;
        }
      }

      v130 = v31;
LABEL_9:
      v5 = v119;
      if (v30 >= v29)
      {
        v21 = v130;
        v20 = v121;
        v8 = v135;
      }

      else
      {
        v21 = v130;
        v20 = v121;
        if (v130 < v121)
        {
          goto LABEL_130;
        }

        v8 = v135;
        if (v121 < v130)
        {
          v117 = v19;
          if (v31 >= v34)
          {
            v40 = v34;
          }

          else
          {
            v40 = v31;
          }

          v41 = v131 * (v40 - 1);
          v42 = v130;
          v43 = v131 * v40;
          v44 = v121 * v131;
          do
          {
            if (v20 != --v42)
            {
              v45 = *v129;
              if (!*v129)
              {
                goto LABEL_137;
              }

              sub_1C49BBBE8(v45 + v44, v124);
              v46 = v44 < v41 || v45 + v44 >= v45 + v43;
              if (v46)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C49BBBE8(v124, v45 + v41);
            }

            ++v20;
            v41 -= v131;
            v43 -= v131;
            v44 += v131;
          }

          while (v20 < v42);
          v5 = v119;
          v19 = v117;
          v8 = v135;
          v21 = v130;
          v20 = v121;
        }
      }
    }

    v47 = v129[1];
    if (v21 < v47)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_129;
      }

      if (v21 - v20 < v118)
      {
        break;
      }
    }

LABEL_46:
    if (v21 < v20)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v106 = *(v19 + 16);
      sub_1C458A358();
      v19 = v107;
    }

    v63 = *(v19 + 16);
    v64 = v63 + 1;
    if (v63 >= *(v19 + 24) >> 1)
    {
      sub_1C458A358();
      v19 = v108;
    }

    *(v19 + 16) = v64;
    v65 = v19 + 32;
    v66 = (v19 + 32 + 16 * v63);
    v67 = v130;
    *v66 = v121;
    v66[1] = v67;
    v131 = *v120;
    if (!v131)
    {
      goto LABEL_138;
    }

    if (v63)
    {
      while (1)
      {
        v68 = v64 - 1;
        v69 = (v65 + 16 * (v64 - 1));
        v70 = (v19 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v71 = *(v19 + 32);
          v72 = *(v19 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_66:
          if (v74)
          {
            goto LABEL_115;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_118;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_123;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v64 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v64 < 2)
        {
          goto LABEL_117;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_81:
        if (v89)
        {
          goto LABEL_120;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v96 < v88)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v68 - 1 >= v64)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v100 = (v65 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = v65 + 16 * v68;
        v103 = *(v102 + 8);
        sub_1C49BB748(*v129 + *(v128 + 72) * *v100, *v129 + *(v128 + 72) * *v102, *v129 + *(v128 + 72) * v103, v131);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v103 < v101)
        {
          goto LABEL_110;
        }

        v104 = v19;
        v19 = *(v19 + 16);
        if (v68 > v19)
        {
          goto LABEL_111;
        }

        *v100 = v101;
        v100[1] = v103;
        if (v68 >= v19)
        {
          goto LABEL_112;
        }

        v64 = v19 - 1;
        sub_1C461950C((v102 + 16), v19 - 1 - v68, (v65 + 16 * v68));
        *(v104 + 16) = v19 - 1;
        v105 = v19 > 2;
        v19 = v104;
        v8 = v135;
        if (!v105)
        {
          goto LABEL_95;
        }
      }

      v75 = v65 + 16 * v64;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_113;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_114;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_116;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_119;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_127;
        }

        if (v73 < v99)
        {
          v68 = v64 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v18 = v130;
    v17 = v129[1];
    if (v130 >= v17)
    {
      goto LABEL_98;
    }
  }

  v48 = v20 + v118;
  if (__OFADD__(v20, v118))
  {
    goto LABEL_131;
  }

  if (v48 >= v47)
  {
    v48 = v129[1];
  }

  if (v48 < v20)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v21 == v48)
  {
    goto LABEL_46;
  }

  v117 = v19;
  v119 = v5;
  v49 = *(v128 + 72);
  v50 = *v129 + v49 * (v21 - 1);
  v51 = -v49;
  v52 = v20 - v21;
  v131 = *v129;
  v122 = v49;
  v123 = v48;
  v53 = v131 + v21 * v49;
LABEL_39:
  v130 = v21;
  v125 = v53;
  v126 = v52;
  v54 = v53;
  v127 = v50;
  v55 = v135;
  while (1)
  {
    v56 = v133;
    sub_1C445FFF0(v54, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    v57 = v134;
    sub_1C445FFF0(v50, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    v58 = *(v55 + 48);
    v59 = *(v56 + v58);
    v60 = *(v57 + v58);
    sub_1C4420C3C(v57, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    sub_1C4420C3C(v56, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    if (v60 >= v59)
    {
LABEL_44:
      v21 = v130 + 1;
      v50 = v127 + v122;
      v52 = v126 - 1;
      v53 = v125 + v122;
      if (v130 + 1 == v123)
      {
        v21 = v123;
        v5 = v119;
        v19 = v117;
        v8 = v135;
        v20 = v121;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v131)
    {
      break;
    }

    v61 = v132;
    sub_1C49BBBE8(v54, v132);
    v55 = v135;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C49BBBE8(v61, v50);
    v50 += v51;
    v54 += v51;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_1C49BB748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = a3;
  v54 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = v52 - a2;
  if (v52 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v57 = a1;
  v56 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1C459C5F4(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v30 = v52;
    v51 = v28;
    v49 = a1;
LABEL_37:
    v52 = a2 + v28;
    v31 = v30;
    v47 = v29;
    v50 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v57 = a2;
        v55 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v29;
      v32 = a4;
      v33 = v31 + v51;
      v34 = v27 + v51;
      sub_1C445FFF0(v27 + v51, v11, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v35 = v11;
      v36 = v53;
      sub_1C445FFF0(v52, v53, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v37 = *(v54 + 48);
      v38 = *(v35 + v37);
      v39 = *(v36 + v37);
      v40 = v36;
      v11 = v35;
      sub_1C4420C3C(v40, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v35, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      if (v39 < v38)
      {
        v42 = v31 < v50 || v33 >= v50;
        v30 = v33;
        a4 = v32;
        if (v42)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v33;
          v28 = v51;
          v29 = v48;
          a1 = v49;
        }

        else
        {
          v29 = v48;
          v15 = v31 == v50;
          v28 = v51;
          v43 = v52;
          a2 = v52;
          a1 = v49;
          if (!v15)
          {
            v44 = v30;
            v45 = v48;
            swift_arrayInitWithTakeBackToFront();
            v30 = v44;
            a2 = v43;
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      v41 = v31 < v27 || v33 >= v27;
      a4 = v32;
      if (v41)
      {
        v31 = v33;
        swift_arrayInitWithTakeFrontToBack();
        v27 = v34;
        v29 = v34;
        a1 = v49;
        a2 = v50;
      }

      else
      {
        v29 = v34;
        v15 = v27 == v31;
        v31 = v33;
        v27 = v34;
        a1 = v49;
        a2 = v50;
        if (!v15)
        {
          v31 = v33;
          swift_arrayInitWithTakeBackToFront();
          v27 = v34;
          v29 = v34;
        }
      }
    }

    v57 = a2;
    v55 = v47;
  }

  else
  {
    sub_1C459C5F4(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v55 = v51;
    while (a4 < v51 && a2 < v52)
    {
      sub_1C445FFF0(a2, v11, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v21 = v53;
      sub_1C445FFF0(a4, v53, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v22 = *(v54 + 48);
      v23 = *&v11[v22];
      v24 = *(v21 + v22);
      sub_1C4420C3C(v21, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v11, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56 = a4 + v13;
        a4 += v13;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v13;
      }

      a1 += v13;
      v57 = a1;
    }
  }

LABEL_59:
  sub_1C4BEB400(&v57, &v56, &v55);
}

uint64_t sub_1C49BBBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49BBC58()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
  sub_1C448DE08(&unk_1F43D6880);
  sub_1C49BF650(v3, v2);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *(inited + 32) = sub_1C4F01EC8();
  if (sub_1C4428DA0())
  {
    sub_1C4D52140(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1C49E1628();
    v5 = MEMORY[0x1E69E7CD0];
  }

  sub_1C49BF6C4(v5, v2);
  aBlock[4] = sub_1C49BF878;
  v24 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C49BF8F0;
  aBlock[3] = &unk_1F43F3800;
  v6 = _Block_copy(aBlock);
  v7 = v24;

  aBlock[0] = 0;
  [v1 iterTopicRecordsWithQuery:v2 error:aBlock block:v6];
  v8 = sub_1C44251FC();
  _Block_release(v8);
  if (v7)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();
    if (sub_1C43FD0E8(v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_1C43FD0B4();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      sub_1C43FBE2C();
    }

    v2 = v13;
  }

  swift_beginAccess();
  v20 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1C49BBF58()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  sub_1C43FBD18(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v92 - v4;
  v6 = sub_1C4EF9DD8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v108 = sub_1C4EF9E28();
  v15 = sub_1C43FCDF8(v108);
  v103 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v107 = v20 - v19;
  v21 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v92 - v25;
  v106 = sub_1C4EF9E48();
  v27 = sub_1C43FCDF8(v106);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v109 = v33 - v32;
  v34 = [objc_opt_self() supportedLanguages];
  v35 = sub_1C4F01AB8();

  v36 = sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
  sub_1C49BC7C4();
  v98 = sub_1C4F00F28();
  v37 = [objc_opt_self() sharedInputModeController];
  if (v37)
  {
    v99 = v14;
    v38 = sub_1C49BF75C(v37);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v40 = sub_1C49BE3C8(v38);

      if (v40)
      {
        v39 = v40;
      }
    }

    v105 = *(v39 + 16);
    if (!v105)
    {
LABEL_39:

      sub_1C43FE9F0();
      return;
    }

    v92[0] = v36;
    v41 = 0;
    v92[1] = v39;
    ++v103;
    v104 = v39 + 32;
    v97 = (v9 + 32);
    v96 = (v9 + 16);
    v100 = v29 + 8;
    v101 = (v9 + 8);
    v95 = xmmword_1C4F0D130;
    v42 = v99;
    v102 = v26;
    v94 = v5;
    v93 = v6;
    while (1)
    {
      v43 = (v104 + 16 * v41);
      v44 = *v43;
      v45 = v43[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9D48();
      v46 = v107;
      sub_1C4EF9E38();
      sub_1C4EF9E18();
      (*v103)(v46, v108);
      v47 = sub_1C4EF9D78();
      v48 = sub_1C440D3D8();
      sub_1C440175C(v48, v49, v47);
      if (v60)
      {
        sub_1C4607CD4(v26, &qword_1EC0BC018, &unk_1C4F23180);
        v50 = 0;
        v52 = 0xE000000000000000;
      }

      else
      {
        v50 = sub_1C4EF9D68();
        v52 = v51;
        sub_1C440A6B8(v47);
        (*(v53 + 8))(v54, v47);
      }

      sub_1C4EF9DF8();
      sub_1C440175C(v5, 1, v6);
      if (v60)
      {
        sub_1C4418958();
        sub_1C4EF9DC8();
        sub_1C440175C(v5, 1, v6);
        if (!v60)
        {
          sub_1C4607CD4(v5, &qword_1EC0C0B88, &qword_1C4F40128);
        }
      }

      else
      {
        (*v97)(v42, v5, v6);
      }

      if (*(v35 + 16))
      {
        break;
      }

LABEL_29:

      (*v101)(v42, v6);
LABEL_31:
      v84 = sub_1C4414D50();
      v85(v84);
LABEL_38:
      v26 = v102;
      if (++v41 == v105)
      {
        goto LABEL_39;
      }
    }

    v55 = *(v35 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    v56 = sub_1C4F02B68();
    v57 = ~(-1 << *(v35 + 32));
    do
    {
      v58 = v56 & v57;
      if (((*(v35 + 56 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
      {
        goto LABEL_29;
      }

      v59 = (*(v35 + 48) + 16 * v58);
      v60 = *v59 == v50 && v59[1] == v52;
      if (v60)
      {
        break;
      }

      v61 = sub_1C4F02938();
      v56 = v58 + 1;
    }

    while ((v61 & 1) == 0);
    v62 = sub_1C4F01108();

    v63 = sub_1C4F01138();
    v65 = v64;

    v66 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66)
    {

      v42 = v99;
      (*v101)(v99, v6);
      goto LABEL_31;
    }

    sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
    v67 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
    v68 = *(*v67 + 72);
    v69 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v95;
    v71 = v67[14];
    *(v70 + v69) = v62;
    (*v96)(v70 + v69 + v71, v99, v6);
    type metadata accessor for NLLanguage(0);
    sub_1C4419C1C();
    sub_1C49BF7C4(&qword_1EDDDBB40, v72);
    v73 = v62;
    v74 = sub_1C4F00F28();
    v75 = v98;
    swift_isUniquelyReferenced_nonNull_native();
    v110 = v75;
    sub_1C457B120(v74);
    sub_1C43FC438();
    if (__OFADD__(v78, v79))
    {
      __break(1u);
    }

    else
    {
      v80 = v76;
      v81 = v77;
      sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
      if (sub_1C4F02458())
      {
        sub_1C457B120(v74);
        v42 = v99;
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_43;
        }

        v80 = v82;
      }

      else
      {
        v42 = v99;
      }

      v86 = v110;
      v98 = v110;
      if (v81)
      {
        *(v110[7] + 8 * v80) = 0x3FF0000000000000;

LABEL_37:
        v6 = v93;
        (*v101)(v42, v93);
        v90 = sub_1C4414D50();
        v91(v90);
        v5 = v94;
        goto LABEL_38;
      }

      v110[(v80 >> 6) + 8] |= 1 << v80;
      *(v86[6] + 8 * v80) = v74;
      *(v86[7] + 8 * v80) = 0x3FF0000000000000;
      v87 = v86[2];
      v88 = __OFADD__(v87, 1);
      v89 = v87 + 1;
      if (!v88)
      {
        v86[2] = v89;

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  sub_1C4F029F8();
  __break(1u);
}

unint64_t sub_1C49BC7C4()
{
  result = qword_1EC0C0BE0;
  if (!qword_1EC0C0BE0)
  {
    sub_1C4572308(&qword_1EC0C0BD8, &qword_1C4F40170);
    sub_1C49BF7C4(&qword_1EC0B8590, MEMORY[0x1E6969680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0BE0);
  }

  return result;
}

void sub_1C49BC878()
{
  sub_1C43FBD3C();
  v0 = sub_1C4EF9E48();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBD08();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  v16 = sub_1C43FBD18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  sub_1C4EF9E08();
  sub_1C4EF9DF8();
  v25 = *(v3 + 8);
  v54 = v0;
  v25(v14, v0);
  v26 = sub_1C4EF9DD8();
  sub_1C440175C(v24, 1, v26);
  if (v27)
  {
    sub_1C4607CD4(v24, &qword_1EC0C0B88, &qword_1C4F40128);
  }

  else
  {
    sub_1C4EF9D68();
    sub_1C440A6B8(v26);
    (*(v28 + 8))(v24, v26);
  }

  sub_1C4EF9E08();
  v29 = sub_1C4EF9D98();
  v25(v11, v54);
  v30 = *MEMORY[0x1E695D978];
  v31 = sub_1C4F01108();

  v32 = [v29 displayNameForKey:v30 value:v31];

  if (v32)
  {
    v33 = sub_1C4F01138();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
  v36 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
  v37 = *(*v36 + 72);
  v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C4F0D130;
  v40 = (v39 + v38);
  if (v35)
  {
    v41 = v33;
  }

  else
  {
    v41 = 0;
  }

  if (v35)
  {
    v42 = v35;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v43 = v36[14];
  sub_1C49BE160(v41, v42);
  v45 = v44;

  *v40 = v45;
  sub_1C4EF9E08();
  sub_1C4EF9DF8();
  v25(v8, v54);
  v46 = sub_1C440D3D8();
  sub_1C440175C(v46, v47, v26);
  if (v27)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    v48 = sub_1C440D3D8();
    sub_1C440175C(v48, v49, v26);
    if (!v27)
    {
      sub_1C4607CD4(v21, &qword_1EC0C0B88, &qword_1C4F40128);
    }
  }

  else
  {
    sub_1C440A6B8(v26);
    (*(v50 + 32))(&v40[v43], v21, v26);
  }

  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v51, v52);
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

void sub_1C49BCCB8()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  sub_1C43FBD18(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v58 - v4;
  v5 = sub_1C4EF9DD8();
  v6 = sub_1C43FCDF8(v5);
  v61 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v60 = v11 - v10;
  v12 = sub_1C4EF9E28();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EF9E48();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v33 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v33);
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v58 - v37;
  sub_1C4EF9E08();
  sub_1C4EF9E38();
  v39 = *(v24 + 8);
  v39(v32, v21);
  sub_1C4EF9E18();
  (*(v15 + 8))(v20, v12);
  v40 = sub_1C4EF9D78();
  sub_1C440175C(v38, 1, v40);
  if (v41)
  {
    sub_1C4607CD4(v38, &qword_1EC0BC018, &unk_1C4F23180);
  }

  else
  {
    sub_1C4EF9D68();
    sub_1C440A6B8(v40);
    (*(v42 + 8))(v38, v40);
  }

  v43 = sub_1C4F01108();

  sub_1C4EF9E08();
  v44 = v59;
  sub_1C4EF9DF8();
  v39(v29, v21);
  v45 = sub_1C440D3D8();
  sub_1C440175C(v45, v46, v5);
  if (v41)
  {
    v50 = v60;
    sub_1C4418958();
    sub_1C4EF9DC8();
    v47 = sub_1C440D3D8();
    sub_1C440175C(v47, v48, v5);
    v49 = v61;
    if (!v41)
    {
      sub_1C4607CD4(v44, &qword_1EC0C0B88, &qword_1C4F40128);
    }
  }

  else
  {
    v50 = v60;
    v49 = v61;
    (*(v61 + 32))(v60, v44, v5);
  }

  sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
  v51 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
  v52 = *(*v51 + 72);
  v53 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C4F0D130;
  v55 = v51[14];
  *(v54 + v53) = v43;
  (*(v49 + 16))(v54 + v53 + v55, v50, v5);
  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v56, v57);
  sub_1C4F00F28();
  (*(v49 + 8))(v50, v5);
  sub_1C43FE9F0();
}

uint64_t sub_1C49BD178()
{
  v67 = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
  sub_1C49BC7C4();
  *(v0 + 16) = sub_1C4F00F28();
  v1 = (v0 + 16);
  v2 = [objc_opt_self() supportedLanguages];
  v3 = sub_1C4F01AB8();

  v4 = [objc_allocWithZone(MEMORY[0x1E69BDCA0]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69BDC98]) init];
  [v5 setLimit_];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v0;
  aBlock[4] = sub_1C49BF80C;
  v66 = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C49BF8F0;
  aBlock[3] = &unk_1F43F37B0;
  v7 = _Block_copy(aBlock);
  LODWORD(v3) = v66;

  aBlock[0] = 0;
  v63 = v4;
  [v4 iterRankedLocationsWithQuery:v5 error:aBlock block:v7];
  v8 = sub_1C44251FC();
  _Block_release(v8);
  if (v3)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
LABEL_30:
      sub_1C43FE9B4();
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v61 = v5;
      v16 = v1;
      v17 = sub_1C43FD084();
      v18 = sub_1C43FFD34();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = v11;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v20 = sub_1C4F01198();
      v22 = sub_1C441D828(v20, v21, aBlock);

      *(v17 + 4) = v22;
      sub_1C43FD0B4();
      _os_log_impl(v23, v24, v25, v26, v17, 0xCu);
      sub_1C440962C(v18);
      sub_1C43FBE2C();
      v1 = v16;
      v5 = v61;
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v11 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_27:

    v55 = *(v0 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v56 = *MEMORY[0x1E69E9840];
    return v55;
  }

  v62 = v5;
  v58 = v0;
  v28 = v11 + 64;
  v27 = *(v11 + 64);
  v29 = *(v11 + 32);
  sub_1C43FD030();
  v32 = v31 & v30;
  v5 = ((v33 + 63) >> 6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = 0;
  v59 = v11;
  v60 = v1;
  while (1)
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v34 = v0 + 1;
          if (__OFADD__(v0, 1))
          {
            break;
          }

          if (v34 >= v5)
          {

            v0 = v58;
            v5 = v62;
            goto LABEL_27;
          }

          v32 = *(v28 + 8 * v34);
          ++v0;
          if (v32)
          {
            v0 = v34;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = *(*(v11 + 48) + ((v0 << 9) | (8 * v35)));
      swift_beginAccess();
      v37 = *v1;
      v38 = *(*v1 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v38)
      {
        sub_1C457B120(v36);
        if (v40)
        {
          break;
        }
      }

      swift_endAccess();
    }

    v41 = *(*(v37 + 56) + 8 * v39);
    swift_endAccess();
    swift_beginAccess();
    v42 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v64 = *v1;
    *v1 = 0x8000000000000000;
    sub_1C457B120(v36);
    sub_1C43FC438();
    v1 = (v45 + v46);
    if (__OFADD__(v45, v46))
    {
      goto LABEL_29;
    }

    v47 = v43;
    v48 = v44;
    sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_20:
    if (v48)
    {

      v51 = v64;
      *(v64[7] + 8 * v47) = v41;
    }

    else
    {
      v51 = v64;
      v64[(v47 >> 6) + 8] |= 1 << v47;
      *(v64[6] + 8 * v47) = v36;
      *(v64[7] + 8 * v47) = v41;
      v52 = v64[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        __break(1u);
      }

      v64[2] = v54;
    }

    v1 = v60;
    *v60 = v51;
    swift_endAccess();
    v11 = v59;
  }

  sub_1C457B120(v36);
  if ((v48 & 1) == (v50 & 1))
  {
    v47 = v49;
    goto LABEL_20;
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49BD738(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v7, v8);
  v9 = sub_1C4F00F28();
  v68 = MEMORY[0x1E69E7CD0];
  v10 = [objc_opt_self() supportedLanguages];
  sub_1C4F01AB8();

  if (sub_1C4428DA0())
  {
    sub_1C4426C7C();
    sub_1C43FDAB8();
    while (1)
    {
      if (v65)
      {
        v11 = sub_1C43FD258();
        v12 = MEMORY[0x1C6940F90](v11);
      }

      else
      {
        if (v3 >= *(v62 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(a1 + 8 * v3 + 32);
      }

      v10 = v12;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v66 = v3 + 1;
      v13 = sub_1C4405E4C();
      v14 = [v13 bundleId];

      v15 = sub_1C4F01138();
      v17 = v16;

      v18 = v15 == 0xD000000000000013 && v4 == v17;
      if (v18)
      {
        break;
      }

      sub_1C4F02938();
      sub_1C44251FC();

      if (v15)
      {
        goto LABEL_15;
      }

LABEL_27:
      ++v3;
      if (v66 == v2)
      {
        v41 = v1;

        goto LABEL_30;
      }
    }

LABEL_15:
    v19 = sub_1C4405E4C();
    v20 = [v19 documentId];

    v21 = sub_1C4F01138();
    v23 = v22;

    if (sub_1C4499AD0(v21, v23, v68))
    {
    }

    else
    {
      v24 = sub_1C4405E4C();
      sub_1C49BF814(v24, &selRef_language);
      v25 = sub_1C4F01108();

      sub_1C4F01138();
      sub_1C44249A8();

      v26 = sub_1C4410428();
      v28 = sub_1C4499AD0(v26, v27, v63);

      if (v28)
      {
        sub_1C44239FC(v1);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4416238();
        sub_1C457EB50(v25);
        sub_1C43FC438();
        if (__OFADD__(v30, v31))
        {
          goto LABEL_54;
        }

        v32 = v29;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        v33 = sub_1C4F02458();
        v9 = v67;
        if (v33)
        {
          v33 = sub_1C457EB50(v25);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_57;
          }
        }

        if ((v32 & 1) == 0)
        {
          sub_1C441C368();
          v33 = v25;
        }

        sub_1C4403438(v33, v34, v35, v36, v37, v38, v39, v40, v60);

        v1 = sub_1C457EB40;
      }

      else
      {
      }

      v2 = v61;
    }

    v4 = v64;
    goto LABEL_27;
  }

  v41 = 0;
LABEL_30:

  v42 = *(v9 + 64);
  v43 = *(v9 + 32);
  sub_1C43FD030();
  sub_1C444FE30();
  v44 = 0;
  v45 = v9;
  while (v4)
  {
    v46 = v4;
LABEL_37:
    v4 = (v46 - 1) & v46;
    if (*(v45 + 16))
    {
      v48 = sub_1C4408CD8(v46);
      v49 = sub_1C457EB50(v48);
      if (v50)
      {
        sub_1C445E8CC(v49);
        sub_1C4416238();
        v51 = sub_1C457EB50(v48);
        sub_1C4425DA0(v51, v52);
        if (v54)
        {
          goto LABEL_55;
        }

        v55 = v53;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        if (sub_1C4F02458())
        {
          sub_1C457EB50(v48);
          sub_1C441E548();
          if (!v18)
          {
            goto LABEL_57;
          }

          v55 = v56;
        }

        else
        {
          v57 = v66;
        }

        v45 = v67;
        if (v57)
        {
          *(*(v67 + 56) + 8 * v55) = v5;
        }

        else
        {
          sub_1C440AE30();
          if (v54)
          {
            goto LABEL_56;
          }

          *(v67 + 16) = v58;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v10)
    {

      sub_1C44239FC(v41);
      return v45;
    }

    v46 = *(v9 + 64 + 8 * v47);
    ++v44;
    if (v46)
    {
      v44 = v47;
      goto LABEL_37;
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
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49BDC4C(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v7, v8);
  v9 = sub_1C4F00F28();
  v68 = MEMORY[0x1E69E7CD0];
  v10 = [objc_opt_self() supportedLanguages];
  sub_1C4F01AB8();

  if (sub_1C4428DA0())
  {
    sub_1C4426C7C();
    sub_1C43FDAB8();
    while (1)
    {
      if (v65)
      {
        v11 = sub_1C43FD258();
        v12 = MEMORY[0x1C6940F90](v11);
      }

      else
      {
        if (v3 >= *(v62 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(a1 + 8 * v3 + 32);
      }

      v10 = v12;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v66 = v3 + 1;
      v13 = sub_1C4405E4C();
      v14 = [v13 bundleId];

      v15 = sub_1C4F01138();
      v17 = v16;

      v18 = v15 == 0xD000000000000016 && v4 == v17;
      if (v18)
      {
        break;
      }

      sub_1C4F02938();
      sub_1C44251FC();

      if (v15)
      {
        goto LABEL_15;
      }

LABEL_27:
      ++v3;
      if (v66 == v2)
      {
        v41 = v1;

        goto LABEL_30;
      }
    }

LABEL_15:
    v19 = sub_1C4405E4C();
    v20 = [v19 documentId];

    v21 = sub_1C4F01138();
    v23 = v22;

    if (sub_1C4499AD0(v21, v23, v68))
    {
    }

    else
    {
      v24 = sub_1C4405E4C();
      sub_1C49BF814(v24, &selRef_language);
      v25 = sub_1C4F01108();

      sub_1C4F01138();
      sub_1C44249A8();

      v26 = sub_1C4410428();
      v28 = sub_1C4499AD0(v26, v27, v63);

      if (v28)
      {
        sub_1C44239FC(v1);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4416238();
        sub_1C457EB50(v25);
        sub_1C43FC438();
        if (__OFADD__(v30, v31))
        {
          goto LABEL_54;
        }

        v32 = v29;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        v33 = sub_1C4F02458();
        v9 = v67;
        if (v33)
        {
          v33 = sub_1C457EB50(v25);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_57;
          }
        }

        if ((v32 & 1) == 0)
        {
          sub_1C441C368();
          v33 = v25;
        }

        sub_1C4403438(v33, v34, v35, v36, v37, v38, v39, v40, v60);

        v1 = sub_1C457EB40;
      }

      else
      {
      }

      v2 = v61;
    }

    v4 = v64;
    goto LABEL_27;
  }

  v41 = 0;
LABEL_30:

  v42 = *(v9 + 64);
  v43 = *(v9 + 32);
  sub_1C43FD030();
  sub_1C444FE30();
  v44 = 0;
  v45 = v9;
  while (v4)
  {
    v46 = v4;
LABEL_37:
    v4 = (v46 - 1) & v46;
    if (*(v45 + 16))
    {
      v48 = sub_1C4408CD8(v46);
      v49 = sub_1C457EB50(v48);
      if (v50)
      {
        sub_1C445E8CC(v49);
        sub_1C4416238();
        v51 = sub_1C457EB50(v48);
        sub_1C4425DA0(v51, v52);
        if (v54)
        {
          goto LABEL_55;
        }

        v55 = v53;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        if (sub_1C4F02458())
        {
          sub_1C457EB50(v48);
          sub_1C441E548();
          if (!v18)
          {
            goto LABEL_57;
          }

          v55 = v56;
        }

        else
        {
          v57 = v66;
        }

        v45 = v67;
        if (v57)
        {
          *(*(v67 + 56) + 8 * v55) = v5;
        }

        else
        {
          sub_1C440AE30();
          if (v54)
          {
            goto LABEL_56;
          }

          *(v67 + 16) = v58;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v10)
    {

      sub_1C44239FC(v41);
      return v45;
    }

    v46 = *(v9 + 64 + 8 * v47);
    ++v44;
    if (v46)
    {
      v44 = v47;
      goto LABEL_37;
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
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C49BE160(uint64_t a1, uint64_t a2)
{
  sub_1C49BED94();
  if (v4)
  {
    v5 = sub_1C4A6D598(v4);

    if (v5)
    {
      v6 = *(v5 + 64);
      v7 = *(v5 + 32);
      sub_1C43FD030();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = 0;
      while (v10)
      {
LABEL_9:
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
        if (*v16 != a1 || v16[1] != a2)
        {
          sub_1C43FE990();
          if ((sub_1C4F02938() & 1) == 0)
          {
            continue;
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        if (*(v5 + 16))
        {
          v18 = sub_1C43FE990();
          v36 = sub_1C445FAA8(v18, v19);
          v21 = v20;

          if (v21)
          {
            sub_1C43FF328(v22, v23, v24, v25, v26, v27, v28, v29, v36);
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          sub_1C4EF9DA8();

          sub_1C4F01108();

          sub_1C4410198();
          return;
        }

        v10 = *(v5 + 64 + 8 * v14);
        ++v13;
        if (v10)
        {
          v13 = v14;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  if (qword_1EDDFECA0 != -1)
  {
LABEL_26:
    sub_1C441748C();
  }

  v30 = sub_1C4F00978();
  sub_1C43FCEE8(v30, qword_1EDE2DF58);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CD8();
  if (os_log_type_enabled(v31, v32))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v33, v34, "Mapping file countries_languages could not be extracted for Languages");
    sub_1C43FBE2C();
  }

  sub_1C4418958();
  sub_1C4410198();

  sub_1C4F01108();
}

uint64_t sub_1C49BE3C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1C442B870(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1C49BE4DC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v5 = sub_1C4EF9E48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v13 = sub_1C4EF9DD8();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  *&v15 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 location];
  v18 = [v17 placemark];

  v19 = sub_1C49BF814(v18, &selRef_ISOcountryCode);
  if (v20)
  {
    v21 = v19;
    v22 = v20;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v58 = v13;
      v24 = [a1 location];
      v25 = [v24 placemark];

      sub_1C49BF814(v25, &selRef_ISOcountryCode);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9DE8();
      v26 = [a1 location];
      v27 = [v26 placemark];

      sub_1C49BF814(v27, &selRef_administrativeArea);
      sub_1C4EF9D48();
      v28 = sub_1C4EF9D88();
      v30 = v29;

      v31 = *(v6 + 8);
      v31(v12, v5);
      sub_1C4EF9D48();
      v32 = sub_1C4EF9D88();
      v34 = v33;

      v31(v9, v5);
      v35 = sub_1C49BEAC4(v32, v34, v28, v30);

      v36 = sub_1C4F01138();
      LOBYTE(v27) = sub_1C4499AD0(v36, v37, v60);

      if ((v27 & 1) == 0)
      {
        (*(v61 + 8))(v62, v58);

        return;
      }

      sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
      v38 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
      v39 = *(*v38 + 72);
      v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1C4F0D130;
      v42 = v38[14];
      *(v41 + v40) = v35;
      (*(v61 + 16))(v41 + v40 + v42, v62, v58);
      type metadata accessor for NLLanguage(0);
      sub_1C49BF7C4(&qword_1EDDDBB40, type metadata accessor for NLLanguage);
      v43 = v35;
      v44 = sub_1C4F00F28();
      v45 = v59;
      swift_beginAccess();
      v46 = *(v45 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v63 = *(v45 + 16);
      v47 = v63;
      *(v45 + 16) = 0x8000000000000000;
      sub_1C457B120(v44);
      if (__OFADD__(*(v47 + 16), (v49 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v50 = v48;
        v51 = v49;
        sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
        v52 = sub_1C4F02458();
        v54 = v62;
        v53 = v63;
        if ((v52 & 1) == 0)
        {
LABEL_10:
          *(v45 + 16) = v53;
          if ((v51 & 1) == 0)
          {
            sub_1C457EB34(v50, v44, v53, 0.0);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          *(*(v53 + 56) + 8 * v50) = *(*(v53 + 56) + 8 * v50) + 1.0;
          swift_endAccess();

          (*(v61 + 8))(v54, v58);
          return;
        }

        sub_1C457B120(v44);
        if ((v51 & 1) == (v56 & 1))
        {
          v50 = v55;
          goto LABEL_10;
        }
      }

      sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
      sub_1C4F029F8();
      __break(1u);
    }
  }
}

void *sub_1C49BEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49BF34C(v6, v7);
  v9 = v8;

  v10 = sub_1C4F01138();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    return v9;
  }

  if (a4)
  {
    v15 = a4;
  }

  else
  {
    a3 = 0;
    v15 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49BE160(a3, v15);
  v17 = v16;

  return v17;
}

uint64_t sub_1C49BEB90()
{
  v0 = sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v1 = sub_1C4F01E88();
  v2 = sub_1C440E4FC(v1);
  v4 = v3;

  if (v4)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v5 = sub_1C4F00978();
    sub_1C43FCEE8(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_1C43FD084();
      v24 = sub_1C43FFD34();
      *v8 = 136315138;
      sub_1C4415B10();
      *(v8 + 4) = sub_1C441D828(0xD000000000000018, v9, v10);
      sub_1C44003E4(&dword_1C43F8000, v11, v12, "Loading %s from Core framework.");
      sub_1C440962C(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v15))
    {
      v16 = sub_1C43FD084();
      v25 = sub_1C43FFD34();
      *v16 = 136315138;
      sub_1C4415B10();
      *(v16 + 4) = sub_1C441D828(0xD000000000000018, v17, v18);
      sub_1C43FD0B4();
      _os_log_impl(v19, v20, v21, v22, v16, 0xCu);
      sub_1C440962C(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v2;
}

void sub_1C49BED94()
{
  sub_1C43FBD3C();
  v1 = v0;
  v41 = *MEMORY[0x1E69E9840];
  v2 = sub_1C4EF98F8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v1();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = objc_autoreleasePoolPush();
    sub_1C4EF9838();
    sub_1C4EF9938();
    v28 = objc_opt_self();
    v29 = *(v5 + 8);
    v30 = sub_1C43FE990();
    v31(v30);
    sub_1C43FD258();
    v32 = sub_1C4EF9A38();
    v33 = sub_1C43FD258();
    sub_1C4434000(v33, v34);
    v39[0] = 0;
    v35 = [v28 JSONObjectWithData:v32 options:0 error:v39];

    if (v35)
    {
      v36 = v39[0];
      sub_1C4F02078();
      swift_unknownObjectRelease();
      sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v40 = 0;
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v37 = v39[0];
      v38 = sub_1C4EF97A8();

      swift_willThrow();
      objc_autoreleasePoolPop(v12);
      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4();
      }

      v13 = sub_1C4F00978();
      sub_1C43FCEE8(v13, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v14 = v38;
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CE8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        *v17 = 136315394;
        v18 = sub_1C441D828(v10, v11, v39);

        *(v17 + 4) = v18;
        *(v17 + 12) = 2080;
        v40 = v38;
        v19 = v38;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v20 = sub_1C4F01198();
        v22 = sub_1C441D828(v20, v21, v39);

        *(v17 + 14) = v22;
        sub_1C43FD0B4();
        _os_log_impl(v23, v24, v25, v26, v17, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  sub_1C43FE9F0();
}

uint64_t sub_1C49BF148()
{
  v0 = sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v1 = sub_1C4F01E88();
  v2 = sub_1C440E4FC(v1);
  v4 = v3;

  if (v4)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v5 = sub_1C4F00978();
    sub_1C43FCEE8(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_1C43FD084();
      v24 = sub_1C43FFD34();
      *v8 = 136315138;
      sub_1C4415B10();
      *(v8 + 4) = sub_1C441D828(0xD000000000000016, v9, v10);
      sub_1C44003E4(&dword_1C43F8000, v11, v12, "Loading %s from Core framework.");
      sub_1C440962C(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v15))
    {
      v16 = sub_1C43FD084();
      v25 = sub_1C43FFD34();
      *v16 = 136315138;
      sub_1C4415B10();
      *(v16 + 4) = sub_1C441D828(0xD000000000000016, v17, v18);
      sub_1C43FD0B4();
      _os_log_impl(v19, v20, v21, v22, v16, 0xCu);
      sub_1C440962C(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v2;
}

void sub_1C49BF34C(uint64_t a1, uint64_t a2)
{
  sub_1C49BED94();
  if (!v4 || (v5 = sub_1C4A6D598(v4), , !v5))
  {
    if (qword_1EDDFECA0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v6 = *(v5 + 64);
  v7 = *(v5 + 32);
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    if (*v16 == a1 && v17 == a2)
    {
      v18 = a1;
LABEL_16:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v5 + 16))
      {
        v38 = sub_1C445FAA8(v18, v17);
        v23 = v22;

        if (v23)
        {
          sub_1C43FF328(v24, v25, v26, v27, v28, v29, v30, v31, v38);
        }
      }

      else
      {
      }
    }

    else
    {
      v20 = *v16;
      v21 = v16[1];
      if (sub_1C4F02938())
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      sub_1C4EF9DA8();
      sub_1C44249A8();

      sub_1C4410428();
      sub_1C4F01108();

      sub_1C4410198();
      return;
    }

    v10 = *(v5 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  sub_1C441748C();
LABEL_21:
  v32 = sub_1C4F00978();
  sub_1C43FCEE8(v32, qword_1EDE2DF58);
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CD8();
  if (os_log_type_enabled(v33, v34))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v35, v36, "Mapping file regions_languages could not be extracted for Languages");
    sub_1C43FBE2C();
  }

  sub_1C4418958();
  sub_1C4410198();

  sub_1C4F01108();
}

uint64_t sub_1C49BF5C8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return swift_endAccess();
}

void sub_1C49BF650(uint64_t a1, void *a2)
{
  v3 = sub_1C4F01AA8();

  [a2 setMatchingSourceBundleIds_];
}

void sub_1C49BF6C4(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  sub_1C49BF880();
  v3 = sub_1C4F01AA8();

  [a2 setMatchingAlgorithms_];
}

uint64_t sub_1C49BF75C(void *a1)
{
  v2 = [a1 enabledInputModeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C49BF7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C49BF814(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_1C4F01138();
    sub_1C44249A8();
  }

  return sub_1C4410428();
}

unint64_t sub_1C49BF880()
{
  result = qword_1EDDF0370;
  if (!qword_1EDDF0370)
  {
    sub_1C4461BB8(255, &qword_1EDDFE8E0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0370);
  }

  return result;
}

uint64_t sub_1C49BF8F4()
{
  sub_1C442BCF0();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = v2 + 32;
  if (v3)
  {
    while (1)
    {
      v1(&v11, v5);
      if (v0)
      {
        break;
      }

      if (v12)
      {
        sub_1C443FA18(&v11, v13);
        sub_1C443FA18(v13, &v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = *(v4 + 16);
          sub_1C43FCEC0();
          sub_1C458A528();
          v4 = v8;
        }

        v6 = *(v4 + 16);
        if (v6 >= *(v4 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458A528();
          v4 = v9;
        }

        *(v4 + 16) = v6 + 1;
        sub_1C443FA18(&v11, v4 + 40 * v6 + 32);
      }

      else
      {
        sub_1C4420C3C(&v11, &qword_1EC0C0C48, &qword_1C4F402B8);
      }

      v5 += 40;
      if (!--v3)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

uint64_t sub_1C49BFA2C(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v21[0] = *(v5 - 1);
      v21[1] = v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22(v18, v21);
      if (v3)
      {
        break;
      }

      v8 = v20;
      if (v20 != 255)
      {
        v16 = v18[1];
        v17 = v18[0];
        v9 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = *(v6 + 16);
          sub_1C43FCEC0();
          sub_1C458AFD0();
          v6 = v13;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458AFD0();
          v6 = v14;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 48 * v10;
        *(v11 + 32) = v17;
        *(v11 + 48) = v16;
        *(v11 + 64) = v9;
        *(v11 + 72) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

uint64_t sub_1C49BFB70()
{
  sub_1C442BCF0();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v14 = *v4;
      v1(&v13, &v14);
      if (v0)
      {
        break;
      }

      if (v13)
      {
        v12 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = *(v5 + 16);
          sub_1C43FCEC0();
          sub_1C458B1B8();
          v5 = v9;
        }

        v6 = *(v5 + 16);
        v7 = v12;
        if (v6 >= *(v5 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458B1B8();
          v7 = v12;
          v5 = v10;
        }

        *(v5 + 16) = v6 + 1;
        *(v5 + 16 * v6 + 32) = v7;
      }

      ++v4;
      if (!--v3)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

void sub_1C49BFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v66 = v27;
  v29 = v28;
  v30 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v60 - v34;
  v36 = sub_1C4EF9CD8();
  v37 = sub_1C43FCDF8(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  v65 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v60[0] = v42;
  v60[1] = v43;
  v64 = (v43 + 32);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v26;
  v62 = v29;
  v63 = v26;
  v61 = v46;
  while (1)
  {
    if (v24 == v45)
    {
      goto LABEL_15;
    }

    if (v24 < v26)
    {
      break;
    }

    if (v45 >= v24)
    {
      goto LABEL_17;
    }

    a10 = v45;
    v29(&a10);
    if (v20)
    {

LABEL_15:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    if (sub_1C44157D4(v35, 1, v36) == 1)
    {
      sub_1C4420C3C(v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v47 = *v64;
      v48 = v60[0];
      (*v64)(v60[0], v35, v36);
      v47(v65, v48, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v44 + 16);
        v55 = sub_1C43FCEC0();
        sub_1C458B150(v55, v56, v57, v44);
        v44 = v58;
      }

      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C458B150(v49 > 1, v50 + 1, 1, v44);
        v44 = v59;
      }

      *(v44 + 16) = v50 + 1;
      sub_1C43FBF6C();
      v53 = v44 + v51 + *(v52 + 72) * v50;
      v36 = v61;
      v47(v53, v65, v61);
      v29 = v62;
      v26 = v63;
    }

    ++v45;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1C49BFEF8()
{
  sub_1C442BCF0();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v5 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      goto LABEL_14;
    }

    if (v2 >= v4)
    {
      break;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v1(&v16, v7);
    if (v0)
    {

LABEL_14:
      sub_1C4408D00();
      return;
    }

    ++v2;
    v7 += 40;
    if (v16)
    {
      v15 = v16;
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v6 + 16);
        sub_1C43FCEC0();
        sub_1C458BC20();
        v6 = v13;
      }

      v9 = *(v6 + 16);
      v10 = v15;
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C458BC20();
        v10 = v15;
        v6 = v14;
      }

      *(v6 + 16) = v9 + 1;
      v11 = v6 + 24 * v9;
      *(v11 + 32) = v10;
      *(v11 + 48) = v18;
      v2 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C49C003C()
{
  sub_1C43FE96C();
  sub_1C4405E64();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C0C10, &qword_1C4F40270);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE94C();
  v9 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v10 = sub_1C43FCDF8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v34 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v33 = v15;
  v16 = 0;
  v17 = *(v1 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  while (v17 != v16)
  {
    v18 = *(sub_1C456902C(&qword_1EC0C0C18, &unk_1C4F40490) - 8);
    v4(v1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v0)
    {

      break;
    }

    v19 = sub_1C441B908();
    if (sub_1C44157D4(v19, v20, v9) == 1)
    {
      sub_1C4420C3C(v2, &qword_1EC0C0C10, &qword_1C4F40270);
      ++v16;
    }

    else
    {
      sub_1C4571F0C(v2, v33);
      sub_1C4571F0C(v33, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v35 + 16);
        sub_1C43FCEC0();
        sub_1C458C320();
        v35 = v29;
      }

      v21 = *(v35 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v35 + 24) >> 1)
      {
        v31 = *(v35 + 16);
        v32 = v21 + 1;
        sub_1C458C320();
        v22 = v32;
        v35 = v30;
      }

      ++v16;
      *(v35 + 16) = v22;
      sub_1C43FBF6C();
      sub_1C4571F0C(v27, v24 + v23 + *(v25 + 72) * v26);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}