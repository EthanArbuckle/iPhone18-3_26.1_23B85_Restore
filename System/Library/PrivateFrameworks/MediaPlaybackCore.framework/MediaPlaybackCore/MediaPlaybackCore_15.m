uint64_t sub_1C5DC3648(uint64_t result)
{
  if (*(v1 + 72))
  {
    if ((*(result + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_151();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_87();
      v2 = OUTLINED_FUNCTION_38_8();
      sub_1C5DC0224(v2, v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DC370C(uint64_t result, double a2)
{
  if (*(v2 + 72))
  {
    v3 = result;
    sub_1C5CDAF64(v2 + 88, v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    OUTLINED_FUNCTION_5_24();
    MEMORY[0x1C69534E0](0xD000000000000019);
    sub_1C5DC1508();
    sub_1C6016D10();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v5);
    if ((*(v3 + 32) & 1) == 0)
    {
      return sub_1C5DC1E2C(*(v3 + 33), *v3, *(v3 + 8), a2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DC3828(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1C5DC3870()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    sub_1C5DE4570();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DC38D8()
{
  OUTLINED_FUNCTION_131();
  v2 = v0;
  v3 = v1;
  if (*(v0 + 72))
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[4];
    v7 = v1[6];
    v8 = v1[7];
    v9 = v1[8];
    v10 = *(v2 + 80);
    switch((v9 >> 58) & 0x3C | (v9 >> 1) & 3)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 0xCuLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x18uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1EuLL:
      case 0x1FuLL:
      case 0x20uLL:
      case 0x21uLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
        v11 = v1[4];
        v12 = v1[3];
        v13 = v1[5];
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_69_6();
        *(&v195 + 1) = v12;
        *&v196 = v11;
        *(&v196 + 1) = v13;
        *&v197 = v7;
        *(&v197 + 1) = v8;
        v198 = v9;
        goto LABEL_5;
      case 8uLL:
        OUTLINED_FUNCTION_42_8();
        sub_1C5DC45D4(v4);
        goto LABEL_21;
      case 9uLL:
        v79 = v1[3];
        v80 = v1[5];
        v169 = v1[6];
        v81 = v2;
        swift_unknownObjectRetain();
        sub_1C5DBE948();
        *(v81 + 152) = 0;
        *(v81 + 160) = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_71_3();
        *(&v195 + 1) = v79;
        *&v196 = v6;
        *(&v196 + 1) = v80;
        goto LABEL_35;
      case 0xAuLL:
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_65_8();
        sub_1C5DC4968(v77, v78);
        goto LABEL_29;
      case 0xBuLL:
        swift_unknownObjectRetain();
        v46 = OUTLINED_FUNCTION_65_8();
        sub_1C5DC4F0C(v47, v48, v46);
LABEL_29:
        if (*(&__src[3] + 1) >> 1 == 0xFFFFFFFFLL && (*&__src[4] & 0xF000000000000007) == 0)
        {
          goto LABEL_8;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          *v194 = __src[0];
          v195 = __src[1];
          v196 = __src[2];
          v197 = __src[3];
          v198 = *&__src[4];
          v199 = 1;
          memcpy(__dst, __src, 0x48uLL);
          sub_1C5D5D5AC(__dst, &v185);
          sub_1C5C89DB4(v194);
          swift_unknownObjectRelease();
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
          swift_unknownObjectRelease();
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
        }

        else
        {
          sub_1C5DC9938(__src, qword_1ED7DFBD8, &type metadata for PlayerEvent);
LABEL_49:
          swift_unknownObjectRelease();
        }

LABEL_51:
        OUTLINED_FUNCTION_130();
        break;
      case 0xDuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x17uLL:
        v15 = v1[8];
        v16 = v1[1];
        v17 = *v1;
        v18 = v1[4];
        v19 = v1[2];
        v20 = v1[3];
        v21 = v1[5];
        v22 = v1[6];
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        *v194 = v17;
        *&v194[8] = v16;
        *&v195 = v19;
        *(&v195 + 1) = v20;
        *&v196 = v18;
        *(&v196 + 1) = v21;
        *&v197 = v22;
        *(&v197 + 1) = v8;
        v198 = v15;
LABEL_5:
        v199 = 1;
        goto LABEL_6;
      case 0x11uLL:
        v82 = v1[3];
        v83 = v1[5];
        *(v2 + 152) = 0;
        *(v2 + 160) = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_69_6();
        *(&v195 + 1) = v82;
        *&v196 = v6;
        *(&v196 + 1) = v83;
        OUTLINED_FUNCTION_29_13(v84, v85, v86, v87, v88, v89, v90, v91, v152, v154, v156, v159, v162, v166, v7);
LABEL_6:
        swift_unknownObjectRetain();
        goto LABEL_7;
      case 0x15uLL:
        v165 = v1[2];
        v168 = v1[3];
        v158 = v1[7];
        v172 = v1[6];
        v176 = v1[5];
        if (*(v2 + 160))
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_1C5D8B86C(v6, v176);

          v155 = v9;
        }

        else
        {
          v92 = *(v2 + 152);
          *(v2 + 152) = 0;
          *(v2 + 160) = 1;
          OUTLINED_FUNCTION_11_20();
          v153 = v93;
          swift_unknownObjectRetain();
          sub_1C5D8B86C(v6, v176);
          sub_1C6017540();
          OUTLINED_FUNCTION_49_6();
          *&__src[0] = v94;
          *(&__src[0] + 1) = v95;
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          v96 = MEMORY[0x1C69534E0]();
          OUTLINED_FUNCTION_0_65(v96, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
          v97 = OUTLINED_FUNCTION_56_6();
          v98 = MEMORY[0x1E69E63B0];
          *(v97 + 16) = xmmword_1C60311E0;
          v99 = OUTLINED_FUNCTION_13_11(v97, v98);
          MEMORY[0x1C69534E0](v99);

          v200.value = MEMORY[0x1C69534E0](544175136, 0xE400000000000000);
          v200.is_nil = v92;
          DefaultStringInterpolation.appendInterpolation(time:)(v200);
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          OUTLINED_FUNCTION_13_25();
          v101 = v100();
          OUTLINED_FUNCTION_12_29(v101, v102, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_10_0(v103);
          OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
          v104 = sub_1C5DC95A4(__src);
          OUTLINED_FUNCTION_26_14(v104, v105, v106, v107, v108, v109, v110, v111, v153, v154, v158, v5, v165, v168, v7, v176, v177, v178, v179, v180, v181, v182, v183, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v185, *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192, *&__src[0]);
          sub_1C5DC3838();
          v5 = v161;

          *(v172 + 16) = v92;
          swift_unknownObjectRetain();

          v8 = 0;
          v155 = 0x5000000000000002;
        }

        sub_1C5DC4550();
        v113 = v112;
        ObjectType = swift_getObjectType();
        if (v113 != (*(v10 + 16))(ObjectType, v10))
        {
          *&__src[0] = 0;
          *(&__src[0] + 1) = 0xE000000000000000;
          sub_1C6017540();
          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          MEMORY[0x1C69534E0]();
          v115 = sub_1C5D5F72C();
          MEMORY[0x1C69534E0](v115);

          v116 = OUTLINED_FUNCTION_17_20();
          MEMORY[0x1C69534E0](v116, 0xE90000000000003ALL);
          sub_1C5DBDE9C();
          v117 = sub_1C6016870();
          v119 = v118;

          MEMORY[0x1C69534E0](v117, v119);

          *__dst = __src[0];
          sub_1C5D45B74(__dst);
          memcpy(__src, __dst, 0xD9uLL);
          sub_1C5DC3838();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          *__dst = v4;
          *&__dst[8] = v5;
          *&__dst[16] = v165;
          *&__dst[24] = v168;
          *&__dst[32] = v6;
          *&__dst[40] = v176;
          *&__dst[48] = v172;
          *&__dst[56] = v8;
          *&__dst[64] = v155;
          __dst[72] = 1;
          *&v185 = v4;
          *(&v185 + 1) = v5;
          v186 = v165;
          v187 = v168;
          v188 = v6;
          v189 = v176;
          v190 = v172;
          v191 = v158;
          v192 = v9 & 0xFFFFFFFFFFFFFF9;
          sub_1C5DC99A8(&v185, &v177);
          sub_1C5C89DB4(__dst);
          sub_1C5D7EF0C(v3);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_1C5D7EF0C(v3);
        goto LABEL_51;
      case 0x16uLL:
        OUTLINED_FUNCTION_72_3();
        *(v57 + 152) = *(v6 + 16);
        *(v57 + 160) = 0;
        OUTLINED_FUNCTION_11_20();
        swift_unknownObjectRetain();
        sub_1C6017540();
        OUTLINED_FUNCTION_49_6();
        *__dst = v58;
        *&__dst[8] = v59;
        v60 = MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6051E60);
        OUTLINED_FUNCTION_0_65(v60, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
        v61 = OUTLINED_FUNCTION_56_6();
        v62 = MEMORY[0x1E69E63B0];
        *(v61 + 16) = xmmword_1C60311E0;
        v63 = OUTLINED_FUNCTION_13_11(v61, v62);
        MEMORY[0x1C69534E0](v63);

        MEMORY[0x1C69534E0](0xD00000000000001ELL, 0x80000001C6052810);
        swift_getObjectType();
        OUTLINED_FUNCTION_13_25();
        v65 = v64();
        OUTLINED_FUNCTION_12_29(v65, v66, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_10_0(v67);
        OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
        __src[0] = *__dst;
        v68 = sub_1C5DC95A4(__src);
        OUTLINED_FUNCTION_26_14(v68, v69, v70, v71, v72, v73, v74, v75, v152, v154, v156, v159, v162, v166, v169, v173, v177, v178, v179, v180, v181, v182, v183, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v185, *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192, *&__src[0]);
        sub_1C5DC3838();

        goto LABEL_24;
      case 0x19uLL:
        v23 = v1[7];
        v163 = *(v1 + 1);
        v170 = v1[6];
        v174 = v1[5];
        if ((v5 & 0x7FFFFFFF) != 0)
        {
          swift_unknownObjectRetain();
        }

        else
        {
          *(v2 + 152) = *(v1[2] + 16);
          *(v2 + 160) = 0;
          OUTLINED_FUNCTION_11_20();
          swift_unknownObjectRetain();
          sub_1C6017540();
          OUTLINED_FUNCTION_49_6();
          *&__src[0] = v120;
          *(&__src[0] + 1) = v121;
          OUTLINED_FUNCTION_48_7();
          v122 = MEMORY[0x1C69534E0](0xD000000000000038);
          OUTLINED_FUNCTION_0_65(v122, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
          v123 = OUTLINED_FUNCTION_56_6();
          v124 = MEMORY[0x1E69E63B0];
          *(v123 + 16) = xmmword_1C60311E0;
          v125 = OUTLINED_FUNCTION_13_11(v123, v124);
          MEMORY[0x1C69534E0](v125);

          OUTLINED_FUNCTION_8_31();
          OUTLINED_FUNCTION_48_7();
          MEMORY[0x1C69534E0]();
          swift_getObjectType();
          OUTLINED_FUNCTION_13_25();
          v127 = v126();
          OUTLINED_FUNCTION_12_29(v127, v128, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_10_0(v129);
          OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
          v130 = sub_1C5DC95A4(__src);
          OUTLINED_FUNCTION_26_14(v130, v131, v132, v133, v134, v135, v136, v137, v152, v154, v156, v5, v163, *(&v163 + 1), v7, v174, v177, v178, v179, v180, v181, v182, v183, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v185, *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192, *&__src[0]);
          sub_1C5DC3838();
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_49;
        }

        *&__src[0] = v4;
        *(&__src[0] + 1) = v5;
        __src[1] = v163;
        *&__src[2] = v6;
        *(&__src[2] + 1) = v174;
        *&__src[3] = v170;
        *(&__src[3] + 1) = v23;
        *&__src[4] = v9;
        BYTE8(__src[4]) = 1;
        v76 = __src;
        goto LABEL_47;
      case 0x1DuLL:
        OUTLINED_FUNCTION_72_3();
        if (v8)
        {
          *(v24 + 152) = v6;
          *(v24 + 160) = 0;
        }

        sub_1C5CDAF64(v24 + 88, __dst);
        __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
        OUTLINED_FUNCTION_11_20();
        swift_unknownObjectRetain();
        sub_1C6017540();
        OUTLINED_FUNCTION_49_6();
        *&v185 = v25;
        *(&v185 + 1) = v26;
        OUTLINED_FUNCTION_8_31();
        v29 = MEMORY[0x1C69534E0](v27 - 30, v28 | 0x8000000000000000);
        OUTLINED_FUNCTION_0_65(v29, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740]);
        v30 = OUTLINED_FUNCTION_56_6();
        v31 = MEMORY[0x1E69E63B0];
        *(v30 + 16) = xmmword_1C60311E0;
        v32 = MEMORY[0x1E69E6438];
        *(v30 + 56) = v31;
        *(v30 + 64) = v32;
        *(v30 + 32) = v6;
        v33 = sub_1C6016960();
        MEMORY[0x1C69534E0](v33);

        OUTLINED_FUNCTION_1_54();
        OUTLINED_FUNCTION_32_6();
        swift_getObjectType();
        OUTLINED_FUNCTION_13_25();
        v35 = v34();
        OUTLINED_FUNCTION_12_29(v35, v36, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_10_0(v37);
        OUTLINED_FUNCTION_80_4(&qword_1ED7E0200, MEMORY[0x1E69E7CA0]);
        __src[0] = v185;
        v38 = sub_1C5DC95A4(__src);
        OUTLINED_FUNCTION_26_14(v38, v39, v40, v41, v42, v43, v44, v45, v152, v154, v156, v159, v162, v166, v169, v173, v177, v178, v179, v180, v181, v182, v183, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v185, *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192, *&__src[0]);
        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(__dst);
LABEL_24:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_49;
        }

        *__dst = v4;
        *&__dst[8] = v160;
        *&__dst[16] = v164;
        *&__dst[24] = v167;
        *&__dst[32] = v6;
        *&__dst[40] = v175;
        *&__dst[48] = v171;
        *&__dst[56] = v157;
        *&__dst[64] = v9;
        __dst[72] = 1;
        v76 = __dst;
LABEL_47:
        sub_1C5C89DB4(v76);
        swift_unknownObjectRelease();
        goto LABEL_49;
      default:
        OUTLINED_FUNCTION_42_8();
        sub_1C5DBEC50();
LABEL_21:
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_71_3();
        *(&v195 + 1) = v10;
        *&v196 = v6;
        *(&v196 + 1) = v3;
LABEL_35:
        OUTLINED_FUNCTION_29_13(v49, v50, v51, v52, v53, v54, v55, v56, v152, v154, v156, v159, v162, v166, v169);
LABEL_7:
        sub_1C5C89DB4(v194);
        swift_unknownObjectRelease();
LABEL_8:
        OUTLINED_FUNCTION_130();

        swift_unknownObjectRelease();
        return;
    }
  }

  else
  {
    *v194 = 0;
    *&v194[8] = 0xE000000000000000;
    sub_1C6017540();
    OUTLINED_FUNCTION_49_6();
    *__dst = v138;
    *&__dst[8] = v139;
    OUTLINED_FUNCTION_8_31();
    MEMORY[0x1C69534E0](v140 + 26, v141 | 0x8000000000000000);
    v142 = sub_1C5D5F72C();
    MEMORY[0x1C69534E0](v142);

    v143 = OUTLINED_FUNCTION_17_20();
    MEMORY[0x1C69534E0](v143, 0xE90000000000003ALL);
    sub_1C5DBDE9C();
    sub_1C6016870();

    OUTLINED_FUNCTION_82_3();

    __src[0] = *__dst;
    v144 = sub_1C5D45B74(__src);
    OUTLINED_FUNCTION_26_14(v144, v145, v146, v147, v148, v149, v150, v151, v152, v154, v156, v159, v162, v166, v169, v173, v177, v178, v179, v180, v181, v182, v183, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], v185, *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192, *&__src[0]);

    sub_1C5DC3838();

    __break(1u);
  }
}

void sub_1C5DC4550()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 80);
    swift_getObjectType();
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_10_28();
    v2(v3);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DC45D4(uint64_t result)
{
  if (!*(v1 + 72))
  {
    goto LABEL_19;
  }

  v3 = v1;
  v4 = result;
  v5 = *(v1 + 80);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  swift_unknownObjectRetain();
  sub_1C5DC78FC();
  v6 = sub_1C5DC6AA4();
  ObjectType = swift_getObjectType();
  if (v6)
  {
    v2 = ObjectType;
    swift_unknownObjectRelease();
    if (v6 == v4)
    {
LABEL_12:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v14 = Strong, swift_unknownObjectRelease(), v14 != v4))
      {
        swift_unknownObjectWeakAssign();
      }

      sub_1C5CDAF64(v3 + 88, v24);
      __swift_project_boxed_opaque_existential_0(v24, v24[3]);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      __src[0] = __dst[0];
      MEMORY[0x1C69534E0](0xD00000000000004ALL, 0x80000001C6052930);
      *(&__dst[1] + 1) = v2;
      *&__dst[0] = v4;
      swift_unknownObjectRetain();
      DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
      v15 = MEMORY[0x1E69E7CA0];
      sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1C69534E0](0x6D657469202D2029, 0xEA00000000003A73);
      v16 = swift_getObjectType();
      v17 = (*(v5 + 328))(v16, v5);
      v18 = sub_1C5C64D74(0, &qword_1ED7DCEA8);
      v19 = MEMORY[0x1C6953600](v17, v18);
      v21 = v20;

      MEMORY[0x1C69534E0](v19, v21);

      MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
      v22 = (*(v5 + 184))(v16, v5);
      *(&__dst[1] + 1) = MEMORY[0x1E69E6158];
      *&__dst[0] = v22;
      *(&__dst[0] + 1) = v23;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
      sub_1C5DC9938(__dst, &qword_1ED7E0200, v15 + 8);
      sub_1C5DC95A4(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      swift_unknownObjectRelease();
      v11 = v24;
      return __swift_destroy_boxed_opaque_existential_0(v11);
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    memset(__src, 0, 40);
    goto LABEL_10;
  }

  sub_1C5DE49B8(__src);
  swift_unknownObjectRelease();
  if (!*(&__src[1] + 1))
  {
LABEL_10:
    sub_1C5DC9B90(__src);
    v12 = sub_1C5DC6AA4();
    result = swift_unknownObjectRelease();
    if (!v12)
    {
      return result;
    }

    swift_unknownObjectRelease();
    __break(1u);
    goto LABEL_12;
  }

  sub_1C5C6BEFC(__src, __dst);
  v8 = *(&__dst[1] + 1);
  v9 = *&__dst[2];
  __swift_project_boxed_opaque_existential_0(__dst, *(&__dst[1] + 1));
  v10 = (*(v9 + 40))(v8, v9);

  result = swift_unknownObjectRelease();
  if (v10 != v4)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __dst;
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1C5DC4968@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(v2 + 72))
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  v4 = result;
  v27 = *(v2 + 80);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = sub_1C5DEA0B4();
  v8 = v7;
  if (!sub_1C5DC6AA4())
  {

    goto LABEL_10;
  }

  swift_getObjectType();
  v9 = sub_1C5DEA0B4();
  v11 = v10;
  swift_unknownObjectRelease();
  if (v6 != v9 || v8 != v11)
  {
    v13 = sub_1C6017860();

    if (v13)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1C5CDAF64(v3 + 88, v30);
    __swift_project_boxed_opaque_existential_0(v30, v30[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000070, 0x80000001C6052980);
    __dst[0] = v4;
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
    ObjectType = swift_getObjectType();
    v15 = (*(v27 + 184))(ObjectType);
    __dst[3] = MEMORY[0x1E69E6158];
    __dst[0] = v15;
    __dst[1] = v16;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_16:
    v4 = 0;
    v21 = 0;
    v22 = xmmword_1C6039DE0;
LABEL_17:
    *a2 = v4;
    *(a2 + 8) = v21;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = v22;
    return result;
  }

LABEL_12:
  sub_1C5CDAF64(v3 + 88, __src);
  __swift_project_boxed_opaque_existential_0(__src, __src[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v29[0] = __dst[0];
  v29[1] = __dst[1];
  MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6052A00);
  __dst[0] = v4;
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x79616C70202D2029, 0xEB000000003A7265);
  v17 = swift_getObjectType();
  v18 = *(v27 + 184);
  v26 = v17;
  v19 = v18();
  __dst[3] = MEMORY[0x1E69E6158];
  __dst[0] = v19;
  __dst[1] = v20;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  v30[0] = v29[0];
  v30[1] = v29[1];
  sub_1C5DC95A4(v30);
  memcpy(__dst, v30, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(__src);
  if (![v4 isFullyDownloaded])
  {
    result = swift_unknownObjectRelease();
    goto LABEL_16;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1C5DEA0B4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectWeakAssign();
  sub_1C5CDAF64(v3 + 88, v28);
  __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  v29[0] = __src[0];
  v29[1] = __src[1];
  MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C6052A40);
  __src[0] = v4;
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
  v23 = (v18)(v26, v27);
  __src[3] = MEMORY[0x1E69E6158];
  __src[0] = v23;
  __src[1] = v24;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__src, 7104878, 0xE300000000000000);
  sub_1C5DC9938(__src, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  sub_1C5DC95A4(v29);
  memcpy(__src, v29, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v28);
  result = (*(v27 + 8))(v26, v27);
  if (result)
  {
    v25 = result;
    v21 = sub_1C5D62DEC();
    swift_unknownObjectRelease();

    result = swift_unknownObjectRetain();
    v22 = xmmword_1C6041C20;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1C5DC4F0C(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (!*(v3 + 72))
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = v3;
  v48 = *(v3 + 80);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = sub_1C5DEA0B4();
  v10 = v9;
  if (!sub_1C5DC6AA4())
  {

    goto LABEL_10;
  }

  swift_getObjectType();
  v11 = sub_1C5DEA0B4();
  v13 = v12;
  swift_unknownObjectRelease();
  if (v8 == v11 && v10 == v13)
  {

    goto LABEL_12;
  }

  v15 = sub_1C6017860();

  if ((v15 & 1) == 0)
  {
LABEL_10:
    sub_1C5CDAF64(v4 + 88, v51);
    __swift_project_boxed_opaque_existential_0(v51, v51[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000077, 0x80000001C6052A80);
    __dst[0] = a1;
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
    ObjectType = swift_getObjectType();
    v17 = (*(v48 + 184))(ObjectType);
    __dst[3] = MEMORY[0x1E69E6158];
    __dst[0] = v17;
    __dst[1] = v18;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5DC95A4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v51);
LABEL_32:
    a1 = 0;
    v43 = 0;
    v44 = xmmword_1C6039DE0;
    goto LABEL_33;
  }

LABEL_12:
  v19 = [a1 avPlayerItem];
  if (!v19)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v20 = v19;
  sub_1C5CDAF64(v4 + 88, v54);
  __swift_project_boxed_opaque_existential_0(v54, v54[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v52 = __dst[0];
  v53 = __dst[1];
  MEMORY[0x1C69534E0](0xD00000000000002CLL, 0x80000001C6052B00);
  sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E63B0];
  *(v21 + 16) = xmmword_1C60311E0;
  v23 = MEMORY[0x1E69E6438];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = a3;
  v24 = sub_1C6016960();
  MEMORY[0x1C69534E0](v24);

  MEMORY[0x1C69534E0](543584032, 0xE400000000000000);
  v25 = [a1 avPlayerItem];
  v27 = v25;
  if (v25)
  {
    [v25 duration];

    sub_1C6017220();
    LOBYTE(v25) = v26;
  }

  DefaultStringInterpolation.appendInterpolation(time:)(*(&v25 - 1));
  MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C6052B30);
  v28 = sub_1C5D63CFC();
  MEMORY[0x1C69534E0](v28);

  MEMORY[0x1C69534E0](0x3A6D657469202D20, 0xE800000000000000);
  __dst[0] = a1;
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
  v29 = swift_getObjectType();
  v46 = *(v48 + 184);
  v30 = v46();
  __dst[3] = MEMORY[0x1E69E6158];
  __dst[0] = v30;
  __dst[1] = v31;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  v51[0] = v52;
  v51[1] = v53;
  sub_1C5DC95A4(v51);
  memcpy(__dst, v51, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v54);
  if (![a1 isFullyDownloaded])
  {
    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  v45 = v29;
  v47 = v20;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v32 = sub_1C5DEA0B4();
    v34 = v33;
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_1C5DEA0B4();
  if (v34)
  {
    if (v32 == v35 && v34 == v36)
    {
      swift_unknownObjectRelease();

      goto LABEL_32;
    }

    v38 = sub_1C6017860();

    if (v38)
    {
      swift_unknownObjectRelease();

      goto LABEL_32;
    }
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
  sub_1C5CDAF64(v4 + 88, v49);
  __swift_project_boxed_opaque_existential_0(v49, v49[3]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  v50[0] = __src[0];
  v50[1] = __src[1];
  MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6052B50);
  __src[0] = a1;
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
  v39 = (v46)(v45, v48);
  __src[3] = MEMORY[0x1E69E6158];
  __src[0] = v39;
  __src[1] = v40;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__src, 7104878, 0xE300000000000000);
  sub_1C5DC9938(__src, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  sub_1C5DC95A4(v50);
  memcpy(__src, v50, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v49);
  v41 = (*(v48 + 8))(v45, v48);
  if (v41)
  {
    v42 = v41;
    v43 = sub_1C5D62DEC();
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    v44 = xmmword_1C6041C20;
LABEL_33:
    *a2 = a1;
    *(a2 + 8) = v43;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = v44;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1C5DC5720()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5DE4794();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DC57AC(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void sub_1C5DC57BC()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  ObjectType = *(v0 + 72);
  if (!ObjectType)
  {
    sub_1C5CDAF64(v0 + 88, __src);
    OUTLINED_FUNCTION_66_8(__src, __src[3]);
    OUTLINED_FUNCTION_19_22();
    sub_1C6017540();
    OUTLINED_FUNCTION_74_3();
    __dst[0] = v13;
    __dst[1] = v14;
    MEMORY[0x1C69534E0](0xD000000000000057, 0x80000001C6052B90);
    v15 = sub_1C5D2AA10(0, qword_1ED7DF160);
    v16 = MEMORY[0x1C6953600](v4, v15);
    MEMORY[0x1C69534E0](v16);

    *v112 = __dst[0];
    *&v112[8] = __dst[1];
    sub_1C5DC95A4(v112);
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_81_5();

    __swift_destroy_boxed_opaque_existential_0(__src);
    goto LABEL_92;
  }

  v6 = v1;
  v7 = *(v0 + 80);
  swift_unknownObjectRetain();
  if (v6)
  {
    v8 = sub_1C5CFBC58(v4);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 contentItemID];
      swift_unknownObjectRelease();
      v9 = sub_1C6016940();
      v12 = v11;

      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = 0;
LABEL_8:
  *(v2 + 216) = v9;
  *(v2 + 224) = v12;

  v17 = sub_1C5C6AA20();
  v18 = MEMORY[0x1E69E7CA0];
  if (v17)
  {
    v19 = v17;
    v20 = (v4 & 0xC000000000000001);
    v21 = OUTLINED_FUNCTION_61_4();
    sub_1C5C8CEE0(v21, v22, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_103;
    }

    v23 = *(v4 + 32);
    swift_unknownObjectRetain();
LABEL_11:
    v24 = [v23 avPlayerItem];
    OUTLINED_FUNCTION_73();
    swift_unknownObjectRelease();
    v99 = v12;
    if (v12)
    {
      v98 = v7;
      v106 = v2;
      v25 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      v111 = MEMORY[0x1E69E7CC0];
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      while (v19 != v25)
      {
        if (v20)
        {
          v12 = MEMORY[0x1C6954040](v25, v4);
        }

        else
        {
          if (v25 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_96;
          }

          v12 = *(v4 + 8 * v25 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v25, 1))
        {
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
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          v23 = MEMORY[0x1C6954040](0, v4);
          goto LABEL_11;
        }

        v26 = [v12 avPlayerItem];
        if (!v26)
        {
          goto LABEL_110;
        }

        v2 = v26;
        v27 = swift_unknownObjectRelease();
        MEMORY[0x1C69535C0](v27);
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6016B30();
        }

        v12 = &v111;
        OUTLINED_FUNCTION_15_1();
        sub_1C6016B70();
        v7 = v111;
        ++v25;
      }

      v35 = ObjectType;
      ObjectType = swift_getObjectType();
      v36 = (*(v98 + 328))(ObjectType, v98);
      v109 = v36;
      v18 = v106;
      sub_1C5CDAF64((v106 + 11), v112);
      OUTLINED_FUNCTION_66_8(v112, *&v112[24]);
      OUTLINED_FUNCTION_19_22();

      sub_1C6017540();
      OUTLINED_FUNCTION_74_3();
      __src[0] = v37;
      __src[1] = v38;
      MEMORY[0x1C69534E0](0xD00000000000004ALL, 0x80000001C6052C90);
      v96 = *(v98 + 184);
      v39 = v96(ObjectType, v98);
      OUTLINED_FUNCTION_21_21(v39, v40, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_10_0(v41);
      sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1C69534E0](0x7449657565757120, 0xEC0000003A736D65);
      v2 = sub_1C5C64D74(0, &qword_1ED7DCEA8);
      v103 = v7;
      v42 = OUTLINED_FUNCTION_15_1();
      v43 = MEMORY[0x1C6953600](v42);
      MEMORY[0x1C69534E0](v43);

      OUTLINED_FUNCTION_28_10();
      v44 = MEMORY[0x1C6953600](v36, v2);
      MEMORY[0x1C69534E0](v44);

      sub_1C5DC95A4(__src);
      memcpy(__dst, __src, 0xD9uLL);
      OUTLINED_FUNCTION_81_5();

      __swift_destroy_boxed_opaque_existential_0(v112);
      v97 = v35;
      v12 = v35;
      v45 = (*(v98 + 8))(ObjectType, v98);
      v4 = v99;
      if (v45)
      {
        v46 = v45;
        v12 = v2;
        if ((sub_1C60172D0() & 1) == 0)
        {
          [v46 cancelPendingSeeks];
        }
      }

      v47 = OUTLINED_FUNCTION_59_5();
      sub_1C5D0CA74(v47, v48);
      v50 = v49;

      if (v50)
      {
        if (sub_1C5C6AA20())
        {
          v51 = v36 & 0xC000000000000001;
          v52 = OUTLINED_FUNCTION_61_4();
          sub_1C5C8CEE0(v52, v53, v36);
          if ((v36 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1C6954040](0, v36);
          }

          else
          {
            v54 = *(v36 + 32);
          }

          v55 = v54;
          v12 = v106;
          sub_1C5DBE7A8(v99, v54);

          sub_1C5C8CEE0(0, v51 == 0, v36);
          if (v51)
          {
            MEMORY[0x1C6954040](0, v36);
            swift_unknownObjectRelease();
          }

          v56 = 1;
        }

        else
        {
          v12 = v106;
          sub_1C5DBE7A8(v99, 0);
          v56 = 0;
        }

        sub_1C5D85598(v56);
        if (sub_1C5C8FEE4(v36) < v56)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v57 = sub_1C5C6AA20();
        v58 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v4 = v99;
        sub_1C5D12108(v58, 1);
        v12 = &v109;
        sub_1C5D10C5C(v56, v56, 1, v4);
        v36 = v109;
      }

      v59 = sub_1C5C6AA20();
      if ((v59 & 0x8000000000000000) == 0)
      {
        v95 = ObjectType;
        v102 = v2;
        v104 = v59;
        if (v59)
        {
          ObjectType = 0;
          v105 = v7 & 0xC000000000000001;
          v20 = "nization completed - player:";
          v101 = v7 + 32;
          do
          {
            sub_1C5C8CEE0(ObjectType, v105 == 0, v7);
            if (v105)
            {
              v60 = OUTLINED_FUNCTION_63_4();
              v61 = MEMORY[0x1C6954040](v60);
            }

            else
            {
              v61 = *(v101 + 8 * ObjectType);
            }

            v19 = v61;
            sub_1C5D0CA74(v61, v36);
            if (v63)
            {
              if (!ObjectType)
              {
                goto LABEL_97;
              }

              v7 = v103;
              sub_1C5C8CEE0(ObjectType - 1, v105 == 0, v103);
              if (v105)
              {
                v64 = MEMORY[0x1C6954040](ObjectType - 1, v103);
              }

              else
              {
                v64 = *(v101 + 8 * (ObjectType - 1));
              }

              v77 = v64;
              v12 = v18;
              sub_1C5DBE7A8(v19, v64);

              v78 = OUTLINED_FUNCTION_88_0();
              sub_1C5D85598(v78);
              if (sub_1C5C8FEE4(v36) < ObjectType)
              {
                goto LABEL_99;
              }

              v79 = sub_1C5C6AA20();
              v73 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (v73)
              {
                goto LABEL_100;
              }

              sub_1C5D12108(v80, 1);
              v12 = &v109;
              sub_1C5D10C5C(ObjectType, ObjectType, 1, v19);
              v36 = v109;
            }

            else
            {
              v7 = v62;
              if (ObjectType > v62)
              {
                goto LABEL_98;
              }

              if (ObjectType < v62)
              {
                v100 = ObjectType - v62;
                v65 = OUTLINED_FUNCTION_88_0();
                sub_1C5D85598(v65);
                v66 = OUTLINED_FUNCTION_64();
                sub_1C5D85598(v66);

                v67 = ObjectType;
                if ((v36 & 0xC000000000000001) != 0)
                {
                  do
                  {
                    v68 = v67 + 1;
                    sub_1C6017550();
                    v67 = v68;
                  }

                  while (v7 != v68);
                }

                if (v36 >> 62)
                {

                  OUTLINED_FUNCTION_63_4();
                  sub_1C60176D0();
                  v2 = v81;
                  v69 = v82 >> 1;
                }

                else
                {
                  v2 = (v36 & 0xFFFFFFFFFFFFFF8) + 32;
                  v69 = v7;
                  v70 = ObjectType;
                }

                while (v69 != v70)
                {
                  if (v70 >= v69)
                  {
                    __break(1u);
                    goto LABEL_94;
                  }

                  v18 = v70 + 1;
                  v4 = *(v2 + 8 * v70);
                  OUTLINED_FUNCTION_62_7();
                  v12 = v106;
                  sub_1C5DBE630(v71);

                  v70 = v18;
                }

                if (sub_1C5C8FEE4(v36) < v7)
                {
                  goto LABEL_101;
                }

                v72 = sub_1C5C6AA20();
                v73 = __OFADD__(v72, v100);
                v74 = v72 + v100;
                if (!v73)
                {
                  sub_1C5D12108(v74, 1);
                  v12 = &v109;
                  v75 = OUTLINED_FUNCTION_63_4();
                  sub_1C5D10C48(v75, v76);
                  v36 = v109;

                  swift_unknownObjectRelease();
                  v109 = v36;
                  v18 = v106;
                  v2 = v102;
                  goto LABEL_63;
                }

                goto LABEL_102;
              }

LABEL_63:
              v7 = v103;
            }

            ++ObjectType;
          }

          while (ObjectType != v104);
        }

        ObjectType = v97;
        if (v104 >= sub_1C5C6AA20())
        {
          goto LABEL_88;
        }

        v83 = sub_1C5C6AA20();
        v12 = v104;
        if (v83 >= v104)
        {
          v84 = v83;
          sub_1C5D85598(v104);
          sub_1C5D85598(v84);
          if ((v36 & 0xC000000000000001) == 0 || v104 == v84)
          {
          }

          else
          {
            if (v104 >= v84)
            {
              __break(1u);
LABEL_110:
              __break(1u);
              return;
            }

            v85 = v104;
            do
            {
              v12 = (v85 + 1);
              sub_1C6017550();
              v85 = v12;
            }

            while (v84 != v12);
          }

          if (!(v36 >> 62))
          {
            v19 = (v36 & 0xFFFFFFFFFFFFFF8);
            v4 = (v36 & 0xFFFFFFFFFFFFFF8) + 32;
            v86 = v104;
            goto LABEL_83;
          }

LABEL_108:

          v19 = sub_1C60176D0();
          v4 = v93;
          v84 = (v94 >> 1);
LABEL_83:
          v20 = "nization completed - player:";
          while (v84 != v86)
          {
            if (v86 >= v84)
            {
              goto LABEL_95;
            }

            v7 = v86 + 1;
            v87 = *(v4 + 8 * v86);
            OUTLINED_FUNCTION_62_7();
            v12 = v18;
            sub_1C5DBE630(v88);

            v2 = v102;
            v86 = v7;
          }

          swift_unknownObjectRelease();
LABEL_88:
          sub_1C5DBE948();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1C5DE4814(v36);
            swift_unknownObjectRelease();
          }

          sub_1C5CDAF64(v18 + 88, v107);
          OUTLINED_FUNCTION_66_8(v107, v107[3]);
          OUTLINED_FUNCTION_18_21();
          sub_1C6017540();
          v108[0] = *v112;
          v108[1] = *&v112[8];
          MEMORY[0x1C69534E0](0xD00000000000004CLL, 0x80000001C6052D40);
          v89 = v96(v95, v98);
          OUTLINED_FUNCTION_60_7(v89, v90, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_10_0(v91);
          sub_1C5DC9938(v112, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
          OUTLINED_FUNCTION_28_10();
          v92 = MEMORY[0x1C6953600](v36, v2);
          MEMORY[0x1C69534E0](v92);

          sub_1C5DC95A4(v108);
          memcpy(v112, v108, 0xD9uLL);
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(v107);

          goto LABEL_91;
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      __break(1u);
      goto LABEL_105;
    }
  }

  v28 = swift_getObjectType();
  v29 = (*(v7 + 8))(v28, v7);
  [v29 cancelPendingSeeks];

  sub_1C5DBD338();
  sub_1C5CDAF64(v2 + 88, __src);
  OUTLINED_FUNCTION_66_8(__src, __src[3]);
  OUTLINED_FUNCTION_19_22();
  sub_1C6017540();
  OUTLINED_FUNCTION_74_3();
  *v112 = v30;
  *&v112[8] = v31;
  MEMORY[0x1C69534E0](0xD000000000000067, 0x80000001C6052C20);
  v32 = (*(v7 + 184))(v28, v7);
  OUTLINED_FUNCTION_21_21(v32, v33, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_10_0(v34);
  sub_1C5DC9938(__dst, &qword_1ED7E0200, v18 + 8);
  sub_1C5DC95A4(v112);
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_81_5();

  __swift_destroy_boxed_opaque_existential_0(__src);
LABEL_91:
  sub_1C5DC78FC();
  swift_unknownObjectRelease();
LABEL_92:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DC6458()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  if (!v0[9])
  {
    OUTLINED_FUNCTION_66_8(v0 + 11, v0[14]);
    OUTLINED_FUNCTION_89();
    *v57 = 0xD00000000000003BLL;
    *&v57[8] = v18;
    sub_1C5DC95A4(v57);
    OUTLINED_FUNCTION_55_6();
    OUTLINED_FUNCTION_81_5();
LABEL_27:
    OUTLINED_FUNCTION_237();
    return;
  }

  v3 = v1;
  v4 = v0[10];
  sub_1C5CDAF64((v0 + 11), v56);
  __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  OUTLINED_FUNCTION_19_22();
  swift_unknownObjectRetain();
  sub_1C6017540();
  OUTLINED_FUNCTION_74_3();
  v54 = v5;
  v55 = v6;
  MEMORY[0x1C69534E0](0xD000000000000040, 0x80000001C6052E00);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v45 = v7;
  MEMORY[0x1C69534E0]();
  v46 = v8;

  MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C6052E50);
  ObjectType = swift_getObjectType();
  v47 = *(v4 + 328);
  v47(ObjectType, v4);
  sub_1C5C64D74(0, &qword_1ED7DCEA8);
  v10 = OUTLINED_FUNCTION_34_4();
  MEMORY[0x1C6953600](v10);
  OUTLINED_FUNCTION_37_6();

  v11 = OUTLINED_FUNCTION_88_0();
  MEMORY[0x1C69534E0](v11);
  OUTLINED_FUNCTION_75_6();

  OUTLINED_FUNCTION_32_6();
  v12 = OUTLINED_FUNCTION_9_30();
  v44 = v13;
  v14 = v13(v12);
  OUTLINED_FUNCTION_21_21(v14, v15, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_10_0(v16);
  sub_1C5DC9938(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
  __src[0] = v54;
  __src[1] = v55;
  sub_1C5DC95A4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v56);
  if ((v3 & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_9_30();
    v21 = v20(v19);
    [v21 cancelPendingSeeks];

    sub_1C5DBD338();
    swift_unknownObjectWeakAssign();
LABEL_26:
    sub_1C5CDAF64((v2 + 11), v51);
    __swift_project_boxed_opaque_existential_0(v51, v52);
    OUTLINED_FUNCTION_18_21();
    sub_1C6017540();
    v49 = *v57;
    v50 = *&v57[8];
    MEMORY[0x1C69534E0](0xD00000000000003ELL, 0x80000001C6052E90);
    MEMORY[0x1C69534E0](v45, v46);

    MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C6052E50);
    v36 = OUTLINED_FUNCTION_9_30();
    (v47)(v36);
    MEMORY[0x1C6953600]();

    v37 = OUTLINED_FUNCTION_44_9();
    MEMORY[0x1C69534E0](v37);

    OUTLINED_FUNCTION_32_6();
    v38 = OUTLINED_FUNCTION_9_30();
    v39 = v44(v38);
    OUTLINED_FUNCTION_60_7(v39, v40, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_10_0(v41);
    sub_1C5DC9938(v57, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    v48[0] = v49;
    v48[1] = v50;
    sub_1C5DC95A4(v48);
    memcpy(v57, v48, 0xD9uLL);
    sub_1C5DBBF0C();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v51);
    goto LABEL_27;
  }

  if (sub_1C5DC6AA4())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = OUTLINED_FUNCTION_9_30();
  v24 = v23(v22);
  v25 = v24;
  if (v17)
  {
    if (!v24)
    {
LABEL_29:
      v25 = v17;
      goto LABEL_30;
    }

    v26 = sub_1C60172D0();

    if ((v26 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_20:
    v27 = OUTLINED_FUNCTION_9_30();
    v28 = (v47)(v27);
    sub_1C5DDBC3C(1, v28);
    v32 = (v31 >> 1) - v30;
    if (v31 >> 1 == v30)
    {
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    if ((v31 >> 1) > v30)
    {
      v33 = (v29 + 8 * v30);
      do
      {
        v34 = *v33++;
        v35 = v34;
        sub_1C5DBE630(v35);

        --v32;
      }

      while (v32);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_75_6();
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_30:

LABEL_31:
  sub_1C5CDAF64((v2 + 11), v51);
  OUTLINED_FUNCTION_66_8(v51, v52);
  OUTLINED_FUNCTION_18_21();
  sub_1C6017540();
  v49 = *v57;
  v50 = *&v57[8];
  MEMORY[0x1C69534E0](0xD000000000000079, 0x80000001C6052ED0);
  MEMORY[0x1C69534E0](1702195828, 0xE400000000000000);
  v42 = OUTLINED_FUNCTION_17_20();
  MEMORY[0x1C69534E0](v42, 0xE90000000000003ALL);
  sub_1C5DBDE9C();
  sub_1C6016870();

  v43 = OUTLINED_FUNCTION_38_0();
  MEMORY[0x1C69534E0](v43);

  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  v48[0] = v49;
  v48[1] = v50;
  sub_1C5D45B74(v48);
  memcpy(v57, v48, 0xD9uLL);

  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v51);
  __break(1u);
}

unint64_t sub_1C5DC6AA4()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_77_4();
  v2 = OUTLINED_FUNCTION_41_6();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  if (!sub_1C5C6AA20())
  {

    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_61_4();
  sub_1C5C8CEE0(v5, v6, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6954040](0, v3);
  }

  else
  {
    v7 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_73();

  return v4;
}

uint64_t sub_1C5DC6B58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1[0] = 0;
    v1[1] = 0;
    v2 = 3;
    v3 = 2;
    sub_1C5C89DB4(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DC6BCC(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      sub_1C5DC6458();
      break;
    case 2:
      return;
    case 3:
      sub_1C5DC6B58();
      break;
    default:
      sub_1C5DC57BC();
      break;
  }
}

float sub_1C5DC6C08()
{
  v1 = 0.0;
  if (*(v0 + 72))
  {
    v2 = *(v0 + 80);
    swift_getObjectType();
    v3 = *(v2 + 8);
    swift_unknownObjectRetain();
    v4 = OUTLINED_FUNCTION_41_6();
    v5 = v3(v4);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 timebase];

      if (v6)
      {
        sub_1C6016EE0();
        v8 = v7;

        return v8;
      }
    }
  }

  return v1;
}

void sub_1C5DC6CC0()
{
  v1 = *(v0 + 32);
  if (v1 != 0.0)
  {
    sub_1C5DC6CEC(v1);
  }
}

void sub_1C5DC6CEC(float a1)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v4 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    if (v6(ObjectType, v4) != a1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DE45E8();
        swift_unknownObjectRelease();
      }

      (*(v4 + 48))(ObjectType, v4, a1);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1C5DE4690(v2, v4, LODWORD(a1), 0, 0, 2u);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DC6E60()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_77_4();
    v2 = OUTLINED_FUNCTION_41_6();
    v3 = v1(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1C5D2AA10(0, &qword_1ED7DC870);

    sub_1C60176B0();
    OUTLINED_FUNCTION_73();
  }

  else
  {

    sub_1C6017870();
    sub_1C5D2AA10(0, &qword_1ED7DC870);
    v4 = v3;
  }

  return v4;
}

BOOL sub_1C5DC6F54()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  v4 = *(v0 + 80);
  swift_getObjectType();
  OUTLINED_FUNCTION_39_6();
  swift_unknownObjectRetain();
  v5 = v3(v1, v4);
  swift_unknownObjectRelease();
  if (v5 != 2)
  {
    return 0;
  }

  if (!*(v0 + 72))
  {
    return 1;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_76_4();
  v6 = OUTLINED_FUNCTION_147();
  v7 = v2(v6);
  swift_unknownObjectRelease();
  return v7 != 0.0;
}

BOOL sub_1C5DC7020()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  v4 = *(v0 + 80);
  swift_getObjectType();
  OUTLINED_FUNCTION_39_6();
  swift_unknownObjectRetain();
  v5 = v3(v1, v4);
  swift_unknownObjectRelease();
  if (v5 || !*(v0 + 72))
  {
    return 0;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_76_4();
  v7 = OUTLINED_FUNCTION_147();
  v8 = v2(v7);
  swift_unknownObjectRelease();
  return v8 == 0.0;
}

BOOL sub_1C5DC70E0()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_39_6();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_10_28();
  v1(v2);
  OUTLINED_FUNCTION_73();
  swift_unknownObjectRelease();
  return v0 == 1;
}

uint64_t sub_1C5DC7154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  sub_1C5DC97C4(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
  v6 = sub_1C6017280();

  v7 = v6;
  sub_1C5DC72C8();

  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DC72C8()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 32) = 1065353216;
  sub_1C5DC6CC0();
  swift_unknownObjectWeakAssign();
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  sub_1C6017540();
  OUTLINED_FUNCTION_82_3();
  swift_getErrorValue();
  sub_1C6017830();
  OUTLINED_FUNCTION_87();
  sub_1C5DC9234();

  sub_1C6017540();
  OUTLINED_FUNCTION_82_3();
  swift_getErrorValue();
  sub_1C6017830();
  OUTLINED_FUNCTION_87();
  sub_1C5DBD338();

  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  return result;
}

uint64_t sub_1C5DC741C()
{
  sub_1C5C96DF0(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 88);

  sub_1C5C96DF0(v0 + 144);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5DC747C()
{
  sub_1C5DC741C();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

void sub_1C5DC78FC()
{
  v1 = v0[28];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v0[27];

  v3 = sub_1C5DC6AA4();
  if (!v3)
  {

    goto LABEL_10;
  }

  v4 = [v3 contentItemID];
  swift_unknownObjectRelease();
  v5 = sub_1C6016940();
  v7 = v6;

  if (v2 != v5 || v1 != v7)
  {
    v9 = sub_1C6017860();

    if (v9)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (!v0[9])
    {
      return;
    }

    v10 = v0[10];
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 88);
    swift_unknownObjectRetain();
    v13 = 0;
    goto LABEL_15;
  }

LABEL_13:
  if (!v0[9])
  {
    return;
  }

  v10 = v0[10];
  ObjectType = swift_getObjectType();
  v14 = v0[26];
  v12 = *(v10 + 88);
  swift_unknownObjectRetain();
  v13 = v14;
LABEL_15:
  v12(v13, ObjectType, v10);

  swift_unknownObjectRelease();
}

void sub_1C5DC7A74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v9 = a5;
  if (a4)
  {
    v13 = *MEMORY[0x1E6960CC0];
    v15 = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v14) = *(MEMORY[0x1E6960CC0] + 12);
    v16 = *(MEMORY[0x1E6960CC0] + 16);
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = sub_1C5D67CC0(0.5);
  v15 = v17;
  v16 = v18;
  v14 = HIDWORD(v17);
  if (v9)
  {
LABEL_5:
    v24 = v9;
    v25 = a6;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    OUTLINED_FUNCTION_16_21();
    v22 = v19;
    v23 = &block_descriptor_40_0;
    v9 = _Block_copy(&v20);
  }

LABEL_6:
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v29 = v16;
  v30 = v13;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  [v7 seekToTime:&v20 toleranceBefore:&v30 toleranceAfter:&v26 completionHandler:v9];
  _Block_release(v9);
}

void sub_1C5DC7BF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v9 = *MEMORY[0x1E6960CC0];
    v11 = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v10) = *(MEMORY[0x1E6960CC0] + 12);
    v12 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    v9 = sub_1C5D67CC0(0.5);
    v11 = v13;
    v12 = v14;
    v10 = HIDWORD(v13);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v33 = sub_1C5DC9C18;
  v34 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  OUTLINED_FUNCTION_16_21();
  v31 = v16;
  v32 = &block_descriptor_37;
  v17 = _Block_copy(&aBlock);
  sub_1C5C74C28(a5);

  v28 = v12;
  aBlock = a1;
  v30 = a2;
  v31 = a3;
  v24 = v12;
  v25 = v9;
  v26 = v11;
  v27 = v10;
  v21 = v9;
  v22 = v11;
  v23 = v10;
  [v20 seekToTime:&aBlock toleranceBefore:&v25 toleranceAfter:&v21 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_1C5DC7D98(void *a1, uint64_t a2)
{
  v2 = [a1 seekableTimeRanges];
  sub_1C5C64D74(0, &unk_1ED7DCCE0);
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20();
  if (v4)
  {
    v5 = v4;
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1C5D0F238(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    v8 = v30;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = MEMORY[0x1C6954040](v7, v3); ; i = *(v3 + 8 * v7 + 32))
    {
      v10 = i;
      [i CMTimeRangeValue];

      v12 = *(v30 + 16);
      v11 = *(v30 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C5D0F238((v11 > 1), v12 + 1, 1);
      }

      *(v30 + 16) = v12 + 1;
      v13 = (v30 + 48 * v12);
      v13[3] = v32;
      v13[4] = v33;
      v13[2] = v31;
      if (v5 - 1 == v7)
      {
        break;
      }

      ++v7;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v8 + 16);
  if (!v14)
  {
    v27 = a2;
    goto LABEL_22;
  }

  sub_1C6016E50();
  result = sub_1C6017190();
  if (result)
  {
    result = sub_1C6016E50();
    v27 = result;
    goto LABEL_22;
  }

  if (*(v8 + 16))
  {
    v15 = *(v8 + 32);
    result = sub_1C60171A0();
    if (result)
    {
      v16 = v15;
    }

    else
    {
      v16 = a2;
    }

    v27 = v16;
LABEL_22:
    v17 = (v8 + 32);
    v18 = -1;
    v19 = 32;
    while (1)
    {
      if (v18 - v14 == -1)
      {
        if (v14)
        {
          v21 = INFINITY;
          do
          {
            v29 = v14;
            v22 = *v17;
            if ((sub_1C60171A0() & 1) != 0 && (sub_1C60171B0(), sub_1C6017220(), v23 < v21))
            {
              sub_1C60171B0();
              sub_1C6017220();
              v21 = v24;
              v27 = v22;
            }

            else
            {
              sub_1C6016E50();
              if (sub_1C6017190())
              {
                sub_1C6016E50();
                sub_1C60171B0();
                sub_1C6017220();
                if (v25 < v21)
                {
                  sub_1C6016E50();
                  sub_1C60171B0();
                  sub_1C6017220();
                  v21 = v26;
                  v27 = sub_1C6016E50();
                }
              }
            }

            v17 += 6;
            --v14;
          }

          while (v29 != 1);
        }

LABEL_36:

        return v27;
      }

      if (++v18 >= *(v8 + 16))
      {
        break;
      }

      v20 = v19 + 48;
      result = sub_1C6016E40();
      v19 = v20;
      if (result)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1C5DC8208(int a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v107 = a8;
  v108 = a6;
  LODWORD(v106) = a1;
  v18 = sub_1C6016630();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6016690();
  v104 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (*(Strong + 72) && (v97 = v21, v98 = v19, v101 = a7, v102 = a9, v25 = *(Strong + 80), ObjectType = swift_getObjectType(), v27 = *(v25 + 8), swift_unknownObjectRetain(), v28 = v27(ObjectType, v25), swift_unknownObjectRelease(), v28))
    {
      v89 = v18;
      v95 = a13;
      v94 = a12;
      v99 = HIDWORD(v108);
      v93 = a11;
      v96 = a10;
      sub_1C5CDAF64(v24 + 88, v119);
      v92 = __swift_project_boxed_opaque_existential_0(v119, v119[3]);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1C6017540();
      v117 = v121[0];
      v118 = v121[1];
      MEMORY[0x1C69534E0](0xD00000000000003DLL, 0x80000001C6051F90);
      if (v106)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v106)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v29, v30);

      MEMORY[0x1C69534E0](0x656B656573202D20, 0xEB00000000203A72);
      swift_beginAccess();
      v31 = *(a4 + 40);
      v32 = __swift_project_boxed_opaque_existential_0((a4 + 16), v31);
      v33 = *(v31 - 8);
      MEMORY[0x1EEE9AC00](v32);
      v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v35);
      sub_1C6017830();
      (*(v33 + 8))(v35, v31);
      MEMORY[0x1C69534E0](0x6567726174202D20, 0xEF3A656D69742074);
      v100 = a5;
      v36 = v101;
      sub_1C6017220();
      v38 = v37;
      sub_1C5C72C04(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v91 = v39;
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E63B0];
      v90 = xmmword_1C60311E0;
      *(v40 + 16) = xmmword_1C60311E0;
      v42 = MEMORY[0x1E69E6438];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      *(v40 + 32) = v38;
      v43 = sub_1C6016960();
      MEMORY[0x1C69534E0](v43);

      MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6051FD0);
      v44 = [v28 timebase];
      v46 = v44;
      if (v44)
      {
        sub_1C6016EF0();

        sub_1C6017220();
        LOBYTE(v44) = v45;
      }

      DefaultStringInterpolation.appendInterpolation(time:)(*(&v44 - 1));
      MEMORY[0x1C69534E0](0x3A6D657469202D20, 0xE800000000000000);
      v47 = [v28 description];
      v48 = sub_1C6016940();
      v50 = v49;

      MEMORY[0x1C69534E0](v48, v50);

      MEMORY[0x1C69534E0](0x746E656469202D20, 0xEF203A7265696669);
      MEMORY[0x1C69534E0](v107, v102);
      MEMORY[0x1C69534E0](0x6579616C70202D20, 0xEA00000000003A72);
      v51 = sub_1C5DD9C90();
      v121[3] = MEMORY[0x1E69E6158];
      v121[0] = v51;
      v121[1] = v52;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(v121, 7104878, 0xE300000000000000);
      sub_1C5DC9938(v121, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      v116[0] = v117;
      v116[1] = v118;
      sub_1C5DC95A4(v116);
      memcpy(v121, v116, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v119);
      [v28 currentTime];
      sub_1C6017220();
      v54 = v53;
      sub_1C6017220();
      v56 = v100;
      if (vabdd_f64(v54, v55) < 0.5)
      {
        sub_1C6017220();
        v54 = v57;
      }

      [v28 currentTime];
      sub_1C6017220();
      *(v24 + 152) = v58;
      *(v24 + 160) = 0;
      v120[0] = 0;
      v120[1] = 0xE000000000000000;
      sub_1C6017540();
      v109 = v120[0];
      v110 = v120[1];
      MEMORY[0x1C69534E0](0xD000000000000038, 0x80000001C6051E60);
      [v28 currentTime];
      sub_1C6017220();
      v60 = v59;
      v61 = swift_allocObject();
      *(v61 + 16) = v90;
      *(v61 + 56) = MEMORY[0x1E69E63B0];
      *(v61 + 64) = MEMORY[0x1E69E6438];
      *(v61 + 32) = v60;
      v62 = sub_1C6016960();
      MEMORY[0x1C69534E0](v62);

      MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C6051FF0);
      v63 = sub_1C5DD9C90();
      v120[3] = MEMORY[0x1E69E6158];
      v120[0] = v63;
      v120[1] = v64;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(v120, 7104878, 0xE300000000000000);
      sub_1C5DC9938(v120, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      v115[0] = v109;
      v115[1] = v110;
      sub_1C5DC95A4(v115);
      memcpy(v120, v115, 0xD9uLL);
      sub_1C5DC3838();

      v65 = swift_allocObject();
      *(v65 + 16) = v28;
      v66 = v106 & 1;
      *(v65 + 24) = v106 & 1;
      v67 = v108;
      v68 = v102;
      *(v65 + 32) = v107;
      *(v65 + 40) = v68;
      *(v65 + 48) = v56;
      v69 = v99;
      *(v65 + 56) = v67;
      *(v65 + 60) = v69;
      *(v65 + 64) = v36;
      *(v65 + 72) = v54;
      *(v65 + 80) = a2;
      v70 = objc_opt_self();

      v71 = v28;
      if ([v70 isMainThread])
      {
        v106 = v71;
        v72 = [objc_opt_self() defaultCenter];
        if (qword_1ED7DCE20 != -1)
        {
          swift_once();
        }

        v73 = qword_1ED7E1680;
        sub_1C5DC95B8(0, &qword_1EC1A9220);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1C60379A0;
        v109 = 0x64656873696E6966;
        v110 = 0xE800000000000000;
        v75 = MEMORY[0x1E69E6158];
        sub_1C60174C0();
        *(v74 + 96) = MEMORY[0x1E69E6370];
        *(v74 + 72) = v66;
        v109 = 0x696669746E656469;
        v110 = 0xEA00000000007265;
        sub_1C60174C0();
        *(v74 + 168) = v75;
        v76 = v102;
        *(v74 + 144) = v107;
        *(v74 + 152) = v76;
        v109 = 0x6C616E696769726FLL;
        v110 = 0xEF656D6954646E45;

        sub_1C60174C0();
        type metadata accessor for CMTime();
        *(v74 + 216) = v100;
        v77 = v99;
        *(v74 + 224) = v108;
        *(v74 + 228) = v77;
        *(v74 + 232) = v101;
        *(v74 + 240) = v78;
        v109 = 0x656D6954646E65;
        v110 = 0xE700000000000000;
        sub_1C60174C0();
        v79 = MEMORY[0x1E69E63B0];
        *(v74 + 312) = MEMORY[0x1E69E63B0];
        *(v74 + 288) = v54;
        v109 = 0x6D69547472617473;
        v110 = 0xE900000000000065;
        sub_1C60174C0();
        *(v74 + 384) = v79;
        *(v74 + 360) = a2;
        v80 = sub_1C6016880();
        sub_1C5DC96C0(v73, v28, v80, v72);
      }

      else
      {
        sub_1C5C64D74(0, &qword_1ED7DCE50);
        v81 = sub_1C6016FD0();
        v113 = sub_1C5DC97A0;
        v114 = v65;
        v108 = v81;
        v109 = MEMORY[0x1E69E9820];
        v110 = 1107296256;
        v111 = sub_1C5DBC798;
        v112 = &block_descriptor_22;
        v82 = _Block_copy(&v109);

        v83 = v103;
        sub_1C6016670();
        v109 = MEMORY[0x1E69E7CC0];
        sub_1C5DC97C4(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
        sub_1C5D5CF8C();
        sub_1C5DC97C4(&qword_1ED7DC280, sub_1C5D5CF8C);
        v84 = v71;
        v85 = v105;
        v86 = v89;
        sub_1C60173B0();
        v87 = v108;
        MEMORY[0x1C6953AC0](0, v83, v85, v82);
        _Block_release(v82);

        (*(v98 + 8))(v85, v86);
        (*(v104 + 8))(v83, v97);
      }
    }

    else
    {
    }
  }
}

void sub_1C5DC8F18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v16 = [objc_opt_self() defaultCenter];
  if (qword_1ED7DCE20 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED7E1680;
  sub_1C5DC95B8(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  v18 = MEMORY[0x1E69E6158];
  sub_1C60174C0();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = a2 & 1;
  sub_1C60174C0();
  *(inited + 168) = v18;
  *(inited + 144) = a3;
  *(inited + 152) = a4;

  sub_1C60174C0();
  type metadata accessor for CMTime();
  *(inited + 216) = a5;
  *(inited + 224) = a6;
  *(inited + 232) = a7;
  *(inited + 240) = v19;
  sub_1C60174C0();
  v20 = MEMORY[0x1E69E63B0];
  *(inited + 312) = MEMORY[0x1E69E63B0];
  *(inited + 288) = a8;
  sub_1C60174C0();
  *(inited + 384) = v20;
  *(inited + 360) = a9;
  v21 = sub_1C6016880();
  sub_1C5DC96C0(v22, a1, v21, v16);
}

void sub_1C5DC9234()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    if (Strong)
    {
      sub_1C5DE45E8();
      swift_unknownObjectRelease();
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 280))(ObjectType, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DE4690(v1, v2, 2, 0, 0, 4u);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DC93A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C5DC93E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5DC9430()
{
  if (*(v0 + 72))
  {
    v1 = v0;
    v2 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 224);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);
    v5 = sub_1C5C6AA20();

    if (v5)
    {
      v6 = (*(v2 + 240))(__dst, ObjectType, v2);
      *v7 = MEMORY[0x1E69E7CC0];

      v6(__dst, 0);
      __swift_project_boxed_opaque_existential_0((v1 + 88), *(v1 + 112));
      v8[0] = 0xD00000000000003BLL;
      v8[1] = 0x80000001C6052730;
      sub_1C5DC95A4(v8);
      memcpy(__dst, v8, 0xD9uLL);
      sub_1C5DBBF0C();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C5DC95B8(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5D2A9A0(v3, v4);
    OUTLINED_FUNCTION_34_4();
    v5 = sub_1C60177E0();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

void sub_1C5DC9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = sub_1C6016AF0();

  [a8 snapshotWithDomain:a1 type:a2 subType:a3 context:a4 triggerThresholdValues:a5 events:v15 completion:a7];
}

void sub_1C5DC96C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1C6016840();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_1C5DC97C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5DC9814()
{
  result = qword_1EC1AB8A0;
  if (!qword_1EC1AB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB8A0);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 59, 7);
}

unint64_t sub_1C5DC98C4()
{
  result = qword_1EC1AB8A8;
  if (!qword_1EC1AB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB8A8);
  }

  return result;
}

uint64_t sub_1C5DC9938(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5C67620(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C5DC99A8(uint64_t a1, uint64_t a2)
{
  sub_1C5DC9A0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5DC9A0C()
{
  if (!qword_1EC1A9170)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5D2AA10(255, &qword_1ED7DC870);
    sub_1C5C67620(255, &unk_1EC1A93F0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    type metadata accessor for EventTime();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1A9170);
    }
  }
}

uint64_t sub_1C5DC9B90(uint64_t a1)
{
  sub_1C5C72C04(0, &qword_1ED7DE918, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5DC9C18(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  *(a1 + 16) = v3;
  v6 = *(v4 + 16);
  *(a1 + 24) = *v4;
  *(a1 + 40) = v6;
  *(a1 + 55) = *(v4 + 31);

  return sub_1C5CC57E0(va1, va);
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return sub_1C6016900();
}

void OUTLINED_FUNCTION_54_6()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_60_7(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x290] = a3;
  STACK[0x278] = a1;
  STACK[0x280] = a2;
}

void OUTLINED_FUNCTION_71_3()
{
  STACK[0x280] = v0;
  STACK[0x288] = v1;
  STACK[0x290] = v2;
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_77_4()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_80_4@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1C5DC9938(&STACK[0x280], a1, a2 + 8);
}

uint64_t OUTLINED_FUNCTION_81_5()
{

  return sub_1C5DBBF0C();
}

void OUTLINED_FUNCTION_82_3()
{

  JUMPOUT(0x1C69534E0);
}

unint64_t PlayerState.init(rawValue:)(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

uint64_t TimeControlStatus.init(rawValue:)(uint64_t result)
{
  if ((result + 1) >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C5DCA058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TimeControlStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t ItemRequestReason.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t ItemTransition.init(rawValue:)(uint64_t result)
{
  if ((result + 2) > 7 || ((1 << (result + 2)) & 0x9F) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C5DCA1C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ItemTransition.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C5DCA2DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Description();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1C5DCA334(uint64_t a1)
{
  result = 1701602377;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x676E6979616C50;
    case 2:
      return 0x646573756150;
    case 3:
      return 0x77726F4674736146;
    case 4:
      v3 = 0x646E69776552;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 5:
      v3 = 0x626275726353;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 6:
      v4 = 0x656C6C617453;
      goto LABEL_11;
    case 7:
      return 0x7075727265746E49;
    case 8:
      v4 = 0x696C61766E49;
LABEL_11:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    default:
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C5DCA478(uint64_t a1)
{
  if (!a1)
  {
    return 1819047238;
  }

  if (a1 == 1)
  {
    return 0x7974706D45;
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

uint64_t sub_1C5DCA4EC(uint64_t a1)
{
  result = 0x6B63616279616C70;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x676E697070696B73;
      break;
    case 2:
      result = 0x6F6C207465737361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_55_7();
      break;
    default:
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C5DCA5B4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6C6953206C696146;
    case 2:
      return 0xD000000000000011;
    case 1:
      return 0x616C5020706F7453;
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

uint64_t sub_1C5DCA670(uint64_t a1)
{
  v1 = a1 + 2;
  result = 0x2065737265766552;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65737265766552;
      break;
    case 2:
      result = 0x616E6F6974617453;
      break;
    case 3:
      result = 0x64726177726F46;
      break;
    case 4:
      result = 0x2064726177726F46;
      break;
    case 7:
      result = 0x6E45206575657551;
      break;
    default:
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C5DCA77C(uint64_t a1)
{
  result = 2036427856;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6573756150;
      break;
    case 2:
      result = 0x4646206E69676542;
      break;
    case 3:
      result = 0x464620646E45;
      break;
    case 4:
      result = 0x5752206E69676542;
      break;
    case 5:
      result = 0x575220646E45;
      break;
    case 6:
      result = 0x20676E69706D754ALL;
      break;
    case 7:
      result = 0x617274207478654ELL;
      break;
    case 8:
      result = 0x73756F6976657250;
      break;
    default:
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C5DCA8C8(uint64_t a1)
{
  result = 0x6C616E7265746E49;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0x6C616E7265747845;
    }

    else
    {
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5DCA93C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E55;
    case 2:
      return 1919251285;
    case 1:
      return OUTLINED_FUNCTION_56_7();
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

uint64_t sub_1C5DCA9C0(uint64_t a1)
{
  if (!a1)
  {
    return 0x6575657551;
  }

  if (a1 == 1)
  {
    return OUTLINED_FUNCTION_56_7();
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

uint64_t sub_1C5DCAA28(uint64_t a1)
{
  result = 0xD000000000000012;
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 != 1)
  {
    result = OUTLINED_FUNCTION_28_11();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DCAAAC(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6F6572657453;
    case 2:
      return 0xD000000000000017;
    case 1:
      return 0x61686369746C754DLL;
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

uint64_t sub_1C5DCAB54(uint64_t a1)
{
  if ((a1 + 1) < 4)
  {
    return *&aUnknown_8[8 * a1 + 8];
  }

  result = OUTLINED_FUNCTION_28_11();
  __break(1u);
  return result;
}

id sub_1C5DCABBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  sub_1C6016900();
  OUTLINED_FUNCTION_73();

  return v4;
}

uint64_t sub_1C5DCAC0C(uint64_t a1)
{
  result = 0x7373656C706147;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x61662D73736F7243;
      break;
    case 2:
      result = OUTLINED_FUNCTION_55_7();
      break;
    case 3:
      result = 0x6567616E616D6E55;
      break;
    default:
      result = OUTLINED_FUNCTION_28_11();
      __break(1u);
      break;
  }

  return result;
}

id sub_1C5DCACD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  sub_1C6016900();
  OUTLINED_FUNCTION_73();

  return v4;
}

id AudioSessionConfiguration.__allocating_init(category:routeSharingPolicy:options:)()
{
  OUTLINED_FUNCTION_52_7();
  v4 = v3;
  v5 = objc_allocWithZone(v1);
  return AudioSessionConfiguration.init(category:routeSharingPolicy:options:)(v4, v2, v0);
}

id AudioSessionConfiguration.init(category:routeSharingPolicy:options:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___MFAudioSessionConfiguration_allowEnhanceDialogue] = 0;
  *&v3[OBJC_IVAR___MFAudioSessionConfiguration_category] = a1;
  *&v3[OBJC_IVAR___MFAudioSessionConfiguration_routeSharingPolicy] = a2;
  *&v3[OBJC_IVAR___MFAudioSessionConfiguration_options] = a3;
  sub_1C5D2AA10(0, &qword_1EC1A93B8);
  v5 = a1;
  *&v3[OBJC_IVAR___MFAudioSessionConfiguration_audioSessionMXProperties] = sub_1C6016880();
  v8.receiver = v3;
  v8.super_class = type metadata accessor for AudioSessionConfiguration();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t sub_1C5DCAEBC(uint64_t a1)
{
  *(v1 + OBJC_IVAR___MFAudioSessionConfiguration_audioSessionMXProperties) = a1;
}

uint64_t sub_1C5DCAF84(char a1)
{
  sub_1C5CFA9D4();
  result = sub_1C6015290();
  if (result)
  {
    *(v1 + OBJC_IVAR___MFAudioSessionConfiguration_allowEnhanceDialogue) = a1 & 1;
  }

  return result;
}

id AudioSessionConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t ExternalPlaybackType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t PlaybackBehaviorType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C5DCB214()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5DCB2A0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___MFPlaybackStackControllerImplementation_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5DCB324;
}

void sub_1C5DCB324(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1C5DCB43C()
{
  v0 = sub_1C60162D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D2D8C8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (byte_1EC1AB8C0 != 2 && (byte_1EC1AB8C0 & 1) != 0)
  {
    return;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1C5DD1888(0xD000000000000014, 0x80000001C604A000);
  if (!v10)
  {
    byte_1EC1AB8C0 = 1;
    return;
  }

  v19 = v10;
  if (byte_1EC1AB8C0 == 2)
  {
    v11 = sub_1C6016900();
    v12 = [v19 BOOLForKey_];

    byte_1EC1AB8C0 = v12;
    if ((v12 & 1) == 0)
    {
LABEL_6:
      v13 = sub_1C6016900();
      [v19 setBool:1 forKey:v13];

      byte_1EC1AB8C0 = 1;
      MEMORY[0x1C6952D20]();
      sub_1C6016250();
      (*(v6 + 8))(v8, v5);
      v14 = sub_1C60162B0();
      v15 = sub_1C6016F30();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C5C61000, v14, v15, "[ALC] Successfully set BeatMatchedTransitionHasRendered = true", v16, 2u);
        MEMORY[0x1C6956920](v16, -1, -1);
      }

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else if ((byte_1EC1AB8C0 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = v19;
}

char *MFPlaybackStackControllerImplementation.__allocating_init(playerID:engineID:queueController:assetLoader:errorController:externalPlaybackController:leaseController:defaults:behavior:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  OUTLINED_FUNCTION_49_7();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_allocWithZone(v12);
  return MFPlaybackStackControllerImplementation.init(playerID:engineID:queueController:assetLoader:errorController:externalPlaybackController:leaseController:defaults:behavior:queue:)(v22, v20, v18, v16, v15, v14, v13, a8, a9, a10, a11, a12);
}

char *MFPlaybackStackControllerImplementation.init(playerID:engineID:queueController:assetLoader:errorController:externalPlaybackController:leaseController:defaults:behavior:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = v12;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___MFPlaybackStackControllerImplementation_signpostSubscription] = 0;
  v20 = sub_1C5C64D74(0, &qword_1ED7DCE50);
  sub_1C6016FD0();
  OUTLINED_FUNCTION_107();
  type metadata accessor for EventReporter();
  swift_allocObject();
  v21 = sub_1C5DBC2A0(a3, a4, v20);
  type metadata accessor for PlaybackStackController();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v22 = a12;
  *&v13[OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack] = sub_1C5DD68AC(a1, a2, a5, a6, a7, a8, a9, v21, a10, a11, v22);
  v29.receiver = v13;
  v29.super_class = type metadata accessor for MFPlaybackStackControllerImplementation();
  v23 = objc_msgSendSuper2(&v29, sel_init);
  v24 = v23;

  sub_1C5DD6AE8(v23, &off_1F4545390);

  v25 = sub_1C5DCE7B0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *&v24[OBJC_IVAR___MFPlaybackStackControllerImplementation_signpostSubscription] = v25;

  return v24;
}

uint64_t sub_1C5DCBB68()
{
  OUTLINED_FUNCTION_17_21();
  v0 = sub_1C5DDBEF8();

  return sub_1C5DCE6FC(v0);
}

uint64_t sub_1C5DCBBDC()
{
  OUTLINED_FUNCTION_17_21();
  v0 = sub_1C5DDDA6C();
  if ((~v0 & 0xFEF8) == 0)
  {
    return 8;
  }

  return sub_1C5DCE6FC(v0);
}

id sub_1C5DCBE6C()
{
  OUTLINED_FUNCTION_17_21();
  v0 = sub_1C5DDDA1C();
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }
}

void sub_1C5DCBF6C(uint64_t a1, void (**a2)(void, void))
{
  sub_1C5D4CE98();
  a2[2](a2, 0);

  _Block_release(a2);
}

uint64_t sub_1C5DCBFC8(void (*a1)(void))
{
  OUTLINED_FUNCTION_16_22();

  sub_1C5D4CE98();
  a1(0);
}

uint64_t sub_1C5DCC190()
{
  OUTLINED_FUNCTION_52_7();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  v4 = swift_allocObject();
  v4[2].isa = v1;
  v4[3].isa = v0;
  sub_1C5C74C28(v1);
  sub_1C5DD47A4(v3, sub_1C5DD1864, v4);
}

void sub_1C5DCC228(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    if (a1)
    {
      a1 = sub_1C6014D30();
    }

    v3 = a1;
    a2();
  }
}

void sub_1C5DCC340()
{
  v1 = *(v0 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
  v2 = sub_1C6014D30();
  [v1 resetWithReason_];
}

uint64_t sub_1C5DCC480()
{
  sub_1C6016940();
  sub_1C5D4DB3C();
}

uint64_t sub_1C5DCC6B4()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 16) = v5;
  *(v1 + 96) = v6;
  sub_1C6016C10();
  *(v1 + 56) = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v8 = sub_1C6016BA0();
  *(v1 + 64) = v8;
  *(v1 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5DCC750, v8, v7);
}

uint64_t sub_1C5DCC750()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C5DCC7F8;

  return sub_1C5DD4D90();
}

uint64_t sub_1C5DCC7F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1C5DCC994;
  }

  else
  {
    v5 = sub_1C5DCC934;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5DCC934()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5DCC994()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5DCC9F4()
{
  OUTLINED_FUNCTION_248();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_1C6016C10();
  v1[7] = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v7 = sub_1C6016BA0();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5DCCA8C, v7, v6);
}

uint64_t sub_1C5DCCA8C()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C5DCCB30;

  return sub_1C5DD5904();
}

uint64_t sub_1C5DCCB30()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1C5DD4120;
  }

  else
  {
    v5 = sub_1C5DD4128;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5DCCD24()
{
  OUTLINED_FUNCTION_3_42();
  v5 = v4;
  v6 = sub_1C6016940();
  v8 = v7;
  OUTLINED_FUNCTION_58();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;

  sub_1C5DDC60C(0, 0, v1, v6, v8, v0, v9, v5);
}

uint64_t sub_1C5DCCE14()
{
  OUTLINED_FUNCTION_11_21();
  v4 = v3;
  _Block_copy(v5);
  *(OUTLINED_FUNCTION_27_17() + 16) = v2;
  v6 = v1;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_13_26();
  v0(v8);
}

uint64_t sub_1C5DCCEA4()
{
  OUTLINED_FUNCTION_52_7();
  v2 = sub_1C6016940();
  v4 = v3;
  OUTLINED_FUNCTION_58();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;

  sub_1C5DD5E3C(1, v2, v4, sub_1C5DD4124, v5);
}

uint64_t sub_1C5DCCF88()
{
  OUTLINED_FUNCTION_11_21();
  v4 = v3;
  _Block_copy(v5);
  *(OUTLINED_FUNCTION_27_17() + 16) = v2;
  v6 = v1;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_13_26();
  v0(v8);
}

uint64_t sub_1C5DCD03C()
{
  OUTLINED_FUNCTION_3_42();
  sub_1C6016940();
  OUTLINED_FUNCTION_58();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_31_9(v1);
  v2 = OUTLINED_FUNCTION_10_29();
  v0(v2);
}

uint64_t sub_1C5DCD108()
{
  OUTLINED_FUNCTION_11_21();
  v4 = v3;
  _Block_copy(v5);
  *(OUTLINED_FUNCTION_27_17() + 16) = v2;
  v6 = v1;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_13_26();
  v0(v8);
}

uint64_t sub_1C5DCD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_49_7();
  v12 = v11;
  v14 = v13;
  v15 = sub_1C6016940();
  v17 = v16;
  OUTLINED_FUNCTION_58();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_31_9(v18);
  a8(v14, v12, v15, v17, v8, v9);
}

uint64_t sub_1C5DCD3A4()
{
  OUTLINED_FUNCTION_52_7();
  sub_1C6016940();
  OUTLINED_FUNCTION_58();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_1C5DDDFCC();
}

uint64_t sub_1C5DCD520()
{
  OUTLINED_FUNCTION_3_42();
  sub_1C6016940();
  OUTLINED_FUNCTION_58();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_31_9(v1);
  v2 = OUTLINED_FUNCTION_10_29();
  v0(v2);
}

uint64_t sub_1C5DCD610()
{
  OUTLINED_FUNCTION_3_42();
  sub_1C6016940();
  OUTLINED_FUNCTION_58();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_31_9(v1);
  v2 = OUTLINED_FUNCTION_10_29();
  v0(v2);
}

void sub_1C5DCD6A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = sub_1C6016900();
  if (a3)
  {
    v7 = sub_1C6014D30();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  a4(v6);
}

uint64_t sub_1C5DCD8A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1C6016940();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1C5DCDAF0()
{
  v1 = v0;
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  strcpy((inited + 32), "CurrentState");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = [v0 currentState];
  type metadata accessor for Description();
  v19 = sub_1C5DCA334(v3);
  v20 = v4;
  MEMORY[0x1C69534E0](23328, 0xE200000000000000);
  [v1 currentState];
  v5 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v5);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  v6 = v20;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v19;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  strcpy((inited + 80), "InternalStack");
  *(inited + 94) = -4864;
  v8 = [*&v1[OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack] stateDictionary];
  v9 = MEMORY[0x1E69E7CA0];
  v10 = sub_1C6016860();

  sub_1C5CE5EF4();
  *(inited + 96) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x65746167656C6544;
  *(inited + 136) = 0xE800000000000000;
  OUTLINED_FUNCTION_27();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = Strong;
  if (Strong)
  {
    Strong = swift_getObjectType();
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v19 = v13;
  v22 = Strong;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(&v19, 7104878, 0xE300000000000000);
  OUTLINED_FUNCTION_0_35();
  sub_1C5DD3F74(&v19, v14, v9 + 8, v15, sub_1C5C67580);
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 168) = v7;
  *(inited + 176) = 1701080909;
  *(inited + 184) = 0xE400000000000000;
  v16 = sub_1C5DCE140();
  *(inited + 216) = v7;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  return sub_1C6016880();
}

void sub_1C5DCDE34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C5DCDEF4;
  v5[3] = &block_descriptor_23;
  v4 = _Block_copy(v5);

  [v3 activateAudioSessionWithCompletion_];
  _Block_release(v4);
}

void sub_1C5DCDEF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C5DCE140()
{
  v1 = [*(v0 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack) modeDescription];
  v2 = sub_1C6016940();

  return v2;
}

id (*sub_1C5DCE4C8(uint64_t a1))(uint64_t a1, double a2)
{
  v3 = *(v1 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
  *a1 = v3;
  [v3 relativeVolume];
  *(a1 + 8) = v4;
  return sub_1C5DCE524;
}

id (*sub_1C5DCE60C(uint64_t a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
  *a1 = v3;
  *(a1 + 8) = [v3 isMuted];
  return sub_1C5DCE668;
}

uint64_t sub_1C5DCE6FC(unsigned __int16 a1)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      return 6;
    }

    else
    {
      v2 = a1;
      result = 0;
      switch(v2)
      {
        case 32769:
          result = 1;
          break;
        case 32770:
          result = 2;
          break;
        case 32771:
          OUTLINED_FUNCTION_17_21();
          sub_1C5DDD984();
          if (v3 < 0.0)
          {
            result = 4;
          }

          else
          {
            result = 3;
          }

          break;
        case 32772:
          result = 5;
          break;
        case 32773:
          result = 7;
          break;
        default:
          return result;
      }
    }
  }

  else if (a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t sub_1C5DCE7B0()
{
  OUTLINED_FUNCTION_107();
  sub_1C5DD403C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 16);
  sub_1C5DBC738();
  sub_1C5DD3FD4(&qword_1ED7DCF58, sub_1C5DBC738);

  sub_1C6016510();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5DD3FD4(&unk_1ED7DD2A0, sub_1C5DD403C);
  v6 = sub_1C6016600();

  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_1C5DCE9A0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      [v4 didReportSignpostWithType_];
      swift_unknownObjectRelease();
    }
  }
}

id sub_1C5DCEA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5DCEB30(unsigned __int16 a1, unsigned __int16 a2)
{
  swift_getKeyPath();
  sub_1C6014DC0();
  swift_getKeyPath();
  sub_1C6014DD0();
  sub_1C6014F90();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_25_11();
  v4 = OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_7_34();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v6 = Strong;
  v7 = sub_1C5DCE6FC(a1);
  [v6 stateDidChangeFromState:v7 toState:sub_1C5DCE6FC(a2) timeStamp:v4];

  return swift_unknownObjectRelease();
}

void sub_1C5DCEC3C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = *(a1 + 8);
  switch(a1[72])
  {
    case 1u:
      v12 = (v4 >> 24);
      switch((v11 >> 58) & 0x3C | (v11 >> 1) & 3)
      {
        case 3uLL:
          v13 = *(a1 + 1);
          swift_getKeyPath();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          sub_1C6014DD0();
          v14 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          v15 = sub_1C5DD9388((v3 & 0xFFFFFFFF000000FFLL | ((v4 & 0xFFFFFF) << 8) | (v12 << 32)), v14);
          if (!v15)
          {
            __break(1u);
            goto LABEL_230;
          }

          v16 = v15;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_147;
          }

          [Strong itemIsReadyToPlay:v16 timeStamp:v13];
          goto LABEL_146;
        case 4uLL:
          OUTLINED_FUNCTION_19_23();
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DD0();
          v119 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          if (!sub_1C5DD9388((v3 | (v12 << 32)), v119))
          {
            goto LABEL_235;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

          v116 = sub_1C6014D30();
          v120 = OUTLINED_FUNCTION_33_6();
          goto LABEL_144;
        case 5uLL:
          OUTLINED_FUNCTION_19_23();
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DD0();
          v115 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          if (!sub_1C5DD9388((v3 | (v12 << 32)), v115))
          {
            goto LABEL_234;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

          v116 = sub_1C6014D30();
          v117 = OUTLINED_FUNCTION_33_6();
          [v117 v118];
          goto LABEL_145;
        case 7uLL:
          v85 = *(a1 + 1);
          OUTLINED_FUNCTION_22_19();
          OUTLINED_FUNCTION_36_10();
          swift_getObjectType();
          v122 = OUTLINED_FUNCTION_18_22();
          if (!sub_1C5DD9388(v122, v6))
          {
            goto LABEL_236;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_125;
          }

          goto LABEL_147;
        case 8uLL:
          OUTLINED_FUNCTION_22_19();
          OUTLINED_FUNCTION_36_10();
          swift_getObjectType();
          v140 = OUTLINED_FUNCTION_18_22();
          if (!sub_1C5DD9388(v140, v6))
          {
            goto LABEL_238;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_122;
          }

          goto LABEL_147;
        case 9uLL:
          OUTLINED_FUNCTION_22_19();
          OUTLINED_FUNCTION_36_10();
          swift_getObjectType();
          v87 = OUTLINED_FUNCTION_18_22();
          if (!sub_1C5DD9388(v87, v6))
          {
            goto LABEL_233;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

LABEL_122:
          v141 = OUTLINED_FUNCTION_33_6();
          [v141 v142];
          goto LABEL_146;
        case 0xDuLL:
          v299 = *(a1 + 1);
          sub_1C5DD6D4C(&v310);
          if (!v311)
          {
            goto LABEL_174;
          }

          sub_1C5C74680(0, qword_1ED7DE920);
          OUTLINED_FUNCTION_107();
          type metadata accessor for SmartPlayerItemTransition();
          if ((OUTLINED_FUNCTION_40_8() & 1) == 0)
          {
            return;
          }

          v123 = v3 & 0xFFFFFFFF000000FFLL | ((v4 & 0xFFFFFF) << 8);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v124 = sub_1C5DEA0B4();
          v126 = v125;
          swift_unknownObjectRelease();
          swift_getObjectType();
          if (v124 == sub_1C5DEA0B4() && v126 == v127)
          {
          }

          else
          {
            v129 = OUTLINED_FUNCTION_43_10();

            if ((v129 & 1) == 0)
            {
              goto LABEL_217;
            }
          }

          sub_1C5D9C084();
          sub_1C5CFF290(0xD000000000000012, 0x80000001C604FF70, v223, &v310);

          if (v311)
          {
            if ((swift_dynamicCast() & 1) != 0 && v306 >= 5)
            {
              type metadata accessor for MFPlaybackStackControllerImplementation();
              sub_1C5DCB43C();
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_35();
            sub_1C5DD3F74(&v310, v275, v274 + 8, v276, sub_1C5C67580);
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v277 = swift_unknownObjectWeakLoadStrong();
          if (!v277)
          {
            goto LABEL_217;
          }

          v278 = v277;
          v279 = *(v306 + 48);
          v280 = *(v306 + 64);
          v281 = *(v299 + 16);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v282 = [v123 | (v12 << 32) avPlayerItem];
          if (!v282)
          {
            goto LABEL_241;
          }

          v283 = v282;
          v284 = sub_1C5DA2D34(v282, v281);

          sub_1C5DA50F8();
          v286 = v285;
          sub_1C5D9C084();
          v287 = sub_1C6016840();

          [v278 smartTransitionWillBeginFrom:v279 to:v280 transitionTime:v284 outgoingItemAveragePrePivotTransitionRate:v299 timeStamp:v287 parameters:v286];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_147;
        case 0xEuLL:
          v64 = *(a1 + 1);
          sub_1C5DD6D4C(&v301);
          if (!v304)
          {
            OUTLINED_FUNCTION_0_66();
            sub_1C5DD3F74(&v301, v183, v184, v185, v186);
            OUTLINED_FUNCTION_21_14();
            v312 = 0;
            goto LABEL_174;
          }

          sub_1C5C74680(0, qword_1ED7DE920);
          sub_1C5C74680(0, qword_1ED7DD8B0);
          v65 = OUTLINED_FUNCTION_39_7();
          if ((v65 & 1) == 0)
          {
            v312 = 0;
            OUTLINED_FUNCTION_21_14();
            goto LABEL_174;
          }

          if (!v311)
          {
LABEL_174:
            OUTLINED_FUNCTION_0_66();
            v201 = &v310;
            goto LABEL_180;
          }

          v73 = (v3 & 0xFFFFFFFF000000FFLL | ((v4 & 0xFFFFFF) << 8) | (v12 << 32));
          v74 = OUTLINED_FUNCTION_51_7(v65, v66, v67, v68, v69, v70, v71, v72, v297, v301, v302, v303, v304, v305, v306, *(&v306 + 1), v307, *(&v307 + 1), v308, v309, v310);
          sub_1C5D5DDFC(v74, v75);
          v76 = *(&v307 + 1);
          __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
          OUTLINED_FUNCTION_12_30();
          v77(v76);
          swift_getObjectType();
          v78 = sub_1C5DEA0B4();
          v80 = v79;
          swift_unknownObjectRelease();
          swift_getObjectType();
          if (v78 == sub_1C5DEA0B4() && v80 == v81)
          {
          }

          else
          {
            v83 = sub_1C6017860();

            if ((v83 & 1) == 0)
            {
              goto LABEL_205;
            }
          }

          __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
          v225 = OUTLINED_FUNCTION_30_13();
          v226(v225);
          v227 = sub_1C5DAFCC8();
          OUTLINED_FUNCTION_7_34();
          v228 = swift_unknownObjectWeakLoadStrong();
          if (v228)
          {
            v229 = v228;
            v230 = *(&v307 + 1);
            __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
            OUTLINED_FUNCTION_6_32();
            v232 = v231(v230);
            v233 = *(&v307 + 1);
            __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
            OUTLINED_FUNCTION_12_30();
            v235 = v234(v233);
            __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
            v236 = v64;
            if ([v73 avPlayerItem])
            {
              v237 = OUTLINED_FUNCTION_32_7();
              v239 = v238(v237);

              v240 = *(&v307 + 1);
              v241 = v308;
              __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
              (*(v241 + 40))(v240, v241);
              [v229 overlappingTransitionDidReachPivotPointFrom:v232 to:v235 transitionTime:v239 incomingItemAveragePostPivotTransitionRate:v227 transitionType:v236 timeStamp:?];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
LABEL_204:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_205;
            }

LABEL_242:
            __break(1u);
            goto LABEL_243;
          }

LABEL_205:
          v256 = &v306;
LABEL_228:
          __swift_destroy_boxed_opaque_existential_0(v256);
          return;
        case 0xFuLL:
          v53 = *(a1 + 1);
          v54 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          sub_1C5DD6D4C(&v310);
          if (!v311)
          {
            goto LABEL_174;
          }

          sub_1C5C74680(0, qword_1ED7DE920);
          OUTLINED_FUNCTION_107();
          type metadata accessor for SmartPlayerItemTransition();
          if ((OUTLINED_FUNCTION_40_8() & 1) == 0)
          {
            return;
          }

          swift_getObjectType();
          swift_unknownObjectRetain();
          v55 = sub_1C5DEA0B4();
          v57 = v56;
          swift_unknownObjectRelease();
          swift_getObjectType();
          if (v55 == sub_1C5DEA0B4() && v57 == v58)
          {
          }

          else
          {
            v60 = OUTLINED_FUNCTION_42_9();

            if ((v60 & 1) == 0)
            {
              goto LABEL_217;
            }
          }

          v217 = OBJC_IVAR___MFPlaybackStackControllerImplementation_delegate;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            OUTLINED_FUNCTION_45_6();
            swift_unknownObjectRetain();
            if (![v53 avPlayerItem])
            {
              goto LABEL_240;
            }

            v218 = OUTLINED_FUNCTION_35_13();
            sub_1C5DA2D34(v219, v218);

            v220 = OUTLINED_FUNCTION_15_22();
            [v220 v221];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          v222 = *(v54 + 40);
          sub_1C5D4B048();
          sub_1C5DD38B0(v3 & 1, v306, *(v222 + 136));
LABEL_217:

          return;
        case 0x11uLL:
          OUTLINED_FUNCTION_19_23();
          v88 = (v3 | (v12 << 32));
          sub_1C5DD6D4C(&v301);
          if (v304)
          {
            sub_1C5C74680(0, qword_1ED7DE920);
            sub_1C5C74680(0, qword_1ED7DD8B0);
            v89 = OUTLINED_FUNCTION_39_7();
            if (v89)
            {
              if (v311)
              {
                v97 = OUTLINED_FUNCTION_51_7(v89, v90, v91, v92, v93, v94, v95, v96, v297, v301, v302, v303, v304, v305, v306, *(&v306 + 1), v307, *(&v307 + 1), v308, v309, v310);
                sub_1C5D5DDFC(v97, v98);
                v99 = *(&v307 + 1);
                __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
                OUTLINED_FUNCTION_6_32();
                v100(v99);
                swift_getObjectType();
                v101 = sub_1C5DEA0B4();
                v103 = v102;
                swift_unknownObjectRelease();
                swift_getObjectType();
                if (v101 == sub_1C5DEA0B4() && v103 == v104)
                {
                }

                else
                {
                  v106 = OUTLINED_FUNCTION_43_10();

                  if ((v106 & 1) == 0)
                  {
                    __swift_destroy_boxed_opaque_existential_0(&v306);
LABEL_177:
                    v206 = objc_opt_self();
                    v207 = *MEMORY[0x1E69B1338];
                    v208 = sub_1C6016900();
                    v209 = sub_1C6016900();
                    v210 = sub_1C6016900();
                    sub_1C5C67580(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
                    v211 = swift_allocObject();
                    *(v211 + 16) = xmmword_1C60311E0;
                    *&v306 = sub_1C5CB3674(30);
                    *(&v306 + 1) = v212;
                    MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C60535C0);
                    sub_1C5DD6D4C(&v310);
                    sub_1C5D45EB0(0, &qword_1ED7DE918, qword_1ED7DE920);
                    v213 = sub_1C60169A0();
                    MEMORY[0x1C69534E0](v213);

                    MEMORY[0x1C69534E0](0x203A6D65746920, 0xE700000000000000);
                    swift_getObjectType();
                    *&v310 = v88;
                    sub_1C6017830();
                    v214 = v306;
                    *(v211 + 56) = MEMORY[0x1E69E6158];
                    *(v211 + 32) = v214;
                    sub_1C5DC9604(v207, v208, v209, v210, 0, v211, 0, v206);

                    return;
                  }
                }

                __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
                v242 = OUTLINED_FUNCTION_30_13();
                v243(v242);
                v244 = sub_1C5DAFCC8();
                OUTLINED_FUNCTION_7_34();
                v245 = swift_unknownObjectWeakLoadStrong();
                if (!v245)
                {
                  goto LABEL_205;
                }

                v246 = v245;
                v247 = *(&v307 + 1);
                __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
                OUTLINED_FUNCTION_6_32();
                v249 = v248(v247);
                v250 = *(&v307 + 1);
                __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
                OUTLINED_FUNCTION_12_30();
                v252 = v251(v250);
                __swift_project_boxed_opaque_existential_0(&v306, *(&v307 + 1));
                if ([v88 avPlayerItem])
                {
                  v253 = OUTLINED_FUNCTION_32_7();
                  v255 = v254(v253);

                  [v246 overlappedPlaybackWillBeginFrom:v249 to:v252 transitionTime:v255 transitionType:v244 timeStamp:v298];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_204;
                }

LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
                return;
              }
            }

            else
            {
              v312 = 0;
              OUTLINED_FUNCTION_21_14();
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_66();
            sub_1C5DD3F74(&v301, v187, v188, v189, v190);
            OUTLINED_FUNCTION_21_14();
            v312 = 0;
          }

          OUTLINED_FUNCTION_0_66();
          sub_1C5DD3F74(&v310, v202, v203, v204, v205);
          goto LABEL_177;
        case 0x12uLL:
          v158 = *(a1 + 1);
          v159 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          sub_1C5DD6D4C(&v301);
          if (v304)
          {
            sub_1C5C74680(0, qword_1ED7DE920);
            sub_1C5C74680(0, qword_1ED7DD8B0);
            if (swift_dynamicCast())
            {
              if (*(&v307 + 1))
              {
                sub_1C5D5DDFC(&v306, &v310);
                v160 = v311;
                __swift_project_boxed_opaque_existential_0(&v310, v311);
                OUTLINED_FUNCTION_6_32();
                v161(v160);
                swift_getObjectType();
                v162 = sub_1C5DEA0B4();
                v164 = v163;
                swift_unknownObjectRelease();
                swift_getObjectType();
                if (v162 == sub_1C5DEA0B4() && v164 == v165)
                {
                }

                else
                {
                  v167 = OUTLINED_FUNCTION_42_9();

                  if ((v167 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }

                v257 = OUTLINED_FUNCTION_51_7(v168, v169, v170, v171, v172, v173, v174, v175, v297, v301, v302, v303, v304, v305, v306, *(&v306 + 1), v307, *(&v307 + 1), v308, v309, v310);
                sub_1C5CDAF64(v257, v258);
                type metadata accessor for SmartPlayerItemTransition();
                v259 = OUTLINED_FUNCTION_38_9();
                if (v259)
                {
                  v267 = v301;
                  if (v3)
                  {
                    v268 = OBJC_IVAR___MFPlaybackStackControllerImplementation_delegate;
                    OUTLINED_FUNCTION_27();
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      OUTLINED_FUNCTION_45_6();
                      swift_unknownObjectRetain();
                      if (![v158 avPlayerItem])
                      {
                        goto LABEL_244;
                      }

                      v269 = OUTLINED_FUNCTION_35_13();
                      sub_1C5DA2D34(v270, v269);

                      v271 = OUTLINED_FUNCTION_15_22();
                      [v271 v272];
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    v273 = *(v159 + 40);
                    sub_1C5D4B048();
                    sub_1C5DD38B0(0, v267, *(v273 + 136));
                  }
                }

                else
                {
                  v289 = OUTLINED_FUNCTION_51_7(v259, v260, v261, v262, v263, v264, v265, v266, v300, v301, v302, v303, v304, v305, v306, *(&v306 + 1), v307, *(&v307 + 1), v308, v309, v310);
                  sub_1C5CDAF64(v289, v290);
                  type metadata accessor for CrossFadePlayerItemTransition();
                  if (!OUTLINED_FUNCTION_38_9())
                  {
LABEL_227:
                    v256 = &v310;
                    goto LABEL_228;
                  }

                  v291 = v301;
                  v292 = OBJC_IVAR___MFPlaybackStackControllerImplementation_delegate;
                  OUTLINED_FUNCTION_27();
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    if (![v158 avPlayerItem])
                    {
                      goto LABEL_245;
                    }

                    v293 = OUTLINED_FUNCTION_35_13();
                    sub_1C5D99A54(v293);

                    v294 = OUTLINED_FUNCTION_15_22();
                    [v294 v295];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                  }

                  v296 = *(v159 + 40);
                  sub_1C5D4B048();
                  sub_1C5DD31D4((v3 & 1) == 0, v291, *(v296 + 136));
                }

                goto LABEL_227;
              }
            }

            else
            {
              v308 = 0;
              v306 = 0u;
              v307 = 0u;
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_66();
            sub_1C5DD3F74(&v301, v192, v193, v194, v195);
            v306 = 0u;
            v307 = 0u;
            v308 = 0;
          }

          OUTLINED_FUNCTION_0_66();
          v201 = &v306;
LABEL_180:
          sub_1C5DD3F74(v201, v197, v198, v199, v200);
          return;
        case 0x13uLL:
          OUTLINED_FUNCTION_19_23();
          swift_getKeyPath();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          sub_1C6014DD0();
          v176 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          if (!sub_1C5DD9388((v3 | (v12 << 32)), v176))
          {
            goto LABEL_239;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

          v116 = sub_1C6016900();
          v120 = OUTLINED_FUNCTION_33_6();
LABEL_144:
          [v120 v121];
LABEL_145:

          goto LABEL_146;
        case 0x15uLL:
          OUTLINED_FUNCTION_19_23();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DC0();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DC0();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DD0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DD0();
          v42 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          v43 = sub_1C5DD9388((v3 | (v12 << 32)), v42);
          if (!v43)
          {
            goto LABEL_231;
          }

          v44 = v43;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v45 = swift_unknownObjectWeakLoadStrong();
          if (!v45)
          {
            goto LABEL_147;
          }

          LODWORD(v46) = v297;
          v47 = *&v6;
          if (v7)
          {
            v47 = NAN;
          }

          [v45 playbackDidStartForItem:v44 rate:(v7 >> 8) & 1 expectedStartTime:v10 fromStalling:v46 timeStamp:v47];
          goto LABEL_146;
        case 0x16uLL:
          OUTLINED_FUNCTION_19_23();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DC0();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DC0();
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DD0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_20_22();
          sub_1C6014DD0();
          v48 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          v49 = sub_1C5DD9388((v3 | (v12 << 32)), v48);
          if (!v49)
          {
            goto LABEL_232;
          }

          v50 = v49;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v51 = swift_unknownObjectWeakLoadStrong();
          if (!v51)
          {
            goto LABEL_147;
          }

          v52 = v51;
          if (v6 != 1 && v6 != 2)
          {
            strcpy(&v306, "participant ");
            BYTE13(v306) = 0;
            HIWORD(v306) = -5120;
            if (*&v6 == 0.0)
            {
              sub_1C5D5D56C(v297, 0);
              v215 = 0xE400000000000000;
              v216 = 1280070990;
            }

            else
            {
              v215 = v6;
              v216 = v297;
            }

            v48 = &v306;
            MEMORY[0x1C69534E0](v216, v215);
          }

          sub_1C6016900();
          OUTLINED_FUNCTION_73();

          sub_1C5DD43F0();
          v288 = sub_1C6016900();

          [v52 playbackDidStopForItem:v50 source:v48 reason:v288 timeStamp:*&v8];

          goto LABEL_146;
        case 0x18uLL:
          OUTLINED_FUNCTION_46_5();
          v136 = OUTLINED_FUNCTION_44_10();
          if (!v136)
          {
            return;
          }

          v137 = v136;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DD0();
          OUTLINED_FUNCTION_5_36();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

          OUTLINED_FUNCTION_53_7();
          if (v7 == 1)
          {
            v139 = 1;
          }

          else
          {
            v139 = 2;
          }

          [v138 playbackTimeDidChangeTo:v137 forItem:v139 reason:*&v8 timeStamp:COERCE_DOUBLE(v3 | (v12 << 32))];
          goto LABEL_17;
        case 0x19uLL:
          OUTLINED_FUNCTION_19_23();
          v130 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          v131 = OUTLINED_FUNCTION_18_22();
          v132 = sub_1C5DD9388(v131, v130);
          if (!v132)
          {
            goto LABEL_237;
          }

          v133 = v132;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DC0();
          *&v310 = v2;
          swift_getKeyPath();
          OUTLINED_FUNCTION_21_22();
          sub_1C6014DD0();
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v134 = swift_unknownObjectWeakLoadStrong();
          if (!v134)
          {
            goto LABEL_147;
          }

          LODWORD(v135) = v297;
          [v134 playbackRateDidChangeToRate:v133 forItem:v6 timeStamp:v135];
          goto LABEL_17;
        case 0x1AuLL:
          OUTLINED_FUNCTION_19_23();
          v34 = (v3 | (v12 << 32));
          v35 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          swift_getObjectType();
          v36 = sub_1C5DD9388(v34, v35);
          if (!v36)
          {
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
            goto LABEL_242;
          }

          v37 = v36;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v38 = swift_unknownObjectWeakLoadStrong();
          if (!v38)
          {
            goto LABEL_147;
          }

          v39 = v38;
          v40 = sub_1C6016900();
          if (v9 != 0.0)
          {
            v9 = COERCE_DOUBLE(sub_1C6016900());
          }

          LODWORD(v41) = v297;
          [v39 playbackRateDidChangeNotifiedForItem:v37 newRate:v40 reason:*&v9 participantIdentifier:v10 timeStamp:v41];

          goto LABEL_146;
        case 0x1BuLL:
          OUTLINED_FUNCTION_46_5();
          v61 = OUTLINED_FUNCTION_44_10();
          if (!v61)
          {
            return;
          }

          v62 = v61;
          OUTLINED_FUNCTION_5_36();
          v63 = swift_unknownObjectWeakLoadStrong();
          if (!v63)
          {
            goto LABEL_147;
          }

          [v63 playbackIsLikelyToKeepUp:v3 & 1 forItem:v62 timeStamp:v6];
          goto LABEL_17;
        case 0x1CuLL:
          OUTLINED_FUNCTION_46_5();
          v177 = OUTLINED_FUNCTION_44_10();
          if (!v177)
          {
            return;
          }

          v178 = v177;
          OUTLINED_FUNCTION_5_36();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

          OUTLINED_FUNCTION_53_7();
          [v179 playbackBufferStateDidChangeToState:v3 | (v12 << 32) forItem:v178 timeStamp:v6];
          goto LABEL_17;
        case 0x1DuLL:
          if (v5)
          {
            v180 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
            swift_getObjectType();
            v181 = swift_unknownObjectRetain();
            v182 = sub_1C5DD9388(v181, v180);
            swift_unknownObjectRelease();
            if (!v182)
            {
              return;
            }
          }

          else
          {
            v196 = sub_1C5DD9B58();
            if (!v196)
            {
              return;
            }

            v182 = v196;
          }

          if (v3 & 1) == 0 || (v7)
          {

            swift_unknownObjectRelease();
            return;
          }

          OUTLINED_FUNCTION_5_36();
          v224 = swift_unknownObjectWeakLoadStrong();
          if (v224)
          {
            [v224 userSeekCompletedForItem:v182 fromTime:v11 & 0xFFFFFFFFFFFFFF9 toTime:*&v6 timeStamp:v8];
LABEL_146:
            swift_unknownObjectRelease();
          }

          goto LABEL_147;
        case 0x1EuLL:
          OUTLINED_FUNCTION_22_19();
          if (v9 != 0.0)
          {
            v149 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
            v150 = v148;
            swift_getObjectType();
            v151 = OUTLINED_FUNCTION_18_22();
            v152 = COERCE_DOUBLE(sub_1C5DD9388(v151, v149));
            v148 = v150;
            v9 = v152;
          }

          if (v148)
          {
            v153 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
            v154 = v148;
            swift_getObjectType();
            v155 = sub_1C5DD9388(v154, v153);
          }

          else
          {
            v155 = 0;
          }

          OUTLINED_FUNCTION_5_36();
          v191 = swift_unknownObjectWeakLoadStrong();
          if (!v191)
          {
            goto LABEL_17;
          }

          [v191 currentItemWillChangeFromItem:*&v9 toItem:v155 source:1 timeStamp:v6];
          swift_unknownObjectRelease();
          goto LABEL_146;
        case 0x1FuLL:
          OUTLINED_FUNCTION_22_19();
          OUTLINED_FUNCTION_36_10();
          v85 = v143;
          swift_getObjectType();
          v144 = OUTLINED_FUNCTION_18_22();
          if (!sub_1C5DD9388(v144, v6))
          {
            return;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_125;
          }

          goto LABEL_147;
        case 0x20uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          v156 = swift_unknownObjectWeakLoadStrong();
          if (!v156)
          {
            return;
          }

          LODWORD(v157) = v3 | (v4 << 8);
          [v156 relativeVolumeDidChangeTo:*&v9 timeStamp:v157];
          goto LABEL_147;
        case 0x21uLL:
          OUTLINED_FUNCTION_22_19();
          v107 = *(v2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
          v109 = v108;
          swift_getObjectType();
          v110 = OUTLINED_FUNCTION_18_22();
          v111 = sub_1C5DD9388(v110, v107);
          if (!v111)
          {
            return;
          }

          v112 = v111;
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v113 = swift_unknownObjectWeakLoadStrong();
          if (!v113)
          {
            goto LABEL_147;
          }

          LODWORD(v114) = v109;
          [v113 effectiveRateDidChangeTo:v112 forItem:v6 timeStamp:v114];
          goto LABEL_146;
        case 0x22uLL:
          OUTLINED_FUNCTION_22_19();
          OUTLINED_FUNCTION_36_10();
          v85 = v84;
          swift_getObjectType();
          v86 = OUTLINED_FUNCTION_18_22();
          if (!sub_1C5DD9388(v86, v6))
          {
            return;
          }

          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_147;
          }

LABEL_125:
          v145 = OUTLINED_FUNCTION_33_6();
          [v145 v146];
          goto LABEL_146;
        case 0x23uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          OUTLINED_FUNCTION_53_7();

          v27 = sub_1C6016900();

          [*&v9 timeControlStatusDidChange:v3 | (v12 << 32) waitingReason:v27 timeStamp:v7];
          goto LABEL_28;
        case 0x24uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          OUTLINED_FUNCTION_53_7();
          [v33 renderingModeDidChange:v3 | (v12 << 32) timeStamp:?];
          goto LABEL_147;
        default:
          return;
      }

    case 2u:
      if (*(a1 + 2) == 3)
      {
        if (v3 | (v4 << 8) | v5)
        {
          return;
        }

        v21 = sub_1C5DD9B58();
        if (!v21)
        {
          return;
        }

        v22 = v21;
        OUTLINED_FUNCTION_5_36();
        v23 = swift_unknownObjectWeakLoadStrong();
        if (v23)
        {
          [v23 playbackIsBlockedOnNonPlayableItem_];
LABEL_17:
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (*(a1 + 2) != 2)
        {
          return;
        }

        OUTLINED_FUNCTION_1_55();
        swift_beginAccess();
        v18 = swift_unknownObjectWeakLoadStrong();
        if (!v18)
        {
          return;
        }

        v19 = v18;
        v20 = sub_1C6016900();
        [v19 didReachEndOfQueueWithReason_];
      }

LABEL_147:
      swift_unknownObjectRelease();
      return;
    case 3u:
      switch(v7 >> 61)
      {
        case 1uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_27;
          }

          break;
        case 2uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_27;
          }

          break;
        case 3uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            [v25 routeDidChange:v3 & 1 metadata:*&v9 timeStamp:v6];
            goto LABEL_147;
          }

          break;
        case 4uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          v24 = swift_unknownObjectWeakLoadStrong();
          if (v24)
          {
            [v24 screenRecordingDidChange:v3 & 1 timeStamp:*&v9];
            goto LABEL_147;
          }

          break;
        case 5uLL:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          v30 = swift_unknownObjectWeakLoadStrong();
          if (v30)
          {
            v31 = v9;
            if (!(v3 | (v4 << 8)))
            {
              v31 = 0.0;
            }

            [v30 mediaServicesInterruptionDidBeginWithItemAtDeath:v31 timeAtDeath:? timeStamp:?];
            goto LABEL_147;
          }

          break;
        case 6uLL:
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32)
          {
            [v32 mediaServicesInterruptionDidEndWithTimeStamp_];
            goto LABEL_147;
          }

          break;
        case 7uLL:
          OUTLINED_FUNCTION_1_55();
          swift_beginAccess();
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            [v26 mediaServicesPurgeDidOccurWithTimeStamp_];
            goto LABEL_147;
          }

          break;
        default:
          OUTLINED_FUNCTION_1_55();
          OUTLINED_FUNCTION_34_11();
          if (swift_unknownObjectWeakLoadStrong())
          {
LABEL_27:
            v27 = OUTLINED_FUNCTION_41_7();
            v28 = OUTLINED_FUNCTION_319();
            [v28 v29];
LABEL_28:

            goto LABEL_147;
          }

          break;
      }

      return;
    default:
      return;
  }
}

uint64_t sub_1C5DD0BD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [v2 currentTime];
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_25_11();
    [v6 currentItemWillChangeFromItem:a1 toItem:a2 source:0 timeStamp:OUTLINED_FUNCTION_2_42()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0C7C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    [v1 currentTime];
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_25_11();
    [v4 itemDidResignCurrent:a1 source:0 timeStamp:OUTLINED_FUNCTION_2_42()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0D20(uint64_t a1)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1C6014D30();
    [v1 currentTime];
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_25_11();
    [v4 itemDidFailToLoad:a1 silently:1 error:v5 timeStamp:OUTLINED_FUNCTION_2_42()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0DDC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C6014DC0();
  swift_getKeyPath();
  sub_1C6014DD0();
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    [v1 currentTime];
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_25_11();
    [v4 itemDidBecomeCurrent:a1 source:0 timeStamp:OUTLINED_FUNCTION_2_42()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0ECC()
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1C6014D30();
    v2 = OUTLINED_FUNCTION_319();
    [v2 v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1C6014D30();
    [v6 errorResolutionDidEndForItem:a1 error:v7 resolution:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD0FE0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_73();
  v5 = v4(v3, v2);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  (*(v10 + 48))(&v21, v9, v10);
  v11 = v24 >> 6;
  if (v11)
  {
    if (v11 == 1)
    {
      v11 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_24_18(v23, v22);
      v13 = v13 && v12 == 128;
      if (v13)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }
    }
  }

  OUTLINED_FUNCTION_27();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v16);
    v18 = *(v17 + 88);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18(v16, v17);
    v19 = sub_1C6016840();

    [v15 stackControllerDidCreateTransitionFrom:v5 to:v8 type:v11 parameters:v19];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DD11DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 184))(ObjectType, a2);
    v14 = sub_1C6016900();

    sub_1C5DBCF70(a3, a4, a5, a6);
    v15 = sub_1C6016900();

    v16 = sub_1C6016900();
    [v12 willPerformPlayerOperationWithPlayerIdentifier:v14 operation:v15 reason:v16];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DD1300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  if (a6 >= 2u && (a6 != 4 || a4 | a3 | a5))
  {
    v28 = 0;
LABEL_19:
    OUTLINED_FUNCTION_27();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 184))(ObjectType, a2);
      sub_1C6016900();
      OUTLINED_FUNCTION_73();

      if (v28)
      {
        v31 = sub_1C6016900();
      }

      else
      {
        v31 = 0;
      }

      sub_1C5DBCF70(v9, v8, v7, v6);
      v32 = sub_1C6016900();

      v33 = OUTLINED_FUNCTION_33_6();
      [v33 v34];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v12 = swift_getObjectType();
  v38 = a1;
  v13 = (*(a2 + 328))(v12, a2);
  v14 = sub_1C5C6AA20(v13);
  v39 = a2;
  v40 = v9;
  if (!v14)
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v47[0] = v17;
    sub_1C5C67580(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C5D5D054();
    sub_1C60168D0();
    v28 = v29;

    a2 = v39;
    v9 = v40;
    a1 = v38;
    goto LABEL_19;
  }

  v15 = v14;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1C5C66A1C(0, v14 & ~(v14 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v35 = v8;
    v36 = v7;
    v37 = v6;
    v16 = 0;
    v17 = v46;
    v43 = v13;
    v44 = v13 & 0xC000000000000001;
    v42 = v13 & 0xFFFFFFFFFFFFFF8;
    v18 = v41;
    v19 = v15;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v44)
      {
        v21 = MEMORY[0x1C6954040](v16, v13);
      }

      else
      {
        if (v16 >= *(v42 + 16))
        {
          goto LABEL_26;
        }

        v21 = *(v13 + 8 * v16 + 32);
      }

      v22 = v21;
      v45 = v21;
      sub_1C5DD163C(&v45, v18, v47);

      v24 = v47[0];
      v23 = v47[1];
      v46 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C5C66A1C((v25 > 1), v26 + 1, 1);
        v18 = v41;
        v17 = v46;
      }

      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      ++v16;
      v13 = v43;
      if (v20 == v19)
      {

        v6 = v37;
        v8 = v35;
        v7 = v36;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C5DD163C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR___MFPlaybackStackControllerImplementation_internalStack);
  v5 = *a1;
  v6 = [v5 contentItemID];
  v7 = sub_1C6016940();
  v9 = v8;

  v10 = sub_1C5D4F3C4(v7, v9);

  if (v10)
  {
  }

  else
  {
    v11 = [*(v4 + 16) queueItemForPlayerItem:v5 allowReuse:1];

    if (!v11)
    {
      sub_1C6017540();
      v14 = sub_1C5DBCDF8();
      v16 = v15;

      v17 = v14;
      v18 = v16;
      result = MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6053550);
      goto LABEL_5;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  v12 = sub_1C5DBCDF8();
  MEMORY[0x1C69534E0](v12);

  MEMORY[0x1C69534E0](32, 0xE100000000000000);
  swift_getObjectType();
  sub_1C6017830();
  result = swift_unknownObjectRelease();
LABEL_5:
  *a3 = v17;
  a3[1] = v18;
  return result;
}

void *sub_1C5DD17D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_34();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result itemIsReadyForMetrics:a1 accessLog:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5DD1888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C6016900();
  }

  else
  {
    v2 = 0;
  }

  v3 = OUTLINED_FUNCTION_319();
  v5 = [v3 v4];

  return v5;
}

unint64_t sub_1C5DD18F4()
{
  result = qword_1EC1AB920;
  if (!qword_1EC1AB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB920);
  }

  return result;
}

unint64_t sub_1C5DD194C()
{
  result = qword_1EC1AB928;
  if (!qword_1EC1AB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB928);
  }

  return result;
}

unint64_t sub_1C5DD19A4()
{
  result = qword_1EC1AB930;
  if (!qword_1EC1AB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB930);
  }

  return result;
}

unint64_t sub_1C5DD19FC()
{
  result = qword_1EC1AB938;
  if (!qword_1EC1AB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB938);
  }

  return result;
}

unint64_t sub_1C5DD1A54()
{
  result = qword_1EC1AB940;
  if (!qword_1EC1AB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB940);
  }

  return result;
}

unint64_t sub_1C5DD1AAC()
{
  result = qword_1EC1AB948;
  if (!qword_1EC1AB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB948);
  }

  return result;
}

unint64_t sub_1C5DD1B04()
{
  result = qword_1EC1AB950;
  if (!qword_1EC1AB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB950);
  }

  return result;
}

unint64_t sub_1C5DD1B5C()
{
  result = qword_1EC1AB958;
  if (!qword_1EC1AB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB958);
  }

  return result;
}

unint64_t sub_1C5DD1BB4()
{
  result = qword_1EC1AB960;
  if (!qword_1EC1AB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB960);
  }

  return result;
}

unint64_t sub_1C5DD1C0C()
{
  result = qword_1EC1AB968;
  if (!qword_1EC1AB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB968);
  }

  return result;
}

unint64_t sub_1C5DD1C64()
{
  result = qword_1EC1AB970;
  if (!qword_1EC1AB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB970);
  }

  return result;
}

unint64_t sub_1C5DD1CBC()
{
  result = qword_1EC1AB978;
  if (!qword_1EC1AB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB978);
  }

  return result;
}

unint64_t sub_1C5DD1D14()
{
  result = qword_1EC1AB980;
  if (!qword_1EC1AB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB980);
  }

  return result;
}

unint64_t sub_1C5DD1D6C()
{
  result = qword_1EC1AB988;
  if (!qword_1EC1AB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB988);
  }

  return result;
}

unint64_t sub_1C5DD1DC4()
{
  result = qword_1EC1AB990;
  if (!qword_1EC1AB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB990);
  }

  return result;
}

unint64_t sub_1C5DD1E1C()
{
  result = qword_1EC1AB998;
  if (!qword_1EC1AB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB998);
  }

  return result;
}

uint64_t sub_1C5DD2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C60167E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v13 = sub_1C6014D30();
        [v12 stackControllerDidCancelTransitionFrom:v9 to:v10 type:2 reason:v13];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  (*(v6 + 104))(v8, *MEMORY[0x1E69D3968], v5);
  sub_1C5DD3FD4(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v14 = sub_1C6015290();
  result = (*(v6 + 8))(v8, v5);
  if (v14)
  {
    if (*(a3 + 208))
    {

      sub_1C5D6D350(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return result;
}

uint64_t sub_1C5DD2FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = (*(a5 + 32))(a4, a5);
  (*(a5 + 48))(&v20, a4, a5);
  v12 = v23 >> 6;
  if (v12)
  {
    if (v12 == 1)
    {
      v12 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_24_18(v22, v21);
      v14 = v14 && v13 == 128;
      if (v14)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  OUTLINED_FUNCTION_27();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = sub_1C6014D30();
    [v16 stackControllerDidCancelTransitionFrom:v10 to:v11 type:v12 reason:v17];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v7 + 8))(v9, a4);
}

uint64_t sub_1C5DD31D4(char a1, uint64_t a2, uint64_t a3)
{
  v46 = type metadata accessor for CrossFadePlayerItemTransition();
  v47 = &off_1F4543970;
  v45[0] = a2;
  v6 = __swift_project_boxed_opaque_existential_0(v45, v46);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1C5DABCEC(__dst);
  v9 = __dst[3];
  if (__dst[3])
  {
    v39 = a3;
    v10 = __dst[4];
    __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
    v11 = *(v10 + 8);

    v12 = v11(v9, v10);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(__dst);
    if (v8 == v12 && v7 == v14)
    {

      v17 = v39;
    }

    else
    {
      v16 = sub_1C6017860();

      v17 = v39;
      if ((v16 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_0(v45);
      }
    }

    sub_1C5DABCEC(__dst);
    if (__dst[3])
    {
      sub_1C5C74680(0, qword_1ED7DE920);
      type metadata accessor for SmartPlayerItemTransition();
      v18 = v6;
      if (swift_dynamicCast())
      {
        v19 = __src[0];
        if (a1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1C5DE4520();
            swift_unknownObjectRelease();
          }

          *(__src[0] + 139) = 1;
          sub_1C5D7E40C(v17 + 16, v43);
          if (v44)
          {
            __swift_project_boxed_opaque_existential_0(v43, v44);
            v21 = *(v19 + 16);
            v20 = *(v19 + 24);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;

            sub_1C6017540();
            v41 = __dst[0];
            v42 = __dst[1];
            MEMORY[0x1C69534E0](0xD000000000000027, 0x80000001C6053660);
            v22 = *(v19 + 72);
            v23 = sub_1C5DBCDF8();
            v25 = v24;

            MEMORY[0x1C69534E0](v23, v25);

            MEMORY[0x1C69534E0](544175136, 0xE400000000000000);
            sub_1C6016D10();
            __src[0] = v21;
            __src[1] = v20;
            __src[2] = v41;
            __src[3] = v42;
            sub_1C5D5CEC8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();

            __swift_destroy_boxed_opaque_existential_0(v43);
          }

          else
          {
            sub_1C5DD3F74(v43, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, sub_1C5D45EB0);
          }

          v30 = *(v19 + 120);
          v31 = *(v19 + 128);
          v32 = *(v19 + 136);
          v33 = *(v19 + 72);
          sub_1C5DB1830(v30, v31, v32);
        }

        else
        {
          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          __dst[0] = 2;
          sub_1C6016880();
          _s3__C4CodeOMa_6();
          sub_1C5DD3FD4(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
          v26 = sub_1C6017280();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v28 = Strong;

            sub_1C5DD2D68(v29, v26, v28);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        sub_1C5DA3660();
      }
    }

    else
    {
      sub_1C5DD3F74(__dst, &qword_1ED7DE918, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition, sub_1C5D45EB0);
      v18 = v6;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v43[0] = 2;
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C6017540();

    __src[0] = 0x697469736E617254;
    __src[1] = 0xEB00000000206E6FLL;
    v34 = *v18;
    v35 = *(*v18 + 16);
    v36 = *(v34 + 24);

    MEMORY[0x1C69534E0](v35, v36);

    MEMORY[0x1C69534E0](0xD000000000000022, 0x80000001C6053610);
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DD3FD4(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
    v37 = sub_1C6017280();

    sub_1C5DAF9AC();
  }

  else
  {

    sub_1C5DD3F74(__dst, &qword_1ED7DE918, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition, sub_1C5D45EB0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t sub_1C5DD38B0(char a1, uint64_t a2, uint64_t a3)
{
  v46 = type metadata accessor for SmartPlayerItemTransition();
  v47 = &off_1F4543C58;
  v45[0] = a2;
  v6 = __swift_project_boxed_opaque_existential_0(v45, v46);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1C5DABCEC(__dst);
  v9 = __dst[3];
  if (__dst[3])
  {
    v38 = a1;
    v39 = v6;
    v10 = a3;
    v11 = __dst[4];
    __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
    v12 = *(v11 + 8);

    v13 = v12(v9, v11);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(__dst);
    if (v8 == v13 && v7 == v15)
    {

      v18 = v10;
    }

    else
    {
      v17 = sub_1C6017860();

      v18 = v10;
      if ((v17 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_0(v45);
      }
    }

    sub_1C5DABCEC(__dst);
    if (__dst[3])
    {
      sub_1C5C74680(0, qword_1ED7DE920);
      if (swift_dynamicCast())
      {
        v19 = __src[0];
        if (v38)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1C5DE4520();
            swift_unknownObjectRelease();
          }

          *(__src[0] + 139) = 1;
          sub_1C5D7E40C(v18 + 16, v43);
          if (v44)
          {
            __swift_project_boxed_opaque_existential_0(v43, v44);
            v21 = *(v19 + 16);
            v20 = *(v19 + 24);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;

            sub_1C6017540();
            v41 = __dst[0];
            v42 = __dst[1];
            MEMORY[0x1C69534E0](0xD000000000000027, 0x80000001C6053660);
            v22 = *(v19 + 72);
            v23 = sub_1C5DBCDF8();
            v25 = v24;

            MEMORY[0x1C69534E0](v23, v25);

            MEMORY[0x1C69534E0](544175136, 0xE400000000000000);
            sub_1C6016D10();
            __src[0] = v21;
            __src[1] = v20;
            __src[2] = v41;
            __src[3] = v42;
            sub_1C5D5CEC8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();

            __swift_destroy_boxed_opaque_existential_0(v43);
          }

          else
          {
            sub_1C5DD3F74(v43, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, sub_1C5D45EB0);
          }

          v30 = *(v19 + 120);
          v31 = *(v19 + 128);
          v32 = *(v19 + 136);
          v33 = *(v19 + 72);
          sub_1C5DB1830(v30, v31, v32);
        }

        else
        {
          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          __dst[0] = 2;
          sub_1C6016880();
          _s3__C4CodeOMa_6();
          sub_1C5DD3FD4(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
          v26 = sub_1C6017280();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v28 = Strong;

            sub_1C5DD2D68(v29, v26, v28);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        sub_1C5DA3660();
      }
    }

    else
    {
      sub_1C5DD3F74(__dst, &qword_1ED7DE918, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition, sub_1C5D45EB0);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v43[0] = 2;
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C6017540();

    __src[0] = 0x697469736E617254;
    __src[1] = 0xEB00000000206E6FLL;
    v34 = *(*v39 + 16);
    v35 = *(*v39 + 24);

    MEMORY[0x1C69534E0](v34, v35);

    MEMORY[0x1C69534E0](0xD000000000000022, 0x80000001C6053610);
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DD3FD4(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
    v36 = sub_1C6017280();

    sub_1C5DAF9AC();
  }

  else
  {

    sub_1C5DD3F74(__dst, &qword_1ED7DE918, qword_1ED7DE920, &protocol descriptor for PlayerItemTransition, sub_1C5D45EB0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t sub_1C5DD3F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C5DD3FD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C5DD403C()
{
  if (!qword_1ED7DD298)
  {
    sub_1C5DBC738();
    sub_1C5DD3FD4(&qword_1ED7DCF58, sub_1C5DBC738);
    v0 = sub_1C6016300();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DD298);
    }
  }
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_getObjectType();
}

uint64_t sub_1C5DD426C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 8))
  {
    return (*a1 + 2147483636);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5DD42C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

BOOL sub_1C5DD4324(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    case 9:
      return a2 == 9;
    case 10:
      return a2 == 10;
    case 11:
      return a2 == 11;
    default:
      return a2 >= 0xC;
  }
}

void sub_1C5DD45C4(char a1)
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v5 = 0;
  v6 = 0xE000000000000000;
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1C69534E0]();
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C69534E0](v2, v3);

  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1C69534E0](0xD000000000000013);
  LOWORD(__dst[0]) = sub_1C5DDBEF8();
  sub_1C6017650();
  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  v4[0] = v5;
  v4[1] = v6;
  sub_1C5D83FAC(v4);
  memcpy(__dst, v4, 0xD9uLL);
  sub_1C5DBBF0C();

  sub_1C5D4EBA0();
}

void sub_1C5DD4728()
{
  OUTLINED_FUNCTION_89();
  __src[0] = 0xD00000000000001DLL;
  __src[1] = v0;
  sub_1C5D83FAC(__src);
  memcpy(v1, __src, sizeof(v1));
  sub_1C5DBBF0C();
  sub_1C5D4EBA0();
}

uint64_t sub_1C5DD47A4(uint64_t a1, uint64_t (*a2)(void), NSObject *a3)
{
  if (!a1)
  {
    v3 = 1;
    return sub_1C5D4F87C(v3, a2, a3);
  }

  if (a1 == 1)
  {
    v3 = 2;
    return sub_1C5D4F87C(v3, a2, a3);
  }

  result = sub_1C60178A0();
  __break(1u);
  return result;
}

void sub_1C5DD480C()
{
  OUTLINED_FUNCTION_19_24();
  if (sub_1C5D4AFF0())
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C6054290);
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    v1 = OUTLINED_FUNCTION_32();
    MEMORY[0x1C69534E0](v1);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D83FAC(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    OUTLINED_FUNCTION_2_43();
    sub_1C5D4DC68();
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003ALL, 0x80000001C6054220);
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD00000000000002ALL, 0x80000001C6054260);
    v2 = OUTLINED_FUNCTION_32();
    MEMORY[0x1C69534E0](v2);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D83FAC(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    if (v0)
    {
      if (qword_1EC1A9680 != -1)
      {
        OUTLINED_FUNCTION_0_68();
      }

      v3 = OUTLINED_FUNCTION_32();
      v0(v3);
    }
  }
}

void sub_1C5DD4A40()
{
  OUTLINED_FUNCTION_131();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 40);
  if (sub_1C5D4AFF0())
  {
    if (sub_1C5D4CD70())
    {
      if (sub_1C5D4CE50())
      {
        OUTLINED_FUNCTION_1_56();
        sub_1C6017540();
        OUTLINED_FUNCTION_13_27();
        OUTLINED_FUNCTION_9_31();
        MEMORY[0x1C69534E0]();
        v6 = OUTLINED_FUNCTION_32();
        MEMORY[0x1C69534E0](v6);
        v51 = v79;
        v52 = v80;
        v7 = sub_1C5D83FAC(&v51);
        OUTLINED_FUNCTION_3_43(v7, v8, v9, v10, v11, v12, v13, v14, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
        sub_1C5DBBF0C();

        *(v5 + 220) = v4;
        *(v5 + 224) = 0;
        OUTLINED_FUNCTION_32();
        sub_1C5DDDBFC();
        sub_1C5D4EBA0();
        v15 = sub_1C5DD6DFC();
        if (!v15)
        {
LABEL_21:
          OUTLINED_FUNCTION_2_43();
          sub_1C5D4DC68();
          goto LABEL_22;
        }

        v16 = v15;
        if ([v15 isAssetLoaded])
        {
          v17 = [v16 avPlayerItem];
          v18 = sub_1C5DDBE58();
          v19 = v18;
          if (v17)
          {
            if (!v18)
            {
              swift_unknownObjectRelease();

              goto LABEL_21;
            }

            swift_unknownObjectRelease();

            if (v17 != v19)
            {
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          if (!v18)
          {
LABEL_18:
            [v16 time];
            v47 = v46;
            [v16 effectivePlaybackStartTime];
            if (vabdd_f64(v47, v48) > 0.01)
            {
              [v16 effectivePlaybackStartTime];
              v49 = OUTLINED_FUNCTION_32();
              sub_1C5DDDC88(v49, v50, 0, 0);
            }

            goto LABEL_20;
          }

          swift_unknownObjectRelease();
        }

LABEL_20:
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1_56();
      sub_1C6017540();
      OUTLINED_FUNCTION_13_27();
      OUTLINED_FUNCTION_9_31();
      MEMORY[0x1C69534E0]();
      v37 = OUTLINED_FUNCTION_32();
      MEMORY[0x1C69534E0](v37);
      v51 = v79;
      v52 = v80;
      v38 = sub_1C5D83FAC(&v51);
      OUTLINED_FUNCTION_3_43(v38, v39, v40, v41, v42, v43, v44, v45, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
      sub_1C5DBBF0C();

      *(v5 + 220) = v4;
      *(v5 + 224) = 0;
      OUTLINED_FUNCTION_32();
      sub_1C5DDDBFC();
    }

    else
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_2_43();
      sub_1C5DDDDE8(v30, v31, v32, v33, v34, v35, v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_56();
    sub_1C6017540();
    OUTLINED_FUNCTION_13_27();
    OUTLINED_FUNCTION_9_31();
    MEMORY[0x1C69534E0](0xD000000000000050);
    v20 = OUTLINED_FUNCTION_32();
    MEMORY[0x1C69534E0](v20);
    v51 = v79;
    v52 = v80;
    v21 = sub_1C5D83FAC(&v51);
    OUTLINED_FUNCTION_3_43(v21, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    sub_1C5DBBF0C();

    if (v2)
    {
      if (qword_1EC1A9680 != -1)
      {
        OUTLINED_FUNCTION_0_68();
      }

      v29 = OUTLINED_FUNCTION_32();
      v2(v29);
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1C5DD4D90()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 24) = v5;
  *(v1 + 200) = v6;
  *(v1 + 64) = sub_1C6016C10();
  *(v1 + 72) = sub_1C6016C00();
  v8 = sub_1C6016BA0();
  *(v1 + 80) = v8;
  *(v1 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5DD4E34, v8, v7);
}

uint64_t sub_1C5DD4E34()
{
  if (sub_1C5D4AFF0())
  {
    v1 = sub_1C5DD6DFC();
    *(v0 + 96) = v1;
    if (v1)
    {
      v2 = v1;
      if (MSVDeviceIsHomePod())
      {
        v3 = 2.0;
      }

      else
      {
        v3 = 0.8;
      }

      *(v0 + 204) = MSVDeviceIsHomePod();
      v4 = [v2 isAlwaysLive];
      *(v0 + 205) = v4;
      if ((v4 & 1) == 0 && ([v2 isAssetLoaded] & 1) == 0)
      {
        v5 = *(v0 + 32);
        ObjectType = swift_getObjectType();
        [v2 setPlaybackStartTimeOverride_];
        sub_1C5D4EBA0();
      }

      v7 = *(v0 + 56);
      v9 = *(v0 + 40);
      v8 = *(v0 + 48);
      v10 = sub_1C6016C00();
      *(v0 + 104) = v10;
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *(v11 + 16) = v7;
      *(v11 + 24) = v2;
      *(v11 + 32) = v4;
      *(v11 + 40) = v9;
      *(v11 + 48) = v8;
      v12 = swift_task_alloc();
      *(v0 + 120) = v12;
      *v12 = v0;
      v12[1] = sub_1C5DD5148;
      v13 = MEMORY[0x1E69E85E0];
      v14 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v12, v10, v13, 0xD000000000000025, 0x80000001C6053EC0, sub_1C5DD943C, v11, v14);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_20_23();
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DB0894();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
  }

  else
  {

    if (qword_1EC1A9680 != -1)
    {
      OUTLINED_FUNCTION_0_68();
    }

    v15 = qword_1EC1BE470;
    swift_willThrow();
    v15;
  }

  OUTLINED_FUNCTION_172();

  return v16();
}

uint64_t sub_1C5DD5148()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5778;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5254;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5DD5254()
{
  if (*(v0 + 205) == 1)
  {

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_172();

    return v1();
  }

  else
  {
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    if (*(v0 + 204))
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 0.08;
    }

    v17 = *(v0 + 24);
    *(v0 + 136) = sub_1C6016C00();
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v17;
    *(v7 + 40) = v6;
    *(v7 + 48) = v5;
    *(v7 + 56) = v4;
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = sub_1C5DD53E0;
    OUTLINED_FUNCTION_11_22();

    return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1C5DD53E0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD57FC;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD54EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5DD54EC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 200);
  v16 = *(v0 + 24);
  *(v0 + 168) = sub_1C6016C00();
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v16;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1C5DD5604;
  OUTLINED_FUNCTION_11_22();

  return MEMORY[0x1EEE6DE38](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C5DD5604()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5880;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5710;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5DD5710()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD5778()
{
  OUTLINED_FUNCTION_13();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD57FC()
{
  OUTLINED_FUNCTION_13();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD5880()
{
  OUTLINED_FUNCTION_13();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD5904()
{
  OUTLINED_FUNCTION_248();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v1[8] = sub_1C6016C10();
  v1[9] = sub_1C6016C00();
  v7 = sub_1C6016BA0();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5DD59A4, v7, v6);
}

uint64_t sub_1C5DD59A4()
{
  if (sub_1C5D4AFF0())
  {
    v1 = sub_1C5DD6DFC();
    v0[12] = v1;
    if (v1)
    {
      if ([v1 isAlwaysLive])
      {
        v2 = 0;
        v3 = 0;
      }

      else
      {
        v2 = v0[3];
        v3 = v0[4];
        swift_unknownObjectRetain();
      }

      v0[13] = v2;
      v7 = v0[7];
      v9 = v0[5];
      v8 = v0[6];
      v10 = sub_1C6016C00();
      v0[14] = v10;
      v11 = swift_task_alloc();
      v0[15] = v11;
      v11[2] = v7;
      v11[3] = v2;
      v11[4] = v3;
      v11[5] = v9;
      v11[6] = v8;
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      v12[1] = sub_1C5DD5C34;
      v13 = MEMORY[0x1E69E85E0];
      v14 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v12, v10, v13, 0xD000000000000021, 0x80000001C6053E60, sub_1C5DD942C, v11, v14);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_20_23();
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DB0894();
    OUTLINED_FUNCTION_8_32();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
  }

  else
  {

    if (qword_1EC1A9680 != -1)
    {
      OUTLINED_FUNCTION_0_68();
    }

    v4 = qword_1EC1BE470;
    swift_willThrow();
    v4;
  }

  OUTLINED_FUNCTION_172();

  return v5();
}

uint64_t sub_1C5DD5C34()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5DB0;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1C5DD5D40;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5DD5D40()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD5DB0()
{
  OUTLINED_FUNCTION_13();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DD5E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 1)
  {
    sub_1C5D4CCA0();
  }

  v10 = OUTLINED_FUNCTION_62();
  return sub_1C5DDC60C(v10, v11, a1, a2, a3, a4, a5, v12);
}

void sub_1C5DD5EC8()
{
  OUTLINED_FUNCTION_131();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((sub_1C5D4AFF0() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_56();
    sub_1C6017540();
    OUTLINED_FUNCTION_13_27();
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_9_31();
    MEMORY[0x1C69534E0]();
    v13 = OUTLINED_FUNCTION_12_31();
    MEMORY[0x1C69534E0](v13);
    v46 = v74;
    v47 = v75;
    v14 = sub_1C5D83FAC(&v46);
    OUTLINED_FUNCTION_3_43(v14, v15, v16, v17, v18, v19, v20, v21, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    sub_1C5DBBF0C();

    if (v4)
    {
      if (qword_1EC1A9680 != -1)
      {
        OUTLINED_FUNCTION_0_68();
      }

      v12 = OUTLINED_FUNCTION_12_31();
      goto LABEL_9;
    }

LABEL_10:
    OUTLINED_FUNCTION_130();
    return;
  }

  sub_1C5DDD984();
  if (v11 == v10)
  {
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_12_31();
LABEL_9:
      v4(v12);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ((sub_1C5D4CD70() & 1) != 0 || v10 > 0.0 && sub_1C5DDBEF8() != 32769)
  {
    OUTLINED_FUNCTION_1_56();
    sub_1C6017540();
    OUTLINED_FUNCTION_13_27();
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_9_31();
    MEMORY[0x1C69534E0]();
    v22 = OUTLINED_FUNCTION_12_31();
    MEMORY[0x1C69534E0](v22);
    v46 = v74;
    v47 = v75;
    v23 = sub_1C5D83FAC(&v46);
    OUTLINED_FUNCTION_3_43(v23, v24, v25, v26, v27, v28, v29, v30, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    sub_1C5DBBF0C();

    OUTLINED_FUNCTION_12_31();
    sub_1C5DD4A40();
    goto LABEL_10;
  }

  if (v10 == 0.0)
  {
    sub_1C5DDD984();
    if (v31 != 0.0)
    {
      OUTLINED_FUNCTION_1_56();
      sub_1C6017540();
      OUTLINED_FUNCTION_13_27();
      OUTLINED_FUNCTION_9_31();
      MEMORY[0x1C69534E0](0xD000000000000049);
      v34 = OUTLINED_FUNCTION_12_31();
      MEMORY[0x1C69534E0](v34);
      v46 = v74;
      v47 = v75;
      v35 = sub_1C5D83FAC(&v46);
      OUTLINED_FUNCTION_3_43(v35, v36, v37, v38, v39, v40, v41, v42, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      sub_1C5DBBF0C();

      v43 = OUTLINED_FUNCTION_62();
      sub_1C5DDC60C(v43, v44, 0, v8, v6, v4, v2, v45);
      goto LABEL_10;
    }
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v4;
  *(v32 + 24) = v2;
  *(v32 + 32) = v0;
  *(v32 + 40) = v10;
  sub_1C5C74C28(v4);

  OUTLINED_FUNCTION_12_31();
  sub_1C5DDDBFC();
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1C5DD61E0()
{
  OUTLINED_FUNCTION_19_24();
  if (sub_1C5DD6DFC())
  {
    sub_1C5D4BA50();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_43();
  return sub_1C5DDDEF0(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_1C5DD6294()
{
  if (sub_1C5DD6DFC())
  {
    sub_1C5D4B884();
    swift_unknownObjectRelease();
  }

  return sub_1C5DDDFD4();
}

uint64_t sub_1C5DD6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_7_3();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  sub_1C5C74C28(a3);

  a7(a1, a2, a6, v14);
}

void sub_1C5DD643C()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if ((sub_1C5D4AFF0() & 1) == 0)
  {
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000056, 0x80000001C6053EF0);
    v13 = OUTLINED_FUNCTION_64_3();
    MEMORY[0x1C69534E0](v13);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D83FAC(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    if (v3)
    {
      if (qword_1EC1A9680 != -1)
      {
        OUTLINED_FUNCTION_0_68();
      }

      v14 = OUTLINED_FUNCTION_64_3();
      v3(v14);
    }

    goto LABEL_22;
  }

  v6 = sub_1C5DD6DFC();
  if (!v6)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&__dst[0] = 4;
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DB0894();
    v15 = sub_1C6017280();

    if (v3)
    {
      v16 = v15;
      v17 = OUTLINED_FUNCTION_64_3();
      v3(v17);
    }

    else
    {
    }

LABEL_22:
    OUTLINED_FUNCTION_130();
    return;
  }

  v7 = v6;
  if ((sub_1C5D4CD70() & 1) != 0 || ([v7 isAssetLoaded] & 1) == 0)
  {
    [v7 setPlaybackStartTimeOverride_];
    swift_unknownObjectRetain();
    sub_1C6014F90();
    type metadata accessor for EventTime();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_62();
    *__dst = v5;
    *(&__dst[0] + 1) = v7;
    __dst[1] = xmmword_1C603A020;
    *&__dst[2] = sub_1C5C8A6E0(v8, v9, 0, 1, v10, v11);
    *(&__dst[3] + 8) = xmmword_1C603A080;
    BYTE8(__dst[4]) = 1;
    if (sub_1C5DD6B30())
    {
      sub_1C5DCEC3C(__dst);
      swift_unknownObjectRelease();
    }

    if (sub_1C5D4CD70())
    {
      if (v3)
      {
        v12 = OUTLINED_FUNCTION_64_3();
        v3(v12);
      }

      swift_unknownObjectRelease_n();
      goto LABEL_22;
    }

    swift_unknownObjectRelease();
  }

  sub_1C5D4B884();
  OUTLINED_FUNCTION_7_3();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = v1;
  v19[4] = v18;
  sub_1C5C74C28(v3);

  v20 = OUTLINED_FUNCTION_64_3();
  sub_1C5DDDC88(v20, v21, v22, v19);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_130();
}

void sub_1C5DD683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C6014D30();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void *sub_1C5DD68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v11[9] = 0;
  v11[10] = 0;
  v11[2] = a3;
  v11[4] = a8;
  swift_unknownObjectRetain();

  v15 = MPSharedBackgroundTaskProvider();
  v16 = v11[4];
  v31[3] = type metadata accessor for EventReporter();
  v31[4] = &off_1F4544D18;
  v31[0] = v16;
  type metadata accessor for BackgroundTaskController();
  swift_allocObject();

  v11[8] = sub_1C5DB7BA0(v15, v31);
  v17 = v11[4];
  swift_unknownObjectRetain();
  v28 = a11;

  swift_unknownObjectRetain();
  v12[3] = sub_1C5DD8F2C(a1, a2, a11, v17, a7, a10, a9);
  type metadata accessor for ErrorControllerImplementation();
  swift_allocObject();

  swift_unknownObjectRetain();

  v18 = sub_1C5DBB7A0();
  v12[7] = v18;
  v19 = v12[4];
  v20 = v12[8];

  swift_retain_n();

  v22 = sub_1C5DD9600(v21, a4, a3, v18, a6, v19, v20, a10, a9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v12[5] = v22;
  v12[6] = &off_1F4541F70;
  v23 = v12[3];
  v24 = off_1F4541F78;
  swift_beginAccess();
  *(v23 + 24) = v24;
  swift_unknownObjectWeakAssign();
  return v12;
}

uint64_t sub_1C5DD6AE8(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 40) + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1C5DD6B5C()
{
  v1 = sub_1C5DD6DFC();
  if (v1)
  {
    v2 = v1;
    if (![v1 isAssetLoaded])
    {
      goto LABEL_8;
    }

    v3 = sub_1C5DDBE58();
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    v5 = [v2 avPlayerItem];
    v6 = [v4 avPlayerItem];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      if (v5 != v7)
      {
        swift_unknownObjectRelease();
LABEL_8:
        swift_unknownObjectRelease();
        goto LABEL_9;
      }
    }

    else if (v6)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    sub_1C5DDD938();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

LABEL_9:
  if (sub_1C5DDBDF8())
  {
    v8 = sub_1C5DD6DFC();
    if (v8)
    {
      v9 = [v8 avPlayerItem];
      OUTLINED_FUNCTION_312();
      swift_unknownObjectRelease();
      if (v0)
      {
        [v0 currentTime];

        OUTLINED_FUNCTION_27_18();

        sub_1C6017220();
        return;
      }
    }
  }

  if (!*(v0[5] + 32))
  {
LABEL_19:
    OUTLINED_FUNCTION_27_18();
    return;
  }

  OUTLINED_FUNCTION_27_18();

  [v11 v12];
}

id sub_1C5DD6D74()
{
  result = *(*(v0 + 24) + 128);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

BOOL sub_1C5DD6D88(uint64_t a1)
{
  v2 = sub_1C5DD6DFC();
  if (v2)
  {
    [v2 playbackStartTime];
    v4 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0.0;
  }

  return sub_1C5DDDB2C(a1, v4);
}

uint64_t sub_1C5DD6E08()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5DD6E58()
{
  sub_1C5DD6E08();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C5DD6F28()
{
  v1 = v0;
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  OUTLINED_FUNCTION_89();
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = v4;
  v5 = sub_1C5DD6DFC();
  v6 = MEMORY[0x1E69E6158];
  if (v5)
  {
    v7 = [swift_unknownObjectRetain() description];
    v8 = sub_1C6016940();
    v10 = v9;
    swift_unknownObjectRelease_n();

    v11 = (inited + 48);
    *(inited + 72) = v6;
    if (v10)
    {
      *v11 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (inited + 48);
    *(inited + 72) = MEMORY[0x1E69E6158];
  }

  *v11 = 7104846;
  v10 = 0xE300000000000000;
LABEL_6:
  *(inited + 56) = v10;
  OUTLINED_FUNCTION_89();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v12;
  v13 = sub_1C5DDD6EC();
  sub_1C5CE5EF4();
  v15 = v14;
  *(inited + 96) = v13;
  OUTLINED_FUNCTION_89();
  *(inited + 120) = v16;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = v17;
  v18 = [*(v1 + 40) stateDictionary];
  v19 = MEMORY[0x1E69E6158];
  v20 = sub_1C6016860();

  *(inited + 144) = v20;
  OUTLINED_FUNCTION_89();
  *(inited + 168) = v15;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = v21;
  if (*(v1 + 64))
  {
    v22 = [ stateDictionary];
    v23 = sub_1C6016860();

    v30 = v15;

    *&v29 = v23;
    sub_1C5C70758(&v29, (inited + 192));
  }

  else
  {
    *(inited + 216) = v19;
    *(inited + 192) = 7104846;
    *(inited + 200) = 0xE300000000000000;
  }

  *(inited + 224) = 1701080909;
  *(inited + 232) = 0xE400000000000000;
  v24 = [v1 modeDescription];
  v25 = sub_1C6016940();
  v27 = v26;

  *(inited + 264) = v19;
  *(inited + 240) = v25;
  *(inited + 248) = v27;
  return sub_1C6016880();
}

void sub_1C5DD71A8(void *a1)
{
  OUTLINED_FUNCTION_89();
  __src[0] = 0xD000000000000029;
  __src[1] = v3;
  sub_1C5D83FAC(__src);
  memcpy(v6, __src, sizeof(v6));
  sub_1C5DBBF0C();
  sub_1C5DDC13C(a1);
  v4 = *(v1 + 40);
  v5 = sub_1C6014D30();
  [v4 resetWithReason_];
}

uint64_t sub_1C5DD72A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a6;
  sub_1C5D3A084();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_1C5D4DC68();
}

uint64_t sub_1C5DD7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C5D3A084();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  ObjectType = swift_getObjectType();
  (*(a4 + 8))(ObjectType, a4);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_1C5DDDC88(a5, a6, sub_1C5DD94F0, v16);
}

uint64_t sub_1C5DD75AC(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  sub_1C5D3A084();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v14 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  (*(v14 + 32))(v17 + v16, &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_1C5DDDDE8(a4, a5, a6, v20, sub_1C5DD9B50, v17, a2);
}

uint64_t sub_1C5DD7728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  sub_1C5D3A084();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_1C5DDC60C(a3, a4, 0, a5, v18, sub_1C5DD9B50, v15, 0.0);
}

uint64_t sub_1C5DD789C(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    sub_1C5D3A084();
    return sub_1C6016BB0();
  }

  else
  {
    sub_1C5D3A084();
    return sub_1C6016BC0();
  }
}

uint64_t sub_1C5DD78FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, float a6)
{
  v9 = result;
  if (a3)
  {
    if (a4)
    {
      return a4();
    }
  }

  else if (sub_1C5DDBEF8() != 32770 && (result = sub_1C5DDBEF8(), (result & 0xC000) != 0))
  {
    if (a4)
    {
      return a4();
    }
  }

  else
  {
    return sub_1C5DDDDE8(0, 0, v9, a2, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C5DD79B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    a4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_1C5D4BF40();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DD7A6C()
{
  OUTLINED_FUNCTION_16_23();

  v0 = sub_1C5DB3170();

  return v0;
}

void sub_1C5DD7AA4(void *a1)
{
  v3 = *(v1 + 40);

  sub_1C5D57708();
  OUTLINED_FUNCTION_312();

  v4 = a1;
  v5 = v3;
  sub_1C5DB5EF8();
}

uint64_t sub_1C5DD7B4C(uint64_t (*a1)(uint64_t a1, void *a2), uint64_t a2)
{
  OUTLINED_FUNCTION_16_23();

  sub_1C5DB4C28(a1, a2);
}

uint64_t sub_1C5DD7C30()
{
  result = sub_1C5DDBEF8();
  if (result == 0x8000)
  {
    swift_retain_n();
    sub_1C5DB6520();
  }

  return result;
}

uint64_t sub_1C5DD7CB8()
{
  OUTLINED_FUNCTION_16_23();
  swift_retain_n();
  sub_1C5DB67B4();
}

uint64_t sub_1C5DD7D88()
{
  v1 = *(*(v0 + 24) + 32);
  if (!v1)
  {
    return 1869377363;
  }

  if (v1 == 1)
  {
    return 0x646572616853;
  }

  v3 = v1;
  sub_1C6017540();

  v4 = [v3 description];
  v5 = sub_1C6016940();
  v7 = v6;

  MEMORY[0x1C69534E0](v5, v7);

  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  sub_1C5DBBEE4(v1);
  return 0x53646567616E614DLL;
}

void sub_1C5DD7F48()
{
  OUTLINED_FUNCTION_24_19();
  if (!v1 & v0)
  {
    v10 = 0xD000000000000034;
    v11 = 0x80000001C6053D80;
    v2 = sub_1C5D45B74(&v10);
    OUTLINED_FUNCTION_3_43(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    sub_1C5DBBF0C();
    __break(1u);
  }

  else
  {
    sub_1C5DDE210(0);
  }
}

void sub_1C5DD7FCC()
{
  OUTLINED_FUNCTION_24_19();
  if (!v1 & v0)
  {
    v10 = 0xD000000000000036;
    v11 = 0x80000001C6053D40;
    v2 = sub_1C5D45B74(&v10);
    OUTLINED_FUNCTION_3_43(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    sub_1C5DBBF0C();
    __break(1u);
  }

  else
  {
    sub_1C5DDE210(1);
  }
}

uint64_t sub_1C5DD8050(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1C5DD80DC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1C5DD8288(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_1C5DD8350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14[3] = type metadata accessor for EventReporter();
  v14[4] = &off_1F4544D18;
  v14[0] = a6;
  *(a7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(a7 + 104) = 0;
  *(a7 + 112) = v12;
  *(a7 + 120) = v12;
  *(a7 + 128) = 0;
  *(a7 + 136) = 257;
  type metadata accessor for AssetSlidingQueue.Position();
  *(a7 + 152) = 0;
  *(a7 + 160) = 0;
  *(a7 + 144) = 0;
  *(a7 + 168) = sub_1C6016880();
  *(a7 + 176) = 3;
  *(a7 + 184) = 0x1000000;
  *(a7 + 188) = 0x20000;
  *(a7 + 192) = 0;
  *(a7 + 200) = v12;
  *(a7 + 208) = 0;
  sub_1C5CDAF64(v14, a7 + 48);
  *(a7 + 24) = a2;
  swift_unknownObjectWeakAssign();
  *(a7 + 40) = a4;
  swift_unknownObjectWeakAssign();
  *(a7 + 138) = a5;
  sub_1C5D3F100();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v14);
  return a7;
}

uint64_t sub_1C5DD84B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v20 = *a6;
  v21 = &off_1F4544D18;
  v19[0] = a6;
  type metadata accessor for AssetSlidingQueue();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v19[-1] - v13);
  (*(v15 + 16))(&v19[-1] - v13);
  v16 = sub_1C5DD8350(a1, a2, a3, a4, a5, *v14, v11);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v16;
}

uint64_t sub_1C5DD8610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for EventReporter();
  v9 = &off_1F4544D18;
  *&v7 = a2;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = a1;
  *(a3 + 96) = 0;
  sub_1C5C6BEFC(&v7, a3 + 40);
  *(a3 + 24) = 0;
  return a3;
}

uint64_t sub_1C5DD8684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for EventReporter();
  v11 = &off_1F4544D18;
  *&v9 = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = 1065353216;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 136) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 1065353216;
  *(a4 + 204) = 0;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 128) = a3;
  sub_1C5C6BEFC(&v9, a4 + 88);
  *(a4 + 208) = a1;
  return a4;
}

uint64_t sub_1C5DD8760(uint64_t a1, uint64_t a2, double a3)
{
  v9 = type metadata accessor for EventReporter();
  v10 = &off_1F4544D18;
  *&v8 = a1;
  *(a2 + 32) = 0;
  swift_unknownObjectWeakInit();
  if (sub_1C5C6AA20())
  {
    v6 = sub_1C5E1F1F8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(a2 + 40) = v6;
  *(a2 + 16) = a3;
  sub_1C5C6BEFC(&v8, a2 + 48);
  return a2;
}

uint64_t sub_1C5DD8800(uint64_t *a1, double a2)
{
  v12 = *a1;
  v13 = &off_1F4544D18;
  v11[0] = a1;
  type metadata accessor for UserEventsMonitor();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_1C5DD8760(*v6, v3, a2);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

uint64_t sub_1C5DD8938(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = &off_1F4544D18;
  v11[0] = a2;
  type metadata accessor for AudioSessionController();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_1C5DD8610(a1, *v6, v3);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

uint64_t sub_1C5DD8A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for EventReporter();
  v16 = &off_1F4544D18;
  v14[0] = a2;
  type metadata accessor for InternalPlayerController();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_1C5DD8684(a1, *v9, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_1C5DD8B94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[3] = type metadata accessor for EventReporter();
  v34[4] = &off_1F4544D18;
  v34[0] = a4;
  *(a8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a8 + 40) = 0x4072C00000000000;
  *(a8 + 104) = 0;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 112) = 1;
  *(a8 + 128) = 0;
  *(a8 + 136) = 0;
  *(a8 + 120) = 0;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 240) = 0u;
  *(a8 + 256) = 0u;
  *(a8 + 272) = 0u;
  *(a8 + 288) = 0u;
  *(a8 + 304) = 0u;
  *(a8 + 320) = 0;
  *(a8 + 376) = 0;
  *(a8 + 384) = 0;
  *(a8 + 80) = a1;
  *(a8 + 88) = a2;
  *(a8 + 152) = a3;
  sub_1C5CDAF64(v34, a8 + 328);
  *(a8 + 368) = a5;
  *(a8 + 160) = a6;
  *(a8 + 168) = &off_1F45438A0;
  *(a8 + 176) = &off_1F4543788;
  *(a8 + 184) = &off_1F45437E8;
  *(a8 + 192) = &off_1F45438B0;
  *(a8 + 200) = &off_1F4543890;
  *(a8 + 32) = 0;
  *(a8 + 144) = a7;
  sub_1C5CDAF64(v34, v32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  v20 = *v18;
  swift_unknownObjectRetain();
  v21 = a3;
  v22 = sub_1C5DD8800(v20, 300.0);
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(a8 + 320) = v22;

  sub_1C5DDFF0C();
  v24 = v23;
  sub_1C5CDAF64(v34, v32);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v32[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  v29 = sub_1C5DD8938(v24, *v27);
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(a8 + 96) = v29;
  v30 = *(a8 + 320);
  if (v30)
  {
    *(v30 + 32) = &off_1F4545F30;
    swift_unknownObjectWeakAssign();
  }

  sub_1C5DDC6D4();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v34);
  return a8;
}

void *sub_1C5DD8E94(uint64_t a1, uint64_t a2, void *a3)
{
  a3[4] = 0;
  swift_unknownObjectWeakInit();
  a3[7] = &off_1F4544F40;
  a3[2] = a2;
  a3[5] = MEMORY[0x1E69E7CC0];
  a3[6] = a1;
  type metadata accessor for IdleState();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1C5D94070();
  swift_unknownObjectRelease();

  return a3;
}

uint64_t sub_1C5DD8F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v46 = a6;
  v44 = a1;
  *&v45 = a2;
  v11 = type metadata accessor for EventReporter();
  v50[3] = v11;
  v50[4] = &off_1F4544D18;
  v50[0] = a4;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v12 = sub_1C6016FD0();
  }

  sub_1C5CDAF64(v50, v48);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v43 = a3;
  v18 = v12;
  v19 = sub_1C5DD8A68(0, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(v48);
  type metadata accessor for PlayerFSM();
  v20 = swift_allocObject();
  swift_unknownObjectRetain();

  v22 = sub_1C5DD8E94(v21, a7, v20);
  sub_1C5CDAF64(v50, v48);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v47[3] = v11;
  v47[4] = &off_1F4544D18;
  v47[0] = v27;
  type metadata accessor for PlayerController();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v47, v11);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  swift_unknownObjectRetain();

  v34 = v18;
  v35 = sub_1C5DD8B94(v44, v45, v34, v33, a5, v22, v46, v28);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v48);
  *(v19 + 24) = &off_1F4545E80;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v36 = *(v35 + 160);
  v37 = *(v35 + 184);
  ObjectType = swift_getObjectType();
  v47[0] = v36;
  v39 = swift_retain_n();
  v40 = *(v35 + 168);
  v45 = *(v35 + 192);
  v46 = v40;
  (*(v45 + 16))(v39, &off_1F4545E70, ObjectType);
  *(v35 + 160) = v47[0];
  v41 = v45;
  *(v35 + 168) = v46;
  *(v35 + 184) = v37;
  *(v35 + 192) = v41;
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v50);
  return v35;
}

id sub_1C5DD9388(void *a1, uint64_t a2)
{
  v4 = [a1 contentItemID];
  v5 = sub_1C6016940();
  v7 = v6;

  v8 = sub_1C5D4F3C4(v5, v7);

  if (!v8)
  {
    return [*(a2 + 16) queueItemForPlayerItem:a1 allowReuse:1];
  }

  return v8;
}

uint64_t objectdestroy_43Tm()
{
  sub_1C5D3A084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_62Tm(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C5DD9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v38[1] = a5;
  v39 = a2;
  v15 = type metadata accessor for EventReporter();
  v55[3] = v15;
  v55[4] = &off_1F4544D18;
  v55[0] = a6;
  type metadata accessor for AssetSlidingQueueController();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v55, v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v54[3] = v15;
  v54[4] = &off_1F4544D18;
  v54[0] = v21;
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 220) = 0;
  *(v16 + 160) = 0u;
  *(v16 + 176) = 0;
  *(v16 + 144) = 0u;
  *(v16 + 200) = 0;
  *(v16 + 208) = 0;
  *(v16 + 192) = 0;
  *(v16 + 216) = 0;
  *(v16 + 224) = 1;
  *(v16 + 232) = 0;
  *(v16 + 240) = 0;
  *(v16 + 248) = 0;
  *(v16 + 256) = 0;
  *(v16 + 264) = 0;
  *(v16 + 272) = 3;
  *(v16 + 280) = 0;
  *(v16 + 288) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = a1;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;
  sub_1C5CDAF64(v54, v16 + 80);
  *(v16 + 120) = a7;
  *(v16 + 128) = a9;
  sub_1C5CDAF64(v54, &v51);
  v49 = &type metadata for TransitionProvider;
  v50 = &off_1F45443B8;
  type metadata accessor for TransitionController();
  v22 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v48, &type metadata for TransitionProvider);
  v46 = &type metadata for TransitionProvider;
  v47 = &off_1F45443B8;
  *(v22 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 112) = 0;
  *(v22 + 120) = 0;
  v23 = v52;
  *(v22 + 16) = v51;
  *(v22 + 32) = v23;
  *(v22 + 48) = v53;
  *(v22 + 64) = &off_1F4545ED0;
  swift_unknownObjectWeakAssign();
  sub_1C5C6BEFC(&v45, v22 + 72);
  v43 = a9;
  swift_unknownObjectRetain();
  v41 = a1;

  v42 = a3;
  swift_unknownObjectRetain();
  v44 = a4;

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_0(v48);
  *(v16 + 136) = v22;
  v24 = v40;
  *(v16 + 184) = v40;
  *(v16 + 48) = v39;
  LOBYTE(v22) = v24 != 1;
  sub_1C5CDAF64(v54, &v51);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  swift_retain_n();
  swift_unknownObjectRetain();
  v30 = sub_1C5DD84B0(v16, &off_1F4541E80, v16, &off_1F4541E70, v22, v29);
  __swift_destroy_boxed_opaque_existential_0(&v51);
  *(&v52 + 1) = type metadata accessor for AssetSlidingQueue();
  v53 = &off_1F45419B0;
  *&v51 = v30;
  swift_beginAccess();
  sub_1C5DD9AEC(&v51, v16 + 144);
  swift_endAccess();
  v31 = *(v16 + 56);
  v32 = *(v16 + 40);
  if (*(v32 + 64))
  {
    v33 = *(v32 + 72);
    ObjectType = swift_getObjectType();
    v35 = *(v33 + 176);
    swift_unknownObjectRetain();
    v36 = v35(ObjectType, v33);
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0;
  }

  [v31 updatePlayerPlaybackCoordinator_];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v55);
  return v16;
}

uint64_t sub_1C5DD9AEC(uint64_t a1, uint64_t a2)
{
  sub_1C5D5CD60();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_1C6017280();
}

uint64_t AVPlayerStatus.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x64656C696166;
    case 1:
      return 0x506F547964616572;
  }

  result = sub_1C60176A0();
  __break(1u);
  return result;
}

uint64_t sub_1C5DD9C90()
{
  if ([v0 loggingIdentifier])
  {
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](32, 0xE100000000000000);
    sub_1C6017650();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C6017650();
  }

  return 0;
}

void sub_1C5DD9D78(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 8))();
  v3 = sub_1C6017210();
  v5 = v4;
  v7 = v6;
  v8 = HIDWORD(v4);
  v9 = CMClockGetHostTimeClock();
  CMClockGetTime(&v13, v9);
  value = v13.value;
  epoch = v13.epoch;
  v12 = *&v13.timescale;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 12) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = value;
  *(a2 + 32) = v12;
  *(a2 + 40) = epoch;
}

void sub_1C5DD9E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = aBlock - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = aBlock - v16;
  type metadata accessor for PlayerController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_1C5DDBA6C(0x7974706D65, 0xE500000000000000, 6370413, 0xE300000000000000, v19);

  if (v20)
  {
    sub_1C6014EC0();

    (*(v8 + 32))(v17, v15, v6);
    sub_1C5DDBA28();
    (*(v8 + 16))(v12, v17, v6);
    v21 = sub_1C5DDA0A0(v12);
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DBC798;
    aBlock[3] = &block_descriptor_24;
    v22 = _Block_copy(aBlock);

    [v3 prepareItem:v21 withCompletionHandler:v22];
    _Block_release(v22);

    (*(v8 + 8))(v17, v6);
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5DDA0A0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C6014EA0();
  v4 = [v2 initWithURL_];

  v5 = sub_1C6014F20();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1C5DDA168(float a1, uint64_t a2, uint64_t a3)
{
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v60 = v6;
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D2D8C8();
  v9 = v8;
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _MPCSessionMigrationTimeContinuity();
  sub_1C5E38DBC();
  v16 = v15;
  ObjectType = swift_getObjectType();
  sub_1C5DD9D78(a3, &v64);
  timescale = v64.timescale;
  epoch = v64.epoch;
  value = v64.value;
  v55 = v65;
  v19 = v66;
  v54 = v67;
  v59 = [objc_allocWithZone(MEMORY[0x1E69880F8]) init];
  [v59 setOverrideAutowaitRestriction_];
  v20 = COERCE_DOUBLE((*(a3 + 16))(ObjectType, a3));
  if (v21)
  {
    v22 = 0.05;
    (*(a3 + 24))(v16 + 0.05, 0, ObjectType, a3);
  }

  else
  {
    v23 = v20;
    v24 = v20;
    if (v16 > v20)
    {
      if (qword_1ED7DD2B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v61, qword_1ED7E1690);
      v25 = sub_1C60162B0();
      v26 = sub_1C6016F20();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_1C5C61000, v25, v26, "Player: setRate called with scheduledRateChangeTime %f in the past", v27, 0xCu);
        MEMORY[0x1C6956920](v27, -1, -1);
      }
    }

    v22 = v24 - v16;
  }

  sub_1C6017220();
  CMTimeMakeWithSeconds(&v64, v22 + v28, timescale);
  v29 = v64.value;
  value = v64.timescale;
  epoch = v64.flags;
  v30 = v64.epoch;
  sub_1C6017220();
  v32 = CMTimeMakeWithSeconds(&v64, v22 + v31, v19);
  v55 = v64.value;
  v33 = *&v64.timescale;
  v54 = v64.epoch;
  MEMORY[0x1C6952D20](v32);
  v34 = v62;
  sub_1C6016250();
  (*(v11 + 8))(v14, v9);
  v35 = v58;
  v36 = sub_1C60162B0();
  v37 = sub_1C6016F30();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v64.value = v39;
    *v38 = 136446722;
    v40 = [v35 currentItem];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1C5DBCDF8();
      v44 = v43;
    }

    else
    {
      v44 = 0xE700000000000000;
      v42 = 0x6E776F6E6B6E75;
    }

    v47 = sub_1C5C6AB10(v42, v44, &v64.value);

    *(v38 + 4) = v47;
    *(v38 + 12) = 2048;
    v46 = epoch;
    v45 = value;
    sub_1C6017220();
    *(v38 + 14) = v48;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v22;
    _os_log_impl(&dword_1C5C61000, v36, v37, "[EST:%{public}s)] setting item expectedStartTime=%fs due to setRate with timeContinuity, at %fs from now", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x1C6956920](v39, -1, -1);
    MEMORY[0x1C6956920](v38, -1, -1);

    (*(v60 + 8))(v62, v61);
  }

  else
  {

    (*(v60 + 8))(v34, v61);
    v46 = epoch;
    v45 = value;
  }

  v49 = [v35 currentItem];
  if (v49)
  {
    v51 = v49;
    sub_1C5D66228();
  }

  v64.timescale = v45;
  v64.flags = v46;
  v64.epoch = v30;
  v63[0] = v55;
  v63[1] = v33;
  v63[2] = v54;
  v64.value = v29;
  *&v50 = a1;
  v52 = v59;
  [v35 setRate:&v64 time:v63 atHostTime:v59 options:v50];
}

void sub_1C5DDA720(uint64_t a1, uint64_t a2, double a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    sub_1C5DDA168(0.0, v5, a2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (a3 <= 0.0)
    {
      [v3 pause];
      v9 = 1;
    }

    else
    {
      v16 = sub_1C5D67CC0(a3);
      v17 = v6;
      v18 = v7;
      v19 = v8;
      [v3 setRate:&v16 withVolumeRampDuration:0.0];
      v9 = 2;
    }

    v10 = [v3 audioSession];
    v16 = 0;
    v11 = [v10 silenceOutput:v9 error:&v16];

    v12 = v16;
    if (v11)
    {

      v13 = v12;
    }

    else
    {
      v14 = v16;
      v15 = sub_1C6014D40();

      swift_willThrow();
    }
  }
}

void sub_1C5DDA8D4()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [v0 _resumePlayback_error_];
  v2 = v6[0];
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    v5 = sub_1C6014D40();

    swift_willThrow();
    [v0 play];
  }
}

id sub_1C5DDA9C8(void *a1)
{
  v1 = a1;
  v2 = AVQueuePlayer.playbackType.getter();

  return v2;
}

id AVQueuePlayer.playbackType.getter()
{
  v1 = v0;
  result = [v0 externalPlaybackType];
  if (result >= 3)
  {
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000034, 0x80000001C6054380);
    v3 = [v0 description];
    v4 = sub_1C6016940();
    v6 = v5;

    MEMORY[0x1C69534E0](v4, v6);

    MEMORY[0x1C69534E0](0x3A65707974202D20, 0xE900000000000020);
    [v1 externalPlaybackType];
    type metadata accessor for AVPlayerExternalPlaybackType();
    sub_1C6017650();
    result = OUTLINED_FUNCTION_2_44();
    __break(1u);
  }

  return result;
}

id sub_1C5DDAB4C(void *a1)
{
  v1 = a1;
  AVQueuePlayer.stateDictionary.getter();

  v2 = sub_1C6016840();

  return v2;
}

char *AVQueuePlayer.stateDictionary.getter()
{
  v1 = v0;
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6042F70;
  *(inited + 32) = 0x49746E6572727543;
  *(inited + 40) = 0xEB000000006D6574;
  v3 = [v0 currentItem];
  v11 = v3;
  if (v3)
  {
    v3 = sub_1C5DDBA28();
  }

  else
  {
    *(&v78 + 1) = 0;
    *&v79 = 0;
  }

  *(&v79 + 1) = v3;
  *&v78 = v11;
  OUTLINED_FUNCTION_0_69(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1C5CBCF4C(&v78);
  v12 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001C60543C0;
  v13 = [v1 currentItem];
  if (v13)
  {
    v21 = v13;
    [v13 duration];
    v22 = v78;
    v23 = v79;
    v24 = *(&v78 + 1);

    type metadata accessor for CMTime();
    *&v78 = v22;
    *(&v78 + 1) = v24;
    *&v79 = v23;
  }

  else
  {
    v78 = 0uLL;
    *&v79 = 0;
  }

  *(&v79 + 1) = v13;
  OUTLINED_FUNCTION_0_69(v13, v14, v15, v16, v17, v18, v19, v20);
  sub_1C5CBCF4C(&v78);
  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v12;
  *(inited + 128) = 1702125906;
  *(inited + 136) = 0xE400000000000000;
  [v1 rate];
  *(&v79 + 1) = MEMORY[0x1E69E6448];
  LODWORD(v78) = v25;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(&v78, 0x6E776F6E6B6E75, 0xE700000000000000);
  sub_1C5CBCF4C(&v78);
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 168) = v12;
  *(inited + 176) = 0x737574617453;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = AVPlayerStatus.description.getter([v1 status]);
  *(inited + 200) = v26;
  *(inited + 216) = v12;
  *(inited + 224) = 0x726F727245;
  *(inited + 232) = 0xE500000000000000;
  v27 = [v1 error];
  if (v27)
  {
    v35 = v27;
    swift_getErrorValue();
    *(&v79 + 1) = v77;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v78);
    (*(*(v77 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  OUTLINED_FUNCTION_0_69(v27, v28, v29, v30, v31, v32, v33, v34);
  sub_1C5CBCF4C(&v78);
  *(inited + 240) = 0;
  *(inited + 248) = 0xE000000000000000;
  *(inited + 264) = v12;
  *(inited + 272) = 0x74416E6F69746341;
  *(inited + 280) = 0xEF646E456D657449;
  *(inited + 288) = AVPlayerActionAtItemEnd.description.getter([v1 actionAtItemEnd]);
  *(inited + 296) = v37;
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x80000001C60543E0;
  *(inited + 336) = AVPlayerTimeControlStatus.description.getter([v1 timeControlStatus]);
  *(inited + 344) = v38;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x80000001C6054400;
  v39 = [v1 reasonForWaitingToPlay];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1C6016940();
    v43 = v42;

    v44 = MEMORY[0x1E69E6158];
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v44 = 0;
    *&v79 = 0;
  }

  *&v78 = v41;
  *(&v78 + 1) = v43;
  *(&v79 + 1) = v44;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(&v78, 1701736270, 0xE400000000000000);
  sub_1C5CBCF4C(&v78);
  *(inited + 384) = 0;
  *(inited + 392) = 0xE000000000000000;
  *(inited + 408) = v12;
  *(inited + 416) = 0x54746E6572727543;
  *(inited + 424) = 0xEB00000000656D69;
  [v1 currentTime];
  if (sub_1C6017200())
  {
    [v1 currentTime];
    sub_1C6017220();
    sub_1C6016D10();
    MEMORY[0x1C69534E0](115, 0xE100000000000000);
    v46 = 0;
    v45 = 0xE000000000000000;
  }

  else
  {
    v45 = 0xE700000000000000;
    v46 = 0x64696C61766E49;
  }

  *(inited + 432) = v46;
  *(inited + 440) = v45;
  *(inited + 456) = v12;
  *(inited + 464) = 0x736D657449;
  *(inited + 472) = 0xE500000000000000;
  v47 = [v1 items];
  sub_1C5DDBA28();
  v48 = sub_1C6016B10();

  v49 = sub_1C5C6AA20();
  v75 = v1;
  v76 = inited;
  if (v49)
  {
    v50 = v49;
    *&v78 = MEMORY[0x1E69E7CC0];
    result = sub_1C5C66A1C(0, v49 & ~(v49 >> 63), 0);
    if (v50 < 0)
    {
      __break(1u);
      return result;
    }

    v52 = 0;
    v53 = v78;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1C6954040](v52, v48);
      }

      else
      {
        v54 = *(v48 + 8 * v52 + 32);
      }

      v55 = v54;
      v56 = [v54 description];
      v57 = sub_1C6016940();
      v59 = v58;

      *&v78 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1C5C66A1C((v60 > 1), v61 + 1, 1);
        v53 = v78;
      }

      ++v52;
      *(v53 + 16) = v61 + 1;
      v62 = v53 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
    }

    while (v50 != v52);
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
  }

  v63 = MEMORY[0x1E69E6158];
  sub_1C5C67670(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v64 = v76;
  v76[60] = v53;
  v76[63] = v65;
  v76[64] = 0x696669746E656449;
  v76[65] = 0xEA00000000007265;
  ObjectType = [v75 loggingIdentifier];
  v74 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    *(&v78 + 1) = 0;
    *&v79 = 0;
  }

  *(&v79 + 1) = ObjectType;
  *&v78 = v74;
  OUTLINED_FUNCTION_0_69(ObjectType, v67, v68, v69, v70, v71, v72, v73, v75, v76);
  sub_1C5CBCF4C(&v78);
  v64[69] = v63;
  v64[66] = 0;
  v64[67] = 0xE000000000000000;
  return sub_1C6016880();
}

uint64_t AVPlayerActionAtItemEnd.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 1701736302;
    case 1:
      return 0x6573756170;
    case 0:
      return 0xD000000000000011;
  }

  result = OUTLINED_FUNCTION_2_44();
  __break(1u);
  return result;
}

uint64_t AVPlayerTimeControlStatus.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x646573756170;
    case 1:
      return 0xD00000000000001CLL;
    case 2:
      return 0x676E6979616C70;
  }

  result = OUTLINED_FUNCTION_2_44();
  __break(1u);
  return result;
}

id sub_1C5DDB3D0()
{
  v1 = [v0 currentItem];

  return v1;
}

id sub_1C5DDB52C()
{
  v1 = [v0 playbackCoordinator];

  return v1;
}

void sub_1C5DDB580(void *a1)
{
  [v1 setAudioSession_];
}

void sub_1C5DDB5EC()
{
  sub_1C5DDBA28();
  v1 = sub_1C6016AF0();

  [v0 setItemsToPrebuffer_];
}

void (*sub_1C5DDB65C(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C5DDB700(v2);
  return sub_1C5DDB6B8;
}

void sub_1C5DDB6B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1C5DDB700(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 itemsToPrebuffer];
  a1[2] = sub_1C5DDBA28();
  v4 = sub_1C6016B10();

  *a1 = v4;
  return sub_1C5DDB788;
}

void sub_1C5DDB788(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    v3 = sub_1C6016AF0();

    [v2 setItemsToPrebuffer_];
  }

  else
  {
    v3 = sub_1C6016AF0();

    [v2 setItemsToPrebuffer_];
  }
}

uint64_t sub_1C5DDB8B4(SEL *a1)
{
  v2 = [v1 *a1];
  sub_1C5DDBA28();
  v3 = sub_1C6016B10();

  return v3;
}

void sub_1C5DDB954(uint64_t a1, uint64_t a2, double a3)
{
  v4 = LODWORD(a3);
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1C5DBCF1C;
    v6[3] = &block_descriptor_20_1;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  LODWORD(a3) = v4;
  [v3 prerollAtRate:v5 completionHandler:a3];
  _Block_release(v5);
}

unint64_t sub_1C5DDBA28()
{
  result = qword_1ED7DCEA8;
  if (!qword_1ED7DCEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCEA8);
  }

  return result;
}

id sub_1C5DDBA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C6016900();

  v7 = sub_1C6016900();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1C5DDBB38(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C5C6AA20(a2);
  v4 = OUTLINED_FUNCTION_41_8();
  v5 = sub_1C5D85590(v4);
  if (v6)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  if (v2 < v7)
  {
    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_255();
  sub_1C5D85598(v8);
  result = sub_1C5D85598(v2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v2)
  {
  }

  else
  {
    if (v7 >= v2)
    {
      goto LABEL_21;
    }

    sub_1C5D11E0C();
    OUTLINED_FUNCTION_53_8();

    result = v7;
    do
    {
      v10 = result + 1;
      sub_1C6017550();
      result = v10;
    }

    while (v2 != v10);
  }

  if (a2 >> 62)
  {
LABEL_19:

    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_44_11();
    return OUTLINED_FUNCTION_11_0();
  }

  if ((v2 & 0x8000000000000000) == 0)
  {

    OUTLINED_FUNCTION_51_8();
    return OUTLINED_FUNCTION_11_0();
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}