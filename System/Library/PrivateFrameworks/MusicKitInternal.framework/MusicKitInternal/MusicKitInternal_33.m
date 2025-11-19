unint64_t sub_1D513CE8C(char a1)
{
  result = 0x6B72616D6B6F6F62;
  switch(a1)
  {
    case 1:
      result = 0x506E656542736168;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E756F4379616C70;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0x656D6954706F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D513CF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D513CC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D513CF94(uint64_t a1)
{
  v2 = sub_1D513D218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D513CFD0(uint64_t a1)
{
  v2 = sub_1D513D218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackPosition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07B0, &qword_1D5639220);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v19 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v19[0] = *(v1 + 9);
  v19[1] = v13;
  v14 = v1[2];
  v16 = v1[3];
  v15 = v1[4];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D513D218();
  sub_1D56163D8();
  v25 = 0;
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v2)
  {
    v24 = 1;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616098();
    v23 = 2;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616098();
    v22 = 3;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160B8();
    v21 = 4;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    v20 = 5;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1D513D218()
{
  result = qword_1EC7F07B8;
  if (!qword_1EC7F07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F07B8);
  }

  return result;
}

uint64_t PlaybackPosition.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  sub_1D56162F8();
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v4);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x1DA6EC100](*&v7);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  return MEMORY[0x1DA6EC100](*&v8);
}

uint64_t PlaybackPosition.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[2];
  v6 = *(v0 + 3);
  sub_1D56162D8();
  PlaybackPosition.hash(into:)();
  return sub_1D5616328();
}

uint64_t PlaybackPosition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07C0, &qword_1D5639228);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D513D218();
  sub_1D5616398();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_103();
    sub_1D5615FB8();
    v15 = v14;
    v28 = 1;
    OUTLINED_FUNCTION_0_103();
    v16 = sub_1D5615FA8();
    v27 = 2;
    OUTLINED_FUNCTION_0_103();
    v17 = sub_1D5615FA8();
    v26 = 3;
    OUTLINED_FUNCTION_0_103();
    v23 = sub_1D5615FC8();
    v25 = 4;
    OUTLINED_FUNCTION_0_103();
    sub_1D5615FB8();
    v20 = v19;
    v24 = 5;
    OUTLINED_FUNCTION_0_103();
    sub_1D5615FB8();
    v22 = v21;
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
    *(a2 + 8) = v16 & 1;
    *(a2 + 9) = v17 & 1;
    *(a2 + 16) = v23;
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D513D5EC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[2];
  v6 = *(v0 + 3);
  sub_1D56162D8();
  PlaybackPosition.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D513D658()
{
  result = qword_1EC7F07C8;
  if (!qword_1EC7F07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F07C8);
  }

  return result;
}

uint64_t sub_1D513D6AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1D513D6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackPosition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D513D834()
{
  result = qword_1EC7F07D0;
  if (!qword_1EC7F07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F07D0);
  }

  return result;
}

unint64_t sub_1D513D88C()
{
  result = qword_1EC7F07D8;
  if (!qword_1EC7F07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F07D8);
  }

  return result;
}

