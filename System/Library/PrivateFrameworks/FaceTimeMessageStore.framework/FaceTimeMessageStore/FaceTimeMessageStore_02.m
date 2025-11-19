uint64_t sub_1BC7D0794(unsigned __int8 a1)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D07DC(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC7D089C()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC7CF55C(v3, v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D08E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D0560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D0930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D078C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D0958(uint64_t a1)
{
  v2 = sub_1BC7D1290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0994(uint64_t a1)
{
  v2 = sub_1BC7D1290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D09D0(uint64_t a1)
{
  v2 = sub_1BC7D1338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0A0C(uint64_t a1)
{
  v2 = sub_1BC7D1338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0A48(uint64_t a1)
{
  v2 = sub_1BC7D12E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0A84(uint64_t a1)
{
  v2 = sub_1BC7D12E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0AC0(uint64_t a1)
{
  v2 = sub_1BC7D13E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0AFC(uint64_t a1)
{
  v2 = sub_1BC7D13E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0B38(uint64_t a1)
{
  v2 = sub_1BC7D14DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0B74(uint64_t a1)
{
  v2 = sub_1BC7D14DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0BB0(uint64_t a1)
{
  v2 = sub_1BC7D1488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0BEC(uint64_t a1)
{
  v2 = sub_1BC7D1488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7D0C28(uint64_t a1)
{
  v2 = sub_1BC7D1434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D0C64(uint64_t a1)
{
  v2 = sub_1BC7D1434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BadgeCountCategory.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C30, &qword_1BC8FB540);
  v5 = OUTLINED_FUNCTION_0(v4);
  v85 = v6;
  v86 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v84 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C38, &qword_1BC8FB548);
  v12 = OUTLINED_FUNCTION_0(v11);
  v82 = v13;
  v83 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v81 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C40, &qword_1BC8FB550);
  v19 = OUTLINED_FUNCTION_0(v18);
  v79 = v20;
  v80 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  v78 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C48, &qword_1BC8FB558);
  v26 = OUTLINED_FUNCTION_0(v25);
  v76 = v27;
  v77 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v75 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C50, &qword_1BC8FB560);
  v33 = OUTLINED_FUNCTION_0(v32);
  v73 = v34;
  v74 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v72 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C58, &qword_1BC8FB568);
  v40 = OUTLINED_FUNCTION_0(v39);
  v70 = v41;
  v71 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v68 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C60, &qword_1BC8FB570);
  OUTLINED_FUNCTION_0(v47);
  v69 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v68 - v52;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4C68, &qword_1BC8FB578);
  OUTLINED_FUNCTION_0(v87);
  v55 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v68 - v59;
  v61 = *v2;
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7D1290();
  sub_1BC8F8CA4();
  v63 = (v55 + 8);
  switch(v61)
  {
    case 1:
      v89 = 1;
      sub_1BC7D1488();
      OUTLINED_FUNCTION_2_0();
      v67 = v70;
      v66 = v71;
      goto LABEL_9;
    case 2:
      v90 = 2;
      sub_1BC7D1434();
      v46 = v72;
      OUTLINED_FUNCTION_2_0();
      v67 = v73;
      v66 = v74;
      goto LABEL_9;
    case 3:
      v91 = 3;
      sub_1BC7D13E0();
      v46 = v75;
      OUTLINED_FUNCTION_2_0();
      v67 = v76;
      v66 = v77;
      goto LABEL_9;
    case 4:
      v92 = 4;
      sub_1BC7D138C();
      v46 = v78;
      OUTLINED_FUNCTION_2_0();
      v67 = v79;
      v66 = v80;
      goto LABEL_9;
    case 5:
      v93 = 5;
      sub_1BC7D1338();
      v46 = v81;
      OUTLINED_FUNCTION_2_0();
      v67 = v82;
      v66 = v83;
      goto LABEL_9;
    case 6:
      v94 = 6;
      sub_1BC7D12E4();
      v46 = v84;
      OUTLINED_FUNCTION_2_0();
      v67 = v85;
      v66 = v86;
LABEL_9:
      (*(v67 + 8))(v46, v66);
      result = (*v63)(v60, v47);
      break;
    default:
      v88 = 0;
      sub_1BC7D14DC();
      v64 = v87;
      sub_1BC8F8934();
      (*(v69 + 8))(v53, v47);
      result = (*v63)(v60, v64);
      break;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BC7D1290()
{
  result = qword_1EBCF4C70;
  if (!qword_1EBCF4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C70);
  }

  return result;
}

unint64_t sub_1BC7D12E4()
{
  result = qword_1EBCF4C78;
  if (!qword_1EBCF4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C78);
  }

  return result;
}

unint64_t sub_1BC7D1338()
{
  result = qword_1EBCF4C80;
  if (!qword_1EBCF4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C80);
  }

  return result;
}

unint64_t sub_1BC7D138C()
{
  result = qword_1EBCF4C88;
  if (!qword_1EBCF4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C88);
  }

  return result;
}

unint64_t sub_1BC7D13E0()
{
  result = qword_1EBCF4C90;
  if (!qword_1EBCF4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C90);
  }

  return result;
}

unint64_t sub_1BC7D1434()
{
  result = qword_1EBCF4C98;
  if (!qword_1EBCF4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4C98);
  }

  return result;
}

unint64_t sub_1BC7D1488()
{
  result = qword_1EBCF4CA0;
  if (!qword_1EBCF4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CA0);
  }

  return result;
}

unint64_t sub_1BC7D14DC()
{
  result = qword_1EBCF4CA8;
  if (!qword_1EBCF4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CA8);
  }

  return result;
}

uint64_t BadgeCountCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

void BadgeCountCategory.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CB0, &qword_1BC8FB580);
  v102 = OUTLINED_FUNCTION_0(v3);
  v103 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v109 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CB8, &qword_1BC8FB588);
  v100 = OUTLINED_FUNCTION_0(v9);
  v101 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v108 = v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CC0, &qword_1BC8FB590);
  OUTLINED_FUNCTION_0(v94);
  v99 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v105 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CC8, &qword_1BC8FB598);
  v21 = OUTLINED_FUNCTION_0(v20);
  v97 = v22;
  v98 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v104 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CD0, &qword_1BC8FB5A0);
  v28 = OUTLINED_FUNCTION_0(v27);
  v95 = v29;
  v96 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v107 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CD8, &qword_1BC8FB5A8);
  v35 = OUTLINED_FUNCTION_0(v34);
  v92 = v36;
  v93 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v86 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CE0, &qword_1BC8FB5B0);
  OUTLINED_FUNCTION_0(v42);
  v91 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v86 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4CE8, &qword_1BC8FB5B8);
  OUTLINED_FUNCTION_0(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v86 - v55;
  v57 = a1[3];
  v58 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_1BC7D1290();
  v59 = v111;
  sub_1BC8F8C84();
  if (v59)
  {
    goto LABEL_8;
  }

  v89 = v48;
  v88 = v42;
  v90 = v41;
  v61 = v107;
  v60 = v108;
  v62 = v109;
  v111 = v49;
  v63 = sub_1BC8F8914();
  sub_1BC7B7A64(v63, 0);
  if (v66 == v67 >> 1)
  {
    goto LABEL_7;
  }

  v86[1] = 0;
  if (v66 >= (v67 >> 1))
  {
    __break(1u);
    return;
  }

  v87 = *(v65 + v66);
  sub_1BC7D2698(v66 + 1, v67 >> 1, v64, v65, v66, v67);
  v69 = v68;
  v71 = v70;
  swift_unknownObjectRelease();
  if (v69 != v71 >> 1)
  {
LABEL_7:
    v76 = v56;
    v77 = sub_1BC8F8624();
    swift_allocError();
    v79 = v78;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v79 = &type metadata for BadgeCountCategory;
    v81 = v111;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v77);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v76, v81);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v110);
    return;
  }

  v72 = v51;
  v73 = v106;
  v74 = v111;
  switch(v87)
  {
    case 1:
      v113 = 1;
      sub_1BC7D1488();
      v62 = v90;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v84 = v92;
      v83 = v93;
      goto LABEL_15;
    case 2:
      v114 = 2;
      sub_1BC7D1434();
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      (*(v95 + 8))(v61, v96);
      break;
    case 3:
      v115 = 3;
      sub_1BC7D13E0();
      v62 = v104;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v84 = v97;
      v83 = v98;
      goto LABEL_15;
    case 4:
      v116 = 4;
      sub_1BC7D138C();
      v82 = v105;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      (*(v99 + 8))(v82, v94);
      break;
    case 5:
      v117 = 5;
      sub_1BC7D1338();
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      (*(v101 + 8))(v60, v100);
      break;
    case 6:
      v118 = 6;
      sub_1BC7D12E4();
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      v83 = v102;
      v84 = v103;
LABEL_15:
      (*(v84 + 8))(v62, v83);
      break;
    default:
      v112 = 0;
      sub_1BC7D14DC();
      v75 = v89;
      OUTLINED_FUNCTION_1_3();
      swift_unknownObjectRelease();
      (*(v91 + 8))(v75, v88);
      break;
  }

  (*(v72 + 8))(v56, v74);
  v85 = v110;
  *v73 = v87;
  __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_1BC7D1DD4()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D1E60()
{
  result = qword_1EBCF4CF0;
  if (!qword_1EBCF4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CF0);
  }

  return result;
}

unint64_t sub_1BC7D1EB8()
{
  result = qword_1EBCF4CF8;
  if (!qword_1EBCF4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4D00, &qword_1BC8FB680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4CF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1BC7D1F74(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC7D20C4()
{
  result = qword_1EBCF4D08;
  if (!qword_1EBCF4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D08);
  }

  return result;
}

unint64_t sub_1BC7D211C()
{
  result = qword_1EBCF4D10;
  if (!qword_1EBCF4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D10);
  }

  return result;
}

unint64_t sub_1BC7D2174()
{
  result = qword_1EBCF4D18;
  if (!qword_1EBCF4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D18);
  }

  return result;
}

unint64_t sub_1BC7D21CC()
{
  result = qword_1EBCF4D20;
  if (!qword_1EBCF4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D20);
  }

  return result;
}

unint64_t sub_1BC7D2224()
{
  result = qword_1EBCF4D28;
  if (!qword_1EBCF4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D28);
  }

  return result;
}

unint64_t sub_1BC7D227C()
{
  result = qword_1EBCF4D30;
  if (!qword_1EBCF4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D30);
  }

  return result;
}

unint64_t sub_1BC7D22D4()
{
  result = qword_1EBCF4D38;
  if (!qword_1EBCF4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D38);
  }

  return result;
}

unint64_t sub_1BC7D232C()
{
  result = qword_1EBCF4D40;
  if (!qword_1EBCF4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D40);
  }

  return result;
}

unint64_t sub_1BC7D2384()
{
  result = qword_1EBCF4D48;
  if (!qword_1EBCF4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D48);
  }

  return result;
}

unint64_t sub_1BC7D23DC()
{
  result = qword_1EBCF4D50;
  if (!qword_1EBCF4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D50);
  }

  return result;
}

unint64_t sub_1BC7D2434()
{
  result = qword_1EBCF4D58;
  if (!qword_1EBCF4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D58);
  }

  return result;
}

unint64_t sub_1BC7D248C()
{
  result = qword_1EBCF4D60;
  if (!qword_1EBCF4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D60);
  }

  return result;
}

unint64_t sub_1BC7D24E4()
{
  result = qword_1EBCF4D68;
  if (!qword_1EBCF4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D68);
  }

  return result;
}

unint64_t sub_1BC7D253C()
{
  result = qword_1EBCF4D70;
  if (!qword_1EBCF4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D70);
  }

  return result;
}

unint64_t sub_1BC7D2594()
{
  result = qword_1EBCF4D78;
  if (!qword_1EBCF4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D78);
  }

  return result;
}

unint64_t sub_1BC7D25EC()
{
  result = qword_1EBCF4D80;
  if (!qword_1EBCF4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D80);
  }

  return result;
}

unint64_t sub_1BC7D2644()
{
  result = qword_1EBCF4D88;
  if (!qword_1EBCF4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4D88);
  }

  return result;
}

uint64_t sub_1BC7D2698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1BC7D2724()
{
  result = 0.0;
  *(&xmmword_1EBD06790 + 9) = 0u;
  xmmword_1EBD06780 = 0u;
  xmmword_1EBD06790 = 0u;
  xmmword_1EBD06770 = 0u;
  return result;
}

double sub_1BC7D28B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = *(v2 + 56);
  v35 = 0u;
  memset(v36, 0, 24);
  v34 = 0u;
  v36[24] = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = (a1 + 32);
    do
    {
      v21 = *v20++;
      v22 = v13;
      v13 = v6;
      switch(v21)
      {
        case 1:
          v13 = v22;
          v15 = v5;
          break;
        case 2:
          break;
        case 3:
          v13 = v22;
          v16 = v7;
          break;
        case 4:
          v13 = v22;
          v17 = v8;
          break;
        case 5:
          v13 = v22;
          v18 = v9;
          break;
        case 6:
          v13 = v22;
          v19 = v10;
          break;
        default:
          v13 = v22;
          v14 = v4;
          break;
      }

      --v12;
    }

    while (v12);
    *&v36[8] = v18;
    *&v36[16] = v19;
    *(&v35 + 1) = v16;
    *v36 = v17;
    *&v34 = v14;
    *(&v34 + 1) = v15;
    *&v35 = v13;
  }

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v23 = sub_1BC8F7734();
  __swift_project_value_buffer(v23, qword_1EDC2B3A8);
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    v28 = sub_1BC8F7C94();
    v30 = sub_1BC7A9A4C(v28, v29, &v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1BC7A3000, v24, v25, "Filtered badge counts: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  swift_beginAccess();
  v31 = v35;
  *a2 = v34;
  a2[1] = v31;
  a2[2] = *v36;
  result = *&v36[9];
  *(a2 + 41) = *&v36[9];
  return result;
}

uint64_t sub_1BC7D2B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 56);
  result = *(a2 + 16);
  if (result)
  {
    v12 = (a2 + 40);
    do
    {
      v13 = *(v12 - 8);
      v15 = *v12;
      v12 += 2;
      v14 = v15;
      switch(v13)
      {
        case 1:
          v4 = v14;
          goto LABEL_10;
        case 2:
          v6 = v14;
          goto LABEL_10;
        case 3:
          v5 = v14;
          goto LABEL_10;
        case 4:
          v8 = v14;
          goto LABEL_10;
        case 5:
          v7 = v14;
          goto LABEL_10;
        case 6:
          v9 = v14;
LABEL_10:
          v14 = v3;
          break;
        default:
          break;
      }

      v3 = v14;
      --result;
    }

    while (result);
  }

  else
  {
    v14 = v3;
  }

  *a3 = v14;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 32) = v8;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  return result;
}

