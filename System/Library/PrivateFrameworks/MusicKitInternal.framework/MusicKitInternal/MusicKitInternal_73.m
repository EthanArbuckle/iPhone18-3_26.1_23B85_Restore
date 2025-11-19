unint64_t sub_1D54D6DA4()
{
  result = qword_1EC7F7578;
  if (!qword_1EC7F7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7578);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformRecordLabel()
{
  result = qword_1EDD55618;
  if (!qword_1EDD55618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D54D6E78()
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v2 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
        if (v3 <= 0x3F)
        {
          sub_1D4F18AF4();
          if (v4 <= 0x3F)
          {
            sub_1D52A3F24(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
            if (v5 <= 0x3F)
            {
              sub_1D52A3F24(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
              if (v6 <= 0x3F)
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

BOOL sub_1D54D705C(uint64_t a1, uint64_t a2)
{
  v152 = a2;
  v141 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v141);
  v137 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v135 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v136 = v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v139);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v140 = v17;
  v144 = type metadata accessor for StorePlatformUber();
  v18 = OUTLINED_FUNCTION_14(v144);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v138 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v142 = v26;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v143);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v145 = v30;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v150);
  v148 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v146 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v147 = v40;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14(v149);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v135 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v135 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_71_1();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v135 - v63;
  v65 = *(v62 + 56);
  v151 = a1;
  sub_1D4F1C460(a1, &v135 - v63, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F1C460(v152, &v64[v65], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v64, 1, v46);
  if (v66)
  {
    OUTLINED_FUNCTION_57(&v64[v65], 1, v46);
    if (v66)
    {
      sub_1D4E50004(v64, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_12;
    }

LABEL_9:
    v67 = &qword_1EC7EC330;
    v68 = &qword_1D56222C0;
LABEL_10:
    v69 = v64;
LABEL_21:
    sub_1D4E50004(v69, v67, v68);
    return 0;
  }

  sub_1D4F1C460(v64, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v64[v65], 1, v46);
  if (v66)
  {
    (*(v48 + 8))(v2, v46);
    goto LABEL_9;
  }

  (*(v48 + 32))(v53, &v64[v65], v46);
  sub_1D54D9358(&qword_1EC7EBEB8);
  OUTLINED_FUNCTION_85();
  v70 = sub_1D5614D18();
  v71 = *(v48 + 8);
  v71(v53, v46);
  v71(v2, v46);
  sub_1D4E50004(v64, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v72 = type metadata accessor for StorePlatformRecordLabel();
  v73 = v72[5];
  v74 = *(v149 + 48);
  v75 = v151;
  sub_1D4F1C460(v151 + v73, v45, &qword_1EC7EC978, &unk_1D56222A0);
  v76 = v152;
  sub_1D4F1C460(v152 + v73, &v45[v74], &qword_1EC7EC978, &unk_1D56222A0);
  v77 = v150;
  OUTLINED_FUNCTION_57(v45, 1, v150);
  if (v66)
  {
    OUTLINED_FUNCTION_57(&v45[v74], 1, v77);
    if (v66)
    {
      sub_1D4E50004(v45, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_25;
    }

LABEL_20:
    v67 = &qword_1EC7EC980;
    v68 = &qword_1D5628710;
    v69 = v45;
    goto LABEL_21;
  }

  v78 = v147;
  sub_1D4F1C460(v45, v147, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(&v45[v74], 1, v77);
  if (v79)
  {
    (*(v148 + 8))(v78, v77);
    goto LABEL_20;
  }

  v81 = v148;
  (*(v148 + 32))(v146, &v45[v74], v77);
  sub_1D54D93D8(&qword_1EC7EC998);
  v82 = sub_1D5614D18();
  v83 = *(v81 + 8);
  v84 = OUTLINED_FUNCTION_85();
  v83(v84);
  (v83)(v78, v77);
  sub_1D4E50004(v45, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v85 = v72[6];
  v86 = *(v76 + v85);
  if (*(v75 + v85))
  {
    if (!v86)
    {
      return 0;
    }

    v87 = *(v76 + v85);

    sub_1D4F28F1C();
    v89 = v88;

    if ((v89 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v90 = v72[7];
  v91 = *(v76 + v90);
  if (*(v75 + v90))
  {
    if (!v91)
    {
      return 0;
    }

    v92 = *(v76 + v90);

    sub_1D4F29174();
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

  v95 = v72[8];
  v96 = *(v75 + v95);
  v97 = *(v75 + v95 + 8);
  v98 = (v76 + v95);
  v99 = v96 == *v98 && v97 == v98[1];
  if (!v99 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v100 = v72[9];
  v101 = (v75 + v100);
  v102 = *(v75 + v100 + 8);
  v103 = (v76 + v100);
  v104 = v103[1];
  if (v102)
  {
    if (!v104)
    {
      return 0;
    }

    v105 = *v101 == *v103 && v102 == v104;
    if (!v105 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v106 = v72[10];
  v107 = *(v143 + 48);
  v108 = v145;
  sub_1D4F1C460(v75 + v106, v145, &qword_1EC7EFBD0, &qword_1D5634650);
  v109 = v76 + v106;
  v110 = v108;
  sub_1D4F1C460(v109, v108 + v107, &qword_1EC7EFBD0, &qword_1D5634650);
  v111 = v144;
  OUTLINED_FUNCTION_57(v108, 1, v144);
  if (v66)
  {
    OUTLINED_FUNCTION_57(v108 + v107, 1, v111);
    if (v66)
    {
      sub_1D4E50004(v108, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_59;
    }

LABEL_57:
    v67 = &qword_1EC7EFDD8;
    v68 = &unk_1D5639570;
    v69 = v110;
    goto LABEL_21;
  }

  v112 = v108;
  v113 = v142;
  sub_1D4F1C460(v112, v142, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v110 + v107, 1, v111);
  if (v114)
  {
    OUTLINED_FUNCTION_8_130();
    sub_1D54D9300(v113, v115);
    goto LABEL_57;
  }

  v116 = v110 + v107;
  v117 = v138;
  sub_1D5119188(v116, v138);
  v118 = OUTLINED_FUNCTION_85();
  v120 = sub_1D54D5E40(v118, v119);
  sub_1D54D9300(v117, type metadata accessor for StorePlatformUber);
  sub_1D54D9300(v113, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v110, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v120)
  {
    return 0;
  }

LABEL_59:
  v121 = v72[11];
  v122 = *(v139 + 48);
  v123 = v75 + v121;
  v124 = v140;
  sub_1D4F1C460(v123, v140, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v125 = v76 + v121;
  v64 = v124;
  sub_1D4F1C460(v125, v124 + v122, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v126 = v141;
  OUTLINED_FUNCTION_57(v124, 1, v141);
  if (v66)
  {
    OUTLINED_FUNCTION_57(v124 + v122, 1, v126);
    if (v66)
    {
      sub_1D4E50004(v124, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_67;
  }

  v127 = v136;
  sub_1D4F1C460(v124, v136, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v124 + v122, 1, v126);
  if (v128)
  {
    (*(v137 + 8))(v127, v126);
LABEL_67:
    v67 = &qword_1EC7E9FB0;
    v68 = &qword_1D562C590;
    goto LABEL_10;
  }

  v129 = v137;
  v130 = &v64[v122];
  v131 = v135;
  (*(v137 + 32))(v135, v130, v126);
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v132);
  OUTLINED_FUNCTION_85();
  v133 = sub_1D5614D18();
  v134 = *(v129 + 8);
  v134(v131, v126);
  v134(v127, v126);
  sub_1D4E50004(v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v133 & 1) != 0;
}

uint64_t sub_1D54D7B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 25705 && a2 == 0xE200000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1919246965 && a2 == 0xE400000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7107189 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

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

unint64_t sub_1D54D7E28(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 1919246965;
      break;
    case 7:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54D7F00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7598, &qword_1D5669FD8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54D9248();
  sub_1D56163D8();
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_4_3();
  if (!v2)
  {
    v14 = type metadata accessor for StorePlatformRecordLabel();
    v15 = v14[5];
    LOBYTE(v28) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_4_3();
    v28 = *(v3 + v14[6]);
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_4_3();
    v28 = *(v3 + v14[7]);
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D514057C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_4_3();
    v16 = (v3 + v14[8]);
    v18 = *v16;
    v17 = v16[1];
    v28 = v18;
    v29 = v17;
    v30 = 4;
    sub_1D4F89BA0();
    sub_1D56160C8();
    v19 = (v3 + v14[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v28) = 5;
    sub_1D5616028();
    v22 = v14[10];
    LOBYTE(v28) = 6;
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_9_121();
    sub_1D54D94A4(v23);
    OUTLINED_FUNCTION_4_3();
    v24 = v14[11];
    LOBYTE(v28) = 7;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_245();
    sub_1D54D94A4(v25);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D54D82AC()
{
  v2 = v0;
  v91 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v91);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v84 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v90 = v12;
  v88 = type metadata accessor for StorePlatformUber();
  v13 = OUTLINED_FUNCTION_14(v88);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v89 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v86 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v22);
  v82 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v81 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_71_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v83 = &v80 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  sub_1D4F1C460(v0, &v80 - v46, &qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v47, v48, v32);
  v87 = v34;
  if (v67)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_22_50();
    v50(v49);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D54D9358(v51);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v34 + 8))(v39, v32);
  }

  v52 = type metadata accessor for StorePlatformRecordLabel();
  sub_1D4F1C460(v0 + v52[5], v1, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v1, 1, v22);
  if (v67)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v54 = v81;
    v53 = v82;
    (*(v82 + 32))(v81, v1, v22);
    OUTLINED_FUNCTION_27();
    sub_1D54D93D8(&qword_1EC7ECA28);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v53 + 8))(v54, v22);
  }

  if (*(v0 + v52[6]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v52[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v55 = (v0 + v52[8]);
  v56 = *v55;
  v57 = v55[1];
  sub_1D5614E28();
  v58 = (v0 + v52[9]);
  if (v58[1])
  {
    v59 = *v58;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v60 = v89;
  v61 = v86;
  v62 = v87;
  sub_1D4F1C460(v2 + v52[10], v86, &qword_1EC7EFBD0, &qword_1D5634650);
  v63 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v63, v64, v88);
  if (v67)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v61, v60);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v60, v83, &qword_1EC7EB5B8, &unk_1D56206A0);
    v65 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v65, v66, v32);
    if (v67)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v68 = OUTLINED_FUNCTION_22_50();
      v69(v68);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_8();
      sub_1D54D9358(v70);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v62 + 8))(v39, v32);
    }

    OUTLINED_FUNCTION_8_130();
    sub_1D54D9300(v60, v71);
  }

  v72 = v90;
  sub_1D4F1C460(v2 + v52[11], v90, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v73 = OUTLINED_FUNCTION_35_1();
  v74 = v91;
  OUTLINED_FUNCTION_57(v73, v75, v91);
  if (v67)
  {
    return OUTLINED_FUNCTION_36();
  }

  v77 = v84;
  v76 = v85;
  (*(v85 + 32))(v84, v72, v74);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v78);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v76 + 8))(v77, v74);
}

uint64_t sub_1D54D895C()
{
  sub_1D56162D8();
  sub_1D54D82AC();
  return sub_1D5616328();
}

uint64_t sub_1D54D899C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v52 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7588, &unk_1D5669FC8);
  OUTLINED_FUNCTION_4(v53);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - v28;
  v57 = type metadata accessor for StorePlatformRecordLabel();
  v30 = OUTLINED_FUNCTION_14(v57);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v34 = v33;
  v36 = a1[3];
  v35 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1D54D9248();
  v54 = v29;
  v37 = v55;
  sub_1D5616398();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v58) = 0;
  sub_1D4F886BC();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_14_92();
  sub_1D4FD23EC(v2, v34, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  LOBYTE(v58) = 1;
  sub_1D4F888C0();
  OUTLINED_FUNCTION_31_1();
  sub_1D5615F78();
  v38 = v57;
  sub_1D4FD23EC(v20, v34 + v57[5], &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v60 = 2;
  sub_1D50C44B0(&qword_1EDD528F8);
  OUTLINED_FUNCTION_15_90();
  *(v34 + v38[6]) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v60 = 3;
  sub_1D514057C(&qword_1EDD52908);
  OUTLINED_FUNCTION_15_90();
  *(v34 + v38[7]) = v58;
  v60 = 4;
  sub_1D4F89C9C();
  sub_1D5615FD8();
  v39 = v59;
  v40 = (v34 + v38[8]);
  *v40 = v58;
  v40[1] = v39;
  LOBYTE(v58) = 5;
  v41 = sub_1D5615F38();
  v42 = (v34 + v38[9]);
  *v42 = v41;
  v42[1] = v43;
  type metadata accessor for StorePlatformUber();
  LOBYTE(v58) = 6;
  OUTLINED_FUNCTION_9_121();
  sub_1D54D94A4(v44);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_14_92();
  sub_1D4FD23EC(v14, v34 + v38[10], &qword_1EC7EFBD0, &qword_1D5634650);
  sub_1D560C0A8();
  LOBYTE(v58) = 7;
  OUTLINED_FUNCTION_0_245();
  sub_1D54D94A4(v45);
  OUTLINED_FUNCTION_31_1();
  v46 = v52;
  OUTLINED_FUNCTION_14_92();
  v47 = OUTLINED_FUNCTION_6_145();
  v48(v47);
  sub_1D4FD23EC(v46, v34 + v38[11], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D54D929C(v34, v51);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_1D54D9300(v34, type metadata accessor for StorePlatformRecordLabel);
}

uint64_t sub_1D54D9130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54D7B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54D9158(uint64_t a1)
{
  v2 = sub_1D54D9248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54D9194(uint64_t a1)
{
  v2 = sub_1D54D9248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54D920C()
{
  sub_1D56162D8();
  sub_1D54D82AC();
  return sub_1D5616328();
}

unint64_t sub_1D54D9248()
{
  result = qword_1EC7F7590;
  if (!qword_1EC7F7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7590);
  }

  return result;
}

uint64_t sub_1D54D929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformRecordLabel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54D9300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D54D9358(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D54D94A4(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D54D93D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D54D94A4(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D54D9458()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C6C0);
  __swift_project_value_buffer(v0, qword_1EC87C6C0);
  return sub_1D560FE58();
}

unint64_t sub_1D54D94A4(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformRecordLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54D95C8()
{
  result = qword_1EC7F75A0;
  if (!qword_1EC7F75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75A0);
  }

  return result;
}

unint64_t sub_1D54D9620()
{
  result = qword_1EC7F75A8;
  if (!qword_1EC7F75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75A8);
  }

  return result;
}

unint64_t sub_1D54D9678()
{
  result = qword_1EC7F75B0;
  if (!qword_1EC7F75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75B0);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformPlaylist()
{
  result = qword_1EDD55990;
  if (!qword_1EDD55990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54D974C()
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EC7EFD68, &qword_1EC7EFD70, ":Q\a");
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7F75B8, &qword_1EC7F75C0, qword_1D566A128);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_1D4E6D600(319, &qword_1EC7F02B8, &qword_1EC7F02C0, qword_1D565CE10);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_1D54D9A90(319, &qword_1EDD53188, MEMORY[0x1E6975E48]);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
        if (v11 > 0x3F)
        {
          return v7;
        }

        sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
        if (v12 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
          v1 = v13;
          if (v14 <= 0x3F)
          {
            sub_1D4E518A0(319, &qword_1EDD5F550);
            v1 = v15;
            if (v16 <= 0x3F)
            {
              sub_1D54D9A90(319, &qword_1EDD53328, MEMORY[0x1E6975CB0]);
              v1 = v17;
              if (v18 <= 0x3F)
              {
                sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
                v1 = v19;
                if (v20 <= 0x3F)
                {
                  sub_1D54D9A90(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
                  v1 = v21;
                  if (v22 <= 0x3F)
                  {
                    sub_1D54D9A90(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
                    v1 = v23;
                    if (v24 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v1;
}

void sub_1D54D9A90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D54D9B2C(uint64_t a1, uint64_t a2)
{
  v278 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v278);
  v274 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v14);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v275);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v280 = v18;
  OUTLINED_FUNCTION_70_0();
  v282 = type metadata accessor for StorePlatformUber();
  v19 = OUTLINED_FUNCTION_14(v282);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v277);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v283 = v31;
  OUTLINED_FUNCTION_70_0();
  v288 = sub_1D56104C8();
  v32 = OUTLINED_FUNCTION_4(v288);
  v284 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v285 = v41;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7618, &unk_1D566A228);
  OUTLINED_FUNCTION_14(v286);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v289 = v45;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v293);
  v290 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  v287 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v292 = v55;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v291);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  v294 = v59;
  OUTLINED_FUNCTION_70_0();
  v300 = sub_1D5610978();
  v60 = OUTLINED_FUNCTION_4(v300);
  v297 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  v295 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  v296 = v69;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14(v298);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  v299 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v74);
  v76 = v75;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v272 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v272 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_19_0();
  v93 = *(v92 + 56);
  v301 = a1;
  sub_1D4F1C460(a1, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  v302 = a2;
  sub_1D4F1C460(a2, v2 + v93, &qword_1EC7EB5B8, &unk_1D56206A0);
  v94 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v94, v95, v74);
  if (v96)
  {
    OUTLINED_FUNCTION_57(v2 + v93, 1, v74);
    if (v96)
    {
      sub_1D4E50004(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v97 = &qword_1EC7EC330;
    v98 = &qword_1D56222C0;
    v99 = v2;
    goto LABEL_10;
  }

  sub_1D4F1C460(v2, v87, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v2 + v93, 1, v74);
  if (v96)
  {
    (*(v76 + 8))(v87, v74);
    goto LABEL_9;
  }

  (*(v76 + 32))(v81, v2 + v93, v74);
  sub_1D4F39858();
  v101 = sub_1D5614D18();
  v102 = *(v76 + 8);
  v102(v81, v74);
  v102(v87, v74);
  sub_1D4E50004(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v103 = type metadata accessor for StorePlatformPlaylist();
  v104 = v103[5];
  v106 = v301;
  v105 = v302;
  v107 = *(v302 + v104);
  if (*(v301 + v104))
  {
    if (!v107)
    {
      return 0;
    }

    v108 = *(v302 + v104);

    sub_1D4EF9D14();
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v111 = v103[6];
  OUTLINED_FUNCTION_14_50();
  if (v114)
  {
    if (!v112)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v113);
    v117 = v96 && v115 == v116;
    if (!v117 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v118 = v103[7];
  v119 = *(v105 + v118);
  if (*(v106 + v118))
  {
    if (!v119)
    {
      return 0;
    }

    v120 = *(v105 + v118);

    sub_1D4F2CBDC();
    v122 = v121;

    if ((v122 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v119)
  {
    return 0;
  }

  v123 = v103[8];
  v124 = *(v105 + v123);
  if (*(v106 + v123))
  {
    if (!v124 || (sub_1D4F0B2E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v124)
  {
    return 0;
  }

  v125 = v103[9];
  v126 = v299;
  v127 = *(v298 + 48);
  sub_1D4F1C460(v106 + v125, v299, &qword_1EC7EAC98, &unk_1D561DA80);
  sub_1D4F1C460(v105 + v125, v126 + v127, &qword_1EC7EAC98, &unk_1D561DA80);
  v128 = v300;
  OUTLINED_FUNCTION_57(v126, 1, v300);
  if (v96)
  {
    OUTLINED_FUNCTION_57(v126 + v127, 1, v128);
    if (v96)
    {
      sub_1D4E50004(v126, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_48;
    }

LABEL_46:
    v97 = &qword_1EC7EF648;
    v98 = &unk_1D5632470;
    v99 = v126;
    goto LABEL_10;
  }

  v129 = v296;
  sub_1D4F1C460(v126, v296, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_57(v126 + v127, 1, v128);
  if (v130)
  {
    (*(v297 + 8))(v129, v128);
    goto LABEL_46;
  }

  v131 = v297;
  v132 = v126 + v127;
  v133 = v295;
  (*(v297 + 32))(v295, v132, v128);
  OUTLINED_FUNCTION_6_146();
  sub_1D54DD574(v134);
  v135 = sub_1D5614D18();
  v136 = *(v131 + 8);
  v136(v133, v128);
  v136(v129, v128);
  sub_1D4E50004(v126, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v135 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v137 = v103[10];
  v138 = *(v105 + v137);
  if (*(v106 + v137))
  {
    if (!v138)
    {
      return 0;
    }

    v139 = *(v105 + v137);

    sub_1D4F28F1C();
    v141 = v140;

    if ((v141 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v138)
  {
    return 0;
  }

  v142 = v103[11];
  v143 = *(v105 + v142);
  if (*(v106 + v142))
  {
    if (!v143)
    {
      return 0;
    }

    v144 = *(v105 + v142);

    sub_1D4F29174();
    v146 = v145;

    if ((v146 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v143)
  {
    return 0;
  }

  v147 = v103[12];
  OUTLINED_FUNCTION_14_50();
  if (v150)
  {
    if (!v148)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v149);
    v153 = v96 && v151 == v152;
    if (!v153 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v148)
  {
    return 0;
  }

  v154 = v103[13];
  OUTLINED_FUNCTION_14_50();
  if (v157)
  {
    if (!v155)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v156);
    v160 = v96 && v158 == v159;
    if (!v160 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  v161 = v103[14];
  v162 = *(v291 + 48);
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v163, v164, v165, v166);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v167, v168, v169, v170);
  v171 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v171, v172, v293);
  if (v96)
  {
    v173 = OUTLINED_FUNCTION_57_2(v294);
    OUTLINED_FUNCTION_57(v173, v174, v175);
    if (v96)
    {
      sub_1D4E50004(v294, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_86;
    }

LABEL_84:
    v97 = &qword_1EC7EC968;
    v98 = &unk_1D5622290;
    v99 = v294;
    goto LABEL_10;
  }

  v176 = v294;
  sub_1D4F1C460(v294, v292, &qword_1EC7EC960, &unk_1D56334C0);
  v177 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v177, v178, v293);
  if (v179)
  {
    (*(v290 + 8))(v292, v293);
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_81();
  v180 = v294;
  v181 = v294 + v162;
  v182 = v293;
  v183(v287, v181, v293);
  sub_1D4F7BF60();
  v184 = v292;
  OUTLINED_FUNCTION_157_0();
  v185 = OUTLINED_FUNCTION_51();
  (unk_1D56334C0)(v185);
  (unk_1D56334C0)(v184, v182);
  sub_1D4E50004(v180, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v176 & 1) == 0)
  {
    return 0;
  }

LABEL_86:
  v186 = v103[15];
  v187 = *(v301 + v186);
  v188 = *(v301 + v186 + 8);
  v189 = (v302 + v186);
  v190 = v187 == *v189 && v188 == v189[1];
  if (!v190 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v191 = v103[16];
  v192 = *(v301 + v191);
  v193 = *(v302 + v191);
  if (v192 == 2)
  {
    if (v193 != 2)
    {
      return 0;
    }

LABEL_96:
    v194 = v103[17];
    v195 = *(v286 + 48);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F1C460(v196, v197, v198, v199);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F1C460(v200, v201, v202, v203);
    v204 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v204, v205, v288);
    if (v96)
    {
      v206 = OUTLINED_FUNCTION_57_2(v289);
      OUTLINED_FUNCTION_57(v206, v207, v208);
      if (v96)
      {
        sub_1D4E50004(v289, &qword_1EC7EFC30, &qword_1D56346D8);
LABEL_106:
        v220 = v103[18];
        v221 = *(v301 + v220);
        v222 = *(v302 + v220);
        if (v221)
        {
          if (!v222 || (sub_1D4EF81E0(v221, v222) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v222)
        {
          return 0;
        }

        v223 = v103[19];
        v224 = *(v277 + 48);
        OUTLINED_FUNCTION_97_3();
        OUTLINED_FUNCTION_8_1();
        sub_1D4F1C460(v225, v226, v227, v228);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F1C460(v229, v230, v231, v232);
        v233 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v233, v234, v282);
        if (v96)
        {
          v235 = OUTLINED_FUNCTION_57_2(v283);
          OUTLINED_FUNCTION_57(v235, v236, v237);
          if (v96)
          {
            sub_1D4E50004(v283, &qword_1EC7EFBD0, &qword_1D5634650);
            goto LABEL_121;
          }
        }

        else
        {
          sub_1D4F1C460(v283, v279, &qword_1EC7EFBD0, &qword_1D5634650);
          v238 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_57(v238, v239, v282);
          if (!v240)
          {
            v242 = v283;
            v243 = v283 + v224;
            v244 = v273;
            sub_1D5119188(v243, v273);
            v245 = v279;
            v246 = sub_1D54D5E40(v279, v244);
            sub_1D54DD4D0(v244, type metadata accessor for StorePlatformUber);
            sub_1D54DD4D0(v245, type metadata accessor for StorePlatformUber);
            sub_1D4E50004(v242, &qword_1EC7EFBD0, &qword_1D5634650);
            if (!v246)
            {
              return 0;
            }

LABEL_121:
            v247 = v103[20];
            v248 = *(v275 + 48);
            OUTLINED_FUNCTION_97_3();
            OUTLINED_FUNCTION_8_1();
            sub_1D4F1C460(v249, v250, v251, v252);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F1C460(v253, v254, v255, v256);
            v257 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_57(v257, v258, v278);
            if (v96)
            {
              v259 = OUTLINED_FUNCTION_57_2(v280);
              OUTLINED_FUNCTION_57(v259, v260, v278);
              if (!v96)
              {
                goto LABEL_128;
              }

              sub_1D4E50004(v280, &unk_1EC7E9CA8, &unk_1D561D1D0);
            }

            else
            {
              v261 = v280;
              sub_1D4F1C460(v280, v276, &unk_1EC7E9CA8, &unk_1D561D1D0);
              v262 = OUTLINED_FUNCTION_72_1();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v262, v263, v278);
              if (EnumTagSinglePayload == 1)
              {
                (*(v274 + 8))(v276, v278);
LABEL_128:
                v97 = &qword_1EC7E9FB0;
                v98 = &qword_1D562C590;
                v99 = v280;
                goto LABEL_10;
              }

              OUTLINED_FUNCTION_81();
              v265 = v280;
              v266 = v280 + v248;
              v267 = v278;
              v268(v272, v266, v278);
              OUTLINED_FUNCTION_5_141();
              sub_1D54DD574(v269);
              v270 = v276;
              OUTLINED_FUNCTION_157_0();
              v271 = OUTLINED_FUNCTION_51();
              (unk_1D561D1D0)(v271);
              (unk_1D561D1D0)(v270, v267);
              sub_1D4E50004(v265, &unk_1EC7E9CA8, &unk_1D561D1D0);
              if ((v261 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          OUTLINED_FUNCTION_24_69();
          sub_1D54DD4D0(v279, v241);
        }

        v97 = &qword_1EC7EFDD8;
        v98 = &unk_1D5639570;
        v99 = v283;
LABEL_10:
        sub_1D4E50004(v99, v97, v98);
        return 0;
      }
    }

    else
    {
      v209 = v289;
      sub_1D4F1C460(v289, v285, &qword_1EC7EFC30, &qword_1D56346D8);
      v210 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57(v210, v211, v288);
      if (!v212)
      {
        OUTLINED_FUNCTION_81();
        v213 = v289;
        v214 = v289 + v195;
        v215 = v288;
        v216(v281, v214, v288);
        OUTLINED_FUNCTION_7_133();
        sub_1D54DD574(v217);
        v218 = v285;
        OUTLINED_FUNCTION_157_0();
        v219 = OUTLINED_FUNCTION_51();
        (qword_1D56346D8)(v219);
        (qword_1D56346D8)(v218, v215);
        sub_1D4E50004(v213, &qword_1EC7EFC30, &qword_1D56346D8);
        if ((v209 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
      }

      (*(v284 + 8))(v285, v288);
    }

    v97 = &qword_1EC7F7618;
    v98 = &unk_1D566A228;
    v99 = v289;
    goto LABEL_10;
  }

  result = 0;
  if (v193 != 2 && ((v193 ^ v192) & 1) == 0)
  {
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_1D54DAC6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E726F7461727563 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572646C696863 && a2 == 0xEB00000000736449;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001D568F290 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 25705 && a2 == 0xE200000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x74726168437369 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E694B6B63617274 && a2 == 0xEA00000000007364;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1919246965 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1D5616168();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
        }
      }
    }
  }
}

unint64_t sub_1D54DB198(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6172546F69647561;
      break;
    case 2:
      result = 0x4E726F7461727563;
      break;
    case 3:
      result = 0x6E6572646C696863;
      break;
    case 4:
      result = 0x6E6572646C696863;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x6F4E73656E757469;
      break;
    case 11:
      result = 25705;
      break;
    case 12:
      result = 0x74726168437369;
      break;
    case 13:
      result = 0x7473696C79616C70;
      break;
    case 14:
      result = 0x6E694B6B63617274;
      break;
    case 15:
      result = 1919246965;
      break;
    case 16:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54DB370(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75F8, &qword_1D566A220);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54DD2A0();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_21_0();
  if (!v2)
  {
    v13 = type metadata accessor for StorePlatformPlaylist();
    OUTLINED_FUNCTION_36_59(v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    sub_1D50F86AC();
    OUTLINED_FUNCTION_11_1();
    v14 = (v4 + v13[6]);
    v15 = *v14;
    v16 = v14[1];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_36_59(v13[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75C0, qword_1D566A128);
    sub_1D54DD414();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_36_59(v13[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    sub_1D53B2C78(&qword_1EC7F0310);
    OUTLINED_FUNCTION_11_1();
    v17 = v13[9];
    OUTLINED_FUNCTION_45_44(5);
    sub_1D5610978();
    OUTLINED_FUNCTION_6_146();
    sub_1D54DD574(v18);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_36_59(v13[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D53B2CEC(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_36_59(v13[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D500E55C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_11_1();
    v19 = (v4 + v13[12]);
    v20 = *v19;
    v21 = v19[1];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v22 = (v4 + v13[13]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v25 = v13[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_21_0();
    v26 = (v4 + v13[15]);
    v35 = *v26;
    v36 = v26[1];
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v27 = *(v4 + v13[16]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v28 = v13[17];
    OUTLINED_FUNCTION_45_44(13);
    sub_1D56104C8();
    OUTLINED_FUNCTION_7_133();
    sub_1D54DD574(v29);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_36_59(v13[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_11_1();
    v30 = v13[19];
    OUTLINED_FUNCTION_45_44(15);
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_23_73();
    sub_1D54DD574(v31);
    OUTLINED_FUNCTION_21_0();
    v32 = v13[20];
    OUTLINED_FUNCTION_45_44(16);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_5_141();
    sub_1D54DD574(v33);
    OUTLINED_FUNCTION_21_0();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D54DB938(uint64_t a1)
{
  v2 = v1;
  v148 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v148);
  v137 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v136 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v147 = v13;
  OUTLINED_FUNCTION_70_0();
  v145 = type metadata accessor for StorePlatformUber();
  v14 = OUTLINED_FUNCTION_14(v145);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v146 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v144 = v22;
  OUTLINED_FUNCTION_70_0();
  v143 = sub_1D56104C8();
  v23 = OUTLINED_FUNCTION_4(v143);
  v135 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  v134 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v140 = v32;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v139);
  v132 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v131 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v138 = v42;
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D5610978();
  v44 = OUTLINED_FUNCTION_4(v43);
  v130 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v129 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v128 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v55);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v128 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v64 = OUTLINED_FUNCTION_22(v63);
  v66 = *(v65 + 64);
  v67 = MEMORY[0x1EEE9AC00](v64);
  v133 = &v128 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  sub_1D4F1C460(v1, &v128 - v69, &qword_1EC7EB5B8, &unk_1D56206A0);
  v70 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v70, v71, v55);
  v141 = v62;
  v142 = v57;
  if (v116)
  {
    v74 = v55;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v72 = OUTLINED_FUNCTION_26_73(v57);
    v73(v72);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    v74 = v55;
    (*(v57 + 8))(v62, v55);
  }

  v75 = type metadata accessor for StorePlatformPlaylist();
  if (*(v1 + v75[5]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F08560();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v76 = (v1 + v75[6]);
  if (v76[1])
  {
    v77 = *v76;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v75[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F36098();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v78 = *(v1 + v75[8]);
  if (v78)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0B2F0(a1, v78);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F1C460(v1 + v75[9], v54, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_57(v54, 1, v43);
  if (v116)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v80 = v129;
    v79 = v130;
    OUTLINED_FUNCTION_81();
    v81(v80, v54, v43);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_146();
    sub_1D54DD574(v82);
    sub_1D5614CB8();
    (*(v79 + 8))(v80, v43);
  }

  if (*(v1 + v75[10]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v75[11]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v83 = (v1 + v75[12]);
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

  v85 = (v1 + v75[13]);
  if (v85[1])
  {
    v86 = *v85;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v87 = v146;
  sub_1D4F1C460(v1 + v75[14], v138, &qword_1EC7EC960, &unk_1D56334C0);
  v88 = OUTLINED_FUNCTION_35_1();
  v89 = v139;
  OUTLINED_FUNCTION_57(v88, v90, v139);
  if (v116)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v92 = v131;
    v91 = v132;
    v93 = OUTLINED_FUNCTION_26_73(v132);
    v94(v93);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    (*(v91 + 8))(v92, v89);
  }

  v95 = (v1 + v75[15]);
  v96 = *v95;
  v97 = v95[1];
  sub_1D5614E28();
  if (*(v1 + v75[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F1C460(v1 + v75[17], v140, &qword_1EC7EFC30, &qword_1D56346D8);
  v98 = OUTLINED_FUNCTION_35_1();
  v99 = v143;
  OUTLINED_FUNCTION_57(v98, v100, v143);
  if (v116)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v102 = v134;
    v101 = v135;
    v103 = OUTLINED_FUNCTION_26_73(v135);
    v104(v103);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_7_133();
    sub_1D54DD574(v105);
    OUTLINED_FUNCTION_28_65();
    sub_1D5614CB8();
    (*(v101 + 8))(v102, v99);
  }

  v106 = v74;
  v108 = v141;
  v107 = v142;
  v109 = *(v1 + v75[18]);
  if (v109)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928(a1, v109);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v110 = v148;
  v111 = v144;
  sub_1D4F1C460(v2 + v75[19], v144, &qword_1EC7EFBD0, &qword_1D5634650);
  v112 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v112, v113, v145);
  if (v116)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v111, v87);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v87, v133, &qword_1EC7EB5B8, &unk_1D56206A0);
    v114 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v114, v115, v106);
    if (v116)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v117 = OUTLINED_FUNCTION_26_73(v107);
      v118(v117);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      OUTLINED_FUNCTION_28_65();
      sub_1D5614CB8();
      (*(v107 + 8))(v108, v106);
    }

    OUTLINED_FUNCTION_24_69();
    sub_1D54DD4D0(v87, v119);
  }

  v120 = v147;
  sub_1D4F1C460(v2 + v75[20], v147, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v121 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v121, v122, v110);
  if (v116)
  {
    return OUTLINED_FUNCTION_36();
  }

  v124 = v136;
  v123 = v137;
  OUTLINED_FUNCTION_81();
  v125(v124, v120, v110);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_5_141();
  sub_1D54DD574(v126);
  sub_1D5614CB8();
  return (*(v123 + 8))(v124, v110);
}

uint64_t sub_1D54DC32C()
{
  sub_1D56162D8();
  sub_1D54DB938(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54DC36C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v111 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v110 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC30, &qword_1D56346D8);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v107 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v107 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v107 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v107 - v36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75D0, &unk_1D566A210);
  OUTLINED_FUNCTION_4(v112);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_19_0();
  v116 = type metadata accessor for StorePlatformPlaylist();
  v43 = OUTLINED_FUNCTION_14(v116);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v118 = v46;
  v47 = a1[3];
  v48 = a1[4];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D54DD2A0();
  v113 = v2;
  v49 = v117;
  sub_1D5616398();
  if (v49)
  {
    v117 = v49;
    v51 = 0;
    LODWORD(v52) = 0;
    LODWORD(v37) = 0;
    LODWORD(v53) = 0;
    v54 = 0;
    v55 = 0;
    LODWORD(v108) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
  }

  else
  {
    v50 = v31;
    v114 = v25;
    v108 = v19;
    v52 = v110;
    v53 = v111;
    v54 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v119) = 0;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_50_37();
    v66 = v118;
    sub_1D4FD23EC(v37, v118, &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
    v121 = 1;
    sub_1D50F8534();
    OUTLINED_FUNCTION_50_37();
    v67 = v116;
    *(v66 + v116[5]) = v119;
    OUTLINED_FUNCTION_30_67(2);
    v68 = sub_1D5615F38();
    v69 = (v66 + v67[6]);
    *v69 = v68;
    v69[1] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F75C0, qword_1D566A128);
    v121 = 3;
    sub_1D54DD2F4();
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v66 + v67[7]) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v121 = 4;
    sub_1D53B2C78(&qword_1EC7F02F0);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v66 + v67[8]) = v119;
    sub_1D5610978();
    LOBYTE(v119) = 5;
    OUTLINED_FUNCTION_6_146();
    sub_1D54DD574(v71);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_13_95();
    sub_1D5615F78();
    sub_1D4FD23EC(v50, v66 + v67[9], &qword_1EC7EAC98, &unk_1D561DA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v121 = 6;
    sub_1D53B2CEC(&qword_1EDD528F8);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v66 + v67[10]) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v121 = 7;
    sub_1D500E55C(&qword_1EDD52908);
    OUTLINED_FUNCTION_10_118();
    sub_1D5615F78();
    *(v118 + v67[11]) = v119;
    OUTLINED_FUNCTION_30_67(8);
    v72 = sub_1D5615F38();
    v117 = 0;
    v73 = (v118 + v67[12]);
    *v73 = v72;
    v73[1] = v74;
    OUTLINED_FUNCTION_30_67(9);
    v75 = sub_1D5615F38();
    v117 = 0;
    v77 = (v118 + v116[13]);
    *v77 = v75;
    v77[1] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(v119) = 10;
    sub_1D4F88A24();
    OUTLINED_FUNCTION_31_1();
    v55 = v113;
    v78 = v117;
    sub_1D5615F78();
    v117 = v78;
    if (v78)
    {
      v79 = OUTLINED_FUNCTION_21_78();
      v80(v79);
      LODWORD(v112) = 0;
      LODWORD(v113) = 0;
      v51 = 1;
      OUTLINED_FUNCTION_0_246();
      LODWORD(v110) = v81;
      LODWORD(v111) = v81;
    }

    else
    {
      sub_1D4FD23EC(v114, v118 + v116[14], &qword_1EC7EC960, &unk_1D56334C0);
      v121 = 11;
      sub_1D4F89C9C();
      v55 = v113;
      v82 = v117;
      sub_1D5615FD8();
      v117 = v82;
      if (!v82)
      {
        v86 = v120;
        v87 = (v118 + v116[15]);
        *v87 = v119;
        v87[1] = v86;
        OUTLINED_FUNCTION_30_67(12);
        v88 = sub_1D5615F48();
        v117 = 0;
        *(v118 + v116[16]) = v88;
        v55 = sub_1D56104C8();
        LOBYTE(v119) = 13;
        OUTLINED_FUNCTION_7_133();
        sub_1D54DD574(v89);
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_13_95();
        v90 = v117;
        sub_1D5615F78();
        LODWORD(v114) = v90 == 0;
        v117 = v90;
        if (v90)
        {
          goto LABEL_42;
        }

        sub_1D4FD23EC(v108, v118 + v116[17], &qword_1EC7EFC30, &qword_1D56346D8);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
        v121 = 14;
        sub_1D4F88BF4(&qword_1EDD52778);
        OUTLINED_FUNCTION_10_118();
        v91 = v117;
        sub_1D5615F78();
        v117 = v91;
        if (v91)
        {
LABEL_42:
          v92 = OUTLINED_FUNCTION_21_78();
          v93(v92);
          v59 = 0;
          LODWORD(v109) = 0;
        }

        else
        {
          *(v118 + v116[18]) = v119;
          v55 = type metadata accessor for StorePlatformUber();
          LOBYTE(v119) = 15;
          OUTLINED_FUNCTION_23_73();
          sub_1D54DD574(v96);
          OUTLINED_FUNCTION_31_1();
          OUTLINED_FUNCTION_13_95();
          v97 = v117;
          sub_1D5615F78();
          v117 = v97;
          if (v97)
          {
            v98 = OUTLINED_FUNCTION_21_78();
            v99(v98);
            LODWORD(v109) = 0;
            v59 = 1;
          }

          else
          {
            sub_1D4FD23EC(v52, v118 + v116[19], &qword_1EC7EFBD0, &qword_1D5634650);
            v55 = sub_1D560C0A8();
            LOBYTE(v119) = 16;
            OUTLINED_FUNCTION_5_141();
            sub_1D54DD574(v100);
            OUTLINED_FUNCTION_31_1();
            OUTLINED_FUNCTION_13_95();
            v101 = v117;
            sub_1D5615F78();
            v117 = v101;
            if (!v101)
            {
              v104 = OUTLINED_FUNCTION_21_78();
              v105(v104);
              v106 = v118;
              sub_1D4FD23EC(v53, v118 + v116[20], &unk_1EC7E9CA8, &unk_1D561D1D0);
              sub_1D54DD3B0(v106, v109);
              __swift_destroy_boxed_opaque_existential_1(v115);
              return sub_1D54DD4D0(v106, type metadata accessor for StorePlatformPlaylist);
            }

            v102 = OUTLINED_FUNCTION_21_78();
            v103(v102);
            v59 = 1;
            LODWORD(v109) = 1;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v115);
        OUTLINED_FUNCTION_0_246();
        OUTLINED_FUNCTION_40_53(v94);
        LODWORD(v113) = v95;
        v56 = v116;
        v57 = v118;
LABEL_6:
        result = sub_1D4E50004(v57, &qword_1EC7EB5B8, &unk_1D56206A0);
        if (v52)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      v83 = OUTLINED_FUNCTION_21_78();
      v84(v83);
      LODWORD(v113) = 0;
      v51 = 1;
      OUTLINED_FUNCTION_0_246();
      OUTLINED_FUNCTION_40_53(v85);
    }
  }

  v56 = v116;
  v57 = v118;
  result = __swift_destroy_boxed_opaque_existential_1(v115);
  if (v51)
  {
    LODWORD(v114) = 0;
    v59 = 0;
    LODWORD(v109) = 0;
    goto LABEL_6;
  }

  LODWORD(v109) = 0;
  v59 = 0;
  LODWORD(v114) = 0;
  if (v52)
  {
LABEL_7:
    v60 = *(v57 + v56[5]);

    if ((v37 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v37)
  {
LABEL_8:
    if (v53)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = OUTLINED_FUNCTION_46_4(v56[6]);
  if (v53)
  {
LABEL_9:
    v61 = *(v57 + v56[7]);

    if ((v54 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v64 = *(v57 + v56[8]);

    goto LABEL_25;
  }

LABEL_23:
  if (v54)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (!v55)
  {
    if (!v108)
    {
      goto LABEL_27;
    }

LABEL_12:
    v62 = *(v57 + v56[11]);

    if (v110)
    {
      goto LABEL_28;
    }

LABEL_13:
    if (!v111)
    {
      goto LABEL_29;
    }

LABEL_14:
    result = OUTLINED_FUNCTION_46_4(v56[13]);
    if (v112)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (!v113)
    {
      goto LABEL_31;
    }

LABEL_16:
    result = OUTLINED_FUNCTION_46_4(v56[15]);
    if (v114)
    {
      goto LABEL_32;
    }

LABEL_17:
    if (!v59)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v65 = *(v57 + v56[10]);

  if (v108)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (!v110)
  {
    goto LABEL_13;
  }

LABEL_28:
  result = OUTLINED_FUNCTION_46_4(v56[12]);
  if (v111)
  {
    goto LABEL_14;
  }

LABEL_29:
  if (!v112)
  {
    goto LABEL_15;
  }

LABEL_30:
  result = sub_1D4E50004(v57 + v56[14], &qword_1EC7EC960, &unk_1D56334C0);
  if (v113)
  {
    goto LABEL_16;
  }

LABEL_31:
  if (!v114)
  {
    goto LABEL_17;
  }

LABEL_32:
  result = sub_1D4E50004(v57 + v56[17], &qword_1EC7EFC30, &qword_1D56346D8);
  if ((v59 & 1) == 0)
  {
LABEL_33:
    if (!v109)
    {
      return result;
    }

    return sub_1D4E50004(v57 + v56[19], &qword_1EC7EFBD0, &qword_1D5634650);
  }

LABEL_18:
  v63 = *(v57 + v56[18]);

  if ((v109 & 1) == 0)
  {
    return result;
  }

  return sub_1D4E50004(v57 + v56[19], &qword_1EC7EFBD0, &qword_1D5634650);
}

uint64_t sub_1D54DD160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54DAC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54DD188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54DB190();
  *a1 = result;
  return result;
}

uint64_t sub_1D54DD1B0(uint64_t a1)
{
  v2 = sub_1D54DD2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54DD1EC(uint64_t a1)
{
  v2 = sub_1D54DD2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54DD264()
{
  sub_1D56162D8();
  sub_1D54DB938(v1);
  return sub_1D5616328();
}

unint64_t sub_1D54DD2A0()
{
  result = qword_1EC7F75D8;
  if (!qword_1EC7F75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75D8);
  }

  return result;
}

unint64_t sub_1D54DD2F4()
{
  result = qword_1EC7F75E0;
  if (!qword_1EC7F75E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F75C0, qword_1D566A128);
    sub_1D54DD574(&unk_1EC7F75E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F75E0);
  }

  return result;
}

uint64_t sub_1D54DD3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformPlaylist();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D54DD414()
{
  result = qword_1EC7F7600;
  if (!qword_1EC7F7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F75C0, qword_1D566A128);
    sub_1D54DD574(&unk_1EC7F7608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7600);
  }

  return result;
}

uint64_t sub_1D54DD4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D54DD528()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C6D8);
  __swift_project_value_buffer(v0, qword_1EC87C6D8);
  return sub_1D5610038();
}

unint64_t sub_1D54DD574(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for StorePlatformPlaylist.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformPlaylist.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54DD720()
{
  result = qword_1EC7F7630;
  if (!qword_1EC7F7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7630);
  }

  return result;
}

unint64_t sub_1D54DD778()
{
  result = qword_1EC7F7638;
  if (!qword_1EC7F7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7638);
  }

  return result;
}

unint64_t sub_1D54DD7D0()
{
  result = qword_1EC7F7640;
  if (!qword_1EC7F7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7640);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_91()
{
  *(v2 - 112) = v0;
  v3 = *(v1 + 8);
  v5 = *(v2 - 152);
  return *(v2 - 144);
}

uint64_t sub_1D54DD85C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v68 = a1;
  v4 = sub_1D560EEA8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v64 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  v69 = sub_1D560D838();
  v16 = OUTLINED_FUNCTION_4(v69);
  v67 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D5613838();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = sub_1D5613D28();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = *(v35 + 16);
  v63[1] = v3;
  v41(v40, v3, v32);
  v42 = (*(v35 + 88))(v40, v32);
  if (v42 == *MEMORY[0x1E6976E18])
  {
    (*(v35 + 96))(v40, v32);
    (*(v26 + 32))(v31, v40, v23);
    sub_1D560EC98();
    sub_1D560FFA8();
    v43 = sub_1D5610088();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    sub_1D560FE48();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
    sub_1D560D4D8();
    sub_1D4E6C9CC(v2, &qword_1EC7EA358, &unk_1D561DF50);
    sub_1D4E6C9CC(v15, &qword_1EC7EA358, &unk_1D561DF50);
    (*(v67 + 8))(v22, v69);
    return (*(v26 + 8))(v31, v23);
  }

  else
  {
    v51 = v67;
    if (v42 == *MEMORY[0x1E6976DF8])
    {
      (*(v35 + 96))(v40, v32);
      v52 = v64;
      v53 = v65;
      v54 = v66;
      (*(v65 + 32))(v64, v40, v66);
      sub_1D560EC98();
      sub_1D560FE38();
      v55 = sub_1D5610088();
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
      sub_1D560FDF8();
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v55);
      sub_1D560D4D8();
      sub_1D4E6C9CC(v2, &qword_1EC7EA358, &unk_1D561DF50);
      sub_1D4E6C9CC(v15, &qword_1EC7EA358, &unk_1D561DF50);
      (*(v51 + 8))(v22, v69);
      return (*(v53 + 8))(v52, v54);
    }

    else
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000004CLL, 0x80000001D568F330);
      sub_1D54DE8F4();
      v62 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v62);

      result = OUTLINED_FUNCTION_1_78();
      __break(1u);
    }
  }

  return result;
}

uint64_t Track.catalogID.getter()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  sub_1D5613D28();
  sub_1D560EC98();
  sub_1D560D7A8();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_61();
  v12(v11);
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {
    sub_1D4E6C9CC(v9, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v14 = sub_1D560F138();
    (*(*(v13 - 8) + 8))(v9, v13);
  }

  return v14;
}

uint64_t Track.shouldShowComposer.getter()
{
  v1 = v0;
  v2 = sub_1D5613838();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5613D28();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  (*(v14 + 16))(v18 - v17, v1, v11);
  v20 = *(v14 + 88);
  v21 = OUTLINED_FUNCTION_61();
  if (v22(v21) == *MEMORY[0x1E6976E18])
  {
    v23 = *(v14 + 96);
    v24 = OUTLINED_FUNCTION_61();
    v25(v24);
    (*(v5 + 32))(v10, v19, v2);
    v26 = _s8MusicKit4SongV0aB8InternalE18shouldShowComposerSbvg_0();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v27 = *(v14 + 8);
    v28 = OUTLINED_FUNCTION_61();
    v29(v28);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t Track.userRating.getter()
{
  v1 = v0;
  v2 = sub_1D560EEA8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5613838();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1D5613D28();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v1, v20);
  v29 = *(v23 + 88);
  v30 = OUTLINED_FUNCTION_45_3();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x1E6976E18])
  {
    v33 = *(v23 + 96);
    v34 = OUTLINED_FUNCTION_45_3();
    v35(v34);
    (*(v14 + 32))(v19, v28, v11);
    v36 = sub_1D56135C8();
    (*(v14 + 8))(v19, v11);
  }

  else if (v32 == *MEMORY[0x1E6976DF8])
  {
    v37 = *(v23 + 96);
    v38 = OUTLINED_FUNCTION_45_3();
    v39(v38);
    (*(v5 + 32))(v10, v28, v2);
    v36 = sub_1D560ECD8();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v40 = *(v23 + 8);
    v41 = OUTLINED_FUNCTION_45_3();
    v42(v41);
    return 0;
  }

  return v36;
}

uint64_t Track.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1D56128E8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1D5613CA8();
  (*(v6 + 16))(v1, v11, v3);
  v12 = (*(v6 + 88))(v1, v3);
  if (v12 == *MEMORY[0x1E69765E8])
  {
    v13 = 0;
LABEL_7:
    v14 = *(v6 + 8);
    v15 = OUTLINED_FUNCTION_61();
    result = v16(v15);
    *a1 = v13;
    return result;
  }

  if (v12 == *MEMORY[0x1E69765F8])
  {
    v13 = 1;
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x1E69765F0])
  {
    v13 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t Track.siriRepresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_1D560EEA8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5613838();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1D5613D28();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v1, v20);
  v29 = (*(v23 + 88))(v28, v20);
  if (v29 == *MEMORY[0x1E6976E18])
  {
    (*(v23 + 96))(v28, v20);
    (*(v14 + 32))(v19, v28, v11);
    Song.siriRepresentation.getter();
    v30 = *(v14 + 8);
    v31 = OUTLINED_FUNCTION_45_3();
    return v32(v31);
  }

  else if (v29 == *MEMORY[0x1E6976DF8])
  {
    (*(v23 + 96))(v28, v20);
    (*(v5 + 32))(v10, v28, v2);
    MusicVideo.siriRepresentation.getter(a1);
    return (*(v5 + 8))(v10, v2);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000048, 0x80000001D568F2E0);
    sub_1D54DE8F4();
    v34 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v34);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_1_78();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D54DE8F4()
{
  result = qword_1EC7EA708;
  if (!qword_1EC7EA708)
  {
    sub_1D5613D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EA708);
  }

  return result;
}

uint64_t sub_1D54DE9B4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_1D5616338();
  result = sub_1D56158D8();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54DEA70()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_1D5616338();
  v5 = sub_1D56158D8();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  v6 = *(v0 + *(*v0 + 120) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D54DEB50()
{
  sub_1D54DEA70();

  return MEMORY[0x1EEE6DEF0](v0);
}

sqlite3_stmt *sub_1D54DEB94@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54DEC30(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

sqlite3_stmt *sub_1D54DEBDC(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
    return sub_1D560C1F8();
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54DEC30(sqlite3_stmt *result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (sqlite3_column_int64(result, a2) != 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54DEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 16) + 8))(a1, a2, AssociatedTypeWitness);
  if (!v4)
  {
    return (*(a4 + 56))(v12, a3, a4);
  }

  return result;
}

sqlite3_stmt *sub_1D54DEE40@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54DEBC4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1D54DEE6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  v5 = *MEMORY[0x1E696A278];
  *(inited + 32) = sub_1D5614D68();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  return sub_1D5614BD8();
}

uint64_t sub_1D54DEF18(uint64_t a1)
{
  v2 = sub_1D54DEFB4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D54DEF54(uint64_t a1)
{
  v2 = sub_1D54DEFB4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1D54DEFB4()
{
  result = qword_1EC7F7648;
  if (!qword_1EC7F7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7648);
  }

  return result;
}

uint64_t sub_1D54DF008()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D54DF0B4;

  return sub_1D54DF868(v4, v2);
}

uint64_t sub_1D54DF0B4()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v5[6] = v3;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v16 = (v5[3] + *v5[3]);
    v13 = *(v5[3] + 4);
    v14 = swift_task_alloc();
    v5[7] = v14;
    *v14 = v9;
    v14[1] = sub_1D54DF280;
    v15 = v5[4];

    return v16();
  }
}

uint64_t sub_1D54DF280()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1D54DF4FC, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[9] = v10;
    *v10 = v7;
    v10[1] = sub_1D54DF3D8;
    v11 = v3[6];

    return sub_1D54DFEC4();
  }
}

uint64_t sub_1D54DF3D8()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1D54DF5CC;
  }

  else
  {
    v7 = sub_1D54DF570;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D54DF4FC()
{
  OUTLINED_FUNCTION_60();
  v0[11] = v0[8];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_187(v1);

  return sub_1D54E0170();
}

uint64_t sub_1D54DF570()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D54DF5CC()
{
  OUTLINED_FUNCTION_60();
  v0[11] = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_187(v1);

  return sub_1D54E0170();
}

uint64_t sub_1D54DF640()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v9 + 104) = v0;

  if (v0)
  {
    v10 = sub_1D54DF7C4;
  }

  else
  {
    v10 = sub_1D54DF754;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, 0);
}

uint64_t sub_1D54DF754()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  swift_willThrow();

  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54DF7C4()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  sub_1D52AF5B8();
  swift_allocError();
  *v4 = v1;
  v4[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54DF868(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54DF888, v2);
}

void sub_1D54DF888()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_isDeserialized) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
    if (v2)
    {
      v0[10] = v2;
      v3 = v0[6];
      _s11TransactionCMa();
      swift_allocObject();

      swift_retain_n();

      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_1_184(v4);

      sub_1D54E0334(v5, v6, v7, v8, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _s10ConnectionCMa();
    swift_allocObject();

    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_1D54DFA0C;
    v12 = v0[7];

    sub_1D54E5260();
  }
}

uint64_t sub_1D54DFA0C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v5 + 56);
    *(v5 + 72) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1D54DFB44, v13, 0);
  }
}

uint64_t sub_1D54DFB44()
{
  OUTLINED_FUNCTION_91();
  v0[10] = v0[9];
  v2 = v0[6];
  v1 = v0[7];
  _s11TransactionCMa();
  swift_allocObject();

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_1_184(v3);

  return sub_1D54E0334(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D54DFBFC()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = *(v4 + 88);
  *v6 = *v1;
  *(v5 + 96) = v0;

  v8 = *(v4 + 56);
  if (v0)
  {
    v9 = sub_1D54DFDF4;
  }

  else
  {
    *(v5 + 104) = v3;
    v9 = sub_1D54DFD2C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1D54DFD2C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  swift_beginAccess();

  sub_1D52C886C();
  swift_endAccess();

  v4 = v0[1];
  v5 = v0[13];

  return v4(v5);
}

uint64_t sub_1D54DFDF4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54DFE50(uint64_t a1)
{
  swift_beginAccess();
  sub_1D54E0990(a1);
  swift_endAccess();
}

uint64_t sub_1D54DFEE0()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_12_100();
    sub_1D54E0934();
    swift_allocError();
    *v2 = v6;
    v2[1] = v7;
    swift_willThrow();
    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    v5 = *(v1 + 128);
    *(v0 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D54DFFF0, v5, 0);
  }
}

uint64_t sub_1D54DFFF0()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E4FE8(v0[3]);
  v0[4] = 0;
  v2 = v0[2];
  v1 = v0[3];

  return MEMORY[0x1EEE6DFA0](sub_1D54E0088, v2, 0);
}

uint64_t sub_1D54E0088()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 16);
  *(v1 + 136) = 1;
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);

  v3(v1);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54E0114()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54E018C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 16);
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_12_100();
    sub_1D54E0934();
    swift_allocError();
    *v2 = v6;
    v2[1] = v7;
    swift_willThrow();
    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    v5 = *(v1 + 128);
    *(v0 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D54E029C, v5, 0);
  }
}

uint64_t sub_1D54E029C()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E5008(v0[3]);
  v0[4] = 0;
  v2 = v0[2];
  v1 = v0[3];

  return MEMORY[0x1EEE6DFA0](sub_1D54E0DF4, v2, 0);
}

uint64_t sub_1D54E0334(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 80) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *v6;
  return OUTLINED_FUNCTION_12_6(sub_1D54E0384, 0);
}

uint64_t sub_1D54E0384()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  v1[15] = v2;
  v1[16] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D54E0410, v4, 0);
}

uint64_t sub_1D54E0410()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E4EC8(*(v0 + 16), *(v0 + 80));
  *(v0 + 72) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D54E049C, 0, 0);
}

uint64_t sub_1D54E049C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_12_6(sub_1D54E04C0, v1);
}

uint64_t sub_1D54E04C0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_1D54E0524()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = *(v1 + 120);

  v6 = *(v1 + 128);

  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_55();
  v8 = v0[9];

  return v7();
}

uint64_t sub_1D54E05C8(sqlite3 *a1, char a2)
{
  OUTLINED_FUNCTION_2_137();
  sub_1D5615B68();

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  MEMORY[0x1DA6EAC70](v4, v5);

  MEMORY[0x1DA6EAC70](0x4341534E41525420, 0xEC0000004E4F4954);
  v6 = sub_1D5614DE8();

  v7 = sqlite3_exec(a1, (v6 + 32), 0, 0, 0);

  return v7;
}

uint64_t sub_1D54E0700()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    v3 = *(v0 + 152);

    swift_defaultActor_destroy();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E0748()
{
  sub_1D54E0700();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D54E07C4()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v0);
  return sub_1D5616328();
}

uint64_t sub_1D54E0878()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D54E0798();
  return sub_1D5616328();
}

unint64_t sub_1D54E08E0()
{
  result = qword_1EDD585D0;
  if (!qword_1EDD585D0)
  {
    _s11TransactionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD585D0);
  }

  return result;
}

unint64_t sub_1D54E0934()
{
  result = qword_1EC7F7650;
  if (!qword_1EC7F7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7650);
  }

  return result;
}

unint64_t sub_1D54E0990(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v7 = *(v3 + 40);
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](a1);
    v8 = sub_1D5616328();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == a1)
      {
        v11 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v1;
        v15 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D54B1690();
          v13 = v15;
        }

        v6 = *(*(v13 + 48) + 8 * v10);
        sub_1D54E0BC4(v10);
        *v1 = v15;
        return v6;
      }

      v8 = v10 + 1;
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

  v5 = sub_1D5615AD8();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1D54E0AE4(v4, a1);

  return v6;
}

unint64_t sub_1D54E0AE4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_1D5615A98();
  v6 = swift_unknownObjectRetain();
  v11 = sub_1D52C94A4(v6, v5);
  v7 = *(v11 + 40);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  for (i = sub_1D5616328(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v11 + 32));
    if (((*(v11 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v10 = *(*(v11 + 48) + 8 * result);
    if (v10 == a2)
    {
      sub_1D54E0BC4(result);
      *v2 = v11;
      return v10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D54E0BC4(unint64_t result)
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

    v9 = sub_1D5615A08();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v12);
        v13 = sub_1D5616328() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D54E0D6C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D54E0DAC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D54E0E3C(sqlite3_stmt *a1, uint64_t a2)
{
  result = sub_1D560C208();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_double(a1, a2, v5);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1D54E0EA0(sqlite3_stmt *result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(result, a2, a3 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54E0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  result = (*(a4 + 64))(a3, a4);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1D54E10FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D54E1140(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA6EC0D0](1);

    return sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    return MEMORY[0x1DA6EC0D0](a2);
  }
}

uint64_t sub_1D54E11B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D56162D8();
  if (a3)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    MEMORY[0x1DA6EC0D0](a1);
  }

  return sub_1D5616328();
}

uint64_t sub_1D54E1258()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D56162D8();
  sub_1D54E1140(v5, v1, v2, v3);
  return sub_1D5616328();
}

unint64_t sub_1D54E12FC()
{
  result = qword_1EC7F7658[0];
  if (!qword_1EC7F7658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7658);
  }

  return result;
}

uint64_t sub_1D54E1350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D54E13F0(a1, a2, MEMORY[0x1E6968010], MEMORY[0x1E6968008]);
  *a3 = result;
  return result;
}

uint64_t sub_1D54E13A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D54E13F0(a1, a2, MEMORY[0x1E6967F70], MEMORY[0x1E6967F68]);
  *a3 = result;
  return result;
}

uint64_t sub_1D54E13F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return a4();
}

