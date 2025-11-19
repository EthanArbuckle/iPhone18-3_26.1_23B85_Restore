_BYTE *sub_1DC3EA2F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DC3EA3E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC3EA420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DC3EA464(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DC3EA47C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DC3EA4C4(unsigned __int8 *a1, uint64_t a2)
{
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v4 = sub_1DC332B08();
  v5 = sub_1DC3E77A4(v4);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1DC332BF0();
  v8 = sub_1DC3238E4(v7) & 1;

  return sub_1DC3EA54C(a1, v6, v8, a2);
}

uint64_t sub_1DC3EA54C(unsigned __int8 *a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    return a2;
  }

  if (a2 == 1)
  {
    if (a1[1] == 1)
    {
      sub_1DC428688(15);
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    switch(*a1)
    {
      case 1u:
        goto LABEL_13;
      case 2u:
        sub_1DC30D6EC();
        OUTLINED_FUNCTION_41();
        v31 = sub_1DC51823C();
        v32 = v19;
        OUTLINED_FUNCTION_41();
        v20 = sub_1DC51823C();
        MEMORY[0x1E1296160](v20);

        goto LABEL_14;
      case 3u:
        if ((*(*a4 + 96))(5))
        {

          sub_1DC30D6EC();
          v31 = sub_1DC51823C();
          v32 = v21;
          v22 = sub_1DC51823C();
        }

        else
        {
LABEL_13:
          sub_1DC30D6EC();
          v31 = sub_1DC51823C();
          v32 = v24;
LABEL_14:
          v22 = v7;
          v23 = v9;
        }

        MEMORY[0x1E1296160](v22, v23);

        v17 = v31;
        v18 = v32;
LABEL_16:
        sub_1DC3EA85C();
        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0xE000000000000000;
        }

        MEMORY[0x1E1296160](v27, v28);

        result = v17;
        v29 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v29 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (!v29)
        {

          result = OUTLINED_FUNCTION_75_6();
        }

        break;
      default:

        v17 = 0;
        v18 = 0xE000000000000000;
        goto LABEL_16;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C218, &qword_1DC528A90);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DC522F00;
    *(v12 + 32) = a1[1];
    v13 = *a1;
    *(v12 + 33) = v13 == 2;
    *(v12 + 34) = v13 == 1;
    v14 = sub_1DC32370C(v12, a3 & 1);
    v16 = v15;

    sub_1DC30D6EC();
    v30 = sub_1DC51823C();
    MEMORY[0x1E1296160](32, 0xE100000000000000);
    MEMORY[0x1E1296160](v14, v16);

    return v30;
  }

  return result;
}

void sub_1DC3EA85C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(type metadata accessor for QDContextState(0) + 24);
  OUTLINED_FUNCTION_62_3();
  sub_1DC2DB2AC();
  v9 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_1DC28EB30(v7, &qword_1ECC7BEC0, &unk_1DC5221E0);
  }

  else
  {
    v25 = sub_1DC51723C();
    v11 = v10;
    OUTLINED_FUNCTION_7_1(v9);
    (*(v12 + 8))(v7, v9);
    if (qword_1ECC8A490 != -1)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v13 = qword_1ECC8FA00;
      v14 = *(qword_1ECC8FA00 + 16);
      if (!v14)
      {
        break;
      }

      v15 = 0;
      v16 = *(*v1 + 96);
      v17 = (qword_1ECC8FA00 + 40);
      while (v15 < *(v13 + 16))
      {
        v18 = *v17;
        v19 = *(v17 - 8);

        if (v16(v19))
        {
          if (*(v18 + 16))
          {
            v20 = sub_1DC2AEB04(v25, v11);
            if (v21)
            {
              v22 = v20;

              v23 = *(*(v18 + 56) + v22);

              sub_1DC428688(v23);
              goto LABEL_13;
            }
          }
        }

        ++v15;
        v17 += 2;
        if (v14 == v15)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_16:
      OUTLINED_FUNCTION_35_16();
    }

LABEL_11:
  }

  OUTLINED_FUNCTION_75_6();
LABEL_13:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3EABB4()
{
  result = sub_1DC33347C(&unk_1F57FBA58);
  qword_1ECC8F9E8 = result;
  return result;
}

uint64_t sub_1DC3EABDC()
{
  result = sub_1DC33347C(&unk_1F57FBA88);
  qword_1ECC8F9F0 = result;
  return result;
}

uint64_t sub_1DC3EAC04()
{
  result = sub_1DC33347C(&unk_1F57FBB28);
  qword_1ECC8F9F8 = result;
  return result;
}

uint64_t sub_1DC3EAC2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6C8, &qword_1DC529348);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  *(v0 + 32) = 6;
  *(v0 + 40) = sub_1DC51764C();
  *(v0 + 48) = 7;
  result = sub_1DC51764C();
  *(v0 + 56) = result;
  qword_1ECC8FA00 = v0;
  return result;
}

uint64_t sub_1DC3EACF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  v1 = *MEMORY[0x1E6993B20];
  *(inited + 32) = sub_1DC51772C();
  *(inited + 40) = v2;
  result = sub_1DC33347C(inited);
  qword_1EDAC9580 = result;
  return result;
}

uint64_t sub_1DC3EAD64@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (v3)
  {
    v4 = v3;
    if (sub_1DC516D8C())
    {
      sub_1DC517B8C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v5 = sub_1DC296DBC();
      sub_1DC516F0C();

      sub_1DC3EAF64();
      LOBYTE(v5) = v6;
      sub_1DC3EC3F4();
      v8 = v7;
      v9 = type metadata accessor for QDContextState(0);
      v10 = &a1[*(v9 + 24)];
      sub_1DC3EC508();

      *a1 = v5;
      a1[1] = v8 & 1;
      v11 = a1;
      v12 = 0;
      v13 = v9;
      goto LABEL_7;
    }

    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v15 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  else
  {
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v14 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  v13 = type metadata accessor for QDContextState(0);
  v11 = a1;
  v12 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_1DC3EAF64()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6B8, &qword_1DC529330);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v271 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6C0, &unk_1DC529338);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v272 = v11;
  OUTLINED_FUNCTION_12();
  v274 = sub_1DC516C9C();
  v12 = OUTLINED_FUNCTION_0(v274);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v275 = sub_1DC51724C();
  v20 = OUTLINED_FUNCTION_0(v275);
  v273 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v276 = v30;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v31 = OUTLINED_FUNCTION_35(v282);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v281 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v284 = v36;
  OUTLINED_FUNCTION_12();
  v280 = sub_1DC51728C();
  v37 = OUTLINED_FUNCTION_0(v280);
  v278 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  v279 = v42;
  OUTLINED_FUNCTION_12();
  v43 = sub_1DC516AFC();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  v292 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v267 - v51;
  v53 = sub_1DC516C3C();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_15();
  v283 = v57;
  OUTLINED_FUNCTION_22();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v267 - v60;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  v285 = v62;
  v63 = 0;
  v64 = *(v1 + 16);
  v293 = v1;
  v294 = v64;
  v295 = v65 + 16;
  v289 = *MEMORY[0x1E69A9008];
  v291 = (v46 + 8);
  v296 = v65;
  v287 = (v65 + 8);
  v288 = (v46 + 104);
  v270 = v14;
  v269 = v19;
  v290 = v61;
  while (1)
  {
    if (v294 == v63)
    {
      sub_1DC517B8C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v81 = sub_1DC296DBC();
      sub_1DC516F0C();

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_52_13();
    v67 = v66;
    v286 = *(v70 + 16);
    v286(v61, v68 + v69 * v66, v53);
    sub_1DC516C2C();
    v71 = v292;
    (*v288)(v292, v289, v43);
    OUTLINED_FUNCTION_30_17();
    sub_1DC3EED9C(&qword_1ECC7BAE0, v72);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v73 = v299[0] == v297 && v299[1] == v298;
    if (v73)
    {
      break;
    }

    v74 = sub_1DC51825C();
    v75 = v71;
    v76 = v53;
    v77 = *v291;
    (*v291)(v75, v43);
    v77(v52, v43);
    v53 = v76;

    if (v74)
    {
      goto LABEL_11;
    }

    v78 = *v287;
    v61 = v290;
    v79 = OUTLINED_FUNCTION_54_4();
    v80(v79);
    v63 = (v67 + 1);
  }

  v82 = *v291;
  v83 = OUTLINED_FUNCTION_159();
  (v82)(v83);
  v82(v52, v43);

LABEL_11:
  v84 = v285;
  (*(v296 + 32))(v285, v290, v53);
  v85 = v284;
  sub_1DC516C1C();
  sub_1DC5172AC();
  OUTLINED_FUNCTION_14_2(v85);
  if (v73)
  {
    sub_1DC28EB30(v85, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v87 = v86;
    v89 = *(v88 + 88);
    v90 = OUTLINED_FUNCTION_62_2();
    v92 = v91(v90);
    if (v92 == *MEMORY[0x1E69DAE70])
    {
      v93 = *(v87 + 96);
      v94 = OUTLINED_FUNCTION_62_2();
      v95(v94);
      v96 = *v85;
      v97 = swift_projectBox();
      v98 = v278;
      v99 = *(v278 + 16);
      v100 = v279;
      v101 = v280;
      v99(v279, v97, v280);

      v102 = v277;
      v103 = OUTLINED_FUNCTION_41();
      (v99)(v103);
      v104 = *(v98 + 88);
      v105 = OUTLINED_FUNCTION_149();
      if (v106(v105) == *MEMORY[0x1E69DADA8])
      {
        v107 = *(v98 + 96);
        v108 = OUTLINED_FUNCTION_149();
        v109(v108);
        v110 = v273;
        v111 = v276;
        v112 = v275;
        (*(v273 + 32))(v276, v102, v275);
        if (_MergedGlobals_16 != -1)
        {
          OUTLINED_FUNCTION_41_9();
        }

        v113 = qword_1ECC8F9E8;
        v114 = sub_1DC51723C();
        LOBYTE(v113) = sub_1DC332FF4(v114, v115, v113);

        v116 = v274;
        if (v113)
        {
          v117 = sub_1DC517B8C();
          v118 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v119 = OUTLINED_FUNCTION_37_11();
          v120(v119);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v121 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v121);
            *v98 = 136315138;
            sub_1DC51723C();
            v122 = OUTLINED_FUNCTION_18_21();
            v111(v122);
            v123 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v123, v124, v125);
            OUTLINED_FUNCTION_155_0();

            *(v98 + 4) = v118;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v126, v127, "QDCONTEXT: BundleId %s marked as not in app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v128 = OUTLINED_FUNCTION_22_15();
            v111(v128);
            v129 = OUTLINED_FUNCTION_6_25();
LABEL_40:
            v130(v129);
            v181 = OUTLINED_FUNCTION_20_16();
            v182(v181);
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        if (qword_1EDAC9570 != -1)
        {
          OUTLINED_FUNCTION_38_12();
        }

        v148 = qword_1ECC8F9F8;
        v149 = sub_1DC51723C();
        LOBYTE(v148) = sub_1DC332FF4(v149, v150, v148);

        if (v148)
        {
          v117 = sub_1DC517B8C();
          v151 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v152 = OUTLINED_FUNCTION_37_11();
          v153(v152);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v154 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v154);
            *v98 = 136315138;
            sub_1DC51723C();
            v155 = OUTLINED_FUNCTION_18_21();
            v111(v155);
            v156 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v156, v157, v158);
            OUTLINED_FUNCTION_155_0();

            *(v98 + 4) = v151;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v159, v160, "QDCONTEXT: BundleId %s marked as mail app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v161 = OUTLINED_FUNCTION_22_15();
            v111(v161);
            v129 = OUTLINED_FUNCTION_6_25();
            goto LABEL_40;
          }

LABEL_39:

          v179 = OUTLINED_FUNCTION_17_15();
          v117(v179);
          v180 = OUTLINED_FUNCTION_159();
          v117(v180);
          v129 = OUTLINED_FUNCTION_21_15();
          goto LABEL_40;
        }

        if (qword_1EDAC9568 != -1)
        {
          OUTLINED_FUNCTION_39_11();
        }

        v162 = qword_1ECC8F9F0;
        v163 = sub_1DC51723C();
        LOBYTE(v162) = sub_1DC332FF4(v163, v164, v162);

        if (v162)
        {
          v165 = sub_1DC517B8C();
          v166 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          sub_1DC296DBC();
          OUTLINED_FUNCTION_26_16();
          v167 = OUTLINED_FUNCTION_37_11();
          v168(v167);
          if (OUTLINED_FUNCTION_68_7())
          {
            OUTLINED_FUNCTION_63();
            v169 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v169);
            *v98 = 136315138;
            sub_1DC51723C();
            v170 = OUTLINED_FUNCTION_18_21();
            v111(v170);
            v171 = OUTLINED_FUNCTION_41();
            sub_1DC291244(v171, v172, v173);
            OUTLINED_FUNCTION_155_0();

            *(v98 + 4) = v166;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v174, v175, "QDCONTEXT: BundleId %s marked as media rich app");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

            v176 = OUTLINED_FUNCTION_22_15();
            v111(v176);
LABEL_38:
            v177 = OUTLINED_FUNCTION_6_25();
            v178(v177);
LABEL_45:
            v189 = OUTLINED_FUNCTION_20_16();
            v190(v189);
            goto LABEL_26;
          }

LABEL_44:

          v185 = OUTLINED_FUNCTION_17_15();
          v165(v185);
          v186 = OUTLINED_FUNCTION_159();
          v165(v186);
          v187 = OUTLINED_FUNCTION_21_15();
          v188(v187);
          goto LABEL_45;
        }

        v183 = v271;
        sub_1DC516C0C();
        v99 = sub_1DC516CCC();
        OUTLINED_FUNCTION_2_6(v183);
        if (v73)
        {
          sub_1DC28EB30(v183, &qword_1ECC7D6B8, &qword_1DC529330);
          v184 = sub_1DC516CAC();
          v191 = v272;
          __swift_storeEnumTagSinglePayload(v272, 1, 1, v184);
        }

        else
        {
          v191 = v272;
          sub_1DC516CBC();
          OUTLINED_FUNCTION_7_1(v99);
          (*(v192 + 8))(v183, v99);
          v193 = sub_1DC516CAC();
          OUTLINED_FUNCTION_14_2(v191);
          if (!v194)
          {
            OUTLINED_FUNCTION_2_3();
            v207 = v206;
            v209 = *(v208 + 88);
            v210 = OUTLINED_FUNCTION_72();
            v212 = v211(v210);
            if (v212 == *MEMORY[0x1E69A9110])
            {
              v213 = *(v207 + 96);
              v214 = OUTLINED_FUNCTION_72();
              v215(v214);
              v216 = v270;
              v217 = *(v270 + 32);
              v218 = OUTLINED_FUNCTION_37_11();
              v219(v218);
              v220 = sub_1DC516C8C();
              if (v221)
              {
                v222 = v220;
                v223 = v221;
                if (qword_1EDAC9578 != -1)
                {
                  swift_once();
                }

                if (sub_1DC332FF4(v222, v223, qword_1EDAC9580))
                {
                  v224 = sub_1DC517B8C();
                  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                  v225 = sub_1DC296DBC();
                  v226 = v268;
                  (*(v110 + 16))(v268, v276, v112);
                  if (os_log_type_enabled(v225, v224))
                  {
                    v227 = swift_slowAlloc();
                    LODWORD(v295) = v224;
                    v228 = v112;
                    v229 = v110;
                    v230 = v227;
                    v296 = swift_slowAlloc();
                    v299[0] = v296;
                    *v230 = 136315394;
                    v231 = sub_1DC51723C();
                    v294 = v225;
                    v232 = v231;
                    v234 = v233;
                    v235 = *(v229 + 8);
                    v235(v226, v228);
                    v236 = sub_1DC291244(v232, v234, v299);

                    *(v230 + 4) = v236;
                    *(v230 + 12) = 2080;
                    v237 = sub_1DC291244(v222, v223, v299);

                    *(v230 + 14) = v237;
                    v238 = v294;
                    _os_log_impl(&dword_1DC287000, v294, v295, "QDCONTEXT: BundleId %s identified as media rich app (category=%s", v230, 0x16u);
                    v239 = v296;
                    swift_arrayDestroy();
                    MEMORY[0x1E1298840](v239, -1, -1);
                    MEMORY[0x1E1298840](v230, -1, -1);

                    v240 = OUTLINED_FUNCTION_12_22();
                    v241(v240, v274);
                    v235(v276, v228);
                    v242 = OUTLINED_FUNCTION_6_25();
                    v243(v242);
                    (*v287)(v285, v53);
                    goto LABEL_26;
                  }

                  v260 = OUTLINED_FUNCTION_17_15();
                  (v225)(v260);
                  v261 = OUTLINED_FUNCTION_12_22();
                  v262(v261, v116);
                  (v225)(v276, v112);
                  goto LABEL_38;
                }

                v247 = sub_1DC517B9C();
                v248 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                sub_1DC296DBC();
                OUTLINED_FUNCTION_26_16();
                v249 = OUTLINED_FUNCTION_55_13();
                v250(v249);
                if (!OUTLINED_FUNCTION_68_7())
                {

                  v263 = OUTLINED_FUNCTION_17_15();
                  v247(v263);
                  v264 = OUTLINED_FUNCTION_12_22();
                  v265(v264, v116);
                  v266 = OUTLINED_FUNCTION_159();
                  v247(v266);
                  goto LABEL_38;
                }

                OUTLINED_FUNCTION_63();
                v251 = OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_25_14(v251);
                *v222 = 136315138;
                sub_1DC51723C();
                v252 = OUTLINED_FUNCTION_49_12();
                v116(v252);
                v253 = OUTLINED_FUNCTION_159();
                sub_1DC291244(v253, v254, v255);
                OUTLINED_FUNCTION_155_0();

                *(v222 + 4) = v248;
                OUTLINED_FUNCTION_15_16(&dword_1DC287000, v256, v257, "QDCONTEXT: BundleId %s identified as 'in app'");
                OUTLINED_FUNCTION_16_13();
                OUTLINED_FUNCTION_58();

                v258 = OUTLINED_FUNCTION_12_22();
                v259(v258, v274);
                goto LABEL_51;
              }

              (*(v216 + 8))(v193, v116);
              v98 = v278;
            }

            else
            {
              v244 = *(v207 + 8);
              v245 = OUTLINED_FUNCTION_72();
              v246(v245);
            }

LABEL_49:
            v165 = sub_1DC517B9C();
            v195 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
            sub_1DC296DBC();
            OUTLINED_FUNCTION_26_16();
            v196 = OUTLINED_FUNCTION_55_13();
            v197(v196);
            if (!OUTLINED_FUNCTION_68_7())
            {
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_63();
            v198 = OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_25_14(v198);
            *v98 = 136315138;
            sub_1DC51723C();
            v199 = OUTLINED_FUNCTION_49_12();
            v116(v199);
            v200 = OUTLINED_FUNCTION_159();
            sub_1DC291244(v200, v201, v202);
            OUTLINED_FUNCTION_155_0();

            *(v98 + 4) = v195;
            OUTLINED_FUNCTION_15_16(&dword_1DC287000, v203, v204, "QDCONTEXT: BundleId %s identified as 'in app', category information not available");
            OUTLINED_FUNCTION_16_13();
            OUTLINED_FUNCTION_58();

LABEL_51:
            v205 = OUTLINED_FUNCTION_22_15();
            v116(v205);
            goto LABEL_38;
          }
        }

        sub_1DC28EB30(v191, &qword_1ECC7D6C0, &unk_1DC529338);
        goto LABEL_49;
      }

      v134 = *(v98 + 8);
      v67 = v98 + 8;
      v134(v100, v101);
      v135 = OUTLINED_FUNCTION_149();
      (v134)(v135);
    }

    else
    {
      v131 = *(v87 + 8);
      v132 = OUTLINED_FUNCTION_62_2();
      v133(v132);
    }
  }

  v136 = v283;
  v137 = v286;
  v138 = sub_1DC517B8C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v139 = sub_1DC296DBC();
  v137(v136, v84, v53);
  if (os_log_type_enabled(v139, v138))
  {
    OUTLINED_FUNCTION_63();
    v299[0] = OUTLINED_FUNCTION_117();
    *v67 = 136315138;
    v140 = v136;
    sub_1DC516C1C();
    sub_1DC51777C();
    v141 = OUTLINED_FUNCTION_155_0();
    v143 = v142;
    v144 = *v287;
    (*v287)(v141, v53);
    sub_1DC291244(v140, v143, v299);
    OUTLINED_FUNCTION_155_0();

    *(v67 + 4) = v140;
    _os_log_impl(&dword_1DC287000, v139, v138, "QDCONTEXT: Not in app, unexpected appInFocusBundleId.typedValue (%s", v67, 0xCu);
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_58();

    v145 = OUTLINED_FUNCTION_54_4();
    (v144)(v145);
  }

  else
  {

    v146 = *v287;
    (*v287)(v136, v53);
    v147 = OUTLINED_FUNCTION_54_4();
    (v146)(v147);
  }