double sub_1BC7D2BB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7BE4();
  v5 = [a1 dataForKey_];

  if (!v5)
  {
    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = sub_1BC8F7734();
    __swift_project_value_buffer(v27, qword_1EDC2B368);
    v26 = sub_1BC8F7714();
    v28 = sub_1BC8F8204();
    if (os_log_type_enabled(v26, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v29, v30, "No stored badge count data found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_12;
  }

  v6 = sub_1BC8F70D4();
  v8 = v7;

  v9 = sub_1BC8F6C54();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7D4CEC();
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {

    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B368);
    v13 = v4;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v41[0] = v36;
      *v35 = 136446210;
      swift_getErrorValue();
      v17 = v39;
      v16 = v40;
      v38 = v8;
      v18 = sub_1BC8F83F4();
      v33 = &v33;
      OUTLINED_FUNCTION_0(v18);
      v34 = v15;
      v20 = *(v19 + 64);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v21);
      v37 = v6;
      OUTLINED_FUNCTION_7();
      (*(v22 + 16))(v6, v17, v16);
      OUTLINED_FUNCTION_16_0();
      v23 = OUTLINED_FUNCTION_13_3();
      v24(v23, v18);
      v25 = sub_1BC7A9A4C(v16, v17, v41);

      *(v35 + 4) = v25;
      OUTLINED_FUNCTION_20(&dword_1BC7A3000, "Failed to read badge counts %{public}s", v34);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v26 = sub_1BC8F7BE4();
    [a1 removeObjectForKey_];
    OUTLINED_FUNCTION_24_1();

LABEL_12:
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = 2;
    return result;
  }

  OUTLINED_FUNCTION_24_1();

  v32 = v41[1];
  *a2 = v41[0];
  *(a2 + 16) = v32;
  *(a2 + 32) = v42[0];
  result = *(v42 + 9);
  *(a2 + 41) = *(v42 + 9);
  return result;
}

uint64_t static BadgeCounts.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v2 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1] && a1[3].i64[0] == a2[3].i64[0])
  {
    v2 = a2[3].i8[8] ^ a1[3].i8[8] ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1BC7D2FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001BC90B580 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001BC90B5A0 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001BC90B5C0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BC90B5E0 == a2;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x756769626D417369 && a2 == 0xEB0000000073756FLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BC8F8AA4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BC7D326C(char a1)
{
  result = 0x756769626D417369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      return result;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1BC7D33A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D2FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D33C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D3264();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D33F0(uint64_t a1)
{
  v2 = sub_1BC7D366C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D342C(uint64_t a1)
{
  v2 = sub_1BC7D366C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BadgeCounts.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4D90, &qword_1BC8FBDC0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_1();
  v21 = *(v0 + 16);
  v19 = *(v0 + 32);
  v20 = *(v0 + 24);
  v18 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = v4[3];
  v13 = v4[4];
  v15 = v4;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1BC7D366C();
  OUTLINED_FUNCTION_18_0();
  sub_1BC8F89D4();
  if (!v1)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89D4();
    OUTLINED_FUNCTION_3_5();
    sub_1BC8F89B4();
  }

  (*(v7 + 8))(v2, v17);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7D366C()
{
  result = qword_1EDC203F8;
  if (!qword_1EDC203F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203F8);
  }

  return result;
}

uint64_t BadgeCounts.hash(into:)()
{
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1BFB2A020]();
  MEMORY[0x1BFB2A020](v7);
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v4);
  MEMORY[0x1BFB2A020](v5);
  return sub_1BC8F8C24();
}

uint64_t BadgeCounts.hashValue.getter()
{
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_14_0();
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v6);
  MEMORY[0x1BFB2A020](v7);
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  MEMORY[0x1BFB2A020](v4);
  MEMORY[0x1BFB2A020](v5);
  sub_1BC8F8C24();
  return sub_1BC8F8C64();
}

void BadgeCounts.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4D98, &qword_1BC8FBDC8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC7D366C();
  sub_1BC8F8C84();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_1();
    v10 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_2_1();
    v11 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_2_1();
    v19 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v18 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v17 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v16 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v15 = sub_1BC8F88D4();
    OUTLINED_FUNCTION_2_1();
    v12 = sub_1BC8F88B4();
    v13 = OUTLINED_FUNCTION_4_5();
    v14(v13);
    *v4 = v10;
    *(v4 + 8) = v11;
    *(v4 + 16) = v19;
    *(v4 + 24) = v18;
    *(v4 + 32) = v17;
    *(v4 + 40) = v16;
    *(v4 + 48) = v15;
    *(v4 + 56) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7D3A4C()
{
  sub_1BC8F8C04();
  BadgeCounts.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D3ABC()
{
  result = sub_1BC8F7BE4();
  qword_1EDC2B338 = result;
  return result;
}

void sub_1BC7D3AF4()
{
  qword_1EBD067B0 = 0;
  qword_1EBD067B8 = 0;
  qword_1EBD067C0 = 0;
}

double sub_1BC7D3B88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7BE4();
  v5 = [a1 dataForKey_];

  if (!v5)
  {
    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = sub_1BC8F7734();
    __swift_project_value_buffer(v27, qword_1EDC2B368);
    v26 = sub_1BC8F7714();
    v28 = sub_1BC8F8204();
    if (os_log_type_enabled(v26, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v29, v30, "No stored badge count data found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_12;
  }

  v6 = sub_1BC8F70D4();
  v8 = v7;

  v9 = sub_1BC8F6C54();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC7D4C40();
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {

    if (qword_1EDC1FFD0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B368);
    v13 = v4;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v41 = v36;
      *v35 = 136446210;
      swift_getErrorValue();
      v17 = v39;
      v16 = v40;
      v38 = v8;
      v18 = sub_1BC8F83F4();
      v33[1] = v33;
      OUTLINED_FUNCTION_0(v18);
      v34 = v15;
      v20 = *(v19 + 64);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v21);
      v37 = v6;
      OUTLINED_FUNCTION_7();
      (*(v22 + 16))(v6, v17, v16);
      OUTLINED_FUNCTION_16_0();
      v23 = OUTLINED_FUNCTION_13_3();
      v24(v23, v18);
      v25 = sub_1BC7A9A4C(v16, v17, &v41);

      *(v35 + 4) = v25;
      OUTLINED_FUNCTION_20(&dword_1BC7A3000, "Failed to read badge counts %{public}s", v34);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v26 = sub_1BC8F7BE4();
    [a1 removeObjectForKey_];
    OUTLINED_FUNCTION_24_1();

LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    return result;
  }

  OUTLINED_FUNCTION_24_1();

  v32 = v42;
  result = *&v41;
  *a2 = v41;
  *(a2 + 16) = v32;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1BC7D3F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001BC90B600 == a2;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001BC90B620 == a2;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001BC90B640 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1BC7D4094(char a1)
{
  result = 0xD000000000000015;
  if (!a1)
  {
    return 0xD000000000000011;
  }

  return result;
}

uint64_t sub_1BC7D40E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BC8F8C04();
  a4(v8, v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7D4138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7D3F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7D4160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7D408C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D4188(uint64_t a1)
{
  v2 = sub_1BC7D4334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7D41C4(uint64_t a1)
{
  v2 = sub_1BC7D4334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MessageStoreBadgeCounts.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DA0, &qword_1BC8FBDD0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_1();
  v12 = *(v0 + 16);
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC7D4334();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_2();
  if (!v1)
  {
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_9_2();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC7D4334()
{
  result = qword_1EDC20508;
  if (!qword_1EDC20508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20508);
  }

  return result;
}

uint64_t MessageStoreBadgeCounts.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB2A020](*v0);
  MEMORY[0x1BFB2A020](v1);
  return MEMORY[0x1BFB2A020](v2);
}

uint64_t MessageStoreBadgeCounts.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

void MessageStoreBadgeCounts.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DA8, &qword_1BC8FBDD8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC7D4334();
  sub_1BC8F8C84();
  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_17_2();
    v11 = OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_12_1();
    v12 = OUTLINED_FUNCTION_8_0();
    v13 = OUTLINED_FUNCTION_4_5();
    v14(v13);
    *v4 = v10;
    v4[1] = v11;
    v4[2] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7D45B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v3);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7D4620()
{
  result = qword_1EBCF4DB0;
  if (!qword_1EBCF4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DB0);
  }

  return result;
}

unint64_t sub_1BC7D4678()
{
  result = qword_1EBCF4DB8;
  if (!qword_1EBCF4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DB8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BC7D471C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC7D4768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageStoreBadgeCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BadgeCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BadgeCounts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7D4A34()
{
  result = qword_1EBCF4DC0;
  if (!qword_1EBCF4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DC0);
  }

  return result;
}

unint64_t sub_1BC7D4A8C()
{
  result = qword_1EBCF4DC8;
  if (!qword_1EBCF4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4DC8);
  }

  return result;
}

unint64_t sub_1BC7D4AE4()
{
  result = qword_1EDC204F8;
  if (!qword_1EDC204F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC204F8);
  }

  return result;
}

unint64_t sub_1BC7D4B3C()
{
  result = qword_1EDC20500;
  if (!qword_1EDC20500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20500);
  }

  return result;
}

unint64_t sub_1BC7D4B94()
{
  result = qword_1EDC203E8;
  if (!qword_1EDC203E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203E8);
  }

  return result;
}

unint64_t sub_1BC7D4BEC()
{
  result = qword_1EDC203F0;
  if (!qword_1EDC203F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203F0);
  }

  return result;
}

unint64_t sub_1BC7D4C40()
{
  result = qword_1EDC1F588;
  if (!qword_1EDC1F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F588);
  }

  return result;
}

uint64_t sub_1BC7D4C94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1BC7D4CEC()
{
  result = qword_1EDC203E0;
  if (!qword_1EDC203E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC203E0);
  }

  return result;
}

void sub_1BC7D4D50(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 24);
  *a1 = *(v3 + 8);
  a1[1] = v4;
  a1[2] = *(v3 + 40);
  *(a1 + 41) = *(v3 + 49);

  os_unfair_lock_unlock(v3);
}

void sub_1BC7D4DB4(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
  os_unfair_lock_lock(v3);
  v4 = a1[1];
  *(v3 + 8) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 40) = a1[2];
  *(v3 + 49) = *(a1 + 41);

  os_unfair_lock_unlock(v3);
}