uint64_t sub_1D54E1434(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_0_247();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E1494(v3, v4, a2, WitnessTable);
}

uint64_t sub_1D54E1494(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(&v9, a3, a4);
  v7 = *(a4 + 16);
  sub_1D560B948();
  sub_1D4E55E1C(a1, a2);
}

uint64_t sub_1D54E1544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_247();
  WitnessTable = swift_getWitnessTable();
  result = sub_1D54E1598(a1, WitnessTable);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1D54E1598(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v6);
  v3 = *(a2 + 24);
  v4 = sub_1D560B9D8();

  return v4;
}

uint64_t sub_1D54E1628(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1D54E1668(a1);
  return v5;
}

uint64_t sub_1D54E174C()
{
  sub_1D54E16DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D54E184C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  *(v4 + 32) = 0x746E656D656C65;
  *(v4 + 40) = 0xE700000000000000;
  *(v4 + 48) = (*(*(a2 + 24) + 32))(a1);
  return v4;
}

uint64_t sub_1D54E18E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v8 || (sub_1D5616168() & 1) != 0)
  {
    a5[3] = MEMORY[0x1E6969080];
    a5[4] = &off_1F50C0750;
    *a5 = a3;
    a5[1] = a4;

    return sub_1D4F48DE4(a3, a4);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D5616168() & 1) != 0)
  {
    a4[3] = &type metadata for SQLDynamicValue;
    a4[4] = &off_1F50BF758;
    *a4 = a3;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = &type metadata for SQLNull;
    *(a3 + 32) = &off_1F50C07B8;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1C74@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v7 = v7 && v6 == 0xE700000000000000;
  if (v7 || (OUTLINED_FUNCTION_5_143() & 1) != 0)
  {
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = &off_1F50C0588;
    *a3 = a1;
    a3[1] = a2;
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1D58@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a4 + 24) = MEMORY[0x1E69E6370];
    *(a4 + 32) = &off_1F50BFE60;
    *a4 = a3 & 1;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1E7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x1E69E63B0];
    *(a3 + 32) = &off_1F50C0310;
    *a3 = a4;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E1FA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (result = sub_1D5616168(), (result & 1) != 0))
  {
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *(a3 + 32) = &off_1F50C0400;
    *a3 = a4;
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
    sub_1D5615D48();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D54E20E0(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v9 = v9 && v8 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_143() & 1) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    *a4 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D54E21A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_1_185();
  v8 = v8 && v7 == 0xE700000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_143() & 1) != 0)
  {
    a3[3] = a1;
    a3[4] = *(*(a2 + 24) + 16);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    v10 = *(*(a1 - 8) + 16);

    return v10(boxed_opaque_existential_0, v3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_6_147();
    OUTLINED_FUNCTION_4_144();
    sub_1D5615D48();
    OUTLINED_FUNCTION_3_188();
    OUTLINED_FUNCTION_0_248();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E22B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  return (*(a3 + 8))();
}

uint64_t sub_1D54E230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 24);
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a1, a2, AssociatedTypeWitness, a6);
}