LABEL_26:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3EC3F4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC516C3C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = 0;
  v12 = *(v1 + 16);
  do
  {
    if (v12 == v11)
    {
      break;
    }

    (*(v5 + 16))(v10, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11++, v2);
    sub_1DC3ECB6C();
    v14 = v13;
    v15 = *(v5 + 8);
    v16 = OUTLINED_FUNCTION_72();
    v17(v16);
  }

  while ((v14 & 1) == 0);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3EC508()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v91 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v90 = v7;
  OUTLINED_FUNCTION_12();
  v87 = sub_1DC51728C();
  v8 = OUTLINED_FUNCTION_0(v87);
  v85 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v86 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v84 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC516AFC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - v25;
  v27 = sub_1DC516C3C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v88 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v89 = v37;
  v38 = 0;
  v39 = *(v1 + 16);
  v98 = v1;
  v99 = v39;
  v95 = v40 + 16;
  v94 = *MEMORY[0x1E69A9008];
  v92 = v41;
  v93 = (v18 + 104);
  v100 = v40;
  v96 = (v18 + 8);
  v97 = (v40 + 8);
  while (1)
  {
    if (v99 == v38)
    {
      v51 = sub_1DC51724C();
      v52 = v91;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_52_13();
    (*(v44 + 16))(v33, v42 + v43 * v38, v27);
    sub_1DC516C2C();
    (*v93)(v23, v94, v15);
    OUTLINED_FUNCTION_30_17();
    sub_1DC3EED9C(&qword_1ECC7BAE0, v45);
    OUTLINED_FUNCTION_212();
    sub_1DC5179EC();
    OUTLINED_FUNCTION_212();
    sub_1DC5179EC();
    if (v104 == v102 && v105 == v103)
    {
      break;
    }

    v101 = sub_1DC51825C();
    v47 = *v96;
    (*v96)(v23, v15);
    v47(v26, v15);
    v27 = v92;

    if (v101)
    {
      goto LABEL_11;
    }

    v48 = *v97;
    v49 = OUTLINED_FUNCTION_54_4();
    v50(v49);
    ++v38;
  }

  v53 = *v96;
  (*v96)(v23, v15);
  v53(v26, v15);

LABEL_11:
  v55 = v100 + 32;
  v54 = *(v100 + 32);
  v56 = v88;
  v54(v88, v33, v27);
  v57 = v89;
  v54(v89, v56, v27);
  v58 = v90;
  sub_1DC516C1C();
  (*(v55 - 24))(v57, v27);
  v59 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
  {
    sub_1DC28EB30(v58, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    v61 = v60;
    if ((*(v62 + 88))(v58, v59) == *MEMORY[0x1E69DAE70])
    {
      (*(v61 + 96))(v58, v59);
      v63 = *v58;
      v64 = swift_projectBox();
      v65 = v85;
      v66 = v84;
      v67 = v87;
      (*(v85 + 16))(v84, v64, v87);

      v68 = v86;
      (*(v65 + 32))(v86, v66, v67);
      v69 = *(v65 + 88);
      v70 = OUTLINED_FUNCTION_62_2();
      if (v71(v70) == *MEMORY[0x1E69DADA8])
      {
        v72 = *(v65 + 96);
        v73 = OUTLINED_FUNCTION_62_2();
        v74(v73);
        v75 = sub_1DC51724C();
        OUTLINED_FUNCTION_35(v75);
        v77 = v91;
        (*(v76 + 32))(v91, v68, v75);
        v52 = v77;
        v78 = 0;
        v51 = v75;
        goto LABEL_20;
      }

      v79 = *(v65 + 8);
      v80 = OUTLINED_FUNCTION_62_2();
      v81(v80);
    }

    else
    {
      (*(v61 + 8))(v58, v59);
    }
  }

  v82 = v91;
  v51 = sub_1DC51724C();
  v52 = v82;
LABEL_19:
  v78 = 1;
LABEL_20:
  __swift_storeEnumTagSinglePayload(v52, v78, 1, v51);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3ECB6C()
{
  OUTLINED_FUNCTION_33();
  v71 = sub_1DC5172AC();
  v0 = OUTLINED_FUNCTION_0(v71);
  v69 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  v65 = v5 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6A8, &qword_1DC529328);
  OUTLINED_FUNCTION_35(v67);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v70 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v66 = v14;
  OUTLINED_FUNCTION_22();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v64 - v17);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v68 = v19;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC516AFC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  sub_1DC516C2C();
  v32 = *(v23 + 104);
  v32(v28, *MEMORY[0x1E69A9050], v20);
  v33 = sub_1DC2DA444();
  v34 = *(v23 + 8);
  v34(v28, v20);
  v34(v31, v20);
  if (v33 & 1) != 0 || (sub_1DC516C2C(), v32(v28, *MEMORY[0x1E69A9060], v20), v35 = sub_1DC2DA444(), v34(v28, v20), v34(v31, v20), (v35))
  {
    v36 = v68;
    sub_1DC516C1C();
    v37 = sub_1DC51728C();
    v38 = swift_allocBox();
    *v39 = 1;
    v40 = *MEMORY[0x1E69DADC0];
    OUTLINED_FUNCTION_7_1(v37);
    (*(v41 + 104))();
    *v18 = v38;
    v42 = v69;
    v43 = v71;
    (*(v69 + 104))(v18, *MEMORY[0x1E69DAE70], v71);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v43);
    v44 = *(v67 + 48);
    v45 = v70;
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_2_6(v45);
    if (!v53)
    {
      v52 = v66;
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_2_6(v45 + v44);
      if (!v53)
      {
        v60 = v65;
        (*(v42 + 32))(v65, v45 + v44, v43);
        sub_1DC3EED9C(&qword_1ECC7D6B0, MEMORY[0x1E69DAE88]);
        sub_1DC5176CC();
        v61 = *(v42 + 8);
        v61(v60, v43);
        v62 = OUTLINED_FUNCTION_149();
        sub_1DC28EB30(v62, v63, &qword_1DC522580);
        sub_1DC28EB30(v36, &qword_1ECC7BFF8, &qword_1DC522580);
        v61(v52, v43);
        sub_1DC28EB30(v45, &qword_1ECC7BFF8, &qword_1DC522580);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v54, v55, v56);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v57, v58, v59);
      (*(v42 + 8))(v52, v43);
LABEL_11:
      sub_1DC28EB30(v45, &qword_1ECC7D6A8, &qword_1DC529328);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v46, v47, v48);
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v49, v50, v51);
    OUTLINED_FUNCTION_2_6(v45 + v44);
    if (!v53)
    {
      goto LABEL_11;
    }

    sub_1DC28EB30(v45, &qword_1ECC7BFF8, &qword_1DC522580);
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3ED0C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DC51825C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3ED148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC3ED0C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DC3ED174()
{
  sub_1DC3EED28();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED1AC()
{
  sub_1DC3EED28();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3ED1E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D608, &qword_1DC528A98);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_13();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3EED28();
  sub_1DC51835C();
  type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_31_15();
  sub_1DC3EED9C(v10, v11);
  sub_1DC5181AC();
  return (*(v5 + 8))(v1, v3);
}

void sub_1DC3ED334()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D610, &qword_1DC528AA0);
  OUTLINED_FUNCTION_0(v7);
  v22 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for QDContextStateOutput(0);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DC3EED28();
  sub_1DC51834C();
  if (!v0)
  {
    type metadata accessor for QDContextState(0);
    OUTLINED_FUNCTION_31_15();
    sub_1DC3EED9C(v17, v18);
    OUTLINED_FUNCTION_74_7();
    sub_1DC5180EC();
    v19 = *(v22 + 8);
    v20 = OUTLINED_FUNCTION_41();
    v21(v20);
    sub_1DC2DB254();
    OUTLINED_FUNCTION_212();
    sub_1DC3EF148();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC3ED5A4()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x7070416E49746F6ELL && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_70_9();
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_64_6() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0x70416C69614D6E69 && v0 == 0xE900000000000070)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_32_13();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DC3ED6AC(char a1)
{
  result = 0x7070416E49746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x7070416E69;
      break;
    case 2:
      result = OUTLINED_FUNCTION_64_6();
      break;
    case 3:
      result = 0x70416C69614D6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC3ED73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC3ED5A4();
  *a1 = result;
  return result;
}

uint64_t sub_1DC3ED76C()
{
  sub_1DC3EEDE4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED7A4()
{
  sub_1DC3EEDE4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3ED7DC()
{
  sub_1DC3EEEE0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED814()
{
  sub_1DC3EEEE0();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3ED84C()
{
  sub_1DC3EEE38();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED884()
{
  sub_1DC3EEE38();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3ED8BC()
{
  sub_1DC3EEE8C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED8F4()
{
  sub_1DC3EEE8C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3ED92C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1DC3ED964()
{
  sub_1DC3EEF34();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3ED99C()
{
  sub_1DC3EEF34();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC3ED9D4()
{
  OUTLINED_FUNCTION_28_1();
  v55 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D620, &qword_1DC528AA8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D628, &qword_1DC528AB0);
  v12 = OUTLINED_FUNCTION_0(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v49 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D630, &qword_1DC528AB8);
  v19 = OUTLINED_FUNCTION_0(v18);
  v47 = v20;
  v48 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_13();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D638, &qword_1DC528AC0);
  OUTLINED_FUNCTION_0(v24);
  v46 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D640, &qword_1DC528AC8);
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v45 - v35;
  v37 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DC3EEDE4();
  sub_1DC51835C();
  switch(v55)
  {
    case 1:
      OUTLINED_FUNCTION_69_8();
      sub_1DC3EEEE0();
      OUTLINED_FUNCTION_53_14();
      v40 = v48;
      v41 = *(v47 + 8);
      v39 = v0;
      goto LABEL_7;
    case 2:
      sub_1DC3EEE8C();
      v42 = v49;
      OUTLINED_FUNCTION_53_14();
      v44 = v50;
      v43 = v51;
      goto LABEL_5;
    case 3:
      sub_1DC3EEE38();
      v42 = v52;
      OUTLINED_FUNCTION_53_14();
      v44 = v53;
      v43 = v54;
LABEL_5:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      sub_1DC3EEF34();
      OUTLINED_FUNCTION_53_14();
      v38 = *(v46 + 8);
      v39 = OUTLINED_FUNCTION_212();
LABEL_7:
      v41(v39, v40);
      break;
  }

  (*(v31 + 8))(v36, v29);
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3EDD7C()
{
  OUTLINED_FUNCTION_28_1();
  v76 = v0;
  v3 = v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D648, &qword_1DC528AD0);
  OUTLINED_FUNCTION_0(v75);
  v72 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D650, &qword_1DC528AD8);
  v10 = OUTLINED_FUNCTION_0(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v71 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D658, &qword_1DC528AE0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v67 = v18;
  v68 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_28_13();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D660, &qword_1DC528AE8);
  OUTLINED_FUNCTION_0(v22);
  v66 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_11_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D668, &qword_1DC528AF0);
  OUTLINED_FUNCTION_0(v27);
  v73 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  v34 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DC3EEDE4();
  v35 = v76;
  sub_1DC51834C();
  if (v35)
  {
    goto LABEL_8;
  }

  v64 = v22;
  v65 = v1;
  v36 = v74;
  v37 = v75;
  v76 = v3;
  v38 = v33;
  v39 = sub_1DC51816C();
  v43 = sub_1DC3EEF88(v39, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v53 = sub_1DC517F7C();
    swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D670, &qword_1DC528AF8) + 48);
    *v55 = &type metadata for QDContextState.InAppMode;
    sub_1DC5180BC();
    sub_1DC517F6C();
    v57 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_7_1(v53);
    (*(v58 + 104))(v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v38, v27);
    v3 = v76;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_9:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v63 = 0;
  if (v41 < (v42 >> 1))
  {
    v44 = *(v40 + v41);
    sub_1DC3EEFD0(v41 + 1, v42 >> 1, v43, v40, v41, v42);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v44;
      v51 = v72;
      v50 = v73;
      switch(v49)
      {
        case 1:
          OUTLINED_FUNCTION_69_8();
          sub_1DC3EEEE0();
          OUTLINED_FUNCTION_48_8();
          swift_unknownObjectRelease();
          v60 = v67;
          v59 = v68;
          goto LABEL_15;
        case 2:
          sub_1DC3EEE8C();
          v37 = v71;
          OUTLINED_FUNCTION_48_8();
          swift_unknownObjectRelease();
          v60 = v69;
          v59 = v70;
LABEL_15:
          (*(v60 + 8))(v37, v59);
          goto LABEL_16;
        case 3:
          sub_1DC3EEE38();
          v61 = v63;
          sub_1DC5180AC();
          if (v61)
          {
            (*(v50 + 8))(v38, v27);
            swift_unknownObjectRelease();
            v3 = v76;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v51 + 8))(v36, v37);
LABEL_16:
          (*(v50 + 8))(v38, v27);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          break;
        default:
          sub_1DC3EEF34();
          v52 = v65;
          OUTLINED_FUNCTION_48_8();
          swift_unknownObjectRelease();
          (*(v66 + 8))(v52, v64);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DC3EE340(_BYTE *a1@<X8>)
{
  sub_1DC3EDD7C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1DC3EE388()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC51724C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D678, &qword_1DC528B00);
  OUTLINED_FUNCTION_35(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  if (*v3 == *v1 && v3[1] == v1[1])
  {
    v36 = v7;
    v23 = *(type metadata accessor for QDContextState(0) + 24);
    v24 = *(v17 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_14_2(v22);
    if (!v25)
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_14_2(&v22[v24]);
      if (!v25)
      {
        v29 = v36;
        (*(v36 + 32))(v12, &v22[v24], v4);
        OUTLINED_FUNCTION_8_19();
        sub_1DC3EED9C(v30, v31);
        sub_1DC5176CC();
        v32 = *(v29 + 8);
        v33 = OUTLINED_FUNCTION_43();
        v32(v33);
        v34 = OUTLINED_FUNCTION_72();
        v32(v34);
        sub_1DC28EB30(v22, &qword_1ECC7BEC0, &unk_1DC5221E0);
        goto LABEL_12;
      }

      v26 = *(v36 + 8);
      v27 = OUTLINED_FUNCTION_72();
      v28(v27);
LABEL_11:
      sub_1DC28EB30(v22, &qword_1ECC7D678, &qword_1DC528B00);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_14_2(&v22[v24]);
    if (!v25)
    {
      goto LABEL_11;
    }

    sub_1DC28EB30(v22, &qword_1ECC7BEC0, &unk_1DC5221E0);
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3EE658()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v1 == 0x646F4D7070416E69 && v2 == 0xE900000000000065;
  if (v3 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x466E49616964656DLL && v0 == 0xEC0000007375636FLL;
    if (v5 || (OUTLINED_FUNCTION_32_13() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_70_9();
      if (v3 && v0 == 0xE500000000000000)
      {

        return 2;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_32_13();

        if (v7)
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
}

uint64_t sub_1DC3EE73C(char a1)
{
  if (!a1)
  {
    return 0x646F4D7070416E69;
  }

  if (a1 == 1)
  {
    return 0x466E49616964656DLL;
  }

  return 0x7070416E69;
}

uint64_t sub_1DC3EE7C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC3EE658();
  *a1 = result;
  return result;
}

uint64_t sub_1DC3EE7F4()
{
  sub_1DC3EF04C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3EE82C()
{
  sub_1DC3EF04C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3EE864(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D688, &qword_1DC528B08);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_1();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3EF04C();
  sub_1DC51835C();
  v18 = *v4;
  sub_1DC3EF0A0();
  sub_1DC51820C();
  if (!v2)
  {
    v13 = v4[1];
    OUTLINED_FUNCTION_69_8();
    sub_1DC5181CC();
    v14 = *(type metadata accessor for QDContextState(0) + 24);
    sub_1DC51724C();
    OUTLINED_FUNCTION_8_19();
    sub_1DC3EED9C(v15, v16);
    sub_1DC5181AC();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1DC3EEA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_28_1();
  v15 = v14;
  v42[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D690, &qword_1DC528B10);
  OUTLINED_FUNCTION_0(v43);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v42 - v26;
  v28 = type metadata accessor for QDContextState(0);
  v29 = OUTLINED_FUNCTION_35(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v34 = (v33 - v32);
  v35 = v15[3];
  v36 = v15[4];
  v44 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v35);
  sub_1DC3EF04C();
  sub_1DC51834C();
  if (!v13)
  {
    v37 = v34;
    sub_1DC3EF0F4();
    v38 = v43;
    sub_1DC51814C();
    *v37 = a13;
    OUTLINED_FUNCTION_69_8();
    v37[1] = sub_1DC51810C() & 1;
    sub_1DC51724C();
    OUTLINED_FUNCTION_8_19();
    sub_1DC3EED9C(v39, v40);
    OUTLINED_FUNCTION_74_7();
    sub_1DC5180EC();
    (*(v22 + 8))(v27, v38);
    v41 = *(v28 + 24);
    sub_1DC2DB254();
    sub_1DC3EF148();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC3EED28()
{
  result = qword_1ECC81D58[0];
  if (!qword_1ECC81D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC81D58);
  }

  return result;
}

uint64_t sub_1DC3EED9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DC3EEDE4()
{
  result = qword_1ECC839B0[0];
  if (!qword_1ECC839B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC839B0);
  }

  return result;
}

unint64_t sub_1DC3EEE38()
{
  result = qword_1ECC8A498;
  if (!qword_1ECC8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8A498);
  }

  return result;
}

unint64_t sub_1DC3EEE8C()
{
  result = qword_1ECC8A4A0;
  if (!qword_1ECC8A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC8A4A0);
  }

  return result;
}

unint64_t sub_1DC3EEEE0()
{
  result = qword_1ECC8A4A8[0];
  if (!qword_1ECC8A4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A4A8);
  }

  return result;
}

unint64_t sub_1DC3EEF34()
{
  result = qword_1ECC84000[0];
  if (!qword_1ECC84000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC84000);
  }

  return result;
}

uint64_t sub_1DC3EEF88(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3EEFD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_1DC3EF04C()
{
  result = qword_1ECC841A8[0];
  if (!qword_1ECC841A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC841A8);
  }

  return result;
}

unint64_t sub_1DC3EF0A0()
{
  result = qword_1ECC7BD30;
  if (!qword_1ECC7BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD30);
  }

  return result;
}

unint64_t sub_1DC3EF0F4()
{
  result = qword_1ECC7D698;
  if (!qword_1ECC7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D698);
  }

  return result;
}

uint64_t sub_1DC3EF148()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

void sub_1DC3EF1EC()
{
  sub_1DC3EF334(319, &qword_1ECC7BD20, type metadata accessor for QDContextState);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_75_6();
  }
}

void sub_1DC3EF298()
{
  sub_1DC3EF334(319, &qword_1ECC7BAA0, MEMORY[0x1E69DAD08]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_75_6();
  }
}

void sub_1DC3EF334(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for QDContextState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DC3EF47C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QDContextStateOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC3EF648()
{
  result = qword_1ECC8A730[0];
  if (!qword_1ECC8A730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A730);
  }

  return result;
}

unint64_t sub_1DC3EF6A0()
{
  result = qword_1ECC8A840[0];
  if (!qword_1ECC8A840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A840);
  }

  return result;
}

unint64_t sub_1DC3EF6F8()
{
  result = qword_1ECC8A950[0];
  if (!qword_1ECC8A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC8A950);
  }

  return result;
}

unint64_t sub_1DC3EF750()
{
  result = qword_1ECC84190;
  if (!qword_1ECC84190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84190);
  }

  return result;
}

unint64_t sub_1DC3EF7A8()
{
  result = qword_1ECC84198;
  if (!qword_1ECC84198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC84198);
  }

  return result;
}

unint64_t sub_1DC3EF800()
{
  result = qword_1ECC83FF0;
  if (!qword_1ECC83FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83FF0);
  }

  return result;
}

unint64_t sub_1DC3EF858()
{
  result = qword_1ECC83FF8;
  if (!qword_1ECC83FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83FF8);
  }

  return result;
}

unint64_t sub_1DC3EF8B0()
{
  result = qword_1ECC83B40;
  if (!qword_1ECC83B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83B40);
  }

  return result;
}

unint64_t sub_1DC3EF908()
{
  result = qword_1ECC83B48[0];
  if (!qword_1ECC83B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83B48);
  }

  return result;
}

unint64_t sub_1DC3EF960()
{
  result = qword_1ECC83CD0;
  if (!qword_1ECC83CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83CD0);
  }

  return result;
}

unint64_t sub_1DC3EF9B8()
{
  result = qword_1ECC83CD8[0];
  if (!qword_1ECC83CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83CD8);
  }

  return result;
}

unint64_t sub_1DC3EFA10()
{
  result = qword_1ECC83E60;
  if (!qword_1ECC83E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC83E60);
  }

  return result;
}

unint64_t sub_1DC3EFA68()
{
  result = qword_1ECC83E68[0];
  if (!qword_1ECC83E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC83E68);
  }

  return result;
}

unint64_t sub_1DC3EFAC0()
{
  result = qword_1ECC839A0;
  if (!qword_1ECC839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC839A0);
  }

  return result;
}

unint64_t sub_1DC3EFB18()
{
  result = qword_1ECC839A8;
  if (!qword_1ECC839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC839A8);
  }

  return result;
}

unint64_t sub_1DC3EFB70()
{
  result = qword_1ECC81D40;
  if (!qword_1ECC81D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81D40);
  }

  return result;
}

unint64_t sub_1DC3EFBC8()
{
  result = qword_1ECC81D48;
  if (!qword_1ECC81D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC81D48);
  }

  return result;
}

void *sub_1DC3EFC80()
{
  v1 = OBJC_IVAR___CDMNluRequestID_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC3EFD28(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequestID_objcProto;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC3EFD80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3EFDDC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC3EFEF0(uint64_t a1, void **a2)
{
  v4 = sub_1DC51110C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x80))(v7);
}

uint64_t sub_1DC3EFFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  swift_beginAccess();
  v4 = sub_1DC51110C();
  OUTLINED_FUNCTION_35(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC3F006C(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  OUTLINED_FUNCTION_1_22();
  v4 = sub_1DC51110C();
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluRequestID.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6D8, &qword_1DC529350);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28[-v8];
  v10 = sub_1DC51110C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR___CDMNluRequestID_objcProto;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x1E69D11C0]) init];
  v16 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  sub_1DC5110FC();
  swift_beginAccess();
  v17 = *&v2[v15];
  *&v2[v15] = a1;
  v18 = a1;

  v19 = v18;
  v20 = sub_1DC30EB38(v19);
  if (v21 >> 60 == 15)
  {
    sub_1DC517BAC();
    sub_1DC297814();
    v22 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v29 = 0;
    memset(&v28[16], 0, 32);
    sub_1DC2A6784(v20, v21);
    sub_1DC5166FC();
    sub_1DC3F08A0();
    sub_1DC51677C();
    sub_1DC301FE0(v23, v24);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    (*(v11 + 32))(v14, v9, v10);
    OUTLINED_FUNCTION_1_22();
    (*(v11 + 40))(&v2[v16], v14, v10);
    swift_endAccess();
  }

  v25 = type metadata accessor for CDMNluRequestID();
  v30.receiver = v2;
  v30.super_class = v25;
  v26 = objc_msgSendSuper2(&v30, sel_init);

  return v26;
}

id CDMNluRequestID.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluRequestID_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D11C0]) init];
  v5 = OBJC_IVAR___CDMNluRequestID_swiftProto;
  sub_1DC5110FC();
  OUTLINED_FUNCTION_1_22();
  v6 = sub_1DC51110C();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC3F08A0();
  v9 = sub_1DC51678C();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E69D11C0]);
  v13 = sub_1DC339190(v9, v11);
  if (v13)
  {
    v14 = v13;
    swift_beginAccess();
    v8 = *&v2[v4];
    *&v2[v4] = v14;
  }

  else
  {
    sub_1DC517BAC();
    sub_1DC297814();
    v8 = sub_1DC2C0F8C();
    sub_1DC516F0C();
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for CDMNluRequestID();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(a1, v6);
  return v15;
}