uint64_t BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (!a3)
  {
    [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
    v8 = a3;
    [v9 init];
    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = a3;
LABEL_6:
  swift_unknownObjectRetain();
  TUClarityEnabled();
  v10 = [objc_opt_self() tu_defaults];
  sub_1BC7D9730(0, &unk_1EDC1FF40, 0x1E6983308);
  sub_1BC7D4FB8();
  sub_1BC7D4FB8();
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_1BC7D502C();

  swift_unknownObjectRelease();
  return v13;
}

id sub_1BC7D4FB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BC8F7BE4();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

void sub_1BC7D502C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v113 = v4;
  v124 = v5;
  LODWORD(v111) = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  v15 = OUTLINED_FUNCTION_0(v110);
  v108 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_1(&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_1(&v101 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E78, &qword_1BC8FC3B8);
  v24 = OUTLINED_FUNCTION_25(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_0();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_1(&v101 - v31);
  v109 = type metadata accessor for AsyncSerialQueue();
  v32 = OUTLINED_FUNCTION_4_1(v109);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18_1(v36 - v35);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  v37 = OUTLINED_FUNCTION_0(v120);
  v119 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_20_0();
  v112 = v41 - v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_1(&v101 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v46 = OUTLINED_FUNCTION_25(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_20_0();
  v51 = v49 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v101 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  OUTLINED_FUNCTION_25(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_1(&v101 - v59);
  v60 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_stateHandle;
  *v60 = 0;
  *(v60 + 8) = 1;
  if (!v14)
  {
    v14 = sub_1BC7D0410([v10 deviceType], v8);
  }

  v116 = v29;
  *(v1 + 16) = v14;
  *(v1 + 24) = v12;
  v61 = v12;
  v114 = v10;
  *(v1 + 32) = v10;
  *(v1 + 40) = v8;
  *(v1 + 48) = v111 & 1;
  v62 = v113;
  *(v1 + 56) = v124;
  *(v1 + 64) = v62;
  *(v1 + 72) = v3;
  v63 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v63);
  v123 = v8;
  v122 = v3;
  v105 = v54;
  v102 = v63;
  if (v3)
  {
    v101 = sub_1BC7D96C8();
  }

  else
  {
    v101 = 0;
  }

  v64 = v119;
  v65 = v118;
  v66 = v120;
  (*(v119 + 104))(v118, *MEMORY[0x1E69E8650], v120);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  v68 = v121;
  __swift_storeEnumTagSinglePayload(v121, 1, 1, v67);
  v69 = (*(v64 + 16))(v112, v65, v66);
  MEMORY[0x1EEE9AC00](v69);
  *(&v101 - 2) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
  v107 = v122;
  v113 = v61;
  v114 = v114;
  swift_unknownObjectRetain();
  v124 = v124;
  v111 = v62;
  v70 = v115;
  sub_1BC8F8014();
  v71 = v116;
  sub_1BC7D9558(v68, v116, &qword_1EBCF4E78, &qword_1BC8FC3B8);
  if (__swift_getEnumTagSinglePayload(v71, 1, v67) == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10(v67);
    (*(v72 + 32))(v117, v71, v67);
    v73 = v108;
    v74 = v104;
    v75 = v110;
    (*(v108 + 16))(v104, v70, v110);
    v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v77 = swift_allocObject();
    (*(v73 + 32))(v77 + v76, v74, v75);
    v78 = v105;
    sub_1BC7D9558(v105, v51, &qword_1EBCF63D0, &qword_1BC902140);
    v79 = v102;
    v80 = v70;
    if (__swift_getEnumTagSinglePayload(v51, 1, v102) == 1)
    {
      sub_1BC7C1744(v51, &qword_1EBCF63D0, &qword_1BC902140);
    }

    else
    {
      sub_1BC8F7FB4();
      OUTLINED_FUNCTION_10(v79);
      (*(v81 + 8))(v51, v79);
    }

    v82 = v122;
    v83 = v107;
    v84 = swift_allocObject();
    *(v84 + 16) = &unk_1BC8FC3D8;
    *(v84 + 24) = v77;
    swift_unknownObjectRetain();
    if (v82 != 1)
    {
      v126 = 6;
      v127 = 0;
      v128 = v82;
      v129 = v101;
    }

    swift_task_create();

    (*(v73 + 8))(v80, v75);
    (*(v119 + 8))(v118, v120);
    sub_1BC7C1744(v78, &qword_1EBCF63D0, &qword_1BC902140);
    sub_1BC7C1744(v121, &qword_1EBCF4E78, &qword_1BC8FC3B8);
    v85 = v106;
    sub_1BC7D9034(v117, v106);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v109);
    sub_1BC7D964C(v85, v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue);
    v89 = v113;
    sub_1BC7D2BB4(v113, v125);
    v90 = v125[56];
    if (v125[56] == 2)
    {
      if (qword_1EBCF4740 != -1)
      {
        swift_once();
      }

      v130 = xmmword_1EBD06770;
      v131 = xmmword_1EBD06780;
      v132 = xmmword_1EBD06790;
      v133 = qword_1EBD067A0;
      v90 = byte_1EBD067A8;
    }

    else
    {
      v130 = *v125;
      v131 = *&v125[16];
      v132 = *&v125[32];
      v133 = *&v125[48];
    }

    *&v125[4] = v130;
    *&v125[20] = v131;
    *&v125[36] = v132;
    v91 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager__currentCounts;
    v92 = *&v125[16];
    *(v91 + 4) = *v125;
    *&v125[52] = v133;
    *v91 = 0;
    *(v91 + 20) = v92;
    *(v91 + 36) = *&v125[32];
    *(v91 + 48) = *&v125[44];
    *(v91 + 64) = v90;
    v93 = v83;
    if (!v82)
    {
      sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
      v93 = sub_1BC8F8284();
    }

    v94 = swift_allocObject();
    swift_weakInit();
    v95 = swift_allocObject();
    v96 = v131;
    *(v95 + 24) = v130;
    *(v95 + 16) = v94;
    *(v95 + 40) = v96;
    *(v95 + 56) = v132;
    *(v95 + 72) = v133;
    *(v95 + 80) = v90;
    *&v125[32] = sub_1BC7D96BC;
    *&v125[40] = v95;
    *v125 = MEMORY[0x1E69E9820];
    *&v125[8] = 1107296256;
    *&v125[16] = sub_1BC7D5FA0;
    *&v125[24] = &block_descriptor_40;
    v97 = _Block_copy(v125);
    v98 = v83;

    v99 = os_state_add_handler();

    swift_unknownObjectRelease();
    _Block_release(v97);

    v100 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_stateHandle;
    *v100 = v99;
    *(v100 + 8) = 0;
    OUTLINED_FUNCTION_24();
  }
}

void *sub_1BC7D5AAC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB0, &qword_1BC90A380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC230;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001BC90B8C0;
  v14 = *a3;
  v15 = a3[1];
  *v16 = a3[2];
  *&v16[9] = *(a3 + 41);
  *(inited + 48) = sub_1BC8F7C94();
  *(inited + 56) = v5;
  sub_1BC8F7AD4();
  v6 = sub_1BC7D5EA8(0x6E614D6567646142);
  v8 = v7;
  v10 = v9;
  v13 = sub_1BC803830(v6, v11, v7, v9);

  sub_1BC7D4C94(v8, v10);

  return v13;
}

uint64_t sub_1BC7D5EA8(uint64_t a1)
{
  v3 = sub_1BC8F6E44();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BC8F6E34();
  sub_1BC8F6E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EB8, &unk_1BC8FC3F0);
  sub_1BC7D9770();
  sub_1BC8F6E24();
  if (v1)
  {
  }

  return a1;
}

uint64_t sub_1BC7D5FA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

Swift::Void __swiftcall BadgeManager.notifyBadgeCounts(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v41 = 0uLL;
  v42 = 0;
  v4 = *(v1 + 24);
  sub_1BC7D2BB4(v4, v37);
  if (v40 == 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(&v38 + 1);
    v7 = v39;
    v5 = v38;
    v41 = v38;
    v42 = v39;
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = (v3 + 40);
    do
    {
      v10 = *(v9 - 8);
      v12 = *v9;
      v9 += 2;
      v11 = v12;
      if (v10 == 4)
      {
        v13 = v11;
      }

      else
      {
        v13 = v5;
      }

      if (v10 == 5)
      {
        v13 = v5;
        v14 = v11;
      }

      else
      {
        v14 = v6;
      }

      if (v10 == 6)
      {
        v7 = v11;
      }

      else
      {
        v5 = v13;
        v6 = v14;
      }

      --v8;
    }

    while (v8);
    *(&v41 + 1) = v6;
    v42 = v7;
    *&v41 = v5;
  }

  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = sub_1BC8F7734();
  __swift_project_value_buffer(v15, qword_1EDC2B368);
  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_21_1();
    v19 = OUTLINED_FUNCTION_28();
    *&v35 = v19;
    *v18 = 136446210;
    v37[0] = v5;
    v37[1] = v6;
    v37[2] = v7;
    v20 = sub_1BC8F7C94();
    v22 = sub_1BC7A9A4C(v20, v21, &v35);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1BC7A3000, v16, v17, "Setting message store counts %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0();
  }

  v23 = sub_1BC8F6CB4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  swift_beginAccess();
  v35 = v41;
  v36 = v42;
  sub_1BC7D8EEC();
  v26 = sub_1BC8F6C94();
  v28 = v27;

  v29 = sub_1BC8F70C4();
  OUTLINED_FUNCTION_31_0();
  v30 = sub_1BC8F7BE4();
  [v4 setValue:v29 forKey:v30];

  v31 = sub_1BC8F7714();
  v32 = sub_1BC8F8204();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1BC7A3000, v31, v32, "posting onMessageStoreBadgeUpdateNotification", v33, 2u);
    OUTLINED_FUNCTION_6();
  }

  v34 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1EDC1F5A8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterPostNotification(v34, qword_1EDC2B338, 0, 0, 1u);

  sub_1BC7D4C94(v26, v28);
  OUTLINED_FUNCTION_24();
}