unint64_t sub_1D513D8E4()
{
  result = qword_1EC7F07E0;
  if (!qword_1EC7F07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F07E0);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformCurator()
{
  result = qword_1EDD55B98;
  if (!qword_1EDD55B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D513D9B8()
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
      if (v2 <= 0x3F)
      {
        sub_1D513DB88(319, &qword_1EDD533A0, MEMORY[0x1E69759E8]);
        if (v3 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
          if (v4 <= 0x3F)
          {
            sub_1D4F18AF4();
            if (v5 <= 0x3F)
            {
              sub_1D513DB88(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
              if (v6 <= 0x3F)
              {
                sub_1D513DB88(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
                if (v7 <= 0x3F)
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

void sub_1D513DB88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D513DC24(uint64_t a1, uint64_t a2)
{
  v217 = a2;
  v200 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v200);
  v196 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v194 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v195 = v12;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v198);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v199 = v16;
  OUTLINED_FUNCTION_70_0();
  v203 = type metadata accessor for StorePlatformUber();
  v17 = OUTLINED_FUNCTION_14(v203);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v197 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v201 = v25;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v202);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v204 = v29;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v211);
  v207 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v205 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v206 = v39;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v209);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v210 = v43;
  OUTLINED_FUNCTION_70_0();
  v216 = sub_1D560FA68();
  v44 = OUTLINED_FUNCTION_4(v216);
  v213 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v208 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  v212 = v53;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0820, &qword_1D5639580);
  OUTLINED_FUNCTION_14(v214);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v215 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v58);
  v60 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v193 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v193 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  v76 = MEMORY[0x1EEE9AC00](v75);
  v78 = &v193 - v77;
  v79 = *(v76 + 56);
  v80 = a1;
  sub_1D4F1C460(a1, &v193 - v77, &qword_1EC7EB5B8, &unk_1D56206A0);
  v81 = v217;
  sub_1D4F1C460(v217, &v78[v79], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v78, 1, v58);
  if (v82)
  {
    OUTLINED_FUNCTION_57(&v78[v79], 1, v58);
    if (v82)
    {
      sub_1D4E50004(v78, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v83 = &qword_1EC7EC330;
    v84 = &qword_1D56222C0;
    v85 = v78;
    goto LABEL_10;
  }

  sub_1D4F1C460(v78, v71, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v78[v79], 1, v58);
  if (v82)
  {
    (*(v60 + 8))(v71, v58);
    goto LABEL_9;
  }

  (*(v60 + 32))(v65, &v78[v79], v58);
  sub_1D514075C(&qword_1EC7EBEB8);
  v87 = sub_1D5614D18();
  v88 = *(v60 + 8);
  v88(v65, v58);
  v88(v71, v58);
  sub_1D4E50004(v78, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v89 = type metadata accessor for StorePlatformCurator();
  v90 = v89[5];
  v91 = *(v81 + v90);
  if (*(v80 + v90))
  {
    if (!v91)
    {
      return 0;
    }

    v92 = *(v81 + v90);

    sub_1D4F28F1C();
    v94 = v93;

    if ((v94 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  v95 = v89[6];
  v96 = *(v81 + v95);
  if (*(v80 + v95))
  {
    if (!v96)
    {
      return 0;
    }

    v97 = *(v81 + v95);

    sub_1D4F29174();
    v99 = v98;

    if ((v99 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v100 = v89[7];
  v101 = *(v80 + v100);
  v102 = *(v80 + v100 + 8);
  v103 = (v81 + v100);
  v104 = v101 == *v103 && v102 == v103[1];
  if (!v104 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v105 = v89[8];
  v106 = v215;
  v107 = *(v214 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v108, v109, v110, v111);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v112, v113, v114, v115);
  v116 = v216;
  OUTLINED_FUNCTION_4_18(v106, 1);
  if (v82)
  {
    OUTLINED_FUNCTION_4_18(v106 + v107, 1);
    if (v82)
    {
      sub_1D4E50004(v106, &qword_1EC7F07E8, &qword_1D5639468);
      goto LABEL_39;
    }

LABEL_37:
    v83 = &qword_1EC7F0820;
    v84 = &qword_1D5639580;
LABEL_48:
    v85 = v106;
    goto LABEL_10;
  }

  sub_1D4F1C460(v106, v212, &qword_1EC7F07E8, &qword_1D5639468);
  OUTLINED_FUNCTION_4_18(v106 + v107, 1);
  if (v117)
  {
    v118 = *(v213 + 8);
    v119 = OUTLINED_FUNCTION_200();
    v120(v119);
    goto LABEL_37;
  }

  (*(v213 + 32))(v208, v106 + v107, v116);
  OUTLINED_FUNCTION_0_104();
  sub_1D514085C(v121);
  OUTLINED_FUNCTION_28_4();
  v122 = OUTLINED_FUNCTION_30_30();
  (qword_1D5639468)(v122);
  v123 = OUTLINED_FUNCTION_200();
  (qword_1D5639468)(v123);
  sub_1D4E50004(v106, &qword_1EC7F07E8, &qword_1D5639468);
  if ((&qword_1EC7F07E8 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v124 = v89[9];
  v106 = v210;
  v125 = *(v209 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v126, v127, v128, v129);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v130, v131, v132, v133);
  v134 = v211;
  OUTLINED_FUNCTION_4_18(v106, 1);
  if (!v82)
  {
    sub_1D4F1C460(v106, v206, &qword_1EC7EC960, &unk_1D56334C0);
    OUTLINED_FUNCTION_4_18(v106 + v125, 1);
    if (!v135)
    {
      (*(v207 + 32))(v205, v106 + v125, v134);
      sub_1D51407DC(&qword_1EC7EC988);
      OUTLINED_FUNCTION_28_4();
      v139 = OUTLINED_FUNCTION_30_30();
      (unk_1D56334C0)(v139);
      v140 = OUTLINED_FUNCTION_200();
      (unk_1D56334C0)(v140);
      sub_1D4E50004(v106, &qword_1EC7EC960, &unk_1D56334C0);
      if ((&qword_1EC7EC960 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_50;
    }

    v136 = *(v207 + 8);
    v137 = OUTLINED_FUNCTION_200();
    v138(v137);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_4_18(v106 + v125, 1);
  if (!v82)
  {
LABEL_47:
    v83 = &qword_1EC7EC968;
    v84 = &unk_1D5622290;
    goto LABEL_48;
  }

  sub_1D4E50004(v106, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_50:
  v141 = v89[10];
  OUTLINED_FUNCTION_27_20();
  if (v142)
  {
    if (!v143)
    {
      return 0;
    }

    v146 = *v144 == *v145 && v142 == v143;
    if (!v146 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v143)
  {
    return 0;
  }

  v147 = v89[11];
  OUTLINED_FUNCTION_27_20();
  if (v148)
  {
    if (!v149)
    {
      return 0;
    }

    v152 = *v150 == *v151 && v148 == v149;
    if (!v152 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  v153 = v89[12];
  v154 = *(v202 + 48);
  v155 = v204;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v156, v157, v158, v159);
  v160 = v155;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v161, v162, v163, v164);
  v165 = v203;
  OUTLINED_FUNCTION_57(v155, 1, v203);
  if (v82)
  {
    OUTLINED_FUNCTION_57(v155 + v154, 1, v165);
    if (v82)
    {
      sub_1D4E50004(v155, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_78;
    }
  }

  else
  {
    v166 = v155;
    v167 = v201;
    sub_1D4F1C460(v166, v201, &qword_1EC7EFBD0, &qword_1D5634650);
    OUTLINED_FUNCTION_57(v160 + v154, 1, v165);
    if (!v168)
    {
      v170 = v160 + v154;
      v171 = v197;
      sub_1D5119188(v170, v197);
      v172 = sub_1D54D5E40(v167, v171);
      sub_1D51405E4(v171, type metadata accessor for StorePlatformUber);
      sub_1D51405E4(v167, type metadata accessor for StorePlatformUber);
      sub_1D4E50004(v160, &qword_1EC7EFBD0, &qword_1D5634650);
      if (!v172)
      {
        return 0;
      }

LABEL_78:
      v173 = v89[13];
      v174 = v199;
      v175 = *(v198 + 48);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F1C460(v176, v177, v178, v179);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F1C460(v180, v181, v182, v183);
      v184 = v200;
      OUTLINED_FUNCTION_4_18(v174, 1);
      if (v82)
      {
        OUTLINED_FUNCTION_4_18(v174 + v175, 1);
        if (!v82)
        {
          goto LABEL_85;
        }

        sub_1D4E50004(v174, &unk_1EC7E9CA8, &unk_1D561D1D0);
      }

      else
      {
        v185 = v195;
        sub_1D4F1C460(v174, v195, &unk_1EC7E9CA8, &unk_1D561D1D0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v174 + v175, 1, v184);
        if (EnumTagSinglePayload == 1)
        {
          (*(v196 + 8))(v185, v184);
LABEL_85:
          v83 = &qword_1EC7E9FB0;
          v84 = &qword_1D562C590;
          v85 = v174;
          goto LABEL_10;
        }

        v187 = v196;
        v188 = v174 + v175;
        v189 = v194;
        (*(v196 + 32))(v194, v188, v184);
        OUTLINED_FUNCTION_1_92();
        sub_1D514085C(v190);
        v191 = sub_1D5614D18();
        v192 = *(v187 + 8);
        v192(v189, v184);
        v192(v185, v184);
        sub_1D4E50004(v174, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v191 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    OUTLINED_FUNCTION_15_49();
    sub_1D51405E4(v167, v169);
  }

  v83 = &qword_1EC7EFDD8;
  v84 = &unk_1D5639570;
  v85 = v160;
LABEL_10:
  sub_1D4E50004(v85, v83, v84);
  return 0;
}

uint64_t sub_1D513E9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x724273656E755469 && a2 == 0xEF65707954646E61;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1684957547 && a2 == 0xE400000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1919246965 && a2 == 0xE400000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1D5616168();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1D513ECD8(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x724273656E755469;
      break;
    case 5:
      result = 0x6F4E73656E757469;
      break;
    case 6:
      result = 1684957547;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 1919246965;
      break;
    case 9:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D513EDE4(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0810, &unk_1D5639560);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51404C4();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_4_3();
  if (!v2)
  {
    v13 = type metadata accessor for StorePlatformCurator();
    v29 = *(v4 + v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_4_3();
    v30 = *(v4 + v13[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D514057C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_4_3();
    v14 = (v4 + v13[7]);
    v31 = *v14;
    v32 = v14[1];
    sub_1D4F89BA0();
    sub_1D56160C8();
    v15 = v13[8];
    sub_1D560FA68();
    OUTLINED_FUNCTION_0_104();
    sub_1D514085C(v16);
    OUTLINED_FUNCTION_4_3();
    v17 = v13[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_4_3();
    v18 = (v4 + v13[10]);
    v19 = *v18;
    v20 = v18[1];
    OUTLINED_FUNCTION_29_31(6);
    v21 = (v4 + v13[11]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_29_31(7);
    v24 = v13[12];
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_12_50();
    sub_1D514085C(v25);
    OUTLINED_FUNCTION_4_3();
    v26 = v13[13];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1_92();
    sub_1D514085C(v27);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D513F1E4()
{
  v2 = v0;
  v121 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v121);
  v112 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v111 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v120 = v12;
  OUTLINED_FUNCTION_70_0();
  v118 = type metadata accessor for StorePlatformUber();
  v13 = OUTLINED_FUNCTION_14(v118);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v119 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v117 = v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v114);
  v109 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v108 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v113 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = sub_1D560FA68();
  v33 = OUTLINED_FUNCTION_4(v32);
  v107 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v106 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_31();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v42);
  v44 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v106 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v51 = OUTLINED_FUNCTION_22(v50);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v110 = &v106 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v106 - v56;
  sub_1D4F1C460(v2, &v106 - v56, &qword_1EC7EB5B8, &unk_1D56206A0);
  v58 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v58, v59, v42);
  v115 = v49;
  v116 = v44;
  if (v93)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v60 = OUTLINED_FUNCTION_16_47();
    v61(v60, v57, v42);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D514075C(v62);
    OUTLINED_FUNCTION_18_44();
    sub_1D5614CB8();
    (*(v44 + 8))(v49, v42);
  }

  v63 = type metadata accessor for StorePlatformCurator();
  if (*(v2 + v63[5]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v63[6]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v64 = (v2 + v63[7]);
  v65 = *v64;
  v66 = v64[1];
  sub_1D5614E28();
  sub_1D4F1C460(v2 + v63[8], v1, &qword_1EC7F07E8, &qword_1D5639468);
  OUTLINED_FUNCTION_57(v1, 1, v32);
  if (v93)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v68 = v106;
    v67 = v107;
    v69 = OUTLINED_FUNCTION_16_47();
    v70(v69, v1, v32);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_104();
    sub_1D514085C(v71);
    OUTLINED_FUNCTION_18_44();
    sub_1D5614CB8();
    (*(v67 + 8))(v68, v32);
  }

  v72 = v113;
  sub_1D4F1C460(v2 + v63[9], v113, &qword_1EC7EC960, &unk_1D56334C0);
  v73 = OUTLINED_FUNCTION_35_1();
  v74 = v114;
  OUTLINED_FUNCTION_4_18(v73, v75);
  if (v93)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v77 = v108;
    v76 = v109;
    v78 = OUTLINED_FUNCTION_16_47();
    v79(v78, v72, v74);
    OUTLINED_FUNCTION_27();
    sub_1D51407DC(&qword_1EC7ECA38);
    OUTLINED_FUNCTION_18_44();
    sub_1D5614CB8();
    (*(v76 + 8))(v77, v74);
  }

  v80 = v115;
  v81 = (v2 + v63[10]);
  if (v81[1])
  {
    v82 = *v81;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v83 = (v2 + v63[11]);
  if (v83[1])
  {
    v84 = *v83;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v85 = v119;
  v87 = v116;
  v86 = v117;
  sub_1D4F1C460(v2 + v63[12], v117, &qword_1EC7EFBD0, &qword_1D5634650);
  v88 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v88, v89, v118);
  if (v93)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v86, v85);
    OUTLINED_FUNCTION_27();
    v90 = v110;
    sub_1D4F1C460(v85, v110, &qword_1EC7EB5B8, &unk_1D56206A0);
    v91 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v91, v92, v42);
    if (v93)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v94 = OUTLINED_FUNCTION_16_47();
      v95(v94, v90, v42);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_8();
      sub_1D514075C(v96);
      OUTLINED_FUNCTION_18_44();
      sub_1D5614CB8();
      (*(v87 + 8))(v80, v42);
    }

    OUTLINED_FUNCTION_15_49();
    sub_1D51405E4(v85, v97);
  }

  v98 = v120;
  sub_1D4F1C460(v2 + v63[13], v120, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v99 = OUTLINED_FUNCTION_35_1();
  v100 = v121;
  OUTLINED_FUNCTION_57(v99, v101, v121);
  if (v93)
  {
    return OUTLINED_FUNCTION_36();
  }

  v103 = v111;
  v102 = v112;
  (*(v112 + 32))(v111, v98, v100);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_92();
  sub_1D514085C(v104);
  sub_1D5614CB8();
  return (*(v102 + 8))(v103, v100);
}

uint64_t sub_1D513FA0C()
{
  sub_1D56162D8();
  sub_1D513F1E4();
  return sub_1D5616328();
}

uint64_t sub_1D513FA4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v70 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07F8, &unk_1D5639550);
  OUTLINED_FUNCTION_4(v72);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v69 - v36;
  v76 = type metadata accessor for StorePlatformCurator();
  v38 = OUTLINED_FUNCTION_14(v76);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v75 = v41;
  v43 = a1[3];
  v42 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D51404C4();
  v71 = v37;
  v44 = v74;
  sub_1D5616398();
  if (!v44)
  {
    v45 = v2;
    v74 = v20;
    v46 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v77) = 0;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_31_1();
    sub_1D5615F78();
    v54 = v75;
    sub_1D4FD23EC(v30, v75, &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v80 = 1;
    sub_1D50C44B0(&qword_1EDD528F8);
    sub_1D5615F78();
    v55 = v76;
    *(v54 + v76[5]) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v80 = 2;
    sub_1D514057C(&qword_1EDD52908);
    OUTLINED_FUNCTION_21_37();
    *(v54 + v55[6]) = v77;
    v80 = 3;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v56 = v78;
    v57 = (v54 + v55[7]);
    *v57 = v77;
    v57[1] = v56;
    sub_1D560FA68();
    LOBYTE(v77) = 4;
    OUTLINED_FUNCTION_0_104();
    sub_1D514085C(v58);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21_37();
    sub_1D4FD23EC(v45, v54 + v55[8], &qword_1EC7F07E8, &qword_1D5639468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(v77) = 5;
    sub_1D4F88A24();
    OUTLINED_FUNCTION_31_1();
    v59 = v74;
    OUTLINED_FUNCTION_21_37();
    sub_1D4FD23EC(v59, v54 + v55[9], &qword_1EC7EC960, &unk_1D56334C0);
    LOBYTE(v77) = 6;
    v60 = sub_1D5615F38();
    v79 = 1;
    v61 = (v54 + v55[10]);
    *v61 = v60;
    v61[1] = v62;
    LOBYTE(v77) = 7;
    v63 = sub_1D5615F38();
    v64 = (v54 + v55[11]);
    *v64 = v63;
    v64[1] = v65;
    type metadata accessor for StorePlatformUber();
    LOBYTE(v77) = 8;
    OUTLINED_FUNCTION_12_50();
    sub_1D514085C(v66);
    OUTLINED_FUNCTION_31_1();
    sub_1D5615F78();
    sub_1D4FD23EC(v14, v54 + v55[12], &qword_1EC7EFBD0, &qword_1D5634650);
    sub_1D560C0A8();
    LOBYTE(v77) = 9;
    OUTLINED_FUNCTION_1_92();
    sub_1D514085C(v67);
    OUTLINED_FUNCTION_31_1();
    sub_1D5615F78();
    v74 = 0;
    (*(v46 + 8))(v71, v72);
    v68 = v75;
    sub_1D4FD23EC(v70, v75 + v76[13], &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D5140518(v68, v69);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return sub_1D51405E4(v68, type metadata accessor for StorePlatformCurator);
  }

  v74 = v44;
  OUTLINED_FUNCTION_32_30();
  v47 = v75;
  v48 = v76;
  result = __swift_destroy_boxed_opaque_existential_1(v73);
  v79 = 0;
  if (v44)
  {
    v50 = *(v47 + v48[5]);

    if (v42)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (!v42)
  {
    goto LABEL_5;
  }

LABEL_11:
  v52 = *(v47 + v48[6]);

  if ((v20 & 1) == 0)
  {
LABEL_12:
    if (v43)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_6:
  v51 = *(v47 + v48[7] + 8);

  if (v43)
  {
LABEL_13:
    result = sub_1D4E50004(v47 + v48[8], &qword_1EC7F07E8, &qword_1D5639468);
  }

LABEL_14:
  if (v79)
  {
    v53 = *(v47 + v48[10] + 8);
  }

  return result;
}

uint64_t sub_1D51403AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D513E9B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51403D4(uint64_t a1)
{
  v2 = sub_1D51404C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5140410(uint64_t a1)
{
  v2 = sub_1D51404C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5140488()
{
  sub_1D56162D8();
  sub_1D513F1E4();
  return sub_1D5616328();
}

unint64_t sub_1D51404C4()
{
  result = qword_1EC7F0800;
  if (!qword_1EC7F0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0800);
  }

  return result;
}

uint64_t sub_1D5140518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformCurator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D514057C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D51405E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D514063C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v8 = (v1 + *(type metadata accessor for StorePlatformCurator() + 40));
  v9 = *v8;
  v10 = v8[1];

  sub_1D542FD00(v9, v10, v2);
  v11 = sub_1D5610088();
  OUTLINED_FUNCTION_57(v2, 1, v11);
  if (!v12)
  {
    return (*(*(v11 - 8) + 32))(a1, v2, v11);
  }

  sub_1D560FE78();
  result = OUTLINED_FUNCTION_57(v2, 1, v11);
  if (!v12)
  {
    return sub_1D4E50004(v2, &qword_1EC7EA358, &unk_1D561DF50);
  }

  return result;
}

unint64_t sub_1D514075C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D514085C(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D51407DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D514085C(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D514085C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformCurator.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5140980()
{
  result = qword_1EC7F0838;
  if (!qword_1EC7F0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0838);
  }

  return result;
}

unint64_t sub_1D51409D8()
{
  result = qword_1EC7F0840;
  if (!qword_1EC7F0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0840);
  }

  return result;
}

unint64_t sub_1D5140A30()
{
  result = qword_1EC7F0848;
  if (!qword_1EC7F0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0848);
  }

  return result;
}

uint64_t EditorialElementLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C0A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EditorialElementLink.target.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditorialElementLink();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EditorialElementLink()
{
  result = qword_1EDD55C38;
  if (!qword_1EDD55C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialElementLink.feature.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditorialElementLink();
  *a1 = *(v1 + *(result + 24));
  return result;
}

void static EditorialElementLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for EditorialElementLink();
    if (*(a1 + v4[5]) == *(a2 + v4[5]))
    {
      v5 = v4[6];
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6 == 7)
      {
        if (v7 != 7)
        {
          return;
        }
      }

      else if (v6 != v7)
      {
        return;
      }

      v8 = v4[7];
      v9 = *(a1 + v8);
      v10 = *(a2 + v8);

      sub_1D4F286E0();
    }
  }
}

void EditorialElementLink.hash(into:)()
{
  sub_1D560C0A8();
  sub_1D51412B8(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  sub_1D5614CB8();
  v1 = type metadata accessor for EditorialElementLink();
  MEMORY[0x1DA6EC0D0](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  sub_1D56162F8();
  if (v2 != 7)
  {
    MEMORY[0x1DA6EC0D0](v2);
  }

  v3 = *(v0 + v1[7]);

  sub_1D4F31AC0();
}

uint64_t EditorialElementLink.hashValue.getter()
{
  sub_1D56162D8();
  EditorialElementLink.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5140D8C()
{
  sub_1D56162D8();
  EditorialElementLink.hash(into:)();
  return sub_1D5616328();
}

void EditorialElementLink.init(from:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v4 = sub_1D5611C78();
  v5 = OUTLINED_FUNCTION_4(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v26 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v26 - v19;
  v30 = a1;
  sub_1D4E628D4(a1, v29);
  type metadata accessor for CloudEditorialElementLink();
  sub_1D51412B8(&qword_1EDD55448, type metadata accessor for CloudEditorialElementLink);
  OUTLINED_FUNCTION_0_105();
  sub_1D51412B8(v21, type metadata accessor for CloudEditorialElementLink);
  sub_1D5610768();
  if (v2)
  {
    v29[0] = v2;
    v23 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v24 = v28;
      (*(v28 + 32))(v11, v13, v4);
      sub_1D5615C18();
      swift_allocError();
      v25 = v30;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v24 + 8))(v11, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    sub_1D54403B4(v27);
    v22 = (v26 + 8);
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*v22)(v20, v14);
  }
}

uint64_t EditorialElementLink.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v10 - v6;
  sub_1D544096C();
  sub_1D51412B8(&qword_1EDD55448, type metadata accessor for CloudEditorialElementLink);
  OUTLINED_FUNCTION_0_105();
  sub_1D51412B8(v8, type metadata accessor for CloudEditorialElementLink);
  sub_1D5610778();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1D51412B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5141328()
{
  sub_1D560C0A8();
  if (v0 <= 0x3F)
  {
    sub_1D51413CC();
    if (v1 <= 0x3F)
    {
      sub_1D4E5CF94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D51413CC()
{
  if (!qword_1EDD55C50[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD55C50);
    }
  }
}

uint64_t sub_1D514141C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_46_1();
  result = v6(v5);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t UploadedAudio.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for UploadedAudio() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D514160C(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = *a2;
  a3(0);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v7, v3);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v8, v3);

  return sub_1D560EC28();
}

uint64_t UploadedAudio.artistName.getter()
{
  if (qword_1EC7E8E38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_45_2();
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static UploadedAudio.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for UploadedAudio() + 20);

  return sub_1D5611A78();
}

uint64_t UploadedAudio.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_1D560D838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v102 = v4;
  v103 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v99 = v7;
  OUTLINED_FUNCTION_70_0();
  v98 = sub_1D5610088();
  v8 = OUTLINED_FUNCTION_4(v98);
  v96 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v95 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D5611AB8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v93 = v15;
  v94 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v100 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v105 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v106 = v43;
  OUTLINED_FUNCTION_70_0();
  v44 = type metadata accessor for UploadedAudio();
  v45 = OUTLINED_FUNCTION_14(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v104 = v49 - v48;
  sub_1D51459A0(v1, v49 - v48);
  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v51 = sub_1D4E74B10(v50, type metadata accessor for UploadedAudio);
  OUTLINED_FUNCTION_48_18();
  v52 = v107[0];
  v53 = v107[1];
  v54 = UploadedAudio.artistName.getter();
  v91 = v55;
  v92 = v54;
  if (qword_1EC7E8E40 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  OUTLINED_FUNCTION_48_18();
  if (qword_1EC7E8E58 != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  sub_1D56106B8();
  v88 = v38;
  OUTLINED_FUNCTION_48_18();
  if (qword_1EC7E8EB8 != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  v56 = 0xE000000000000000;
  if (v53)
  {
    v56 = v53;
  }

  v90 = v56;
  if (v53)
  {
    v57 = v52;
  }

  else
  {
    v57 = 0;
  }

  v89 = v57;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_48_18();
  v58 = v97;
  v59 = v98;
  v60 = OUTLINED_FUNCTION_45_1();
  __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  v108 = v44;
  v109 = v51;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
  sub_1D51459A0(v104, boxed_opaque_existential_0);
  v63 = __swift_project_boxed_opaque_existential_1(v107, v108);
  v65 = v93;
  v64 = v94;
  (*(v93 + 16))(v20, &v63[*(v44 + 20)], v94);
  v66 = v95;
  sub_1D5611A98();
  (*(v65 + 8))(v20, v64);
  v67 = v100;
  sub_1D560FDD8();
  (*(v96 + 8))(v66, v59);
  sub_1D4E50004(v58, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v59);
  v68 = OUTLINED_FUNCTION_98();
  sub_1D4F7AFE0(v68, v69);
  __swift_destroy_boxed_opaque_existential_1(v107);
  v70 = v99;
  sub_1D560EC98();
  v71 = OUTLINED_FUNCTION_128();
  sub_1D4E69970(v71, v72, &qword_1EC7EA358, &unk_1D561DF50);
  v73 = type metadata accessor for MusicSiriRepresentation();
  v74 = v101;
  v75 = v106;
  sub_1D4E69970(v106, v101 + v73[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v76 = v88;
  sub_1D4E69970(v88, v74 + v73[9], &qword_1EC7EC478, &unk_1D56299D0);
  v77 = v105;
  sub_1D4E69970(v105, v74 + v73[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v107[0]) = 17;
  sub_1D50391CC();
  v79 = v78;
  v81 = v80;
  sub_1D4E50004(v67, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v102 + 8))(v70, v103);
  v82 = OUTLINED_FUNCTION_128();
  sub_1D4E50004(v82, v83, &unk_1D561DF50);
  sub_1D4E50004(v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v76, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v75, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5146F00(v104);
  *v74 = v79;
  *(v74 + 8) = v81;
  *(v74 + 16) = 17;
  v85 = v90;
  *(v74 + 24) = v89;
  *(v74 + 32) = v85;
  v86 = v91;
  *(v74 + 40) = v92;
  *(v74 + 48) = v86;
  return result;
}

uint64_t UploadedAudio.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v5);
  v226 = sub_1D5614B68();
  v6 = OUTLINED_FUNCTION_4(v226);
  v213 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v15);
  v223 = sub_1D5613C48();
  v16 = OUTLINED_FUNCTION_4(v223);
  v211 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v25);
  v221 = sub_1D56141F8();
  v26 = OUTLINED_FUNCTION_4(v221);
  v209 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v235 = sub_1D5613EF8();
  v31 = OUTLINED_FUNCTION_4(v235);
  v207 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v234 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v232 = &v193 - v37;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08B8, &unk_1D5642230);
  OUTLINED_FUNCTION_14(v206);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v193 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v233);
  v220 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v52);
  v205 = sub_1D5610788();
  v53 = OUTLINED_FUNCTION_4(v205);
  v204 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v57);
  v203 = sub_1D56107C8();
  v58 = OUTLINED_FUNCTION_4(v203);
  v202 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v64 = OUTLINED_FUNCTION_22(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13();
  v199 = v67;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_48(&v193 - v69);
  v225 = sub_1D560C328();
  v70 = OUTLINED_FUNCTION_4(v225);
  v196 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  v80 = v79;
  OUTLINED_FUNCTION_70_0();
  v216 = sub_1D560C0A8();
  v81 = OUTLINED_FUNCTION_4(v216);
  v198 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v90);
  v215 = sub_1D5610978();
  v91 = OUTLINED_FUNCTION_4(v215);
  v195 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v96);
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v193 - v100;
  v102 = sub_1D56106B8();
  v103 = OUTLINED_FUNCTION_4(v102);
  v193 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  v109 = v108 - v107;
  strcpy(v246, "UploadedAudio(");
  HIBYTE(v246[1]) = -18;
  v242 = 0x22203A646920200ALL;
  v243 = 0xE800000000000000;
  v110 = *v0;
  v111 = v0[1];
  v112 = sub_1D560EEC8();
  v114 = v113;
  MEMORY[0x1DA6EAC70](v112);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_49_14();

  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_3_86();
  v116 = sub_1D4E74B10(v115, v114);
  OUTLINED_FUNCTION_0_106();
  v118 = sub_1D4E74B10(v117, v114);
  v229 = v116;
  v231 = v118;
  v230 = v0;
  sub_1D560EC28();
  if (v243)
  {
    OUTLINED_FUNCTION_51_0();
    v242 = v119 | 0x6C74697400000000;
    v243 = 0xEB00000000203A65;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_49_14();
  }

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v242 = 0xD000000000000011;
  v243 = v120;
  v121 = UploadedAudio.artistName.getter();
  MEMORY[0x1DA6EAC70](v121);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_49_14();

  if (qword_1EC7E8E58 != -1)
  {
    OUTLINED_FUNCTION_39_23();
  }

  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v101, 1, v102);
  v122 = v80;
  if (v123)
  {
    sub_1D4E50004(v101, &qword_1EC7EC478, &unk_1D56299D0);
  }

  else
  {
    v124 = v193;
    (*(v193 + 32))(v109, v101, v102);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5685A90);
    sub_1D5615D48();
    OUTLINED_FUNCTION_49_14();

    (*(v124 + 8))(v109, v102);
  }

  v125 = v224;
  v126 = v215;
  if (qword_1EC7E8E60 != -1)
  {
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_43_18();
  if ((v243 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_1D5615568();
    OUTLINED_FUNCTION_19_44();
  }

  if (qword_1EC7E8E70 != -1)
  {
    swift_once();
  }

  v127 = v214;
  OUTLINED_FUNCTION_43_18();
  v128 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v128, v129, v126);
  if (v123)
  {
    sub_1D4E50004(v127, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v215 = v122;
    v130 = v195;
    v131 = v194;
    (*(v195 + 32))(v194, v127, v126);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v242 = 0xD000000000000014;
    v243 = v132;
    v244 = sub_1D5610928();
    v245 = v133;
    v240 = 10;
    v241 = 0xE100000000000000;
    v238 = 2105354;
    v239 = 0xE300000000000000;
    sub_1D4F53278();
    v134 = OUTLINED_FUNCTION_23_5();
    v136 = v135;

    MEMORY[0x1DA6EAC70](v134, v136);

    OUTLINED_FUNCTION_19_44();

    v137 = v131;
    v125 = v224;
    (*(v130 + 8))(v137, v126);
    v122 = v215;
  }

  v138 = v233;
  v139 = v225;
  v140 = v216;
  if (qword_1EC7E8EB8 != -1)
  {
    OUTLINED_FUNCTION_38_25();
  }

  OUTLINED_FUNCTION_43_18();
  OUTLINED_FUNCTION_57(v122, 1, v140);
  if (v123)
  {
    sub_1D4E50004(v122, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v141 = v198;
    v142 = v197;
    (*(v198 + 32))(v197, v122, v140);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v242 = v143 | 0x74736F7000000000;
    v243 = 0xEE0022203A4C5255;
    OUTLINED_FUNCTION_28_35();
    sub_1D4E74B10(v144, v145);
    sub_1D56160F8();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_19_44();

    (*(v141 + 8))(v142, v140);
  }

  v146 = v227;
  if (qword_1EC7E8ED0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_43_18();
  OUTLINED_FUNCTION_57(v125, 1, v139);
  if (v123)
  {
    sub_1D4E50004(v125, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v147 = v196;
    v148 = v217;
    (*(v196 + 32))(v217, v125, v139);
    v149 = v200;
    sub_1D56107A8();
    v150 = v199;
    (*(v147 + 16))(v199, v148, v139);
    __swift_storeEnumTagSinglePayload(v150, 0, 1, v139);
    v151 = v204;
    v152 = v201;
    v153 = v205;
    (*(v204 + 104))(v201, *MEMORY[0x1E6975DC8], v205);
    v154 = sub_1D56107B8();
    v156 = v155;
    (*(v151 + 8))(v152, v153);
    sub_1D4E50004(v150, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v202 + 8))(v149, v203);
    if (v156)
    {
      OUTLINED_FUNCTION_11_61();
      sub_1D5615B68();

      OUTLINED_FUNCTION_9_0();
      v242 = 0xD000000000000013;
      v243 = v157;
      MEMORY[0x1DA6EAC70](v154, v156);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_19_44();
    }

    (*(v147 + 8))(v217, v225);
    v146 = v227;
  }

  v158 = v218;
  if (qword_1EC7E8EE0 != -1)
  {
    OUTLINED_FUNCTION_37_3();
  }

  OUTLINED_FUNCTION_43_18();
  OUTLINED_FUNCTION_57(v158, 1, v138);
  if (v123)
  {
    sub_1D4E50004(v158, &off_1EC7EB5B0, &unk_1D5632170);
  }

  else
  {
    v159 = v220;
    v160 = v219;
    (*(v220 + 32))(v219, v158, v138);
    v244 = 0;
    v245 = 0xE000000000000000;
    (*(v159 + 16))(v42, v160, v138);
    v161 = *(v206 + 36);
    sub_1D5146F5C();
    OUTLINED_FUNCTION_98();
    sub_1D5615608();
    v162 = (v207 + 16);
    v163 = (v207 + 32);
    v164 = (v207 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_98();
      sub_1D5615648();
      if (*&v42[v161] == v242)
      {
        break;
      }

      v165 = sub_1D5615688();
      v166 = v232;
      v167 = v235;
      (*v162)(v232);
      v165(&v242, 0);
      sub_1D5615658();
      (*v163)(v234, v166, v167);
      v168 = v244 & 0xFFFFFFFFFFFFLL;
      if ((v245 & 0x2000000000000000) != 0)
      {
        v168 = HIBYTE(v245) & 0xF;
      }

      if (v168)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v242 = 10;
      v243 = 0xE100000000000000;
      v169 = v234;
      v170 = sub_1D5613DF8();
      MEMORY[0x1DA6EAC70](v170);

      MEMORY[0x1DA6EAC70](v242, v243);

      (*v164)(v169, v235);
      v138 = v233;
    }

    sub_1D4E50004(v42, &qword_1EC7F08B8, &unk_1D5642230);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v242 = v171 | 0x6974726100000000;
    v243 = 0xEE005B203A737473;
    v240 = v244;
    v241 = v245;
    v238 = 10;
    v239 = 0xE100000000000000;
    v236 = 0x202020200ALL;
    v237 = 0xE500000000000000;
    sub_1D4F53278();
    OUTLINED_FUNCTION_23_5();

    v172 = OUTLINED_FUNCTION_46_1();
    MEMORY[0x1DA6EAC70](v172);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_19_44();

    (*(v220 + 8))(v219, v138);
    v146 = v227;
  }

  UploadedAudio.curator.getter(v146);
  v173 = OUTLINED_FUNCTION_45_1();
  v174 = v221;
  OUTLINED_FUNCTION_57(v173, v175, v221);
  v176 = v223;
  if (v123)
  {
    sub_1D4E50004(v146, &qword_1EC7EA9A0, &qword_1D561D230);
  }

  else
  {
    v177 = v209;
    v178 = v208;
    (*(v209 + 32))(v208, v146, v174);
    OUTLINED_FUNCTION_51_0();
    v242 = v179 | 0x6172756300000000;
    v243 = 0xED0000203A726F74;
    sub_1D5614148();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v177 + 8))(v178, v174);
  }

  v180 = v222;
  UploadedAudio.genre.getter(v222);
  v181 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v181, v182, v176);
  if (v123)
  {
    sub_1D4E50004(v180, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    v183 = v211;
    v184 = v210;
    (*(v211 + 32))(v210, v180, v176);
    OUTLINED_FUNCTION_51_0();
    v242 = v185 | 0x726E656700000000;
    v243 = 0xEB00000000203A65;
    sub_1D5613B88();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v183 + 8))(v184, v176);
  }

  UploadedAudio.radioShow.getter(v228);
  v186 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v186, v187, v226);
  if (v123)
  {
    sub_1D4E50004(v228, &qword_1EC7EA988, &qword_1D56397B0);
  }

  else
  {
    v188 = v213;
    v189 = v212;
    v190 = v226;
    (*(v213 + 32))(v212, v228, v226);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v242 = v191 | 0x6964617200000000;
    v243 = 0xEF203A776F68536FLL;
    sub_1D5614AB8();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v188 + 8))(v189, v190);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v246[0];
}

uint64_t UploadedAudio.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t UploadedAudio.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UploadedAudio() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t UploadedAudio.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  type metadata accessor for UploadedAudio();
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v15, v16);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v3 + 8))(v8, v0);
  v17 = sub_1D560F148();
  v18 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v18, v19, v17);
  if (v20)
  {
    sub_1D4E50004(v14, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v21 = sub_1D560F138();
    v22 = *(*(v17 - 8) + 8);
    v23 = OUTLINED_FUNCTION_128();
    v24(v23);
  }

  return v21;
}

uint64_t UploadedAudio.duration.getter()
{
  if (qword_1EC7E8E60 != -1)
  {
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_45_2();
  return v4;
}

uint64_t UploadedAudio._editorialArtworks.getter()
{
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_24_36();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_128();
  sub_1D560EC28();
  return v4;
}

uint64_t UploadedAudio._editorialVideoArtworks.getter()
{
  sub_1D4F84A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_24_36();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_128();
  sub_1D560EC28();

  return v4;
}

uint64_t sub_1D5143AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  if (qword_1EC7E8E80 != -1)
  {
    swift_once();
  }

  v9 = sub_1D56128E8();
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v10, v1);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v11, v1);
  sub_1D560EC28();
  v12 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v12, v13, v9);
  if (v14)
  {
    v15 = *MEMORY[0x1E69765E8];
    OUTLINED_FUNCTION_8_0();
    (*(v16 + 104))(a1);
    v17 = OUTLINED_FUNCTION_45_1();
    result = OUTLINED_FUNCTION_57(v17, v18, v9);
    if (!v14)
    {
      return sub_1D4E50004(v8, &qword_1EC7EF5C8, &unk_1D5632130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_0();
    v20 = *(v19 + 32);
    v21 = OUTLINED_FUNCTION_98();
    return v22(v21);
  }

  return result;
}

uint64_t sub_1D5143E38(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v5, v2);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v6, v2);
  OUTLINED_FUNCTION_45_2();
  return v8;
}

uint64_t UploadedAudio.artists.getter()
{
  if (qword_1EC7E8EE0 != -1)
  {
    OUTLINED_FUNCTION_37_3();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.curator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  if (qword_1EC7E8EE8 != -1)
  {
    OUTLINED_FUNCTION_36_26();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v8, v2);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v9, v2);
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA790, &unk_1D561FB10);
    sub_1D56141F8();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC94C4(a1);
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D5144100()
{
  if (qword_1EC7E8EE8 != -1)
  {
    OUTLINED_FUNCTION_36_26();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.genre.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  if (off_1EC7E8EF0 != -1)
  {
    OUTLINED_FUNCTION_35_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v8, v2);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v9, v2);
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA788, &unk_1D56223A0);
    sub_1D5613C48();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC94F4(a1);
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D5144330()
{
  if (off_1EC7E8EF0 != -1)
  {
    OUTLINED_FUNCTION_35_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.radioShow.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  if (off_1EC7E8EF8 != -1)
  {
    OUTLINED_FUNCTION_33_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v8, v2);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v9, v2);
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA780, &unk_1D561FB20);
    sub_1D5614B68();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC9644(a1);
    OUTLINED_FUNCTION_8_0();
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_46_1();
    return v17(v16);
  }
}

uint64_t sub_1D5144560()
{
  if (off_1EC7E8EF8 != -1)
  {
    OUTLINED_FUNCTION_33_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UploadedAudio() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_22_38();
  sub_1D4E74B10(v4, v5);
  OUTLINED_FUNCTION_128();
  return sub_1D5614CB8();
}

uint64_t UploadedAudio.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UploadedAudio() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_22_38();
  sub_1D4E74B10(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D514474C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4E74B10(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51447F0@<X0>(uint64_t *a1@<X8>)
{
  result = UploadedAudio.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UploadedAudio.subscript.getter(void *a1)
{
  return sub_1D5144858(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5144858(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_23_39();
  sub_1D4E74B10(v5, v1);
  OUTLINED_FUNCTION_32_31(&qword_1EDD57500);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5144858(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_23_39();
  sub_1D4E74B10(v5, v2);
  OUTLINED_FUNCTION_32_31(&qword_1EDD57500);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5144A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  v12 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D5144B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  v14 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5144CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  v14 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5144E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C180 = v0;
  return result;
}

uint64_t sub_1D5144E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C188 = v0;
  return result;
}

uint64_t sub_1D5144F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(qword_1EDD57DD8, type metadata accessor for AssetFlavors);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C190 = v0;
  return result;
}

uint64_t sub_1D5144FCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD533C0, MEMORY[0x1E6975930]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C198 = v0;
  return result;
}

uint64_t sub_1D514507C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&unk_1EDD5F228, MEMORY[0x1E6975D60]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1A0 = v0;
  return result;
}

uint64_t sub_1D514512C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1A8 = v0;
  return result;
}

uint64_t sub_1D51451A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EC87C1B0 = v0;
  return result;
}

uint64_t sub_1D514525C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_38();
  sub_1D4E74B10(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1B8 = v0;
  return result;
}

uint64_t sub_1D51452FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2);
  OUTLINED_FUNCTION_53_16();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1C0 = v0;
  return result;
}

uint64_t sub_1D514538C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53058, MEMORY[0x1E6976600]);
  OUTLINED_FUNCTION_53_16();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1C8 = v0;
  return result;
}

uint64_t sub_1D514542C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53130, MEMORY[0x1E6976028]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1D0 = v0;
  return result;
}

uint64_t sub_1D51454D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52ED8, MEMORY[0x1E69768E8]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1D8 = v0;
  return result;
}

uint64_t sub_1D5145574()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52EC0, MEMORY[0x1E6976A18]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1E0 = v0;
  return result;
}

uint64_t sub_1D5145618()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52A48, MEMORY[0x1E69774A0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1E8 = v0;
  return result;
}

uint64_t sub_1D51456C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_38();
  sub_1D4E74B10(v1, v2);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1F0 = v0;
  return result;
}