id CDMNluRequestID.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluRequestID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluRequestID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluRequestID()
{
  result = qword_1EDAC9630;
  if (!qword_1EDAC9630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC3F08A0()
{
  result = qword_1EDAC8060;
  if (!qword_1EDAC8060)
  {
    sub_1DC51110C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8060);
  }

  return result;
}

uint64_t sub_1DC3F08F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6D8, &qword_1DC529350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3F0968()
{
  result = sub_1DC51110C();
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

uint64_t sub_1DC3F0B7C(unsigned int *a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_57_0();
  v5 = sub_1DC511A5C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  if (sub_1DC511A8C())
  {
    sub_1DC511A6C();
    v11 = *(v8 + 88);
    v12 = OUTLINED_FUNCTION_35_0();
    if (v13(v12) == *MEMORY[0x1E69D0B90])
    {
      v14 = *a1;
      v15 = a2(0);
      OUTLINED_FUNCTION_35(v15);
      (*(v16 + 104))(v2, v14, v15);
      OUTLINED_FUNCTION_61();
      return __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
    }

    else
    {
      a2(0);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      v29 = *(v8 + 8);
      v30 = OUTLINED_FUNCTION_35_0();
      return v31(v30);
    }
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.toSwiftNLRouterServiceRequest(alternativeRequestId:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v124 = v26;
  v125 = v27;
  v29 = v28;
  v123 = sub_1DC510C8C();
  v30 = OUTLINED_FUNCTION_0(v123);
  v122 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v34);
  v119 = sub_1DC512ACC();
  v35 = OUTLINED_FUNCTION_0(v119);
  v118 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v39);
  v116 = sub_1DC512FDC();
  v40 = OUTLINED_FUNCTION_0(v116);
  v115 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v46 = OUTLINED_FUNCTION_10(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_62();
  v127 = v50;
  OUTLINED_FUNCTION_12();
  v113 = sub_1DC512A6C();
  v51 = OUTLINED_FUNCTION_0(v113);
  v112 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v57 = OUTLINED_FUNCTION_10(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_15();
  v126 = v60;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_38_3();
  v62 = sub_1DC5126CC();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v66 = sub_1DC512B8C();
  v67 = 0;
  v133 = *(v66 + 16);
  a10 = MEMORY[0x1E69E7CC0];
  v131 = v29;
  v132 = v21;
  v129 = v66;
  v130 = v62;
  for (i = v22; ; v22 = i)
  {
    if (v133 == v67)
    {

      if (sub_1DC512B1C())
      {
        OUTLINED_FUNCTION_213(&v135.userQuery.value._object);
        sub_1DC512ADC();
        Siri_Nlu_External_NluRouter_NLRouterTurnContext.toSwiftNLRouterTurnContext()();
        OUTLINED_FUNCTION_62_0(&v135.turnSummaries);
        v91(v67, v113);
        v92 = 0;
      }

      else
      {
        v92 = 1;
      }

      v95 = type metadata accessor for NLRouterTurnContext(0);
      v96 = 1;
      __swift_storeEnumTagSinglePayload(v21, v92, 1, v95);
      if (sub_1DC512B6C())
      {
        OUTLINED_FUNCTION_213(&v136);
        sub_1DC512AFC();
        Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.toSwiftNLRouterTurnProbingResult()();
        OUTLINED_FUNCTION_62_0(&a9);
        v97(1, v116);
        v96 = 0;
      }

      v98 = type metadata accessor for NLRouterTurnProbingResult(0);
      __swift_storeEnumTagSinglePayload(v127, v96, 1, v98);
      if (sub_1DC512BBC())
      {
        OUTLINED_FUNCTION_213(&a11);
        sub_1DC512B9C();
        Siri_Nlu_External_NluRouter_QueryDecorationOutput.toSwiftQueryDecorationOutput()(&v135);
        if (v25)
        {
          OUTLINED_FUNCTION_62_0(&a12);
          v99(v96, v119);
          sub_1DC28EB30(v127, &qword_1ECC7C158, &unk_1DC5234A0);
          sub_1DC28EB30(v21, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_19:

LABEL_26:
          OUTLINED_FUNCTION_30_13();
          OUTLINED_FUNCTION_26_0();
          return;
        }

        OUTLINED_FUNCTION_62_0(&a12);
        v101(v96, v119);
        countAndFlagsBits = v135.requestId._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      v102 = sub_1DC512B4C();
      v104 = v103;
      sub_1DC28F3B8(v21, v126, &qword_1ECC7BFD0, &unk_1DC522550);
      v134 = v104;
      if (v125)
      {
        v105 = v125;
      }

      else
      {
        v29 = sub_1DC512BCC();
        v105 = v106;
      }

      v107 = sub_1DC512B2C();
      v109 = v108;
      sub_1DC28F3B8(v127, v120, &qword_1ECC7C158, &unk_1DC5234A0);
      (*(v122 + 16))(v121, v124, v123);
      v135.requestId._countAndFlagsBits = countAndFlagsBits;
      NLRouterServiceRequest.init(currentUserQuery:turnContext:conversationHistory:requestId:trpCandidateId:probingResult:locale:userQueryDecoration:)(v102, v134, v126, a10, v29, v105, v107, v109, v120, v121, &v135, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      sub_1DC28EB30(v127, &qword_1ECC7C158, &unk_1DC5234A0);
      sub_1DC28EB30(v132, &qword_1ECC7BFD0, &unk_1DC522550);
      goto LABEL_26;
    }

    if (v67 >= *(v66 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    (*(v69 + 16))(v22, v66 + v68 + *(v69 + 72) * v67, v62);
    Siri_Nlu_External_NluRouter_RequestSummary.toSwiftRequestSummary()(&v135);
    if (v70)
    {
      v93 = OUTLINED_FUNCTION_129_2();
      v94(v93);

      goto LABEL_19;
    }

    v71 = OUTLINED_FUNCTION_129_2();
    v72(v71);
    v73 = v135.requestId._countAndFlagsBits;
    object = v135.requestId._object;
    v75 = v135.userQuery.value._countAndFlagsBits;
    v76 = v135.userQuery.value._object;
    rawValue = v135.turnSummaries._rawValue;
    userInputType = v135.userInputType;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = *(a10 + 2);
      v84 = OUTLINED_FUNCTION_13_0();
      a10 = sub_1DC3FDEAC(v84, v85, v86, v87);
    }

    v80 = *(a10 + 2);
    v79 = *(a10 + 3);
    if (v80 >= v79 >> 1)
    {
      v88 = OUTLINED_FUNCTION_12_23(v79);
      a10 = sub_1DC3FDEAC(v88, v89, v90, a10);
    }

    v81 = a10;
    *(a10 + 2) = v80 + 1;
    v82 = &v81[48 * v80];
    *(v82 + 4) = v73;
    *(v82 + 5) = object;
    *(v82 + 6) = v75;
    *(v82 + 7) = v76;
    *(v82 + 8) = rawValue;
    v82[72] = userInputType;
    ++v67;
    v25 = 0;
    v29 = v131;
    v21 = v132;
    v66 = v129;
    v62 = v130;
  }

  __break(1u);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Siri_Nlu_External_NluRouter_RequestSummary.toSwiftRequestSummary()(CDMFoundation::RequestSummary *__return_ptr retstr)
{
  OUTLINED_FUNCTION_28_1();
  v46 = v4;
  v47 = v5;
  v40 = v6;
  v7 = type metadata accessor for TurnSummary(0);
  v8 = OUTLINED_FUNCTION_52(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v43 = sub_1DC51262C();
  v11 = OUTLINED_FUNCTION_0(v43);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_2();
  v16 = sub_1DC51268C();
  v17 = 0;
  v44 = *(v16 + 16);
  v42 = (v13 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  v41 = v3;
  while (1)
  {
    if (v44 == v17)
    {

      v35 = sub_1DC51269C();
      v45 = 0;
      sub_1DC432274(0, 0xE000000000000000, v35, v36, v18, &v45, v40);
LABEL_12:
      OUTLINED_FUNCTION_30_13();
      OUTLINED_FUNCTION_26_0();
      return;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v19 = *(v13 + 80);
    OUTLINED_FUNCTION_24();
    (*(v13 + 16))(v2, v16 + v20 + *(v13 + 72) * v17, v43);
    Siri_Nlu_External_NluRouter_TurnSummary.toSwiftTurnSummary()();
    if (v1)
    {
      v37 = *v42;
      v38 = OUTLINED_FUNCTION_30();
      v39(v38);

      goto LABEL_12;
    }

    v21 = *v42;
    v22 = OUTLINED_FUNCTION_30();
    v23(v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v18 + 16);
      v29 = OUTLINED_FUNCTION_13_0();
      v18 = sub_1DC3FDA1C(v29, v30, v31, v18);
    }

    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    if (v25 >= v24 >> 1)
    {
      v32 = OUTLINED_FUNCTION_12_23(v24);
      v18 = sub_1DC3FDA1C(v32, v33, v34, v18);
    }

    *(v18 + 16) = v25 + 1;
    OUTLINED_FUNCTION_22_0();
    sub_1DC3FE514(v41, v18 + v26 + *(v27 + 72) * v25);
    ++v17;
  }

  __break(1u);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.toSwiftNLRouterTurnContext()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_56_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_65();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_1();
  sub_1DC51268C();
  sub_1DC5129FC();
  v13 = sub_1DC512A3C();
  sub_1DC5167EC();
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1DC51190C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_1DC512A1C();
  OUTLINED_FUNCTION_38_2();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_54_2();
  return sub_1DC43243C(v26, v27, v13, v0, v28, 0, v29);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.toSwiftNLRouterTurnProbingResult()()
{
  OUTLINED_FUNCTION_33();
  v44 = v1;
  v43 = sub_1DC51266C();
  v2 = OUTLINED_FUNCTION_0(v43);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18();
  v11 = sub_1DC51270C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v18 = OUTLINED_FUNCTION_10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  if (sub_1DC512FBC())
  {
    sub_1DC512F8C();
    sub_1DC51268C();
    v27 = *(v14 + 8);
    v28 = OUTLINED_FUNCTION_176();
    v29(v28);
    sub_1DC511E5C();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_152();
    sub_1DC437594(v34, v35);
    v36 = type metadata accessor for NLRouterNLParseResponse(0);
    v37 = 0;
  }

  else
  {
    v36 = type metadata accessor for NLRouterNLParseResponse(0);
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v26, v37, 1, v36);
  if (sub_1DC512FAC())
  {
    sub_1DC512F6C();
    sub_1DC51263C();
    (*(v4 + 8))(v0, v43);
    v38 = OUTLINED_FUNCTION_74();
    sub_1DC44667C(v38, v39, v40);
    v41 = v45;
    v42 = v46;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  sub_1DC28F3B8(v26, v23, &qword_1ECC7C160, qword_1DC5233B0);
  v45 = v41;
  v46 = v42;
  sub_1DC438C18(&v45, v44);
  sub_1DC28EB30(v26, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_34();
}

void Siri_Nlu_External_NluRouter_QueryDecorationOutput.toSwiftQueryDecorationOutput()(void *a1@<X8>)
{
  v3 = v2;
  v174 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E0, &qword_1DC529398);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v172 - v8;
  v204 = sub_1DC516C3C();
  v10 = OUTLINED_FUNCTION_0(v204);
  v183 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25();
  v212 = v19;
  OUTLINED_FUNCTION_12();
  v211 = sub_1DC516B8C();
  v20 = OUTLINED_FUNCTION_0(v211);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v25);
  v220 = sub_1DC51296C();
  v26 = OUTLINED_FUNCTION_0(v220);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v210 = v31;
  OUTLINED_FUNCTION_12();
  v201 = sub_1DC51257C();
  v32 = OUTLINED_FUNCTION_0(v201);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25();
  v203 = v44;
  OUTLINED_FUNCTION_12();
  v188 = sub_1DC516C7C();
  v45 = OUTLINED_FUNCTION_0(v188);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v51);
  v182 = sub_1DC51288C();
  v52 = OUTLINED_FUNCTION_0(v182);
  v202 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF0, &qword_1DC5293B0);
  OUTLINED_FUNCTION_10(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v61);
  v192 = sub_1DC5129CC();
  v62 = OUTLINED_FUNCTION_0(v192);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v67);
  v173 = v1;
  v68 = *(sub_1DC512A7C() + 16);
  v189 = v9;
  v200 = v68;
  if (v68)
  {
    v69 = *(v64 + 80);
    OUTLINED_FUNCTION_24();
    v197 = v70 + v71;
    v196 = v64 + 16;
    v195 = v34 + 8;
    v194 = (v64 + 8);
    v207 = (v28 + 8);
    v208 = v28 + 16;
    v206 = v22 + 32;
    v178 = v47;
    v186 = (v47 + 32);
    v72 = MEMORY[0x1E69E7CC0];
    v179 = v39;
    OUTLINED_FUNCTION_157_0();
    v209 = v22;
    v176 = v28;
    v199 = v64;
    v198 = v73;
    while (v74 < *(v73 + 16))
    {
      v75 = *(v64 + 72);
      v205 = v74;
      (*(v64 + 16))(v1, v197 + v75 * v74, v34);
      sub_1DC51297C();
      Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()();
      if (v3)
      {

        v76 = OUTLINED_FUNCTION_123_4();
        v77(v76);
        v78 = *v194;
        v79 = OUTLINED_FUNCTION_91_4();
        v80(v79);
        v3 = 0;
      }

      else
      {
        v193 = v72;
        v81 = OUTLINED_FUNCTION_123_4();
        v82(v81);
        if (*(sub_1DC51268C() + 16))
        {
          v185 = 0;
          v83 = *(v28 + 80);
          OUTLINED_FUNCTION_24();
          v184 = v85;
          v87 = v85 + v86;
          v88 = *(v28 + 72);
          v213 = *(v28 + 16);
          v214 = v88;
          v89 = MEMORY[0x1E69E7CC0];
          v90 = v177;
          do
          {
            v219 = v84;
            v91 = v210;
            v213(v210, v87, v220);
            v92 = sub_1DC51292C();
            v217 = v93;
            v218 = v92;
            sub_1DC5128EC();

            v94 = sub_1DC5128EC();
            v96 = v95;

            v97 = HIBYTE(v96) & 0xF;
            if ((v96 & 0x2000000000000000) == 0)
            {
              v97 = v94;
            }

            v98 = 7;
            if (((v96 >> 60) & ((v94 & 0x800000000000000) == 0)) != 0)
            {
              v98 = 11;
            }

            v216 = v98 | (v97 << 16);
            v215 = sub_1DC5128EC();
            sub_1DC51289C();
            sub_1DC5128BC();
            sub_1DC516BEC();
            OUTLINED_FUNCTION_19();
            __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
            sub_1DC51290C();
            sub_1DC516B5C();
            (*v207)(v91, v220);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v108 = *(v89 + 16);
              v109 = OUTLINED_FUNCTION_13_0();
              v89 = sub_1DC3FDD88(v109, v110, v111, v89);
            }

            v104 = *(v89 + 16);
            v103 = *(v89 + 24);
            v105 = v209;
            if (v104 >= v103 >> 1)
            {
              v112 = OUTLINED_FUNCTION_26(v103);
              v89 = sub_1DC3FDD88(v112, v104 + 1, 1, v89);
            }

            *(v89 + 16) = v104 + 1;
            v106 = *(v105 + 80);
            OUTLINED_FUNCTION_24();
            (*(v105 + 32))(v89 + v107 + *(v105 + 72) * v104, v90, v211);
            v87 += v214;
            v84 = v219 - 1;
          }

          while (v219 != 1);

          v3 = v185;
          v28 = v176;
        }

        else
        {
        }

        v113 = v180;
        sub_1DC516C4C();
        (*v194)(v191, v192);
        v1 = *v186;
        (*v186)(v187, v113, v188);
        v72 = v193;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = *(v72 + 16);
          v118 = OUTLINED_FUNCTION_13_0();
          v72 = sub_1DC3FDC64(v118, v119, v120, v72);
        }

        v9 = v189;
        v34 = *(v72 + 16);
        v114 = *(v72 + 24);
        if (v34 >= v114 >> 1)
        {
          v121 = OUTLINED_FUNCTION_26(v114);
          v72 = sub_1DC3FDC64(v121, v34 + 1, 1, v72);
        }

        *(v72 + 16) = v34 + 1;
        OUTLINED_FUNCTION_22_0();
        v1(v72 + v115 + *(v116 + 72) * v34, v187, v188);
        OUTLINED_FUNCTION_157_0();
      }

      v74 = v205 + 1;
      v64 = v199;
      v73 = v198;
      if (v205 + 1 == v200)
      {
        v193 = v72;

        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {

    v193 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_1DC516DCC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
    v126 = *(sub_1DC512A9C() + 16);
    if (v126)
    {
      v127 = *(v202 + 16);
      v128 = *(v202 + 80);
      OUTLINED_FUNCTION_24();
      v217 = v129;
      v131 = v129 + v130;
      v219 = *(v132 + 56);
      v220 = v133;
      v202 = v132;
      v134 = (v132 - 8);
      v218 = (v183 + 32);
      v135 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_125_0();
      do
      {
        v136 = OUTLINED_FUNCTION_74();
        v137 = v220(v136);
        Siri_Nlu_External_NluRouter_RetrievedContext.toSwiftRetrievedContext()(v137, v138, v139, v140, v141, v142, v143, v144, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
        if (v3)
        {

          v145 = *v134;
          v146 = OUTLINED_FUNCTION_151();
          v147(v146);
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v148, v149, v150, v204);
          sub_1DC28EB30(v9, &qword_1ECC7D6E0, &qword_1DC529398);
          v3 = 0;
        }

        else
        {
          v151 = *v134;
          v152 = OUTLINED_FUNCTION_151();
          v153(v152);
          OUTLINED_FUNCTION_61();
          v154 = v204;
          __swift_storeEnumTagSinglePayload(v155, v156, v157, v204);
          v158 = *v218;
          (*v218)(v190, v9, v154);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = *(v135 + 16);
            v164 = OUTLINED_FUNCTION_13_0();
            v135 = sub_1DC3FDB40(v164, v165, v166, v135);
          }

          v160 = *(v135 + 16);
          v159 = *(v135 + 24);
          if (v160 >= v159 >> 1)
          {
            v167 = OUTLINED_FUNCTION_12_23(v159);
            v135 = sub_1DC3FDB40(v167, v168, v169, v135);
          }

          *(v135 + 16) = v160 + 1;
          OUTLINED_FUNCTION_22_0();
          v158(v135 + v161 + *(v162 + 72) * v160, v190, v204);
          v3 = 0;
          v9 = v189;
          OUTLINED_FUNCTION_125_0();
        }

        v131 += v219;
        --v126;
      }

      while (v126);
    }

    v170 = objc_allocWithZone(sub_1DC516D9C());
    v171 = sub_1DC516D6C();
    sub_1DC43EA3C(v171, v174);
  }
}

void Siri_Nlu_External_NluRouter_RetrievedContext.toSwiftRetrievedContext()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6F0, &qword_1DC5293B8);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6F8, &unk_1DC5293C0);
  OUTLINED_FUNCTION_10(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6B8, &qword_1DC529330);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v36 = sub_1DC51271C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v181 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  v180 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_12();
  v175 = sub_1DC516AFC();
  v43 = OUTLINED_FUNCTION_0(v175);
  v174 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  OUTLINED_FUNCTION_10(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v53);
  v54 = sub_1DC51728C();
  v55 = OUTLINED_FUNCTION_0(v54);
  v176 = v56;
  v177 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  v178 = v59;
  OUTLINED_FUNCTION_12();
  v182 = sub_1DC51279C();
  v60 = OUTLINED_FUNCTION_0(v182);
  v184 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v183 = sub_1DC5127DC();
  v64 = OUTLINED_FUNCTION_0(v183);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v69 = sub_1DC51281C();
  v70 = OUTLINED_FUNCTION_0(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_4_31();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v76 = OUTLINED_FUNCTION_10(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_62();
  v179 = v80;
  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v83 = *(v72 + 8);
  v81 = v72 + 8;
  v82 = v83;
  v84 = OUTLINED_FUNCTION_54_4();
  v83(v84);
  sub_1DC5127AC();
  (*(v66 + 8))(v20, v183);
  LOBYTE(v66) = sub_1DC51277C();
  v171 = *(v184 + 8);
  v171(v21, v182);
  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v85 = OUTLINED_FUNCTION_54_4();
  v83(v85);
  if (v66)
  {
    sub_1DC5127AC();
    v86 = OUTLINED_FUNCTION_109_5();
    v87(v86);
    sub_1DC51275C();
    v171(v21, v182);
    sub_1DC51734C();
    OUTLINED_FUNCTION_83(&a14);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    OUTLINED_FUNCTION_72();
    sub_1DC51722C();
    v92 = *MEMORY[0x1E69DADA8];
    v93 = OUTLINED_FUNCTION_146_4();
    v94(v93);
    v95 = swift_allocBox();
    v97 = OUTLINED_FUNCTION_110_6(v95, v96);
    v98(v97, v178, v177);
    v99 = v179;
    *v179 = v81;
    v100 = *MEMORY[0x1E69DAE70];
    v101 = sub_1DC5172AC();
    OUTLINED_FUNCTION_35(v101);
    v103 = *(v102 + 104);
    OUTLINED_FUNCTION_59_2();
    v104();
    OUTLINED_FUNCTION_61();
    v108 = v101;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
    goto LABEL_7;
  }

  v109 = sub_1DC51274C();
  v110 = OUTLINED_FUNCTION_109_5();
  v111(v110);
  if ((v109 & 1) == 0)
  {
    sub_1DC5172AC();
    v99 = v179;
    OUTLINED_FUNCTION_19();
    goto LABEL_6;
  }

  sub_1DC51282C();
  OUTLINED_FUNCTION_147_3();
  sub_1DC5127EC();
  v112 = OUTLINED_FUNCTION_54_4();
  v82(v112);
  v113 = sub_1DC51272C();
  v114 = OUTLINED_FUNCTION_109_5();
  v115(v114);
  *v178 = v113 & 1;
  (*(v176 + 104))(v178, *MEMORY[0x1E69DADC0], v177);
  v116 = swift_allocBox();
  v118 = OUTLINED_FUNCTION_110_6(v116, v117);
  v119(v118, v178, v177);
  v99 = v179;
  *v179 = v113;
  v120 = *MEMORY[0x1E69DAE70];
  v121 = sub_1DC5172AC();
  OUTLINED_FUNCTION_35(v121);
  v123 = *(v122 + 104);
  OUTLINED_FUNCTION_59_2();
  v124();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v121);
  if ((sub_1DC51286C() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_1DC51284C();
  v128 = *MEMORY[0x1E69D0D68];
  v129 = OUTLINED_FUNCTION_49_13();
  v130(v129);
  OUTLINED_FUNCTION_11_26();
  sub_1DC3FE998(v131, v132);
  OUTLINED_FUNCTION_30_6();
  sub_1DC5179EC();
  OUTLINED_FUNCTION_30_6();
  sub_1DC5179EC();
  OUTLINED_FUNCTION_154_2();
  v133 = OUTLINED_FUNCTION_35_0();
  v180(v133);
  v134 = OUTLINED_FUNCTION_212();
  v180(v134);
  OUTLINED_FUNCTION_105_2();
  if (v135)
  {
    v136 = MEMORY[0x1E69A9008];
  }

  else
  {
    if ((sub_1DC51286C() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_13:
    sub_1DC51284C();
    v137 = *MEMORY[0x1E69D0D70];
    v138 = OUTLINED_FUNCTION_49_13();
    v139(v138);
    OUTLINED_FUNCTION_11_26();
    sub_1DC3FE998(v140, v141);
    OUTLINED_FUNCTION_30_6();
    sub_1DC5179EC();
    OUTLINED_FUNCTION_30_6();
    sub_1DC5179EC();
    OUTLINED_FUNCTION_154_2();
    v142 = OUTLINED_FUNCTION_35_0();
    v180(v142);
    v143 = OUTLINED_FUNCTION_212();
    v180(v143);
    OUTLINED_FUNCTION_105_2();
    if (v135)
    {
      v136 = MEMORY[0x1E69A9050];
    }

    else
    {
LABEL_17:
      if ((sub_1DC51286C() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1DC51284C();
      v144 = *MEMORY[0x1E69D0D78];
      v145 = OUTLINED_FUNCTION_49_13();
      v146(v145);
      OUTLINED_FUNCTION_11_26();
      sub_1DC3FE998(v147, v148);
      OUTLINED_FUNCTION_30_6();
      sub_1DC5179EC();
      OUTLINED_FUNCTION_30_6();
      sub_1DC5179EC();
      v149 = *(v181 + 8);
      v150 = OUTLINED_FUNCTION_35_0();
      v149(v150);
      v151 = OUTLINED_FUNCTION_212();
      v149(v151);
      OUTLINED_FUNCTION_105_2();
      if (!v135)
      {
LABEL_20:
        OUTLINED_FUNCTION_113_5();
        OUTLINED_FUNCTION_33_1();
        OUTLINED_FUNCTION_54_14(v170, 0xD00000000000004ELL);
        sub_1DC28EB30(v99, &qword_1ECC7BFF8, &qword_1DC522580);
        goto LABEL_21;
      }

      v136 = MEMORY[0x1E69A9060];
    }
  }

  (*(v174 + 104))(v173, *v136, v175);
  sub_1DC516CCC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
  sub_1DC28F3B8(v99, v172, &qword_1ECC7BFF8, &qword_1DC522580);
  sub_1DC516AEC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
  v160 = *(v174 + 16);
  v161 = OUTLINED_FUNCTION_54_4();
  v162(v161);
  sub_1DC516BDC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  sub_1DC516BFC();
  v167 = *(v174 + 8);
  v168 = OUTLINED_FUNCTION_121_0();
  v169(v168);
  sub_1DC28EB30(v99, &qword_1ECC7BFF8, &qword_1DC522580);
LABEL_21:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.toSwiftSpanMatchedEntity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v64 = sub_1DC516B8C();
  v5 = OUTLINED_FUNCTION_0(v64);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v66 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC51296C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v65 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v14 = sub_1DC51257C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_129();
  sub_1DC51297C();
  Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()();
  if (v68)
  {
    v24 = *(v17 + 8);
    v25 = OUTLINED_FUNCTION_30();
    v26(v25);
  }

  else
  {
    v63 = v9;
    v69 = v0;
    v27 = v66;
    v28 = *(v17 + 8);
    v29 = OUTLINED_FUNCTION_30();
    v30(v29);
    if (*(sub_1DC51268C() + 16))
    {
      v62 = *(v65 + 16);
      v31 = *(v65 + 80);
      OUTLINED_FUNCTION_24();
      v35 = v33 + v34;
      v60 = (v36 - 8);
      v61 = *(v36 + 56);
      v37 = MEMORY[0x1E69E7CC0];
      v38 = v63;
      v39 = v69;
      do
      {
        v67 = v32;
        v62(v39, v35, v38);
        sub_1DC51292C();
        sub_1DC5128EC();

        sub_1DC5128EC();

        sub_1DC5128EC();
        v40 = v37;
        sub_1DC51289C();
        sub_1DC5128BC();
        sub_1DC516BEC();
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        sub_1DC51290C();
        v39 = v69;
        v38 = v63;
        sub_1DC516B5C();
        v45 = *v60;
        v46 = OUTLINED_FUNCTION_151();
        v47(v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v37 + 16);
          v55 = OUTLINED_FUNCTION_13_0();
          v40 = sub_1DC3FDD88(v55, v56, v57, v37);
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v50 = v40;
        if (v49 >= v48 >> 1)
        {
          v58 = OUTLINED_FUNCTION_26(v48);
          v50 = sub_1DC3FDD88(v58, v49 + 1, 1, v59);
        }

        *(v50 + 16) = v49 + 1;
        v37 = v50;
        OUTLINED_FUNCTION_22_0();
        (*(v53 + 32))(v51 + v52 + *(v53 + 72) * v49, v27, v64);
        v35 += v61;
        v32 = v67 - 1;
      }

      while (v67 != 1);
    }

    OUTLINED_FUNCTION_51();
    sub_1DC516C4C();
  }

  OUTLINED_FUNCTION_141_3();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.toSwiftEntityMatch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D6E8, &unk_1DC5293A0);
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_1();
  sub_1DC51292C();
  sub_1DC5128EC();

  sub_1DC5128EC();

  sub_1DC5128EC();
  sub_1DC51289C();
  sub_1DC5128BC();
  sub_1DC516BEC();
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1DC51290C();
  OUTLINED_FUNCTION_54_2();
  return sub_1DC516B5C();
}

void Siri_Nlu_External_NluRouter_TypedValue.toSwiftTypedValue()()
{
  OUTLINED_FUNCTION_28_1();
  v139 = v2;
  v3 = sub_1DC5172FC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v129 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v118 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC51236C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v126 = v11;
  v128 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v125 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v121 = v16;
  OUTLINED_FUNCTION_12();
  v123 = sub_1DC51239C();
  v17 = OUTLINED_FUNCTION_0(v123);
  v120 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v23 = v22;
  OUTLINED_FUNCTION_12();
  v137 = sub_1DC5123EC();
  v24 = OUTLINED_FUNCTION_0(v137);
  v124 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v122 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  v119 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_38_3();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D710, &qword_1DC5293D8);
  OUTLINED_FUNCTION_10(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC51728C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v132 = v43;
  v133 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v130 = v46;
  OUTLINED_FUNCTION_12();
  v135 = sub_1DC51246C();
  v47 = OUTLINED_FUNCTION_0(v135);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v52 = sub_1DC5124FC();
  v53 = OUTLINED_FUNCTION_0(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_3_2();
  if (sub_1DC51250C())
  {
    sub_1DC51254C();
    sub_1DC51247C();
    v58 = *(v55 + 8);
    v59 = OUTLINED_FUNCTION_113_0();
    v138 = v60;
    v60(v59);
    v61 = sub_1DC51244C();
    v62 = *(v49 + 8);
    v62(v1, v135);
    sub_1DC51254C();
    if (v61)
    {
      sub_1DC51247C();
      v63 = OUTLINED_FUNCTION_113_0();
      v138(v63);
      sub_1DC51242C();
      OUTLINED_FUNCTION_192();
      v62(v1, v135);
      sub_1DC51734C();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
      v68 = v130;
      OUTLINED_FUNCTION_43();
      sub_1DC51722C();
      v69 = MEMORY[0x1E69DADA8];
LABEL_8:
      v89 = *v69;
      v90 = OUTLINED_FUNCTION_146_4();
      v91(v90);
      v92 = swift_allocBox();
      v94 = OUTLINED_FUNCTION_110_6(v92, v93);
      v95(v94, v68, v133);
LABEL_9:
      *v139 = v61;
      v96 = *MEMORY[0x1E69DAE70];
      v82 = sub_1DC5172AC();
      OUTLINED_FUNCTION_35(v82);
      v98 = *(v97 + 104);
      OUTLINED_FUNCTION_59_2();
      v99();
      goto LABEL_10;
    }

    v86 = sub_1DC51241C();
    v87 = OUTLINED_FUNCTION_113_0();
    v138(v87);
    sub_1DC51254C();
    if (v86)
    {
      v61 = sub_1DC5123FC();
      v88 = OUTLINED_FUNCTION_113_0();
      v138(v88);
      v68 = v130;
      *v130 = v61 & 1;
      v69 = MEMORY[0x1E69DADC0];
      goto LABEL_8;
    }

    v104 = sub_1DC5124DC();
    v105 = OUTLINED_FUNCTION_113_0();
    v138(v105);
    if (v104)
    {
      v61 = swift_allocBox();
      v107 = v106;
      v108 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v109 = OUTLINED_FUNCTION_38_2();
      sub_1DC3FD6BC(v109, 0, 2, 0);
      OUTLINED_FUNCTION_38_2();
      sub_1DC51082C();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
      v114 = objc_allocWithZone(MEMORY[0x1E696E940]);
      v117 = MEMORY[0x1E69E7CC0];
      v115 = OUTLINED_FUNCTION_151();
      sub_1DC3FD740(v115, v116, 0, 0, 0, 0, 0, 0, 0, v117, 0);
      sub_1DC51725C();
      (*(v132 + 104))(v107, *MEMORY[0x1E69DADE8], v133);
      goto LABEL_9;
    }

LABEL_13:
    sub_1DC5172AC();
    OUTLINED_FUNCTION_19();
    goto LABEL_14;
  }

  if ((sub_1DC51253C() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1DC5171DC();
  v134 = swift_allocBox();
  v70 = swift_allocObject();
  sub_1DC51251C();
  sub_1DC5123CC();
  v136 = *(v124 + 8);
  v136(v0, v137);
  sub_1DC51238C();
  v131 = *(v120 + 8);
  v131(v23, v123);
  v71 = sub_1DC51232C();
  v73 = v72;
  v127 = *(v126 + 8);
  v127(v121, v128);
  v70[2] = v71;
  v70[3] = v73;
  sub_1DC51251C();
  sub_1DC5123CC();
  v136(v119, v137);
  sub_1DC51238C();
  v74 = OUTLINED_FUNCTION_75();
  (v131)(v74);
  sub_1DC51234C();
  OUTLINED_FUNCTION_192();
  v75 = OUTLINED_FUNCTION_54_2();
  (v127)(v75);
  v70[4] = v120 + 8;
  v70[5] = v125;
  *v118 = v70;
  v76 = *MEMORY[0x1E69DB098];
  (*(v129 + 104))();
  sub_1DC51251C();
  sub_1DC5123AC();
  OUTLINED_FUNCTION_192();
  v136(v122, v137);
  sub_1DC51734C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  sub_1DC5171BC();
  *v139 = v134;
  v81 = *MEMORY[0x1E69DAE28];
  v82 = sub_1DC5172AC();
  OUTLINED_FUNCTION_35(v82);
  v84 = *(v83 + 104);
  OUTLINED_FUNCTION_59_2();
  v85();
LABEL_10:
  OUTLINED_FUNCTION_61();
  v103 = v82;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  OUTLINED_FUNCTION_26_0();
}

void Siri_Nlu_External_NluRouter_TurnSummary.toSwiftTurnSummary()()
{
  OUTLINED_FUNCTION_28_1();
  v79 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v78 = v7;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC512DAC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v76 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v13 = sub_1DC5125EC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v77 = v23;
  OUTLINED_FUNCTION_22();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - v28;
  sub_1DC5125FC();
  v30 = *(v16 + 88);
  v31 = OUTLINED_FUNCTION_30_6();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x1E69D0D40])
  {
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = v29;
    goto LABEL_10;
  }

  if (v33 == *MEMORY[0x1E69D0D38])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v38 = v29;
    v39 = OUTLINED_FUNCTION_98_6();
LABEL_9:
    __swift_storeEnumTagSinglePayload(v39, v40, 4, v41);
    type metadata accessor for TurnSummary.ExecutionSource(0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    goto LABEL_10;
  }

  if (v33 == *MEMORY[0x1E69D0D48])
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v38 = v29;
    v39 = v29;
    v40 = 2;
    goto LABEL_9;
  }

  if (v33 == *MEMORY[0x1E69D0D50])
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    v38 = v29;
    v39 = v29;
    v40 = 3;
    goto LABEL_9;
  }

  if (v33 != *MEMORY[0x1E69D0D30])
  {
    OUTLINED_FUNCTION_76_7();
    sub_1DC3FDFC0();
    v62 = OUTLINED_FUNCTION_33_1();
    *v63 = 0xD000000000000026;
    v63[1] = v0;
    OUTLINED_FUNCTION_35_2(v62, v63);
    v64 = *(v16 + 8);
    v65 = OUTLINED_FUNCTION_30_6();
    v66(v65);
    goto LABEL_11;
  }

  sub_1DC5125CC();
  sub_1DC3F45A0(v27);
  if (v1)
  {
    v59 = *(v76 + 8);
    v60 = OUTLINED_FUNCTION_176();
    v61(v60);
    goto LABEL_11;
  }

  v67 = *(v76 + 8);
  v68 = OUTLINED_FUNCTION_176();
  v69(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  v70 = OUTLINED_FUNCTION_149_3();
  __swift_storeEnumTagSinglePayload(v70, 0, 4, v71);
  type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v38 = v29;
  sub_1DC3FE014(v27, v29);
LABEL_10:
  v46 = sub_1DC5125AC();
  v48 = v47;
  v49 = sub_1DC51258C();
  v51 = v50;
  v52 = sub_1DC51258C();
  v54 = v53;
  sub_1DC28F3B8(v38, v77, &qword_1ECC7BFC8, &unk_1DC524050);
  sub_1DC5157EC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  sub_1DC430668(v46, v48, v49, v51, v52, v54, 2, v79);
  sub_1DC28EB30(v38, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_11:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC3F45A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DC512C1C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  if ((sub_1DC512C4C() & 1) == 0)
  {
    OUTLINED_FUNCTION_76_7();
    sub_1DC3FDFC0();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_111_3();
    v15 = v16 | 1;
    goto LABEL_5;
  }

  sub_1DC512C2C();
  v9 = *(v6 + 88);
  v10 = OUTLINED_FUNCTION_16();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E69D0DE0])
  {
    OUTLINED_FUNCTION_76_7();
    sub_1DC3FDFC0();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_111_3();
LABEL_5:
    *v14 = v15;
    v14[1] = v1;
    return OUTLINED_FUNCTION_35_2(v13, v14);
  }

  if (v12 == *MEMORY[0x1E69D0DC8])
  {
    v18 = MEMORY[0x1E69D0720];
LABEL_14:
    v19 = *v18;
    v20 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35(v20);
    return (*(v21 + 104))(a1, v19);
  }

  if (v12 == *MEMORY[0x1E69D0DD8])
  {
    v18 = MEMORY[0x1E69D0730];
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x1E69D0DC0])
  {
    v18 = MEMORY[0x1E69D0718];
    goto LABEL_14;
  }

  if (v12 == *MEMORY[0x1E69D0DD0])
  {
    v18 = MEMORY[0x1E69D0728];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_76_7();
  sub_1DC3FDFC0();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_111_3();
  *v23 = v22 + 2;
  v23[1] = v1;
  OUTLINED_FUNCTION_35_2(v24, v23);
  v25 = *(v6 + 8);
  v26 = OUTLINED_FUNCTION_16();
  return v27(v26);
}

uint64_t sub_1DC3F47D0()
{
  v3 = v1;
  OUTLINED_FUNCTION_57_0();
  v4 = sub_1DC512CFC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_32_5();
  v10(v2, v3, v4);
  v11 = *(v7 + 88);
  v12 = OUTLINED_FUNCTION_62_2();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x1E69D0DE8])
  {
    sub_1DC515F4C();
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  if (v14 == *MEMORY[0x1E69D0DF0])
  {
    v19 = *MEMORY[0x1E69D0620];
    v20 = sub_1DC515F4C();
    OUTLINED_FUNCTION_35(v20);
    (*(v21 + 104))(v0, v19, v20);
    OUTLINED_FUNCTION_61();
    v18 = v20;
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  sub_1DC515F4C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = *(v7 + 8);
  v28 = OUTLINED_FUNCTION_62_2();
  return v29(v28);
}

void sub_1DC3F497C()
{
  OUTLINED_FUNCTION_33();
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v6 = sub_1DC511A5C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_79();
  v13 = v5(v12);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18();
  v19 = sub_1DC511AAC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_31();
  sub_1DC511A9C();
  v25 = v15[2];
  v26 = OUTLINED_FUNCTION_89();
  v27(v26);
  v28 = v15[11];
  v29 = OUTLINED_FUNCTION_50_0();
  if (v30(v29) == *v40)
  {
    (*(v9 + 104))(v0, *MEMORY[0x1E69D0B90], v6);
    sub_1DC511A7C();
    (*(v22 + 32))(v41, v1, v19);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v19);
  }

  else
  {
    (*(v22 + 8))(v1, v19);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v19);
    v37 = v15[1];
    v38 = OUTLINED_FUNCTION_50_0();
    v39(v38);
  }

  OUTLINED_FUNCTION_34();
}

void NLRouterServiceRequest.toNLUTypesNLRouterServiceRequest()()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v3 = sub_1DC512ACC();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC512FDC();
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v87 = v15;
  v16 = OUTLINED_FUNCTION_12();
  v86 = type metadata accessor for NLRouterTurnProbingResult(v16);
  v17 = OUTLINED_FUNCTION_35(v86);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v82 = v20;
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC512A6C();
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  v83 = v29;
  v30 = OUTLINED_FUNCTION_12();
  v84 = type metadata accessor for NLRouterTurnContext(v30);
  v31 = OUTLINED_FUNCTION_35(v84);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v81 = v34;
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC5126CC();
  v35 = OUTLINED_FUNCTION_0(v89);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  sub_1DC512BEC();
  v85 = type metadata accessor for NLRouterServiceRequest(0);
  v88 = v0;
  v41 = *(v0 + v85[6]);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = (v41 + 40);
    do
    {
      v44 = *v43;
      v45 = v43[3];
      v46 = *(v43 + 32);
      v90[0] = *(v43 - 1);
      v90[1] = v44;
      v91 = *(v43 + 1);
      v92 = v45;
      v93 = v46;
      RequestSummary.toNLUTypesRequestSummary()();
      v47 = v2;
      v48 = sub_1DC512B7C();
      v50 = v49;
      v51 = *v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = *(v51 + 16);
        v58 = OUTLINED_FUNCTION_13_0();
        v51 = sub_1DC3FE3F0(v58, v59, v60, v51);
        *v50 = v51;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        v61 = OUTLINED_FUNCTION_26(v53);
        v51 = sub_1DC3FE3F0(v61, v54 + 1, 1, v51);
        *v50 = v51;
      }

      v43 += 6;
      *(v51 + 16) = v54 + 1;
      OUTLINED_FUNCTION_22_0();
      (*(v56 + 32))(v51 + v55 + *(v56 + 72) * v54, v40, v89);
      v48(v90, 0);
      --v42;
      v2 = v47;
    }

    while (v42);
  }

  v63 = *v88;
  v62 = v88[1];

  OUTLINED_FUNCTION_36();
  sub_1DC512B5C();
  sub_1DC28F3B8(v88 + v85[5], v83, &qword_1ECC7BFD0, &unk_1DC522550);
  v64 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v64, v65, v84);
  if (v66)
  {
    sub_1DC28EB30(v83, &qword_1ECC7BFD0, &unk_1DC522550);
  }

  else
  {
    sub_1DC3FE514(v83, v81);
    sub_1DC512A5C();
    v67 = *v81;

    sub_1DC5126EC();
    v68 = v81[1];

    sub_1DC512A0C();
    v69 = v81[2];

    sub_1DC512A4C();
    v70 = *(v81 + *(v84 + 36));

    sub_1DC512A2C();
    sub_1DC512AEC();
    sub_1DC3FE56C(v81, type metadata accessor for NLRouterTurnContext);
  }

  v71 = (v88 + v85[10]);
  v73 = *v71;
  v72 = v71[1];

  OUTLINED_FUNCTION_36();
  sub_1DC512BDC();
  v74 = (v88 + v85[11]);
  v76 = *v74;
  v75 = v74[1];

  OUTLINED_FUNCTION_36();
  sub_1DC512B3C();
  sub_1DC28F3B8(v88 + v85[8], v87, &qword_1ECC7C158, &unk_1DC5234A0);
  v77 = OUTLINED_FUNCTION_98_6();
  OUTLINED_FUNCTION_39(v77, v78, v86);
  if (v66)
  {
    sub_1DC28EB30(v87, &qword_1ECC7C158, &unk_1DC5234A0);
  }

  else
  {
    sub_1DC3FE514(v87, v82);
    NLRouterTurnProbingResult.toNLUTypesNLRouterTurnProbingResult()();
    OUTLINED_FUNCTION_120_1();
    sub_1DC512B0C();
    sub_1DC3FE56C(v82, type metadata accessor for NLRouterTurnProbingResult);
  }

  v79 = *(v88 + v85[9]);
  if (v79)
  {
    v90[0] = *(v88 + v85[9]);
    v80 = v79;
    NLRouterCurrentUserQueryDecoration.toNLUTypesQueryDecorationOutput()();
    sub_1DC512BAC();
  }

  OUTLINED_FUNCTION_26_0();
}

void RequestSummary.toNLUTypesRequestSummary()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();
  v37 = sub_1DC51262C();
  v3 = OUTLINED_FUNCTION_0(v37);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_2();
  v8 = type metadata accessor for TurnSummary(0);
  v9 = OUTLINED_FUNCTION_52(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v34 = v0[2];
  v35 = v0[3];
  v14 = v0[4];
  sub_1DC5126BC();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v11 + 80);
    OUTLINED_FUNCTION_24();
    v18 = v14 + v17;
    v36 = *(v11 + 72);
    do
    {
      v19 = OUTLINED_FUNCTION_89();
      sub_1DC2DACB8(v19, v20);
      TurnSummary.toNLUTypesTurnSummary()();
      sub_1DC3FE56C(v2, type metadata accessor for TurnSummary);
      v21 = sub_1DC51267C();
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = *(v24 + 16);
        v31 = OUTLINED_FUNCTION_13_0();
        v24 = sub_1DC3FE084(v31, v32, v33, v24);
        *v23 = v24;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1DC3FE084(v26 > 1, v27 + 1, 1, v24);
        *v23 = v24;
      }

      *(v24 + 16) = v27 + 1;
      v28 = *(v5 + 80);
      OUTLINED_FUNCTION_24();
      (*(v5 + 32))(v24 + v29 + *(v5 + 72) * v27, v1, v37);
      v21(&v38, 0);
      v18 += v36;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_56_0();
  sub_1DC5126AC();
  OUTLINED_FUNCTION_34();
}

uint64_t NLRouterTurnContext.toNLUTypesNLRouterTurnContext()()
{
  sub_1DC512A5C();
  v1 = *v0;

  sub_1DC5126EC();
  v2 = v0[1];

  sub_1DC512A0C();
  v3 = v0[2];

  sub_1DC512A4C();
  v4 = *(v0 + *(type metadata accessor for NLRouterTurnContext(0) + 36));

  return sub_1DC512A2C();
}

void NLRouterTurnProbingResult.toNLUTypesNLRouterTurnProbingResult()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_57_0();
  v2 = sub_1DC51266C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v42 = v4;
  v43 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v41 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_136_3();
  v9 = sub_1DC51270C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_28_0();
  sub_1DC512FCC();
  v44 = v0;
  v25 = OUTLINED_FUNCTION_72();
  sub_1DC28F3B8(v25, v26, &qword_1ECC7C160, qword_1DC5233B0);
  v27 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_39(v0, 1, v27);
  if (v28)
  {
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
  }

  else
  {
    v29 = *v0;

    sub_1DC3FE56C(v0, type metadata accessor for NLRouterNLParseResponse);
    sub_1DC5126FC();
    sub_1DC5126EC();
    (*(v12 + 16))(v17, v20, v9);
    sub_1DC512F9C();
    v30 = *(v12 + 8);
    v31 = OUTLINED_FUNCTION_45_0();
    v32(v31);
  }

  v33 = (v44 + *(type metadata accessor for NLRouterTurnProbingResult(0) + 20));
  if (v33[1])
  {
    v34 = *v33;
    v35 = v33[1];

    sub_1DC51265C();
    OUTLINED_FUNCTION_62_2();
    sub_1DC51264C();
    v36 = v42;
    v37 = *(v42 + 16);
    v38 = OUTLINED_FUNCTION_48_0();
    v39 = v43;
    v40(v38);
    OUTLINED_FUNCTION_235_0();
    sub_1DC512F7C();
    (*(v36 + 8))(v1, v39);
  }

  OUTLINED_FUNCTION_34();
}

void NLRouterCurrentUserQueryDecoration.toNLUTypesQueryDecorationOutput()()
{
  OUTLINED_FUNCTION_33();
  v93 = v4;
  v5 = sub_1DC5129CC();
  v105 = OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v104 = sub_1DC516C7C();
  v8 = OUTLINED_FUNCTION_0(v104);
  v92 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v103 = v12;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC51288C();
  v13 = OUTLINED_FUNCTION_0(v101);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v18 = sub_1DC516C3C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_2();
  v24 = *v1;
  v25 = sub_1DC516D8C();
  if (v25)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v90 = v25;
      v91 = v24;
      v28 = *(v21 + 16);
      v27 = v21 + 16;
      v29 = *(v27 + 64);
      OUTLINED_FUNCTION_24();
      v32 = v30 + v31;
      v95 = *(v27 + 56);
      v96 = v33;
      v97 = v27;
      v34 = (v27 - 8);
      v94 = v15 + 32;
      v35 = MEMORY[0x1E69E7CC0];
      v99 = v3;
      do
      {
        v36 = OUTLINED_FUNCTION_42_2();
        v37 = v96(v36);
        RetrievedContext.toNLUTypesRetrievedContext()(v37, v38, v39, v40, v41, v42, v43, v44, v90, v91, v92, v93, v94, v95, v96, v97, v99, v101, v103, v104);
        (*v34)(v2, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v35 + 16);
          v50 = OUTLINED_FUNCTION_13_0();
          v35 = sub_1DC3FE2CC(v50, v51, v52, v35);
        }

        v46 = *(v35 + 16);
        v45 = *(v35 + 24);
        if (v46 >= v45 >> 1)
        {
          v53 = OUTLINED_FUNCTION_12_23(v45);
          v35 = sub_1DC3FE2CC(v53, v54, v55, v35);
        }

        *(v35 + 16) = v46 + 1;
        v47 = *(v15 + 80);
        OUTLINED_FUNCTION_24();
        (*(v15 + 32))(v35 + v48 + *(v15 + 72) * v46, v0, v101);
        v32 += v95;
        --v26;
        v3 = v99;
      }

      while (v26);
    }
  }

  v56 = sub_1DC516D7C();
  if (v56)
  {
    v57 = *(v56 + 16);
    v98 = v56;
    if (v57)
    {
      v58 = *(v92 + 16);
      v59 = *(v92 + 80);
      OUTLINED_FUNCTION_24();
      v62 = v60 + v61;
      v100 = *(v63 + 56);
      v102 = v64;
      v65 = (v63 - 8);
      v66 = MEMORY[0x1E69E7CC0];
      do
      {
        v67 = OUTLINED_FUNCTION_48_0();
        v68 = v102(v67);
        SpanMatchedEntity.toNLUTypesSpanMacthedEntity()(v68, v69, v70, v71, v72, v73, v74, v75, v90, v91, v92, v93, v94, v95, v96, v98, v100, v102, v103, v104);
        v76 = *v65;
        v77 = OUTLINED_FUNCTION_288();
        v78(v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = *(v66 + 16);
          v84 = OUTLINED_FUNCTION_13_0();
          v66 = sub_1DC3FE1A8(v84, v85, v86, v66);
        }

        v80 = *(v66 + 16);
        v79 = *(v66 + 24);
        if (v80 >= v79 >> 1)
        {
          v87 = OUTLINED_FUNCTION_12_23(v79);
          v66 = sub_1DC3FE1A8(v87, v88, v89, v66);
        }

        *(v66 + 16) = v80 + 1;
        OUTLINED_FUNCTION_22_0();
        (*(v82 + 32))(v66 + v81 + *(v82 + 72) * v80, v3);
        v62 += v100;
        --v57;
      }

      while (v57);
    }
  }

  sub_1DC512ABC();
  sub_1DC512AAC();
  sub_1DC512A8C();
  OUTLINED_FUNCTION_34();
}