Swift::Void __swiftcall BadgeManager.startObservingForStoreBadgeCountUpdate()()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  OUTLINED_FUNCTION_31_0();
  v2 = sub_1BC8F7BE4();
  CFNotificationCenterAddObserver(v1, v0, sub_1BC7D6CD8, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B368);
  oslog = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, oslog, v4, "Added observer for store badge count updates", v5, 2u);
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1BC7D662C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC8F78B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC8F78E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = qword_1EDC1FFD0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1BC8F7734();
    __swift_project_value_buffer(v15, qword_1EDC2B368);
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F8204();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BC7A3000, v16, v17, "Handling message store badge count update", v18, 2u);
      MEMORY[0x1BFB2AA50](v18, -1, -1);
    }

    v19 = *(a2 + 72);
    if (v19)
    {
      aBlock[4] = sub_1BC7D939C;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BC80CE70;
      aBlock[3] = &block_descriptor_23;
      v20 = _Block_copy(aBlock);
      v21 = v19;

      sub_1BC8F78D4();
      v22[1] = MEMORY[0x1E69E7CC0];
      sub_1BC7D93BC();
      v22[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
      sub_1BC7D9414();
      sub_1BC8F84C4();
      MEMORY[0x1BFB296A0](0, v13, v7, v20);
      _Block_release(v20);

      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v13, v22[0]);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall BadgeManager.mergeBadgeCountData(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_29_0();
  v4 = v1;
  v6 = v5;
  v7 = sub_1BC8F78F4();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v15 = (v14 - v13);
  v16 = *(v4 + 72);
  if (!v16)
  {
    goto LABEL_12;
  }

  *v15 = v16;
  (*(v10 + 104))(v15, *MEMORY[0x1E69E8020], v7);
  v17 = v16;
  v18 = sub_1BC8F7904();
  v20 = *(v10 + 8);
  v19 = v10 + 8;
  v20(v15, v7);
  if (v18)
  {
    v21 = &v34;
    sub_1BC7D3B88(*(v4 + 24), &v34);
    if (v36 == 1)
    {
      if (qword_1EBCF4750 != -1)
      {
        swift_once();
      }

      v21 = &qword_1EBD067B0;
      v3 = qword_1EBD067B8;
      v2 = qword_1EBD067C0;
    }

    else
    {
      v3 = *(&v34 + 1);
      v2 = v35;
    }

    v19 = *v21;
    if (qword_1EDC1FFD0 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0();
LABEL_9:
  v22 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v22, qword_1EDC2B368);
  v23 = sub_1BC8F7714();
  v24 = sub_1BC8F8204();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_21_1();
    v32 = OUTLINED_FUNCTION_28();
    v33 = v32;
    *&v34 = v19;
    *v25 = 136446210;
    *(&v34 + 1) = v3;
    v35 = v2;
    v26 = sub_1BC8F7C94();
    v28 = v19;
    v29 = v2;
    v30 = sub_1BC7A9A4C(v26, v27, &v33);

    *(v25 + 4) = v30;
    v2 = v29;
    v19 = v28;
    _os_log_impl(&dword_1BC7A3000, v23, v24, "Found counts that need to be merged %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD0, &unk_1BC8FC250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FC240;
  *(inited + 32) = 5;
  *(inited + 40) = v3;
  *(inited + 48) = 6;
  *(inited + 56) = v2;
  *(inited + 64) = 4;
  *(inited + 72) = v19;
  *(inited + 80) = 3;
  sub_1BC7D4D50(&v34);
  *(inited + 88) = v36;
  sub_1BC7D4D50(&v34);
  BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(inited, v6 & 1, v37);

  swift_setDeallocating();
LABEL_12:
  OUTLINED_FUNCTION_24();
}

void sub_1BC7D6CD8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1BC7D662C(a1, a2);
}

Swift::Void __swiftcall BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(Swift::OpaquePointer _, Swift::Bool shouldForceUpdate, Swift::Bool_optional isAmbiguous)
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v72 = v7;
  v71 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v10 = OUTLINED_FUNCTION_0(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  v17 = sub_1BC8F78F4();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  OUTLINED_FUNCTION_25(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v68 - v30;
  v32 = type metadata accessor for AsyncSerialQueue();
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v73 = v37 - v36;
  v38 = *(v4 + 72);
  if (v38)
  {
    sub_1BC7D9558(v4 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue, v31, &qword_1EBCF4DE0, &qword_1BC8FC260);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      sub_1BC7C1744(v31, &qword_1EBCF4DE0, &qword_1BC8FC260);
      goto LABEL_16;
    }

    v39 = v73;
    sub_1BC7D9034(v31, v73);
    *v25 = v38;
    (*(v20 + 104))(v25, *MEMORY[0x1E69E8020], v17);
    v40 = v38;
    v41 = sub_1BC8F7904();
    (*(v20 + 8))(v25, v17);
    if (v41)
    {
      v41 = &unk_1EDC1F000;
      if (v6 == 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_36_1();
      if (BYTE8(v78[1]) == (v6 & 1))
      {
        goto LABEL_12;
      }

      if (qword_1EDC1FFD0 == -1)
      {
LABEL_8:
        v42 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v42, qword_1EDC2B368);
        v43 = sub_1BC8F7714();
        v44 = sub_1BC8F8204();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_21_1();
          v68 = v45;
          v46 = OUTLINED_FUNCTION_28();
          v76.i64[0] = v46;
          *v45 = 136446210;
          v47 = v6 & 1;
          v86[0].i8[0] = v6 & 1;
          v48 = sub_1BC8F7C94();
          v50 = sub_1BC7A9A4C(v48, v49, v76.i64);
          v39 = v73;

          v51 = v68;
          *(v68 + 1) = v50;
          _os_log_impl(&dword_1BC7A3000, v43, v44, "updating isAmbiguous to %{public}s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v41 = 0x1EDC1F000;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_9_0();
        }

        else
        {

          v47 = v6 & 1;
        }

        sub_1BC7D4D50(v74);
        v75 = v47;
        sub_1BC7D4DB4(v74);
LABEL_12:
        OUTLINED_FUNCTION_36_1();
        sub_1BC7D2B10(v76.i64, v71, v86);
        sub_1BC7D4DB4(v86);
        if (v72)
        {
LABEL_13:
          sub_1BC7D4D50(v86);
          sub_1BC7D28B0(*(v4 + 16), &v76);
          v52 = swift_allocObject();
          *(v52 + 16) = v4;
          v53 = v77;
          *(v52 + 24) = v76;
          *(v52 + 40) = v53;
          *(v52 + 56) = v78[0];
          *(v52 + 65) = *(v78 + 9);
          v54 = swift_allocObject();
          *(v54 + 16) = &unk_1BC8FC270;
          *(v54 + 24) = v52;
          v86[0].i64[0] = &unk_1BC8FC280;
          v86[0].i64[1] = v54;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
          sub_1BC8F7FD4();

          (*(v69 + 8))(v16, v70);
          goto LABEL_14;
        }

        sub_1BC7D2BB4(*(v4 + 24), &v76);
        v82 = v76;
        v83 = v77;
        v84 = v78[0];
        v85 = *&v78[1];
        v56 = BYTE8(v78[1]);
        OUTLINED_FUNCTION_36_1();
        v79[0] = v82;
        v79[1] = v83;
        v79[2] = v84;
        v80 = v85;
        v81 = v56;
        if (BYTE8(v78[1]) == 2)
        {
          if (v56 != 2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v86[0] = v76;
          v86[1] = v77;
          v87[0] = v78[0];
          *(v87 + 9) = *(v78 + 9);
          if (v56 == 2 || (static BadgeCounts.== infix(_:_:)(v86, v79) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (*(v41 + 4048) != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v57 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v57, qword_1EDC2B368);

        v58 = sub_1BC8F7714();
        v59 = sub_1BC8F8204();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v86[0].i64[0] = swift_slowAlloc();
          *v60 = 136446466;
          if (v56 == 2)
          {
            v61 = 0xE300000000000000;
            v62 = 7104878;
          }

          else
          {
            v76 = v82;
            v77 = v83;
            v78[0] = v84;
            *&v78[1] = v85;
            BYTE8(v78[1]) = v56;
            v62 = sub_1BC8F7C94();
            v61 = v63;
          }

          v64 = sub_1BC7A9A4C(v62, v61, v86[0].i64);

          *(v60 + 4) = v64;
          *(v60 + 12) = 2080;
          OUTLINED_FUNCTION_36_1();
          v65 = sub_1BC8F7C94();
          v67 = sub_1BC7A9A4C(v65, v66, v86[0].i64);

          *(v60 + 14) = v67;
          _os_log_impl(&dword_1BC7A3000, v58, v59, "returning since counts have not changed, oldCounts: %{public}s, counts: %s", v60, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();

          v55 = v73;
          goto LABEL_15;
        }

LABEL_14:
        v55 = v39;
LABEL_15:
        sub_1BC7D912C(v55);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_0();
    goto LABEL_8;
  }

LABEL_16:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7D7468(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC7D7488, 0, 0);
}

uint64_t sub_1BC7D7488()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 248);
  if (*(*(v0 + 240) + 48) == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = v1[2];
    *(v0 + 185) = *(v1 + 41);
    *(v0 + 160) = v3;
    *(v0 + 176) = v4;
    *(v0 + 144) = v2;
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_1BC7D75CC;
    v6 = *(v0 + 240);

    return sub_1BC7D7AF0(v0 + 144);
  }

  else
  {
    v8 = *v1;
    v9 = v1[1];
    v10 = v1[2];
    *(v0 + 57) = *(v1 + 41);
    *(v0 + 32) = v9;
    *(v0 + 48) = v10;
    *(v0 + 16) = v8;
    v11 = swift_task_alloc();
    *(v0 + 264) = v11;
    *v11 = v0;
    v11[1] = sub_1BC7D7A08;
    v12 = *(v0 + 240);

    return sub_1BC7D818C(v0 + 16);
  }
}

uint64_t sub_1BC7D75CC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC7D76B4()
{
  v16 = v0;
  v1 = *(v0 + 240);
  sub_1BC7D4D50(v14);
  v2 = *(v1 + 24);
  v3 = sub_1BC8F6CB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  v6 = v14[1];
  *(v0 + 80) = v14[0];
  *(v0 + 96) = v6;
  *(v0 + 112) = v15[0];
  *(v0 + 121) = *(v15 + 9);
  sub_1BC7D9330();
  v7 = sub_1BC8F6C94();
  v9 = v8;

  v10 = sub_1BC8F70C4();
  OUTLINED_FUNCTION_31_0();
  v11 = sub_1BC8F7BE4();
  [v2 setValue:v10 forKey:v11];

  sub_1BC7D4C94(v7, v9);
  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1BC7D7A08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC7D7AF0(uint64_t a1)
{
  *(v2 + 208) = v1;
  *(v2 + 216) = *a1;
  *(v2 + 232) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1BC7D7B20, 0, 0);
}

uint64_t sub_1BC7D7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v15 = v13[27];
  v14 = v13[28];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v13[29];
    v12 = v17 + v18;
    v13[30] = v17 + v18;
    if (!__OFADD__(v17, v18))
    {
      if (qword_1EDC1FFD0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  OUTLINED_FUNCTION_0_0();
LABEL_4:
  v19 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v19, qword_1EDC2B368);
  v20 = sub_1BC8F7714();
  v21 = sub_1BC8F8204();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_21_1();
    *v22 = 134349056;
    *(v22 + 4) = v12;
    OUTLINED_FUNCTION_35_0(&dword_1BC7A3000, v23, v24, "Setting Assistive Access Calls badge count to %{public}ld");
    OUTLINED_FUNCTION_6();
  }

  v25 = v13[26];

  v26 = *(v25 + 56);
  v13[2] = v13;
  v13[3] = sub_1BC7D7CC8;
  v27 = swift_continuation_init();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v13[31] = v28;
  OUTLINED_FUNCTION_7_0(v28);
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v13[21] = v29;
  v13[22] = v27;
  [v26 setBadgeCount:v12 withCompletionHandler:v13 + 18];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7CC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D7DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v13 = v12[30];
  v14 = v12[31];
  v15 = *(v12[26] + 64);
  v12[10] = v12;
  v12[11] = sub_1BC7D7FF0;
  swift_continuation_init();
  v12[25] = v14;
  v12[18] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v17;
  v12[22] = v16;
  [v15 setBadgeCount:v13 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v13 = v12[32];
  swift_willThrow();
  sub_1BC7D8BE8();

  v14 = v12[30];
  v15 = v12[31];
  v16 = *(v12[26] + 64);
  v12[10] = v12;
  v12[11] = sub_1BC7D7FF0;
  v17 = swift_continuation_init();
  v12[25] = v15;
  v12[18] = MEMORY[0x1E69E9820];
  v12[19] = 1107296256;
  v12[20] = sub_1BC890F2C;
  v12[21] = &block_descriptor_14;
  v12[22] = v17;
  [v16 setBadgeCount:v14 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1BC7D7FF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 112);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D8110()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 264);
  swift_willThrow();
  sub_1BC7D8BE8();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC7D818C(uint64_t a1)
{
  *(v2 + 208) = v1;
  v3 = *(a1 + 16);
  *(v2 + 216) = *a1;
  *(v2 + 232) = v3;
  *(v2 + 248) = *(a1 + 32);
  *(v2 + 264) = *(a1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1BC7D81C8, 0, 0);
}

uint64_t sub_1BC7D81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v15 = v13[27];
  v14 = v13[28];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13[32];
  v16 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v13[33];
  v12 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v13[29];
  v21 = v13[30];
  v16 = __OFADD__(v22, v21);
  v23 = v22 + v21;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v13[31];
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ([*(v13[26] + 40) LVMEverywhere])
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  v13[34] = v25 + v26;
  if (!__OFADD__(v25, v26))
  {
    v13[35] = sub_1BC7D89B8(v13[26], v25 + v26);
    v13[36] = v27;
    if (qword_1EDC1FFD0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_0_0();
LABEL_11:
  v28 = sub_1BC8F7734();
  v13[37] = __swift_project_value_buffer(v28, qword_1EDC2B368);
  v29 = sub_1BC8F7714();
  v30 = sub_1BC8F8204();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_21_1();
    *v31 = 134349056;
    *(v31 + 4) = v12;
    OUTLINED_FUNCTION_35_0(&dword_1BC7A3000, v32, v33, "Setting FaceTime badge count to %{public}ld");
    OUTLINED_FUNCTION_6();
  }

  v34 = v13[26];

  v35 = *(v34 + 56);
  v13[2] = v13;
  v13[3] = sub_1BC7D83DC;
  v36 = swift_continuation_init();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v13[38] = v37;
  OUTLINED_FUNCTION_7_0(v37);
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v13[21] = v38;
  v13[22] = v36;
  [v35 setBadgeCount:v12 withCompletionHandler:v13 + 18];

  return MEMORY[0x1EEE6DEC8](v13 + 2, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1BC7D83DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D84DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = v12;
  v13 = v12[37];
  v14 = v12[26];

  v15 = sub_1BC8F7714();
  v16 = sub_1BC8F8204();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_14_1(v17, 3.9124e-34);
    sub_1BC7D4D50(v35);
    *(v17 + 24) = v36;

    OUTLINED_FUNCTION_33_1(&dword_1BC7A3000, v18, v19, "Setting MobilePhone badge string to %{public}ld. count: %{public}ld, isAmbiguous: %{BOOL,public}d");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v20 = v12[26];
  }

  v21 = *(v12[26] + 64);
  if (v12[36])
  {
    v22 = v12[35];
    v23 = sub_1BC8F7BE4();
  }

  else
  {
    v23 = 0;
  }

  v12[40] = v23;
  v24 = v12[38];
  v12[10] = v12;
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v26;
  v12[22] = v25;
  [v21 setBadgeString:v23 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1BC7D863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = v12;
  v13 = v12[39];
  swift_willThrow();
  sub_1BC7D8BE8();

  v14 = v12[37];
  v15 = v12[26];

  v16 = sub_1BC8F7714();
  v17 = sub_1BC8F8204();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_14_1(v18, 3.9124e-34);
    sub_1BC7D4D50(v36);
    *(v18 + 24) = v37;

    OUTLINED_FUNCTION_33_1(&dword_1BC7A3000, v19, v20, "Setting MobilePhone badge string to %{public}ld. count: %{public}ld, isAmbiguous: %{BOOL,public}d");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v21 = v12[26];
  }

  v22 = *(v12[26] + 64);
  if (v12[36])
  {
    v23 = v12[35];
    v24 = sub_1BC8F7BE4();
  }

  else
  {
    v24 = 0;
  }

  v12[40] = v24;
  v25 = v12[38];
  v12[10] = v12;
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_26_0(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_4();
  v12[21] = v27;
  v12[22] = v26;
  [v22 setBadgeString:v24 withCompletionHandler:v12 + 18];

  return MEMORY[0x1EEE6DEC8](v12 + 10, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1BC7D87C0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 112);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC7D88C0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 288);

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC7D8924()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[36];
  swift_willThrow();

  sub_1BC7D8BE8();

  OUTLINED_FUNCTION_27();

  return v4();
}

id sub_1BC7D89B8(uint64_t a1, uint64_t a2)
{
  sub_1BC7D4D50(v11);
  if (v12 == 1)
  {
    if (a2 < 1)
    {
      return sub_1BC7D8B4C();
    }

    sub_1BC7D8B4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E6530];
    *(v3 + 16) = xmmword_1BC8FC230;
    v5 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = a2;
    v6 = sub_1BC8F7BF4();
  }

  else
  {
    if (a2 < 1)
    {
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E48, &qword_1BC9001E0);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E6530];
    *(v7 + 16) = xmmword_1BC8FC230;
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a2;
    v6 = sub_1BC8F7BF4();
  }

  return v6;
}

id sub_1BC7D8B4C()
{
  result = TUBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_1BC8F6DC4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BC7D8BE8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  if (qword_1EDC1FFD0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B368);
  v5 = v3;
  v29[0] = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(v29[0], v6))
  {
    v7 = OUTLINED_FUNCTION_21_1();
    v8 = OUTLINED_FUNCTION_28();
    v30 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v29[1];
    v10 = v29[2];
    v11 = sub_1BC8F83F4();
    OUTLINED_FUNCTION_0(v11);
    v13 = v12;
    v15 = *(v14 + 64);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1EEE9AC00](v16);
    v18 = v29 - v17;
    OUTLINED_FUNCTION_10(v10);
    (*(v19 + 16))(v18, v9, v10);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    v23 = sub_1BC8073F0(v18, v10);
    v25 = v24;
    (*(v13 + 8))(v18, v11);
    v26 = sub_1BC7A9A4C(v23, v25, &v30);

    *(v7 + 4) = v26;
    _os_log_impl(&dword_1BC7A3000, v29[0], v6, v1, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    OUTLINED_FUNCTION_24();
  }

  else
  {
    OUTLINED_FUNCTION_24();
  }
}

uint64_t BadgeManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  sub_1BC7C1744(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore12BadgeManager_asyncQueue, &qword_1EBCF4DE0, &qword_1BC8FC260);
  return v0;
}

uint64_t BadgeManager.__deallocating_deinit()
{
  BadgeManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1BC7D8EEC()
{
  result = qword_1EDC1F598;
  if (!qword_1EDC1F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F598);
  }

  return result;
}

char *sub_1BC7D8F40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E68, &qword_1BC8FC3A8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1BC7D9034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7D9098()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0168;

  return sub_1BC7D7468(v2, v0 + 24);
}

uint64_t sub_1BC7D912C(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BadgeManager()
{
  result = qword_1EBCF4E10;
  if (!qword_1EBCF4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC7D91DC()
{
  sub_1BC7D92D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BC7D92D8()
{
  if (!qword_1EBCF4E20)
  {
    type metadata accessor for AsyncSerialQueue();
    v0 = sub_1BC8F83F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCF4E20);
    }
  }
}

unint64_t sub_1BC7D9330()
{
  result = qword_1EDC1F258;
  if (!qword_1EDC1F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F258);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BC7D93BC()
{
  result = qword_1EDC206B0;
  if (!qword_1EDC206B0)
  {
    sub_1BC8F78B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC206B0);
  }

  return result;
}

unint64_t sub_1BC7D9414()
{
  result = qword_1EDC20690;
  if (!qword_1EDC20690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20690);
  }

  return result;
}

uint64_t sub_1BC7D9480()
{
  OUTLINED_FUNCTION_32();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E70, &qword_1BC8FC3B0);
  OUTLINED_FUNCTION_25(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;

  return sub_1BC8E42F8();
}

uint64_t sub_1BC7D9558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC7D95B8()
{
  OUTLINED_FUNCTION_32();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_1BC7D964C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DE0, &qword_1BC8FC260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7D96C8()
{
  result = qword_1EBCF4EA0;
  if (!qword_1EBCF4EA0)
  {
    sub_1BC7D9730(255, &qword_1EBCF4EA8, 0x1E69E9620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EA0);
  }

  return result;
}

uint64_t sub_1BC7D9730(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BC7D9770()
{
  result = qword_1EBCF4EC0;
  if (!qword_1EBCF4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4EB8, &unk_1BC8FC3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7D98F0()
{
  result = qword_1EBCF4ED0;
  if (!qword_1EBCF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4ED0);
  }

  return result;
}

uint64_t Transcript.text.getter()
{
  if (v0[2])
  {
    v1 = v0[1];
    v2 = v0[2];
  }

  else
  {
    v3 = *v0;
    v4 = *(*v0 + 16);
    if (v4)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1BC7AD404();
      v5 = (v3 + 48);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v12 + 16);
        v8 = *(v12 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1BC7AD404();
        }

        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 8;
        --v4;
      }

      while (v4);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    sub_1BC7ADBA4();
    v1 = sub_1BC8F7B74();
  }

  return v1;
}

FaceTimeMessageStore::Transcript __swiftcall Transcript.init(utterances:)(Swift::OpaquePointer utterances)
{
  v1[1]._rawValue = 0;
  v1[2]._rawValue = 0;
  v1->_rawValue = utterances._rawValue;
  result.utterances = utterances;
  return result;
}

void sub_1BC7D9A8C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a2;
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_0();
  v17 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v105 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_0();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102 - v26;
  v108 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v28 = OUTLINED_FUNCTION_0(v108);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0();
  v117 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v102 - v36;
  v103 = a1;
  v38 = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v134 = MEMORY[0x1E69E7CC0];
    v109 = v39;
    v110 = v38;
    sub_1BC7DD9A4(0, v39, 0);
    v40 = *(v30 + 80);
    OUTLINED_FUNCTION_25_1();
    v43 = v110;
    v106 = v110 + v44;
    v124 = v27;
    v111 = v37;
    v121 = v15;
    v122 = v4;
    v119 = v17;
    v120 = v10;
    v118 = v2;
    v107 = v30;
    while (v42 < *(v43 + 16))
    {
      v115 = v42;
      v116 = v41;
      sub_1BC7DFA68(v106 + *(v30 + 72) * v42, v37, type metadata accessor for FaceTimeMessageStore_Utterance);
      v45 = v117;
      sub_1BC7DFA68(v37, v117, type metadata accessor for FaceTimeMessageStore_Utterance);
      v46 = *(v45 + 24);
      v47 = *(v46 + 16);
      if (v47)
      {
        v128 = MEMORY[0x1E69E7CC0];
        sub_1BC7DD9C4(0, v47, 0);
        v48 = v128;
        v49 = *(v105 + 80);
        OUTLINED_FUNCTION_25_1();
        v51 = v46 + v50;
        v123 = *(v52 + 72);
        do
        {
          sub_1BC7DFA68(v51, v27, type metadata accessor for FaceTimeMessageStore_Caption);
          sub_1BC7DFA68(v27, v24, type metadata accessor for FaceTimeMessageStore_Caption);
          v53 = *v24;
          v54 = *(v17 + 24);
          sub_1BC7DF4F8(v54 + v24, v2);
          v55 = v122;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v122);
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_8_6();
            sub_1BC7DFAC4(v24, v57);
            sub_1BC7DFAC4(v27, v54);
            sub_1BC7C1744(v2, &qword_1EBCF4F08, &qword_1BC9090E0);
            v58 = 0uLL;
          }

          else
          {
            sub_1BC7C1744(v2, &qword_1EBCF4F08, &qword_1BC9090E0);
            v59 = v121;
            sub_1BC7DF4F8(v54 + v24, v121);
            OUTLINED_FUNCTION_43(v59, 1, v55);
            if (v60)
            {
              v61 = v120;
              *v120 = 0;
              v62 = v61 + *(v55 + 24);
              sub_1BC8F7424();
              OUTLINED_FUNCTION_8_6();
              sub_1BC7DFAC4(v24, v63);
              v64 = OUTLINED_FUNCTION_29();
              sub_1BC7DFAC4(v64, v65);
              v67 = v61;
              OUTLINED_FUNCTION_43(v59, 1, v55);
              if (!v60)
              {
                sub_1BC7C1744(v121, &qword_1EBCF4F08, &qword_1BC9090E0);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_6();
              sub_1BC7DFAC4(v24, v66);
              sub_1BC7DFAC4(v27, v54);
              v67 = v120;
              sub_1BC7DF568(v59, v120);
            }

            v68 = *v67;
            OUTLINED_FUNCTION_6_4();
            sub_1BC7DFAC4(v67, v69);
            *&v70 = v68;
            *(&v70 + 1) = SHIDWORD(v68);
            v58 = v70;
            v2 = v118;
            v17 = v119;
          }

          v128 = v48;
          v72 = *(v48 + 16);
          v71 = *(v48 + 24);
          if (v72 >= v71 >> 1)
          {
            v74 = OUTLINED_FUNCTION_37(v71);
            v114 = v75;
            sub_1BC7DD9C4(v74, v72 + 1, 1);
            v58 = v114;
            v48 = v128;
          }

          *(v48 + 16) = v72 + 1;
          v73 = v48 + 32 * v72;
          *(v73 + 32) = v58;
          *(v73 + 48) = EnumTagSinglePayload == 1;
          *(v73 + 56) = v53;
          v27 = v124;
          v51 += v123;
          --v47;
        }

        while (v47);
        OUTLINED_FUNCTION_9_4();
        sub_1BC7DFAC4(v111, v76);
      }

      else
      {
        OUTLINED_FUNCTION_9_4();
        sub_1BC7DFAC4(v37, v77);
        v48 = MEMORY[0x1E69E7CC0];
      }

      v78 = v117;
      v79 = *(v117 + 16);
      *&v114 = *(v117 + 8);
      v80 = v108[9];
      v81 = v117 + v108[8];
      LODWORD(v123) = *v81;
      v129 = *(v81 + 4);
      v112 = *(v117 + v80);
      v133 = *(v117 + v80 + 8);
      v82 = (v117 + v108[10]);
      v113 = *v82;
      v83 = *(v82 + 8);

      OUTLINED_FUNCTION_9_4();
      sub_1BC7DFAC4(v78, v84);
      v132 = v83;
      v85 = v133;
      v127[0] = v128;
      *(v127 + 3) = *(&v128 + 3);
      v125 = v130;
      v41 = v116;
      v87 = *(v116 + 16);
      v86 = *(v116 + 24);
      v126 = v131;
      v88 = v129;
      v134 = v116;
      if (v87 >= v86 >> 1)
      {
        v92 = OUTLINED_FUNCTION_37(v86);
        LODWORD(v116) = v93;
        sub_1BC7DD9A4(v92, v87 + 1, 1);
        v85 = v116;
        v41 = v134;
      }

      v42 = v115 + 1;
      *(v41 + 16) = v87 + 1;
      v89 = v41 + (v87 << 6);
      v90 = v114;
      *(v89 + 32) = v48;
      *(v89 + 40) = v90;
      v91 = v112;
      *(v89 + 48) = v79;
      *(v89 + 56) = v91;
      *(v89 + 64) = v85;
      LODWORD(v91) = *(v127 + 3);
      *(v89 + 65) = v127[0];
      *(v89 + 68) = v91;
      *(v89 + 72) = v113;
      *(v89 + 80) = v83;
      LOBYTE(v91) = v126;
      *(v89 + 81) = v125;
      *(v89 + 83) = v91;
      *(v89 + 84) = v123;
      *(v89 + 88) = v88;
      v27 = v124;
      v30 = v107;
      v37 = v111;
      v43 = v110;
      if (v42 == v109)
      {
        v94 = v41;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v95 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
    v96 = v103;
    v97 = (v103 + *(v95 + 24));
    v98 = v97[1];
    if (v98)
    {
      v99 = *v97;
      v100 = v97[1];
    }

    else
    {
      v99 = 0;
    }

    sub_1BC7DFAC4(v96, type metadata accessor for FaceTimeMessageStore_Transcript);
    v101 = v104;
    *v104 = v94;
    v101[1] = v99;
    v101[2] = v98;
  }
}

uint64_t sub_1BC7DA1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7C0454(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_11:
    v17 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
    v18 = sub_1BC8F7E34();

    v19 = [v17 combinedStringFromCaptions_];

    v20 = sub_1BC8F7C24();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F30, &qword_1BC8FC6D8);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BC8FC230;
    *(result + 32) = v5;
    *(result + 40) = v20;
    *(result + 84) = 0;
    *(result + 88) = 1;
    *(result + 48) = v22;
    *(result + 56) = 0;
    *(result + 64) = 1;
    *(result + 72) = 0;
    *(result + 80) = 1;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = result;
    return result;
  }

  v6 = v4;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1BC7DD9C4(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v8 = 0;
    v5 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB29A00](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      [v9 confidence];
      v12 = v11;

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = OUTLINED_FUNCTION_37(v13);
        sub_1BC7DD9C4(v16, v14 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v14 + 1;
      v15 = v24 + 32 * v14;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = 1;
      *(v15 + 56) = v12;
    }

    while (v6 != v8);
    a2 = v23;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BC7DA3A8(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 segments];
  sub_1BC7D9730(0, &qword_1EBCF4FA8, 0x1E69E06B8);
  v5 = sub_1BC8F7E54();

  v6 = sub_1BC7C0454(v5);
  if (v6)
  {
    v7 = v6;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BC7DD9A4(0, v6 & ~(v6 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v35 = v2;
      v36 = a2;
      v8 = 0;
      v9 = v40;
      v10 = v7 - 1;
      while (1)
      {
        v11 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB29A00](v8, v5) : *(v5 + 8 * v8 + 32);
        v12 = v11;
        if (v8 == 0xFFFFFFFFLL)
        {
          break;
        }

        [v11 confidence];
        v14 = v13;
        v15 = [v12 substringRange];
        v17 = v16;
        v18 = [v12 substring];
        v19 = sub_1BC8F7C24();
        v21 = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F28, &qword_1BC8FC6D0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1BC8FC230;
        *(v22 + 32) = v15;
        *(v22 + 40) = v17;
        *(v22 + 48) = 0;
        *(v22 + 56) = v14;
        [v12 timestamp];
        v24 = v23;
        [v12 duration];
        v26 = v25;

        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = OUTLINED_FUNCTION_37(v27);
          sub_1BC7DD9A4(v30, v28 + 1, 1);
        }

        *(v40 + 16) = v28 + 1;
        v29 = v40 + (v28 << 6);
        *(v29 + 32) = v22;
        *(v29 + 40) = v19;
        *(v29 + 48) = v21;
        *(v29 + 56) = v24;
        *(v29 + 64) = 0;
        *(v29 + 65) = *v39;
        *(v29 + 68) = *&v39[3];
        *(v29 + 72) = v26;
        *(v29 + 80) = 0;
        *(v29 + 81) = v37;
        *(v29 + 83) = v38;
        *(v29 + 84) = v8 + 1;
        *(v29 + 88) = 0;
        if (v10 == v8)
        {

          v2 = v35;
          a2 = v36;
          goto LABEL_14;
        }

        ++v8;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v31 = [v2 transcriptionString];
    v32 = sub_1BC8F7C24();
    v34 = v33;

    *a2 = v9;
    a2[1] = v32;
    a2[2] = v34;
  }
}

uint64_t sub_1BC7DA680()
{
  v1 = *v0;
  v40 = *(v0 + 1);
  Transcript.text.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    v3 = 0;
    v38 = v1 + 32;
    do
    {
      v4 = (v38 + (v3 << 6));
      v6 = *v4;
      v5 = *(v4 + 1);
      v7 = *(v4 + 2);
      v8 = v4[3];
      v9 = *(v4 + 32);
      v10 = v4[5];
      v11 = *(v4 + 48);
      v12 = [objc_allocWithZone(MEMORY[0x1E697B9E0]) init];
      OUTLINED_FUNCTION_40();
      result = sub_1BC8F7BE4();
      v14 = result;
      v15 = *(*&v6 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = (*&v6 + 48);
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = *(*&v6 + 16);
        do
        {
          if ((*v17 & 1) == 0)
          {
            v21 = *(v17 - 2);
            v20 = *(v17 - 1);
            if (v21 < v18)
            {
              v18 = *(v17 - 2);
            }

            v22 = __OFADD__(v21, v20);
            v23 = v21 + v20;
            if (v22)
            {
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              return result;
            }

            if (__OFADD__(v18, v16))
            {
              goto LABEL_26;
            }

            if (v18 + v16 < v23)
            {
              v16 = v23 - v18;
              if (__OFSUB__(v23, v18))
              {
                goto LABEL_27;
              }
            }
          }

          v17 += 32;
          --v19;
        }

        while (v19);
        v24 = 0.0;
        if (v9)
        {
          v8 = 0.0;
        }

        v25 = (*&v6 + 56);
        v26 = *(*&v6 + 16);
        do
        {
          v27 = *v25;
          v25 += 4;
          v24 = v24 + v27;
          --v26;
        }

        while (v26);
      }

      else
      {
        v16 = 0;
        v24 = 0.0;
        if (v9)
        {
          v8 = 0.0;
        }

        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v10 = 0.0;
      }

      ++v3;
      v28 = v24 / v15;
      v29 = sub_1BC8F7E34();
      sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
      v30 = sub_1BC8F7E34();
      *&v31 = v28;
      [v12 _initWithSubstring_range_timestamp_duration_confidence_alternativeSubstrings_alternativeConfidences_phoneSequence_ipaPhoneSequence_voiceAnalytics_];

      sub_1BC8F8654();
      v32 = *(v39 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    while (v3 != v2);
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E697B9D8]) init];
  sub_1BC7D9730(0, &qword_1EDC1DDB8, 0x1E697B9E0);
  v34 = sub_1BC8F7E34();

  v35 = sub_1BC8F7BE4();

  v36 = [v33 _initWithSegments_formattedString_speakingRate_averagePauseDuration_];

  v37 = [objc_allocWithZone(MEMORY[0x1E69E06B0]) initWithTranscription_];
  return v37;
}

void sub_1BC7DA9A8()
{
  v1 = *v0;
  v26 = *(*v0 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v2 = 0;
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v3 = v1 + 32 + (v2 << 6);
      v4 = *v3;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 40);
      v8 = *(v3 + 48);
      if (*(v3 + 32))
      {
        v9 = *v3;

        v10 = 0;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *(v3 + 24);
        v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        v10 = [v13 initWithDouble_];
        if (v8)
        {
LABEL_8:
          v11 = 0;
          goto LABEL_9;
        }
      }

      v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
LABEL_9:
      if (*(v4 + 16))
      {
        v14 = (v4 + 56);
        v15 = 0.0;
        v16 = *(v4 + 16);
        do
        {
          v17 = *v14;
          v14 += 4;
          v15 = v15 + v17;
          --v16;
        }

        while (v16);
      }

      objc_allocWithZone(MEMORY[0x1E69D8AD8]);
      v18 = v11;

      v19 = v10;
      v20 = OUTLINED_FUNCTION_40();
      v23 = sub_1BC7DD55C(v22, v20, v21, v10, v11);

      v24 = v23;
      MEMORY[0x1BFB29230]();
      v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v25 >> 1)
      {
        OUTLINED_FUNCTION_37(v25);
        sub_1BC8F7E94();
      }

      ++v2;
      OUTLINED_FUNCTION_45_1();
      sub_1BC8F7ED4();
    }

    while (v2 != v26);
  }
}