uint64_t sub_1D514575C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53160, MEMORY[0x1E6975E88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1F8 = v0;
  return result;
}

uint64_t sub_1D5145804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_35();
  sub_1D4E74B10(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C200 = v0;
  return result;
}

uint64_t sub_1D5145898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C208 = v0;
  return result;
}

uint64_t sub_1D5145934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C210 = v0;
  return result;
}

uint64_t sub_1D51459A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudio();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5145A04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C218 = v0;
  return result;
}

uint64_t sub_1D5145A9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_15();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C220 = v0;
  return result;
}

uint64_t sub_1D5145B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E74B10(&unk_1EDD52E00, MEMORY[0x1E6976F28]);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F0858 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.artists.getter()
{
  return sub_1D50355DC(&qword_1EC7E8EE0);
}

{
  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_2_104();
  }
}

{
  return sub_1D50355DC(&qword_1EDD53E68);
}

uint64_t sub_1D5145C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E74B10(&qword_1EDD52DE0, MEMORY[0x1E6977048]);
  OUTLINED_FUNCTION_13_45();
  OUTLINED_FUNCTION_63();

  qword_1EC7F0860 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.curator.getter()
{
  return sub_1D50355DC(&qword_1EC7E8EE8);
}

{
  return sub_1D50355DC(&qword_1EDD53E40);
}

uint64_t sub_1D5145CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E74B10(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
  OUTLINED_FUNCTION_13_45();
  OUTLINED_FUNCTION_63();

  qword_1EC7F0868 = v0;
  return result;
}

uint64_t sub_1D5145D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E74B10(&qword_1EDD52A30, MEMORY[0x1E6977550]);
  OUTLINED_FUNCTION_13_45();
  OUTLINED_FUNCTION_63();

  qword_1EC7F0870 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.radioShow.getter()
{
  return sub_1D50355DC(&off_1EC7E8EF8);
}

{
  return sub_1D50355DC(&off_1EDD53E00);
}

uint64_t sub_1D5145EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D5145F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D5145FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D5146064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D51460E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D514615C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D51461D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D5146254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D51462D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D514634C()
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return sub_1D5613028();
}

uint64_t sub_1D51463C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D514644C()
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return sub_1D5612FD8();
}

uint64_t sub_1D51464D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D514654C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t static UploadedAudio.catalogFilterID(for:)()
{
  swift_getKeyPath();
  sub_1D56159B8();
  v0 = sub_1D5614D18();

  if (v0)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5146708()
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio);

  return sub_1D5610C58();
}

uint64_t sub_1D514678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t UploadedAudio.init(from:)(uint64_t *a1)
{
  type metadata accessor for UploadedAudio();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v3, v4);
  OUTLINED_FUNCTION_27_34();
  sub_1D4E74B10(v5, v1);
  OUTLINED_FUNCTION_31_28(&qword_1EDD56478);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UploadedAudio.encode(to:)()
{
  type metadata accessor for UploadedAudio();
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v1, v2);
  OUTLINED_FUNCTION_27_34();
  sub_1D4E74B10(v3, v0);
  OUTLINED_FUNCTION_31_28(&qword_1EDD56478);
  return sub_1D5612688();
}

unint64_t UploadedAudio.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1D560EEC8();
  v5 = v4;
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_55_0();
  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v6, v5);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v7, v5);
  sub_1D560EC28();
  if (v10)
  {
    MEMORY[0x1DA6EAC70]();

    MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xE900000000000020);
  }

  sub_1D5615B68();

  v8 = UploadedAudio.artistName.getter();
  MEMORY[0x1DA6EAC70](v8);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x747369747261202CLL, 0xEF22203A656D614ELL);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1D5146C70()
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
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F0878 = v4;
  return result;
}

uint64_t sub_1D5146DCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6975208], v0);
  result = (v8)(v7 + v4, *MEMORY[0x1E6975218], v0);
  qword_1EC7F0880 = v6;
  return result;
}

uint64_t sub_1D5146F00(uint64_t a1)
{
  v2 = type metadata accessor for UploadedAudio();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5146F5C()
{
  result = qword_1EDD53BB8;
  if (!qword_1EDD53BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BB8);
  }

  return result;
}

uint64_t sub_1D5146FC0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0888);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for UploadedAudio();
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D514706C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F08A0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E8F10 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EC7F0888);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t sub_1D514719C(uint64_t a1)
{
  result = sub_1D4E74B10(&qword_1EC7F08D0, type metadata accessor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_28(unint64_t *a1)
{

  return sub_1D4E74B10(a1, v1);
}

void OUTLINED_FUNCTION_66_11()
{

  JUMPOUT(0x1DA6EAC70);
}

void sub_1D5147334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D5621E90;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0928, &qword_1D563A320);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374168(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0930, &qword_1D563A350);
  OUTLINED_FUNCTION_2_19(v4);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(v5, 1, sub_1D4F8C25C, 0);
}

void sub_1D514740C()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 40) = v1;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0938, &qword_1D563A380);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(KeyPath | 0x4000000000000000, 1, sub_1D5147690, 0);
}

void sub_1D5147470()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(v5, 0, sub_1D4F8C3A4, 0);
}

void sub_1D51474C4()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0940, &qword_1D563A3D8);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(v3, 1, sub_1D514776C, 0);
}

void sub_1D5147520()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 64) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0948, &qword_1D563A408);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374160(v3);
}

uint64_t sub_1D5147560()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 72) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0950, &unk_1D563A438);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5373FF8(v3, sub_1D51478AC, 0);
  OUTLINED_FUNCTION_0_6();

  *(v0 + 80) = v1;
  qword_1EDD767B8 = v0;
  return result;
}

uint64_t sub_1D51475DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D5147634@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D51476A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result & 1;
  return result;
}