Swift::Void __swiftcall NLRouterServiceRequest.logToFeatureStore(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_33();
  v49 = v1;
  v50 = v2;
  v3 = OUTLINED_FUNCTION_162_5(*MEMORY[0x1E69E9840]);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_31();
  v7 = sub_1DC512BFC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 arguments];

  sub_1DC517A1C();
  OUTLINED_FUNCTION_118_3("/System/Developer/usr/local/bin/xctest");
  LOBYTE(v13) = OUTLINED_FUNCTION_164_2();

  if (v13)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v14 = sub_1DC296DBC();
    OUTLINED_FUNCTION_161_3();
LABEL_3:

    goto LABEL_9;
  }

  NLRouterServiceRequest.toNLUTypesNLRouterServiceRequest()();
  v15 = v12;
  if (!v12)
  {
    sub_1DC5166DC();
    sub_1DC3FE998(&qword_1ECC7BDB0, MEMORY[0x1E69D0DB8]);
    OUTLINED_FUNCTION_117_0();
    sub_1DC51673C();
    v27 = OUTLINED_FUNCTION_23_22();
    v28(v27);
    v29 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v30 = sub_1DC296DBC();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = OUTLINED_FUNCTION_63();
      v32 = swift_slowAlloc();
      v52 = v32;
      *v31 = 136315138;
      v33 = OUTLINED_FUNCTION_34_0();
      *(v31 + 4) = sub_1DC291244(v33, v34, v35);
      OUTLINED_FUNCTION_159_2(&dword_1DC287000, v36, v37, "logToFeatureStore NLRouterServiceRequest proto json: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v38 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v39 = sub_1DC3FD910(0xD000000000000032, 0x80000001DC545C30);
    v40 = objc_allocWithZone(MEMORY[0x1E699C0D0]);

    v41 = OUTLINED_FUNCTION_34_0();
    v14 = sub_1DC3FD974(v41, v42, v49, v50, 0);
    if (!v39)
    {
      v46 = OUTLINED_FUNCTION_25_15();
      v47(v46);
      goto LABEL_3;
    }

    v52 = 0;
    if ([v39 insert:v14 error:&v52])
    {
      v43 = *(v51 + 8);
      v44 = v52;
      v45 = OUTLINED_FUNCTION_30_6();
      v43(v45);

      goto LABEL_9;
    }

    v48 = v52;
    v15 = sub_1DC51085C();

    swift_willThrow();
    v16 = OUTLINED_FUNCTION_25_15();
    v17(v16);
  }

  v18 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v19 = sub_1DC296DBC();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = OUTLINED_FUNCTION_63();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v15;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    OUTLINED_FUNCTION_36_4(&dword_1DC287000, v24, v25, "Error logging NLRouterServiceRequest to FeatureStore: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

LABEL_9:
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_34();
}

void RetrievedContext.toNLUTypesRetrievedContext()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v220 = sub_1DC51271C();
  v28 = OUTLINED_FUNCTION_0(v220);
  v218 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v219 = v32;
  OUTLINED_FUNCTION_12();
  v221 = sub_1DC516AFC();
  v33 = OUTLINED_FUNCTION_0(v221);
  v216 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v215 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  v223 = v39;
  OUTLINED_FUNCTION_12();
  v202 = sub_1DC51279C();
  v40 = OUTLINED_FUNCTION_0(v202);
  v199 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v45);
  v212 = sub_1DC5127DC();
  v46 = OUTLINED_FUNCTION_0(v212);
  v209 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  v204 = v50;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_62();
  v205 = v52;
  OUTLINED_FUNCTION_12();
  v53 = sub_1DC51281C();
  v54 = OUTLINED_FUNCTION_0(v53);
  v207 = v55;
  v208 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_62();
  v203 = v59;
  OUTLINED_FUNCTION_12();
  v201 = sub_1DC51724C();
  v60 = OUTLINED_FUNCTION_0(v201);
  v200 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v64);
  v214 = sub_1DC51728C();
  v65 = OUTLINED_FUNCTION_0(v214);
  v211 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23_1();
  v206 = v70;
  OUTLINED_FUNCTION_22();
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = v196 - v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_62();
  v210 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v77 = OUTLINED_FUNCTION_10(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_8();
  v82 = v80 - v81;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_38_3();
  v84 = sub_1DC5172AC();
  v85 = OUTLINED_FUNCTION_0(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_8();
  v92 = (v90 - v91);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_23_1();
  v213 = v94;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v96);
  v98 = v196 - v97;
  v222 = v27;
  sub_1DC51287C();
  v217 = v25;
  sub_1DC516C1C();
  v99 = OUTLINED_FUNCTION_68_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, v100, v84);
  v102 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload == 1)
  {
    v74 = v87;
    sub_1DC28EB30(v21, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_135_2();
    v103(v98, v21, v84);
    (*(v87 + 2))(v22, v98, v84);
    v104 = *(v87 + 11);
    v105 = OUTLINED_FUNCTION_149();
    v107 = v106(v105);
    v108 = v221;
    if (v107 != *v102)
    {
      v74 = v87;
      v140 = *(v87 + 1);
      v140(v98, v84);
      v141 = OUTLINED_FUNCTION_149();
      (v140)(v141);
      goto LABEL_10;
    }

    v197 = v92;
    v109 = *(v87 + 12);
    v110 = OUTLINED_FUNCTION_149();
    v111(v110);
    v112 = *v22;
    v113 = swift_projectBox();
    v196[1] = v87;
    v114 = v211;
    v115 = *(v211 + 16);
    v116 = v214;
    v115(v210, v113, v214);

    v117 = OUTLINED_FUNCTION_75();
    v118 = v114;
    (v115)(v117);
    v119 = *(v114 + 88);
    v120 = OUTLINED_FUNCTION_45_0();
    if (v121(v120) == *MEMORY[0x1E69DADA8])
    {
      v122 = OUTLINED_FUNCTION_47_11(v114);
      v123(v122);
      v124 = *(v200 + 32);
      OUTLINED_FUNCTION_155_4();
      v125();
      v126 = v203;
      sub_1DC51280C();
      v74 = v205;
      sub_1DC5127CC();
      v127 = v198;
      sub_1DC51278C();
      sub_1DC51723C();
      sub_1DC51276C();
      v128 = v199;
      v129 = *(v199 + 16);
      v130 = OUTLINED_FUNCTION_71_7();
      v131(v130, v127, v202);
      sub_1DC5127BC();
      (*(v209 + 16))(v204, v74, v212);
      sub_1DC5127FC();
      v132 = v208;
      v133 = *(v207 + 16);
      v134 = OUTLINED_FUNCTION_4_26();
      v135(v134, v126, v132);
      sub_1DC51283C();
      (*(v128 + 8))(v127, v202);
      (*(v209 + 8))(v74, v212);
      (*(v207 + 8))(v126, v132);
      OUTLINED_FUNCTION_62_0(&a14);
      v136 = OUTLINED_FUNCTION_155_4();
      v137(v136, v201);
      (*(v118 + 8))(v210, v214);
      v138 = OUTLINED_FUNCTION_102_5();
      v139(v138);
    }

    else
    {
      v142 = *(v114 + 8);
      v142(v210, v116);
      v143 = OUTLINED_FUNCTION_102_5();
      v144(v143);
      v142(v74, v116);
    }

    v92 = v197;
  }

  v108 = v221;
LABEL_10:
  sub_1DC516C1C();
  OUTLINED_FUNCTION_39(v82, 1, v84);
  if (v145)
  {
    sub_1DC28EB30(v82, &qword_1ECC7BFF8, &qword_1DC522580);
LABEL_17:
    v176 = v215;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_96_3();
  v146 = v213;
  v147 = OUTLINED_FUNCTION_48_0();
  v148(v147);
  OUTLINED_FUNCTION_90();
  v149(v92, v146, v84);
  OUTLINED_FUNCTION_94_4();
  v150 = OUTLINED_FUNCTION_91_4();
  if (v151(v150) != *MEMORY[0x1E69DAE70])
  {
    v173 = *(v74 + 1);
    v174 = OUTLINED_FUNCTION_74();
    v173(v174);
    v175 = OUTLINED_FUNCTION_91_4();
    v173(v175);
    goto LABEL_17;
  }

  v152 = *(v74 + 12);
  v153 = OUTLINED_FUNCTION_91_4();
  v154(v153);
  v155 = *v92;
  v156 = swift_projectBox();
  v157 = v211;
  v158 = *(v211 + 16);
  v159 = v206;
  v160 = v214;
  v158(v206, v156, v214);

  v161 = OUTLINED_FUNCTION_83(&a17);
  v158(v161, v159, v160);
  if ((*(v157 + 88))(v155, v160) == *MEMORY[0x1E69DADC0])
  {
    (*(v157 + 96))(v155, v160);
    v162 = *v155;
    v163 = v203;
    sub_1DC51280C();
    v164 = v205;
    sub_1DC5127CC();
    sub_1DC51273C();
    v165 = v209;
    v166 = *(v209 + 16);
    v167 = OUTLINED_FUNCTION_48_0();
    v168(v167);
    OUTLINED_FUNCTION_235_0();
    sub_1DC5127FC();
    v169 = v207;
    v170 = *(v207 + 16);
    v171 = OUTLINED_FUNCTION_44_12();
    v172(v171);
    sub_1DC51283C();
    (*(v165 + 8))(v164, v212);
    (*(v169 + 8))(v163, v208);
    (*(v157 + 8))(v206, v214);
    (*(v74 + 1))(v213, v84);
    goto LABEL_17;
  }

  v194 = *(v157 + 8);
  v194(v159, v160);
  (*(v74 + 1))(v213, v84);
  v195 = OUTLINED_FUNCTION_48_0();
  (v194)(v195);
  v176 = v215;
LABEL_18:
  sub_1DC516C2C();
  v177 = v216;
  v178 = *(v216 + 104);
  v178(v176, *MEMORY[0x1E69A9008], v108);
  OUTLINED_FUNCTION_288();
  v179 = sub_1DC2DA444();
  v180 = *(v177 + 8);
  v181 = OUTLINED_FUNCTION_51();
  v180(v181);
  v182 = OUTLINED_FUNCTION_152();
  v180(v182);
  if (v179)
  {
    v183 = MEMORY[0x1E69D0D68];
LABEL_22:
    v188 = *v183;
    v189 = OUTLINED_FUNCTION_127_3();
    v190(v189);
    goto LABEL_28;
  }

  sub_1DC516C2C();
  v184 = v223;
  v178(v176, *MEMORY[0x1E69A9050], v108);
  OUTLINED_FUNCTION_288();
  v185 = sub_1DC2DA444();
  v186 = OUTLINED_FUNCTION_51();
  v180(v186);
  v187 = OUTLINED_FUNCTION_152();
  v180(v187);
  if (v185)
  {
    v183 = MEMORY[0x1E69D0D70];
    goto LABEL_22;
  }

  sub_1DC516C2C();
  v178(v176, *MEMORY[0x1E69A9060], v108);
  v191 = sub_1DC2DA444();
  v192 = OUTLINED_FUNCTION_51();
  v180(v192);
  (v180)(v184, v108);
  if (v191)
  {
    v193 = MEMORY[0x1E69D0D78];
  }

  else
  {
    v193 = MEMORY[0x1E69D0D80];
  }

  (*(v218 + 104))(v219, *v193, v220);
LABEL_28:
  OUTLINED_FUNCTION_120_1();
  sub_1DC51285C();
  OUTLINED_FUNCTION_34();
}

uint64_t EntityMatch.toNLUTypesEntityMatch()()
{
  sub_1DC51295C();
  sub_1DC516B4C();
  sub_1DC5128FC();
  sub_1DC516B1C();
  sub_1DC5128CC();
  sub_1DC516B0C();
  sub_1DC5128AC();
  sub_1DC516B3C();
  sub_1DC51291C();
  sub_1DC516B6C();
  sub_1DC51293C();
  sub_1DC516B2C();
  sub_1DC5128DC();
  sub_1DC516B7C();
  return sub_1DC51294C();
}

void SpanMatchedEntity.toNLUTypesSpanMacthedEntity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v335 = sub_1DC5123EC();
  v27 = OUTLINED_FUNCTION_0(v335);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v31);
  v353 = sub_1DC5172FC();
  v32 = OUTLINED_FUNCTION_0(v353);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v38);
  v39 = sub_1DC5171DC();
  v40 = OUTLINED_FUNCTION_0(v39);
  v360 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v45);
  v346 = sub_1DC5124BC();
  v46 = OUTLINED_FUNCTION_0(v346);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v50);
  v345 = sub_1DC51727C();
  v51 = OUTLINED_FUNCTION_0(v345);
  v344 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v55);
  v339 = sub_1DC51246C();
  v56 = OUTLINED_FUNCTION_0(v339);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v60);
  v358[0] = sub_1DC5124FC();
  v61 = OUTLINED_FUNCTION_0(v358[0]);
  v350 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v67);
  v359 = sub_1DC51257C();
  v68 = OUTLINED_FUNCTION_0(v359);
  v358[1] = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v74);
  v338 = sub_1DC51724C();
  v75 = OUTLINED_FUNCTION_0(v338);
  v337 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v79);
  v80 = sub_1DC51728C();
  v81 = OUTLINED_FUNCTION_0(v80);
  v368 = v82;
  v369 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v90);
  v378 = sub_1DC51296C();
  v91 = OUTLINED_FUNCTION_0(v378);
  v93 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v97 = OUTLINED_FUNCTION_10(v96);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_23_1();
  v370 = v101;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v104);
  v105 = sub_1DC5172AC();
  v106 = OUTLINED_FUNCTION_0(v105);
  v108 = v107;
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_23_1();
  v373 = v114;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_23_1();
  v372 = v117;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v120);
  v377 = sub_1DC516B8C();
  v121 = OUTLINED_FUNCTION_0(v377);
  v123 = v122;
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_3_2();
  v371[1] = v26;
  sub_1DC5129BC();
  v371[0] = v20;
  v126 = *(sub_1DC516C6C() + 16);
  v354 = v39;
  v351 = v34;
  if (v126)
  {
    v362 = v108;
    v363 = v105;
    v128 = *(v123 + 16);
    v127 = v123 + 16;
    v376 = v128;
    v129 = *(v127 + 64);
    OUTLINED_FUNCTION_24();
    v132 = v130 + v131;
    v133 = *(v127 + 56);
    v374 = v93 + 32;
    v375 = v133;
    v134 = MEMORY[0x1E69E7CC0];
    do
    {
      v135 = OUTLINED_FUNCTION_42_2();
      v376(v135);
      sub_1DC51295C();
      sub_1DC516B4C();
      sub_1DC5128FC();
      sub_1DC516B1C();
      sub_1DC5128CC();
      sub_1DC516B0C();
      sub_1DC5128AC();
      sub_1DC516B3C();
      sub_1DC51291C();
      sub_1DC516B6C();
      sub_1DC51293C();
      sub_1DC516B2C();
      sub_1DC5128DC();
      sub_1DC516B7C();
      sub_1DC51294C();
      (*(v127 - 8))(v21, v377);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = *(v134 + 16);
        v141 = OUTLINED_FUNCTION_13_0();
        v134 = sub_1DC3FE5C4(v141, v142, v143, v134);
      }

      v137 = *(v134 + 16);
      v136 = *(v134 + 24);
      if (v137 >= v136 >> 1)
      {
        v144 = OUTLINED_FUNCTION_12_23(v136);
        v134 = sub_1DC3FE5C4(v144, v145, v146, v134);
      }

      *(v134 + 16) = v137 + 1;
      v138 = *(v93 + 80);
      OUTLINED_FUNCTION_24();
      (*(v93 + 32))(v134 + v139 + *(v93 + 72) * v137, v22, v378);
      v132 += v375;
      --v126;
    }

    while (v126);

    v105 = v363;
    v108 = v362;
  }

  else
  {
  }

  sub_1DC5126EC();
  v147 = v371[0];
  sub_1DC516C5C();
  v148 = OUTLINED_FUNCTION_98_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v148, v149, v105);
  v151 = MEMORY[0x1E69DAE70];
  v152 = v368;
  v153 = v372;
  v154 = v373;
  v155 = v370;
  v156 = v367;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v365[1], &qword_1ECC7BFF8, &qword_1DC522580);
    v157 = v369;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_96_3();
  v158 = OUTLINED_FUNCTION_121_0();
  v159(v158);
  OUTLINED_FUNCTION_90();
  v160 = OUTLINED_FUNCTION_71_7();
  v161(v160, v364, v105);
  OUTLINED_FUNCTION_94_4();
  v157 = v369;
  if (v162(v372, v105) == *v151)
  {
    OUTLINED_FUNCTION_133_3();
    v163(v372, v105);
    v164 = *v372;
    v165 = swift_projectBox();
    v166 = (v368 + 16);
    v167 = *(v368 + 16);
    (v167)(v367, v165, v369);

    v168 = OUTLINED_FUNCTION_83(&v360);
    (v167)(v168, v156, v157);
    v169 = OUTLINED_FUNCTION_48_9();
    if (v170(v169) == *MEMORY[0x1E69DADA8])
    {
      v171 = OUTLINED_FUNCTION_47_11(v152);
      v172(v171);
      (*(v337 + 32))();
      OUTLINED_FUNCTION_213(&a10);
      sub_1DC51256C();
      sub_1DC5124EC();
      sub_1DC51245C();
      sub_1DC51723C();
      sub_1DC51243C();
      OUTLINED_FUNCTION_107_5(&v353);
      v173 = OUTLINED_FUNCTION_71_7();
      v174(v173, v332, v339);
      sub_1DC51248C();
      v175 = *(v350 + 16);
      v176 = OUTLINED_FUNCTION_46_9();
      v156 = *(v177 - 256);
      v178(v176);
      sub_1DC51255C();
      OUTLINED_FUNCTION_43_14(v382);
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_108_2();
      v179();
      OUTLINED_FUNCTION_165_3();
      (*(v147 + 8))(v332, v339);
      v152 = v368;
      v157 = v369;
      (*(v350 + 8))(v349, v156);
      v154 = v373;
      v147 = v371[0];
      (*(v167 + 8))(v361, v167);
      OUTLINED_FUNCTION_62_0(&v362);
      v180(v336, v338);
      (*(v152 + 8))(v367, v157);
      OUTLINED_FUNCTION_95_4();
      v181 = OUTLINED_FUNCTION_155_4();
      v182(v181, v105);
      v155 = v370;
      v153 = v372;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_154_2();
    v166(v156, v157);
    OUTLINED_FUNCTION_95_4();
    v186 = OUTLINED_FUNCTION_155_4();
    v187(v186, v105);
    v188 = OUTLINED_FUNCTION_142_0();
    (v166)(v188);
    v155 = v370;
  }

  else
  {
    v156 = v372;
    v183 = *(v108 + 8);
    v184 = OUTLINED_FUNCTION_51();
    v183(v184);
    v185 = OUTLINED_FUNCTION_74_8();
    v183(v185);
  }

  v153 = v372;
  v154 = v373;
LABEL_18:
  OUTLINED_FUNCTION_58_4(&a16);
  sub_1DC516C5C();
  OUTLINED_FUNCTION_39(v156, 1, v105);
  if (v189)
  {
    sub_1DC28EB30(v156, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v190(v153, v156, v105);
    OUTLINED_FUNCTION_90();
    v191 = v355[1];
    v192 = OUTLINED_FUNCTION_36();
    v193(v192);
    OUTLINED_FUNCTION_94_4();
    v194 = OUTLINED_FUNCTION_74_8();
    v196 = v195(v194);
    if (v196 == *MEMORY[0x1E69DAE70])
    {
      OUTLINED_FUNCTION_133_3();
      v197 = OUTLINED_FUNCTION_74_8();
      v198(v197);
      v199 = *v191;
      v200 = swift_projectBox();
      v201 = (v152 + 16);
      v202 = *(v152 + 16);
      (v202)(v340, v200, v157);

      v203 = OUTLINED_FUNCTION_83(v365);
      (v202)(v203, v340, v157);
      v204 = OUTLINED_FUNCTION_48_9();
      if (v205(v204) == *MEMORY[0x1E69DADC0])
      {
        v206 = OUTLINED_FUNCTION_47_11(v152);
        v207(v206);
        v208 = *v199;
        v209 = v361;
        sub_1DC51256C();
        sub_1DC5124EC();
        sub_1DC51240C();
        OUTLINED_FUNCTION_58_4(&v376);
        v211 = *(v210 + 16);
        v212 = OUTLINED_FUNCTION_46_9();
        v214 = *(v213 - 256);
        v215(v212);
        sub_1DC51255C();
        OUTLINED_FUNCTION_43_14(v382);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_108_2();
        v216();
        OUTLINED_FUNCTION_165_3();
        v217 = v191[1];
        v218 = OUTLINED_FUNCTION_113_0();
        v152 = v368;
        v157 = v369;
        v219(v218);
        v220 = v209;
        v154 = v373;
        (*(v202 + 8))(v220, v208);
        v221 = *(v152 + 8);
        v222 = OUTLINED_FUNCTION_54_2();
        v223(v222);
        OUTLINED_FUNCTION_95_4();
        v224(v372, v105);
      }

      else
      {
        OUTLINED_FUNCTION_154_2();
        v227 = OUTLINED_FUNCTION_54_2();
        v201(v227);
        OUTLINED_FUNCTION_95_4();
        v228(v372, v105);
        v229 = OUTLINED_FUNCTION_142_0();
        v201(v229);
      }

      v155 = v370;
      v147 = v371[0];
    }

    else
    {
      v225 = *(v108 + 8);
      (v225)(v153, v105);
      v226 = OUTLINED_FUNCTION_74_8();
      v225(v226);
    }
  }

  sub_1DC516C5C();
  v230 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v230, v231, v105);
  if (v189)
  {
    sub_1DC28EB30(v155, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v232 = OUTLINED_FUNCTION_91_4();
    v233(v232);
    OUTLINED_FUNCTION_90();
    v234 = v356;
    v235(v356, v154, v105);
    OUTLINED_FUNCTION_94_4();
    v236 = OUTLINED_FUNCTION_11_24();
    v238 = v237(v236);
    if (v238 == *MEMORY[0x1E69DAE70])
    {
      OUTLINED_FUNCTION_133_3();
      v239 = OUTLINED_FUNCTION_11_24();
      v240(v239);
      v241 = *v234;
      v242 = swift_projectBox();
      v243 = *(v152 + 16);
      v243(v348, v242, v157);

      v244 = OUTLINED_FUNCTION_83(&v366);
      v243(v244, v348, v157);
      v245 = OUTLINED_FUNCTION_48_9();
      if (v246(v245) == *MEMORY[0x1E69DADE8])
      {
        v247 = OUTLINED_FUNCTION_47_11(v152);
        v248(v247);
        v249 = *(v344 + 32);
        v250 = OUTLINED_FUNCTION_36();
        v251(v250);
        sub_1DC51256C();
        sub_1DC5124EC();
        sub_1DC5124AC();
        sub_1DC3FE998(&qword_1ECC7D718, MEMORY[0x1E69DAD38]);
        sub_1DC3FE998(&qword_1ECC7D720, MEMORY[0x1E69DAC28]);
        sub_1DC5164CC();
        sub_1DC51249C();
        OUTLINED_FUNCTION_107_5(v355);
        v252 = OUTLINED_FUNCTION_71_7();
        v253(v252, v343, v346);
        sub_1DC5124CC();
        OUTLINED_FUNCTION_43_14(&v376);
        v254 = OUTLINED_FUNCTION_46_9();
        v256 = *(v255 - 256);
        v257(v254);
        sub_1DC51255C();
        OUTLINED_FUNCTION_58_4(v382);
        v259 = *(v258 + 16);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_108_2();
        v260();
        OUTLINED_FUNCTION_165_3();
        (*(v147 + 8))(v343, v346);
        (*(v348 + 8))(v341, v358[0]);
        v261 = OUTLINED_FUNCTION_119();
        v262(v261);
        OUTLINED_FUNCTION_62_0(v371);
        v263(v342, v345);
        (*(v368 + 8))(v348, v369);
        OUTLINED_FUNCTION_95_4();
        v264(v373, v105);
      }

      else
      {
        v268 = *(v152 + 8);
        v269 = OUTLINED_FUNCTION_142_0();
        v268(v269);
        OUTLINED_FUNCTION_95_4();
        v270 = OUTLINED_FUNCTION_51();
        v271(v270);
        v272 = OUTLINED_FUNCTION_12_3();
        v268(v272);
      }
    }

    else
    {
      v265 = *(v108 + 8);
      v266 = OUTLINED_FUNCTION_51();
      v265(v266);
      v267 = OUTLINED_FUNCTION_11_24();
      v265(v267);
    }
  }

  v273 = v366;
  sub_1DC516C5C();
  v274 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v274, v275, v105);
  if (v189)
  {
    sub_1DC28EB30(v273, &qword_1ECC7BFF8, &qword_1DC522580);
  }

  else
  {
    OUTLINED_FUNCTION_96_3();
    v276 = OUTLINED_FUNCTION_44_12();
    v277(v276);
    OUTLINED_FUNCTION_90();
    v278 = v357;
    v279 = OUTLINED_FUNCTION_62_2();
    v280(v279);
    OUTLINED_FUNCTION_94_4();
    v281 = OUTLINED_FUNCTION_74_8();
    v283 = v282(v281);
    if (v283 == *MEMORY[0x1E69DAE28])
    {
      OUTLINED_FUNCTION_133_3();
      v284 = OUTLINED_FUNCTION_74_8();
      v285(v284);
      v286 = *v278;
      v287 = swift_projectBox();
      v288 = *(v360 + 16);
      v289 = v354;
      v288(v347, v287, v354);

      OUTLINED_FUNCTION_58_4(&v379);
      sub_1DC5171CC();
      if ((*(v351 + 88))(v278, v353) == *MEMORY[0x1E69DB098])
      {
        v290 = *(v351 + 96);
        v291 = OUTLINED_FUNCTION_36();
        v292(v291);
        OUTLINED_FUNCTION_156_2();
        v293 = *v278;
        v294 = *(*v278 + 24);
        v377 = *(*v278 + 16);
        v378 = v293;
        v295 = *(v293 + 4);
        v296 = *(v293 + 5);

        v297 = v361;
        sub_1DC51256C();
        sub_1DC5123DC();
        v298 = sub_1DC5123BC();
        v299 = sub_1DC51237C();
        OUTLINED_FUNCTION_42_2();
        sub_1DC51235C();
        v299(v380, 0);
        v298(v381, 0);
        v300 = sub_1DC5123BC();
        v301 = sub_1DC51237C();
        sub_1DC51233C();
        (v301)(v380, 0);
        v300(v381, 0);
        OUTLINED_FUNCTION_43_14(v358);
        v302 = OUTLINED_FUNCTION_44_12();
        v303(v302);
        sub_1DC51252C();
        OUTLINED_FUNCTION_107_5(v382);
        v304 = OUTLINED_FUNCTION_4_26();
        v305(v304, v297, v359);
        OUTLINED_FUNCTION_165_3();
        (*(v294 + 8))(v334, v335);
        v306 = *(v301 + 8);
        v307 = OUTLINED_FUNCTION_174();
        v308(v307);
        OUTLINED_FUNCTION_62_0(&a9);
        v309(v347, v354);
        OUTLINED_FUNCTION_62_0(&a11);
        v310 = OUTLINED_FUNCTION_138_2();
        v311(v310);
      }

      else
      {
        v315 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v316 = sub_1DC296DBC();
        v317 = OUTLINED_FUNCTION_288();
        (v288)(v317);
        if (os_log_type_enabled(v316, v315))
        {
          v318 = OUTLINED_FUNCTION_63();
          v319 = swift_slowAlloc();
          v381[0] = v319;
          *v318 = 136315138;
          OUTLINED_FUNCTION_156_2();
          LODWORD(v377) = v315;
          sub_1DC5171CC();
          v376 = sub_1DC5172CC();
          v321 = v320;
          v378 = *(v351 + 8);
          v322 = v353;
          v378(v331, v353);
          v323 = *(v360 + 8);
          v323(v333, v289);
          v324 = v323;
          v325 = sub_1DC291244(v376, v321, v381);

          *(v318 + 4) = v325;
          _os_log_impl(&dword_1DC287000, v316, v377, "Non-supported type identifier: %s", v318, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v319);
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_66();

          v324(v347, v289);
          OUTLINED_FUNCTION_62_0(&a11);
          v326 = OUTLINED_FUNCTION_138_2();
          v327(v326);
          v378(v352, v322);
        }

        else
        {

          v328 = *(v360 + 8);
          v329 = OUTLINED_FUNCTION_151();
          v328(v329);
          v330 = OUTLINED_FUNCTION_34_0();
          v328(v330);
          (*(v108 + 8))(v365[0], v105);
          (*(v351 + 8))(v352, v353);
        }
      }
    }

    else
    {
      v312 = *(v108 + 8);
      v313 = OUTLINED_FUNCTION_152();
      v312(v313);
      v314 = OUTLINED_FUNCTION_74_8();
      v312(v314);
    }
  }

  OUTLINED_FUNCTION_34();
}