uint64_t sub_1D54E23A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E22B0(a1, WitnessTable, v3);
}

uint64_t sub_1D54E23F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E230C(a1, a2, a3, a4, WitnessTable, v9);
}

uint64_t sub_1D54E2488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E24C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E22B0(a1, WitnessTable, v3);
}

uint64_t sub_1D54E2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E230C(a1, a2, a3, a4, WitnessTable, v9);
}

uint64_t sub_1D54E25A4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D5621D90;
  *(v9 + 32) = 7955819;
  *(v9 + 40) = 0xE300000000000000;
  *(v9 + 48) = (*(a3 + 32))(a1, a3);
  *(v9 + 56) = 0x65756C6176;
  *(v9 + 64) = 0xE500000000000000;
  *(v9 + 72) = (*(a5 + 32))(a2, a5);
  return v9;
}

uint64_t sub_1D54E26B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9)
{
  v38 = a7;
  v39 = a4;
  v40 = a2;
  v41 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  v21 = *(a5 - 8);
  (*(v21 + 16))(&v38 - v19, a3, a5);
  v22 = *(a6 - 8);
  (*(v22 + 16))(&v20[*(TupleTypeMetadata2 + 48)], v39, a6);
  v39 = a1;
  v24 = a1 == 7955819;
  v23 = v40;
  v24 = v24 && v40 == 0xE300000000000000;
  if (v24 || (sub_1D5616168() & 1) != 0)
  {
    v25 = OUTLINED_FUNCTION_5_24();
    v26(v25);
    v27 = *(TupleTypeMetadata2 + 48);
    v28 = *(v38 + 16);
    v29 = v41;
    v41[3] = a5;
    v29[4] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v21 + 32))(boxed_opaque_existential_0, v18, a5);
    (*(v14 + 8))(v20, TupleTypeMetadata2);
    return (*(v22 + 8))(&v18[v27], a6);
  }

  else
  {
    v32 = v39 == 0x65756C6176 && v23 == 0xE500000000000000;
    if (v32 || (sub_1D5616168() & 1) != 0)
    {
      v33 = OUTLINED_FUNCTION_5_24();
      v34(v33);
      v40 = *(TupleTypeMetadata2 + 48);
      v35 = *(a9 + 16);
      v36 = v41;
      v41[3] = a6;
      v36[4] = v35;
      v37 = __swift_allocate_boxed_opaque_existential_0(v36);
      (*(v22 + 32))(v37, &v18[v40], a6);
      (*(v14 + 8))(v20, TupleTypeMetadata2);
      return (*(v21 + 8))(v18, a5);
    }

    else
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
      v42 = v39;
      v43 = v23;
      sub_1D5615D48();
      OUTLINED_FUNCTION_0_248();
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54E2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(a5 - 16);
  v10 = *(a5 - 8);
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1D54E26B8(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48), v12, v13, v10, a6, v11);
}