void *sub_1D5147704@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D5147784(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1D5613348();
  a2(1);
  return v3(&v5, 0);
}

void *sub_1D51477EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D5147854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1D51478AC()
{
  sub_1D526EC2C();
  v1 = v0;
  v2 = sub_1D5613428();
  sub_1D4EF34E0(v1);
  return v2(&v4, 0);
}

uint64_t sub_1D5147918()
{
  v0 = sub_1D5614438();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D561C770;
  swift_getKeyPath();
  v12 = *MEMORY[0x1E69771C8];
  v21 = v3[13];
  v21(v10, v12, v0);
  v20 = v3[2];
  v20(v8, v10, v0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0920, &qword_1D563A2D0);
  OUTLINED_FUNCTION_2_19(v13);
  v14 = OUTLINED_FUNCTION_34_29();
  v15 = v3[1];
  v15(v10, v0);
  *(v11 + 32) = v14;
  swift_getKeyPath();
  v21(v10, *MEMORY[0x1E69771A8], v0);
  v20(v8, v10, v0);
  v16 = *(v13 + 48);
  v17 = *(v13 + 52);
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_34_29();
  result = (v15)(v10, v0);
  *(v11 + 40) = v18;
  qword_1EDD76D70 = v11;
  return result;
}

uint64_t sub_1D5147B40(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D5147B98(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D5147BF0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560E4D8() & 1) != 0 && (sub_1D560E4B8() & 1) == 0)
  {
    a2 |= 4uLL;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E6977668]);

  return [v4 initWithVariants:a1 options:a2];
}

uint64_t static Playlist.rawInternalPropertyKey(for:)(uint64_t a1)
{
  v2 = sub_1D5614438();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  OUTLINED_FUNCTION_71();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685BB0);
    v23 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    goto LABEL_12;
  }

  v11 = v10;
  swift_retain_n();
  v12 = sub_1D560D1F8();
  v23 = v11;
  v24 = v12;
  sub_1D5147FC4();
  v13 = OUTLINED_FUNCTION_9_61();

  if ((v13 & 1) == 0)
  {
    v14 = qword_1EDD5D7E8;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_13_46();
    }

    v23 = v11;
    v24 = qword_1EDD5D7F0;
    v15 = OUTLINED_FUNCTION_9_61();

    if ((v15 & 1) == 0)
    {

      v16 = sub_1D560D218();
      v23 = v11;
      v24 = v16;
      v17 = OUTLINED_FUNCTION_9_61();

      if ((v17 & 1) == 0)
      {
        v18 = qword_1EDD54380;

        if (v18 != -1)
        {
          OUTLINED_FUNCTION_12_51();
        }

        v23 = v11;
        v24 = qword_1EDD54388;
        v19 = OUTLINED_FUNCTION_9_61();

        if ((v19 & 1) == 0)
        {
          while (1)
          {
            v24 = 0;
            v25 = 0xE000000000000000;
            sub_1D5615B68();
            OUTLINED_FUNCTION_33_3();
            MEMORY[0x1DA6EAC70](0xD000000000000024);
            v23 = a1;
            sub_1D560CDE8();
            sub_1D5615D48();
            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
LABEL_12:
            OUTLINED_FUNCTION_10_62();
            __break(1u);
          }
        }
      }
    }
  }

  (*(v5 + 104))(v9, *MEMORY[0x1E69771E8], v2);
  v20 = sub_1D5614428();

  (*(v5 + 8))(v9, v2);
  return v20;
}

unint64_t sub_1D5147FC4()
{
  result = qword_1EDD54390;
  if (!qword_1EDD54390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECEA8, &qword_1D563A170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54390);
  }

  return result;
}

uint64_t static Playlist.underlyingLegacyModelObjectTypeForCorrespondingUnderlyingInternalRelationship(_:)@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  OUTLINED_FUNCTION_0_6();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    sub_1D560D1F8();
    sub_1D5147FC4();
    v2 = OUTLINED_FUNCTION_8_58();

    if (v2)
    {
      goto LABEL_7;
    }

    v3 = qword_1EDD5D7E8;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_13_46();
    }

    v4 = OUTLINED_FUNCTION_8_58();

    if (v4 & 1) != 0 || (, sub_1D560D218(), v5 = OUTLINED_FUNCTION_8_58(), , , (v5))
    {
LABEL_7:
    }

    else
    {
      if (qword_1EDD54380 != -1)
      {
        OUTLINED_FUNCTION_12_51();
      }

      v14 = OUTLINED_FUNCTION_8_58();

      if ((v14 & 1) == 0)
      {
        sub_1D5613158();
        OUTLINED_FUNCTION_33();
        return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
      }
    }

    v6 = *MEMORY[0x1E6976868];
    v7 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v7);
    (*(v8 + 104))(a1, v6, v7);
    v9 = a1;
    v10 = 0;
    v11 = 1;
    v12 = v7;
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  sub_1D5615B68();
  v15 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x1DA6EAC70](v15, 0xE900000000000020);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL);
  result = OUTLINED_FUNCTION_10_62();
  __break(1u);
  return result;
}

uint64_t Playlist.internalItemsForRelationshipWithoutCorrespondingUnderlyingRelationship(for:library:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v1[30] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[31] = v6;
  v8 = *(v7 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v1[33] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[34] = v10;
  v12 = *(v11 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560D4C8();
  v1[37] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[38] = v17;
  v19 = *(v18 + 64);
  v1[39] = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08E0, &unk_1D563A188);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  v1[40] = OUTLINED_FUNCTION_167();
  v1[41] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  v1[42] = OUTLINED_FUNCTION_167();
  v1[43] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  v1[44] = OUTLINED_FUNCTION_167();
  v1[45] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  v1[46] = OUTLINED_FUNCTION_167();
  v1[47] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08E8, &qword_1D563A198);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  v1[48] = OUTLINED_FUNCTION_127();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  v1[49] = OUTLINED_FUNCTION_167();
  v1[50] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  v1[51] = OUTLINED_FUNCTION_167();
  v1[52] = swift_task_alloc();
  v41 = _s15InternalStorageVMa_0();
  v1[53] = v41;
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  v1[54] = OUTLINED_FUNCTION_167();
  v1[55] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08F0, &qword_1D563A1A0);
  v1[56] = v44;
  OUTLINED_FUNCTION_69(v44);
  v1[57] = v45;
  v47 = *(v46 + 64);
  v1[58] = OUTLINED_FUNCTION_127();
  v48 = sub_1D560D838();
  v1[59] = v48;
  OUTLINED_FUNCTION_69(v48);
  v1[60] = v49;
  v51 = *(v50 + 64);
  v1[61] = OUTLINED_FUNCTION_127();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08F8, &qword_1D563A1A8);
  v1[62] = v52;
  OUTLINED_FUNCTION_69(v52);
  v1[63] = v53;
  v55 = *(v54 + 64);
  v1[64] = OUTLINED_FUNCTION_127();
  v56 = sub_1D5614898();
  v1[65] = v56;
  OUTLINED_FUNCTION_69(v56);
  v1[66] = v57;
  v59 = *(v58 + 64);
  v1[67] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v60, v61, v62);
}

uint64_t sub_1D514871C()
{
  v1 = v0[27];
  v0[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  v2 = swift_dynamicCastClass();
  v0[69] = v2;
  if (v2)
  {
    v3 = v0[26];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    v4 = *(MEMORY[0x1E6974CC8] + 4);

    v5 = swift_task_alloc();
    v0[70] = v5;
    *v5 = v0;
    v5[1] = sub_1D51488D0;
    v6 = v0[67];
    v7 = v0[65];
    v8 = v0[29];
    v9 = MEMORY[0x1E6977350];

    return MEMORY[0x1EEDCE198](v6, v7, v9);
  }

  else
  {
    sub_1D5615B68();
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    v10 = OUTLINED_FUNCTION_31_3();
    MEMORY[0x1DA6EAC70](v10, 0xE900000000000020);
    v0[20] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000001CLL);
    v11 = v0[12];
    v12 = v0[13];
    return OUTLINED_FUNCTION_10_62();
  }
}