void TurnSummary.toNLUTypesTurnSummary()()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  OUTLINED_FUNCTION_57_0();
  v3 = sub_1DC512C1C();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v51 = sub_1DC5161CC();
  v7 = OUTLINED_FUNCTION_0(v51);
  v50 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5125EC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_40_3();
  v52 = sub_1DC512DAC();
  v21 = OUTLINED_FUNCTION_0(v52);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_3();
  sub_1DC51261C();
  sub_1DC512D9C();
  v27 = type metadata accessor for TurnSummary(0);
  sub_1DC28F3B8(v0 + *(v27 + 28), v1, &qword_1ECC7BFC8, &unk_1DC524050);
  type metadata accessor for TurnSummary.ExecutionSource(0);
  v28 = OUTLINED_FUNCTION_98_6();
  OUTLINED_FUNCTION_39(v28, v29, v30);
  if (v31)
  {
    v32 = MEMORY[0x1E69D0D40];
LABEL_9:
    (*(v14 + 104))(v0, *v32, v11);
    OUTLINED_FUNCTION_235_0();
    sub_1DC51260C();
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 4, v33);
    switch(EnumTagSinglePayload)
    {
      case 1:
      case 4:
        v32 = MEMORY[0x1E69D0D38];
        goto LABEL_9;
      case 2:
        v32 = MEMORY[0x1E69D0D48];
        goto LABEL_9;
      case 3:
        v32 = MEMORY[0x1E69D0D50];
        goto LABEL_9;
      default:
        v35 = *(v50 + 32);
        v36 = OUTLINED_FUNCTION_121_0();
        v37(v36);
        (*(v14 + 104))(v0, *MEMORY[0x1E69D0D30], v11);
        OUTLINED_FUNCTION_235_0();
        sub_1DC51260C();
        sub_1DC3F8B6C();
        sub_1DC512C3C();
        v38 = *(v50 + 8);
        v39 = OUTLINED_FUNCTION_121_0();
        v40(v39);
        break;
    }
  }

  if (v0[1])
  {
    v41 = *v0;
    v42 = v2[1];
  }

  OUTLINED_FUNCTION_12_3();
  sub_1DC5125BC();
  if (v2[3])
  {
    v43 = v2[2];
    v44 = v2[3];
  }

  OUTLINED_FUNCTION_56_0();
  sub_1DC51259C();
  OUTLINED_FUNCTION_82_2();
  v45 = OUTLINED_FUNCTION_151();
  v46(v45);
  OUTLINED_FUNCTION_235_0();
  sub_1DC5125DC();
  v47 = *(v23 + 8);
  v48 = OUTLINED_FUNCTION_77_1();
  v49(v48);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3F8B6C()
{
  v3 = v1;
  OUTLINED_FUNCTION_57_0();
  v4 = sub_1DC5161CC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  sub_1DC512C0C();
  OUTLINED_FUNCTION_32_5();
  v10(v2, v3, v4);
  v11 = *(v7 + 88);
  v12 = OUTLINED_FUNCTION_72();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x1E69D0720])
  {
    v15 = MEMORY[0x1E69D0DC8];
LABEL_9:
    v16 = sub_1DC512C1C();
    OUTLINED_FUNCTION_0(v16);
    v18 = v17;
    v20 = *(v19 + 8);
    v21 = OUTLINED_FUNCTION_43();
    v22(v21);
    return (*(v18 + 104))(v0, *v15, v16);
  }

  if (v14 == *MEMORY[0x1E69D0730])
  {
    v15 = MEMORY[0x1E69D0DD8];
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69D0718])
  {
    v15 = MEMORY[0x1E69D0DC0];
    goto LABEL_9;
  }

  if (v14 == *MEMORY[0x1E69D0728])
  {
    v15 = MEMORY[0x1E69D0DD0];
    goto LABEL_9;
  }

  result = sub_1DC51824C();
  __break(1u);
  return result;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.toSwiftNLRouterResponse()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_1();
  a22 = v25;
  a23 = v26;
  v109 = v27;
  v110 = sub_1DC512E7C();
  v28 = OUTLINED_FUNCTION_0(v110);
  v112 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v111 = v32;
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC512DBC();
  v34 = OUTLINED_FUNCTION_0(v33);
  v113 = v35;
  v114 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_2();
  v38 = sub_1DC512E4C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v115 = sub_1DC5157EC();
  v44 = OUTLINED_FUNCTION_0(v115);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  v108 = v49;
  OUTLINED_FUNCTION_22();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v107 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = (&v107 - v55);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_62();
  v58 = v57;
  sub_1DC512E2C();
  OUTLINED_FUNCTION_94_4();
  v59 = OUTLINED_FUNCTION_89();
  v61 = v60(v59);
  if (v61 == *MEMORY[0x1E69D0E38])
  {
    OUTLINED_FUNCTION_113_5();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_54_14(v63, v62 + 9);
    goto LABEL_35;
  }

  if (v61 == *MEMORY[0x1E69D0E28])
  {
    v64 = MEMORY[0x1E69D02D8];
  }

  else if (v61 == *MEMORY[0x1E69D0E48])
  {
    v64 = MEMORY[0x1E69D02F8];
  }

  else
  {
    if (v61 == *MEMORY[0x1E69D0E20])
    {
      sub_1DC3F93D8();
      v116 = v24;
      if (v24)
      {
        goto LABEL_35;
      }

      *v56 = v78;
      v66 = v115;
      (*(v46 + 104))(v56, *MEMORY[0x1E69D02C8], v115);
      v65 = v58;
      (*(v46 + 32))(v58, v56, v66);
      goto LABEL_8;
    }

    if (v61 == *MEMORY[0x1E69D0E30])
    {
      sub_1DC3F9680();
      v116 = v24;
      if (v24)
      {
        goto LABEL_35;
      }

      v66 = v115;
      (*(v46 + 104))(v53, *MEMORY[0x1E69D02E0], v115);
      v79 = *(v46 + 32);
      v65 = v58;
      v80 = OUTLINED_FUNCTION_35_0();
      v82(v80, v81, v66);
      goto LABEL_8;
    }

    if (v61 != *MEMORY[0x1E69D0E40])
    {
      OUTLINED_FUNCTION_113_5();
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_35_17();
      OUTLINED_FUNCTION_54_14(v90, v89 + 11);
      v91 = *(v41 + 8);
      v92 = OUTLINED_FUNCTION_89();
      v93(v92);
      goto LABEL_35;
    }

    v64 = MEMORY[0x1E69D02F0];
  }

  v65 = v58;
  v66 = v115;
  (*(v46 + 104))(v58, *v64, v115);