uint64_t sub_1D54E2B14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D54E2B50(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54E2E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  OUTLINED_FUNCTION_2_184();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E184C(a1, WitnessTable);
}

uint64_t sub_1D54E2E44@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  OUTLINED_FUNCTION_2_184();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E21A4(a1, WitnessTable, a3);
}

void sub_1D54E2F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 8) + 8);
  sub_1D5615E48();
  if (v3 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1D56158D8();
    if (v4 <= 0x3F)
    {
      sub_1D54E35E4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D54E2FDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(*(a3 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  result = swift_getAssociatedTypeWitness();
  v11 = *(result - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  if (v12)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  if (v14 < a2)
  {
    v18 = ((v16 + *(*(result - 8) + 64) + (v17 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v18];
        if (a1[v18])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 2:
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *&a1[v18];
        if (!v22)
        {
          goto LABEL_31;
        }

LABEL_27:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v14 + (v24 | v23) + 1;
      default:
LABEL_31:
        if (v14)
        {
          break;
        }

        return 0;
    }
  }

  if (v9 >= v13)
  {

    return __swift_getEnumTagSinglePayload(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v17] & ~v15, v12, result);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D54E3260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(*(a4 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = *(v14 + 80);
  if (v15)
  {
    v20 = *(*(v12 - 8) + 64);
  }

  else
  {
    v20 = *(*(v12 - 8) + 64) + 1;
  }

  v21 = ((v20 + ((v18 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v17 < a2)
  {
    v24 = ~v17 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v21 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v13)
    {
      case 1:
        a1[v21] = v25;
        break;
      case 2:
        *&a1[v21] = v25;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v21] = v25;
        break;
      default:
        return;
    }

    return;
  }

  switch(v13)
  {
    case 1:
      a1[v21] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *&a1[v21] = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&a1[v21] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v11 < v16)
      {
        a1 = (&a1[v18 + v19] & ~v19);
        if (v16 < a2)
        {
          if (v20 <= 3)
          {
            v26 = ~(-1 << (8 * v20));
          }

          else
          {
            v26 = -1;
          }

          if (v20)
          {
            v27 = v26 & (~v16 + a2);
            if (v20 <= 3)
            {
              v28 = v20;
            }

            else
            {
              v28 = 4;
            }

            bzero(a1, v20);
            switch(v28)
            {
              case 2:
                *a1 = v27;
                break;
              case 3:
                *a1 = v27;
                a1[2] = BYTE2(v27);
                break;
              case 4:
                goto LABEL_50;
              default:
                *a1 = v27;
                break;
            }
          }

          return;
        }

        v29 = (a2 + 1);
        v30 = a1;
        goto LABEL_57;
      }

      if (v11 >= a2)
      {
        v30 = a1;
        v29 = a2;
        v15 = v11;
        v12 = AssociatedTypeWitness;
LABEL_57:

        __swift_storeEnumTagSinglePayload(v30, v29, v15, v12);
        return;
      }

      if (v18)
      {
        v27 = ~v11 + a2;
        bzero(a1, v18);
LABEL_50:
        *a1 = v27;
      }

      return;
  }
}

void sub_1D54E35E4()
{
  if (!qword_1EC7F76E0)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F76E0);
    }
  }
}

uint64_t sub_1D54E3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (sqlite3_value_type(v1) != 5)
  {
    sub_1D5615B68();

    sqlite3_value_type(v1);
    v2 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v2);

    MEMORY[0x1DA6EAC70](0x65756C617620, 0xE600000000000000);
    sub_1D51D2CAC();
    swift_allocError();
    *v3 = 0xD00000000000001ELL;
    v3[1] = 0x80000001D568F500;
    swift_willThrow();
  }
}

uint64_t sub_1D54E3740(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sqlite3_value_text(v1);
  sqlite3_value_bytes(v1);
  v3 = sub_1D54EBCE8(v2);

  return v3;
}

uint64_t sub_1D54E3814(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = sqlite3_value_blob(v8);
  v10 = sqlite3_value_bytes(v8);
  v11 = sub_1D54ED308(v9, v10);
  if (!v4)
  {
    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v15 = sub_1D560B9C8();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    sub_1D54E4304(a4, a2, a3);
    sub_1D560B948();
    sub_1D4E55E1C(v13, v14);
  }
}

unint64_t sub_1D54E3960(uint64_t a1)
{
  result = sqlite3_value_type(*(a1 + 16));
  if ((result - 1) <= 4)
  {
    return 0x4030201uLL >> (8 * (result - 1));
  }

  __break(1u);
  return result;
}

void sub_1D54E399C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  switch(sub_1D54E3960(a1))
  {
    case 1u:
      a2[3] = MEMORY[0x1E69E6530];
      a2[4] = &off_1F50BFF10;
      *a2 = sqlite3_value_int64(*(a1 + 16));
      return;
    case 2u:
      a2[3] = MEMORY[0x1E69E63B0];
      a2[4] = &off_1F50C02D0;
      *a2 = sqlite3_value_double(*(a1 + 16));
      return;
    case 3u:
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = &off_1F50C04B0;

      v9 = sub_1D54E3740(v11);
      goto LABEL_7;
    case 4u:
      a2[3] = MEMORY[0x1E6969080];
      a2[4] = sub_1D52EF058();
      v6 = *(a1 + 16);
      v7 = sqlite3_value_blob(v6);
      v8 = sqlite3_value_bytes(v6);
      v9 = sub_1D54ED308(v7, v8);
LABEL_7:
      if (v2)
      {
        goto LABEL_8;
      }

      *a2 = v9;
      a2[1] = v10;
      break;
    default:
      a2[3] = &type metadata for SQLNull;
      a2[4] = sub_1D54E42B0();

      sub_1D54E3634(v5);
      if (!v2)
      {
        return;
      }

LABEL_8:
      __swift_deallocate_boxed_opaque_existential_1(a2);
      break;
  }
}

sqlite3_value *sub_1D54E3AEC(const sqlite3_value *a1)
{
  result = sqlite3_value_dup(a1);
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54E3B14()
{
  sqlite3_value_free(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D54E3B9C()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*(v0 + 16));
  return sub_1D5616328();
}

uint64_t sub_1D54E3C50(uint64_t a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](*(a1 + 16));
  return sub_1D5616328();
}

uint64_t sub_1D54E3CA8()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D54E3B70();
  return sub_1D5616328();
}