uint64_t sub_1D51488D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1D51489C8()
{
  v1 = v0[27];
  v2 = qword_1EDD5D820;

  if (v2 != -1)
  {
    swift_once();
    v117 = v0[27];
  }

  v3 = v0[69];
  v4 = v0[68];
  v0[21] = qword_1EDD5D828;
  v0[22] = v3;
  sub_1D5147FC4();
  LOBYTE(v4) = sub_1D5614D18();

  if (v4)
  {
    v5 = v0[67];
    v6 = v0[65];
    v7 = v0[64];
    v9 = v0[60];
    v8 = v0[61];
    v10 = v0[59];
    type metadata accessor for Playlist.Collaborator();
    sub_1D514A52C(&qword_1EC7F0918, type metadata accessor for Playlist.Collaborator);
    sub_1D560E668();
    KeyPath = swift_getKeyPath();
    sub_1D560EC98();
    v12 = sub_1D560D808();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    if (!v14)
    {
      v15 = v0[67];
      v12 = sub_1D5614698();
      v14 = v16;
    }

    v17 = v0[64];
    v18 = v0[62];
    v19 = v0[28];
    v0[18] = v12;
    v0[19] = v14;
    MEMORY[0x1DA6E4340](KeyPath, v0 + 18, v18, MEMORY[0x1E6977380], MEMORY[0x1E6975510]);

    _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
    v20 = *(MEMORY[0x1E6975348] + 4);
    v21 = swift_task_alloc();
    v0[72] = v21;
    *v21 = v0;
    v21[1] = sub_1D51493C8;
    v22 = v0[64];
    v23 = v0[62];
    v24 = v0[58];
    OUTLINED_FUNCTION_49_0();

    MEMORY[0x1EEDCEF40](v25, v26);
    return;
  }

  v28 = v0[27];
  v29 = qword_1EDD5D7D8;

  if (v29 != -1)
  {
    swift_once();
    v118 = v0[27];
  }

  v30 = v0[69];
  v31 = v0[68];
  v0[23] = qword_1EDD5D7E0;
  v0[24] = v30;
  v32 = sub_1D5614D18();

  if ((v32 & 1) == 0)
  {
    v42 = v0[27];
    sub_1D5615B68();
    v0[14] = 0;
    v0[15] = 0xE000000000000000;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL);
    v0[25] = v42;
    sub_1D560CDE8();
    OUTLINED_FUNCTION_71();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v43 = v0[14];
    v44 = v0[15];
    OUTLINED_FUNCTION_10_62();
    OUTLINED_FUNCTION_49_0();
    return;
  }

  v33 = v0[41];
  v35 = v0[36];
  v34 = v0[37];
  v37 = v0[29];
  v36 = v0[30];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  sub_1D5614618();
  if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
  {
    sub_1D4E50004(v0[36], &unk_1EC7EBF20, &unk_1D561F530);
    goto LABEL_25;
  }

  (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
  v45 = sub_1D560D4B8();
  v47 = v46;
  if (v45 == sub_1D560EED8() && v47 == v48)
  {

    goto LABEL_24;
  }

  v50 = sub_1D5616168();

  if (v50)
  {
LABEL_24:
    (*(v0[38] + 8))(v0[39], v0[37]);
LABEL_25:
    v65 = v0[30];
    sub_1D4E50004(v0[41], &qword_1EC7F08E0, &unk_1D563A188);
    v66 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
    v70 = v0[51];
    v71 = v0[49];
    v72 = v0[46];
    v73 = v0[44];
    v74 = v0[41];
    v75 = v0[29];
    v76 = v0[30];
    sub_1D505BC94();
    Playlist.collaborators.getter();
    sub_1D505C360();
    sub_1D505DED8();
    if (!__swift_getEnumTagSinglePayload(v74, 1, v76))
    {
      v77 = OUTLINED_FUNCTION_14_46();
      v78(v77);
      sub_1D560DE38();
      (*(v72 + 8))(v71, 1);
      v66 = 0;
    }

    v136 = v0[67];
    v79 = v0[66];
    v134 = v0[65];
    v81 = v0[53];
    v80 = v0[54];
    v125 = v0[51];
    v127 = v0[49];
    v129 = v0[46];
    v131 = v0[44];
    v82 = v0[42];
    v138 = v0[41];
    v83 = v0[26];
    v132 = v0[27];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    __swift_storeEnumTagSinglePayload(v82, v66, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    v89 = v81[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v94 = v81[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
    v99 = v81[7];
    type metadata accessor for CuratorRelationshipProvider();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    v104 = v81[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    sub_1D514A440(v125, v80, &qword_1EC7ECF58, &qword_1D5623AF0);
    sub_1D514A440(v127, v80 + v89, &qword_1EC7EC8D0, &unk_1D5623AD0);
    sub_1D514A440(v129, v80 + v94, &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D514A440(v131, v80 + v99, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D514A440(v82, v80 + v104, &qword_1EC7ECF38, &qword_1D562E650);
    v0[5] = sub_1D56131D8();
    v0[6] = &protocol witness table for AnyPropertyProviderExtendedStorage;
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_2_87();
    sub_1D514A52C(v109, v110);
    OUTLINED_FUNCTION_35_30();
    sub_1D4E50004(v83, &qword_1EC7F0900, &qword_1D563A1B0);
    OUTLINED_FUNCTION_32_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
    sub_1D560D1D8();

    (*(v79 + 8))(v136, v134);
    sub_1D4FBFABC(v80);
    sub_1D4E50004(v138, &qword_1EC7F08E0, &unk_1D563A188);
    OUTLINED_FUNCTION_0_107();
    v111 = v0[51];
    v112 = v0[52];
    v114 = v0[49];
    v113 = v0[50];
    v119 = v0[48];
    v120 = v0[47];
    v121 = v0[46];
    v122 = v0[45];
    v123 = v0[44];
    v124 = v0[43];
    v126 = v0[42];
    v128 = v0[41];
    v130 = v0[40];
    v133 = v0[39];
    v135 = v0[36];
    v137 = v0[35];
    v139 = v0[32];

    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X2, X16 }
  }

  v51 = v0[39];
  v52 = v0[35];
  v53 = v0[33];
  v54 = v0[28];
  type metadata accessor for Playlist.Folder();
  sub_1D514A52C(&qword_1EC7F0910, type metadata accessor for Playlist.Folder);
  sub_1D560DD68();
  v55 = swift_getKeyPath();
  v0[16] = sub_1D560D4B8();
  v0[17] = v56;
  MEMORY[0x1DA6E3AD0](v55, v0 + 16, v53, MEMORY[0x1E6975510]);

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  v57 = *(MEMORY[0x1E6975088] + 4);
  v58 = swift_task_alloc();
  v0[74] = v58;
  *v58 = v0;
  v58[1] = sub_1D51499C0;
  v59 = v0[40];
  v60 = v0[35];
  v61 = v0[33];
  OUTLINED_FUNCTION_49_0();

  MEMORY[0x1EEDCEAC0](v62, v63);
}

uint64_t sub_1D51493C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51494C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = *(v26 + 464);
  v28 = *(v26 + 448);
  v29 = *(v26 + 416);
  v30 = *(v26 + 384);
  v31 = *(v26 + 232);
  sub_1D505BC94();
  v32 = sub_1D560E758();
  sub_1D4ECA228(v32);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA548, &unk_1D561C4A0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v33) == 1)
  {
    sub_1D4E50004(*(v26 + 384), &qword_1EC7F08E8, &qword_1D563A198);
    v34 = 1;
  }

  else
  {
    v35 = *(v26 + 400);
    v36 = *(v26 + 384);
    _s8MusicKit0A14LibrarySectionV0aB8InternalE8childrenAA0A14ItemCollectionVyq_Gvg_0();
    (*(*(v33 - 8) + 8))(v36, v33);
    v34 = 0;
  }

  v112 = *(v26 + 536);
  v108 = *(v26 + 528);
  v110 = *(v26 + 520);
  v104 = *(v26 + 496);
  v106 = *(v26 + 512);
  v100 = *(v26 + 464);
  v102 = *(v26 + 504);
  v37 = *(v26 + 440);
  v96 = *(v26 + 456);
  v98 = *(v26 + 448);
  v38 = *(v26 + 424);
  v39 = *(v26 + 400);
  v88 = v39;
  v40 = *(v26 + 376);
  v90 = v40;
  v92 = *(v26 + 416);
  v41 = *(v26 + 360);
  v42 = *(v26 + 344);
  v43 = *(v26 + 232);
  v44 = *(v26 + 208);
  v94 = *(v26 + 216);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  __swift_storeEnumTagSinglePayload(v39, v34, 1, v45);
  sub_1D505C360();
  sub_1D505DED8();
  sub_1D505BF4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = v38[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = v38[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = v38[7];
  type metadata accessor for CuratorRelationshipProvider();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = v38[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  sub_1D514A440(v92, v37, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D514A440(v88, v37 + v50, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D514A440(v90, v37 + v55, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D514A440(v41, v37 + v60, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D514A440(v42, v37 + v65, &qword_1EC7ECF38, &qword_1D562E650);
  *(v26 + 80) = sub_1D56131D8();
  *(v26 + 88) = &protocol witness table for AnyPropertyProviderExtendedStorage;
  __swift_allocate_boxed_opaque_existential_0((v26 + 56));
  OUTLINED_FUNCTION_2_87();
  sub_1D514A52C(v70, v71);
  sub_1D56130F8();
  sub_1D4E50004(v44, &qword_1EC7F0900, &qword_1D563A1B0);
  v72 = *(v26 + 88);
  v73 = *(v26 + 72);
  *v44 = *(v26 + 56);
  *(v44 + 16) = v73;
  *(v44 + 32) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
  v93 = sub_1D560D1D8();

  (*(v96 + 8))(v100, v98);
  (*(v102 + 8))(v106, v104);
  (*(v108 + 8))(v112, v110);
  sub_1D4FBFABC(v37);
  OUTLINED_FUNCTION_0_107();
  v74 = *(v26 + 408);
  v75 = *(v26 + 416);
  v77 = *(v26 + 392);
  v76 = *(v26 + 400);
  v87 = *(v26 + 384);
  v89 = *(v26 + 376);
  v91 = *(v26 + 368);
  v95 = *(v26 + 360);
  v97 = *(v26 + 352);
  v99 = *(v26 + 344);
  v101 = *(v26 + 336);
  v103 = *(v26 + 328);
  v105 = *(v26 + 320);
  v107 = *(v26 + 312);
  v109 = *(v26 + 288);
  v111 = *(v26 + 280);
  v113 = *(v26 + 256);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_97();

  return v80(v78, v79, v80, v81, v82, v83, v84, v85, a9, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, a24, a25, a26);
}

uint64_t sub_1D51499C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 600) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5149AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[40];
  v28 = v26[41];
  v30 = v26[38];
  v29 = v26[39];
  v31 = v26[37];
  v32 = v26[30];
  (*(v26[34] + 8))(v26[35], v26[33]);
  (*(v30 + 8))(v29, v31);
  v33 = 1;
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v32);
  v34 = OUTLINED_FUNCTION_71();
  sub_1D514A440(v34, v35, v36, v37);
  v38 = v26[51];
  v39 = v26[49];
  v40 = v26[46];
  v41 = v26[44];
  v42 = v26[41];
  v43 = v26[29];
  v44 = v26[30];
  sub_1D505BC94();
  Playlist.collaborators.getter();
  sub_1D505C360();
  sub_1D505DED8();
  if (!__swift_getEnumTagSinglePayload(v42, 1, v44))
  {
    v45 = OUTLINED_FUNCTION_14_46();
    v46(v45);
    sub_1D560DE38();
    (*(v41 + 8))(v39, v40);
    v33 = 0;
  }

  v102 = v26[67];
  v47 = v26[66];
  v100 = v26[65];
  v49 = v26[53];
  v48 = v26[54];
  v92 = v26[51];
  v93 = v26[49];
  v94 = v26[46];
  v96 = v26[44];
  v50 = v26[42];
  v104 = v26[41];
  v51 = v26[26];
  v98 = v26[27];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  __swift_storeEnumTagSinglePayload(v50, v33, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v57 = v49[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v49[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  v67 = v49[7];
  type metadata accessor for CuratorRelationshipProvider();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = v49[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  sub_1D514A440(v92, v48, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D514A440(v93, v48 + v57, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D514A440(v94, v48 + v62, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D514A440(v96, v48 + v67, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D514A440(v50, v48 + v72, &qword_1EC7ECF38, &qword_1D562E650);
  v26[5] = sub_1D56131D8();
  v26[6] = &protocol witness table for AnyPropertyProviderExtendedStorage;
  __swift_allocate_boxed_opaque_existential_0(v26 + 2);
  OUTLINED_FUNCTION_2_87();
  sub_1D514A52C(v77, v78);
  OUTLINED_FUNCTION_35_30();
  sub_1D4E50004(v51, &qword_1EC7F0900, &qword_1D563A1B0);
  OUTLINED_FUNCTION_32_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
  v97 = sub_1D560D1D8();

  (*(v47 + 8))(v102, v100);
  sub_1D4FBFABC(v48);
  sub_1D4E50004(v104, &qword_1EC7F08E0, &unk_1D563A188);
  OUTLINED_FUNCTION_0_107();
  v79 = v26[51];
  v80 = v26[52];
  v82 = v26[49];
  v81 = v26[50];
  OUTLINED_FUNCTION_1_94();
  v95 = v26[40];
  v99 = v26[39];
  v101 = v26[36];
  v103 = v26[35];
  v105 = v26[32];

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_97();

  return v85(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, v92, v93, v95, v97, v99, v101, v103, v105, a24, a25, a26);
}

uint64_t sub_1D5149F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v28 = v26[26];
  v27 = v26[27];

  sub_1D4E50004(v28, &qword_1EC7F0900, &qword_1D563A1B0);
  v42 = v26[71];
  OUTLINED_FUNCTION_0_107();
  v29 = v26[51];
  v30 = v26[52];
  v32 = v26[49];
  v31 = v26[50];
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66();

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v42, a24, a25, a26);
}

uint64_t sub_1D514A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[67];
  v28 = v26[66];
  v29 = v26[65];
  v31 = v26[63];
  v30 = v26[64];
  v32 = v26[62];
  v34 = v26[26];
  v33 = v26[27];

  (*(v31 + 8))(v30, v32);
  (*(v28 + 8))(v27, v29);
  sub_1D4E50004(v34, &qword_1EC7F0900, &qword_1D563A1B0);
  v48 = v26[73];
  OUTLINED_FUNCTION_0_107();
  v35 = v26[51];
  v36 = v26[52];
  v38 = v26[49];
  v37 = v26[50];
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66();

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v48, a24, a25, a26);
}

uint64_t sub_1D514A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[66];
  v28 = v26[65];
  v50 = v26[67];
  v51 = v26[41];
  v29 = v26[38];
  v30 = v26[39];
  v31 = v26[37];
  v32 = v26[34];
  v33 = v26[35];
  v34 = v26[33];
  v36 = v26[26];
  v35 = v26[27];

  (*(v32 + 8))(v33, v34);
  (*(v29 + 8))(v30, v31);
  (*(v27 + 8))(v50, v28);
  sub_1D4E50004(v36, &qword_1EC7F0900, &qword_1D563A1B0);
  sub_1D4E50004(v51, &qword_1EC7F08E0, &unk_1D563A188);
  v52 = v26[75];
  OUTLINED_FUNCTION_0_107();
  v37 = v26[51];
  v38 = v26[52];
  v40 = v26[49];
  v39 = v26[50];
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66();

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v50, v52, a24, a25, a26);
}

uint64_t sub_1D514A3EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_0_6();
  result = v6(v5, v3);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D514A440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D514A52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D514A5C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D514A678;

  return Playlist.internalItemsForRelationshipWithoutCorrespondingUnderlyingRelationship(for:library:)();
}

uint64_t sub_1D514A678()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  OUTLINED_FUNCTION_50();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1D514A770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D514A974;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D514A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1D4E6F70C;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

uint64_t OUTLINED_FUNCTION_34_29()
{

  return sub_1D5375874(v0, v1);
}

uint64_t MusicItemTypedIdentifier.init(id:type:catalogIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  if (dynamic_cast_existential_1_conditional(a3))
  {
    v7 = type metadata accessor for MusicItemTypedIdentifier();
    v8 = a5 + *(v7 + 24);
    sub_1D560E358();
    a5[2] = a4;
    v9 = *(v7 + 28);
    v10 = sub_1D5610088();

    return __swift_storeEnumTagSinglePayload(a5 + v9, 1, 1, v10);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D5685C90);
    v12 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v12);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MusicItemTypedIdentifier()
{
  result = qword_1EDD5B9E0;
  if (!qword_1EDD5B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicItemTypedIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL static MusicItemTypedIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D5610088();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  v23 = *a1 == *a2 && a1[1] == a2[1];
  if (!v23 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D4F0B2E8(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for MusicItemTypedIdentifier();
  v25 = *(v24 + 24);
  if ((sub_1D560D8C8() & 1) == 0)
  {
    return 0;
  }

  v26 = *(v24 + 28);
  v27 = *(v17 + 48);
  sub_1D514AE90(a1 + v26, v22);
  sub_1D514AE90(a2 + v26, &v22[v27]);
  OUTLINED_FUNCTION_10(v22);
  if (v23)
  {
    OUTLINED_FUNCTION_10(&v22[v27]);
    if (v23)
    {
      sub_1D4E50004(v22, &qword_1EC7EA358, &unk_1D561DF50);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1D514AE90(v22, v16);
  OUTLINED_FUNCTION_10(&v22[v27]);
  if (v28)
  {
    (*(v7 + 8))(v16, v4);
LABEL_16:
    sub_1D4E50004(v22, &qword_1EC7EB208, &qword_1D562F5E0);
    return 0;
  }

  (*(v7 + 32))(v12, &v22[v27], v4);
  OUTLINED_FUNCTION_2_88();
  sub_1D4E5E4D0(v30, v31);
  v32 = sub_1D5614D18();
  v33 = *(v7 + 8);
  v33(v12, v4);
  v33(v16, v4);
  sub_1D4E50004(v22, &qword_1EC7EA358, &unk_1D561DF50);
  return (v32 & 1) != 0;
}

uint64_t sub_1D514AE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicItemTypedIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D5610088();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_1D5614E28();
  sub_1D4F0B2F0(a1, v1[2]);
  v19 = type metadata accessor for MusicItemTypedIdentifier();
  v20 = *(v19 + 24);
  sub_1D560D9A8();
  sub_1D4E5E4D0(&qword_1EDD53C28, MEMORY[0x1E6974F80]);
  sub_1D5614CB8();
  sub_1D514AE90(v2 + *(v19 + 28), v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v7 + 32))(v12, v16, v4);
  sub_1D56162F8();
  OUTLINED_FUNCTION_2_88();
  sub_1D4E5E4D0(v22, v23);
  sub_1D5614CB8();
  return (*(v7 + 8))(v12, v4);
}

uint64_t MusicItemTypedIdentifier.hashValue.getter()
{
  sub_1D56162D8();
  MusicItemTypedIdentifier.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D514B170()
{
  sub_1D56162D8();
  MusicItemTypedIdentifier.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t MusicItemTypedIdentifier.init(id:resourceType:catalogIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a2;
  v48 = a5;
  v45 = a1;
  v46 = a4;
  v49 = a6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_1D560D9A8();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v20 = sub_1D5610088();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = type metadata accessor for MusicItemTypedIdentifier();
  v30 = OUTLINED_FUNCTION_14(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v35 = (v34 - v33);
  MEMORY[0x1DA6E5E30](a3, v46);
  sub_1D5328334(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    (*(v23 + 8))(v28, v20);

    sub_1D4E50004(v10, &qword_1EC7F6DF0, &qword_1D561D1E0);
    v36 = 1;
    v37 = v49;
  }

  else
  {
    v38 = *(v14 + 32);
    v38(v19, v10, v11);
    v39 = v47;
    *v35 = v45;
    *(v35 + 1) = v39;
    v38(&v35[*(v29 + 24)], v19, v11);
    *(v35 + 2) = v48;
    v40 = *(v29 + 28);
    (*(v23 + 32))(&v35[v40], v28, v20);
    __swift_storeEnumTagSinglePayload(&v35[v40], 0, 1, v20);
    v41 = v35;
    v42 = v49;
    sub_1D514B46C(v41, v49);
    v36 = 0;
    v37 = v42;
  }

  return __swift_storeEnumTagSinglePayload(v37, v36, 1, v29);
}

uint64_t sub_1D514B46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemTypedIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D514B540()
{
  sub_1D514B5EC();
  if (v0 <= 0x3F)
  {
    sub_1D560D9A8();
    if (v1 <= 0x3F)
    {
      sub_1D514B63C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D514B5EC()
{
  if (!qword_1EDD527E0)
  {
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD527E0);
    }
  }
}

void sub_1D514B63C()
{
  if (!qword_1EDD53330)
  {
    sub_1D5610088();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53330);
    }
  }
}

uint64_t static Presto_MusicLibrary.shared.getter()
{
  type metadata accessor for Presto_MusicLibrary();

  return swift_initStaticObject();
}

uint64_t sub_1D514B6E8()
{
  OUTLINED_FUNCTION_160();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_7_67();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_43_1(v14);
  *v15 = v16;
  v15[1] = sub_1D514D02C;

  return v18(v9, v7, v3, v5, v1);
}

uint64_t sub_1D514B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(a9 + 16);
  OUTLINED_FUNCTION_7_67();
  v25 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_43_1(v21);
  *v22 = v23;
  v22[1] = sub_1D514B974;

  return v25(a1, a2, a3, a4, a6, a7, a8, a10, a11, a5, a9);
}

uint64_t sub_1D514B974()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1D514BA64()
{
  OUTLINED_FUNCTION_91();
  v3 = *(OUTLINED_FUNCTION_8_59(v0, v1, v2) + 24);
  OUTLINED_FUNCTION_7_67();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_4_65(v8);

  return v11(v10);
}

uint64_t sub_1D514BB54()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v5 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4);
  v6 = *(v5 + 32);
  v23 = v5 + 32;
  OUTLINED_FUNCTION_90_0();
  v24 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_0_108(v11);
  OUTLINED_FUNCTION_14_47();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);
}

uint64_t sub_1D514BC48()
{
  OUTLINED_FUNCTION_91();
  v3 = *(OUTLINED_FUNCTION_8_59(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_7_67();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_4_65(v8);

  return v11(v10);
}

uint64_t sub_1D514BD38()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v5 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4);
  v6 = *(v5 + 48);
  v23 = v5 + 48;
  OUTLINED_FUNCTION_90_0();
  v24 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_0_108(v11);
  OUTLINED_FUNCTION_14_47();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);
}

uint64_t sub_1D514BE2C()
{
  OUTLINED_FUNCTION_91();
  v3 = *(OUTLINED_FUNCTION_8_59(v0, v1, v2) + 56);
  OUTLINED_FUNCTION_7_67();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_4_65(v8);

  return v11(v10);
}

uint64_t sub_1D514BF1C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v5 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4);
  v6 = *(v5 + 64);
  v23 = v5 + 64;
  OUTLINED_FUNCTION_90_0();
  v24 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_0_108(v11);
  OUTLINED_FUNCTION_14_47();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);
}

uint64_t sub_1D514C010()
{
  OUTLINED_FUNCTION_91();
  v3 = *(OUTLINED_FUNCTION_8_59(v0, v1, v2) + 72);
  OUTLINED_FUNCTION_7_67();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_1(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_4_65(v8);

  return v11(v10);
}

uint64_t sub_1D514C100()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v5 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4);
  v6 = *(v5 + 80);
  v23 = v5 + 80;
  OUTLINED_FUNCTION_90_0();
  v24 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_0_108(v11);
  OUTLINED_FUNCTION_14_47();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);
}

uint64_t Presto_MusicLibraryError.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

unint64_t sub_1D514C2D0()
{
  result = qword_1EC7F0958;
  if (!qword_1EC7F0958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0960, &qword_1D563A570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0958);
  }

  return result;
}

unint64_t sub_1D514C338()
{
  result = qword_1EC7F0968;
  if (!qword_1EC7F0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0968);
  }

  return result;
}

uint64_t dispatch thunk of Presto_MusicLibrary.add<A, B>(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v1 = *(*v0 + 88);
  v15 = *v0 + 88;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v4[1] = sub_1D514D028;
  OUTLINED_FUNCTION_14_47();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of Presto_MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *(*v11 + 96);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_43_1(v19);
  *v20 = v21;
  v20[1] = sub_1D514C650;

  return v23(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1D514C650()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of Presto_MusicLibrary.remove<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v1 = *(v0 + 104);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_69(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Presto_MusicLibrary.remove<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v13 = *(v12 + 112);
  v28 = v12 + 112;
  v29 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_43_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_1_7(v16);
  OUTLINED_FUNCTION_19_45();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, v28, v29, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.download<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_69(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Presto_MusicLibrary.download<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v13 = *(v12 + 128);
  v28 = v12 + 128;
  v29 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_43_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_1_7(v16);
  OUTLINED_FUNCTION_19_45();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, v28, v29, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.removeDownload<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v1 = *(v0 + 136);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_69(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Presto_MusicLibrary.removeDownload<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v13 = *(v12 + 144);
  v28 = v12 + 144;
  v29 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_43_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_1_7(v16);
  OUTLINED_FUNCTION_19_45();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, v28, v29, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.cancelDownload<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v1 = *(v0 + 152);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_69(v4);

  return v7(v6);
}

uint64_t dispatch thunk of Presto_MusicLibrary.cancelDownload<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v13 = *(v12 + 160);
  v28 = v12 + 160;
  v29 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_43_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_1_7(v16);
  OUTLINED_FUNCTION_19_45();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, v28, v29, a12);
}

_BYTE *storeEnumTagSinglePayload for Presto_MusicLibraryError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D514D048@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  if (a1 < 2)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  sub_1D56123A8();
  v26 = sub_1D560CD98();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v26);
  sub_1D5613838();
  v27 = sub_1D560CD48();
  OUTLINED_FUNCTION_1_95();
  sub_1D514E330(v28, v29);
  sub_1D5612368();
  sub_1D4E6C9CC(v11, &qword_1EC7EA7D8, &unk_1D561E8B0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  sub_1D514D2FC(v17, a3);

  (*(*(v27 - 8) + 8))(a2, v27);
  return (*(v20 + 8))(v25, v18);
}

uint64_t sub_1D514D2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  sub_1D514E378(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D5613838();
    sub_1D560D9F8();
    sub_1D4E6C9CC(a1, &qword_1EC7F0978, &qword_1D563A6D0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1D4E6C9CC(v9, &qword_1EC7F0978, &qword_1D563A6D0);
    }
  }

  else
  {
    sub_1D4E6C9CC(a1, &qword_1EC7F0978, &qword_1D563A6D0);
    (*(v12 + 32))(v17, v9, v10);
  }

  return (*(v12 + 32))(a2, v17, v10);
}