LABEL_8:
  sub_1DC512E8C();
  v67 = v113;
  v68 = *(v113 + 88);
  v69 = OUTLINED_FUNCTION_30();
  v71 = v70(v69);
  if (v71 == *MEMORY[0x1E69D0E10])
  {
    OUTLINED_FUNCTION_113_5();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_54_14(v72, v73);
    v74 = *(v46 + 8);
    v75 = OUTLINED_FUNCTION_45_0();
    v76(v75);
  }

  else
  {
    if (v71 == *MEMORY[0x1E69D0E18])
    {
      v77 = 0;
    }

    else if (v71 == *MEMORY[0x1E69D0E08])
    {
      v77 = 1;
    }

    else if (v71 == *MEMORY[0x1E69D0E00])
    {
      v77 = 2;
    }

    else
    {
      if (v71 != *MEMORY[0x1E69D0DF8])
      {
        OUTLINED_FUNCTION_113_5();
        OUTLINED_FUNCTION_33_1();
        OUTLINED_FUNCTION_35_17();
        OUTLINED_FUNCTION_54_14(v95, v94 + 2);
        v96 = *(v46 + 8);
        v97 = OUTLINED_FUNCTION_45_0();
        v98(v97);
        v99 = *(v67 + 8);
        v100 = OUTLINED_FUNCTION_30();
        v101(v100);
        goto LABEL_35;
      }

      v77 = 3;
    }

    v83 = v111;
    sub_1DC512E5C();
    v84 = v110;
    v85 = (*(v112 + 88))(v83, v110);
    if (v85 == *MEMORY[0x1E69D0E68])
    {
      v83 = 0;
      v23 = 0;
    }

    else if (v85 == *MEMORY[0x1E69D0E70])
    {
      v83 = 0;
      v23 = 1;
    }

    else if (v85 == *MEMORY[0x1E69D0E60])
    {
      v83 = 0;
      v23 = 2;
    }

    else
    {
      if (v85 != *MEMORY[0x1E69D0E58])
      {
        OUTLINED_FUNCTION_113_5();
        OUTLINED_FUNCTION_33_1();
        OUTLINED_FUNCTION_35_17();
        OUTLINED_FUNCTION_54_14(v103, v102 + 10);
        v104 = *(v46 + 8);
        v105 = OUTLINED_FUNCTION_45_0();
        v106(v105);
        (*(v112 + 8))(v111, v84);
        goto LABEL_35;
      }

      sub_1DC512DEC();
      OUTLINED_FUNCTION_192();
    }

    (*(v46 + 16))(v108, v65, v66);
    a13 = v77;
    v117[0] = v83;
    v117[1] = v23;
    NLRouterServiceResponse.init(routingDecision:status:decisionSource:)(&a13, v117, v109);
    v86 = *(v46 + 8);
    v87 = OUTLINED_FUNCTION_45_0();
    v88(v87);
  }