uint64_t sub_1D54E3CE8(uint64_t a1)
{
  sub_1D54E399C(a1, &v3);
  sub_1D4E48324(&v3, v4);
  sub_1D4E628D4(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
  v1 = sub_1D5614DB8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

uint64_t sub_1D54E3DBC(uint64_t a1)
{
  sub_1D54E399C(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(*(v2 + 8) + 16))(v1);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

sqlite3_stmt *sub_1D54E3EA8(sqlite3_stmt *result, uint64_t iCol)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = sqlite3_column_value(result, iCol);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    return sub_1D54E3AEC(v3);
  }

  else
  {
    sub_1D5615B68();

    v4 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v4);

    sub_1D51D2CAC();
    swift_allocError();
    *v5 = 0xD000000000000022;
    v5[1] = 0x80000001D568F520;
    return swift_willThrow();
  }
}

sqlite3_stmt *sub_1D54E3FD0@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  result = sub_1D54E3EA8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D54E3FFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_value(result, a2, *(a3 + 16));
  if (result)
  {
    sub_1D5615B68();

    v3 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v3);

    sub_1D51D2CAC();
    swift_allocError();
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x80000001D568F550;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D54E4118(uint64_t a1)
{
  result = sub_1D54E4140();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D54E4140()
{
  result = qword_1EC7F76E8;
  if (!qword_1EC7F76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76E8);
  }

  return result;
}

unint64_t sub_1D54E4198()
{
  result = qword_1EC7F76F0;
  if (!qword_1EC7F76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76F0);
  }

  return result;
}