uint64_t sub_1D514D4D0()
{
  v0 = sub_1D5613578();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v1 + 104))(v4, *MEMORY[0x1E6976A78], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D560CD48();
  sub_1D514E330(&qword_1EC7ECE40, MEMORY[0x1E6976BE8]);
  sub_1D560DA98();
  (*(v1 + 8))(v4, v0);
  v10 = sub_1D56123B8();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t MusicSuggestedSongsResponse.suggestedSongs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicSuggestedSongsResponse.== infix(_:_:)()
{
  sub_1D5613838();
  OUTLINED_FUNCTION_1_95();
  sub_1D514E330(v0, v1);

  return sub_1D560DAA8();
}

uint64_t MusicSuggestedSongsResponse.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();

  return sub_1D5614CB8();
}

unint64_t sub_1D514D860()
{
  result = qword_1EC7F0970;
  if (!qword_1EC7F0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    sub_1D514E330(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0970);
  }

  return result;
}

uint64_t MusicSuggestedSongsResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D514D984()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  v3[3] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v3[4] = v9;
  OUTLINED_FUNCTION_4(v9);
  v3[5] = v10;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[6] = v13;
  v14 = *(MEMORY[0x1E6974FE0] + 4);
  v15 = swift_task_alloc();
  v3[7] = v15;
  *v15 = v3;
  v15[1] = sub_1D514DB40;

  return MEMORY[0x1EEDCE928](v13, a2, a3, v9);
}

uint64_t sub_1D514DB40()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D4F25038;
  }

  else
  {
    v3 = sub_1D514DC54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D514DC54()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  sub_1D514D2FC(v4, v5);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D514DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t MusicSuggestedSongsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D560CD48();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v15);
  v11 = sub_1D512F808(v15);
  if (!v2)
  {
    v12 = v11;
    OUTLINED_FUNCTION_3_88();
    OUTLINED_FUNCTION_2_90();
    sub_1D5616378();
    OUTLINED_FUNCTION_3_88();
    OUTLINED_FUNCTION_2_90();
    sub_1D5616368();
    sub_1D514D048(v12, v10, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicSuggestedSongsResponse.encode(to:)(void *a1)
{
  v3 = sub_1D560CD48();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_2_90();
  sub_1D56163C8();
  v11 = sub_1D514D4D0();
  if (v1)
  {
    return (*(v6 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v6 + 8))(v10, v3);
  sub_1D512F644(a1);
  return sub_1D4EA7410(v13);
}

unint64_t sub_1D514E02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514E2CC();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t type metadata accessor for MusicSuggestedSongsResponse()
{
  result = qword_1EC7F0988;
  if (!qword_1EC7F0988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D514E200()
{
  sub_1D514E26C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D514E26C()
{
  if (!qword_1EC7F0998)
  {
    sub_1D5613838();
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F0998);
    }
  }
}

unint64_t sub_1D514E2CC()
{
  result = qword_1EC7F09A0;
  if (!qword_1EC7F09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09A0);
  }

  return result;
}

uint64_t sub_1D514E330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D514E378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D514E3E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1D560C418();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_7();
  v13 = type metadata accessor for MusicRequestConfiguration();
  sub_1D514E7A8(a1 + *(v13 + 44), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D560C408();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_1D514E818(v6);
    }
  }

  else
  {
    (*(v10 + 32))(v1, v6, v7);
  }

  sub_1D514E880();
  return (*(v10 + 8))(v1, v7);
}

uint64_t sub_1D514E568(_BYTE *a1)
{
  if (*a1 == 7)
  {
    static UserInterfaceIdiom.default.getter(&v2);
  }

  sub_1D560BB28();
}

uint64_t sub_1D514E690()
{
  v0 = sub_1D560BB98();
  __swift_allocate_value_buffer(v0, qword_1EDD5CFA8);
  __swift_project_value_buffer(v0, qword_1EDD5CFA8);
  return sub_1D560BB28();
}

uint64_t static URLQueryItem.extendedArtworkQueryItem.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD5CFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560BB98();
  v3 = __swift_project_value_buffer(v2, qword_1EDD5CFA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D514E7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D514E818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D514E880()
{
  v1 = sub_1D560C328();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  sub_1D560C318();
  v7 = sub_1D560C3E8();
  (*(v4 + 8))(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D5621D90;
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = MEMORY[0x1E69E6530];
  *(v8 + 64) = v10;
  *(v8 + 32) = v7 / 3600;
  v11 = v7 / 60;
  if (v7 < -59)
  {
    v11 = v7 / -60;
  }

  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11 % 0x3C;
  sub_1D5614D88();
  sub_1D560BB28();
}

uint64_t sub_1D514EA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D514EAD4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_0_6();
  return v4(v3, v1);
}

void sub_1D514EB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D5622FA0;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09B0, &qword_1D563A928);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374148(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09B8, &qword_1D563A958);
  OUTLINED_FUNCTION_2_19(v4);
  OUTLINED_FUNCTION_0_6();

  sub_1D537586C(v5);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 40) = v0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09C0, &qword_1D563A988);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864(v7, 1, sub_1D514ED0C, 0);
}

uint64_t sub_1D514EC40()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09C8, &qword_1D563A9B8);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375868(v3);
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  qword_1EDD767C8 = v0;
  return result;
}

void *sub_1D514ECA4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D514ED0C()
{
  v0 = sub_1D5613348();
  sub_1D560E4C8();
  return v0(&v2, 0);
}

uint64_t sub_1D514ED6C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D514EDC4()
{
  v0 = sub_1D5613598();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D561EAC0;
  KeyPath = swift_getKeyPath();
  (*(v1 + 104))(v7, *MEMORY[0x1E6976A98], v0);
  (*(v1 + 16))(v5, v7, v0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09A8, &unk_1D563A900);
  OUTLINED_FUNCTION_2_19(v10);
  v11 = sub_1D5375870(KeyPath, v5);
  result = (*(v1 + 8))(v7, v0);
  *(v8 + 32) = v11;
  qword_1EC87C228 = v8;
  return result;
}

uint64_t sub_1D514EF68(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D514EFC0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E6977688]);

  return [v3 initWithVariants:3 options:a2];
}

uint64_t sub_1D514F074(uint64_t a1, uint64_t a2)
{
  if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D514F100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D514F074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D514F12C(uint64_t a1)
{
  v2 = sub_1D514F300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D514F168(uint64_t a1)
{
  v2 = sub_1D514F300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSiriItemResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09D0, &qword_1D563A9C0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D514F300();
  sub_1D56163D8();
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_0_109();
  sub_1D514F728(v11, v12);
  sub_1D56160C8();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1D514F300()
{
  result = qword_1EC7F09D8;
  if (!qword_1EC7F09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09D8);
  }

  return result;
}

uint64_t MusicSiriItemResponse.hashValue.getter()
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t MusicSiriItemResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09E0, &qword_1D563A9C8);
  v8 = OUTLINED_FUNCTION_4(v7);
  v25 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for MusicSiriItemResponse();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D514F300();
  sub_1D5616398();
  if (!v2)
  {
    v19 = v24;
    OUTLINED_FUNCTION_0_109();
    sub_1D514F728(v20, v21);
    v22 = v26;
    sub_1D5615FD8();
    (*(v25 + 8))(v13, v7);
    sub_1D514F678(v22, v17, type metadata accessor for GenericMusicItem);
    sub_1D514F678(v17, v19, type metadata accessor for MusicSiriItemResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicSiriItemResponse()
{
  result = qword_1EDD5BD28;
  if (!qword_1EDD5BD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D514F678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D514F728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D514F798()
{
  result = type metadata accessor for GenericMusicItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriItemResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D514F8B4()
{
  result = qword_1EC7F09F0;
  if (!qword_1EC7F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09F0);
  }

  return result;
}

unint64_t sub_1D514F90C()
{
  result = qword_1EC7F09F8;
  if (!qword_1EC7F09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09F8);
  }

  return result;
}

unint64_t sub_1D514F964()
{
  result = qword_1EC7F0A00;
  if (!qword_1EC7F0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal27CloudResourceMapRawResponseV0eF0VSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D514F9E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 192))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D514FA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D514FAD4()
{
  result = qword_1EC7F0A08;
  if (!qword_1EC7F0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A08);
  }

  return result;
}

uint64_t sub_1D514FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D514FB4C, 0, 0);
}

uint64_t sub_1D514FB4C()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v2 = v0[4];
  v1 = v0[5];
  v3 = MEMORY[0x1DA6EC3C0]();
  sub_1D5150038(v2, v1, v0 + 2);
  objc_autoreleasePoolPop(v3);
  if (*(v0[2] + 16))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A40, &qword_1D563ADD8);
    v8 = swift_task_alloc();
    v0[8] = v8;
    v8[2] = v0 + 2;
    v8[3] = v4;
    v8[4] = v5;
    v9 = *(MEMORY[0x1E69E88A0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[9] = v10;
    *v10 = v11;
    v10[1] = sub_1D514FDCC;

    return MEMORY[0x1EEE6DD58](v0 + 3, v6, v7, 0, 0, &unk_1D563ADE8, v8, v6);
  }

  else
  {
    v12 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    type metadata accessor for LooselyComparableTypedIdentifier();
    type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_17_46();
    sub_1D5157970(v15, v16);
    v17 = sub_1D5614BD8();

    sub_1D4E55E1C(v14, v13);
    v18 = v0[6];

    v19 = sub_1D560CD48();
    OUTLINED_FUNCTION_4_0(v19);
    (*(v20 + 8))(v18);
    v21 = v0[1];

    return v21(v17);
  }
}

uint64_t sub_1D514FDCC()
{
  OUTLINED_FUNCTION_60();
  v3 = *(*v1 + 72);
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v2;
  *(v2 + 80) = v0;

  if (v0)
  {
    v5 = sub_1D514FF84;
  }

  else
  {
    v6 = *(v2 + 64);

    v5 = sub_1D514FEDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D514FEDC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_71();
  sub_1D4E55E1C(v4, v5);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[6];

  v9 = sub_1D560CD48();
  OUTLINED_FUNCTION_4_0(v9);
  (*(v10 + 8))(v8);
  v11 = v0[1];

  return v11(v7);
}

uint64_t sub_1D514FF84()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D4E55E1C(v0[4], v0[5]);

  v4 = v0[2];

  v5 = sub_1D560CD48();
  OUTLINED_FUNCTION_4_0(v5);
  (*(v6 + 8))(v3);
  OUTLINED_FUNCTION_55();
  v8 = v0[10];

  return v7();
}

uint64_t sub_1D5150038(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v75 = xmmword_1D5628AA0;
  sub_1D51507A8(123, 0xE100000000000000);
  v5 = MEMORY[0x1DA6E1FB0](a1, a2);
  if (v5 < 0)
  {
    goto LABEL_110;
  }

  v6 = v5;
  v56 = a1;
  if (v5)
  {
    v7 = 0;
    v62 = 0;
    v64 = 0;
    v61 = 0;
    v8 = 0;
    v58 = a1;
    v54 = BYTE6(a2);
    v55 = a1 >> 32;
    v52 = a1 >> 16;
    v53 = a1 >> 8;
    v50 = HIDWORD(a1);
    v51 = a1 >> 24;
    v48 = HIWORD(a1);
    v49 = a1 >> 40;
    v46 = a2 >> 8;
    v47 = HIBYTE(a1);
    v44 = a2 >> 24;
    v45 = a2 >> 16;
    v43 = HIDWORD(a2);
    v59 = v5;
    v60 = a2 >> 62;
    v57 = a2;
    while (1)
    {
      v9 = v8;
      while (2)
      {
        if (v9 >= v6)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_99;
        }

        switch(v60)
        {
          case 1uLL:
            if (v9 < v56 || v9 >= v55)
            {
              goto LABEL_104;
            }

            v16 = sub_1D560BCA8();
            if (!v16)
            {
              goto LABEL_112;
            }

            v12 = v16;
            v17 = sub_1D560BCC8();
            v14 = v9 - v17;
            if (!__OFSUB__(v9, v17))
            {
              goto LABEL_23;
            }

            goto LABEL_106;
          case 2uLL:
            if (v9 < *(v56 + 16))
            {
              goto LABEL_102;
            }

            if (v9 >= *(v56 + 24))
            {
              goto LABEL_105;
            }

            v11 = sub_1D560BCA8();
            if (!v11)
            {
              goto LABEL_113;
            }

            v12 = v11;
            v13 = sub_1D560BCC8();
            v14 = v9 - v13;
            if (__OFSUB__(v9, v13))
            {
              goto LABEL_107;
            }

LABEL_23:
            v10 = *(v12 + v14);
LABEL_24:
            v18 = ((v10 >> 6) & 0xFFFFC0FF | ((v10 & 0x3F) << 8)) + 33217;
            if ((v10 & 0x80) == 0)
            {
              v18 = v10 + 1;
            }

            v66 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
            v20 = sub_1D5614E18();
            v21 = v19;
            v22 = v20 == 123 && v19 == 0xE100000000000000;
            v23 = v22;
            v63 = v9 + 1;
            if (v22 || (sub_1D5616168() & 1) != 0)
            {
              v24 = __OFADD__(v7++, 1);
              if (v24)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v28 = v20 == 125 && v21 == 0xE100000000000000;
              if (v28 || (sub_1D5616168() & 1) != 0)
              {
                v24 = __OFSUB__(v7--, 1);
                if (v24)
                {
                  goto LABEL_108;
                }
              }
            }

            if ((v61 & 1) == 0)
            {
              goto LABEL_72;
            }

            if (v23 & 1) != 0 || (sub_1D5616168())
            {
              v25 = v64 + 1;
              if (__OFADD__(v64, 1))
              {
                goto LABEL_101;
              }
            }

            else
            {
              v29 = v20 == 125 && v21 == 0xE100000000000000;
              if (v29 || (v25 = v64, (sub_1D5616168() & 1) != 0))
              {
                v25 = v64 - 1;
                if (__OFSUB__(v64, 1))
                {
                  goto LABEL_109;
                }
              }
            }

            if (v64)
            {
              goto LABEL_50;
            }

            v26 = v20 == 44 && v21 == 0xE100000000000000;
            if (v26 || (sub_1D5616168() & 1) != 0)
            {

              v6 = v59;
              goto LABEL_94;
            }

            v27 = v20 == 125 && v21 == 0xE100000000000000;
            if (v27 || (sub_1D5616168() & 1) != 0)
            {
              sub_1D4E55E1C(v75, *(&v75 + 1));

              goto LABEL_96;
            }

LABEL_50:
            switch(*(&v75 + 1) >> 62)
            {
              case 2:
                v30 = *(v75 + 24);
                break;
              default:
                break;
            }

            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A60, &unk_1D563AE40);
            v73 = v31;
            v74 = sub_1D4E62A60(&unk_1EDD525A0, &qword_1EC7F0A60, &unk_1D563AE40);
            LOBYTE(v66) = v10;
            v65 = *__swift_project_boxed_opaque_existential_1(&v66, v31);
            sub_1D560C138();
            __swift_destroy_boxed_opaque_existential_1(&v66);
            if (v64)
            {
              v64 = v25;
              a2 = v57;
              if (v25)
              {
                goto LABEL_72;
              }

              sub_1D51507A8(125, 0xE100000000000000);
              v33 = v75;
              v34 = *a3;
              sub_1D4F48DE4(v75, *(&v75 + 1));
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a3 = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v37 = *(v34 + 16);
                sub_1D4F019A0();
                v34 = v38;
                *a3 = v38;
              }

              v6 = v59;
              v36 = *(v34 + 16);
              if (v36 >= *(v34 + 24) >> 1)
              {
                sub_1D4F019A0();
                v34 = v39;
                *a3 = v39;
              }

              *(v34 + 16) = v36 + 1;
              *(v34 + 16 * v36 + 32) = v33;
              sub_1D4E55E1C(v75, *(&v75 + 1));
              v75 = xmmword_1D5628AA0;
              sub_1D51507A8(123, 0xE100000000000000);
              v25 = 0;
LABEL_94:
              v61 = 1;
              v64 = v25;
              v8 = v9 + 1;
              a2 = v57;
              if (v63 == v6)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v64 = v25;
              a2 = v57;
LABEL_72:
              if ((v62 & 1) == 0)
              {
                if ((sub_1D5614F28() & 1) != 0 && v7 == 1)
                {

                  v6 = v59;
                  if (v63 == v59)
                  {
                    goto LABEL_95;
                  }

                  v7 = 1;
LABEL_81:
                  v62 = 1;
                  goto LABEL_84;
                }

                MEMORY[0x1DA6EAC60](v20, v21);

                v6 = v59;
                if (v63 == v59)
                {
                  goto LABEL_95;
                }

                v62 = 0;
LABEL_84:
                ++v9;
                continue;
              }

              v8 = v9 + 1;
              if (!v23)
              {
                v32 = sub_1D5616168();

                if (v32)
                {
                  goto LABEL_86;
                }

                v6 = v59;
                if (v63 == v59)
                {
                  goto LABEL_95;
                }

                goto LABEL_81;
              }

LABEL_86:
              v62 = 1;
              v61 = 1;
              v6 = v59;
              if (v63 == v59)
              {
                goto LABEL_95;
              }
            }

            break;
          case 3uLL:
            goto LABEL_111;
          default:
            if (v9 >= v54)
            {
              goto LABEL_103;
            }

            LOBYTE(v66) = v58;
            BYTE1(v66) = v53;
            BYTE2(v66) = v52;
            BYTE3(v66) = v51;
            BYTE4(v66) = v50;
            BYTE5(v66) = v49;
            BYTE6(v66) = v48;
            HIBYTE(v66) = v47;
            v67 = a2;
            v68 = v46;
            v69 = v45;
            v70 = v44;
            v71 = v43;
            v72 = BYTE5(a2);
            v10 = *(&v66 + v9);
            goto LABEL_24;
        }

        break;
      }
    }
  }