double sub_1BC7DABBC()
{
  v1 = 0;
  v2 = *(*v0 + 16);
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *(*v0 + 32 + (v1 << 6));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 56);
      v7 = 0.0;
      v8 = v5;
      do
      {
        v9 = *v6;
        v6 += 4;
        v7 = v7 + v9;
        --v8;
      }

      while (v8);
    }

    else
    {
      v7 = 0.0;
    }

    ++v1;
    v3 = v3 + v7 / v5;
  }

  return v3 / v2;
}

uint64_t static Transcript.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1BC7DC654(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v4 && v3 == v5)
        {
          return 1;
        }

        OUTLINED_FUNCTION_41_1();
        if (sub_1BC8F8AA4())
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BC7DACAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *v3;
      v6 = *(v4 - 8);
      v7 = *v4;
      if (*(v3 - 1))
      {
        if (v5 != v7)
        {
          v6 = 0;
        }

        if (v6 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v6)
        {
          return result;
        }

        v9 = *(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2);
        if (!v9 || v5 != v7)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_24_0();
}

uint64_t sub_1BC7DAD3C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BC8F8504())
  {
    if (a2 >> 62)
    {
      result = sub_1BC8F8504();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1BC7D9730(0, &qword_1EBCF4FB0, 0x1E695CD58);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1BFB29A00](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1BFB29A00](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1BC8F83A4();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1BC7DAF10()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v74 = sub_1BC8F7324();
  v4 = OUTLINED_FUNCTION_0(v74);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v73 = v10 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1(v82);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v77 = type metadata accessor for HistoryItem();
  v16 = OUTLINED_FUNCTION_0(v77);
  v83 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v75 = (v20 - v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v63 - v28;
  v30 = *(v3 + 16);
  if (v30 == *(v1 + 16) && v30 && v3 != v1)
  {
    v65 = v1 + 32;
    v66 = v3 + 32;
    v31 = 0;
    v70 = (v6 + 32);
    v71 = (v6 + 8);
    v72 = v27;
    v64 = v30;
    while (v31 != v30)
    {
      v32 = (v66 + 16 * v31);
      v33 = *v32;
      v34 = v32[1];
      v35 = (v65 + 16 * v31);
      v36 = *v35;
      v37 = v35[1];

      sub_1BC7F5C04(v33, v36);
      if ((v38 & 1) == 0 || (v39 = *(v34 + 16), v39 != *(v37 + 16)))
      {
LABEL_27:

        goto LABEL_28;
      }

      v67 = v31;
      v68 = v33;
      v69 = v36;
      if (v39 && v34 != v37)
      {
        v40 = v39;
        v41 = 0;
        v42 = *(v83 + 80);
        OUTLINED_FUNCTION_25_1();
        v80 = v37 + v43;
        v81 = v34 + v43;
        v78 = v34;
        v79 = v37;
        while (v41 < *(v34 + 16))
        {
          v44 = *(v83 + 72) * v41;
          OUTLINED_FUNCTION_3_6();
          sub_1BC7DFA68(v81 + v44, v29, v45);
          if (v41 >= *(v37 + 16))
          {
            goto LABEL_30;
          }

          sub_1BC7DFA68(v80 + v44, v26, type metadata accessor for HistoryItem);
          v46 = *(v82 + 48);
          sub_1BC7DFA68(v29, v15, type metadata accessor for HistoryItem);
          sub_1BC7DFA68(v26, &v15[v46], type metadata accessor for HistoryItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_3_6();
            v47 = v75;
            sub_1BC7DFA68(v15, v75, v48);
            v49 = *v47;
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              OUTLINED_FUNCTION_5_1();
              sub_1BC7DFAC4(v26, v62);
              sub_1BC7DFAC4(v29, v49);
              goto LABEL_26;
            }

            v50 = *&v15[v46];
            sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
            v51 = sub_1BC8F83A4();

            OUTLINED_FUNCTION_5_1();
            sub_1BC7DFAC4(v26, v52);
            sub_1BC7DFAC4(v29, v49);
            if ((v51 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            OUTLINED_FUNCTION_3_6();
            v53 = v72;
            sub_1BC7DFA68(v15, v72, v54);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1BC7DFAC4(v26, type metadata accessor for HistoryItem);
              sub_1BC7DFAC4(v29, type metadata accessor for HistoryItem);
              (*v71)(v53, v74);
LABEL_26:
              sub_1BC7C1744(v15, &qword_1EBCF4FC8, &qword_1BC9083B0);
              goto LABEL_27;
            }

            v55 = &v15[v46];
            v56 = v73;
            v57 = v74;
            (*v70)(v73, v55, v74);
            v58 = OUTLINED_FUNCTION_29();
            v76 = MEMORY[0x1BFB28700](v58);
            v59 = *v71;
            (*v71)(v56, v57);
            sub_1BC7DFAC4(v26, type metadata accessor for HistoryItem);
            sub_1BC7DFAC4(v29, type metadata accessor for HistoryItem);
            v59(v53, v57);
            if ((v76 & 1) == 0)
            {
LABEL_23:
              OUTLINED_FUNCTION_1_5();
              sub_1BC7DFAC4(v15, v61);
              goto LABEL_27;
            }
          }

          ++v41;
          OUTLINED_FUNCTION_1_5();
          sub_1BC7DFAC4(v15, v60);
          v34 = v78;
          v37 = v79;
          if (v40 == v41)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_20:
      v31 = v67 + 1;

      v30 = v64;
      if (v31 == v64)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7DB4D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BC8F8AA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1BC7DB564()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v63 = sub_1BC8F7324();
  v5 = OUTLINED_FUNCTION_0(v63);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v61 = v11 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1(v66);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_33_2();
  v67 = type metadata accessor for HistoryItem();
  v15 = OUTLINED_FUNCTION_22_1(v67);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1();
  v62 = (v18 - v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v56 - v26;
  v28 = *(v4 + 16);
  if (v28 != *(v2 + 16) || !v28 || v4 == v2)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_36_2(v25);
  v30 = v4 + v29;
  v31 = v2 + v29;
  v57 = (v7 + 32);
  v58 = v24;
  v59 = (v7 + 8);
  v60 = v32;
  v34 = *(v33 + 72);
  v65 = v27;
  while (1)
  {
    sub_1BC7DFA68(v30, v27, type metadata accessor for HistoryItem);
    sub_1BC7DFA68(v31, v24, type metadata accessor for HistoryItem);
    v35 = *(v66 + 48);
    sub_1BC7DFA68(v27, v0, type metadata accessor for HistoryItem);
    sub_1BC7DFA68(v24, v0 + v35, type metadata accessor for HistoryItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_3_6();
    v42 = v60;
    sub_1BC7DFA68(v0, v60, v43);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v59)(v42, v63);
      goto LABEL_15;
    }

    v44 = v61;
    v45 = v63;
    (*v57)(v61, v0 + v35, v63);
    v64 = MEMORY[0x1BFB28700](v42, v44);
    v46 = *v59;
    v47 = v44;
    v24 = v58;
    (*v59)(v47, v45);
    v48 = v45;
    v27 = v65;
    v46(v42, v48);
    OUTLINED_FUNCTION_1_5();
    sub_1BC7DFAC4(v0, v49);
    if ((v64 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    OUTLINED_FUNCTION_5_1();
    sub_1BC7DFAC4(v24, v50);
    v51 = OUTLINED_FUNCTION_45_1();
    sub_1BC7DFAC4(v51, v52);
    v31 += v34;
    v30 += v34;
    if (!--v28)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_3_6();
  v36 = v62;
  sub_1BC7DFA68(v0, v62, v37);
  v38 = *v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *(v0 + v35);
    sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
    v40 = sub_1BC8F83A4();

    v27 = v65;
    OUTLINED_FUNCTION_1_5();
    sub_1BC7DFAC4(v0, v41);
    if ((v40 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_15:
  sub_1BC7C1744(v0, &qword_1EBCF4FC8, &qword_1BC9083B0);
LABEL_16:
  OUTLINED_FUNCTION_5_1();
  sub_1BC7DFAC4(v24, v53);
  v54 = OUTLINED_FUNCTION_45_1();
  sub_1BC7DFAC4(v54, v55);
LABEL_17:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7DB990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    while (2)
    {
      v5 = *(v3 - 1);
      v6 = *v4;
      switch(*v3)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_19;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          v8 = *(v4 - 1);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v9 = OUTLINED_FUNCTION_29();
          v11 = sub_1BC7F59BC(v9, v10);
          goto LABEL_20;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_19;
        case 4:
          if (v6 != 4 || *(v4 - 1) != 0)
          {
            return 0;
          }

          goto LABEL_21;
        default:
          if (*v4)
          {
            return 0;
          }

LABEL_19:
          v12 = *(v4 - 1);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_29();
          sub_1BC7DAF10();
LABEL_20:
          v13 = v11;
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if ((v13 & 1) == 0)
          {
            return 0;
          }

LABEL_21:
          v3 += 16;
          v4 += 16;
          if (!--v2)
          {
            return 1;
          }

          continue;
      }
    }
  }

  return 1;
}

void sub_1BC7DBADC()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v105 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v6 = OUTLINED_FUNCTION_4_1(v105);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v101 = v10 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0) - 8) + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v93 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_49();
  v20 = OUTLINED_FUNCTION_0(v19);
  v107 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_0();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_32_0();
  v106 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  v28 = OUTLINED_FUNCTION_22_1(v106);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_1();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v108 = &v93 - v36;
  v37 = *(v5 + 16);
  if (v37 == *(v3 + 16) && v37 && v5 != v3)
  {
    v98 = v19;
    OUTLINED_FUNCTION_36_2(v35);
    v40 = v5 + v39;
    v95 = v37;
    v96 = v3 + v39;
    v42 = *(v41 + 72);
    v93 = v42;
    v94 = v5 + v39;
    while (1)
    {
      v43 = v38;
      v44 = v42 * v38;
      v45 = v108;
      sub_1BC7DFA68(v40 + v42 * v38, v108, type metadata accessor for FaceTimeMessageStore_Utterance);
      v97 = v43;
      if (v43 == v37)
      {
        break;
      }

      sub_1BC7DFA68(v96 + v44, v33, type metadata accessor for FaceTimeMessageStore_Utterance);
      v46 = v98;
      if (*v45 != *v33)
      {
        goto LABEL_53;
      }

      v47 = *(v45 + 8) == *(v33 + 8) && *(v45 + 16) == *(v33 + 16);
      if (!v47 && (sub_1BC8F8AA4() & 1) == 0)
      {
        goto LABEL_53;
      }

      v48 = *(v45 + 24);
      v103 = *(v33 + 24);
      v104 = v48;
      v49 = *(v48 + 16);
      v50 = *(v103 + 16);
      v102 = v49;
      if (v49 != v50)
      {
        goto LABEL_53;
      }

      if (v102 && v104 != v103)
      {
        v51 = 0;
        v52 = *(v107 + 80);
        OUTLINED_FUNCTION_25_1();
        v100 = v104 + v53;
        v99 = v103 + v53;
        while (v51 < *(v104 + 16))
        {
          v54 = *(v107 + 72) * v51;
          OUTLINED_FUNCTION_19_2();
          sub_1BC7DFA68(v100 + v54, v1, v55);
          if (v51 >= *(v103 + 16))
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_19_2();
          sub_1BC7DFA68(v99 + v54, v26, v56);
          if (*v1 != *v26)
          {
            goto LABEL_52;
          }

          v57 = *(v46 + 24);
          v58 = *(v15 + 48);
          sub_1BC7DF4F8(v1 + v57, v0);
          sub_1BC7DF4F8(v26 + v57, v0 + v58);
          v59 = v105;
          OUTLINED_FUNCTION_43(v0, 1, v105);
          if (v47)
          {
            v60 = OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_43(v60, v61, v59);
            if (!v47)
            {
              goto LABEL_50;
            }

            sub_1BC7C1744(v0, &qword_1EBCF4F08, &qword_1BC9090E0);
          }

          else
          {
            sub_1BC7DF4F8(v0, v14);
            v62 = OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_43(v62, v63, v59);
            if (v64)
            {
              OUTLINED_FUNCTION_6_4();
              sub_1BC7DFAC4(v14, v91);
LABEL_50:
              v89 = &qword_1EBCF4F10;
              v90 = &unk_1BC8FC6C0;
              goto LABEL_51;
            }

            v65 = v0 + v58;
            v58 = v101;
            sub_1BC7DF568(v65, v101);
            if (*v14 != *v58 || v14[1] != *(v58 + 4))
            {
              OUTLINED_FUNCTION_15_2();
              sub_1BC7DFAC4(v58, v88);
              sub_1BC7DFAC4(v14, v46);
              v89 = &qword_1EBCF4F08;
              v90 = &qword_1BC9090E0;
LABEL_51:
              sub_1BC7C1744(v0, v89, v90);
LABEL_52:
              OUTLINED_FUNCTION_16_1();
              sub_1BC7DFAC4(v26, v92);
              sub_1BC7DFAC4(v1, v46);
              v45 = v108;
              goto LABEL_53;
            }

            v66 = *(v59 + 24);
            sub_1BC8F7434();
            OUTLINED_FUNCTION_2_2();
            sub_1BC7DFB1C(&qword_1EBCF4F18, v67);
            sub_1BC8F7BC4();
            OUTLINED_FUNCTION_17_3();
            v69 = v68;
            v46 = v98;
            sub_1BC7DFAC4(v58, v68);
            sub_1BC7DFAC4(v14, v69);
            sub_1BC7C1744(v0, &qword_1EBCF4F08, &qword_1BC9090E0);
            if ((v58 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          v70 = *(v46 + 20);
          sub_1BC8F7434();
          OUTLINED_FUNCTION_2_2();
          sub_1BC7DFB1C(&qword_1EBCF4F18, v71);
          sub_1BC8F7BC4();
          OUTLINED_FUNCTION_18_2();
          v73 = v72;
          sub_1BC7DFAC4(v26, v72);
          sub_1BC7DFAC4(v1, v73);
          v45 = v108;
          if ((v58 & 1) == 0)
          {
            goto LABEL_53;
          }

          if (v102 == ++v51)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        break;
      }

LABEL_30:
      v74 = v106[8];
      v75 = (v45 + v74);
      v76 = *(v45 + v74 + 4);
      v77 = (v33 + v74);
      v78 = *(v33 + v74 + 4);
      if (v76)
      {
        if (!v78)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*v75 != *v77)
        {
          LOBYTE(v78) = 1;
        }

        if (v78)
        {
LABEL_53:
          sub_1BC7DFAC4(v33, type metadata accessor for FaceTimeMessageStore_Utterance);
          sub_1BC7DFAC4(v45, type metadata accessor for FaceTimeMessageStore_Utterance);
          goto LABEL_54;
        }
      }

      OUTLINED_FUNCTION_46(v106[9]);
      if (v80)
      {
        if (!v79)
        {
          goto LABEL_53;
        }
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v81)
        {
          goto LABEL_53;
        }
      }

      OUTLINED_FUNCTION_46(v106[10]);
      if (v83)
      {
        if (!v82)
        {
          goto LABEL_53;
        }
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v84)
        {
          goto LABEL_53;
        }
      }

      v85 = v106[7];
      sub_1BC8F7434();
      OUTLINED_FUNCTION_2_2();
      sub_1BC7DFB1C(&qword_1EBCF4F18, v86);
      v87 = sub_1BC8F7BC4();
      sub_1BC7DFAC4(v33, type metadata accessor for FaceTimeMessageStore_Utterance);
      sub_1BC7DFAC4(v45, type metadata accessor for FaceTimeMessageStore_Utterance);
      if (v87)
      {
        v38 = v97 + 1;
        v40 = v94;
        v37 = v95;
        v42 = v93;
        if (v97 + 1 != v95)
        {
          continue;
        }
      }

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC7DC204()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v57 = v11 - v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0) - 8) + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33_2();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  OUTLINED_FUNCTION_4_1(v58);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  v59 = OUTLINED_FUNCTION_49();
  v17 = OUTLINED_FUNCTION_22_1(v59);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v54 - v25);
  v27 = *(v5 + 16);
  if (v27 == *(v3 + 16) && v27 && v5 != v3)
  {
    OUTLINED_FUNCTION_36_2(v24);
    v29 = v5 + v28;
    v30 = v3 + v28;
    v32 = *(v31 + 72);
    v55 = v22;
    v56 = v32;
    while (1)
    {
      sub_1BC7DFA68(v29, v26, type metadata accessor for FaceTimeMessageStore_Caption);
      sub_1BC7DFA68(v30, v22, type metadata accessor for FaceTimeMessageStore_Caption);
      if (*v26 != *v22)
      {
        break;
      }

      v33 = *(v59 + 24);
      v34 = *(v58 + 48);
      sub_1BC7DF4F8(v26 + v33, v1);
      sub_1BC7DF4F8(v22 + v33, v1 + v34);
      OUTLINED_FUNCTION_43(v1, 1, v6);
      if (v39)
      {
        v35 = OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_43(v35, v36, v6);
        if (!v39)
        {
          goto LABEL_21;
        }

        sub_1BC7C1744(v1, &qword_1EBCF4F08, &qword_1BC9090E0);
      }

      else
      {
        sub_1BC7DF4F8(v1, v0);
        v37 = OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_43(v37, v38, v6);
        if (v39)
        {
          OUTLINED_FUNCTION_6_4();
          sub_1BC7DFAC4(v0, v52);
LABEL_21:
          v50 = &qword_1EBCF4F10;
          v51 = &unk_1BC8FC6C0;
LABEL_22:
          sub_1BC7C1744(v1, v50, v51);
          break;
        }

        v40 = v1 + v34;
        v34 = v57;
        sub_1BC7DF568(v40, v57);
        if (*v0 != *v34 || v0[1] != *(v34 + 4))
        {
          OUTLINED_FUNCTION_15_2();
          sub_1BC7DFAC4(v34, v49);
          sub_1BC7DFAC4(v0, v27);
          v50 = &qword_1EBCF4F08;
          v51 = &qword_1BC9090E0;
          goto LABEL_22;
        }

        v41 = *(v6 + 24);
        sub_1BC8F7434();
        OUTLINED_FUNCTION_2_2();
        sub_1BC7DFB1C(&qword_1EBCF4F18, v42);
        sub_1BC8F7BC4();
        OUTLINED_FUNCTION_17_3();
        v44 = v43;
        v22 = v55;
        sub_1BC7DFAC4(v34, v43);
        sub_1BC7DFAC4(v0, v44);
        sub_1BC7C1744(v1, &qword_1EBCF4F08, &qword_1BC9090E0);
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      v45 = *(v59 + 20);
      sub_1BC8F7434();
      OUTLINED_FUNCTION_2_2();
      sub_1BC7DFB1C(&qword_1EBCF4F18, v46);
      sub_1BC8F7BC4();
      OUTLINED_FUNCTION_18_2();
      v48 = v47;
      sub_1BC7DFAC4(v22, v47);
      sub_1BC7DFAC4(v26, v48);
      if (v34)
      {
        v30 += v56;
        v29 += v56;
        v27 = (v27 - 1);
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_16_1();
    sub_1BC7DFAC4(v22, v53);
    sub_1BC7DFAC4(v26, v27);
  }

LABEL_24:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7DC654(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + (v3 << 6);
    v7 = *v6;
    v8 = (v5 + (v3 << 6));
    v9 = *v8;
    v10 = *(*v6 + 16);
    if (v10 != *(*v8 + 16))
    {
      return 0;
    }

    result = *(v6 + 8);
    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(v6 + 40);
    v14 = *(v6 + 48);
    v15 = *(v6 + 52);
    v16 = *(v6 + 56);
    v17 = *(v8 + 1);
    v18 = *(v8 + 2);
    v19 = v8[3];
    v20 = *(v8 + 32);
    v21 = v8[5];
    v22 = *(v8 + 48);
    v23 = *(v8 + 13);
    if (v10)
    {
      v24 = v7 == v9;
    }

    else
    {
      v24 = 1;
    }

    v25 = *(v8 + 56);
    if (!v24)
    {
      v26 = (v7 + 56);
      v27 = (v9 + 56);
      while (v10)
      {
        v28 = *v26;
        v29 = *v27;
        if (*(v26 - 1))
        {
          if (v28 == v29)
          {
            v30 = *(v27 - 8);
          }

          else
          {
            v30 = 0;
          }

          if (v30 != 1)
          {
            return 0;
          }
        }

        else
        {
          v31 = 0;
          if (*(v27 - 1))
          {
            return v31;
          }

          v32 = *(v26 - 3) == *(v27 - 3) && *(v26 - 2) == *(v27 - 2);
          if (!v32 || v28 != v29)
          {
            return v31;
          }
        }

        v26 += 4;
        v27 += 4;
        if (!--v10)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (result != v17 || *(v6 + 16) != v18)
    {
      v42 = v20;
      v43 = *(v6 + 32);
      v35 = *(v6 + 52);
      v36 = v22;
      v37 = *(v6 + 48);
      v38 = v4;
      result = sub_1BC8F8AA4();
      v15 = v35;
      v4 = v38;
      v14 = v37;
      v22 = v36;
      v20 = v42;
      v12 = v43;
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (v11 == v19)
      {
        v39 = v20;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    if (v14)
    {
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == v21)
      {
        v40 = v22;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        return 0;
      }
    }

    if (v16)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v15 == v23)
      {
        v41 = v25;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    ++v3;
    v31 = 1;
    if (v3 == v2)
    {
      return v31;
    }
  }

  __break(1u);
  return result;
}

void sub_1BC7DC858()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *(v3 + 16);
  if (v16 == *(v1 + 16) && v16 && v3 != v1)
  {
    v17 = *(v7 + 80);
    OUTLINED_FUNCTION_25_1();
    v19 = v3 + v18;
    v20 = v1 + v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v23 = (v21 - 8);
    v32 = *(v21 + 56);
    v33 = v22;
    while (1)
    {
      v24 = v33;
      v33(v15, v19, v4);
      if (!v16)
      {
        break;
      }

      v25 = v21;
      v24(v12, v20, v4);
      OUTLINED_FUNCTION_20_1();
      sub_1BC7DFB1C(&unk_1EDC205F0, v26);
      OUTLINED_FUNCTION_45_1();
      v27 = sub_1BC8F7BC4();
      v28 = *v23;
      v29 = OUTLINED_FUNCTION_29();
      v28(v29);
      v30 = OUTLINED_FUNCTION_41_1();
      v28(v30);
      if (v27)
      {
        v20 += v32;
        v19 += v32;
        v31 = v16-- == 1;
        v21 = v25;
        if (!v31)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC7DCA28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCA7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCAD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_30_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_24_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7DCB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_1BC7A5AB4(v5);
        sub_1BC7A5AB4(v7);
        v8 = static MessageStoreQuery.== infix(_:_:)(&v11, &v10);
        sub_1BC7B0EFC(v10);
        sub_1BC7B0EFC(v11);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BC7DCBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v4;
      v6 = 7827308;
      v7 = 0xE300000000000000;
      switch(*v3)
      {
        case 1:
          v7 = 0xE600000000000000;
          v6 = 0x6D756964656DLL;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v6 = 1751607656;
          break;
        case 3:
          v6 = 7823730;
          break;
        default:
          break;
      }

      v8 = 7827308;
      v9 = 0xE300000000000000;
      switch(*v4)
      {
        case 1:
          v9 = 0xE600000000000000;
          v8 = 0x6D756964656DLL;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v8 = 1751607656;
          break;
        case 3:
          v8 = 7823730;
          break;
        default:
          break;
      }

      if (v6 == v8 && v7 == v9)
      {
      }

      else
      {
        v11 = sub_1BC8F8AA4();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1BC7DCD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xED00007478655464)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC7DCE34(char a1)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a1 & 1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7DCE7C(char a1)
{
  if (a1)
  {
    return 0x657474616D726F66;
  }

  else
  {
    return 0x636E617265747475;
  }
}

uint64_t sub_1BC7DCECC()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC7CF594(v3, v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7DCF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DCD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7DCF40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7DCE2C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7DCF68(uint64_t a1)
{
  v2 = sub_1BC7DD8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7DCFA4(uint64_t a1)
{
  v2 = sub_1BC7DD8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Transcript.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE0, &qword_1BC8FC488);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_2();
  v11 = *v1;
  v14 = v1[2];
  v15 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7DD8FC();

  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
  sub_1BC7DF1F4(&qword_1EDC1DED0, sub_1BC7DD950);
  sub_1BC8F89F4();

  if (!v2)
  {
    sub_1BC8F8944();
  }

  return (*(v7 + 8))(v3, v5);
}

uint64_t Transcript.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  sub_1BC7DF040(a1, *v1);
  if (!v3)
  {
    return sub_1BC8F8C24();
  }

  sub_1BC8F8C24();

  return sub_1BC8F7CD4();
}

uint64_t Transcript.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  sub_1BC7DF040(v5, v2);
  sub_1BC8F8C24();
  if (v3)
  {
    sub_1BC8F7CD4();
  }

  return sub_1BC8F8C64();
}

uint64_t Transcript.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EF0, &qword_1BC8FC498);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7DD8FC();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
  sub_1BC7DF1F4(&qword_1EDC1FF58, sub_1BC7DF268);
  sub_1BC8F88F4();
  v10 = sub_1BC8F8834();
  v12 = v11;
  v13 = OUTLINED_FUNCTION_35();
  v14(v13);
  *a2 = v16;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC7DD508()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1BC8F8C04();
  Transcript.hash(into:)(v2);
  return sub_1BC8F8C64();
}

id sub_1BC7DD55C(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_1BC8F7BE4();

  v10 = [v5 initWithConfidence:v9 text:a4 utteranceStartTimestamp:a5 utteranceDuration:a1];

  return v10;
}

char *sub_1BC7DD5E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1BC7DD61C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1BC7DD644(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

unint64_t sub_1BC7DD67C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result + 8 * a2;
  if (a3 >= result)
  {
    v4 = v3 >= a3;
    v5 = v3 == a3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v5 || !v4)
  {
    return swift_arrayInitWithTakeFrontToBack();
  }

  if (a3 != result)
  {
    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BC7DD6C8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1BC7DD7B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1BC7DD7EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1BC7DD82C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_4_1(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_41_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_41_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1BC7DD8FC()
{
  result = qword_1EDC20B20;
  if (!qword_1EDC20B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B20);
  }

  return result;
}

unint64_t sub_1BC7DD950()
{
  result = qword_1EDC1DF58;
  if (!qword_1EDC1DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF58);
  }

  return result;
}

char *sub_1BC7DD9A4(char *a1, int64_t a2, char a3)
{
  result = sub_1BC7DDEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DD9C4(char *a1, int64_t a2, char a3)
{
  result = sub_1BC7DDFC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BC7DDA24()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

void sub_1BC7DDA7C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_26_1();
  sub_1BC7DE100();
  *v0 = v2;
}

void sub_1BC7DDAC4()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

char *sub_1BC7DDB1C(char *a1, int64_t a2, char a3)
{
  result = sub_1BC7DE374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DDB3C(char *a1, int64_t a2, char a3)
{
  result = sub_1BC7DE47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BC7DDB5C()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

void sub_1BC7DDBF4()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

void sub_1BC7DDC4C()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

void *sub_1BC7DDD24(void *a1, int64_t a2, char a3)
{
  result = sub_1BC7DE57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BC7DDD44(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC7DE67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BC7DDDE4()
{
  v1 = *v0;
  sub_1BC7DE920();
  *v0 = v2;
}

void sub_1BC7DDE04()
{
  v1 = *v0;
  sub_1BC7DE100();
  *v0 = v2;
}

char *sub_1BC7DDE5C(char *a1, int64_t a2, char a3)
{
  result = sub_1BC7DEA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC7DDEBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F30, &qword_1BC8FC6D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC7DDFC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F28, &qword_1BC8FC6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

void sub_1BC7DE100()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_13_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_27_1();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(*(v6(0) - 8) + 80);
  OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    sub_1BC7DD82C(v8 + v24, v15, v20 + v24, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DE2A0()
{
  OUTLINED_FUNCTION_42_0();
  if (v5)
  {
    OUTLINED_FUNCTION_13_1();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_27_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_21_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FA0, &qword_1BC8FC750);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

char *sub_1BC7DE374(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC7DE47C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F20, &unk_1BC900AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1BC7DE57C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FD0, &qword_1BC8FC770);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1BC7DD67C(a4 + 32, v8, (v10 + 4));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1BC7DE67C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F90, &qword_1BC8FC738);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1BC7DD6C8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1BC7DE848()
{
  OUTLINED_FUNCTION_42_0();
  if (v5)
  {
    OUTLINED_FUNCTION_13_1();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_27_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_21_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC0, &unk_1BC8FC760);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_38_0(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BC7DE920()
{
  OUTLINED_FUNCTION_42_0();
  if (v5)
  {
    OUTLINED_FUNCTION_13_1();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_27_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_21_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
    swift_arrayInitWithCopy();
  }
}

char *sub_1BC7DEA38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FB8, &qword_1BC8FC758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BC7DEB40(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_1();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_27_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_2();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v13 != a4 || &a4[v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 8 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_41_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    swift_arrayInitWithCopy();
  }
}

void sub_1BC7DEC58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_40();
      sub_1BC8F7CD4();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DECBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *v4;
      if (*(v4 - 8) == 1)
      {
        sub_1BC8F8C24();
      }

      else
      {
        v7 = *(v4 - 3);
        v6 = *(v4 - 2);
        sub_1BC8F8C24();
        MEMORY[0x1BFB2A020](v7);
        MEMORY[0x1BFB2A020](v6);
      }

      if (v5 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v5;
      }

      MEMORY[0x1BFB2A060](*&v8);
      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DED54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = OUTLINED_FUNCTION_40();
      sub_1BC7FB4B0(v7, v8);
      OUTLINED_FUNCTION_39_1();
      sub_1BC7DEDCC();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DEDCC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7324();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v32 = type metadata accessor for HistoryItem();
  v12 = OUTLINED_FUNCTION_0(v32);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32_0();
  v21 = *(v2 + 16);
  MEMORY[0x1BFB2A020](v21);
  if (v21)
  {
    v22 = *(v14 + 80);
    OUTLINED_FUNCTION_25_1();
    v24 = v2 + v23;
    v25 = *(v14 + 72);
    v30 = (v6 + 8);
    v31 = (v6 + 32);
    do
    {
      sub_1BC7DFA68(v24, v0, type metadata accessor for HistoryItem);
      sub_1BC7DFA68(v0, v19, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v25;
        v27 = *v19;
        MEMORY[0x1BFB2A020](1);
        sub_1BC8F83B4();
        OUTLINED_FUNCTION_1_5();
        sub_1BC7DFAC4(v0, v28);

        v25 = v26;
      }

      else
      {
        (*v31)(v11, v19, v3);
        MEMORY[0x1BFB2A020](0);
        sub_1BC7DFB1C(&qword_1EBCF5018, MEMORY[0x1E69934D0]);
        sub_1BC8F7B64();
        (*v30)(v11, v3);
        OUTLINED_FUNCTION_1_5();
        sub_1BC7DFAC4(v0, v29);
      }

      v24 += v25;
      --v21;
    }

    while (v21);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DF040(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  v19 = v2;
  if (v2)
  {
    v4 = 0;
    v18 = v3 + 32;
    do
    {
      v5 = (v18 + (v4 << 6));
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = *(v5 + 32);
      v20 = v5[3];
      v21 = v5[5];
      v22 = *(v5 + 13);
      v23 = *(v5 + 48);
      v24 = *(v5 + 56);
      MEMORY[0x1BFB2A020](*(*v5 + 16));
      v10 = *(v6 + 16);
      if (v10)
      {
        v11 = (v6 + 56);
        do
        {
          v12 = *v11;
          if (*(v11 - 8) == 1)
          {
            sub_1BC8F8C24();
          }

          else
          {
            v14 = *(v11 - 3);
            v13 = *(v11 - 2);
            sub_1BC8F8C24();
            MEMORY[0x1BFB2A020](v14);
            MEMORY[0x1BFB2A020](v13);
          }

          if (v12 == 0.0)
          {
            v15 = 0.0;
          }

          else
          {
            v15 = v12;
          }

          MEMORY[0x1BFB2A060](*&v15);
          v11 += 4;
          --v10;
        }

        while (v10);
      }

      sub_1BC8F7CD4();
      if (v9)
      {
        sub_1BC8F8C24();
      }

      else
      {
        sub_1BC8F8C24();
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }

        MEMORY[0x1BFB2A060](v16);
      }

      if (v23)
      {
        sub_1BC8F8C24();
        if (v24)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1BC8F8C24();
        if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x1BFB2A060](v17);
        if (v24)
        {
LABEL_25:
          sub_1BC8F8C24();
          goto LABEL_26;
        }
      }

      sub_1BC8F8C24();
      sub_1BC8F8C44();
LABEL_26:

      ++v4;
    }

    while (v4 != v19);
  }
}

uint64_t sub_1BC7DF1F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4EE8, &qword_1BC8FC490);
    a2();
    OUTLINED_FUNCTION_39_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC7DF268()
{
  result = qword_1EDC1FF90;
  if (!qword_1EDC1FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF90);
  }

  return result;
}

unint64_t sub_1BC7DF2C0()
{
  result = qword_1EBCF4EF8;
  if (!qword_1EBCF4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4EF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transcript.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC7DF3F4()
{
  result = qword_1EBCF4F00;
  if (!qword_1EBCF4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF4F00);
  }

  return result;
}

unint64_t sub_1BC7DF44C()
{
  result = qword_1EDC20B10;
  if (!qword_1EDC20B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B10);
  }

  return result;
}

unint64_t sub_1BC7DF4A4()
{
  result = qword_1EDC20B18;
  if (!qword_1EDC20B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20B18);
  }

  return result;
}

uint64_t sub_1BC7DF4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7DF568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BC7DF5CC()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_10_5(v2, v3);
  if (v0)
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      switch(*(v6 + 8))
      {
        case 1:
          MEMORY[0x1BFB2A020](1);
          MEMORY[0x1BFB2A020](*(v7 + 16));
          v22 = *(v7 + 16);
          if (v22)
          {

            v23 = (v7 + 40);
            do
            {
              v24 = *(v23 - 1);
              v25 = *v23;

              v26 = OUTLINED_FUNCTION_39_1();
              sub_1BC7FB4B0(v26, v27);
              sub_1BC7DEDCC();

              v23 += 2;
              --v22;
            }

            while (v22);
            break;
          }

          goto LABEL_18;
        case 2:
          MEMORY[0x1BFB2A020](2);

          v14 = OUTLINED_FUNCTION_40();
          sub_1BC7FB338(v14, v15);
          break;
        case 3:
          MEMORY[0x1BFB2A020](3);
          MEMORY[0x1BFB2A020](*(v7 + 16));
          v16 = *(v7 + 16);
          if (!v16)
          {
            goto LABEL_18;
          }

          v17 = (v7 + 40);
          do
          {
            v18 = *(v17 - 1);
            v19 = *v17;

            v20 = OUTLINED_FUNCTION_39_1();
            sub_1BC7FB4B0(v20, v21);
            sub_1BC7DEDCC();

            v17 += 2;
            --v16;
          }

          while (v16);
          break;
        case 4:
          MEMORY[0x1BFB2A020](4);
          goto LABEL_18;
        default:
          MEMORY[0x1BFB2A020](0);
          MEMORY[0x1BFB2A020](*(v7 + 16));
          v8 = *(v7 + 16);
          if (!v8)
          {
            goto LABEL_18;
          }

          v9 = (v7 + 40);
          do
          {
            v10 = *(v9 - 1);
            v11 = *v9;

            v12 = OUTLINED_FUNCTION_39_1();
            sub_1BC7FB4B0(v12, v13);
            sub_1BC7DEDCC();

            v9 += 2;
            --v8;
          }

          while (v8);
          break;
      }

LABEL_18:
      ++v4;
    }

    while (v4 != v0);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7DF7B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48(a1, a2);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_1BC7A5AB4(v6);
      MessageStoreQuery.hash(into:)(v2);
      sub_1BC7B0EFC(v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1BC7DF814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1BC8F8C44();
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DF854(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1BC8F8C34();
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DF894(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1BFB2A020](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DF8D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48(a1, a2);
  if (v2)
  {
    v4 = *(sub_1BC8F7264() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_20_1();
    sub_1BC7DFB1C(v7, v8);
    do
    {
      sub_1BC8F7B64();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

void sub_1BC7DF9B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      sub_1BC8F7CD4();

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BC7DFA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_29();
  v8(v7);
  return a2;
}

uint64_t sub_1BC7DFAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC7DFB1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7DFBD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_37_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC7DFC34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465646461 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7DFCBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657461647075 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7DFD4C()
{
  OUTLINED_FUNCTION_22();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
  sub_1BC7C08E4();
  sub_1BC8F89F4();
  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_23();
}

void sub_1BC7DFE94()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_37_1(v4, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_0(v9);
  v15 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    sub_1BC7C082C();
    OUTLINED_FUNCTION_2_3();
    (*(v15 + 8))(v1, v9);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7DFFD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x55646574656C6564 && a2 == 0xEC00000073444955)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7E0070()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5210, &qword_1BC8FE2A0);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E37D8();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
  sub_1BC7E38E0();
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v4 = OUTLINED_FUNCTION_8_7();
  v5(v4);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0180()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51F8, &qword_1BC8FE290);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_10_6(v0);
  sub_1BC7E37D8();
  OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
    sub_1BC7E382C();
    OUTLINED_FUNCTION_2_3();
    v8 = OUTLINED_FUNCTION_8_7();
    v9(v8);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0290(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xEB000000006F666ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7E032C()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51F0, &qword_1BC8FE288);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E3784();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  type metadata accessor for AccountInfo();
  OUTLINED_FUNCTION_14_2();
  sub_1BC7E2760(v4, v5);
  OUTLINED_FUNCTION_9_5();
  sub_1BC8F89F4();
  v6 = OUTLINED_FUNCTION_38_1();
  v7(v6);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0454()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF51E8, &qword_1BC8FE280);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_10_6(v0);
  sub_1BC7E3784();
  OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for AccountInfo();
    OUTLINED_FUNCTION_14_2();
    sub_1BC7E2760(v8, v9);
    OUTLINED_FUNCTION_2_3();
    v10 = OUTLINED_FUNCTION_8_7();
    v11(v10);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0578(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7165526863746566 && a2 == 0xEC00000074736575)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7E05F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7E0684()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50D8, &qword_1BC8FD380);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2CAC();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  type metadata accessor for Message();
  OUTLINED_FUNCTION_15_3();
  sub_1BC7E2760(v4, v5);
  OUTLINED_FUNCTION_9_5();
  sub_1BC8F89F4();
  v6 = OUTLINED_FUNCTION_38_1();
  v7(v6);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E07AC()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50C8, &qword_1BC8FD378);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_10_6(v0);
  sub_1BC7E2CAC();
  OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for Message();
    OUTLINED_FUNCTION_15_3();
    sub_1BC7E2760(v8, v9);
    OUTLINED_FUNCTION_2_3();
    v10 = OUTLINED_FUNCTION_8_7();
    v11(v10);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E08D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x555564726F636572 && a2 == 0xEA00000000004449)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7E096C()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50C0, &qword_1BC8FD370);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2C58();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_1_6();
  sub_1BC7E2760(v4, v5);
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v6 = OUTLINED_FUNCTION_8_7();
  v7(v6);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v13 = v12;
  v14 = sub_1BC8F7264();
  v15 = OUTLINED_FUNCTION_0(v14);
  v32 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_30_2(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50B0, &qword_1BC8FD368);
  OUTLINED_FUNCTION_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_24_2();
  v25 = type metadata accessor for SaveMessageToPhotoLibrary(v24);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  v27 = v13[4];
  OUTLINED_FUNCTION_25_2(v13, v13[3]);
  sub_1BC7E2C58();
  OUTLINED_FUNCTION_23_0();
  sub_1BC8F8C84();
  if (!v10)
  {
    OUTLINED_FUNCTION_1_6();
    sub_1BC7E2760(v28, v29);
    sub_1BC8F88F4();
    v30 = OUTLINED_FUNCTION_29_1();
    v31(v30);
    (*(v32 + 32))(v11, a10, v14);
    OUTLINED_FUNCTION_32_1();
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E0C9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1BC7E0D2C()
{
  OUTLINED_FUNCTION_40_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF50A0, &qword_1BC8FD358);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2A9C();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5098, &qword_1BC8FD350);
  sub_1BC7E2BA4();
  OUTLINED_FUNCTION_5_2();
  sub_1BC8F89F4();
  v4 = OUTLINED_FUNCTION_8_7();
  v5(v4);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E0E3C()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_34_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5090, &qword_1BC8FD348);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_10_6(v0);
  sub_1BC7E2A9C();
  OUTLINED_FUNCTION_12_3();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5098, &qword_1BC8FD350);
    sub_1BC7E2AF0();
    OUTLINED_FUNCTION_2_3();
    v8 = OUTLINED_FUNCTION_8_7();
    v9(v8);
    OUTLINED_FUNCTION_33_3();
  }

  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_36_3();
}

uint64_t sub_1BC7E0F4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC7E0FC0()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

void sub_1BC7E1018()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5088, &qword_1BC8FD340);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v10 = *v0;
  v11 = v3[4];
  OUTLINED_FUNCTION_25_2(v3, v3[3]);
  sub_1BC7A5AB4(v10);
  sub_1BC7E2A48();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  sub_1BC7B2348();
  sub_1BC8F89F4();
  sub_1BC7B0EFC(v10);
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_23();
}

void sub_1BC7E1140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5078, &qword_1BC8FD338);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v22 = v13[4];
  OUTLINED_FUNCTION_25_2(v13, v13[3]);
  sub_1BC7E2A48();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (!v10)
  {
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E1278(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7275636341736177 && a2 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC7E134C(char a1)
{
  if (a1)
  {
    return 0x7275636341736177;
  }

  else
  {
    return 0x555564726F636572;
  }
}

void sub_1BC7E1390()
{
  OUTLINED_FUNCTION_40_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5070, &qword_1BC8FD330);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  OUTLINED_FUNCTION_6_5();
  sub_1BC7E2934();
  OUTLINED_FUNCTION_17_4();
  sub_1BC8F8CA4();
  v13[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_1_6();
  sub_1BC7E2760(v10, v11);
  sub_1BC8F89F4();
  if (!v1)
  {
    v12 = *(v0 + *(type metadata accessor for ReportTranscriptAccuracy(0) + 20));
    v13[14] = 1;
    sub_1BC8F89B4();
  }

  (*(v4 + 8))(v9, v2);
  OUTLINED_FUNCTION_36_3();
}

void sub_1BC7E150C()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v27 = v3;
  v29 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_0(v29);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5060, &qword_1BC8FD328);
  OUTLINED_FUNCTION_0(v30);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_39_0();
  v14 = type metadata accessor for ReportTranscriptAccuracy(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v20 = v19 - v18;
  v21 = v2[4];
  OUTLINED_FUNCTION_25_2(v2, v2[3]);
  sub_1BC7E2934();
  sub_1BC8F8C84();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    sub_1BC7E2760(v22, v23);
    sub_1BC8F88F4();
    (*(v28 + 32))(v20, v10, v29);
    v24 = sub_1BC8F88B4();
    v25 = OUTLINED_FUNCTION_22_2();
    v26(v25);
    *(v20 + *(v14 + 20)) = v24 & 1;
    sub_1BC7E2988(v20, v27);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1BC7E29EC(v20);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7E17D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFC34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1800(uint64_t a1)
{
  v2 = sub_1BC7E39E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E183C(uint64_t a1)
{
  v2 = sub_1BC7E39E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1878(void *a1@<X8>)
{
  sub_1BC7DFE94();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E191C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFCBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1948(uint64_t a1)
{
  v2 = sub_1BC7E3994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1984(uint64_t a1)
{
  v2 = sub_1BC7E3994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E19C0(void *a1@<X8>)
{
  sub_1BC7DFE94();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7DFFD4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1A90(uint64_t a1)
{
  v2 = sub_1BC7E37D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1ACC(uint64_t a1)
{
  v2 = sub_1BC7E37D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1B08(void *a1@<X8>)
{
  sub_1BC7E0180();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0290(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E1B80(uint64_t a1)
{
  v2 = sub_1BC7E3784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1BBC(uint64_t a1)
{
  v2 = sub_1BC7E3784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E1BF8(void *a1@<X8>)
{
  sub_1BC7E0454();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E1C40(uint64_t a1)
{
  v2 = sub_1BC7E3730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1C7C(uint64_t a1)
{
  v2 = sub_1BC7E3730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1CFC(uint64_t a1)
{
  v2 = sub_1BC7E36DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1D38(uint64_t a1)
{
  v2 = sub_1BC7E36DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1DB8(uint64_t a1)
{
  v2 = sub_1BC7ADF20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1DF4(uint64_t a1)
{
  v2 = sub_1BC7ADF20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1E30(uint64_t a1)
{
  v2 = sub_1BC7B1ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1E6C(uint64_t a1)
{
  v2 = sub_1BC7B1ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1EA8(uint64_t a1)
{
  v2 = sub_1BC7E2D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1EE4(uint64_t a1)
{
  v2 = sub_1BC7E2D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E1F64(uint64_t a1)
{
  v2 = sub_1BC7E2D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E1FA0(uint64_t a1)
{
  v2 = sub_1BC7E2D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2020(uint64_t a1)
{
  v2 = sub_1BC7AF4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E205C(uint64_t a1)
{
  v2 = sub_1BC7AF4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E209C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E05F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E20C8(uint64_t a1)
{
  v2 = sub_1BC7E2CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E2104(uint64_t a1)
{
  v2 = sub_1BC7E2CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E2140(void *a1@<X8>)
{
  sub_1BC7E07AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E218C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E08D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E21B8(uint64_t a1)
{
  v2 = sub_1BC7E2C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E21F4(uint64_t a1)
{
  v2 = sub_1BC7E2C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7E2264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0C9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E2290(uint64_t a1)
{
  v2 = sub_1BC7E2A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7E22CC(uint64_t a1)
{
  v2 = sub_1BC7E2A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BC7E2308(void *a1@<X8>)
{
  sub_1BC7E0E3C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BC7E2350()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7E2394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7E0F4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC7E23C0(uint64_t a1)
{
  v2 = sub_1BC7E2A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}