unint64_t sub_1D54E41F0()
{
  result = qword_1EC7F76F8;
  if (!qword_1EC7F76F8)
  {
    type metadata accessor for SQLDynamicValue.Box();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F76F8);
  }

  return result;
}

uint64_t sub_1D54E4248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7700, &qword_1D566AD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D54E42B0()
{
  result = qword_1EC7F7708;
  if (!qword_1EC7F7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7708);
  }

  return result;
}

uint64_t sub_1D54E4304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D54E4370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D54E43D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79B90(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E4400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79B98(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E4430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D4E79BA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D54E4464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D4E79BC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D54E44A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4E79BE8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D54E44E0(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_1D5614DA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[3];
  v18[0] = v1[2];
  v18[1] = v9;

  sub_1D5614D98();
  sub_1D4F53278();
  v10 = sub_1D5615998();
  (*(v5 + 8))(v8, v4);

  v12 = v2[4];
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = v2[5];
  if (v13)
  {
    v14 = 526336;
  }

  else
  {
    v14 = 0x80000;
  }

  if ((v13 & 2) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = (v13 & 1) << 11;
  }

  if (v10)
  {
    v16 = (v10 + 32);
  }

  else
  {
    v16 = 0;
  }

  function_v2 = sqlite3_create_function_v2(a1, v16, v12, v15 | 1, v2, sub_1D54E497C, 0, 0, sub_1D54E498C);

  return function_v2;
}

void sub_1D54E46A4(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = sub_1D5614DA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = sqlite3_user_data(a1);
  if (v8)
  {
    v9 = v8;

    if ((a2 & 0x80000000) == 0)
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
LABEL_13:
        v15 = v9[6];
        v16 = v9[7];

        v15(&v21, v10);

        v17 = a1;
        v18 = v22;
        v19 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, v22);
        (*(v19 + 16))(v17, v18, v19);

        __swift_destroy_boxed_opaque_existential_1(&v21);
        return;
      }

      v20 = a1;
      v11 = a2;
      v21 = MEMORY[0x1E69E7CC0];
      sub_1D4F04B0C();
      v10 = v21;
      v12 = a3;
      while (v11)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_16;
        }

        v21 = v10;
        v14 = *(v10 + 16);
        if (v14 >= *(v10 + 24) >> 1)
        {
          sub_1D4F04B0C();
          v10 = v21;
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v13;
        ++v12;
        if (!--v11)
        {
          a1 = v20;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1D54E4980(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D54E4990()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t sub_1D54E49B8()
{
  sub_1D54E4990();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1D54E4A34()
{
  result = qword_1EC7F7728;
  if (!qword_1EC7F7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7728);
  }

  return result;
}

unint64_t sub_1D54E4A8C()
{
  result = qword_1EC7F7730;
  if (!qword_1EC7F7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7730);
  }

  return result;
}

unint64_t sub_1D54E4AE4()
{
  result = qword_1EC7F7738;
  if (!qword_1EC7F7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7738);
  }

  return result;
}

unint64_t sub_1D54E4B3C()
{
  result = qword_1EC7F7740;
  if (!qword_1EC7F7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7740);
  }

  return result;
}

uint64_t sub_1D54E4BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D4F0B2EC(*(a1 + 16), 0);
  sub_1D4EFEE08();
  v4 = v3;
  sub_1D4E6456C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D54E4CB8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_1D4E6456C();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1D54E4D58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  OUTLINED_FUNCTION_146();
  result = swift_beginAccess();
  v12 = *(a1 + 136);
  if (!v12)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v13 = sqlite3_prepare_v3(v12, a2, a4, 1u, (a5 + 48), a6);
  swift_endAccess();
  sub_1D54EF4CC(v13);
  OUTLINED_FUNCTION_17_88();
  if (v16)
  {
  }

  v16 = v15 == 14 && v14 == 16;
  if (v16)
  {
  }

  v17 = sqlite3_extended_errcode(*(a1 + 136));
  result = sqlite3_errstr(v13);
  if (!result)
  {
    goto LABEL_16;
  }

  sub_1D5614E98();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    sub_1D5614E98();
    sub_1D54EF4CC(v17);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_23_74(v18, v19);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1D54E4EC8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v5 = *(a1 + 136);
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1D54E05C8(v5, a2);
  if (!v2)
  {
    v7 = v6;
    sub_1D54EF4CC(v6);
    OUTLINED_FUNCTION_17_88();
    if (!v10)
    {
      v10 = v9 == 14 && v8 == 16;
      if (!v10)
      {
        v11 = sqlite3_extended_errcode(*(a1 + 136));
        if (sqlite3_errstr(v7))
        {
          v12 = sub_1D5614E98();
          v14 = v13;
          if (sqlite3_errmsg(*(a1 + 136)))
          {
            v15 = sub_1D5614E98();
            v17 = v16;
            v18 = sub_1D54EF4CC(v11);
            v19 = v18;
            v20 = HIDWORD(v18);
            sub_1D51D2BD0();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            *v21 = v11;
            *(v21 + 4) = v19;
            *(v21 + 8) = v20;
            *(v21 + 16) = v12;
            *(v21 + 24) = v14;
            *(v21 + 32) = v15;
            *(v21 + 40) = v17;
            swift_willThrow();
            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }
  }
}

void sub_1D54E5028(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  if (!*(a1 + 136))
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_146();
  v6 = sqlite3_exec(v2, v3, v4, v5, 0);
  sub_1D54EF4CC(v6);
  OUTLINED_FUNCTION_17_88();
  if (!v9)
  {
    v9 = v8 == 14 && v7 == 16;
    if (!v9)
    {
      v10 = sqlite3_extended_errcode(*(a1 + 136));
      if (sqlite3_errstr(v6))
      {
        v11 = sub_1D5614E98();
        v13 = v12;
        if (sqlite3_errmsg(*(a1 + 136)))
        {
          v14 = sub_1D5614E98();
          v16 = v15;
          v17 = sub_1D54EF4CC(v10);
          v18 = v17;
          v19 = HIDWORD(v17);
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          swift_allocError();
          *v20 = v10;
          *(v20 + 4) = v18;
          *(v20 + 8) = v19;
          *(v20 + 16) = v11;
          *(v20 + 24) = v13;
          *(v20 + 32) = v14;
          *(v20 + 40) = v16;
          swift_willThrow();
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }
}

sqlite3 *sub_1D54E5144(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_1D54EDE80(result);
  sub_1D54EF4CC(v3);
  OUTLINED_FUNCTION_17_88();
  if (v6)
  {
  }

  v6 = v5 == 14 && v4 == 16;
  if (v6)
  {
  }

  v7 = sqlite3_extended_errcode(*(a1 + 136));
  result = sqlite3_errstr(v3);
  if (!result)
  {
    goto LABEL_12;
  }

  sub_1D5614E98();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    sub_1D5614E98();
    sub_1D54EF4CC(v7);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v8 = swift_allocError();
    OUTLINED_FUNCTION_23_74(v8, v9);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D54E5260()
{
  OUTLINED_FUNCTION_60();
  v1[75] = v0;
  v1[74] = v2;
  v3 = *(_s16AttachedLocationVMa() - 8);
  v1[76] = v3;
  v4 = *(v3 + 64) + 15;
  v1[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54E531C, 0, 0);
}

uint64_t sub_1D54E531C()
{
  v1 = *(v0 + 600);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 136) = 0;
  v2 = sub_1D523FAF8(MEMORY[0x1E69E7CC0]);
  sub_1D54E6C34(v2, v3, v4, 0, 1, 20, 0, 0, (v0 + 176), 0);
  memcpy((v1 + 144), (v0 + 176), 0x41uLL);
  _s9StatementCMa();
  sub_1D54E6D90();
  *(v1 + 216) = sub_1D5614BD8();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 248) = 1;
  v5 = OUTLINED_FUNCTION_0_249();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

const char *sub_1D54E5420()
{
  v1 = v0[75];
  v2 = v0[74];
  sub_1D54E6F54();
  v3 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  v0[78] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  v4 = (v2 + v3);
  v5 = *(v2 + v3);
  v6 = 256;
  if ((v4[1] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  if (v4[2])
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if ((v4[3] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v7 | v8 | v9;
  v11 = 0x100000000;
  if ((v4[4] & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if ((v4[5] & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if ((v4[6] & 1) == 0)
  {
    v13 = 0;
  }

  v14 = v11 | v12;
  v15 = 0x100000000000000;
  if ((v4[7] & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v10 | v14 | v13;
  if (v4[10])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1D54E7FA0(v16 | v15, v17 | (v4[11] << 24) | v4[8] & 1 | (v4[9] << 8));
  v19 = sub_1D5614DE8();

  swift_beginAccess();
  v20 = sqlite3_open_v2((v19 + 32), (v1 + 136), v18, 0);
  swift_endAccess();

  v21 = *(v1 + 136);
  if (v20)
  {
    v22 = sqlite3_extended_errcode(v21);
    result = sqlite3_errstr(v20);
    if (result)
    {
      v24 = v0[75];
      v64 = sub_1D5614E98();
      v26 = v25;
      result = sqlite3_errmsg(*(v24 + 136));
      if (result)
      {
        v27 = v0[75];
        v28 = v0[74];
        v29 = sub_1D5614E98();
        v31 = v30;
        v32 = sub_1D54EF4CC(v22);
        v33 = v32;
        v34 = HIDWORD(v32);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        swift_allocError();
        *v35 = v22;
        *(v35 + 4) = v33;
        *(v35 + 8) = v34;
        *(v35 + 16) = v64;
        *(v35 + 24) = v26;
        *(v35 + 32) = v29;
        *(v35 + 40) = v31;
        swift_willThrow();
        sqlite3_close_v2(*(v27 + 136));

        v36 = v0[77];

        OUTLINED_FUNCTION_55();

        return v37();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sqlite3_extended_result_codes(v21, 1);
  v38 = *v4;
  v39 = v4[1];
  v40 = v4[2];
  v41 = v4[3];
  v42 = v4[4];
  v43 = v4[5];
  v44 = v4[6];
  v45 = v4[7];
  v63 = v4[9];
  v65 = v4[8];
  v62 = v4[10];
  v46 = v4[11];
  v47 = swift_task_alloc();
  v48 = 256;
  if ((v39 & 1) == 0)
  {
    v48 = 0;
  }

  v49 = v48 & 0xFFFFFFFFFFFFFFFELL | v38 & 1;
  v0[79] = v47;
  if (v40)
  {
    v50 = 0x10000;
  }

  else
  {
    v50 = 0;
  }

  v51 = 0x1000000;
  if ((v41 & 1) == 0)
  {
    v51 = 0;
  }

  v52 = v49 | v50 | v51;
  v53 = 0x100000000;
  if ((v42 & 1) == 0)
  {
    v53 = 0;
  }

  v54 = 0x10000000000;
  if ((v43 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x1000000000000;
  if ((v44 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = v53 | v54;
  v57 = 0x100000000000000;
  if ((v45 & 1) == 0)
  {
    v57 = 0;
  }

  v58 = v52 | v56 | v55;
  if (v62)
  {
    v59 = 0x10000;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59 | (v46 << 24);
  *v47 = v0;
  v47[1] = sub_1D54E57EC;
  v61 = v0[75];

  return sub_1D54E7FE8(v61, v58 | v57, v60 | v65 & 1 | (v63 << 8));
}

uint64_t sub_1D54E57EC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 632);
  *v4 = *v1;
  *(v3 + 640) = v0;

  v6 = *(v2 + 600);
  v7 = sub_1D54E6DE4();
  if (v0)
  {
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v10 = sub_1D54E67AC;
  }

  else
  {
    *(v3 + 648) = v7;
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v10 = sub_1D54E595C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1D54E595C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*(v0 + 592) + *(v0 + 624));
  *(*(v0 + 600) + 112) = (v1 & 1) == 0;
  if (v1)
  {
    *(v0 + 440) = 0xD00000000000001DLL;
    *(v0 + 448) = 0x80000001D568F720;
    *(v0 + 456) = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 0;
    v2 = swift_task_alloc();
    *(v0 + 656) = v2;
    *v2 = v0;
    v2[1] = sub_1D54E5A80;
    v3 = *(v0 + 600);

    return sub_1D54F2350();
  }

  else
  {
    OUTLINED_FUNCTION_9_123();
    OUTLINED_FUNCTION_7_134();
    *(v0 + 672) = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations;
    v5 = OUTLINED_FUNCTION_0_249();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1D54E5A80()
{
  v2 = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = v3[82];
  *v5 = *v1;
  *(v4 + 664) = v2;

  v7 = v3[81];
  v8 = v3[75];
  swift_getObjectType();
  v10 = sub_1D5615338();
  if (v2)
  {
    v11 = sub_1D54E681C;
  }

  else
  {
    v11 = sub_1D54E5BD8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D54E5BD8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_123();
  OUTLINED_FUNCTION_7_134();
  *(v0 + 672) = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations;
  v1 = OUTLINED_FUNCTION_0_249();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5C44()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 680) = OUTLINED_FUNCTION_28_66(*(v0 + 672));

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5CBC()
{
  v5 = v1[85];
  v6 = v1[77];
  v7 = v1[76];
  v8 = *(v5 + 16);
  v1[86] = v8;
  v1[87] = 0;
  if (v8)
  {
    if (*(v5 + 16))
    {
      v2 = 0x80000001D568F740;
      sub_1D54E6E38(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      sub_1D4F0029C();
      v10 = v9;
      v3 = *(v9 + 16);
      v0 = v3 + 1;
      if (v3 < *(v9 + 24) >> 1)
      {
LABEL_4:
        v11 = v1[77];
        *(v10 + 16) = v0;
        v12 = v10 + 80 * v3;
        *(v12 + 32) = 0xD000000000000010;
        *(v12 + 40) = v2;
        *(v12 + 104) = 0;
        v13 = sub_1D54E9B64();
        v14 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_32_59(v13, v15);
        OUTLINED_FUNCTION_24_70();
        if (v4 >= v2 >> 1)
        {
          OUTLINED_FUNCTION_1_187();
        }

        OUTLINED_FUNCTION_19_82();
        __swift_destroy_boxed_opaque_existential_1(v1 + 45);

        OUTLINED_FUNCTION_8_132();
        if (v16)
        {
          OUTLINED_FUNCTION_75();
        }

        OUTLINED_FUNCTION_3_189();
        OUTLINED_FUNCTION_25_64();
        if (v0 > (v14 >> 1))
        {
          OUTLINED_FUNCTION_1_187();
        }

        OUTLINED_FUNCTION_15_91();
        __swift_destroy_boxed_opaque_existential_1(v1 + 50);
        sub_1D54E6E9C(v2);
        OUTLINED_FUNCTION_8_132();
        if (v16)
        {
          OUTLINED_FUNCTION_75();
        }

        OUTLINED_FUNCTION_5_144();
        OUTLINED_FUNCTION_29_58(v17, v18, v19, MEMORY[0x1E69E7CC0]);
        v20 = swift_task_alloc();
        v1[90] = v20;
        *v20 = v1;
        OUTLINED_FUNCTION_4_145(v20);
        OUTLINED_FUNCTION_25_3();

        return sub_1D54F2350();
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_1_187();
    v10 = v28;
    goto LABEL_4;
  }

  v23 = v1[74];

  v1[88] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
  OUTLINED_FUNCTION_0_249();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1D54E5EEC()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 712) = OUTLINED_FUNCTION_28_66(*(v0 + 704));

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v1 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D54E5F64()
{
  v4 = 0;
  v5 = v0[89];
  OUTLINED_FUNCTION_10_119();
  OUTLINED_FUNCTION_27_71();
  if (!v3)
  {
    while (1)
    {
LABEL_2:
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v9 >= v2)
      {
        break;
      }

      v3 = *(v1 + 8 * v9);
      ++v4;
      if (v3)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    v15 = v0[89];
    v16 = v0[74];

    v0[92] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
    OUTLINED_FUNCTION_0_249();
    OUTLINED_FUNCTION_63_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  while (1)
  {
LABEL_6:
    v10 = *(v0[75] + 136);
    if (!v10)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_14_93();
    v11 = sub_1D54E44E0(v10);
    sub_1D54EF4CC(v11);
    OUTLINED_FUNCTION_17_88();
    if (!v14)
    {
      v14 = v13 == 14 && v12 == 16;
      if (!v14)
      {
        break;
      }
    }

    v3 &= v3 - 1;
    OUTLINED_FUNCTION_18_88();

    if (!v3)
    {
      goto LABEL_2;
    }
  }

  v18 = sqlite3_extended_errcode(*(v0[75] + 136));
  v6 = sqlite3_errstr(v11);
  if (!v6)
  {
    goto LABEL_25;
  }

  v19 = v0[75];
  sub_1D5614E98();
  v6 = sqlite3_errmsg(*(v19 + 136));
  if (v6)
  {
    v20 = v0[89];
    OUTLINED_FUNCTION_30_68();
    sub_1D54EF4CC(v18);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    v21 = swift_allocError();
    OUTLINED_FUNCTION_21_79(v21, v22);
    OUTLINED_FUNCTION_18_88();

    v23 = v0[77];

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    __asm { BRAA            X1, X16 }
  }

LABEL_26:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D54E6150()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 720);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  v2[91] = v0;

  if (v0)
  {
    v8 = v2[85];
    v9 = v2[81];
    v10 = v2[75];

    sub_1D51D2984((v2 + 60));
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v13 = sub_1D54E688C;
  }

  else
  {
    v14 = v2[81];
    v15 = v2[75];
    sub_1D51D2984((v2 + 60));
    swift_getObjectType();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v13 = sub_1D54E62B4;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1D54E62B4()
{
  v4 = v1[87] + 1;
  v1[87] = v4;
  v5 = v1[85];
  if (v4 == v1[86])
  {
    v6 = v1[74];

    v1[88] = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_0_249();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  if (v4 >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1D54E6E38(v5 + ((*(v1[76] + 80) + 32) & ~*(v1[76] + 80)) + *(v1[76] + 72) * v4, v1[77]);
  sub_1D4F0029C();
  v12 = v11;
  v2 = *(v11 + 16);
  v0 = v2 + 1;
  if (v2 >= *(v11 + 24) >> 1)
  {
LABEL_19:
    OUTLINED_FUNCTION_1_187();
    v12 = v24;
  }

  v13 = v1[77];
  *(v12 + 16) = v0;
  v14 = v12 + 80 * v2;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x80000001D568F740;
  *(v14 + 104) = 0;
  v15 = sub_1D54E9B64();
  v16 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_32_59(v15, v17);
  OUTLINED_FUNCTION_24_70();
  if (v3 >= v2 >> 1)
  {
    OUTLINED_FUNCTION_1_187();
  }

  OUTLINED_FUNCTION_19_82();
  __swift_destroy_boxed_opaque_existential_1(v1 + 45);

  OUTLINED_FUNCTION_8_132();
  if (v18)
  {
    OUTLINED_FUNCTION_75();
  }

  OUTLINED_FUNCTION_3_189();
  OUTLINED_FUNCTION_25_64();
  if (v0 > (v16 >> 1))
  {
    OUTLINED_FUNCTION_1_187();
  }

  OUTLINED_FUNCTION_15_91();
  __swift_destroy_boxed_opaque_existential_1(v1 + 50);
  sub_1D54E6E9C(v2);
  OUTLINED_FUNCTION_8_132();
  if (v18)
  {
    OUTLINED_FUNCTION_75();
  }

  OUTLINED_FUNCTION_5_144();
  OUTLINED_FUNCTION_29_58(v19, v20, v21, MEMORY[0x1E69E7CC0]);
  v22 = swift_task_alloc();
  v1[90] = v22;
  *v22 = v1;
  OUTLINED_FUNCTION_4_145();
  OUTLINED_FUNCTION_25_3();

  return sub_1D54F2350();
}

uint64_t sub_1D54E64F8()
{
  v1 = v0[92];
  v2 = v0[81];
  v3 = v0[75];
  v4 = v0[74];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v0[93] = *(v4 + v1);

  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v5 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1D54E6598()
{
  v4 = 0;
  v5 = v0[93];
  OUTLINED_FUNCTION_10_119();
  OUTLINED_FUNCTION_27_71();
  if (v3)
  {
LABEL_6:
    while (1)
    {
      v7 = *(v0[75] + 136);
      if (!v7)
      {
        break;
      }

      OUTLINED_FUNCTION_14_93();
      v8 = sub_1D54EDE80(v7);
      sub_1D54EF4CC(v8);
      OUTLINED_FUNCTION_17_88();
      if (!v11)
      {
        v11 = v10 == 14 && v9 == 16;
        if (!v11)
        {
          v20 = sqlite3_extended_errcode(*(v0[75] + 136));
          if (!sqlite3_errstr(v8))
          {
            goto LABEL_25;
          }

          v21 = v0[75];
          sub_1D5614E98();
          if (sqlite3_errmsg(*(v21 + 136)))
          {
            v22 = v0[93];
            OUTLINED_FUNCTION_30_68();
            sub_1D54EF4CC(v20);
            sub_1D51D2BD0();
            OUTLINED_FUNCTION_29();
            v23 = swift_allocError();
            OUTLINED_FUNCTION_21_79(v23, v24);
            OUTLINED_FUNCTION_18_88();

            v25 = v0[77];

            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_63_0();

            __asm { BRAA            X1, X16 }
          }

          goto LABEL_26;
        }
      }

      v3 &= v3 - 1;
      OUTLINED_FUNCTION_18_88();

      if (!v3)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        v12 = v0[93];
        v13 = v0[77];
        v14 = v0[75];
        v15 = v0[74];

        *(v14 + 128) = &off_1F50C0A38;
        swift_unknownObjectWeakAssign();

        v16 = v0[1];
        v17 = v0[75];
        OUTLINED_FUNCTION_63_0();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(v1 + 8 * v6);
      ++v4;
      if (v3)
      {
        v4 = v6;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1D54E67AC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[75];
  v2 = v0[74];

  v3 = v0[80];
  v4 = v0[77];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54E681C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[75];
  v2 = v0[74];

  v3 = v0[83];
  v4 = v0[77];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54E688C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[75];
  v2 = v0[74];

  v3 = v0[91];
  v4 = v0[77];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54E6920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  return sub_1D54E68FC();
}

uint64_t sub_1D54E6934()
{
  v1 = v0;
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v2 = *(v0 + 136);
  if (!v2)
  {
LABEL_12:
    sub_1D53A4820(v1 + 120);
    v21 = *(v1 + 152);
    v22 = *(v1 + 160);
    v23 = *(v1 + 168);
    v24 = *(v1 + 176);
    sub_1D4EA7420(*(v1 + 144));

    v25 = *(v1 + 216);

    swift_defaultActor_destroy();
    return v1;
  }

  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v3 = *(v0 + 216);
  OUTLINED_FUNCTION_146();
  v4 = swift_beginAccess();
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  MEMORY[0x1EEE9AC00](v4);
  _s9StatementCMa();
  v29[0] = v5;
  v29[1] = v6;
  v29[2] = v7;
  v29[3] = sub_1D54E6D88;
  v29[4] = swift_getKeyPath();
  v26 = *(v1 + 112);
  v27 = *(v1 + 113);

  v28 = sub_1D54E4BD0(v8);

  sub_1D4EF3128(v29);
  result = sub_1D4E62628(v28);
  if (!result)
  {
LABEL_9:

    if (!(v26 & 1 | ((v27 & 1) == 0)))
    {
      OUTLINED_FUNCTION_146();
      sqlite3_exec(v13, v14, v15, v16, 0);
      OUTLINED_FUNCTION_146();
      sqlite3_exec(v17, v18, v19, v20, 0);
    }

    sqlite3_close_v2(v2);

    goto LABEL_12;
  }

  v10 = result;
  if (result >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6EB9B0](i, v28);
      }

      else
      {
        v12 = *(v28 + 8 * i + 32);
      }

      sub_1D54F634C();
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54E6BB4()
{
  sub_1D54E6934();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t getEnumTagSinglePayload for AudioAnalysis.Statistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1D54E6C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  sub_1D523FAF8(MEMORY[0x1E69E7CC0]);

  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  LOBYTE(__src[6]) = a5 & 1;
  __src[7] = a6;
  LOBYTE(__src[8]) = a7 & 1;
  __src[0] = a8;
  __src[1] = a10;
  sub_1D54FA7FC();

  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_1D54E6D3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  result = swift_getAtKeyPath();
  *a2 = v7;
  return result;
}

unint64_t sub_1D54E6D90()
{
  result = qword_1EDD54928[0];
  if (!qword_1EDD54928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD54928);
  }

  return result;
}

unint64_t sub_1D54E6DE4()
{
  result = qword_1EDD586B0;
  if (!qword_1EDD586B0)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD586B0);
  }

  return result;
}

uint64_t sub_1D54E6E38(uint64_t a1, uint64_t a2)
{
  v4 = _s16AttachedLocationVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54E6E9C(uint64_t a1)
{
  v2 = _s16AttachedLocationVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_74(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_25_64()
{
  *(v1 + 168) = 1;
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_28_66@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[81];
  v3 = v1[75];
  return *(v1[74] + a1);
}

uint64_t sub_1D54E6F54()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for SQLDatabase.Location(0);
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  sub_1D52FA270(v1, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v17, v2);
    v18 = sub_1D560BF08();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v19 = *v17;
    v20 = v17[1];
    sub_1D5615B68();

    MEMORY[0x1DA6EAC70](v19, v20);

    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568F810);
    return 0x3A656C6966;
  }

  return v18;
}

uint64_t sub_1D54E7104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for SQLDatabase.Location(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v37 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7750, &qword_1D566B198);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v37 - v25;
  v27 = (&v37 + *(v24 + 56) - v25);
  sub_1D52FA270(a1, &v37 - v25);
  sub_1D52FA270(a2, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D52FA270(v26, v21);
    v31 = *v21;
    v30 = v21[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v31 == *v27 && v30 == v27[1])
      {
        v35 = v27[1];
      }

      else
      {
        v33 = v27[1];
        v34 = sub_1D5616168();

        if ((v34 & 1) == 0)
        {
          sub_1D52FA2D4(v26);
          goto LABEL_8;
        }
      }

      sub_1D52FA2D4(v26);
      v28 = 1;
      return v28 & 1;
    }

LABEL_7:
    sub_1D54E7CB8(v26);
LABEL_8:
    v28 = 0;
    return v28 & 1;
  }

  sub_1D52FA270(v26, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v19, v4);
    goto LABEL_7;
  }

  (*(v7 + 32))(v12, v27, v4);
  v28 = sub_1D560BFB8();
  v29 = *(v7 + 8);
  v29(v12, v4);
  v29(v19, v4);
  sub_1D52FA2D4(v26);
  return v28 & 1;
}

uint64_t sub_1D54E73DC()
{
  v1 = sub_1D560C0A8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for SQLDatabase.Location(0);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  sub_1D52FA270(v0, v15 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v9, v16, v1);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D54E7D20(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    return (*(v4 + 8))(v9, v1);
  }

  else
  {
    v18 = *v16;
    v19 = v16[1];
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
  }
}

uint64_t sub_1D54E7594(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E75BC, 0, 0);
}

uint64_t sub_1D54E75BC()
{
  v1 = *(v0 + 32);
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  if (sub_1D4E62628(MEMORY[0x1E69E7CC0]))
  {
    sub_1D5011C30(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_transactions) = v3;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_isDeserialized) = 0;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations) = v2;
  v8 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions;
  _s14ScalarFunctionCMa();
  *(v4 + v8) = sub_1D5614BD8();
  v9 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
  _s13TableFunctionCMa();
  *(v4 + v9) = sub_1D5614BD8();
  sub_1D52FA270(v7, v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_location);
  v10 = v4 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_options;
  *v10 = v5;
  *(v10 + 8) = v6;
  _s10ConnectionCMa();
  swift_allocObject();

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1D54E778C;
  v12 = *(v0 + 32);

  return sub_1D54E5260();
}

uint64_t sub_1D54E778C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;
  *(*v2 + 48) = v3;

  sub_1D54E7D20(qword_1EDD57FC0, type metadata accessor for SQLDatabase);
  swift_getObjectType();
  v10 = sub_1D5615338();
  if (v3)
  {
    v11 = sub_1D54E79A4;
  }

  else
  {
    *(v5 + 56) = a1;
    v11 = sub_1D54E7920;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1D54E7920()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_1D52FA2D4(v0[2]);
  v3 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection) = v1;

  v4 = v0[1];
  v5 = v0[4];

  return v4(v5);
}

uint64_t sub_1D54E79A4()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1D52FA2D4(v2);
  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_1D54E7A14()
{
  sub_1D52FA2D4(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_location);
  v1 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);

  v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_transactions);

  v3 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_attachedLocations);

  v4 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_scalarFunctions);

  v5 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D54E7A94()
{
  sub_1D54E7A14();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D54E7AE8()
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54E7BD4()
{
  result = sub_1D54E7C48();
  if (v1 <= 0x3F)
  {
    result = sub_1D560C0A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54E7C48()
{
  result = qword_1EDD528C8;
  if (!qword_1EDD528C8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDD528C8);
  }

  return result;
}

uint64_t sub_1D54E7CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7750, &qword_1D566B198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D54E7D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D54E7D88()
{
  result = qword_1EC7F7758;
  if (!qword_1EC7F7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7758);
  }

  return result;
}

unint64_t sub_1D54E7DEC()
{
  result = qword_1EC7F7760;
  if (!qword_1EC7F7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7760);
  }

  return result;
}

unint64_t sub_1D54E7E50()
{
  result = qword_1EC7F7768;
  if (!qword_1EC7F7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7768);
  }

  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D54E7EBC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[12])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_1D54E7EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D54E7F4C()
{
  result = qword_1EC7F7770;
  if (!qword_1EC7F7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7770);
  }

  return result;
}

uint64_t sub_1D54E7FA0(uint64_t a1, unsigned int a2)
{
  if ((a1 & 1) == 0)
  {
    v2 = 1;
    if ((a1 & 0x100000000) == 0)
    {
      return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
    }

LABEL_5:
    v2 |= 0x10u;
    return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
  }

  if ((a1 & 0x100) != 0)
  {
    v2 = 14;
    v3 = 6;
  }

  else
  {
    v2 = 10;
    v3 = 2;
  }

  if ((a1 & 0x10000) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  return (v2 | (HIBYTE(a2) << 20)) + 0x100000;
}

uint64_t sub_1D54E7FE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = a3 >> 8;
  OUTLINED_FUNCTION_27_0(&unk_1D566B3C0);
  v8 = v5;
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_1D54E8098;

  return v8(v4);
}

uint64_t sub_1D54E8098()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    v11 = HIWORD(v3[3]) & 1;
    OUTLINED_FUNCTION_27_0(&unk_1D566B3C8);
    v15 = v12;
    v13 = swift_task_alloc();
    v3[5] = v13;
    *v13 = v7;
    v13[1] = sub_1D54E8210;
    v14 = v3[2];

    return v15(v11);
  }
}

uint64_t sub_1D54E8210()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    v11 = v3[3];
    OUTLINED_FUNCTION_27_0(&unk_1D566B3D0);
    v16 = v12;
    v13 = swift_task_alloc();
    v3[6] = v13;
    *v13 = v7;
    v13[1] = sub_1D54E8380;
    v14 = HIBYTE(v11) & 1;
    v15 = v3[2];

    return v16(v14);
  }
}

uint64_t sub_1D54E8380()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    v11 = *(v3 + 64);
    OUTLINED_FUNCTION_27_0(&unk_1D566B3D8);
    v15 = v12;
    v13 = swift_task_alloc();
    *(v3 + 56) = v13;
    *v13 = v7;
    v13[1] = sub_1D54E84F4;
    v14 = *(v3 + 16);

    return v15(v11 & 1);
  }
}

uint64_t sub_1D54E84F4()
{
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D54E85DC()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D54E8628(char a1)
{
  result = 0x4554454C4544;
  switch(a1)
  {
    case 1:
      result = 0x455441434E555254;
      break;
    case 2:
      result = 0x54534953524550;
      break;
    case 3:
      result = 0x59524F4D454DLL;
      break;
    case 4:
      result = 4997463;
      break;
    case 5:
      result = 4605519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54E86C0()
{
  v0 = sub_1D5615EF8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D54E8714(char a1)
{
  if (a1)
  {
    return 0x564953554C435845;
  }

  else
  {
    return 0x4C414D524F4ELL;
  }
}

uint64_t sub_1D54E874C(unint64_t a1, int a2, unint64_t a3, int a4)
{
  result = 0;
  if (((a1 ^ a3) & 1) == 0 && ((a1 >> 8) & 1) == ((a3 >> 8) & 1) && ((a1 >> 16) & 1) == ((a3 >> 16) & 1) && ((a1 >> 24) & 1) == ((a3 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a3) & 1) && ((a1 >> 40) & 1) == ((a3 >> 40) & 1) && (HIWORD(a1) & 1) == (HIWORD(a3) & 1) && (HIBYTE(a1) & 1) == (HIBYTE(a3) & 1))
  {
    v6 = BYTE1(a4);
    v7 = BYTE2(a2);
    v8 = a2 ^ a4;
    if (((a2 ^ a4) & 1) == 0)
    {
      v9 = sub_1D54E8628(SBYTE1(a2));
      v11 = v10;
      if (v9 == sub_1D54E8628(v6) && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1D5616168();

        result = 0;
        if ((v14 & 1) == 0)
        {
          return result;
        }
      }

      return sub_1D4F3C198(v7 & 1) & (HIBYTE(v8) == 0);
    }
  }

  return result;
}

uint64_t sub_1D54E889C(uint64_t a1, char a2, unsigned int a3)
{
  v4 = a3 >> 8;
  MEMORY[0x1DA6EC0D0](a2 & 1);
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D54E8628(v4);
  sub_1D5614E28();

  sub_1D5614E28();

  return MEMORY[0x1DA6EC0D0](HIBYTE(a3));
}

uint64_t sub_1D54E8994(char a1, int a2)
{
  sub_1D56162D8();
  sub_1D54E889C(v5, a1 & 1, a2 & 0xFF01FF01);
  return sub_1D5616328();
}

uint64_t sub_1D54E8A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D54E85DC();
  *a2 = result;
  return result;
}

uint64_t sub_1D54E8A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8628(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D54E8A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D54E86C0();
  *a2 = result;
  return result;
}

uint64_t sub_1D54E8AB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54E8714(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D54E8AE4(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 | v6 | v8;
  if (a1[4])
  {
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  if (a1[5])
  {
    v11 = 0x10000000000;
  }

  else
  {
    v11 = 0;
  }

  if (a1[6])
  {
    v12 = 0x1000000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v10 | v11;
  if (a1[7])
  {
    v14 = 0x100000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 | v13 | v12;
  v16 = a1[8] & 1 | (a1[9] << 8);
  if (a1[10])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (a1[11] << 24);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  v19 = v3 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (a2[2])
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v21 = v19 | v20 | v7;
  if (a2[4])
  {
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
  }

  if (a2[5])
  {
    v23 = 0x10000000000;
  }

  else
  {
    v23 = 0;
  }

  if (a2[6])
  {
    v24 = 0x1000000000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v23;
  if (a2[7])
  {
    v26 = 0x100000000000000;
  }

  else
  {
    v26 = 0;
  }

  v27 = v21 | v25 | v24;
  v28 = a2[8] & 1 | (a2[9] << 8);
  if (a2[10])
  {
    v29 = 0x10000;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 | (a2[11] << 24);

  return sub_1D54E874C(v15 | v14, v18 | v16, v27 | v26, v30 | v28);
}

uint64_t sub_1D54E8C70()
{
  v0[1];
  v0[3];
  v0[4];
  v0[5];
  v0[6];
  v0[7];
  if (v0[10])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_1D54E8994(*v0 & 1, v1 | (v0[11] << 24) | v0[8] & 1 | (v0[9] << 8));
}

uint64_t sub_1D54E8D2C(uint64_t a1)
{
  v1[1];
  v1[3];
  v1[4];
  v1[5];
  v1[6];
  v1[7];
  if (v1[10])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D54E889C(a1, *v1 & 1, v2 | (v1[11] << 24) | v1[8] & 1 | (v1[9] << 8));
}

uint64_t sub_1D54E8DE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v13 = v0[10];
  v14 = v0[9];
  v10 = v0[11];
  sub_1D56162D8();
  if (v13)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  sub_1D54E889C(v15, v1 & 1, v11 | (v10 << 24) | v9 & 1 | (v14 << 8));
  return sub_1D5616328();
}

uint64_t sub_1D54E8F04(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E8F28, 0, 0);
}

uint64_t sub_1D54E8F28()
{
  OUTLINED_FUNCTION_12_101();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24) >> 1;
  v5 = v3 + 1;
  if (v4 <= v3)
  {
    sub_1D4F0029C();
    v2 = v20;
    v4 = *(v20 + 24) >> 1;
  }

  v6 = *(v0 + 49);
  *(v2 + 16) = v5;
  v7 = v2 + 80 * v3;
  *(v7 + 32) = 0xD000000000000016;
  *(v7 + 40) = 0x80000001D568F890;
  *(v7 + 104) = 0;
  v8 = sub_1D54E8628(v6);
  v10 = v9;
  v11 = v3 + 2;

  if (v4 < v11)
  {
    sub_1D4F0029C();
    v2 = v21;
  }

  *(v2 + 16) = v11;
  v12 = v2 + 80 * v5;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  OUTLINED_FUNCTION_3_99(v12, v23, v25, v27, v29);

  v14 = *(v2 + 16);
  v13 = *(v2 + 24);
  if (v14 >= v13 >> 1)
  {
    OUTLINED_FUNCTION_25(v13);
    sub_1D4F0029C();
    v2 = v22;
  }

  *(v2 + 16) = v14 + 1;
  v15 = v2 + 80 * v14;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_99(v15, v24, v26, v28, v30);
  sub_1D54F08F4(v2, 0, 0, MEMORY[0x1E69E7CC0], v0 + 16);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_54_3(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_4_146(v17);

  return sub_1D54F2350();
}

uint64_t sub_1D54E90F4()
{
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  sub_1D51D2984(v2 + 16);
  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1D54E91E0(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E9204, 0, 0);
}

uint64_t sub_1D54E9204()
{
  OUTLINED_FUNCTION_12_101();
  OUTLINED_FUNCTION_2_185(v3);
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89(v24);
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v9 + 32) = v10;
  *(v9 + 40) = v2;
  *(v9 + 104) = 0;
  if (v5)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v5)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v0 + 2;
  if (v8 <= v1)
  {
    OUTLINED_FUNCTION_25(v6);
    sub_1D4F0029C();
    v7 = v25;
  }

  *(v7 + 16) = v13;
  v14 = v7 + 80 * v1;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  OUTLINED_FUNCTION_0_250(v14, v27, v29, v31, v33, v35);
  OUTLINED_FUNCTION_14_94();
  if (v4)
  {
    OUTLINED_FUNCTION_1_188();
    v15 = v26;
  }

  *(v15 + 16) = v1;
  v16 = v15 + 80 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_11_118(v17, v18, v19, MEMORY[0x1E69E7CC0]);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_54_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_4_146(v21);

  return sub_1D54F2350();
}

uint64_t sub_1D54E9368(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E938C, 0, 0);
}

uint64_t sub_1D54E938C()
{
  OUTLINED_FUNCTION_12_101();
  OUTLINED_FUNCTION_2_185(v3);
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89(v24);
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v9 + 32) = v10;
  *(v9 + 40) = v2;
  *(v9 + 104) = 0;
  if (v5)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v5)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v0 + 2;
  if (v8 <= v1)
  {
    OUTLINED_FUNCTION_25(v6);
    sub_1D4F0029C();
    v7 = v25;
  }

  *(v7 + 16) = v13;
  v14 = v7 + 80 * v1;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  OUTLINED_FUNCTION_0_250(v14, v27, v29, v31, v33, v35);
  OUTLINED_FUNCTION_14_94();
  if (v4)
  {
    OUTLINED_FUNCTION_1_188();
    v15 = v26;
  }

  *(v15 + 16) = v1;
  v16 = v15 + 80 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_11_118(v17, v18, v19, MEMORY[0x1E69E7CC0]);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_54_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_4_146(v21);

  return sub_1D54F2350();
}

uint64_t sub_1D54E94F0(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54E9514, 0, 0);
}

uint64_t sub_1D54E9514()
{
  OUTLINED_FUNCTION_12_101();
  OUTLINED_FUNCTION_2_185(v3);
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_1_188();
    OUTLINED_FUNCTION_17_89(v24);
  }

  OUTLINED_FUNCTION_16_92();
  OUTLINED_FUNCTION_15_92();
  *(v9 + 32) = v10;
  *(v9 + 40) = v2;
  *(v9 + 104) = 0;
  if (v5)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v5)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v0 + 2;
  if (v8 <= v1)
  {
    OUTLINED_FUNCTION_25(v6);
    sub_1D4F0029C();
    v7 = v25;
  }

  *(v7 + 16) = v13;
  v14 = v7 + 80 * v1;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  OUTLINED_FUNCTION_0_250(v14, v27, v29, v31, v33, v35);
  OUTLINED_FUNCTION_14_94();
  if (v4)
  {
    OUTLINED_FUNCTION_1_188();
    v15 = v26;
  }

  *(v15 + 16) = v1;
  v16 = v15 + 80 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_250(v16, v28, v30, v32, v34, v36);
  OUTLINED_FUNCTION_11_118(v17, v18, v19, MEMORY[0x1E69E7CC0]);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_54_3(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_4_146(v21);

  return sub_1D54F2350();
}

_BYTE *sub_1D54E9678(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D54E975C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D54E9834(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54E9910()
{
  result = qword_1EC7F7778;
  if (!qword_1EC7F7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7778);
  }

  return result;
}

unint64_t sub_1D54E9968()
{
  result = qword_1EC7F7780;
  if (!qword_1EC7F7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7780);
  }

  return result;
}

unint64_t sub_1D54E99C0()
{
  result = qword_1EC7F7788;
  if (!qword_1EC7F7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7788);
  }

  return result;
}

unint64_t sub_1D54E9A18()
{
  result = qword_1EC7F7790;
  if (!qword_1EC7F7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7790);
  }

  return result;
}

uint64_t _s16AttachedLocationVMa()
{
  result = qword_1EDD58248;
  if (!qword_1EDD58248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54E9AE8()
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D54E9B64()
{
  v1 = sub_1D560C0A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SQLDatabase.Location(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s16AttachedLocationVMa();
  sub_1D52FA270(v0 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    v11 = sub_1D560BF08();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v12 = *v9;
    v13 = v9[1];
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1D5615B68();

    v15 = 0x3A656C6966;
    v16 = 0xE500000000000000;
    MEMORY[0x1DA6EAC70](v12, v13);

    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568F810);
    return v15;
  }

  return v11;
}

uint64_t sub_1D54E9DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_1_16(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v18 - v14;
  result = (*(a3 + 64))(a2, a3);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 24) + 16) + 16))(a1, v3);
    return (*(v11 + 8))(v15, v3);
  }

  return result;
}

uint64_t sub_1D54E9F34()
{
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);
  return 39;
}

uint64_t sub_1D54E9F80(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x564953554C435845;
  }

  else
  {
    v2 = 0x4C414D524F4ELL;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000045;
  }

  MEMORY[0x1DA6EAC70](v2, v3);
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);

  return 39;
}

uint64_t sub_1D54EA00C(char a1)
{
  v1 = sub_1D54EAC5C(a1);
  MEMORY[0x1DA6EAC70](v1);
  MEMORY[0x1DA6EAC70](39, 0xE100000000000000);

  return 39;
}

uint64_t sub_1D54EA0D8()
{
  sub_1D560C208();
  sub_1D5615568();
  return 0;
}

uint64_t sub_1D54EA160(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_1_16(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  (*(a2 + 64))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(*(AssociatedConformanceWitness + 8) + 16))(v2);
  (*(v8 + 8))(v12, v2);
  return v14;
}

uint64_t sub_1D54EA2CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_251();
  WitnessTable = swift_getWitnessTable();
  return sub_1D54E9DD8(a1, a2, WitnessTable);
}

uint64_t sub_1D54EA330(sqlite3_context *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1D54E9D60(a1);
}

const char *sub_1D54EA378(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 32);
  swift_unknownObjectRetain();
  result = v10(a3, a4);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    return sqlite3_bind_pointer(a1, a2, v5, result, sub_1D54EA518);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D54EA46C(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 32);
  swift_unknownObjectRetain();
  v9 = v8(a2, a3);
  if (v10)
  {
    __break(1u);
  }

  else if (v9)
  {
    sqlite3_result_pointer(a1, v4, v9, sub_1D54EA514);
    return;
  }

  __break(1u);
}

uint64_t sub_1D54EA508(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_1D54EA538(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 1;
  }

  else if (a1)
  {
    if (qword_1EDD5D8A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D560C758();
    __swift_project_value_buffer(v4, qword_1EDD76DB0);
    v5 = sub_1D560C738();
    v6 = sub_1D56156C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      type metadata accessor for ICExplicitContentTreatment();
      v9 = sub_1D5614DB8();
      v11 = sub_1D4E6835C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D4E3F000, v5, v6, "Unknown ICExplicitContentTreatment: %{public}s. Treating as .none.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1DA6ED200](v8, -1, -1);
      MEMORY[0x1DA6ED200](v7, -1, -1);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}