LABEL_95:
  sub_1D4E55E1C(v75, *(&v75 + 1));
LABEL_96:

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D51507A8(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF38, &qword_1D5628B98);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v39, &v41);
    v5 = __swift_project_boxed_opaque_existential_1(&v41, v42);
    MEMORY[0x1EEE9AC00](v5);
    sub_1D560BDA8();
    result = __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_57;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1D4E765C8(v39, &qword_1EC7EDF40, &qword_1D563AE50);
  result = sub_1D5155FD0(a1, a2);
  if ((result & 1) == 0)
  {
    goto LABEL_57;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_8:
  v8 = *v2;
  v9 = v2[1];
  v10 = 0;
  v11 = 0;
  switch(v9 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_68;
      }

      v11 = HIDWORD(v8) - v8;
      v10 = v8 >> 32;
LABEL_13:
      if (__OFADD__(v10, v7))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v10 + v7 < v10)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v10 < 0)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v14 = sub_1D560C128();
      MEMORY[0x1EEE9AC00](v14);
      v15 = sub_1D5014E3C(sub_1D515609C);
      v19 = v16;
      if (v18 != v7)
      {
        v30 = *v2;
        v31 = v2[1];
        v32 = 0;
        switch(v31 >> 62)
        {
          case 1uLL:
            v32 = v30;
            break;
          case 2uLL:
            v32 = *(v30 + 16);
            break;
          default:
            break;
        }

        v33 = __OFADD__(v32, v11);
        v34 = v32 + v11;
        if (!v33)
        {
          if (!__OFADD__(v34, v18))
          {
            v35 = 0;
            switch(v31 >> 62)
            {
              case 1uLL:
                v35 = v30 >> 32;
                break;
              case 2uLL:
                v35 = *(v30 + 24);
                break;
              case 3uLL:
                break;
              default:
                v35 = BYTE6(v31);
                break;
            }

            if (v35 >= v34 + v18)
            {
              sub_1D560C138();
              goto LABEL_56;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v20 = v15;
      v21 = v17;
      LOBYTE(v22) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v23 = v15 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v15 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      *(v39 + 7) = 0;
      *&v39[0] = 0;
      while (4 * v23 != v21 >> 14)
      {
        v26 = v21;
        if ((v21 & 0xC) == v25)
        {
          v26 = sub_1D53408C0(v21, v20, v19);
        }

        v27 = v26 >> 16;
        if (v26 >> 16 >= v23)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v7 = sub_1D5614EC8();
          goto LABEL_8;
        }

        if ((v19 & 0x1000000000000000) != 0)
        {
          v29 = sub_1D5614EF8();
        }

        else if ((v19 & 0x2000000000000000) != 0)
        {
          *&v41 = v20;
          *(&v41 + 1) = v38;
          v29 = *(&v41 + v27);
        }

        else
        {
          v28 = v37;
          if ((v20 & 0x1000000000000000) == 0)
          {
            v28 = sub_1D5615C58();
          }

          v29 = *(v28 + v27);
        }

        if ((v21 & 0xC) == v25)
        {
          v21 = sub_1D53408C0(v21, v20, v19);
          if ((v19 & 0x1000000000000000) == 0)
          {
LABEL_35:
            v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_40;
          }
        }

        else if ((v19 & 0x1000000000000000) == 0)
        {
          goto LABEL_35;
        }

        if (v23 <= v21 >> 16)
        {
          goto LABEL_60;
        }

        v21 = sub_1D5614ED8();
LABEL_40:
        *(v39 + v22) = v29;
        v22 = v22 + 1;
        if ((v22 >> 8))
        {
          goto LABEL_59;
        }

        if (v22 == 14)
        {
          *&v41 = *&v39[0];
          *(&v41 + 6) = *(v39 + 6);
          sub_1D560C158();
          LOBYTE(v22) = 0;
        }
      }

      if (v22)
      {
        *&v41 = *&v39[0];
        *(&v41 + 6) = *(v39 + 6);
        sub_1D560C158();
      }

LABEL_56:

LABEL_57:
      v36 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v13 = v8 + 16;
      v12 = *(v8 + 16);
      v10 = *(v13 + 8);
      v11 = v10 - v12;
      if (!__OFSUB__(v10, v12))
      {
        goto LABEL_13;
      }

      goto LABEL_69;
    case 3uLL:
      goto LABEL_13;
    default:
      v10 = BYTE6(v9);
      v11 = BYTE6(v9);
      goto LABEL_13;
  }
}

uint64_t sub_1D5150C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
  v5[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for GenericMusicItem();
  v5[26] = v8;
  v9 = *(v8 - 8);
  v5[27] = v9;
  v10 = *(v9 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v11 = type metadata accessor for LooselyComparableTypedIdentifier();
  v5[30] = v11;
  v12 = *(v11 - 8);
  v5[31] = v12;
  v13 = *(v12 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE70, &unk_1D563ADF0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v16 = sub_1D560CD48();
  v5[37] = v16;
  v17 = *(v16 - 8);
  v5[38] = v17;
  v5[39] = *(v17 + 64);
  v5[40] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A48, &qword_1D563AE00);
  v5[43] = v19;
  v20 = *(v19 - 8);
  v5[44] = v20;
  v21 = *(v20 + 64) + 15;
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5150F9C, 0, 0);
}

uint64_t sub_1D5150F9C()
{
  v1 = *(*v0[21] + 16);
  if (v1)
  {
    v33 = v0 + 9;
    v36 = *v0[20];
    v37 = v0[22];
    v35 = v0[39] + 7;
    v38 = v0[38];
    v2 = ( + 40);
    v34 = v0;
    do
    {
      v42 = v1;
      v3 = v0[42];
      v4 = v0[40];
      v5 = v0[37];
      v6 = v0[23];
      v39 = v0[22];
      v7 = *v2;
      v40 = *(v2 - 1);
      v41 = v0[41];
      sub_1D4F48DE4(v40, *v2);
      sub_1D56153D8();
      v8 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
      (*(v38 + 16))(v4, v6, v5);
      v9 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v10 = swift_allocObject();
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 4) = v39;
      (*(v38 + 32))(&v10[v9], v4, v5);
      v11 = &v10[(v35 + v9) & 0xFFFFFFFFFFFFFFF8];
      v0 = v34;
      *v11 = v40;
      v11[1] = v7;
      sub_1D5155C5C(v3, v41);
      v12 = OUTLINED_FUNCTION_35_1();
      LODWORD(v4) = __swift_getEnumTagSinglePayload(v12, v13, v8);
      sub_1D4F48DE4(v40, v7);

      v14 = v34[41];
      if (v4 == 1)
      {
        sub_1D4E765C8(v34[41], &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        (*(*(v8 - 8) + 8))(v14, v8);
      }

      if (*(v10 + 2))
      {
        v15 = *(v10 + 3);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1D5615338();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
      v19 = (v18 | v16);
      if (v18 | v16)
      {
        v19 = v33;
        *v33 = 0;
        v33[1] = 0;
        v34[11] = v16;
        v34[12] = v18;
      }

      v2 += 2;
      v20 = v34[42];
      v34[13] = 1;
      v34[14] = v19;
      v34[15] = v36;
      swift_task_create();

      sub_1D4E55E1C(v40, v7);
      sub_1D4E765C8(v20, &qword_1EC7EB710, &qword_1D561F440);
      v1 = v42 - 1;
    }

    while (v42 != 1);
  }

  v21 = v0[45];
  v22 = v0[30];
  v23 = v0[26];
  v24 = v0[20];
  OUTLINED_FUNCTION_17_46();
  sub_1D5157970(v25, v26);
  v27 = sub_1D5614BD8();
  v28 = *v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615508();
  v0[47] = v27;
  v29 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[46] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_25_40(v30);

  return MEMORY[0x1EEE6DAD8](v0 + 16);
}

uint64_t sub_1D51513CC()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v2 + 376);

    v7 = sub_1D5151AE8;
  }

  else
  {
    v7 = sub_1D51514D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D51514D8()
{
  v2 = v1[16];
  v83 = (v1 + 16);
  if (v2 == 1)
  {
    v64 = v1[47];
    OUTLINED_FUNCTION_39_24();
    v65 = v1[34];
    v86 = v1[33];
    v88 = v1[32];
    v90 = v1[29];
    v92 = v1[28];
    v94 = v1[25];
    v66 = v1[19];
    (*(v67 + 8))(v0);
    *v66 = v64;

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_21();

    __asm { BRAA            X1, X16 }
  }

  if (v2)
  {
    v3 = v1[47];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[18] = v3;
    sub_1D4FB6898(v2, sub_1D4FB6938, 0, v1 + 2);
    v84 = v1[2];
    v5 = v1[5];
    v6 = v1[6];
    v80 = v1[3];
    v81 = v1[7];
    v82 = v1[8];
    v77 = v1[4];
    v78 = v2;
    v79 = (v77 + 64) >> 6;
    v7 = v1[47];

    v9 = v84;
    while (1)
    {
      v10 = v6;
      v11 = v5;
      v93 = isUniquelyReferenced_nonNull_native;
      v85 = v6;
      v87 = v5;
      if (!v6)
      {
        v12 = v5;
        while (1)
        {
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v11 >= v79)
          {
            v91 = 0;
            v22 = 1;
            goto LABEL_10;
          }

          v10 = *(v80 + 8 * v11);
          ++v12;
          if (v10)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v8);
      }

LABEL_9:
      v13 = v1[35];
      v14 = v1[33];
      v15 = v1[29];
      v16 = v1[27];
      v89 = v1[24];
      v91 = (v10 - 1) & v10;
      v17 = *(v9 + 48);
      v18 = *(v1[31] + 72);
      sub_1D5155CCC();
      v19 = *(v9 + 56);
      v20 = *(v16 + 72);
      sub_1D5155CCC();
      v21 = *(v89 + 48);
      sub_1D5155D24();
      sub_1D5155D24();
      v22 = 0;
      v12 = v11;
LABEL_10:
      v23 = v1[34];
      v24 = v1[24];
      v25 = 1;
      __swift_storeEnumTagSinglePayload(v1[35], v22, 1, v24);
      sub_1D4FB8058();
      if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
      {
        v26 = v1[36];
        v27 = v1[34];
        v28 = v1[25];
        sub_1D4FB8058();
        v81(v28);
        sub_1D4E765C8(v28, &qword_1EC7EB210, &unk_1D561DF60);
        v25 = 0;
      }

      v29 = v1[36];
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
      __swift_storeEnumTagSinglePayload(v29, v25, 1, v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
      if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
      {
        sub_1D4E6456C();

        sub_1D4EA7410(v78);
        v1[47] = v7;
        break;
      }

      v32 = v1[36];
      v33 = v1[32];
      v34 = v1[28];
      v35 = *(v31 + 48);
      OUTLINED_FUNCTION_16_48();
      sub_1D5155D24();
      OUTLINED_FUNCTION_18_45();
      sub_1D5155D24();
      v43 = sub_1D4F0DDB4(v33);
      v44 = v7[2];
      v45 = (v36 & 1) == 0;
      v8 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_36;
      }

      v46 = v36;
      if (v7[3] >= v8)
      {
        if ((v93 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
          sub_1D5615D88();
        }
      }

      else
      {
        v47 = v1[32];
        sub_1D52C7190(v8, v93 & 1, v37, v38, v39, v40, v41, v42, v77, v78, v79, v80, v81, v82, v83, v84, v85, v87, v89, v91);
        v48 = v1[18];
        v49 = sub_1D4F0DDB4(v47);
        if ((v46 & 1) != (v50 & 1))
        {
          v74 = v1[30];
          OUTLINED_FUNCTION_42_21();

          return sub_1D5616238();
        }

        v43 = v49;
      }

      v52 = v1[27];
      v51 = v1[28];
      if (v46)
      {
        v53 = v1[29];
        sub_1D5155D7C(v1[32], type metadata accessor for LooselyComparableTypedIdentifier);
        v7 = v1[18];
        v54 = v7[7];
        v55 = *(v52 + 72) * v43;
        OUTLINED_FUNCTION_27_35();
        sub_1D5155CCC();
        sub_1D5155D7C(v51, v43);
        v8 = sub_1D4F159C4(v53, v7[7] + v55);
      }

      else
      {
        v56 = v1[31];
        v7 = v1[18];
        v7[(v43 >> 6) + 8] |= 1 << v43;
        v57 = v7[6];
        v58 = *(v56 + 72);
        OUTLINED_FUNCTION_16_48();
        sub_1D5155D24();
        v59 = v7[7];
        v60 = *(v52 + 72);
        OUTLINED_FUNCTION_18_45();
        v8 = sub_1D5155D24();
        v61 = v7[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_37;
        }

        v7[2] = v63;
      }

      isUniquelyReferenced_nonNull_native = 1;
      v5 = v12;
      v6 = v91;
    }
  }

  v70 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[46] = v71;
  *v71 = v72;
  OUTLINED_FUNCTION_25_40();
  OUTLINED_FUNCTION_42_21();

  return MEMORY[0x1EEE6DAD8](v8);
}

uint64_t sub_1D5151AE8()
{
  OUTLINED_FUNCTION_39_24();
  v3 = v1[33];
  v2 = v1[34];
  v4 = v1[32];
  v8 = v1[29];
  v9 = v1[28];
  v11 = v1[25];
  (*(v5 + 8))(v0);
  v10 = v1[17];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D5151BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A50, &unk_1D563AE20) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = sub_1D5615C18();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v12 = sub_1D560D838();
  v7[17] = v12;
  v13 = *(v12 - 8);
  v7[18] = v13;
  v14 = *(v13 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v15 = type metadata accessor for LooselyComparableTypedIdentifier();
  v7[21] = v15;
  v16 = *(v15 - 8);
  v7[22] = v16;
  v17 = *(v16 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v18 = type metadata accessor for GenericMusicItem();
  v7[25] = v18;
  v19 = *(v18 - 8);
  v7[26] = v19;
  v20 = *(v19 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v7[29] = v21;
  v22 = *(v21 - 8);
  v7[30] = v22;
  v23 = *(v22 + 64) + 15;
  v7[31] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD40, &unk_1D563AE30) - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v25 = sub_1D5610088();
  v7[34] = v25;
  v26 = *(v25 - 8);
  v7[35] = v26;
  v27 = *(v26 + 64) + 15;
  v7[36] = swift_task_alloc();
  v28 = sub_1D560CD48();
  v7[37] = v28;
  v29 = *(v28 - 8);
  v7[38] = v29;
  v30 = *(v29 + 64) + 15;
  v7[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5151FB8, 0, 0);
}

uint64_t sub_1D5151FB8()
{
  v177 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[8];
  v172 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = sub_1D560B9C8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D560B9B8();

  sub_1D560B968();
  (*(v1 + 16))(v2, v7, v3);
  v12 = v0;
  sub_1D560B988();
  OUTLINED_FUNCTION_17_46();
  sub_1D5157970(v13, v14);
  v15 = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
  sub_1D5155DD0();
  OUTLINED_FUNCTION_61();
  sub_1D560B948();
  v174 = v15;
  v37 = 0;
  v38 = v0[2];
  v39 = v12[2];
  v42 = *(v39 + 64);
  v41 = v39 + 64;
  v40 = v42;
  v43 = -1 << *(v38 + 32);
  v44 = v12[35];
  if (-v43 < 64)
  {
    v45 = ~(-1 << -v43);
  }

  else
  {
    v45 = -1;
  }

  v46 = v12[30];
  v47 = v45 & v40;
  v48 = (63 - v43) >> 6;
  v143 = v46 + 16;
  v144 = v46;
  v154 = (v46 + 32);
  v151 = (v12[18] + 8);
  v150 = v12[33];
  v142 = v12[32];
  v149 = (v44 + 16);
  v146 = v12[26];
  v148 = v12[24];
  v135 = (v44 + 8);
  v136 = v48;
  v141 = v12[22];
  v147 = v12[21];
  v137 = v41;
  v171 = v12;
  v138 = v38;
  if (!v47)
  {
    while (1)
    {
LABEL_9:
      v49 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_49;
      }

      if (v49 >= v48)
      {
        break;
      }

      v47 = *(v41 + 8 * v49);
      ++v37;
      if (v47)
      {
        goto LABEL_12;
      }
    }

    v119 = v12[5];

    *v119 = v174;
LABEL_43:
    v123 = v12[39];
    v124 = v12[36];
    v126 = v12[32];
    v125 = v12[33];
    v127 = v12[31];
    v128 = v12;
    v129 = v12[28];
    v130 = v128[27];
    v132 = v128[23];
    v131 = v128[24];
    v133 = v128[20];
    v160 = v128[19];
    v162 = v128[16];
    v164 = v128[15];
    v167 = v128[14];
    v170 = v128[13];
    v175 = v128[10];

    OUTLINED_FUNCTION_55();

    return v134();
  }

  while (1)
  {
    v49 = v37;
LABEL_12:
    v50 = v12[36];
    v139 = v49;
    v140 = (v47 - 1) & v47;
    v51 = __clz(__rbit64(v47)) | (v49 << 6);
    v52 = (*(v38 + 48) + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(*(v38 + 56) + 8 * v51);

    MEMORY[0x1DA6E5E30](v53, v54);
    v56 = 0;
    v58 = v55 + 64;
    v57 = *(v55 + 64);
    v145 = v55;
    v59 = -1 << *(v55 + 32);
    if (-v59 < 64)
    {
      v60 = ~(-1 << -v59);
    }

    else
    {
      v60 = -1;
    }

    v61 = v60 & v57;
    v62 = (63 - v59) >> 6;
    v152 = v62;
    v153 = v55 + 64;
    if ((v60 & v57) != 0)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_17:
      v63 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        swift_once();
        v17 = v12[15];
        v16 = v12[16];
        v18 = v12[11];
        v19 = v12[12];
        v20 = sub_1D560C758();
        __swift_project_value_buffer(v20, qword_1EDD76DC8);
        v21 = v12;
        v22 = *(v19 + 16);
        v22(v17, v16, v18);
        v23 = sub_1D560C738();
        v24 = sub_1D56156C8();
        v25 = os_log_type_enabled(v23, v24);
        v27 = v12[15];
        v26 = v12[16];
        if (v25)
        {
          v168 = v24;
          v28 = v12[14];
          v29 = v12[11];
          v165 = v12[12];
          v173 = v12[16];
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v176 = v31;
          *v30 = 136446210;
          v22(v28, v27, v29);
          v32 = sub_1D5614DB8();
          v34 = v33;
          v35 = *(v165 + 8);
          v35(v27, v29);
          v36 = sub_1D4E6835C(v32, v34, &v176);

          *(v30 + 4) = v36;
          _os_log_impl(&dword_1D4E3F000, v23, v168, "MusicLibraryAdvancedMappingRequest: Decoding failed with error: %{public}s. Gracefully treating as nil.", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1DA6ED200](v31, -1, -1);
          MEMORY[0x1DA6ED200](v30, -1, -1);

          v35(v173, v29);
        }

        else
        {
          v121 = v12[11];
          v120 = v12[12];

          v122 = *(v120 + 8);
          v122(v27, v121);
          v122(v26, v121);
        }

        v12 = v21;
        *v21[5] = 0;

        goto LABEL_43;
      }

      if (v63 >= v62)
      {
        v113 = v12[32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
        v114 = OUTLINED_FUNCTION_35_1();
        __swift_storeEnumTagSinglePayload(v114, v115, 1, v116);
        v61 = 0;
        goto LABEL_22;
      }

      v61 = *(v58 + 8 * v63);
      ++v56;
    }

    while (!v61);
    v56 = v63;
LABEL_21:
    v64 = v12[31];
    v65 = v12[32];
    v66 = v12[29];
    v67 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v68 = v67 | (v63 << 6);
    v69 = (*(v145 + 48) + 16 * v68);
    v70 = *v69;
    v71 = v69[1];
    (*(v144 + 16))(v64, *(v145 + 56) + *(v144 + 72) * v68, v66);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    v73 = *(v72 + 48);
    *v65 = v70;
    *(v142 + 8) = v71;
    v12 = v171;
    (*(v144 + 32))(&v65[v73], v64, v66);
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v72);

LABEL_22:
    v74 = v12[32];
    v75 = v12[33];
    sub_1D4FB8058();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    if (__swift_getEnumTagSinglePayload(v75, 1, v76) != 1)
    {
      break;
    }

    (*v135)(v12[36], v12[34]);

    v38 = v138;
    v37 = v139;
    v48 = v136;
    v41 = v137;
    v47 = v140;
    if (!v140)
    {
      goto LABEL_9;
    }
  }

  v77 = v12;
  v78 = v12[39];
  v79 = v12[33];
  v161 = v12[34];
  v163 = v12[36];
  v80 = v12[31];
  v81 = v77[29];
  v155 = v77[28];
  v82 = v77[25];
  v166 = v77[23];
  v169 = v77[27];
  v84 = v77[19];
  v83 = v77[20];
  v158 = v77[17];
  v159 = v77[24];
  v85 = *(v150 + 8);

  (*v154)(v80, v79 + *(v76 + 48), v81);
  sub_1D560B978();
  v86 = sub_1D560B958();
  sub_1D50773C4(v80, v78, v86, v87, v88, v89, v90, v91, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  sub_1D5157970(&qword_1EDD5C600, type metadata accessor for GenericMusicItem);
  sub_1D560EC98();
  v157 = sub_1D560D708();
  v156 = v92;
  v12 = v151;
  v93 = *v151;
  (*v151)(v83, v158);
  sub_1D560EC98();
  v94 = v159 + *(v147 + 20);
  sub_1D560D828();
  v93(v84, v158);
  v95 = *(v147 + 24);
  (*v149)(v159 + v95, v163, v161);
  __swift_storeEnumTagSinglePayload(v159 + v95, 0, 1, v161);
  *v159 = v157;
  *(v148 + 8) = v156;
  OUTLINED_FUNCTION_16_48();
  sub_1D5155CCC();
  OUTLINED_FUNCTION_18_45();
  sub_1D5155CCC();
  swift_isUniquelyReferenced_nonNull_native();
  v176 = v174;
  v96 = sub_1D4F0DDB4(v166);
  if (__OFADD__(v174[2], (v97 & 1) == 0))
  {
    goto LABEL_47;
  }

  v98 = v96;
  v99 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
  v100 = v176;
  v174 = v176;
  if ((sub_1D5615D78() & 1) == 0)
  {
    v101 = v171;
LABEL_28:
    v12 = v101[27];
    v104 = v101[28];
    v106 = v101[23];
    v105 = v101[24];
    if (v99)
    {
      sub_1D4F159C4(v101[27], *(v100 + 56) + *(v146 + 72) * v98);
      OUTLINED_FUNCTION_26_39();
      sub_1D5155D7C(v106, v107);
      sub_1D5155D7C(v105, v101);
      sub_1D5155D7C(v104, type metadata accessor for GenericMusicItem);
    }

    else
    {
      *(v100 + 8 * (v98 >> 6) + 64) |= 1 << v98;
      v108 = v174[6] + *(v141 + 72) * v98;
      OUTLINED_FUNCTION_26_39();
      sub_1D5155CCC();
      v109 = v174[7] + *(v146 + 72) * v98;
      OUTLINED_FUNCTION_27_35();
      sub_1D5155D24();
      sub_1D5155D7C(v106, v101);
      sub_1D5155D7C(v105, v101);
      sub_1D5155D7C(v104, v98);
      v110 = v174[2];
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        goto LABEL_48;
      }

      v174[2] = v112;
    }

    v12 = v171;
    v62 = v152;
    v58 = v153;
    if (!v61)
    {
      goto LABEL_17;
    }

LABEL_16:
    v63 = v56;
    goto LABEL_21;
  }

  v101 = v171;
  v102 = sub_1D4F0DDB4(v171[23]);
  if ((v99 & 1) == (v103 & 1))
  {
    v98 = v102;
    v100 = v176;
    goto LABEL_28;
  }

  v117 = v171[21];

  return sub_1D5616238();
}