LABEL_35:
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3F93D8()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v3 = sub_1DC512F5C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_31();
  v32 = sub_1DC51588C();
  v9 = OUTLINED_FUNCTION_0(v32);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v33 = v12;
  v13 = sub_1DC512E0C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v29 = *(v13 + 16);
    sub_1DC2AA348(0, v14, 0);
    v15 = 0;
    v16 = *(v6 + 80);
    OUTLINED_FUNCTION_24();
    v30 = v13 + v17;
    v31 = (v6 + 8);
    while (v15 < *(v13 + 16))
    {
      (*(v6 + 16))(v1, v30 + *(v6 + 72) * v15, v3);
      sub_1DC3F9B20();
      if (v2)
      {

        v26 = *v31;
        v27 = OUTLINED_FUNCTION_174();
        v28(v27);

        goto LABEL_11;
      }

      v2 = 0;
      v18 = v1;
      v19 = v1;
      v20 = v3;
      (*v31)(v19, v3);
      v22 = *(v34 + 16);
      v21 = *(v34 + 24);
      if (v22 >= v21 >> 1)
      {
        v25 = OUTLINED_FUNCTION_26(v21);
        sub_1DC2AA348(v25, v22 + 1, 1);
      }

      ++v15;
      *(v34 + 16) = v22 + 1;
      OUTLINED_FUNCTION_22_0();
      (*(v24 + 32))(v34 + v23 + *(v24 + 72) * v22, v33, v32);
      v3 = v20;
      v1 = v18;
      if (v29 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

LABEL_11:
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1DC3F9680()
{
  OUTLINED_FUNCTION_28_1();
  v64 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v63 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v61 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v65 = v17;
  OUTLINED_FUNCTION_12();
  v60 = sub_1DC515EDC();
  v18 = OUTLINED_FUNCTION_0(v60);
  v62 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v67 = v22;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC512DAC();
  v23 = OUTLINED_FUNCTION_0(v68);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v58 - v29;
  v31 = sub_1DC5161CC();
  v32 = OUTLINED_FUNCTION_0(v31);
  v66 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_2();
  sub_1DC515F3C();
  sub_1DC3FE998(&qword_1ECC7C1E8, MEMORY[0x1E69D0618]);
  OUTLINED_FUNCTION_56_7();
  v36 = sub_1DC51502C();
  sub_1DC512DCC();
  sub_1DC3F45A0(v1);
  if (v0)
  {
    (*(v25 + 8))(v30, v68);
  }

  else
  {
    v58[1] = v36;
    v59 = v31;
    v69 = v1;
    v37 = *(v25 + 8);
    v37(v30, v68);
    sub_1DC512DCC();
    v38 = sub_1DC512E0C();
    v39 = v65;
    sub_1DC3FA0C8(v38, v65);

    sub_1DC3FA170();
    sub_1DC28EB30(v39, &qword_1ECC7D728, &qword_1DC5293E0);
    v40 = OUTLINED_FUNCTION_149();
    (v37)(v40);
    swift_getKeyPath();
    v41 = v66;
    OUTLINED_FUNCTION_90();
    v42 = v59;
    v43(v61, v69, v59);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v42);
    OUTLINED_FUNCTION_72();
    sub_1DC514FFC();
    swift_getKeyPath();
    v47 = v62;
    v48 = *(v62 + 16);
    v49 = OUTLINED_FUNCTION_11_24();
    v50 = v60;
    v51(v49);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
    sub_1DC514FFC();
    sub_1DC51500C();

    v55 = *(v47 + 8);
    v56 = OUTLINED_FUNCTION_50_0();
    v57(v56);
    (*(v41 + 8))(v69, v42);
  }

  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3F9B20()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18();
  v19 = sub_1DC512EEC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC512EFC();
  OUTLINED_FUNCTION_145_5();
  v25 = OUTLINED_FUNCTION_176();
  v27 = v26(v25);
  if (v27 == *MEMORY[0x1E69D0E90])
  {
    OUTLINED_FUNCTION_76_7();
    sub_1DC3FDFC0();
    v28 = OUTLINED_FUNCTION_33_1();
    *v29 = 0xD000000000000032;
    v29[1] = v5;
    OUTLINED_FUNCTION_35_2(v28, v29);
LABEL_3:
    *v3 = v28;
LABEL_14:
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  if (v27 == *MEMORY[0x1E69D0E88])
  {
    MEMORY[0x1EEE9AC00](v27);
    OUTLINED_FUNCTION_66_1();
    *(v30 - 16) = v5;
    sub_1DC51583C();
    v31 = sub_1DC51587C();
    OUTLINED_FUNCTION_39(v1, 1, v31);
    if (!v32)
    {
      OUTLINED_FUNCTION_7_1(v31);
      v34 = *(v33 + 32);
      v35 = v59;
      v36 = OUTLINED_FUNCTION_11_24();
      v37(v36);
      v38 = MEMORY[0x1E69D0330];
LABEL_13:
      v52 = *v38;
      v53 = sub_1DC51588C();
      OUTLINED_FUNCTION_35(v53);
      (*(v54 + 104))(v35, v52);
      goto LABEL_14;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69D0EA0])
  {
    MEMORY[0x1EEE9AC00](v27);
    OUTLINED_FUNCTION_66_1();
    *(v39 - 16) = v5;
    sub_1DC5158FC();
    v40 = sub_1DC51591C();
    v41 = OUTLINED_FUNCTION_98_6();
    OUTLINED_FUNCTION_39(v41, v42, v40);
    if (!v32)
    {
      OUTLINED_FUNCTION_7_1(v40);
      v44 = *(v43 + 32);
      v35 = v59;
      v45 = OUTLINED_FUNCTION_142_0();
      v46(v45);
      v38 = MEMORY[0x1E69D0340];
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v27 != *MEMORY[0x1E69D0E98])
  {
    OUTLINED_FUNCTION_76_7();
    sub_1DC3FDFC0();
    v28 = OUTLINED_FUNCTION_33_1();
    *v55 = 0xD000000000000034;
    v55[1] = v5;
    OUTLINED_FUNCTION_35_2(v28, v55);
    v56 = *(v22 + 8);
    v57 = OUTLINED_FUNCTION_176();
    v58(v57);
    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_66_1();
  *(v47 - 16) = v5;
  sub_1DC5158BC();
  v48 = sub_1DC5158DC();
  v49 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v49, v50, v48);
  if (!v32)
  {
    OUTLINED_FUNCTION_7_1(v48);
    v35 = v59;
    (*(v51 + 32))(v59, v0, v48);
    v38 = MEMORY[0x1E69D0338];
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1DC3F9F88()
{
  v1 = sub_1DC511AAC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_4();
  sub_1DC512ECC();
  sub_1DC51586C();
  result = sub_1DC512F3C();
  if (result)
  {
    sub_1DC512F1C();
    OUTLINED_FUNCTION_82_6();
    sub_1DC3F0B7C(v12, v13);
    (*(v4 + 8))(v0, v1);
    return sub_1DC51584C();
  }

  return result;
}

uint64_t sub_1DC3FA0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC512F5C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC3FA170()
{
  OUTLINED_FUNCTION_28_1();
  v153 = v2;
  v4 = v3;
  v5 = sub_1DC512D6C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v144 = v7;
  v145 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v152 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC512CFC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v142 = v13;
  v143 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v141 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v140 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v146 = v26;
  OUTLINED_FUNCTION_12();
  v27 = sub_1DC511AAC();
  v28 = OUTLINED_FUNCTION_0(v27);
  v147 = v29;
  v148 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v135 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v136 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  v138 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v139 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  v40 = OUTLINED_FUNCTION_10(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v137 = v43;
  OUTLINED_FUNCTION_22();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v131 - v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_1();
  v149 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_136_3();
  v50 = sub_1DC512D4C();
  v51 = OUTLINED_FUNCTION_0(v50);
  v150 = v52;
  v151 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  v156 = v55;
  OUTLINED_FUNCTION_12();
  v56 = sub_1DC512D8C();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4_31();
  if (sub_1DC512C7C())
  {
    v132 = v47;
    v133 = v4;
    v134 = v0;
    sub_1DC512C5C();
    v62 = sub_1DC512C8C();
    v63 = *(v59 + 8);
    v64 = OUTLINED_FUNCTION_54_4();
    v63(v64);
    sub_1DC512C5C();
    if (v62)
    {
      sub_1DC512CBC();
      v65 = OUTLINED_FUNCTION_54_4();
      v63(v65);
      sub_1DC515E7C();
      sub_1DC3FE998(&qword_1ECC7CB30, MEMORY[0x1E69D05B8]);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v66 = v153;
      v67 = OUTLINED_FUNCTION_50_0();
      sub_1DC28F3B8(v67, v68, v69, v70);
      v71 = sub_1DC512F5C();
      OUTLINED_FUNCTION_39(v1, 1, v71);
      if (v72)
      {
        sub_1DC28EB30(v1, &qword_1ECC7D728, &qword_1DC5293E0);
        v84 = 0;
        v86 = 0;
      }

      else
      {
        v84 = sub_1DC512ECC();
        v86 = v85;
        OUTLINED_FUNCTION_7_1(v71);
        v88 = *(v87 + 8);
        v89 = OUTLINED_FUNCTION_42_2();
        v90(v89);
      }

      v91 = v149;
      v154 = v84;
      v155 = v86;
      sub_1DC514FDC();
      sub_1DC28F3B8(v66, v91, &qword_1ECC7D728, &qword_1DC5293E0);
      v92 = OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_39(v92, v93, v71);
      if (v72)
      {
        sub_1DC28EB30(v91, &qword_1ECC7D728, &qword_1DC5293E0);
      }

      else
      {
        sub_1DC512F1C();
        OUTLINED_FUNCTION_7_1(v71);
        (*(v94 + 8))(v91, v71);
        v95 = v147;
        v96 = *(v147 + 32);
        v97 = OUTLINED_FUNCTION_50_0();
        v98(v97);
        swift_getKeyPath();
        OUTLINED_FUNCTION_15_17();
        sub_1DC3F0B7C(v99, v100);
        OUTLINED_FUNCTION_119();
        sub_1DC514FDC();
        v101 = *(v95 + 8);
        v102 = OUTLINED_FUNCTION_50_0();
        v103(v102);
      }

      v104 = v133;
      if (sub_1DC512D0C())
      {
        swift_getKeyPath();
        v105 = v141;
        sub_1DC512D1C();
        sub_1DC3F47D0();
        (*(v142 + 8))(v105, v143);
        OUTLINED_FUNCTION_119();
        sub_1DC514FDC();
      }

      sub_1DC51500C();

      (*(v150 + 8))(v156, v151);
      v106 = MEMORY[0x1E69D0600];
LABEL_23:
      v128 = *v106;
      v129 = sub_1DC515EDC();
      OUTLINED_FUNCTION_35(v129);
      (*(v130 + 104))(v104, v128);
      goto LABEL_24;
    }

    v76 = sub_1DC512C9C();
    v77 = OUTLINED_FUNCTION_54_4();
    v63(v77);
    if (v76)
    {
      sub_1DC512C5C();
      sub_1DC512CDC();
      v78 = OUTLINED_FUNCTION_54_4();
      v63(v78);
      sub_1DC515EBC();
      sub_1DC3FE998(&qword_1ECC7C1F0, MEMORY[0x1E69D05E0]);
      OUTLINED_FUNCTION_56_7();
      sub_1DC51502C();
      swift_getKeyPath();
      v79 = v153;
      v80 = v132;
      sub_1DC28F3B8(v153, v132, &qword_1ECC7D728, &qword_1DC5293E0);
      v81 = sub_1DC512F5C();
      v82 = OUTLINED_FUNCTION_68_8();
      OUTLINED_FUNCTION_39(v82, v83, v81);
      if (v72)
      {
        sub_1DC28EB30(v80, &qword_1ECC7D728, &qword_1DC5293E0);
        v107 = 0;
        v109 = 0;
      }

      else
      {
        v107 = sub_1DC512ECC();
        v109 = v108;
        OUTLINED_FUNCTION_7_1(v81);
        v111 = *(v110 + 8);
        v112 = OUTLINED_FUNCTION_35_0();
        v113(v112);
      }

      v104 = v133;
      v154 = v107;
      v155 = v109;
      sub_1DC514FDC();
      v114 = v137;
      sub_1DC28F3B8(v79, v137, &qword_1ECC7D728, &qword_1DC5293E0);
      OUTLINED_FUNCTION_39(v114, 1, v81);
      if (v72)
      {
        sub_1DC28EB30(v114, &qword_1ECC7D728, &qword_1DC5293E0);
      }

      else
      {
        sub_1DC512F1C();
        OUTLINED_FUNCTION_7_1(v81);
        v116 = *(v115 + 8);
        v117 = OUTLINED_FUNCTION_74();
        v118(v117);
        v119 = v147;
        v120 = *(v147 + 32);
        v121 = OUTLINED_FUNCTION_174();
        v122(v121);
        swift_getKeyPath();
        OUTLINED_FUNCTION_15_17();
        sub_1DC3F0B7C(v123, v124);
        OUTLINED_FUNCTION_212();
        sub_1DC514FDC();
        v125 = *(v119 + 8);
        v126 = OUTLINED_FUNCTION_174();
        v127(v126);
      }

      sub_1DC51500C();

      (*(v144 + 8))(v152, v145);
      v106 = MEMORY[0x1E69D0608];
      goto LABEL_23;
    }

    sub_1DC3FDFC0();
    OUTLINED_FUNCTION_33_1();
    v75 = "utingGenAIMetadata";
    v73 = 0xD00000000000004CLL;
  }

  else
  {
    v73 = 0xD000000000000042;
    sub_1DC3FDFC0();
    OUTLINED_FUNCTION_33_1();
    v75 = "rServiceResponse";
  }

  *v74 = v73;
  *(v74 + 8) = v75 | 0x8000000000000000;
  *(v74 + 16) = 0;
  swift_willThrow();
LABEL_24:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FAB64()
{
  OUTLINED_FUNCTION_33();
  v119 = v3;
  v113 = sub_1DC512C1C();
  v4 = OUTLINED_FUNCTION_0(v113);
  v111 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v112 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC5161CC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v117 = v11;
  v118 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v116 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC512CFC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v103 = v17;
  v104 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v105 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_79();
  v110 = sub_1DC515F4C();
  v25 = OUTLINED_FUNCTION_0(v110);
  v102 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v106 = v30;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC512D4C();
  v32 = OUTLINED_FUNCTION_10(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v35 = sub_1DC515E7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v108 = v37;
  v109 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  v107 = v40;
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC512D6C();
  v42 = OUTLINED_FUNCTION_10(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v45 = sub_1DC515EDC();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v114 = sub_1DC512D8C();
  v51 = OUTLINED_FUNCTION_0(v114);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v101 - v55;
  sub_1DC512D7C();
  v115 = v0;
  sub_1DC515EFC();
  v57 = v48[11];
  v58 = OUTLINED_FUNCTION_11_24();
  v60 = v59(v58);
  if (v60 == *MEMORY[0x1E69D0608])
  {
    sub_1DC512D5C();
    sub_1DC512CEC();
LABEL_8:
    v75 = v48[1];
    v76 = OUTLINED_FUNCTION_11_24();
    v77(v76);
    goto LABEL_9;
  }

  if (v60 != *MEMORY[0x1E69D0600])
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v74 = sub_1DC296DBC();
    sub_1DC516F0C();

    sub_1DC512D3C();
    sub_1DC512CCC();
    goto LABEL_8;
  }

  v61 = v48[12];
  v62 = OUTLINED_FUNCTION_11_24();
  v63(v62);
  v65 = v107;
  v64 = v108;
  v66 = *(v108 + 32);
  v67 = OUTLINED_FUNCTION_91_4();
  v68 = v109;
  v69(v67);
  sub_1DC512D3C();
  sub_1DC512CCC();
  sub_1DC515E6C();
  v70 = OUTLINED_FUNCTION_68_8();
  v71 = v110;
  OUTLINED_FUNCTION_39(v70, v72, v110);
  if (v73)
  {
    (*(v64 + 8))(v65, v68);
    sub_1DC28EB30(v1, &qword_1ECC7CB08, &unk_1DC5240E0);
LABEL_9:
    v78 = v117;
    v79 = v114;
    goto LABEL_10;
  }

  v85 = v102;
  (*(v102 + 32))(v106, v1, v71);
  v86 = *(v85 + 16);
  v87 = v101;
  v88 = OUTLINED_FUNCTION_77_1();
  v89(v88);
  v90 = (*(v85 + 88))(v87, v71);
  v91 = *(v103 + 104);
  v78 = v117;
  v79 = v114;
  if (v90 == *MEMORY[0x1E69D0620])
  {
    v91(v105, *MEMORY[0x1E69D0DF0], v104);
  }

  else
  {
    v91(v105, *MEMORY[0x1E69D0DE8], v104);
    (*(v85 + 8))(v87, v71);
  }

  v94 = sub_1DC512CAC();
  sub_1DC512D2C();
  v94(&v120, 0);
  (*(v85 + 8))(v106, v110);
  (*(v108 + 8))(v107, v109);
LABEL_10:
  sub_1DC512D9C();
  OUTLINED_FUNCTION_32_5();
  v80(v2, v56, v79);
  sub_1DC512C6C();
  sub_1DC515E2C();
  OUTLINED_FUNCTION_145_5();
  v81 = OUTLINED_FUNCTION_77_1();
  v83 = v82(v81);
  if (v83 == *MEMORY[0x1E69D0720])
  {
    v84 = MEMORY[0x1E69D0DC8];
  }

  else if (v83 == *MEMORY[0x1E69D0730])
  {
    v84 = MEMORY[0x1E69D0DD8];
  }

  else if (v83 == *MEMORY[0x1E69D0718])
  {
    v84 = MEMORY[0x1E69D0DC0];
  }

  else
  {
    if (v83 != *MEMORY[0x1E69D0728])
    {
      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v95 = sub_1DC296DBC();
      sub_1DC516F0C();

      v96 = OUTLINED_FUNCTION_23_22();
      v97(v96);
      v98 = *(v78 + 8);
      v99 = OUTLINED_FUNCTION_77_1();
      v100(v99);
      goto LABEL_21;
    }

    v84 = MEMORY[0x1E69D0DD0];
  }

  (*(v111 + 104))(v112, *v84, v113);
  OUTLINED_FUNCTION_235_0();
  sub_1DC512C3C();
  v92 = OUTLINED_FUNCTION_23_22();
  v93(v92);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FB394()
{
  OUTLINED_FUNCTION_33();
  v61 = v4;
  v5 = sub_1DC515E7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v14 = sub_1DC515EBC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  v20 = sub_1DC515EDC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_31();
  v26 = v23[2];
  v27 = OUTLINED_FUNCTION_75();
  v28(v27);
  v29 = v23[11];
  v30 = OUTLINED_FUNCTION_45_0();
  v32 = v31(v30);
  if (v32 != *MEMORY[0x1E69D0608])
  {
    if (v32 == *MEMORY[0x1E69D0600])
    {
      v42 = v23[12];
      v43 = OUTLINED_FUNCTION_45_0();
      v44(v43);
      OUTLINED_FUNCTION_135_2();
      v45(v0, v3, v5);
      sub_1DC515E5C();
      v38 = v61;
      if (!v46)
      {
        v57 = *(v60 + 8);
        v58 = OUTLINED_FUNCTION_56_0();
        v59(v58);
        v48 = 1;
        goto LABEL_11;
      }

      sub_1DC515E3C();
      OUTLINED_FUNCTION_16();
      sub_1DC3FB778();

      sub_1DC28EB30(v1, &qword_1ECC7D090, &qword_1DC524180);
      v47 = *(v60 + 8);
      v40 = OUTLINED_FUNCTION_56_0();
      goto LABEL_7;
    }

    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v49 = sub_1DC296DBC();
    sub_1DC516F0C();

    v50 = v23[1];
    v51 = OUTLINED_FUNCTION_45_0();
    v52(v51);
LABEL_10:
    v48 = 1;
    v38 = v61;
    goto LABEL_11;
  }

  v33 = v23[12];
  v34 = OUTLINED_FUNCTION_45_0();
  v35(v34);
  OUTLINED_FUNCTION_135_2();
  v36(v2, v3, v14);
  sub_1DC515EAC();
  if (!v37)
  {
    v53 = *(v17 + 8);
    v54 = OUTLINED_FUNCTION_16();
    v55(v54);
    goto LABEL_10;
  }

  sub_1DC515E8C();
  v38 = v61;
  sub_1DC3FB778();

  sub_1DC28EB30(v1, &qword_1ECC7D090, &qword_1DC524180);
  v39 = *(v17 + 8);
  v40 = OUTLINED_FUNCTION_16();
LABEL_7:
  v41(v40);
  v48 = 0;
LABEL_11:
  v56 = sub_1DC512F5C();
  __swift_storeEnumTagSinglePayload(v38, v48, 1, v56);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FB778()
{
  OUTLINED_FUNCTION_33();
  v53 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  v8 = sub_1DC511AAC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v50 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18();
  v19 = sub_1DC515ECC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_31();
  v25 = sub_1DC512EEC();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  sub_1DC512F4C();

  sub_1DC512EDC();
  (*(v28 + 104))(v2, *MEMORY[0x1E69D0E80], v25);
  sub_1DC512F0C();
  sub_1DC28F3B8(v53, v1, &qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_39(v1, 1, v19);
  if (v39)
  {
    v31 = &qword_1ECC7D090;
    v32 = &qword_1DC524180;
    v33 = v1;
LABEL_7:
    sub_1DC28EB30(v33, v31, v32);
    goto LABEL_8;
  }

  v34 = *(v22 + 32);
  v35 = OUTLINED_FUNCTION_75();
  v36(v35);
  OUTLINED_FUNCTION_80_7();
  OUTLINED_FUNCTION_147_3();
  sub_1DC3F497C();
  v37 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v37, v38, v52);
  if (v39)
  {
    v40 = *(v22 + 8);
    v41 = OUTLINED_FUNCTION_45_0();
    v42(v41);
    v31 = &unk_1ECC7D3E0;
    v32 = &qword_1DC528418;
    v33 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_128_3();
  v43 = OUTLINED_FUNCTION_212();
  v44(v43);
  OUTLINED_FUNCTION_32_5();
  v45 = OUTLINED_FUNCTION_152();
  v46(v45);
  OUTLINED_FUNCTION_235_0();
  sub_1DC512F2C();
  (*(v51 + 8))(v50, v52);
  v47 = *(v22 + 8);
  v48 = OUTLINED_FUNCTION_45_0();
  v49(v48);
LABEL_8:
  OUTLINED_FUNCTION_34();
}

void NLRouterServiceResponse.toNLUTypesNLRouterServiceResponse()()
{
  OUTLINED_FUNCTION_28_1();
  v150 = v0;
  v5 = v4;
  v6 = sub_1DC512E7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v144 = v8;
  v145 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v146 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC512DBC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v142 = v14;
  v143 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v141 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC5157CC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v147 = v20;
  v148 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v23 = sub_1DC515EDC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v138 = v25;
  v139 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v134 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D728, &qword_1DC5293E0);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v137 = v33;
  OUTLINED_FUNCTION_12();
  v140 = sub_1DC512F5C();
  v34 = OUTLINED_FUNCTION_0(v140);
  v133 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v132 = v38;
  OUTLINED_FUNCTION_12();
  v39 = sub_1DC512DAC();
  v40 = OUTLINED_FUNCTION_10(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_2();
  v43 = sub_1DC515F3C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v135 = v45;
  v136 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v49 = v48;
  OUTLINED_FUNCTION_12();
  v149 = sub_1DC512E4C();
  v50 = OUTLINED_FUNCTION_0(v149);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v53 = sub_1DC5157EC();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4_31();
  sub_1DC512EAC();
  OUTLINED_FUNCTION_82_2();
  v59(v3, v150, v53);
  OUTLINED_FUNCTION_145_5();
  v60 = OUTLINED_FUNCTION_45_0();
  v62 = v61(v60);
  if (v62 == *MEMORY[0x1E69D02E8])
  {
    v63 = *(v56 + 96);
    v64 = OUTLINED_FUNCTION_45_0();
    v65(v64);
    (*(v147 + 32))(v2, v3, v148);
    v66 = sub_1DC5157AC();
    if (!v67)
    {
      goto LABEL_10;
    }

    v68 = v66;
    v69 = v67;

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      v71 = *MEMORY[0x1E69D0E20];
      v72 = OUTLINED_FUNCTION_33_18();
      v73(v72);
      OUTLINED_FUNCTION_70_10();
      sub_1DC3FC638();
      sub_1DC512E1C();
    }

    else
    {
LABEL_10:
      v83 = *MEMORY[0x1E69D0E28];
      v84 = OUTLINED_FUNCTION_33_18();
      v85(v84);
      OUTLINED_FUNCTION_70_10();
    }

    v86 = *(v147 + 8);
    v87 = OUTLINED_FUNCTION_50_0();
    v88(v87);
  }

  else if (v62 == *MEMORY[0x1E69D02C8])
  {
    v74 = *(v56 + 96);
    v75 = OUTLINED_FUNCTION_45_0();
    v76(v75);
    v77 = *v3;
    v78 = *MEMORY[0x1E69D0E20];
    v79 = OUTLINED_FUNCTION_33_18();
    v80(v79);
    OUTLINED_FUNCTION_70_10();
    sub_1DC3FC480();
    if (v1)
    {
      v81 = sub_1DC512EBC();
      OUTLINED_FUNCTION_35(v81);
      (*(v82 + 8))(v5);

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_120_1();
    sub_1DC512E1C();
  }

  else if (v62 == *MEMORY[0x1E69D02E0])
  {
    v97 = *(v56 + 96);
    v98 = OUTLINED_FUNCTION_45_0();
    v99(v98);
    (*(v135 + 32))(v49, v3, v136);
    v100 = *MEMORY[0x1E69D0E30];
    v101 = OUTLINED_FUNCTION_33_18();
    v102(v101);
    OUTLINED_FUNCTION_70_10();
    sub_1DC3FAB64();
    sub_1DC512DDC();
    sub_1DC515EFC();
    sub_1DC3FB394();
    (*(v138 + 8))(v134, v139);
    v103 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v103, v104, v140);
    if (v105)
    {
      v106 = *(v135 + 8);
      v107 = OUTLINED_FUNCTION_51();
      v108(v107);
      sub_1DC28EB30(v137, &qword_1ECC7D728, &qword_1DC5293E0);
    }

    else
    {
      OUTLINED_FUNCTION_128_3();
      v111 = OUTLINED_FUNCTION_119();
      v112(v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D730, &unk_1DC529540);
      v113 = *(v133 + 72);
      v114 = *(v133 + 80);
      OUTLINED_FUNCTION_139_2();
      *(swift_allocObject() + 16) = xmmword_1DC522F20;
      OUTLINED_FUNCTION_32_5();
      v116(v115 + v134, v132, v140);
      OUTLINED_FUNCTION_120_1();
      sub_1DC512E1C();
      v117 = *(v133 + 8);
      v118 = OUTLINED_FUNCTION_149();
      v119(v118);
      v120 = *(v135 + 8);
      v121 = OUTLINED_FUNCTION_51();
      v122(v121);
    }
  }

  else
  {
    if (v62 == *MEMORY[0x1E69D02D8])
    {
      v109 = MEMORY[0x1E69D0E28];
    }

    else if (v62 == *MEMORY[0x1E69D02F8])
    {
      v109 = MEMORY[0x1E69D0E48];
    }

    else
    {
      if (v62 != *MEMORY[0x1E69D02F0])
      {
        OUTLINED_FUNCTION_113_5();
        OUTLINED_FUNCTION_33_1();
        OUTLINED_FUNCTION_163_2(v126, 0xD000000000000032);
        v127 = sub_1DC512EBC();
        OUTLINED_FUNCTION_35(v127);
        (*(v128 + 8))(v5);
        v129 = *(v56 + 8);
        v130 = OUTLINED_FUNCTION_45_0();
        v131(v130);
        goto LABEL_27;
      }

      v109 = MEMORY[0x1E69D0E40];
    }

    v123 = *v109;
    v124 = OUTLINED_FUNCTION_33_18();
    v125(v124);
    OUTLINED_FUNCTION_70_10();
  }

  v89 = type metadata accessor for NLRouterServiceResponse(0);
  v90 = *(v150 + *(v89 + 20));
  if (v90 >= 4)
  {
    OUTLINED_FUNCTION_113_5();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_163_2(v94, 0xD000000000000029);
    v95 = sub_1DC512EBC();
    OUTLINED_FUNCTION_35(v95);
    (*(v96 + 8))(v5);
  }

  else
  {
    v91 = v89;
    (*(v142 + 104))(v141, **(&unk_1E862E300 + v90), v143);
    sub_1DC512E9C();
    v92 = (v150 + *(v91 + 24));
    switch(v92[1])
    {
      case 0:
        v93 = MEMORY[0x1E69D0E68];
        goto LABEL_26;
      case 1:
        v93 = MEMORY[0x1E69D0E70];
        goto LABEL_26;
      case 2:
        v93 = MEMORY[0x1E69D0E60];
        goto LABEL_26;
      case 3:
        v93 = MEMORY[0x1E69D0E58];
LABEL_26:
        (*(v144 + 104))(v146, *v93, v145);
        OUTLINED_FUNCTION_120_1();
        sub_1DC512E6C();
        break;
      default:
        v110 = *v92;
        (*(v144 + 104))(v146, *MEMORY[0x1E69D0E58], v145);

        sub_1DC512E6C();
        OUTLINED_FUNCTION_30_6();
        sub_1DC512DFC();
        break;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FC480()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v4 = v3;
  v20 = sub_1DC512F5C();
  v5 = OUTLINED_FUNCTION_0(v20);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v10 = *(v4 + 16);
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DC3FE8AC();
    v11 = sub_1DC51588C();
    OUTLINED_FUNCTION_52(v11);
    v13 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    while (1)
    {
      sub_1DC3FCA54();
      if (v2)
      {
        break;
      }

      v2 = 0;
      v17 = *(v21 + 16);
      v16 = *(v21 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_26(v16);
        sub_1DC3FE8AC();
      }

      *(v21 + 16) = v17 + 1;
      v18 = *(v7 + 80);
      OUTLINED_FUNCTION_24();
      (*(v7 + 32))(v21 + v19 + *(v7 + 72) * v17, v1, v20);
      v13 += v15;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FC638()
{
  OUTLINED_FUNCTION_33();
  v4 = sub_1DC512EEC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = sub_1DC511AAC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v60 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v59 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  v23 = sub_1DC51589C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_31();
  v61 = sub_1DC512F5C();
  v29 = OUTLINED_FUNCTION_0(v61);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC512F4C();
  sub_1DC5157AC();
  sub_1DC512EDC();
  sub_1DC51578C();
  v34 = OUTLINED_FUNCTION_53_15();
  OUTLINED_FUNCTION_39(v34, v35, v23);
  if (v41)
  {
    v36 = &unk_1ECC7D3D0;
    v37 = &qword_1DC529550;
    v38 = v0;
LABEL_7:
    sub_1DC28EB30(v38, v36, v37);
    goto LABEL_8;
  }

  (*(v26 + 32))(v3, v0, v23);
  OUTLINED_FUNCTION_81_6();
  sub_1DC3F497C();
  v39 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v39, v40, v12);
  if (v41)
  {
    v42 = *(v26 + 8);
    v43 = OUTLINED_FUNCTION_117_0();
    v44(v43);
    v36 = &unk_1ECC7D3E0;
    v37 = &qword_1DC528418;
    v38 = v1;
    goto LABEL_7;
  }

  (*(v60 + 32))(v59, v1, v12);
  OUTLINED_FUNCTION_82_2();
  v45 = OUTLINED_FUNCTION_152();
  v46(v45);
  sub_1DC512F2C();
  v47 = *(v60 + 8);
  v48 = OUTLINED_FUNCTION_50_0();
  v49(v48);
  v50 = *(v26 + 8);
  v51 = OUTLINED_FUNCTION_117_0();
  v52(v51);
LABEL_8:
  v53 = *MEMORY[0x1E69D0E88];
  v54 = OUTLINED_FUNCTION_127_3();
  v55(v54);
  sub_1DC512F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D730, &unk_1DC529540);
  v56 = *(v31 + 72);
  v57 = *(v31 + 80);
  OUTLINED_FUNCTION_139_2();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1DC522F20;
  (*(v31 + 32))(v58 + v2, v2, v61);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3FCA54()
{
  OUTLINED_FUNCTION_28_1();
  v114 = v3;
  v124 = v4;
  v6 = v5;
  v113 = sub_1DC5158DC();
  v7 = OUTLINED_FUNCTION_0(v113);
  v111 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v110 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3E0, &qword_1DC528418);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v117 = v16;
  OUTLINED_FUNCTION_12();
  v118 = sub_1DC511AAC();
  v17 = OUTLINED_FUNCTION_0(v118);
  v112 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v109 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v108 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_1();
  v125 = sub_1DC5157FC();
  v28 = OUTLINED_FUNCTION_0(v125);
  v116 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v119 = v32;
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC51587C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v120 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v38 = sub_1DC512EEC();
  v39 = OUTLINED_FUNCTION_0(v38);
  v122 = v40;
  v123 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  v121 = v43;
  OUTLINED_FUNCTION_12();
  v44 = sub_1DC51591C();
  v45 = OUTLINED_FUNCTION_0(v44);
  v115 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v49 = sub_1DC51588C();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC512F4C();
  OUTLINED_FUNCTION_82_2();
  v55(v0, v124, v49);
  OUTLINED_FUNCTION_145_5();
  v56 = OUTLINED_FUNCTION_12_3();
  v58 = v57(v56);
  if (v58 == *MEMORY[0x1E69D0330])
  {
    v59 = *(v52 + 96);
    v60 = OUTLINED_FUNCTION_12_3();
    v61(v60);
    v62 = *(v120 + 32);
    v63 = OUTLINED_FUNCTION_43();
    v64(v63);
    sub_1DC51582C();
    sub_1DC512EDC();
    sub_1DC51580C();
    OUTLINED_FUNCTION_39(v1, 1, v125);
    if (v79)
    {
      v65 = &qword_1ECC7BF08;
      v66 = &unk_1DC522330;
      v67 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_96_3();
      v75 = OUTLINED_FUNCTION_48_0();
      v76(v75);
      OUTLINED_FUNCTION_79_8();
      sub_1DC3F497C();
      v77 = OUTLINED_FUNCTION_53_15();
      OUTLINED_FUNCTION_39(v77, v78, v118);
      if (!v79)
      {
        OUTLINED_FUNCTION_128_3();
        v90(v108, v117, v118);
        OUTLINED_FUNCTION_32_5();
        v91(v109, v108, v118);
        sub_1DC512F2C();
        v92 = *(v112 + 8);
        v93 = OUTLINED_FUNCTION_117_0();
        v94(v93);
        (*(v116 + 8))(v119, v125);
LABEL_13:
        v95 = *MEMORY[0x1E69D0E88];
        v96 = OUTLINED_FUNCTION_127_3();
        v97(v96);
        sub_1DC512F0C();
        v98 = *(v120 + 8);
        v99 = OUTLINED_FUNCTION_34_0();
        v100(v99);
        goto LABEL_14;
      }

      (*(v116 + 8))(v119, v125);
      v65 = &unk_1ECC7D3E0;
      v66 = &qword_1DC528418;
      v67 = v117;
    }

    sub_1DC28EB30(v67, v65, v66);
    goto LABEL_13;
  }

  if (v58 == *MEMORY[0x1E69D0340])
  {
    v68 = *(v52 + 96);
    v69 = OUTLINED_FUNCTION_12_3();
    v70(v69);
    OUTLINED_FUNCTION_135_2();
    v71(v2, v0, v44);
    sub_1DC5158EC();
    sub_1DC512EDC();
    (*(v122 + 104))(v121, *MEMORY[0x1E69D0EA0], v123);
    sub_1DC512F0C();
    v72 = *(v115 + 8);
    v73 = OUTLINED_FUNCTION_51();
    v74(v73);
  }

  else if (v58 == *MEMORY[0x1E69D0338])
  {
    v80 = *(v52 + 96);
    v81 = OUTLINED_FUNCTION_12_3();
    v82(v81);
    OUTLINED_FUNCTION_128_3();
    v83(v110, v0, v113);
    sub_1DC5158AC();
    sub_1DC512EDC();
    v84 = *MEMORY[0x1E69D0E98];
    v85 = OUTLINED_FUNCTION_127_3();
    v86(v85);
    sub_1DC512F0C();
    v87 = *(v111 + 8);
    v88 = OUTLINED_FUNCTION_149();
    v89(v88);
  }

  else
  {
    sub_1DC3FDFC0();
    v101 = OUTLINED_FUNCTION_33_1();
    *v102 = 0xD000000000000048;
    *(v102 + 8) = 0x80000001DC545FA0;
    *(v102 + 16) = 1;
    swift_willThrow();
    v103 = sub_1DC512F5C();
    OUTLINED_FUNCTION_35(v103);
    (*(v104 + 8))(v6);
    v105 = *(v52 + 8);
    v106 = OUTLINED_FUNCTION_12_3();
    v107(v106);
    *v114 = v101;
  }

LABEL_14:
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC3FD1C8()
{
  OUTLINED_FUNCTION_33();
  v48 = v0;
  v49 = v1;
  v2 = OUTLINED_FUNCTION_162_5(*MEMORY[0x1E69E9840]);
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_31();
  v6 = sub_1DC512EBC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v50 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 arguments];

  sub_1DC517A1C();
  OUTLINED_FUNCTION_118_3("/System/Developer/usr/local/bin/xctest");
  LOBYTE(v12) = OUTLINED_FUNCTION_164_2();

  if (v12)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v13 = sub_1DC296DBC();
    OUTLINED_FUNCTION_161_3();
LABEL_3:

    goto LABEL_9;
  }

  NLRouterServiceResponse.toNLUTypesNLRouterServiceResponse()();
  v14 = v11;
  if (!v11)
  {
    sub_1DC5166DC();
    sub_1DC3FE998(&qword_1ECC7BDA8, MEMORY[0x1E69D0E78]);
    OUTLINED_FUNCTION_117_0();
    sub_1DC51673C();
    v26 = OUTLINED_FUNCTION_23_22();
    v27(v26);
    v28 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v29 = sub_1DC296DBC();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = OUTLINED_FUNCTION_63();
      v31 = swift_slowAlloc();
      v51 = v31;
      *v30 = 136315138;
      v32 = OUTLINED_FUNCTION_34_0();
      *(v30 + 4) = sub_1DC291244(v32, v33, v34);
      OUTLINED_FUNCTION_159_2(&dword_1DC287000, v35, v36, "logToFeatureStore NLRouterServiceResponse proto json: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v37 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v38 = sub_1DC3FD910(0xD000000000000033, 0x80000001DC545F60);
    v39 = objc_allocWithZone(MEMORY[0x1E699C0D0]);

    v40 = OUTLINED_FUNCTION_34_0();
    v13 = sub_1DC3FD974(v40, v41, v48, v49, 0);
    if (!v38)
    {
      v45 = OUTLINED_FUNCTION_25_15();
      v46(v45);
      goto LABEL_3;
    }

    v51 = 0;
    if ([v38 insert:v13 error:&v51])
    {
      v42 = *(v50 + 8);
      v43 = v51;
      v44 = OUTLINED_FUNCTION_30_6();
      v42(v44);

      goto LABEL_9;
    }

    v47 = v51;
    v14 = sub_1DC51085C();

    swift_willThrow();
    v15 = OUTLINED_FUNCTION_25_15();
    v16(v15);
  }

  v17 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v18 = sub_1DC296DBC();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = OUTLINED_FUNCTION_63();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    OUTLINED_FUNCTION_36_4(&dword_1DC287000, v23, v24, "Error logging NLRouterServiceResponse to FeatureStore: %@");
    sub_1DC28EB30(v20, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

LABEL_9:
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_34();
}

id sub_1DC3FD6BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DC5176FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id sub_1DC3FD740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_1DC51082C();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DC51081C();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DC5176FC();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_1DC5176FC();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1DC5176FC();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_1DC298C74(0, &qword_1ECC7D760, 0x1E696E948);
    v21 = sub_1DC517A0C();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

id sub_1DC3FD910(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DC5176FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

id sub_1DC3FD974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DC5176FC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DC5176FC();

LABEL_6:
  v10 = [v5 initWithJsonStr:v8 interactionId:v9 dataVersion:a5];

  return v10;
}

size_t sub_1DC3FDA1C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D5C0, "֕", type metadata accessor for TurnSummary);
  v11 = *(type metadata accessor for TurnSummary(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, type metadata accessor for TurnSummary);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FDB40(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7C898, &unk_1DC529680, MEMORY[0x1E69A90D0]);
  v11 = *(sub_1DC516C3C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90D0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FDC64(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D5F8, &qword_1DC529670, MEMORY[0x1E69A90E8]);
  v11 = *(sub_1DC516C7C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90E8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FDD88(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D768, &qword_1DC529678, MEMORY[0x1E69A90A8]);
  v11 = *(sub_1DC516B8C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69A90A8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DC3FDEAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D5C8, &qword_1DC529690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DC3FDFC0()
{
  result = qword_1ECC7D700;
  if (!qword_1ECC7D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D700);
  }

  return result;
}

uint64_t sub_1DC3FE014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1DC3FE084(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D750, &qword_1DC529660, MEMORY[0x1E69D0D58]);
  v11 = *(sub_1DC51262C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D58]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FE1A8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D748, &qword_1DC529658, MEMORY[0x1E69D0DA8]);
  v11 = *(sub_1DC5129CC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0DA8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FE2CC(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D740, &qword_1DC529650, MEMORY[0x1E69D0D98]);
  v11 = *(sub_1DC51288C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D98]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FE3F0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D758, &qword_1DC529668, MEMORY[0x1E69D0D60]);
  v11 = *(sub_1DC5126CC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0D60]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC3FE514(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC3FE56C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

size_t sub_1DC3FE5C4(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DC3FE6E8(v9, a2, &qword_1ECC7D738, &unk_1DC529640, MEMORY[0x1E69D0DA0]);
  v11 = *(sub_1DC51296C() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DC3FE7DC(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D0DA0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DC3FE6E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_52(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3FE7DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DC3FE8AC()
{
  v1 = *v0;
  sub_1DC2A6F60();
  *v0 = v2;
}

uint64_t sub_1DC3FE950(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = sub_1DC512ECC();
  return a2(v5);
}

uint64_t sub_1DC3FE998(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109_5()
{
  result = v0;
  v3 = *(v1 - 112);
  v5 = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_110_6(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

unint64_t OUTLINED_FUNCTION_113_5()
{

  return sub_1DC3FDFC0();
}

void OUTLINED_FUNCTION_118_3(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = (a1 - 32) | 0x8000000000000000;
  *(v2 - 112) = v2 - 104;
}

uint64_t OUTLINED_FUNCTION_123_4()
{
  v2 = **(v1 - 296);
  result = v0;
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2()
{
  result = *(v0 - 296);
  v2 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_161_3()
{

  return sub_1DC516F0C();
}

uint64_t OUTLINED_FUNCTION_162_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1DC5166EC();
}

BOOL OUTLINED_FUNCTION_164_2()
{

  return sub_1DC2CF098(v0, v2 - 128, v1);
}

uint64_t sub_1DC3FEBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a1;
  v176 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D770, &qword_1DC529698);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v161 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v167 = v149 - v8;
  OUTLINED_FUNCTION_12();
  v180 = sub_1DC510FDC();
  v9 = OUTLINED_FUNCTION_0(v180);
  v168 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v179 = v14 - v13;
  OUTLINED_FUNCTION_12();
  v184 = sub_1DC51179C();
  v15 = OUTLINED_FUNCTION_0(v184);
  v159 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_1DC51164C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v183 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v166 = sub_1DC51122C();
  v30 = OUTLINED_FUNCTION_0(v166);
  v162 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v165 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v182 = v149 - v40;
  OUTLINED_FUNCTION_12();
  v177 = sub_1DC5157EC();
  v41 = OUTLINED_FUNCTION_0(v177);
  v164 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v160 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v163 = v149 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v49 = OUTLINED_FUNCTION_10(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = v149 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v55 = OUTLINED_FUNCTION_10(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = v149 - v58;
  v60 = type metadata accessor for NLRouterNLParseResponse(0);
  v61 = OUTLINED_FUNCTION_35(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_1();
  v169 = (v65 - v64);
  OUTLINED_FUNCTION_12();
  v66 = sub_1DC516F5C();
  v67 = OUTLINED_FUNCTION_0(v66);
  v174 = v68;
  v175 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_1();
  v73 = v72 - v71;
  v74 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v75 = sub_1DC2BE518();
  v76 = OUTLINED_FUNCTION_130();
  v173 = v73;
  v172 = v74;
  sub_1DC2A2ED0("HeuristicRules.DismissalRule", 28, 2, v75, v76 & 1, v73);

  v77 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v178 + *(v77 + 8), v53, &qword_1ECC7C158, &unk_1DC5234A0);
  v78 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v78) == 1)
  {
    sub_1DC28EB30(v53, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v60);
    goto LABEL_4;
  }

  sub_1DC28F358(v53, v59, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v53, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
LABEL_4:
    sub_1DC28EB30(v59, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    OUTLINED_FUNCTION_8_20();
    goto LABEL_6;
  }

  sub_1DC2E53A4(v59, v169);
  v88 = type metadata accessor for NLRouterBypassUtils();
  v89 = v178;
  v90 = sub_1DC308500(*(v178 + *(v77 + 6)));
  v91 = v177;
  if (v90)
  {
    v92 = *(v77 + 5);
    sub_1DC309C94();
    if (v93)
    {
      sub_1DC517B9C();
      v94 = sub_1DC2BE518();
      sub_1DC516F0C();

      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v91);
      v77 = v174;
      v22 = v175;
      v29 = v173;
      goto LABEL_6;
    }
  }

  v170 = v88;
  v171 = v22;
  v98 = type metadata accessor for HeuristicRoutingRequest(0);
  v99 = v164;
  v100 = *(v164 + 16);
  v158 = *(v98 + 20);
  v101 = v163;
  v100(v163, v89 + v158, v91);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v102 = sub_1DC34596C();
  v104 = v103;
  v105 = sub_1DC312FB4(0);
  v77 = v106;
  if (v102 == v105 && v104 == v106)
  {

    goto LABEL_20;
  }

  v108 = sub_1DC51825C();

  if (v108)
  {
    goto LABEL_20;
  }

  sub_1DC34596C();
  v109 = sub_1DC312F68();
  if (v109 == 4)
  {
    v110 = v182;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v91);
LABEL_19:
    sub_1DC28EB30(v110, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_20;
  }

  v110 = v182;
  sub_1DC312E7C(v109, v182);
  if (__swift_getEnumTagSinglePayload(v110, 1, v91) == 1)
  {
    goto LABEL_19;
  }

  v119 = *(v99 + 32);
  v149[1] = v99 + 32;
  v149[0] = v119;
  result = v119(v160, v110, v91);
  v157 = *v169;
  v22 = v171;
  v156 = *(v157 + 16);
  if (!v156)
  {
    goto LABEL_52;
  }

  v120 = 0;
  v155 = v157 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
  v154 = v162 + 16;
  v181 = v183 + 16;
  v121 = (v159 + 8);
  ++v168;
  v152 = *MEMORY[0x1E69D1DD0];
  v151 = *MEMORY[0x1E69D1DC0];
  v150 = *MEMORY[0x1E69D1DC8];
  v122 = (v183 + 8);
  v153 = v162 + 8;
  while (2)
  {
    if (v120 >= *(v157 + 16))
    {
LABEL_55:
      __break(1u);
      return result;
    }

    (*(v162 + 16))(v165, v155 + *(v162 + 72) * v120, v166);
    v159 = v120 + 1;
    result = sub_1DC5111AC();
    v123 = result;
    v124 = 0;
    v182 = *(result + 16);
    while (v182 != v124)
    {
      if (v124 >= *(v123 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      (*(v183 + 16))(v29, v123 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v124, v22);
      sub_1DC51154C();
      v125 = sub_1DC51177C();
      v77 = *v121;
      (*v121)(v21, v184);
      if (v125)
      {
        sub_1DC51154C();
        v126 = v179;
        sub_1DC51178C();
        (v77)(v21, v184);
        v127 = sub_1DC307E5C();
        v128 = v126;
        v22 = v171;
        (*v168)(v128, v180);
        if (v127)
        {

          sub_1DC51478C();

          v77 = &qword_1DC5238B0;
          sub_1DC28F358(v187, v186, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v186[3])
          {
            sub_1DC514D2C();
            if (swift_dynamicCast())
            {
              v77 = v185;

              sub_1DC51392C();

              if (v186[0])
              {
                v129 = v167;
                sub_1DC514A4C();

                v130 = v129;
                v22 = v171;

                sub_1DC28EB30(v187, &qword_1ECC7D3F0, &qword_1DC5238B0);
                v131 = sub_1DC514A5C();
                if (__swift_getEnumTagSinglePayload(v130, 1, v131) != 1)
                {
                  v77 = v161;
                  sub_1DC28F358(v130, v161, &qword_1ECC7D770, &qword_1DC529698);
                  v132 = *(v131 - 8);
                  v133 = (*(v132 + 88))(v77, v131);
                  if (v133 == v152 || v133 == v151 || v133 == v150)
                  {
                    sub_1DC28EB30(v167, &qword_1ECC7D770, &qword_1DC529698);
                    (*v122)(v29, v22);

                    v145 = OUTLINED_FUNCTION_4_32();
                    v146(v145);
                    v147 = v177;
                    (*(v164 + 8))(v163, v177);
                    OUTLINED_FUNCTION_1_34();
                    v148 = v176;
                    (v149[0])(v176, v160, v147);
                    v82 = v148;
                    v83 = 0;
                    v84 = 1;
                    v85 = v147;
                    goto LABEL_5;
                  }

                  (*(v132 + 8))(v77, v131);
                  v130 = v167;
                }
              }

              else
              {
                sub_1DC28EB30(v187, &qword_1ECC7D3F0, &qword_1DC5238B0);

                sub_1DC514A5C();
                v130 = v167;
                OUTLINED_FUNCTION_19();
                __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
              }

              v136 = v130;
              v137 = &qword_1ECC7D770;
              v138 = &qword_1DC529698;
              goto LABEL_49;
            }
          }

          else
          {

            sub_1DC28EB30(v186, &qword_1ECC7D3F0, &qword_1DC5238B0);
          }

          v136 = v187;
          v137 = &qword_1ECC7D3F0;
          v138 = &qword_1DC5238B0;
LABEL_49:
          sub_1DC28EB30(v136, v137, v138);
        }
      }

      result = (*v122)(v29, v22);
      ++v124;
    }

    v143 = OUTLINED_FUNCTION_4_32();
    v144(v143);

    v120 = v159;
    if (v159 != v156)
    {
      continue;
    }

    break;
  }

LABEL_52:
  v99 = v164;
  v91 = v177;
  (*(v164 + 8))(v160, v177);
  v101 = v163;
LABEL_20:
  v114 = sub_1DC5157DC();
  OUTLINED_FUNCTION_1_34();
  if (v114)
  {
    v115 = *(v99 + 8);
    v22 = v99 + 8;
    v115(v101, v91);
    v116 = v176;
  }

  else
  {
    v117 = *(v99 + 32);
    v22 = v99 + 32;
    v116 = v176;
    v117(v176, v101, v91);
  }

  OUTLINED_FUNCTION_8_20();
  __swift_storeEnumTagSinglePayload(v116, v118, 1, v91);
LABEL_6:
  v86 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (v77[1])(v29, v22);
}