uint64_t sub_1D5152D1C()
{
  v0 = sub_1D5616208();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5152D74(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x75632D656C707061;
      break;
    case 3:
      result = 0x612D746964657263;
      break;
    case 4:
      result = 0x73726F7461727563;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x7365726E6567;
      break;
    case 7:
      result = 0x6F6D2D636973756DLL;
      break;
    case 8:
      result = 0x69762D636973756DLL;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x6C2D64726F636572;
      break;
    case 11:
      result = 0x73676E6F73;
      break;
    case 12:
      result = 0x702D6C6169636F73;
      break;
    case 13:
      result = 0x736E6F6974617473;
      break;
    case 14:
      v3 = 0x6970652D7674;
      goto LABEL_11;
    case 15:
      v3 = 0x6165732D7674;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 16:
      result = 0x73776F68732D7674;
      break;
    case 17:
    case 18:
      result = 0x646564616F6C7075;
      break;
    case 19:
    case 20:
    case 23:
      result = 0x2D7972617262696CLL;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5153038()
{
  OUTLINED_FUNCTION_69_0();
  v4 = *v3;
  v5 = *v2;
  if (*v3)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *v2;

    OUTLINED_FUNCTION_61();
    sub_1D4F293F4();
    OUTLINED_FUNCTION_30_31();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = v1[1];
  v8 = v0[1];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = v0[1];

    OUTLINED_FUNCTION_61();
    sub_1D4F2964C();
    OUTLINED_FUNCTION_30_31();
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = v1[2];
  v11 = v0[2];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = v0[2];

    OUTLINED_FUNCTION_61();
    sub_1D4F298A4();
    OUTLINED_FUNCTION_30_31();
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v1[3];
  v14 = v0[3];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = v0[3];

    OUTLINED_FUNCTION_61();
    sub_1D4F29AFC();
    OUTLINED_FUNCTION_30_31();
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v1[4];
  v17 = v0[4];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = v0[4];

    OUTLINED_FUNCTION_61();
    sub_1D4F29D54();
    OUTLINED_FUNCTION_30_31();
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = v1[5];
  v20 = v0[5];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = v0[5];

    OUTLINED_FUNCTION_61();
    sub_1D4F29FAC();
    OUTLINED_FUNCTION_30_31();
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = v1[6];
  v23 = v0[6];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = v0[6];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A204();
    OUTLINED_FUNCTION_30_31();
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = v1[7];
  v26 = v0[7];
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = v0[7];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A45C();
    OUTLINED_FUNCTION_30_31();
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v28 = v1[8];
  v29 = v0[8];
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = v0[8];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A6B4();
    OUTLINED_FUNCTION_30_31();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = v1[9];
  v32 = v0[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    v33 = v0[9];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A90C();
    OUTLINED_FUNCTION_30_31();
    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v34 = v1[10];
  v35 = v0[10];
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v36 = v0[10];

    OUTLINED_FUNCTION_61();
    sub_1D4F2AB64();
    OUTLINED_FUNCTION_30_31();
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v37 = v1[11];
  v38 = v0[11];
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v39 = v0[11];

    OUTLINED_FUNCTION_61();
    sub_1D4F2ADBC();
    OUTLINED_FUNCTION_30_31();
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v40 = v1[12];
  v41 = v0[12];
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    v42 = v0[12];

    OUTLINED_FUNCTION_61();
    sub_1D4F2B014();
    OUTLINED_FUNCTION_30_31();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v43 = v1[13];
  v44 = v0[13];
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    v45 = v0[13];

    OUTLINED_FUNCTION_61();
    sub_1D4F2B26C();
    OUTLINED_FUNCTION_30_31();
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v46 = v1[14];
  v47 = v0[14];
  if (v46)
  {
    if (!v47)
    {
      return 0;
    }

    v48 = v0[14];

    OUTLINED_FUNCTION_61();
    sub_1D4F2B4C4();
    OUTLINED_FUNCTION_30_31();
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v49 = v1[15];
  v50 = v0[15];
  if (v49)
  {
    if (!v50)
    {
      return 0;
    }

    v51 = v0[15];

    OUTLINED_FUNCTION_61();
    sub_1D4F2B71C();
    OUTLINED_FUNCTION_30_31();
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v52 = v1[16];
  v53 = v0[16];
  if (v52)
  {
    if (!v53)
    {
      return 0;
    }

    v54 = v0[16];

    OUTLINED_FUNCTION_61();
    sub_1D4F2B974();
    OUTLINED_FUNCTION_30_31();
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v55 = v1[17];
  v56 = v0[17];
  if (v55)
  {
    if (!v56)
    {
      return 0;
    }

    v57 = v0[17];

    OUTLINED_FUNCTION_61();
    sub_1D4F2BBCC();
    OUTLINED_FUNCTION_30_31();
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v58 = v1[18];
  v59 = v0[18];
  if (v58)
  {
    if (!v59)
    {
      return 0;
    }

    v60 = v0[18];

    OUTLINED_FUNCTION_61();
    sub_1D4F2BE24();
    OUTLINED_FUNCTION_30_31();
    if ((v58 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v61 = v1[19];
  v62 = v0[19];
  if (v61)
  {
    if (!v62)
    {
      return 0;
    }

    v63 = v0[19];

    OUTLINED_FUNCTION_61();
    sub_1D4F293F4();
    OUTLINED_FUNCTION_30_31();
    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v64 = v1[20];
  v65 = v0[20];
  if (v64)
  {
    if (!v65)
    {
      return 0;
    }

    v66 = v0[20];

    OUTLINED_FUNCTION_61();
    sub_1D4F2964C();
    OUTLINED_FUNCTION_30_31();
    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  v67 = v1[21];
  v68 = v0[21];
  if (v67)
  {
    if (!v68)
    {
      return 0;
    }

    v69 = v0[21];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A6B4();
    OUTLINED_FUNCTION_30_31();
    if ((v67 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v70 = v1[22];
  v71 = v0[22];
  if (v70)
  {
    if (!v71)
    {
      return 0;
    }

    v72 = v0[22];

    OUTLINED_FUNCTION_61();
    sub_1D4F2A90C();
    OUTLINED_FUNCTION_30_31();
    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v73 = v0[23];
  if (v1[23])
  {
    if (v73)
    {

      sub_1D4F2B014();
      v75 = v74;

      if (v75)
      {
        return 1;
      }
    }
  }

  else if (!v73)
  {
    return 1;
  }

  return 0;
}

void sub_1D51534F4()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B18, &qword_1D563B248);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D51563D8();
  sub_1D56163D8();
  v23 = *v2;
  v22 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A80, &unk_1D563B118);
  sub_1D5157A20();
  OUTLINED_FUNCTION_12_52();
  OUTLINED_FUNCTION_29_32();
  if (!v1)
  {
    v21[6] = v14;
    v24 = v2[1];
    v22 = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A88, &unk_1D563B128);
    v16 = sub_1D5157B94();
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v21[4] = v16;
    v21[5] = v15;
    v25 = v2[2];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A90, &unk_1D563B138);
    sub_1D5157C20();
    OUTLINED_FUNCTION_20_3();
    v26 = v2[3];
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A98, &unk_1D563B148);
    sub_1D5157D94();
    OUTLINED_FUNCTION_20_3();
    v27 = v2[4];
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA0, &unk_1D563B158);
    sub_1D5157F08();
    OUTLINED_FUNCTION_20_3();
    v28 = v2[5];
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA8, &unk_1D563B168);
    sub_1D515807C();
    OUTLINED_FUNCTION_20_3();
    v29 = v2[6];
    v22 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB0, &unk_1D563B178);
    sub_1D51581F0();
    OUTLINED_FUNCTION_20_3();
    v30 = v2[7];
    v22 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB8, &unk_1D563B188);
    sub_1D515827C();
    OUTLINED_FUNCTION_20_3();
    v31 = v2[8];
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC0, &unk_1D563B198);
    sub_1D51583F0();
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v32 = v2[9];
    v22 = 9;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC8, &unk_1D563B1A8);
    sub_1D5158564();
    OUTLINED_FUNCTION_11_62();
    v21[2] = v18;
    v21[3] = v17;
    OUTLINED_FUNCTION_29_32();
    v33 = v2[10];
    v22 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD0, &unk_1D563B1B8);
    sub_1D51585F0();
    OUTLINED_FUNCTION_20_3();
    v34 = v2[12];
    v22 = 11;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD8, &unk_1D563B1C8);
    sub_1D5158764();
    OUTLINED_FUNCTION_11_62();
    v21[0] = v20;
    v21[1] = v19;
    OUTLINED_FUNCTION_29_32();
    v35 = v2[11];
    v22 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE0, &unk_1D563B1D8);
    sub_1D51588D8();
    OUTLINED_FUNCTION_20_3();
    v36 = v2[13];
    v22 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE8, &unk_1D563B1E8);
    sub_1D5158A4C();
    OUTLINED_FUNCTION_20_3();
    v37 = v2[14];
    v22 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF0, &unk_1D563B1F8);
    sub_1D5158BC0();
    OUTLINED_FUNCTION_20_3();
    v38 = v2[15];
    v22 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF8, &unk_1D563B208);
    sub_1D5158C4C();
    OUTLINED_FUNCTION_20_3();
    v39 = v2[16];
    v22 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B00, &unk_1D563B218);
    sub_1D5158CD8();
    OUTLINED_FUNCTION_20_3();
    v40 = v2[17];
    v22 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B08, &qword_1D563B228);
    sub_1D5158D64();
    OUTLINED_FUNCTION_20_3();
    v41 = v2[18];
    v22 = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B10, &unk_1D563B238);
    sub_1D5158ED8();
    OUTLINED_FUNCTION_20_3();
    v42 = v2[19];
    v22 = 19;
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v43 = v2[20];
    v22 = 20;
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v44 = v2[21];
    v22 = 21;
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v45 = v2[22];
    v22 = 22;
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
    v46 = v2[23];
    v22 = 23;
    OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_26();
}

void sub_1D5153B24()
{
  if (*v0)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F35130();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[1])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34F18();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[2])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34D00();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34AE8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[4])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F348D0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[5])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F346B8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[6])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F344A0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[7])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34288();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[8])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34070();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[9])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33E58();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[10])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33C40();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[11])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33A28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[12])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33810();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[13])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F335F8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[14])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F333E0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[15])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F331C8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[16])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32FB0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[17])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32D98();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[18])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32B80();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[19])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F35130();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[20])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34F18();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[21])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34070();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[22])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33E58();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[23])
  {
    sub_1D56162F8();

    sub_1D4F33810();
  }

  else
  {
    sub_1D56162F8();
  }
}