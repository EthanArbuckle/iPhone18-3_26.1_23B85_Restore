uint64_t OUTLINED_FUNCTION_31_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_11()
{
  result = v0;
  v3 = *(v1 - 160);
  v4 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_143()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_147_2()
{
  v2 = *(v1 - 248);
  v3 = **(v1 - 256);
  return v0;
}

uint64_t OUTLINED_FUNCTION_338()
{
  v1 = *(v0 - 216);
  v2 = *(*(v0 - 224) + 8);
  return *(v0 - 264);
}

uint64_t sub_1DC2A3B80()
{
  v190 = v0;
  v1 = v0[36];
  sub_1DC297814();
  v2 = sub_1DC2A48A4();
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = sub_1DC296DBC();
  v7 = OUTLINED_FUNCTION_54_2();
  sub_1DC2A2ED0(v7, v8, v5, v6, 1, v9);

  if ((sub_1DC29F950(0) & 1) == 0)
  {
    v41 = v0[36];
    v42 = v0[34];
    sub_1DC517B9C();
    v43 = sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    v44 = *v2;
    v45 = v2[1];
    v46 = *(v2 + 16);
    v47 = sub_1DC296DBC();
    OUTLINED_FUNCTION_301_0();
    sub_1DC2B8848();

    v48 = *(v42 + 8);
LABEL_13:
    v187 = 1;
    goto LABEL_14;
  }

  v10 = v0[32];
  v11 = v0[30];
  v183 = v0[27];
  v186 = v2;
  v178 = v0[35];
  v181 = v0[26];
  v13 = v0[10];
  v12 = v0[11];
  v14 = *(v0[31] + 16);
  v15 = OUTLINED_FUNCTION_47_6();
  v14(v15);
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x98))(v10);
  sub_1DC517B9C();
  v16 = OUTLINED_FUNCTION_481();
  OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C();

  v17 = OUTLINED_FUNCTION_47_6();
  v173 = v14;
  v14(v17);
  v18 = sub_1DC2A48B0();
  v176 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xE0);
  v176(v18);
  v19 = sub_1DC2A51CC();
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = sub_1DC296DBC();
  v24 = OUTLINED_FUNCTION_45_2();
  sub_1DC2A2ED0(v24, v25, v22, v23, 1, v26);

  sub_1DC2A33E8();
  v27 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v27, v28, v183);
  if (v29)
  {
    v30 = v0[35];
    v31 = v0[36];
    v32 = v0[33];
    v33 = v0[34];
    sub_1DC28EB30(v0[26], &qword_1ECC7DA38, &qword_1DC52A700);
    sub_1DC517BAC();
    v34 = sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    v35 = *(v33 + 8);
    v36 = OUTLINED_FUNCTION_63_0();
    v35(v36);
    v37 = *v186;
    v38 = v186[1];
    v39 = *(v186 + 16);
    v40 = sub_1DC296DBC();
LABEL_12:
    sub_1DC2B8848();

    v48 = v35;
    goto LABEL_13;
  }

  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_1DC2A5208();
  v50 = v49;
  v52 = v51;
  v184 = v0;
  OUTLINED_FUNCTION_142();
  qword_1ECC7BD00 = v50;
  unk_1ECC7BD08 = v52;

  v53 = OUTLINED_FUNCTION_31_0();
  sub_1DC2A5760(v53, v54);
  v55 = sub_1DC517B8C();
  v56 = sub_1DC296DBC();
  if (os_log_type_enabled(v56, v55))
  {
    OUTLINED_FUNCTION_63();
    v58 = OUTLINED_FUNCTION_115_4();
    v189[0] = v58;
    *v22 = 136446210;
    OUTLINED_FUNCTION_75();
    sub_1DC2B8808();

    v59 = OUTLINED_FUNCTION_45_2();
    v62 = sub_1DC291244(v59, v60, v61);

    *(v22 + 4) = v62;
    _os_log_impl(&dword_1DC287000, v56, v55, "NLRouter asset info: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_67();
  }

  else
  {
  }

  v0 = v184;
  v63 = v184[35];
  v64 = v184[29];
  v65 = v184[22];
  v170 = v184[23];
  v66 = *v19;
  v67 = v19[1];
  v68 = *(v19 + 16);
  v69 = sub_1DC296DBC();
  OUTLINED_FUNCTION_220_0();
  sub_1DC2B8848();

  sub_1DC510E0C();
  sub_1DC51508C();
  v70 = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_39(v70, v71, v170);
  if (v29)
  {
    v72 = v184[35];
    v179 = v184[36];
    v73 = v184[33];
    v74 = v184[34];
    v76 = v184[28];
    v75 = v184[29];
    v77 = v184[27];
    sub_1DC28EB30(v184[22], &qword_1ECC7DA30, &qword_1DC52A6F8);
    sub_1DC517BAC();
    v78 = sub_1DC296DBC();
    sub_1DC516F0C();

    v79 = *(v76 + 8);
    v80 = OUTLINED_FUNCTION_54_2();
    v81(v80);
    v35 = *(v74 + 8);
    v82 = OUTLINED_FUNCTION_63_0();
    v35(v82);
    v83 = *v186;
    v84 = v186[1];
    v85 = *(v186 + 16);
    v40 = sub_1DC296DBC();
    goto LABEL_12;
  }

  v96 = v184[24];
  v97 = v184[25];
  v98 = v184[23];
  v166 = v184[21];
  v168 = v184[20];
  v99 = v184[19];
  v171 = v184[18];
  v100 = v184[17];
  v101 = v184[10];
  v102 = v184[11];
  (*(v96 + 32))(v97, v184[22], v98);
  v103 = (v101 + *(type metadata accessor for ServiceSetupConfiguration(0) + 20));
  if (!*(v103 + 4))
  {
    v104 = *v103;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA40, &qword_1DC52A708);
  v105 = *(v96 + 72);
  v106 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1DC522F20;
  (*(v96 + 16))(v107 + v106, v97, v98);
  sub_1DC51506C();
  sub_1DC51511C();
  v108 = *(v99 + 16);
  v109 = OUTLINED_FUNCTION_74();
  v110(v109);
  v111 = sub_1DC51505C();
  v112 = *(v111 + 48);
  v113 = *(v111 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_56_7();
  v114 = sub_1DC51503C();
  v115 = MEMORY[0x1E69E7D40];
  v116 = (*((*MEMORY[0x1E69E7D40] & *v102) + 0xB0))(v114);
  if ((*((*v115 & *v102) + 0xA8))(v116))
  {
    sub_1DC51504C();
  }

  v117 = v184[15];
  (*(v117 + 104))(v184[16], *MEMORY[0x1E69ABD18], v184[14]);
  v118 = sub_1DC51743C();
  v119 = *(v117 + 8);
  v120 = OUTLINED_FUNCTION_31_0();
  v121(v120);
  if (v118)
  {
    v122 = v184[13];
    v123 = v184[11];
    sub_1DC517AAC();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
    v128 = swift_allocObject();
    v128[2] = 0;
    v128[3] = 0;
    v128[4] = v123;
    v129 = v123;
    v130 = OUTLINED_FUNCTION_75_6();
    sub_1DC315A04(v130, v131, v122, v132, v128);
  }

  v133 = v184[32];
  v134 = v184[30];
  v135 = v184[10];
  sub_1DC517B9C();
  v136 = sub_1DC296DBC();
  OUTLINED_FUNCTION_208();
  sub_1DC516F0C();

  type metadata accessor for MorphunTokenizer();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_75_4();
  v173(v137);
  sub_1DC453C48(v188);
  sub_1DC453C88(v189);
  v138 = sub_1DC453CA0(v133, v188, v189);
  if (v138)
  {
    v139 = &off_1F57FF458;
  }

  else
  {
    v136 = 0;
    v139 = 0;
    v189[1] = 0;
    v189[2] = 0;
  }

  v174 = v184[35];
  v175 = v184[36];
  v140 = v184[34];
  v141 = v184[29];
  v169 = v141;
  v172 = v184[33];
  v165 = v184[28];
  v167 = v184[27];
  v142 = v184[24];
  v163 = v184[23];
  v164 = v184[25];
  v143 = v184[19];
  v161 = v184[18];
  v162 = v184[21];
  v144 = v184[12];
  v145 = v184[11];
  v146 = v184[10];
  v189[0] = v138;
  v189[3] = v136;
  v189[4] = v139;
  (*((*MEMORY[0x1E69E7D40] & *v145) + 0xF8))(v189);
  type metadata accessor for NLRouterModelFeatureSet();
  v147 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A329C(v147, v148);
  v149 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A30F8(v149, v150, v146);
  v151 = OUTLINED_FUNCTION_63_0();
  sub_1DC2A5760(v151, v152);
  v153 = sub_1DC2BE10C();
  v176(v153);
  sub_1DC2BAA34(v146, v144);
  v0 = v184;
  (*((*MEMORY[0x1E69E7D40] & *v145) + 0x128))(v144);
  sub_1DC517B9C();
  v154 = sub_1DC296DBC();
  sub_1DC516F0C();

  sub_1DC2BBBB0(v184 + 2);
  sub_1DC2BAC2C(v146, v184 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v184 + 2);
  sub_1DC517B9C();
  v155 = sub_1DC296DBC();
  sub_1DC516F0C();

  (*(v143 + 8))(v162, v161);
  (*(v142 + 8))(v164, v163);
  (*(v165 + 8))(v169, v167);
  v156 = *(v140 + 8);
  v156(v174, v172);
  v157 = *v186;
  v158 = v186[1];
  v159 = *(v186 + 16);
  v160 = sub_1DC296DBC();
  sub_1DC2B8848();

  v48 = v156;
  v187 = 0;
LABEL_14:
  v86 = v0[35];
  v87 = v0[32];
  v88 = v0[29];
  v90 = v0[25];
  v89 = v0[26];
  v92 = v0[21];
  v91 = v0[22];
  v93 = v0[20];
  v177 = v0[17];
  v180 = v0[16];
  v182 = v0[13];
  v185 = v0[12];
  v48(v0[36], v0[33]);

  v94 = v0[1];

  return v94(v187);
}

uint64_t sub_1DC2A4780()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_42_6()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_42_14()
{
  v1 = *(v0 - 144);
  *(v0 - 136) = v1 + 16;
  *(v0 - 152) = v1 + 8;
}

uint64_t sub_1DC2A48B0()
{
  OUTLINED_FUNCTION_155();
  type metadata accessor for NLRouterModelFeatureSet();
  sub_1DC2A495C(v0);
  v1 = *sub_1DC297438();
  v2 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 8);

  v5 = OUTLINED_FUNCTION_46_6();
  v4(v5);
  return OUTLINED_FUNCTION_62_2();
}

uint64_t sub_1DC2A495C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_68();
  v4 = sub_1DC2A30F8(v2, v3, a1);

  return v4;
}

unsigned __int8 *sub_1DC2A49A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v42 - v8;
  if (!a2)
  {
    return 0;
  }

  v43 = a1;
  v44 = a2;
  v42[0] = 46;
  v42[1] = 0xE100000000000000;
  v10 = sub_1DC510C8C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_1DC2A32B0();
  sub_1DC517E2C();
  v12 = v11;
  sub_1DC28EB30(v9, &qword_1ECC7CD00, &unk_1DC5259F0);
  if (v12)
  {
    return 0;
  }

  v14 = sub_1DC5179AC();
  v15 = MEMORY[0x1E1296060](v14);
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  v19 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    return 0;
  }

  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) != 0)
    {
      v43 = v15;
      v44 = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v15 == 43)
      {
        if (v18)
        {
          if (v18 != 1)
          {
            OUTLINED_FUNCTION_33_15();
            while (1)
            {
              OUTLINED_FUNCTION_4_23();
              if (!v24 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_2_26();
              if (!v24)
              {
                break;
              }

              v22 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              OUTLINED_FUNCTION_24_11();
              if (v24)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_83:
        __break(1u);
        return result;
      }

      if (v15 != 45)
      {
        if (v18)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_23();
            if (!v24 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_2_26();
            if (!v24)
            {
              break;
            }

            v22 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            OUTLINED_FUNCTION_24_11();
            if (v24)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          OUTLINED_FUNCTION_33_15();
          while (1)
          {
            OUTLINED_FUNCTION_4_23();
            if (!v24 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_2_26();
            if (!v24)
            {
              break;
            }

            v22 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            OUTLINED_FUNCTION_24_11();
            if (v24)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        result = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_31_0();
        result = sub_1DC517F8C();
      }

      v21 = *result;
      if (v21 == 43)
      {
        if (v19 >= 1)
        {
          if (v19 != 1)
          {
            v22 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_4_23();
                if (!v24 & v23)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_2_26();
                if (!v24)
                {
                  goto LABEL_71;
                }

                v22 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_24_11();
                if (v24)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_82;
      }

      if (v21 != 45)
      {
        if (v19)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_71;
              }

              v35 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_71;
              }

              v22 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v19)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v22 = 0;
        v27 = 1;
        goto LABEL_72;
      }

      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_23();
              if (!v24 & v23)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_2_26();
              if (!v24)
              {
                goto LABEL_71;
              }

              v22 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_24_11();
              if (v24)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v27 = 0;
LABEL_72:
          LOBYTE(v42[0]) = v27;
          v38 = v27;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  LOBYTE(v42[0]) = 0;
  v39 = OUTLINED_FUNCTION_31_0();
  v22 = sub_1DC3B0F74(v39, v40, 10);
  v38 = v41;
LABEL_73:

  if (v38)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_1DC2A4D24(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = (8 * v7);
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](a1);
    v8 = (v22 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    v22[0] = v7;
    sub_1DC2A3304(0, v7, v8);
    v23 = 0;
    v9 = 0;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v7 = v14 | (v9 << 6);
      v25 = *(*(a3 + 48) + v7);
      v17 = v24(&v25);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      if (v17)
      {
        *(v8 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_17:
          a2 = sub_1DC2A4FA8(v8, v22[0], v23, a3);
          goto LABEL_18;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(a3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  a2 = sub_1DC456600(v21, v7, a3, v24);

  MEMORY[0x1E1298840](v21, -1, -1);
LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DC2A4FA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E020, &qword_1DC52F1E0);
  result = sub_1DC517F0C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1DC5182FC();
    MEMORY[0x1E1296BB0](v16);
    result = sub_1DC51833C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_177_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 152);
  v9 = *(v6 - 152);

  _os_log_impl(a1, v5, v9, a4, v4, 0x16u);
}

void sub_1DC2A5208()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC510DBC();
  v1 = OUTLINED_FUNCTION_3_33(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF78, &qword_1DC52E9F0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_13();
  sub_1DC510DFC();
  v12 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v13 = *(v12 + 8);
  sub_1DC510DCC();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  sub_1DC510D7C();
  sub_1DC510DAC();
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_29_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_56_0();
  nullsub_1(v17, v18);
  OUTLINED_FUNCTION_192();
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_35_0();
  v21(v20);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2A5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DC2A5664()
{
  v1 = OBJC_IVAR___CDMDeviceStateLogger_memoryPressureSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

unint64_t sub_1DC2A56AC()
{
  result = qword_1EDAC7FC0;
  if (!qword_1EDAC7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC7CD40, &unk_1DC523860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FC0);
  }

  return result;
}

uint64_t sub_1DC2A5730()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C888, &qword_1DC523498);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1DC2A5760(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

size_t sub_1DC2A5828(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2A5EB4(v8, v7);
  v10 = *(sub_1DC5109BC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC319260(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1DC2A592C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  OUTLINED_FUNCTION_30();
  v3 = sub_1DC5176FC();
  v4 = [v2 fileExistsAtPath_];

  if (!v4)
  {
    v29 = sub_1DC517BAC();
    sub_1DC297814();
    v30 = sub_1DC2A5914();
    if (os_log_type_enabled(v30, v29))
    {
      OUTLINED_FUNCTION_11();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v33 = OUTLINED_FUNCTION_30();
      *(v31 + 4) = sub_1DC291244(v33, v34, v35);
      v36 = "Overrides file does not exist: %s";
LABEL_9:
      _os_log_impl(&dword_1DC287000, v30, v29, v36, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

LABEL_10:

    return 0;
  }

  v5 = sub_1DC51795C();
  sub_1DC517B9C();
  v6 = sub_1DC297814();
  sub_1DC2A5914();
  OUTLINED_FUNCTION_22_9();
  v9 = os_log_type_enabled(v7, v8);
  if ((v5 & 1) == 0)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_11();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v74 = swift_slowAlloc();
      *v39 = 136315138;
      v40 = OUTLINED_FUNCTION_30();
      *(v39 + 4) = sub_1DC291244(v40, v41, v42);
      OUTLINED_FUNCTION_7_11();
      _os_log_impl(v43, v44, v45, v46, v47, v48);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    OUTLINED_FUNCTION_30();
    v49 = sub_1DC5176FC();
    v50 = [v2 contentsAtPath_];

    if (v50)
    {
      v22 = sub_1DC510A0C();
      v24 = v51;

      v52 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
      v53 = OUTLINED_FUNCTION_23_14();
      v28 = v54(v53);
      goto LABEL_17;
    }

    v29 = sub_1DC517BAC();
    v30 = sub_1DC2A5914();
    if (os_log_type_enabled(v30, v29))
    {
      OUTLINED_FUNCTION_11();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v70 = OUTLINED_FUNCTION_30();
      *(v31 + 4) = sub_1DC291244(v70, v71, v72);
      v36 = "Failed reading overrides file: %s";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_11();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v73 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = OUTLINED_FUNCTION_30();
    *(v10 + 4) = sub_1DC291244(v11, v12, v13);
    OUTLINED_FUNCTION_7_11();
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  OUTLINED_FUNCTION_30();
  v20 = sub_1DC5176FC();
  v21 = [v2 contentsAtPath_];

  if (!v21)
  {
    v29 = sub_1DC517BAC();
    v30 = sub_1DC2A5914();
    if (!os_log_type_enabled(v30, v29))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_11();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v32 = swift_slowAlloc();
    *v31 = 136315138;
    v67 = OUTLINED_FUNCTION_30();
    *(v31 + 4) = sub_1DC291244(v67, v68, v69);
    v36 = "Failed reading NLRouter overrides json: %s";
    goto LABEL_9;
  }

  v22 = sub_1DC510A0C();
  v24 = v23;

  v25 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v26 = OUTLINED_FUNCTION_23_14();
  v28 = v27(v26);
LABEL_17:
  v37 = v28;
  sub_1DC2AD740(v22, v24);
  if (!v1)
  {

    return v37;
  }

  sub_1DC517BAC();
  v55 = v6;
  sub_1DC2A5914();
  OUTLINED_FUNCTION_22_9();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_3();
    v75 = swift_slowAlloc();
    *v58 = 136315394;
    v60 = OUTLINED_FUNCTION_30();
    v63 = sub_1DC291244(v60, v61, v62);
    OUTLINED_FUNCTION_28_10(v63);
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 14) = v64;
    *v59 = v64;
    OUTLINED_FUNCTION_27_12(&dword_1DC287000, v65, v66, "Error parsing overrides file at %s: %@");
    sub_1DC37BD24(v59, &qword_1ECC7DFE0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  return 0;
}

size_t sub_1DC2A5EB4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C958, &unk_1DC523D28);
  v4 = *(sub_1DC5109BC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2A6184(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1DC2A61CC()
{
  v2 = sub_1DC517BEC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v8 = sub_1DC517BCC();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = sub_1DC5173CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_1();
  v14 = OBJC_IVAR___CDMDeviceStateLogger_queue;
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173BC();
  v19 = 0;
  OUTLINED_FUNCTION_4_33();
  sub_1DC2A6184(v15, v16);
  sub_1DC5183DC();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8098], v2);
  *&v0[v14] = sub_1DC517C1C();
  *&v0[OBJC_IVAR___CDMDeviceStateLogger_memoryPressureSource] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for DeviceStateLogger();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_21_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = (a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 23;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_15()
{
  v2 = *(v0 + 8);
  result = *(v1 - 264);
  v4 = *(v1 - 256);
  return result;
}

uint64_t sub_1DC2A65E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC51670C();
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = sub_1DC511FFC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - v18;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v20 = OUTLINED_FUNCTION_30();
  sub_1DC2A6784(v20, v21);
  sub_1DC5166FC();
  sub_1DC2A67DC();
  OUTLINED_FUNCTION_30();
  sub_1DC51677C();
  if (!v2)
  {
    (*(v11 + 16))(v16, v19, v8);
    a2 = sub_1DC2A72B0(v16);
    (*(v11 + 8))(v19, v8);
  }

  return a2;
}

uint64_t sub_1DC2A6784(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1DC2A67DC()
{
  result = qword_1ECC7BDB8;
  if (!qword_1ECC7BDB8)
  {
    sub_1DC511FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BDB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1DC28F358(va1, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_50_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_11(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_12()
{

  return swift_dynamicCast();
}

size_t sub_1DC2A6974(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1DC2AC408(v14, v13, a5, a6, a7);
  v16 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v11)
  {
    sub_1DC2AB394(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1DC2A6A80()
{
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC5122FC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v62 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = sub_1DC511FBC();
  v15 = v14;
  v16 = sub_1DC511F5C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v13;
    v53 = v15;
    v54 = v0;
    v64 = MEMORY[0x1E69E7CC0];
    v55 = v17;
    sub_1DC2DAC98(0, v17, 0);
    v18 = 0;
    v19 = *(v6 + 80);
    OUTLINED_FUNCTION_24();
    v20 = v64;
    v59 = v16 + v21;
    v57 = v6;
    v58 = v6 + 16;
    v60 = v6 + 8;
    v61 = v16;
    v56 = v12;
    while (v18 < *(v16 + 16))
    {
      v22 = *(v6 + 16);
      v22(v12, v59 + *(v6 + 72) * v18, v3);
      v23 = v62;
      v22(v62, v12, v3);
      sub_1DC2DCA34(v23, v24, v25, v26, v27, v28, v29, v30, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
      if (v2)
      {

        v46 = sub_1DC51208C();
        OUTLINED_FUNCTION_0_2(v46);
        (*(v47 + 8))(v54);
        v48 = OUTLINED_FUNCTION_59();
        v49(v48, v3);

        return;
      }

      v34 = v31;
      v35 = v32;
      v36 = v33;
      v63 = 0;
      v37 = OUTLINED_FUNCTION_59();
      v38 = v3;
      v39(v37, v3);
      v64 = v20;
      v41 = *(v20 + 16);
      v40 = *(v20 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_26(v40);
        sub_1DC2DAC98(v43, v41 + 1, 1);
        v20 = v64;
      }

      ++v18;
      *(v20 + 16) = v41 + 1;
      v42 = (v20 + 24 * v41);
      v42[4] = v34;
      v42[5] = v35;
      v42[6] = v36;
      v3 = v38;
      v12 = v56;
      v6 = v57;
      v2 = v63;
      v16 = v61;
      if (v55 == v18)
      {
        v50 = sub_1DC51208C();
        OUTLINED_FUNCTION_0_2(v50);
        (*(v51 + 8))(v54);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    v44 = sub_1DC51208C();
    OUTLINED_FUNCTION_0_2(v44);
    (*(v45 + 8))(v0);
  }
}

size_t sub_1DC2A6D98(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_1DC2D502C(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_1DC2A6F60()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_52(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC3FE7DC(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2A710C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = OUTLINED_FUNCTION_384();
  v17 = v7(v16);
  OUTLINED_FUNCTION_52(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v22[2] = v14;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_19:
  v25 = v7(0);
  OUTLINED_FUNCTION_50(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC43EF94(v8 + v28, v14, v22 + v28, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2A72B0(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1DC2A731C();
  v2 = sub_1DC511FFC();
  OUTLINED_FUNCTION_0_2(v2);
  (*(v3 + 8))(a1);
  return v5;
}

void sub_1DC2A731C()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0C0, &unk_1DC5229F0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v67 - v5;
  v7 = type metadata accessor for NLRouterOverride(0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v69 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v71 = v12 - v13;
  OUTLINED_FUNCTION_22();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v68 = v18;
  OUTLINED_FUNCTION_12();
  v83 = sub_1DC511FDC();
  v19 = OUTLINED_FUNCTION_0(v83);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v75 = v24 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v67 - v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  v70 = v0;
  v31 = *(*v0 + 16);
  v32 = sub_1DC511FEC();
  v33 = 0;
  v82 = *(v32 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  v81 = v21;
  *&v34 = 136315394;
  v73 = v34;
  v78 = v21 + 16;
  v79 = v32;
  v76 = v17;
  v77 = (v21 + 8);
  v74 = v30;
LABEL_2:
  v35 = v83;
  while (1)
  {
    if (v82 == v33)
    {

      sub_1DC2AD5B0(v72);
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v33 >= *(v32 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    v39 = *(v38 + 72);
    v85 = v40;
    v41 = *(v38 + 16);
    v41(v30, v36 + v37 + v39 * v40, v35);
    v42 = v80;
    v41(v80, v30, v35);
    sub_1DC2A793C(v42, v31, v43, v44, v45, v46, v47, v48, v67, v68);
    v49 = __OFADD__(v31, 1);
    v50 = v31 + 1;
    if (v49)
    {
      goto LABEL_16;
    }

    v84 = v50;
    OUTLINED_FUNCTION_7_3();
    sub_1DC2A94B0(v17, v6);
    OUTLINED_FUNCTION_18_3();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    (*v77)(v30, v35);
    OUTLINED_FUNCTION_5_3(v6);
    if (!v55)
    {
      v56 = v68;
      sub_1DC2A94B0(v6, v68);
      sub_1DC2A94B0(v56, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_1DC2DF3B0(0, *(v72 + 16) + 1, 1, v72);
      }

      v59 = *(v72 + 16);
      v58 = *(v72 + 24);
      if (v59 >= v58 >> 1)
      {
        v66 = OUTLINED_FUNCTION_26(v58);
        v72 = sub_1DC2DF3B0(v66, v59 + 1, 1, v72);
      }

      *(v72 + 16) = v59 + 1;
      OUTLINED_FUNCTION_22_0();
      v61 = *(v60 + 72);
      OUTLINED_FUNCTION_7_3();
      v63 = v62;
      sub_1DC2A94B0(v64, v65);
      v33 = v63;
      v32 = v79;
      goto LABEL_2;
    }

    sub_1DC2AAF50(v6, &qword_1ECC7C0C0, &unk_1DC5229F0);
    v31 = v84;
    v33 = v85 + 1;
    v32 = v79;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DC2A793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v116 = v10;
  v112 = v11;
  v13 = v12;
  v15 = v14;
  v16 = sub_1DC5165FC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v109 = v18;
  v110 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v108 = v22 - v21;
  OUTLINED_FUNCTION_12();
  v111 = sub_1DC51223C();
  v23 = OUTLINED_FUNCTION_0(v111);
  v118 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v117 = v28 - v27;
  OUTLINED_FUNCTION_12();
  v29 = sub_1DC5122BC();
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  v36 = type metadata accessor for NLRouterOverrideRoute(0);
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v101 - v47;
  v49 = sub_1DC510B6C();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  v57 = (v56 - v55);
  sub_1DC511FBC();
  sub_1DC510B0C();
  v58 = v49;

  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_1DC2AAF50(v48, &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC2D2774();
    OUTLINED_FUNCTION_33_1();
    *v59 = 0xD000000000000016;
    *(v59 + 8) = 0x80000001DC53D2C0;
    *(v59 + 16) = 0;
    swift_willThrow();
    v60 = sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2(v60);
    (*(v61 + 8))(v13);
LABEL_7:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  (*(v52 + 4))(v57, v48, v49);
  (*(v52 + 2))(v15, v57, v49);
  v62 = sub_1DC511F9C();
  v63 = type metadata accessor for NLRouterOverride(0);
  v15[v63[5]] = v62 & 1;
  v15[v63[6]] = sub_1DC511FAC() & 1;
  v15[v63[7]] = sub_1DC511F8C() & 1;
  v15[v63[8]] = sub_1DC511F4C() & 1;
  sub_1DC511FCC();
  v64 = v116;
  sub_1DC2A80D8();
  v65 = v64;
  if (v64)
  {
    v66 = sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2(v66);
    (*(v67 + 8))(v13);
    OUTLINED_FUNCTION_33_3();
    v35(v57, v58);
    goto LABEL_5;
  }

  v106 = v57;
  v107 = 0;
  sub_1DC2A94B0(v42, &v15[v63[10]]);
  v35 = *(sub_1DC511F5C() + 16);

  if (!v35)
  {
    v35 = 0x80000001DC53D2E0;
    sub_1DC2D2774();
    OUTLINED_FUNCTION_33_1();
    *v85 = 0xD000000000000015;
    *(v85 + 8) = 0x80000001DC53D2E0;
    *(v85 + 16) = 0;
    swift_willThrow();
    v86 = sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2(v86);
    (*(v87 + 8))(v13);
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x80000001DC53D2E0](v106, v58);
    v65 = v107;
LABEL_5:
    v35(v15, v58);
    if (!v65)
    {
      v68 = v63[10];
      OUTLINED_FUNCTION_2_8();
      sub_1DC2DFCF4(&v15[v69], v70);
    }

    goto LABEL_7;
  }

  v104 = v58;
  v105 = v13;
  v71 = sub_1DC511F5C();
  if (!*(v71 + 16))
  {

    v76 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *&v15[v63[9]] = v76;
    v92 = v105;
    if (sub_1DC511F7C())
    {
      v93 = v108;
      sub_1DC511F6C();
      v94 = &v15[v63[11]];
      sub_1DC5165EC();
      v95 = sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2(v95);
      (*(v96 + 8))(v92);
      (*(v109 + 8))(v93, v110);
    }

    else
    {
      v97 = &v15[v63[11]];
      sub_1DC510A4C();
      v98 = sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2(v98);
      (*(v99 + 8))(v92, v100);
    }

    (*(v52 + 1))(v106, v104);
    *&v15[v63[12]] = v112;
    goto LABEL_7;
  }

  v102 = v63;
  v103 = v15;
  v72 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
  v113 = v73;
  sub_1DC2A9508(v72, v73, 0);
  v74 = 0;
  OUTLINED_FUNCTION_22_0();
  v116 = v71 + v75;
  v76 = a10;
  v114 = v77 + 8;
  v115 = v77 + 16;
  v78 = v107;
  v79 = v111;
  while (v74 < *(v71 + 16))
  {
    v80 = v117;
    (*(v118 + 16))(v117, v116 + *(v118 + 72) * v74, v79);
    sub_1DC2A9660(v119);
    if (v78)
    {

      v88 = sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2(v88);
      (*(v89 + 8))(v105);
      OUTLINED_FUNCTION_55_3();
      v90(v80, v79);
      OUTLINED_FUNCTION_33_3();
      v91 = v104;
      v35(v106, v104);
      v58 = v91;

      v15 = v103;
      v65 = v107;
      v63 = v102;
      goto LABEL_5;
    }

    v35 = v52;
    OUTLINED_FUNCTION_55_3();
    v81(v80, v79);
    v83 = *(a10 + 16);
    v82 = *(a10 + 24);
    if (v83 >= v82 >> 1)
    {
      v84 = OUTLINED_FUNCTION_26(v82);
      sub_1DC2A9508(v84, v83 + 1, 1);
    }

    ++v74;
    *(a10 + 16) = v83 + 1;
    sub_1DC28F9B0(v119, a10 + 40 * v83 + 32);
    v52 = v35;
    if (v113 == v74)
    {

      v107 = 0;
      v15 = v103;
      v63 = v102;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1DC2A80D8()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v78 = v3;
  v4 = sub_1DC51348C();
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = sub_1DC5122AC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v76 = v10;
  v77 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0C8, &qword_1DC522A08);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = sub_1DC51227C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  sub_1DC51228C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1DC2AAF50(v18, &qword_1ECC7C0C8, &qword_1DC522A08);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_1DC517F4C();
    MEMORY[0x1E1296160](0xD000000000000014, 0x80000001DC53D300);
    MEMORY[0x1E1296160](0xD000000000000015, 0x80000001DC5229F0);
    MEMORY[0x1E1296160](0xD00000000000003ALL, 0x80000001DC53D320);
    sub_1DC2D2774();
    v28 = OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_62_5(v28, v29);
    v30 = sub_1DC5122BC();
    OUTLINED_FUNCTION_0_2(v30);
    (*(v31 + 8))(v2);
  }

  else
  {
    (*(v22 + 32))(v27, v18, v19);
    v32 = *(v22 + 16);
    v33 = OUTLINED_FUNCTION_56();
    v34(v33);
    v35 = *(v22 + 88);
    v36 = OUTLINED_FUNCTION_50_0();
    v38 = v37(v36);
    if (v38 == *MEMORY[0x1E69D0D10])
    {
      v39 = sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2(v39);
      (*(v40 + 8))(v2);
      v41 = *(v22 + 8);
      v42 = OUTLINED_FUNCTION_16();
      v41(v42);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
      __swift_storeEnumTagSinglePayload(v78, 1, 1, v43);
      v44 = OUTLINED_FUNCTION_50_0();
      v41(v44);
    }

    else if (v38 == *MEMORY[0x1E69D0D18])
    {
      v45 = *(v22 + 96);
      v46 = OUTLINED_FUNCTION_50_0();
      v47(v46);
      v48 = v76;
      v49 = *(v76 + 32);
      v50 = OUTLINED_FUNCTION_51();
      v51(v50);
      sub_1DC51229C();
      v52 = v78;
      NLRoutingDecisionMessage.RoutingDecision.init(protobuf:)();
      v53 = sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2(v53);
      (*(v54 + 8))(v2);
      if (v0)
      {
        v55 = *(v48 + 8);
        v56 = OUTLINED_FUNCTION_51();
        v57(v56);
        v58 = *(v22 + 8);
        v59 = OUTLINED_FUNCTION_16();
        v60(v59);
      }

      else
      {
        v68 = *(v48 + 8);
        v69 = OUTLINED_FUNCTION_51();
        v70(v69);
        v71 = *(v22 + 8);
        v72 = OUTLINED_FUNCTION_16();
        v73(v72);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
        __swift_storeEnumTagSinglePayload(v52, 0, 1, v74);
      }
    }

    else
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_1DC517F4C();
      MEMORY[0x1E1296160](0x206E776F6E6B6E55, 0xEE002065756C6176);
      MEMORY[0x1E1296160](0xD000000000000030, 0x80000001DC53D360);
      MEMORY[0x1E1296160](46, 0xE100000000000000);
      sub_1DC517FEC();
      sub_1DC2D2774();
      v61 = OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_62_5(v61, v62);
      v63 = sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2(v63);
      (*(v64 + 8))(v2);
      v65 = *(v22 + 8);
      v66 = OUTLINED_FUNCTION_16();
      v65(v66);
      v67 = OUTLINED_FUNCTION_50_0();
      v65(v67);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

void NLRoutingDecisionMessage.RoutingDecision.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v170 = v2;
  v171 = v0;
  v4 = v3;
  v5 = sub_1DC51313C();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v157 = v9;
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC5133DC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v159 = v12;
  v160 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v158 = v15;
  OUTLINED_FUNCTION_12();
  v167 = sub_1DC51329C();
  v16 = OUTLINED_FUNCTION_0(v167);
  v169 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v165 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v166 = v153 - v23;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DC51588C();
  v24 = OUTLINED_FUNCTION_0(v164);
  v168 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v174 = v28;
  OUTLINED_FUNCTION_12();
  v29 = sub_1DC51333C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v162 = v31;
  v163 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v161 = v34;
  OUTLINED_FUNCTION_12();
  v35 = sub_1DC5132DC();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEE0, &qword_1DC522310);
  OUTLINED_FUNCTION_10(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v153 - v43;
  v45 = sub_1DC51334C();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_42_3();
  sub_1DC51340C();
  OUTLINED_FUNCTION_39(v44, 1, v45);
  if (v55)
  {
    sub_1DC2AAF50(v44, &qword_1ECC7BEE0, &qword_1DC522310);
    sub_1DC2D2774();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_21_4(v56, 50);
    v57 = sub_1DC51348C();
    OUTLINED_FUNCTION_0_2(v57);
    (*(v58 + 8))(v4);
LABEL_9:
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v156 = v4;
  (*(v48 + 32))(v1, v44, v45);
  (*(v48 + 16))(v53, v1, v45);
  v59 = *(v48 + 88);
  v60 = OUTLINED_FUNCTION_30();
  v62 = v61(v60);
  v63 = v45;
  if (v62 == *MEMORY[0x1E69D0F48])
  {
    v64 = sub_1DC51348C();
    OUTLINED_FUNCTION_0_2(v64);
    (*(v65 + 8))(v156);
    v66 = OUTLINED_FUNCTION_53_0();
    v4(v66);
    v67 = MEMORY[0x1E69D02D8];
LABEL_6:
    v68 = *v67;
    v69 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v69);
    (*(v70 + 104))(v170, v68);
    v71 = OUTLINED_FUNCTION_30();
    v4(v71);
    goto LABEL_9;
  }

  if (v62 == *MEMORY[0x1E69D0F40])
  {
    v72 = OUTLINED_FUNCTION_20_5();
    v73(v72);
    v74 = OUTLINED_FUNCTION_9_0();
    v75(v74, v53, v35);
    v76 = sub_1DC5132AC();
    v77 = sub_1DC51348C();
    OUTLINED_FUNCTION_0_2(v77);
    (*(v78 + 8))(v156);
    v79 = OUTLINED_FUNCTION_25_1();
    v80(v79, v35);
    (*(v48 + 8))(v1, v45);
    v81 = v170;
    *v170 = v76;
    v82 = *MEMORY[0x1E69D02D0];
    v83 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v83);
    (*(v84 + 104))(v81, v82);
    goto LABEL_9;
  }

  if (v62 == *MEMORY[0x1E69D0F60])
  {
    v85 = sub_1DC51348C();
    OUTLINED_FUNCTION_0_2(v85);
    (*(v86 + 8))(v156);
    v87 = OUTLINED_FUNCTION_53_0();
    v4(v87);
    v67 = MEMORY[0x1E69D02F8];
    goto LABEL_6;
  }

  v88 = v171;
  if (v62 != *MEMORY[0x1E69D0F38])
  {
    if (v62 == *MEMORY[0x1E69D0F50])
    {
      v154 = v1;
      v107 = OUTLINED_FUNCTION_20_5();
      v108(v107);
      v109 = OUTLINED_FUNCTION_9_0();
      v110 = v53;
      v111 = v160;
      v112(v109, v110, v160);
      sub_1DC5133AC();
      v113 = v170;
      AjaxMetadata.init(protobuf:)();
      v114 = v156;
      v115 = sub_1DC51348C();
      OUTLINED_FUNCTION_0_2(v115);
      (*(v116 + 8))(v114);
      v117 = OUTLINED_FUNCTION_25_1();
      v118(v117, v111);
      (*(v48 + 8))(v154, v45);
      if (!v88)
      {
        v150 = *MEMORY[0x1E69D02E0];
        v151 = sub_1DC5157EC();
        OUTLINED_FUNCTION_35(v151);
        (*(v152 + 104))(v113, v150);
      }
    }

    else
    {
      v119 = v156;
      if (v62 == *MEMORY[0x1E69D0F58])
      {
        v120 = sub_1DC51348C();
        OUTLINED_FUNCTION_0_2(v120);
        (*(v121 + 8))(v119);
        v122 = *(v48 + 8);
        v122(v1, v63);
        v123 = *MEMORY[0x1E69D02F0];
        v124 = sub_1DC5157EC();
        OUTLINED_FUNCTION_35(v124);
        (*(v125 + 104))(v170, v123);
        v126 = OUTLINED_FUNCTION_30();
        (v122)(v126);
      }

      else
      {
        v172 = 0;
        v173 = 0xE000000000000000;
        sub_1DC517F4C();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD000000000000032);
        OUTLINED_FUNCTION_38_5();
        v141 = v1;
        v142 = v63;
        sub_1DC517FEC();
        v143 = v172;
        v144 = v173;
        sub_1DC2D2774();
        v145 = OUTLINED_FUNCTION_33_1();
        *v146 = v143;
        v146[1] = v144;
        OUTLINED_FUNCTION_35_2(v145, v146);
        v147 = sub_1DC51348C();
        OUTLINED_FUNCTION_0_2(v147);
        (*(v148 + 8))(v119);
        v149 = *(v48 + 8);
        v149(v141, v142);
        v149(v53, v142);
      }
    }

    goto LABEL_9;
  }

  v154 = v1;
  v89 = OUTLINED_FUNCTION_20_5();
  v90(v89);
  v91 = v161;
  v92 = v162;
  v93 = v163;
  (*(v162 + 32))(v161, v53, v163);
  v94 = sub_1DC5132AC();
  v95 = *(v94 + 16);
  if (!v95)
  {

    v127 = sub_1DC51348C();
    OUTLINED_FUNCTION_0_2(v127);
    (*(v128 + 8))(v156);
    (*(v92 + 8))(v91, v93);
    (*(v48 + 8))(v154, v63);
    v160 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v137 = v170;
    *v170 = v160;
    v138 = *MEMORY[0x1E69D02C8];
    v139 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v139);
    (*(v140 + 104))(v137, v138);
    goto LABEL_9;
  }

  v153[2] = v63;
  v153[1] = v48;
  v172 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v95, 0);
  v96 = 0;
  OUTLINED_FUNCTION_22_0();
  v158 = v94 + v97;
  v157 = v98 + 16;
  v159 = (v98 + 8);
  v160 = v172;
  v155 = v168 + 32;
  while (v96 < *(v94 + 16))
  {
    v99 = *(v169 + 16);
    v100 = v166;
    v101 = v167;
    v99(v166, v158 + *(v169 + 72) * v96, v167);
    v99(v165, v100, v101);
    NLRoutingDecisionMessage.QueryRewrite.init(protobuf:)();
    if (v88)
    {

      v129 = sub_1DC51348C();
      OUTLINED_FUNCTION_0_2(v129);
      (*(v130 + 8))(v156);
      (*v159)(v100, v101);
      (*(v162 + 8))(v161, v163);
      v131 = OUTLINED_FUNCTION_56_5();
      v132(v131);

      goto LABEL_9;
    }

    (*v159)(v100, v101);
    v172 = v160;
    v103 = *(v160 + 16);
    v102 = *(v160 + 24);
    if (v103 >= v102 >> 1)
    {
      sub_1DC2AA348(v102 > 1, v103 + 1, 1);
      v160 = v172;
    }

    ++v96;
    *(v160 + 16) = v103 + 1;
    OUTLINED_FUNCTION_22_0();
    (*(v106 + 32))(v105 + v104 + *(v106 + 72) * v103, v174, v164);
    v88 = 0;
    if (v95 == v96)
    {

      v133 = sub_1DC51348C();
      OUTLINED_FUNCTION_0_2(v133);
      (*(v134 + 8))(v156);
      (*(v162 + 8))(v161, v163);
      v135 = OUTLINED_FUNCTION_56_5();
      v136(v135);
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_48_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

id OUTLINED_FUNCTION_48_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_7(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 168);

  return sub_1DC515D7C();
}

uint64_t OUTLINED_FUNCTION_48_8()
{
  v2 = *(v0 - 200);

  return sub_1DC5180AC();
}

uint64_t sub_1DC2A9458()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1DC2A94B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

void *sub_1DC2A9508(void *a1, int64_t a2, char a3)
{
  result = sub_1DC2A9528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2A9528(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C048, &unk_1DC522820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2A9660@<X0>(void *a1@<X8>)
{
  v5 = sub_1DC51220C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v97 = v7;
  v98 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v95 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v96 = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC51208C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v99 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_56_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB0, &unk_1DC522530);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40();
  v26 = sub_1DC51205C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v94 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_55_2();
  sub_1DC5121EC();
  v35 = v26;
  if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BFB0, &unk_1DC522530);
    sub_1DC2D2774();
    swift_allocError();
    *v36 = xmmword_1DC522510;
    *(v36 + 16) = 0;
    return swift_willThrow();
  }

  (*(v29 + 32))(v4, v1, v26);
  v38 = v26;
  v39 = *(v29 + 16);
  v39(v3, v4, v38);
  v40 = *(v29 + 88);
  v41 = OUTLINED_FUNCTION_32_1();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x1E69D0CB8])
  {
    OUTLINED_FUNCTION_21_5();
    v44 = OUTLINED_FUNCTION_32_1();
    v45(v44);
    v46 = sub_1DC51222C();
    OUTLINED_FUNCTION_81(&off_1F57F59B0);
    OUTLINED_FUNCTION_7_1(v46);
    (*(v47 + 32))();
    return (*(v29 + 8))(v4, v35);
  }

  if (v43 == *MEMORY[0x1E69D0C50])
  {
    OUTLINED_FUNCTION_21_5();
    v48 = OUTLINED_FUNCTION_32_1();
    v49(v48);
    (*(v99 + 32))(v2, v3, v13);
    (*(v99 + 16))(v20, v2, v13);
    sub_1DC2A6A80();
    if (!v101)
    {
      a1[3] = &type metadata for UtteranceRegexWrapper;
      a1[4] = &off_1F57F59C0;
      *a1 = v50;
      a1[1] = v51;
      a1[2] = v52;
    }

    (*(v99 + 8))(v2, v13);
    return (*(v29 + 8))(v4, v35);
  }

  if (v43 == *MEMORY[0x1E69D0C88])
  {
    OUTLINED_FUNCTION_21_5();
    v53 = OUTLINED_FUNCTION_32_1();
    v54(v53);
    v55 = sub_1DC51216C();
    OUTLINED_FUNCTION_81(&off_1F57F59D0);
    OUTLINED_FUNCTION_7_1(v55);
    v57 = *(v56 + 32);
LABEL_27:
    v57();
    return (*(v29 + 8))(v4, v35);
  }

  if (v43 == *MEMORY[0x1E69D0CA0])
  {
    v58 = OUTLINED_FUNCTION_10_3();
    v59(v58);
    v60 = sub_1DC5121BC();
    v61 = &off_1F57F59E0;
LABEL_26:
    OUTLINED_FUNCTION_81(v61);
    OUTLINED_FUNCTION_7_1(v60);
    v57 = *(v74 + 32);
    goto LABEL_27;
  }

  if (v43 == *MEMORY[0x1E69D0C48])
  {
    v62 = OUTLINED_FUNCTION_10_3();
    v63(v62);
    v60 = sub_1DC51204C();
    v61 = &off_1F57F59F0;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C90])
  {
    v64 = OUTLINED_FUNCTION_10_3();
    v65(v64);
    v60 = sub_1DC51202C();
    v61 = &off_1F57F5A00;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C60])
  {
    v66 = OUTLINED_FUNCTION_10_3();
    v67(v66);
    v60 = sub_1DC5120CC();
    v61 = &off_1F57F5A10;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C78])
  {
    v68 = OUTLINED_FUNCTION_10_3();
    v69(v68);
    v60 = sub_1DC51214C();
    v61 = &off_1F57F5A20;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C58])
  {
    v70 = OUTLINED_FUNCTION_10_3();
    v71(v70);
    v60 = sub_1DC5120BC();
    v61 = &off_1F57F5A30;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C80])
  {
    v72 = OUTLINED_FUNCTION_10_3();
    v73(v72);
    v60 = sub_1DC51200C();
    v61 = &off_1F57F5A40;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0CB0])
  {
    v75 = OUTLINED_FUNCTION_10_3();
    v76(v75);
    v77 = *(v97 + 32);
    v78 = OUTLINED_FUNCTION_47_0();
    v79(v78);
    (*(v97 + 16))(v95, v96, v98);
    sub_1DC2AC14C();
    if (!v101)
    {
      a1[3] = &type metadata for MatchRuleExcludingWrapper;
      a1[4] = &off_1F57F5A70;
      *a1 = v80;
    }

    (*(v97 + 8))(v96, v98);
    return (*(v29 + 8))(v4, v35);
  }

  if (v43 == *MEMORY[0x1E69D0CA8])
  {
    v81 = OUTLINED_FUNCTION_10_3();
    v82(v81);
    v60 = sub_1DC5121DC();
    v61 = &off_1F57F5A50;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C70])
  {
    v83 = OUTLINED_FUNCTION_10_3();
    v84(v83);
    v60 = sub_1DC5120AC();
    v61 = &off_1F57F5A60;
    goto LABEL_26;
  }

  if (v43 == *MEMORY[0x1E69D0C68])
  {
    OUTLINED_FUNCTION_21_5();
    v85(v3, v35);
    v86 = sub_1DC51213C();
    v87 = &off_1F57F5A80;
LABEL_40:
    OUTLINED_FUNCTION_81(v87);
    OUTLINED_FUNCTION_7_1(v86);
    (*(v89 + 32))();
    return (*(v29 + 8))(v4, v35);
  }

  if (v43 == *MEMORY[0x1E69D0C98])
  {
    OUTLINED_FUNCTION_21_5();
    v88(v3, v35);
    v86 = sub_1DC51219C();
    v87 = &off_1F57F5AC0;
    goto LABEL_40;
  }

  sub_1DC517F4C();

  v39(v94, v4, v35);
  v90 = sub_1DC51777C();
  MEMORY[0x1E1296160](v90);

  sub_1DC2D2774();
  swift_allocError();
  *v91 = 0xD000000000000010;
  *(v91 + 8) = 0x80000001DC53D170;
  *(v91 + 16) = 2;
  swift_willThrow();
  v92 = *(v29 + 8);
  v92(v4, v35);
  v93 = OUTLINED_FUNCTION_47_0();
  return (v92)(v93);
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return sub_1DC2DB2AC();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_1DC5179EC();
}

uint64_t OUTLINED_FUNCTION_79_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_7()
{
  v2 = *(v0 - 528);
}

void OUTLINED_FUNCTION_79_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1DC2AA134(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_38_2();
  v8 = sub_1DC510B6C();
  result = OUTLINED_FUNCTION_50(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[9]) = (a2 - 1);
      return result;
    }

    v13 = type metadata accessor for NLRouterOverrideRoute(0);
    v14 = OUTLINED_FUNCTION_50(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[10];
    }

    else
    {
      v11 = sub_1DC510AFC();
      v16 = a4[11];
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DC2AA24C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_38_2();
  v6 = sub_1DC510B6C();
  v7 = OUTLINED_FUNCTION_50(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_54(*(v3 + a3[9]));
    }

    v12 = type metadata accessor for NLRouterOverrideRoute(0);
    v13 = OUTLINED_FUNCTION_50(v12);
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[10];
    }

    else
    {
      v9 = sub_1DC510AFC();
      v15 = a3[11];
    }

    v10 = v3 + v15;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

size_t sub_1DC2AA348(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2A6D98(a1, a2, a3, *v3, &qword_1ECC7BFA8, &unk_1DC5224D0, MEMORY[0x1E69D0348], MEMORY[0x1E69D0348]);
  *v3 = result;
  return result;
}

void NLRoutingDecisionMessage.QueryRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v123 = v0;
  v4 = v3;
  v126 = v5;
  v6 = sub_1DC5135BC();
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v114 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5131FC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v116 = v13;
  v117 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v115 = v16;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC5135EC();
  v18 = OUTLINED_FUNCTION_10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v118 = v21;
  OUTLINED_FUNCTION_12();
  v22 = sub_1DC51325C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v120 = v24;
  v121 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v119 = v27;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC5136CC();
  v29 = OUTLINED_FUNCTION_10(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_4();
  v32 = sub_1DC51317C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v122 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEF0, &qword_1DC522318);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_11_1();
  v44 = sub_1DC51318C();
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_8();
  v52 = (v50 - v51);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v112 - v54;
  sub_1DC5131BC();
  OUTLINED_FUNCTION_39(v1, 1, v44);
  if (!v56)
  {
    v113 = v4;
    v60 = *(v47 + 32);
    v61 = OUTLINED_FUNCTION_50_0();
    v62(v61);
    (*(v47 + 16))(v52, v55, v44);
    v63 = (*(v47 + 88))(v52, v44);
    if (v63 == *MEMORY[0x1E69D0F10])
    {
      v121 = v55;
      v64 = OUTLINED_FUNCTION_19_5();
      v65(v64);
      v66 = v122;
      (*(v122 + 32))(v39, v52, v32);
      sub_1DC51314C();
      v67 = v126;
      v68 = v123;
      NLRoutingDecisionMessage.SiriXQueryRewrite.init(protobuf:)(v2, v126);
      if (v68)
      {
        v69 = sub_1DC51329C();
        OUTLINED_FUNCTION_0_2(v69);
        (*(v70 + 8))(v113);
        (*(v66 + 8))(v39, v32);
        (*(v47 + 8))(v121, v44);
        goto LABEL_17;
      }

      v92 = sub_1DC51329C();
      OUTLINED_FUNCTION_0_2(v92);
      (*(v93 + 8))(v113);
      (*(v66 + 8))(v39, v32);
      v82 = MEMORY[0x1E69D0330];
LABEL_15:
      v94 = *(v47 + 8);
      v95 = OUTLINED_FUNCTION_30();
      v96(v95);
      v97 = *v82;
      v98 = sub_1DC51588C();
      OUTLINED_FUNCTION_35(v98);
      (*(v99 + 104))(v67, v97);
      goto LABEL_17;
    }

    if (v63 == *MEMORY[0x1E69D0F20])
    {
      v71 = OUTLINED_FUNCTION_19_5();
      v72(v71);
      v73 = v119;
      v74 = OUTLINED_FUNCTION_9_0();
      v75 = v121;
      v76(v74, v52, v121);
      v67 = v73;
      sub_1DC51322C();
      OUTLINED_FUNCTION_54_5();
      NLRoutingDecisionMessage.PlannerQueryRewrite.init(protobuf:)();
      v77 = v113;
      if (!v0)
      {
        v78 = sub_1DC51329C();
        OUTLINED_FUNCTION_0_2(v78);
        (*(v79 + 8))(v77);
        v80 = OUTLINED_FUNCTION_25_1();
        v81(v80, v75);
        v82 = MEMORY[0x1E69D0340];
        goto LABEL_15;
      }
    }

    else
    {
      if (v63 != *MEMORY[0x1E69D0F18])
      {
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD00000000000002FLL);
        OUTLINED_FUNCTION_38_5();
        sub_1DC517FEC();
        v100 = v55;
        v101 = v124;
        v102 = v125;
        sub_1DC2D2774();
        v103 = OUTLINED_FUNCTION_33_1();
        *v104 = v101;
        v104[1] = v102;
        OUTLINED_FUNCTION_35_2(v103, v104);
        v105 = sub_1DC51329C();
        OUTLINED_FUNCTION_0_2(v105);
        (*(v106 + 8))(v113);
        v107 = *(v47 + 8);
        v107(v100, v44);
        v107(v52, v44);
        goto LABEL_17;
      }

      v83 = OUTLINED_FUNCTION_19_5();
      v84(v83);
      v85 = v115;
      v86 = OUTLINED_FUNCTION_9_0();
      v75 = v117;
      v87(v86, v52, v117);
      v67 = v85;
      sub_1DC5131CC();
      OUTLINED_FUNCTION_54_5();
      NLRoutingDecisionMessage.SearchQueryRewrite.init(protobuf:)();
      v77 = v113;
      if (!v0)
      {
        v108 = sub_1DC51329C();
        OUTLINED_FUNCTION_0_2(v108);
        (*(v109 + 8))(v77);
        v110 = OUTLINED_FUNCTION_25_1();
        v111(v110, v75);
        v82 = MEMORY[0x1E69D0338];
        goto LABEL_15;
      }
    }

    v88 = sub_1DC51329C();
    OUTLINED_FUNCTION_0_2(v88);
    (*(v89 + 8))(v77);
    v90 = OUTLINED_FUNCTION_25_1();
    v91(v90, v75);
    (*(v47 + 8))(v55, v44);
    goto LABEL_17;
  }

  sub_1DC2AAF50(v1, &qword_1ECC7BEF0, &qword_1DC522318);
  sub_1DC2D2774();
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_21_4(v57, 47);
  v58 = sub_1DC51329C();
  OUTLINED_FUNCTION_0_2(v58);
  (*(v59 + 8))(v4);
LABEL_17:
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_1();
  v10 = sub_1DC51365C();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v36 - v22;
  if (sub_1DC5136AC())
  {
    sub_1DC51366C();
    NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.init(protobuf:)();
    if (v2)
    {
      goto LABEL_9;
    }

    v24 = sub_1DC5157FC();
    v25 = 0;
  }

  else
  {
    v24 = sub_1DC5157FC();
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v25, 1, v24);
  v26 = OUTLINED_FUNCTION_41();
  v28 = sub_1DC2AADC8(v26, v27);
  MEMORY[0x1EEE9AC00](v28);
  v36[-2] = v23;
  v36[-1] = a1;
  sub_1DC51583C();
  v29 = sub_1DC51587C();
  OUTLINED_FUNCTION_39(v3, 1, v29);
  if (v30)
  {
    sub_1DC2AAF50(v3, &qword_1ECC7BF00, &unk_1DC529C30);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_15_0(v31, 92);
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v29);
    (*(v32 + 32))(a2, v3, v29);
  }

  sub_1DC2AAF50(v23, &qword_1ECC7BF08, &unk_1DC522330);
LABEL_9:
  v33 = sub_1DC5136CC();
  OUTLINED_FUNCTION_0_2(v33);
  return (*(v34 + 8))(a1);
}

uint64_t sub_1DC2AADC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2AAE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2AAEA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DC2AAE38(a2, &v9 - v7);
  sub_1DC51584C();
  sub_1DC51368C();
  return sub_1DC51586C();
}

uint64_t sub_1DC2AAF50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void AjaxMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v46 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEF8, &unk_1DC522320);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v9 = sub_1DC51358C();
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_4();
  v13 = sub_1DC5161CC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v47 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v48 = v18;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC5130AC();
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = sub_1DC5162EC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_1DC51310C();
  QueryType.init(protobuf:)();
  if (v0)
  {
    v32 = sub_1DC51313C();
    OUTLINED_FUNCTION_0_2(v32);
    (*(v33 + 8))(v3);
  }

  else
  {
    v45 = v13;
    sub_1DC5130EC();
    PrescribedAjaxTool.init(protobuf:)();
    MEMORY[0x1EEE9AC00](v34);
    *(&v44 - 2) = v31;
    *(&v44 - 1) = v48;
    sub_1DC515EEC();
    v35 = sub_1DC515F3C();
    OUTLINED_FUNCTION_39(v1, 1, v35);
    if (v36)
    {
      sub_1DC2AAF50(v1, &qword_1ECC7BEF8, &unk_1DC522320);
      sub_1DC2D2774();
      v37 = OUTLINED_FUNCTION_33_1();
      *v38 = 0xD000000000000052;
      v38[1] = 0x80000001DC53CE00;
      OUTLINED_FUNCTION_35_2(v37, v38);
      v39 = sub_1DC51313C();
      OUTLINED_FUNCTION_0_2(v39);
      (*(v40 + 8))(v3);
    }

    else
    {
      v41 = sub_1DC51313C();
      OUTLINED_FUNCTION_0_2(v41);
      (*(v42 + 8))(v3);
      OUTLINED_FUNCTION_7_1(v35);
      (*(v43 + 32))(v46, v1, v35);
    }

    (*(v47 + 8))(v48, v45);
    (*(v26 + 8))(v31, v23);
  }

  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2AB394(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC2AB454(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC2AB514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA0, &qword_1DC5224C8);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_1();
  v15 = sub_1DC5162EC();
  OUTLINED_FUNCTION_35(v15);
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_30();
  v19(v18);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  sub_1DC515F1C();
  v20 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35(v20);
  (*(v21 + 16))(v10, a3, v20);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  return sub_1DC515F0C();
}

void QueryType.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v77 = v5;
  v6 = sub_1DC5130DC();
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44_1();
  v10 = sub_1DC51303C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v76 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF28, &qword_1DC522350);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v19 = sub_1DC512FEC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  sub_1DC512FFC();
  OUTLINED_FUNCTION_39(v1, 1, v19);
  if (v31)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BF28, &qword_1DC522350);
    sub_1DC2D2774();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_21_4(v32, 44);
    v33 = sub_1DC5130AC();
    OUTLINED_FUNCTION_0_2(v33);
    (*(v34 + 8))(v4);
  }

  else
  {
    v75 = v4;
    (*(v22 + 32))(v30, v1, v19);
    (*(v22 + 16))(v27, v30, v19);
    v35 = *(v22 + 88);
    v36 = OUTLINED_FUNCTION_50_0();
    v38 = v37(v36);
    if (v38 == *MEMORY[0x1E69D0EC0])
    {
      v39 = sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2(v39);
      (*(v40 + 8))(v75);
      v41 = *(v22 + 8);
      v42 = OUTLINED_FUNCTION_16();
      v41(v42);
      v43 = *MEMORY[0x1E69D08F0];
      v44 = sub_1DC5162EC();
      OUTLINED_FUNCTION_35(v44);
      (*(v45 + 104))(v77, v43);
      v46 = OUTLINED_FUNCTION_50_0();
      v41(v46);
    }

    else if (v38 == *MEMORY[0x1E69D0EB8])
    {
      v47 = *(v22 + 96);
      v48 = OUTLINED_FUNCTION_50_0();
      v49(v48);
      (*(v76 + 32))(v2, v27, v10);
      sub_1DC51300C();
      v50 = v77;
      AjaxRewrite.init(protobuf:)();
      v51 = v75;
      v52 = sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2(v52);
      (*(v53 + 8))(v51);
      v54 = OUTLINED_FUNCTION_55_1();
      v55(v54, v10);
      if (v0)
      {
        v56 = *(v22 + 8);
        v57 = OUTLINED_FUNCTION_16();
        v58(v57);
      }

      else
      {
        v68 = *(v22 + 8);
        v69 = OUTLINED_FUNCTION_16();
        v70(v69);
        v71 = *MEMORY[0x1E69D08E8];
        v72 = sub_1DC5162EC();
        OUTLINED_FUNCTION_35(v72);
        (*(v73 + 104))(v50, v71);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_31_1();
      MEMORY[0x1E1296160](0xD00000000000002CLL);
      OUTLINED_FUNCTION_38_5();
      sub_1DC517FEC();
      v59 = v78;
      v60 = v79;
      sub_1DC2D2774();
      v61 = OUTLINED_FUNCTION_33_1();
      *v62 = v59;
      v62[1] = v60;
      OUTLINED_FUNCTION_35_2(v61, v62);
      v63 = sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2(v63);
      (*(v64 + 8))(v75);
      v65 = *(v22 + 8);
      v66 = OUTLINED_FUNCTION_16();
      v65(v66);
      v67 = OUTLINED_FUNCTION_50_0();
      v65(v67);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

void PrescribedAjaxTool.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF30, &qword_1DC522358);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_0();
  v9 = sub_1DC51355C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_3();
  sub_1DC51356C();
  OUTLINED_FUNCTION_39(v0, 1, v9);
  if (v16)
  {
    sub_1DC2AAF50(v0, &qword_1ECC7BF30, &qword_1DC522358);
    sub_1DC2D2774();
    v17 = OUTLINED_FUNCTION_33_1();
    *v18 = 0xD00000000000004CLL;
    v18[1] = 0x80000001DC53D060;
    OUTLINED_FUNCTION_35_2(v17, v18);
    v19 = sub_1DC51358C();
    OUTLINED_FUNCTION_0_2(v19);
    (*(v20 + 8))(v2);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_48_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_49_1();
    v24(v23);
    v25 = *(v12 + 88);
    v26 = OUTLINED_FUNCTION_16();
    v28 = v27(v26);
    if (v28 == *MEMORY[0x1E69D0F80])
    {
      v29 = MEMORY[0x1E69D0720];
    }

    else if (v28 == *MEMORY[0x1E69D0F90])
    {
      v29 = MEMORY[0x1E69D0730];
    }

    else if (v28 == *MEMORY[0x1E69D0F78])
    {
      v29 = MEMORY[0x1E69D0718];
    }

    else
    {
      if (v28 != *MEMORY[0x1E69D0F88])
      {
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD000000000000035);
        OUTLINED_FUNCTION_38_5();
        sub_1DC517FEC();
        sub_1DC2D2774();
        v38 = OUTLINED_FUNCTION_33_1();
        *v39 = v45;
        v39[1] = v46;
        OUTLINED_FUNCTION_35_2(v38, v39);
        v40 = sub_1DC51358C();
        OUTLINED_FUNCTION_0_2(v40);
        (*(v41 + 8))(v2);
        v42 = *(v12 + 8);
        v43 = OUTLINED_FUNCTION_47_0();
        v42(v43);
        v44 = OUTLINED_FUNCTION_16();
        v42(v44);
        goto LABEL_13;
      }

      v29 = MEMORY[0x1E69D0728];
    }

    v30 = sub_1DC51358C();
    OUTLINED_FUNCTION_0_2(v30);
    (*(v31 + 8))(v2);
    v32 = *(v12 + 8);
    v33 = OUTLINED_FUNCTION_47_0();
    v32(v33);
    v34 = *v29;
    v35 = sub_1DC5161CC();
    OUTLINED_FUNCTION_35(v35);
    (*(v36 + 104))(v4, v34);
    v37 = OUTLINED_FUNCTION_16();
    v32(v37);
  }

LABEL_13:
  OUTLINED_FUNCTION_26_0();
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_70_10()
{
  v3 = *(v1 - 96);

  return MEMORY[0x1EEE3C618](v0);
}

uint64_t OUTLINED_FUNCTION_70_11()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_69_9()
{

  return sub_1DC516F6C();
}

uint64_t OUTLINED_FUNCTION_69_10(uint64_t a1)
{

  return MEMORY[0x1EEE49F08](a1, 0, 1, 0, 1, 0, 1, 0);
}

void sub_1DC2AC14C()
{
  v3 = v1;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC51223C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v10 = sub_1DC511FEC();
  v11 = *(v10 + 16);
  if (v11)
  {
    v33 = MEMORY[0x1E69E7CC0];
    v29 = v11;
    sub_1DC2A9508(0, v11, 0);
    v12 = 0;
    v13 = *(v7 + 80);
    OUTLINED_FUNCTION_24();
    v14 = v33;
    v30 = v10 + v15;
    v31 = (v7 + 8);
    while (v12 < *(v10 + 16))
    {
      v16 = (*(v7 + 16))(v2, v30 + *(v7 + 72) * v12, v4);
      sub_1DC2A9660(v32, v16);
      if (v3)
      {

        v25 = sub_1DC51220C();
        OUTLINED_FUNCTION_0_2(v25);
        (*(v26 + 8))(v0);
        (*v31)(v2, v4);

        return;
      }

      v17 = v10;
      (*v31)(v2, v4);
      v33 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v22 = OUTLINED_FUNCTION_26(v18);
        sub_1DC2A9508(v22, v19 + 1, 1);
        v14 = v33;
      }

      ++v12;
      *(v14 + 16) = v19 + 1;
      v20 = OUTLINED_FUNCTION_71();
      sub_1DC28F9B0(v20, v21);
      v10 = v17;
      v3 = 0;
      if (v29 == v12)
      {
        v27 = sub_1DC51220C();
        OUTLINED_FUNCTION_0_2(v27);
        (*(v28 + 8))(v0);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = sub_1DC51220C();
    OUTLINED_FUNCTION_0_2(v23);
    (*(v24 + 8))(v0);
  }
}

size_t sub_1DC2AC408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

size_t sub_1DC2AC4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1DC28F3B8(v2 + a1, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return swift_once();
}

id OUTLINED_FUNCTION_71_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_71_9(uint64_t result)
{
  v1 = *(result + 52);
  v2 = (*(result + 48) + 7) & 0x1FFFFFFF8;
  return result;
}

uint64_t sub_1DC2AC6D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1DC2AC7C4(uint64_t a1)
{
  v2 = type metadata accessor for NLRouterOverride(0);
  v3 = OUTLINED_FUNCTION_52(v2);
  v63 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v64 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v14 = (v60 - v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v11 + 48);
    v17 = *(v12 + 80);
    v60[1] = a1;
    v18 = a1 + ((v17 + 32) & ~v17);
    v61 = *(v12 + 72);
    v62 = v16;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DC2ACC64(v18, v14);
      v21 = *v14;
      v22 = v14[1];
      v23 = *(v20 + 16);
      OUTLINED_FUNCTION_0_4();
      sub_1DC2A9458();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_5();
        v20 = sub_1DC2A6974(0, v23 + 1, 1, v20, &qword_1ECC7C090, &qword_1DC522980, v32, v33);
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        v34 = OUTLINED_FUNCTION_26(v24);
        v20 = sub_1DC2A6974(v34, v25 + 1, 1, v20, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
      }

      *(v20 + 16) = v25 + 1;
      v26 = *(v63 + 80);
      OUTLINED_FUNCTION_24();
      v28 = *(v27 + 72);
      OUTLINED_FUNCTION_0_4();
      sub_1DC2A9458();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = v19[2];
        v36 = OUTLINED_FUNCTION_13_0();
        v19 = sub_1DC2B81A8(v36, v37, v38, v19);
      }

      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v39 = OUTLINED_FUNCTION_26(v29);
        v19 = sub_1DC2B81A8(v39, v30 + 1, 1, v19);
      }

      v19[2] = v30 + 1;
      v31 = &v19[3 * v30];
      v31[4] = v21;
      v31[5] = v22;
      v31[6] = v23;
      v18 += v61;
      --v15;
    }

    while (v15);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v40 = [objc_allocWithZone(OVMarisaTrie) init];
  v41 = v19[2];
  if (v41)
  {
    v64 = &v69;
    v42 = v19 + 6;
    v43 = MEMORY[0x1E69E6290];
    do
    {
      v44 = *(v42 - 2);
      v45 = *(v42 - 1);
      v46 = *v42;

      OUTLINED_FUNCTION_12_3();
      v47 = sub_1DC5176FC();

      v68 = v46;
      v67[3] = v43;
      v67[4] = MEMORY[0x1E6969DF8];
      v67[0] = &v68;
      v67[1] = v64;
      v48 = __swift_project_boxed_opaque_existential_1(v67, v43);
      v49 = *v48;
      if (*v48)
      {
        v50 = v48[1];
        v51 = v50 - v49;
        if (v50 != v49)
        {
          if (v51 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v66 = v50 - v49;
            memcpy(__dst, v49, v50 - v49);
            v63 = v63 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v66 << 16)) << 32);
          }

          else
          {
            v55 = sub_1DC51077C();
            v56 = *(v55 + 48);
            v57 = *(v55 + 52);
            swift_allocObject();
            OUTLINED_FUNCTION_12_3();
            sub_1DC51073C();
            if (v51 >= 0x7FFFFFFF)
            {
              sub_1DC5109DC();
              v58 = swift_allocObject();
              *(v58 + 16) = 0;
              *(v58 + 24) = v51;
            }
          }
        }
      }

      v42 += 3;
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_12_3();
      v52 = sub_1DC5109EC();
      v53 = OUTLINED_FUNCTION_12_3();
      sub_1DC2AD740(v53, v54);
      [v40 addKey:v47 payload:v52];

      --v41;
    }

    while (v41);
  }

  [v40 buildKeyset];
  return v40;
}

uint64_t sub_1DC2ACC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1DC2ACCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
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

size_t sub_1DC2ACDDC(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2AD2F4(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC2AC6D8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1DC2ACED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC2ACF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2ACF9C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DC510B6C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  result = sub_1DC517EFC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DC2A3304(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8]);
    result = sub_1DC51767C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

size_t sub_1DC2AD2F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B0, &qword_1DC5229B0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AjaxRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_45_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF38, qword_1DC522360);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_46_1();
  sub_1DC515DDC();
  v7 = sub_1DC515DEC();
  OUTLINED_FUNCTION_34_1(v7);
  if (v8)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BF38, qword_1DC522360);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_15_0(v9, 80);
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v2);
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_41_1();
    v13(v12);
  }

  v14 = sub_1DC5130DC();
  OUTLINED_FUNCTION_0_2(v14);
  return (*(v15 + 8))(v0);
}

uint64_t sub_1DC2AD538(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = *(v3 + 16);
  v6 = a2();
  return a3(v6);
}

int64_t sub_1DC2AD5B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC2AD6B0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NLRouterOverride(0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

size_t sub_1DC2AD6B0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC2A6974(result, v7, a2 & 1, v5, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC2AD740(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1DC2AD798(uint64_t a1)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  v2 = OUTLINED_FUNCTION_0(v103);
  v102 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v115 = (&v99 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C068, &qword_1DC522868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v99 - v9;
  v11 = sub_1DC51222C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v116 = sub_1DC510B6C();
  v20 = OUTLINED_FUNCTION_0(v116);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v113 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v99 - v27;
  v111 = type metadata accessor for NLRouterOverride(0);
  v28 = OUTLINED_FUNCTION_0(v111);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v104 = v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v99 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v99 - v36;
  v124[5] = MEMORY[0x1E69E7CD0];
  v110 = *(a1 + 16);
  if (v110)
  {
    v38 = *(v35 + 80);
    OUTLINED_FUNCTION_24();
    v100 = v41;
    v107 = a1 + v41;
    v106 = (v22 + 16);
    v105 = (v22 + 8);
    v121 = (v14 + 8);
    v122 = (v14 + 32);
    v42 = MEMORY[0x1E69E7CC0];
    *&v43 = 136315138;
    v99 = v43;
    v44 = MEMORY[0x1E69E7CC0];
    v114 = v37;
    v109 = a1;
    v108 = v40;
    while (v39 < *(a1 + 16))
    {
      v118 = v42;
      v119 = v44;
      v45 = *(v40 + 72);
      v120 = v39;
      v117 = v45;
      OUTLINED_FUNCTION_0_4();
      sub_1DC2AE0C8();
      v46 = v113;
      v47 = v116;
      (*v106)(v113, v37, v116);
      v48 = v112;
      LOBYTE(v46) = sub_1DC2AE120(v112, v46);
      (*v105)(v48, v47);
      if ((v46 & 1) == 0)
      {
        v49 = sub_1DC517B8C();
        sub_1DC297814();
        v50 = sub_1DC2A5914();
        OUTLINED_FUNCTION_0_4();
        v51 = v101;
        sub_1DC2AE0C8();
        if (os_log_type_enabled(v50, v49))
        {
          v52 = swift_slowAlloc();
          v53 = v49;
          v54 = swift_slowAlloc();
          v124[0] = v54;
          *v52 = v99;
          sub_1DC291740(&qword_1ECC7BE90, MEMORY[0x1E69695A8]);
          v55 = sub_1DC51823C();
          v57 = v56;
          OUTLINED_FUNCTION_1_3();
          sub_1DC2ACED4(v51, v58);
          v59 = sub_1DC291244(v55, v57, v124);
          v37 = v114;

          *(v52 + 4) = v59;
          _os_log_impl(&dword_1DC287000, v50, v53, "Duplicated override id: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x1E1298840](v54, -1, -1);
          MEMORY[0x1E1298840](v52, -1, -1);
        }

        else
        {

          OUTLINED_FUNCTION_1_3();
          sub_1DC2ACED4(v51, v60);
        }
      }

      v61 = *&v37[*(v111 + 36)];
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = v61 + 32;
        v64 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1DC28FB9C(v63, v124);
          sub_1DC28FB9C(v124, v123);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
          if (swift_dynamicCast())
          {
            __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
            (*v122)(v19, v10, v11);
            sub_1DC511FBC();
            v65 = sub_1DC51778C();
            v67 = v66;

            (*v121)(v19, v11);
            __swift_destroy_boxed_opaque_existential_1Tm(v124);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = *(v64 + 2);
              v72 = OUTLINED_FUNCTION_13_0();
              v64 = sub_1DC2ACCD4(v72, v73, v74, v64);
            }

            v69 = *(v64 + 2);
            v68 = *(v64 + 3);
            if (v69 >= v68 >> 1)
            {
              v75 = OUTLINED_FUNCTION_26(v68);
              v64 = sub_1DC2ACCD4(v75, v69 + 1, 1, v64);
            }

            *(v64 + 2) = v69 + 1;
            v70 = &v64[16 * v69];
            *(v70 + 4) = v65;
            *(v70 + 5) = v67;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v124);
            __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
            sub_1DC28EB30(v10, &qword_1ECC7C068, &qword_1DC522868);
          }

          v63 += 40;
          --v62;
        }

        while (v62);
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      if (*(v64 + 2))
      {
        v77 = *(v64 + 4);
        v76 = *(v64 + 5);

        v78 = *(v103 + 48);
        v37 = v114;
        v79 = v115;
        *v115 = v77;
        v79[1] = v76;
        OUTLINED_FUNCTION_0_4();
        sub_1DC2AE0C8();
        v42 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v109;
        v44 = v119;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = *(v42 + 16);
          v91 = OUTLINED_FUNCTION_13_0();
          v42 = sub_1DC2ACDDC(v91, v92, v93, v42);
        }

        v82 = *(v42 + 16);
        v81 = *(v42 + 24);
        if (v82 >= v81 >> 1)
        {
          v94 = OUTLINED_FUNCTION_26(v81);
          v42 = sub_1DC2ACDDC(v94, v82 + 1, 1, v42);
        }

        OUTLINED_FUNCTION_1_3();
        sub_1DC2ACED4(v37, v83);
        *(v42 + 16) = v82 + 1;
        v84 = *(v102 + 80);
        OUTLINED_FUNCTION_24();
        sub_1DC2ACF2C(v115, v42 + v85 + *(v86 + 72) * v82);
      }

      else
      {

        OUTLINED_FUNCTION_0_4();
        v37 = v114;
        sub_1DC2AE0C8();
        v44 = v119;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        a1 = v109;
        v42 = v118;
        if ((v87 & 1) == 0)
        {
          v95 = *(v44 + 16);
          OUTLINED_FUNCTION_4_5();
          v44 = sub_1DC2A6974(0, v96 + 1, 1, v44, &qword_1ECC7C090, &qword_1DC522980, v97, v98);
        }

        v89 = *(v44 + 16);
        v88 = *(v44 + 24);
        if (v89 >= v88 >> 1)
        {
          v44 = sub_1DC2A6974(v88 > 1, v89 + 1, 1, v44, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
        }

        sub_1DC2ACED4(v37, type metadata accessor for NLRouterOverride);
        *(v44 + 16) = v89 + 1;
        sub_1DC2A9458();
      }

      v39 = v120 + 1;
      v40 = v108;
      if (v120 + 1 == v110)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
LABEL_34:

    sub_1DC2AC7C4(v42);
  }
}

uint64_t sub_1DC2AE0C8()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

BOOL sub_1DC2AE120(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1DC510B6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8]);
  v30 = a2;
  v11 = sub_1DC51767C();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1DC2AE3E8(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_1DC291740(&qword_1ECC7BEA0, MEMORY[0x1E69695A8]);
    v17 = sub_1DC5176CC();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_1DC2AE3E8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1DC510B6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DC2ACF9C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DC2AE674(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8]);
      v15 = sub_1DC51767C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DC291740(&qword_1ECC7BEA0, MEMORY[0x1E69695A8]);
        v17 = sub_1DC5176CC();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1DC2DC31C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1DC2AE674(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DC510B6C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  v10 = sub_1DC517EFC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8]);
        result = sub_1DC51767C();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DC2AE9E0()
{
  sub_1DC51737C();
  sub_1DC2A6184(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  return sub_1DC517E9C();
}

uint64_t sub_1DC2AEAAC(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMDeviceStateLogger_memoryPressureSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

unint64_t sub_1DC2AEB04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DC5182FC();
  sub_1DC51769C();
  v6 = sub_1DC51833C();

  return sub_1DC2AEB7C(a1, a2, v6);
}

unint64_t sub_1DC2AEB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DC51825C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DC2AECB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1DC2AECF4()
{
  v1 = v0;
  v2 = sub_1DC51737C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v47 = v4;
  v48 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v45 = v8 - v7;
  v46 = sub_1DC5173CC();
  v9 = OUTLINED_FUNCTION_0(v46);
  v44 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC517C6C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1DC5173FC();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = *(v1 + OBJC_IVAR___CDMDeviceStateLogger_queue);
  *(v32 - v31) = v34;
  (*(v28 + 104))(v32 - v31, *MEMORY[0x1E69E8020], v25);
  v35 = v34;
  LOBYTE(v34) = sub_1DC51742C();
  result = (*(v28 + 8))(v33, v25);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x1E69E7D40];
  v38 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  if (v38(result))
  {
    return swift_unknownObjectRelease();
  }

  sub_1DC298C74(0, &unk_1ECC7B968, 0x1E69E9630);
  sub_1DC517C2C();
  v39 = sub_1DC517C7C();
  (*(v19 + 8))(v24, v16);
  v40 = (*((*v37 & *v1) + 0x68))(v39);
  v41 = v38(v40);
  if (v41)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_195();
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = sub_1DC40794C;
    v54 = v42;
    OUTLINED_FUNCTION_5_4();
    v50 = 1107296256;
    v51 = sub_1DC358C0C;
    v52 = &block_descriptor_6_0;
    v43 = _Block_copy(aBlock);

    sub_1DC51739C();
    sub_1DC2AE9E0();
    sub_1DC517C8C();
    _Block_release(v43);
    swift_unknownObjectRelease();
    (*(v47 + 8))(v45, v48);
    (*(v44 + 8))(v15, v46);
  }

  result = v38(v41);
  if (result)
  {
    swift_getObjectType();
    sub_1DC517CAC();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DC2AF134()
{
  MEMORY[0x1E1298910](v0 + 16);
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DC2B013C()
{
  v2 = sub_1DC51737C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v8 = sub_1DC5173CC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *&v0[OBJC_IVAR___CDMDeviceStateLogger_queue];
  OUTLINED_FUNCTION_195();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  v29 = sub_1DC2AE98C;
  v30 = v18;
  OUTLINED_FUNCTION_5_4();
  v26 = 1107296256;
  v27 = sub_1DC2AECB0;
  v28 = &block_descriptor_12;
  v19 = _Block_copy(aBlock);
  v20 = v0;
  sub_1DC51739C();
  sub_1DC2A6184(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v16, v1, v19);
  _Block_release(v19);
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_30_6();
  v23(v22);
  (*(v11 + 8))(v16, v8);
}

uint64_t sub_1DC2B038C()
{
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DC2B12A8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 thermalState];

  switch(v1)
  {
    case 0uLL:
      if (qword_1ECC82D80 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 1uLL:
      if (qword_1ECC82D80 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 2uLL:
      if (qword_1ECC82D80 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 3uLL:
      if (qword_1ECC82D80 != -1)
      {
        goto LABEL_14;
      }

      break;
    default:
      if (qword_1ECC82D80 != -1)
      {
LABEL_14:
        OUTLINED_FUNCTION_0_54();
      }

      break;
  }

  sub_1DC517B8C();

  return sub_1DC516EFC();
}

void sub_1DC2B1640(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B17EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B1FDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2104(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B222C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2450(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1DC2B256C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2688(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2898(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2A18(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_200_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_1DC2B2C1C()
{
  OUTLINED_FUNCTION_33();
  v4 = sub_1DC510AFC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v105 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_9();
  v11 = sub_1DC516F7C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v103 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v104 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_38_1();
  v25 = (*(v24 + 296))();
  if (!v25)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v38(v0);
    v39 = sub_1DC516F6C();
    v40 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v40))
    {
      v41 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v41);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v42, v43, "cdmClient is nil so nothing to release here");
      OUTLINED_FUNCTION_40_0();
    }

    v44 = *(v14 + 8);
    v45 = OUTLINED_FUNCTION_229();
    goto LABEL_10;
  }

  v106 = v11;

  if ((*(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) & 1) == 0)
  {
    sub_1DC28D414();
    v47 = v14;
    OUTLINED_FUNCTION_19_1();
    v27 = v106;
    v48(v2);
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v50))
    {
      v51 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v51);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_56_4(v52, v53, v54, v55);
      OUTLINED_FUNCTION_58();
    }

    v37 = *(v47 + 8);
    v36 = v2;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_117_2();
  if ((*(v26 + 560))())
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v27 = v11;
    v28(v3);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v31);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_145_1(v32, v33, v34, v35);
      OUTLINED_FUNCTION_40_0();
    }

    v36 = OUTLINED_FUNCTION_150_0();
LABEL_14:
    v37(v36, v27);
LABEL_15:
    OUTLINED_FUNCTION_64_2();
    (*(v56 + 304))(0);
    goto LABEL_16;
  }

  if (*(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) == 1)
  {
    sub_1DC510AEC();
    OUTLINED_FUNCTION_117_2();
    (*(v57 + 536))();
    v58 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds);
    sub_1DC510A6C();
    v59 = *(v105 + 8);
    v60 = OUTLINED_FUNCTION_146_1();
    v59(v60);
    v61 = sub_1DC510A8C();
    v62 = OUTLINED_FUNCTION_50_0();
    v59(v62);
    v63 = OUTLINED_FUNCTION_174();
    v59(v63);
    if (v61)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_19_1();
      v64(v104);
      v65 = sub_1DC516F6C();
      v66 = sub_1DC517B8C();
      if (OUTLINED_FUNCTION_14_7(v66))
      {
        v67 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v67);
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_145_1(v68, v69, v70, v71);
        OUTLINED_FUNCTION_40_0();
      }

      v72 = *(v14 + 8);
      v73 = OUTLINED_FUNCTION_41();
      v74(v73);
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_117_2();
  (*(v75 + 416))();
  OUTLINED_FUNCTION_79_4();
  if (v77 || (v76 & 1) == 0)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v92 = OUTLINED_FUNCTION_213_0();
    v93(v92);
    v94 = sub_1DC516F6C();
    v95 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v95))
    {
      v96 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v96);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      OUTLINED_FUNCTION_31();
    }

    v102 = *(v14 + 8);
    v45 = OUTLINED_FUNCTION_16();
LABEL_10:
    v46(v45);
    goto LABEL_16;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v78(v103);
  v79 = sub_1DC516F6C();
  v80 = sub_1DC517B8C();
  if (OUTLINED_FUNCTION_14_7(v80))
  {
    v81 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_18_12(v81);
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_145_1(v82, v83, v84, v85);
    OUTLINED_FUNCTION_40_0();
  }

  v86 = *(v14 + 8);
  v87 = OUTLINED_FUNCTION_41();
  v88(v87);
  OUTLINED_FUNCTION_64_2();
  (*(v89 + 304))(0);
  OUTLINED_FUNCTION_64_2();
  (*(v90 + 424))(2);
  OUTLINED_FUNCTION_64_2();
  (*(v91 + 592))(0);
LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2B3338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 152));
}

void sub_1DC2B33C4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v100 = v5;
  v101 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v98 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32_4(v14, v91);
  v15 = sub_1DC510B6C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v95 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v91 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v29 = OUTLINED_FUNCTION_35(v93);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v92 = v32 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v91 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v91 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v91 - v41;
  v96 = _MergedGlobals;
  v97 = v18;
  v43 = *(v0 + _MergedGlobals);
  v99 = v0;
  if (v43)
  {
    (*(v18 + 16))(&v91 - v41, v43 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v15);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v44, 1, v15);
  v45 = v2;
  sub_1DC515D7C();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v15);
  v46 = *(v23 + 48);
  sub_1DC28F358(v42, v28, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F358(v40, &v28[v46], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_5_3(v28);
  if (!v48)
  {
    sub_1DC28F358(v28, v37, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_5_3(&v28[v46]);
    if (!v48)
    {
      v67 = v97;
      v68 = &v28[v46];
      v69 = v95;
      (*(v97 + 32))(v95, v68, v15);
      OUTLINED_FUNCTION_3_8();
      sub_1DC291788(v70, v71);
      HIDWORD(v91) = sub_1DC5176CC();
      v72 = *(v67 + 8);
      v72(v69, v15);
      sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
      sub_1DC28EB30(v42, &unk_1ECC7CA30, &qword_1DC522A00);
      v72(v37, v15);
      v73 = v100;
      sub_1DC28EB30(v28, &unk_1ECC7CA30, &qword_1DC522A00);
      v47 = v99;
      if ((v91 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }

LABEL_13:
      v49 = sub_1DC29120C();
      v50 = v98;
      (*(v73 + 16))(v98, v49, v101);
      v51 = v45;

      v52 = sub_1DC516F6C();
      v53 = sub_1DC517B9C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v54 = 136446466;
        v55 = v95;
        sub_1DC515D7C();
        OUTLINED_FUNCTION_3_8();
        sub_1DC291788(v56, v57);
        v58 = sub_1DC51823C();
        v60 = v59;
        v61 = v97;
        (*(v97 + 8))(v55, v15);
        v62 = sub_1DC291244(v58, v60, &v102);

        *(v54 + 4) = v62;
        *(v54 + 12) = 2082;
        v63 = *(v47 + v96);
        v64 = v100;
        if (v63)
        {
          v65 = v92;
          (*(v61 + 16))(v92, v63 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v15);
          v66 = 0;
        }

        else
        {
          v66 = 1;
          v65 = v92;
        }

        __swift_storeEnumTagSinglePayload(v65, v66, 1, v15);
        v88 = sub_1DC51777C();
        v90 = sub_1DC291244(v88, v89, &v102);

        *(v54 + 14) = v90;
        _os_log_impl(&dword_1DC287000, v52, v53, "Received SessionEndedMessage for session id: %{public}s, which is different from sessionContext's sessionId: %{public}s. Ignoring.", v54, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        (*(v64 + 8))(v98, v101);
      }

      else
      {

        (*(v73 + 8))(v50, v101);
      }

      goto LABEL_23;
    }

    sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC28EB30(v42, &unk_1ECC7CA30, &qword_1DC522A00);
    (*(v97 + 8))(v37, v15);
LABEL_12:
    sub_1DC28EB30(v28, &qword_1ECC7CE20, &unk_1DC523AC8);
    v47 = v99;
    v73 = v100;
    goto LABEL_13;
  }

  sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v42, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_5_3(&v28[v46]);
  if (!v48)
  {
    goto LABEL_12;
  }

  sub_1DC28EB30(v28, &unk_1ECC7CA30, &qword_1DC522A00);
  v47 = v99;
LABEL_18:
  v74 = *(v47 + v96);
  *(v47 + v96) = 0;

  if (*(v47 + qword_1EDAC7DA0))
  {
    v75 = *(v47 + qword_1EDAC7DA0);

    sub_1DC517ACC();
  }

  sub_1DC517AAC();
  v76 = v94;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  v82 = OUTLINED_FUNCTION_27_7();
  v86 = sub_1DC315A04(v82, v83, v76, v84, v85);
  v87 = *(v47 + qword_1EDAC7D98);
  *(v47 + qword_1EDAC7D98) = v86;

LABEL_23:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2B3B7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC2B3BB4()
{
  sub_1DC2B3C0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2B3C0C()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId;
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale;
  v5 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController));
  v7 = *(v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient);

  v8 = *(v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient);

  return v0;
}

uint64_t sub_1DC2B3CFC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DC2B3D44()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F120;

  return sub_1DC2B3DC8();
}

uint64_t sub_1DC2B3DC8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_1DC516F7C();
  v0[2] = v1;
  OUTLINED_FUNCTION_52(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1DC2B3E74()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_1DC296704();
  v2 = *v1;
  v0[5] = *v1;
  v3 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0xED9A000000000000;
  v0[6] = *(*v2 + 184);
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DC2B3F04, v2, 0);
}

uint64_t sub_1DC2B3F04()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))();

  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DC2B3F70()
{
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  OUTLINED_FUNCTION_0_43();
  sub_1DC2B3338(v0, v1);
  sub_1DC51764C();
  OUTLINED_FUNCTION_12_0();
  (*(v2 + 112))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  sub_1DC51764C();
  OUTLINED_FUNCTION_12_0();
  v4 = *(v3 + 136);

  return v4();
}

uint64_t sub_1DC2B4078(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_1DC2B41BC()
{
  v1 = qword_1ECC8F2B0;
  OUTLINED_FUNCTION_54_11();
  return *(v0 + v1);
}

uint64_t sub_1DC2B4238()
{
  v2 = sub_1DC510B6C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v16 = OUTLINED_FUNCTION_74_4(v8, v9, v10, v11, v12, v13, v14, v15, aBlock[0]);
  v17(v16);
  v18 = (v7 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_224(v19);
  v21(v20);
  *(v19 + v18) = v1;
  OUTLINED_FUNCTION_27_5();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1DC2B4440;
  *(v22 + 24) = v19;
  aBlock[4] = sub_1DC292A1C;
  aBlock[5] = v22;
  OUTLINED_FUNCTION_69_5();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  aBlock[2] = v23;
  aBlock[3] = &block_descriptor_41;
  v24 = _Block_copy(aBlock);

  dispatch_sync(v0, v24);
  _Block_release(v24);
  v25 = OUTLINED_FUNCTION_173();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC2B4458(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_21_10();
  v11 = *(v1 + v10);

  return a1(v1 + v9, v11);
}

void sub_1DC2B44E4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v110 = v7;
  v111 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v109 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC510B6C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v108 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v102 = v19;
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v21 = *(*v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v26 = OUTLINED_FUNCTION_10(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v103 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v105 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v100[-v34];
  v112 = v14;
  v106 = *(v14 + 16);
  v107 = v4;
  v106(&v100[-v34], v4, v11);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v11);
  OUTLINED_FUNCTION_38_1();
  v40 = *(v39 + 464);
  v104 = v2;
  v40();
  v41 = v20[14];
  sub_1DC28F308(v35, v24, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, &v24[v41], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_8(v24);
  if (v48)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v42, v43, v44);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v45, v46, v47);
    OUTLINED_FUNCTION_30_8(&v24[v41]);
    if (v48)
    {
      sub_1DC28EB30(v24, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_15:
      v94 = v103;
      v95 = OUTLINED_FUNCTION_27();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v11);
      OUTLINED_FUNCTION_38_1();
      (*(v98 + 472))(v94);
      sub_1DC292F48();
      OUTLINED_FUNCTION_38_1();
      (*(v99 + 848))();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v24, v105, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_8(&v24[v41]);
  if (v48)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v49, v50, v51);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v52, v53, v54);
    v55 = *(v112 + 8);
    v56 = OUTLINED_FUNCTION_205();
    v57(v56);
LABEL_9:
    sub_1DC28EB30(v24, &qword_1ECC7CE20, &unk_1DC523AC8);
    v59 = v109;
    v58 = v110;
    goto LABEL_10;
  }

  v80 = v112;
  (*(v112 + 32))(v102, &v24[v41], v11);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v81, v82);
  v101 = sub_1DC5176CC();
  v83 = *(v80 + 8);
  v84 = OUTLINED_FUNCTION_46_6();
  v83(v84);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_16();
  sub_1DC28EB30(v88, v89, &qword_1DC522A00);
  v90 = OUTLINED_FUNCTION_46_6();
  v83(v90);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v91, v92, v93);
  v59 = v109;
  v58 = v110;
  if (v101)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v60 = v111;
  v61(v59);
  v106(v108, v107, v11);
  v62 = sub_1DC516F6C();
  sub_1DC517BAC();
  OUTLINED_FUNCTION_182();
  if (os_log_type_enabled(v62, v63))
  {
    OUTLINED_FUNCTION_63();
    v64 = OUTLINED_FUNCTION_111();
    v113 = v64;
    *v0 = 136315138;
    OUTLINED_FUNCTION_2_11();
    sub_1DC293BE4(v65, v66);
    sub_1DC51823C();
    OUTLINED_FUNCTION_238();
    v67 = OUTLINED_FUNCTION_209();
    v68(v67, v11);
    v69 = OUTLINED_FUNCTION_12_3();
    v72 = sub_1DC291244(v69, v70, v71);

    *(v0 + 4) = v72;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    (*(v58 + 8))(v59, v111);
  }

  else
  {

    v78 = OUTLINED_FUNCTION_209();
    v79(v78, v11);
    (*(v58 + 8))(v59, v60);
  }

LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_133_1()
{
  v1 = *(v0 - 192);
  v2 = *(*(v0 - 200) + 8);
  return *(v0 - 224);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_1DC2DFCF4(v0, type metadata accessor for NLRouterOverride);
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return swift_once();
}

id OUTLINED_FUNCTION_20_17()
{
  v2 = *(v0 - 216);

  return sub_1DC2C0F8C();
}

void OUTLINED_FUNCTION_96_2()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1DC2B4DD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DC2B4E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC510C8C();
  v7 = OUTLINED_FUNCTION_50(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_54(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t objectdestroy_53Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_0(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);

  v7 = OUTLINED_FUNCTION_50_9();
  v8(v7);
  v9 = *(v1 + v5 + 8);

  v10 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

void sub_1DC2B5034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  objc_sync_exit(v9);

  a9.super_class = CDMClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1DC2B5284()
{
  sub_1DC2B52B8();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC2B52B8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1E1297AD0](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1E1297AD0](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1E1297AD0](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1E1297AD0](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_1DC516EFC();
}

uint64_t OUTLINED_FUNCTION_169_1()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC2B55E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t objectdestroy_33Tm()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC2B56C0()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1DC29120C();
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v7))
  {
    OUTLINED_FUNCTION_17_4();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v8, v9, "Finished cleaning up NLRouterClient");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v10, v12);

  OUTLINED_FUNCTION_2_2();

  return v13();
}

uint64_t sub_1DC2B57CC()
{
  if (qword_1ECC7FB80 != -1)
  {
    OUTLINED_FUNCTION_3_7();
  }

  OUTLINED_FUNCTION_36_7();
}

uint64_t sub_1DC2B5834()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v0[6] = 0;
  v0[7] = 0;
  v0[5] = 0;
  return sub_1DC2B5848(v1, v2);
}

uint64_t sub_1DC2B5848(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1DC2B5A6C()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceStateLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC2B5AD4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (result)
  {
    swift_getObjectType();
    sub_1DC517C9C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DC2B61A4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC2B629C()
{
  **(v0 + 16) = *(v0 + 74);
  OUTLINED_FUNCTION_2_2();
  return v1();
}

uint64_t sub_1DC2B62CC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DC2B629C, 0, 0);
  }
}

uint64_t sub_1DC2B63E8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

id sub_1DC2B6444(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = OUTLINED_FUNCTION_17_19();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 16))(a1, v18, v19);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1DC2AAF50(v2, &qword_1ECC7C950, &unk_1DC523CF0);
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v20 = sub_1DC296DBC();
    sub_1DC516F0C();

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  (*(v12 + 32))(v17, v2, v9);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1DC51094C();
  v22 = sub_1DC5176FC();

  v23 = [v21 contentsAtPath_];

  if (!v23)
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v31 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();
LABEL_9:

LABEL_11:
    (*(v12 + 8))(v17, v9);
    goto LABEL_12;
  }

  sub_1DC510A0C();

  v24 = objc_opt_self();
  OUTLINED_FUNCTION_41();
  v25 = sub_1DC5109EC();
  v40 = 0;
  v26 = [v24 propertyListWithData:v25 options:0 format:0 error:&v40];

  v27 = v40;
  if (!v26)
  {
    v32 = v27;
    v33 = sub_1DC51085C();

    swift_willThrow();
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v31 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();
    v34 = OUTLINED_FUNCTION_41();
    sub_1DC2AD740(v34, v35);
    goto LABEL_9;
  }

  sub_1DC517E8C();
  swift_unknownObjectRelease();
  sub_1DC2BAD90(v41, v42);
  sub_1DC291F78(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D990, &qword_1DC52A630);
  if (!swift_dynamicCast())
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v36 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();
    v37 = OUTLINED_FUNCTION_41();
    sub_1DC2AD740(v37, v38);

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    goto LABEL_11;
  }

  v28 = OUTLINED_FUNCTION_41();
  sub_1DC2AD740(v28, v29);

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  (*(v12 + 8))(v17, v9);
  result = v40;
LABEL_13:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DC2B6910()
{
  v0 = [objc_opt_self() getSingletonCDMAssetsManager];

  return v0;
}

uint64_t sub_1DC2B6B04()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC2B6C04()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC2B6C64()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 40));
    v2 = *(v1 + 104);
    v13 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1DC2B61A4;
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = OUTLINED_FUNCTION_16_9();

    return v8(v7);
  }

  else
  {
    v10 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v11 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC2B6E10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC2B6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF000]));
  v14 = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_91_1(v13, sel_setExists_);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v15 setEnded_];
  if (v15)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v16 = OUTLINED_FUNCTION_9_19();
    v17(v16);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v19, sel_setTraceId_);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v20)
  {
    OUTLINED_FUNCTION_71_6([v20 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v21 = *(v10 + 48);

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1DC2B70B4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_84_3(v1, v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_118();
  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC2B7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC2B7168()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 80);
    v4 = v1;
    v5 = sub_1DC2B7588();
    v6 = *v2;
    if (v5)
    {
      v7 = *(v6 + 200);
      v8 = v4;
      v30 = (v7 + *v7);
      v9 = v7[1];
      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_58_9(v10);
      *v11 = v12;
      v11[1] = sub_1DC2B6B04;
      v13 = *(v0 + 32);
      v14 = *(v0 + 40);
      v15 = *(v0 + 24);
      v16 = OUTLINED_FUNCTION_33_12(*(v0 + 16));
      v17 = v30;
    }

    else
    {
      v21 = *(v6 + 208);
      v22 = v4;
      v31 = (v21 + *v21);
      v23 = v21[1];
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_77_4(v24);
      *v25 = v26;
      v25[1] = sub_1DC38DCC8;
      v27 = *(v0 + 32);
      v28 = *(v0 + 40);
      v29 = *(v0 + 24);
      v16 = OUTLINED_FUNCTION_33_12(*(v0 + 16));
      v17 = v31;
    }

    return v17(v16);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v18 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v19();
  }
}

uint64_t sub_1DC2B7438@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC2B8140(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DC2B7464()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 73) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DC2B7CB8, 0, 0);
  }
}

BOOL sub_1DC2B7588()
{
  sub_1DC2B814C();
  sub_1DC5179EC();
  sub_1DC5179EC();
  return v2 == v1;
}

uint64_t sub_1DC2B7608(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_7();
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1DC2A5760(v5, v6);
}

uint64_t sub_1DC2B7654(uint64_t a1, unint64_t a2)
{
  v41 = sub_1DC51072C();
  v4 = OUTLINED_FUNCTION_0(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_1DC51776C();
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v17 = sub_1DC5176FC();
  v18 = [v16 fileExistsAtPath_];

  if (!v18)
  {
    v19 = sub_1DC517BAC();
    sub_1DC297814();
    v20 = sub_1DC2A5914();
    if (os_log_type_enabled(v20, v19))
    {
      OUTLINED_FUNCTION_11();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DC291244(a1, a2, &v42);
      _os_log_impl(&dword_1DC287000, v20, v19, "Override version file does not exist: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    return 0;
  }

  sub_1DC51775C();
  v42 = sub_1DC5176EC();
  v43 = v23;
  sub_1DC51071C();
  sub_1DC2A32B0();
  v24 = sub_1DC517DDC();
  v40 = *(v6 + 8);
  v40(v11, v41);

  v26 = *(v24 + 16);
  if (!v26)
  {

LABEL_21:

    return 0;
  }

  v39 = v16;
  v27 = 0;
  v28 = (v24 + 40);
  while (1)
  {
    if (v27 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v29 = *v28;
    v42 = *(v28 - 1);
    v43 = v29;

    sub_1DC51070C();
    v30 = sub_1DC517E0C();
    v32 = v31;
    v40(v11, v41);

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v42 = v30;
      v43 = v32;
      v34 = sub_1DC517DEC();

      if (v34[2] == 2)
      {
        v35 = v34[4] == 0x6E6F6973726576 && v34[5] == 0xE700000000000000;
        if (v35 || (sub_1DC51825C() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v27;
    v28 += 2;
    if (v26 == v27)
    {

      goto LABEL_21;
    }
  }

  if (v34[2] >= 2uLL)
  {
    v37 = v34[6];
    v38 = v34[7];

    v42 = v37;
    v43 = v38;
    sub_1DC5106FC();
    v36 = sub_1DC517E0C();

    v40(v11, v41);

    return v36;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DC2B7AEC()
{
  OUTLINED_FUNCTION_41_5();
  if (v0[2])
  {
    v1 = v0[5];
    OUTLINED_FUNCTION_59_6();
    v2 += 41;
    v3 = *v2;
    v26 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_42_10(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26);
    v25 = (v13 + *v13);
    v14 = *(v3 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_58_9(v15);
    *v16 = v17;
    v16[1] = sub_1DC2B6E10;
    v18 = v0[5];
    v19 = v0[3];
    v20 = OUTLINED_FUNCTION_25_10();

    return v25(v20);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v22 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v23();
  }
}

uint64_t sub_1DC2B7C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC2B7CB8()
{
  v26 = v0;
  v1 = sub_1DC517B9C();
  sub_1DC297814();
  v2 = sub_1DC296DBC();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 73);
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1DC5183EC();
    v8 = sub_1DC291244(v6, v7, &v25);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = v3 & 1;
    *(v0 + 72) = v3 & 1;
    v10 = sub_1DC51777C();
    v12 = sub_1DC291244(v10, v11, &v25);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1DC287000, v2, v1, "ServiceStore: ServiceSetupTask for %s. serviceSetupRepsonse: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    MEMORY[0x1E1298840](v5, -1, -1);
  }

  else
  {
    v13 = *(v0 + 73);

    v9 = v13 & 1;
  }

  *(v0 + 74) = v9;
  v14 = *(v0 + 32);
  v15 = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v17 = *(v16 + 192);
  v24 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  v19[1] = sub_1DC2B62CC;
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);
  v22 = *(v0 + 32);

  return v24(v21, v20, v15, v9);
}

uint64_t OUTLINED_FUNCTION_78_0()
{
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_78_5()
{
  v1 = *(v0 - 144);
  v2 = v1[4];
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

void OUTLINED_FUNCTION_78_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68()
{
  result = type metadata accessor for NLRouterOverride(0);
  v1 = *(result + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return sub_1DC2B8848();
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_68_3()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v2 = *(v0 - 296);
}

BOOL OUTLINED_FUNCTION_68_7()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_68_9()
{
  v2 = *(v0 - 104);

  return sub_1DC51817C();
}

unint64_t sub_1DC2B814C()
{
  result = qword_1ECC7BC80;
  if (!qword_1ECC7BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC80);
  }

  return result;
}

void *sub_1DC2B81A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0A0, &qword_1DC5229A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0A8, &qword_1DC5229A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2B834C(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DC2B83A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_7();
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return sub_1DC2B834C(v7, v8);
}

void sub_1DC2B8404()
{
  OUTLINED_FUNCTION_33();
  v41[1] = v1;
  v2 = sub_1DC5108BC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v41 - v15;
  v17 = sub_1DC5109BC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v41 - v24;
  sub_1DC2A2428();
  OUTLINED_FUNCTION_2_6(v16);
  if (v26)
  {
    v27 = sub_1DC2A17A4(v16);
LABEL_7:
    v37 = 1;
    goto LABEL_8;
  }

  v28 = v16;
  v29 = *(v20 + 32);
  v29(v25, v28, v17);
  strcpy(v42, "version.yaml");
  v42[13] = 0;
  v43 = -5120;
  (*(v5 + 104))(v10, *MEMORY[0x1E6968F70], v2);
  sub_1DC2A32B0();
  sub_1DC51099C();
  (*(v5 + 8))(v10, v2);
  v30 = [objc_opt_self() defaultManager];
  sub_1DC51095C();
  v31 = sub_1DC5176FC();

  v32 = [v30 fileExistsAtPath_];

  if (!v32)
  {
    sub_1DC517BAC();
    sub_1DC297814();
    v38 = sub_1DC296DBC();
    sub_1DC516F0C();

    v39 = *(v20 + 8);
    v39(v0, v17);
    v40 = OUTLINED_FUNCTION_60();
    v27 = (v39)(v40);
    goto LABEL_7;
  }

  v33 = *(v20 + 8);
  v34 = OUTLINED_FUNCTION_60();
  v35(v34);
  v36 = OUTLINED_FUNCTION_5_10();
  v27 = (v29)(v36);
  v37 = 0;
LABEL_8:
  OUTLINED_FUNCTION_12_8(v27, v37);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_80_1(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  result = *(v0 - 320);
  v2 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return swift_once();
}

uint64_t sub_1DC2B8848()
{
  sub_1DC517CDC();

  return sub_1DC516F2C();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  *(v1 - 232) = v0;

  return sub_1DC51154C();
}

uint64_t sub_1DC2B8934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_client;
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_142();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC2B8980()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_client;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_63_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_63_6(float a1)
{
  *v2 = a1;

  return sub_1DC291244(v1, v3, (v4 - 96));
}

uint64_t OUTLINED_FUNCTION_63_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_63_9()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
}

BOOL OUTLINED_FUNCTION_63_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_207_1()
{

  return swift_slowAlloc();
}

void sub_1DC2B8BAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v53 = v6 - v7;
  OUTLINED_FUNCTION_22();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = sub_1DC5109BC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v51 = v23 - v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v50 - v26;
  OUTLINED_FUNCTION_22();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v50 - v31;
  OUTLINED_FUNCTION_17_5();
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v16);
  if (!v33)
  {
    v40 = *(v20 + 32);
    v40(v32, v16, v17);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v41 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v40(v1, v32, v17);
LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  v50 = v20;
  sub_1DC2A17A4(v16);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v14);
  if (!v33)
  {
    v42 = *(v50 + 32);
    v42(v30, v14, v17);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v43 = sub_1DC296DBC();
    OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C();

    v42(v1, v30, v17);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v14);
  v34 = objc_opt_self();
  v35 = [v34 getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_17_5();
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v11);
  if (!v33)
  {
    v44 = *(v50 + 32);
    v45 = v52;
    v44(v52, v11, v17);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v46 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v44(v1, v45, v17);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v11);
  v36 = [v34 getSingletonCDMAssetsManager];
  v37 = v53;
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v37);
  if (!v33)
  {
    v47 = *(v50 + 32);
    v48 = v51;
    v47(v51, v37, v17);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v49 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v47(v1, v48, v17);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v37);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_21_2();
  v38 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  v39 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v1, v39, 1, v17);
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2B90E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v155 = a8;
  v154 = a7;
  v182 = a5;
  v153 = a4;
  v152 = a3;
  v173 = a2;
  v165 = a1;
  v174 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v174);
  v172 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v151 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14(&v149[-v21]);
  v166 = sub_1DC5162DC();
  v22 = OUTLINED_FUNCTION_0(v166);
  v161 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v27);
  v28 = sub_1DC510B6C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v175 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  v162 = v35;
  v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v37 = *(*v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v149[-v39];
  v41 = OUTLINED_FUNCTION_229();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  v44 = OUTLINED_FUNCTION_10(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_53();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v149[-v50];
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v149[-v53];
  v55 = *v8;
  v56 = *(*v8 + class metadata base offset for NLBridge + 96);
  v171 = v8;
  v159 = v55 + class metadata base offset for NLBridge + 96;
  v158 = v56;
  (v56)(v52);
  v57 = v175;
  v58 = *(v175 + 16);
  v168 = v175 + 16;
  v167 = v58;
  v58(v51, v182, v28);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v28);
  v62 = v36[14];
  sub_1DC28F414(v54, v40, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F414(v51, &v40[v62], &unk_1ECC7CA30, &qword_1DC522A00);
  if (OUTLINED_FUNCTION_69_0(v40) == 1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v63, v64, v65);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_69_0(&v40[v62]);
    v70 = v171;
    if (v69 == 1)
    {
      sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
      OUTLINED_FUNCTION_30_11();
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1DC28F414(v40, v9, &unk_1ECC7CA30, &qword_1DC522A00);
  if (OUTLINED_FUNCTION_69_0(&v40[v62]) == 1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v71, v72, v73);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v74, v75, v76);
    (*(v57 + 8))(v9, v28);
LABEL_6:
    sub_1DC28EB30(v40, &qword_1ECC7CE20, &unk_1DC523AC8);
    OUTLINED_FUNCTION_30_11();
LABEL_7:
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v77 = v170;
    v78(v170);
    v79 = v169;
    OUTLINED_FUNCTION_16_8();
    v80();
    v81 = v173;

    v82 = sub_1DC516F6C();
    v83 = sub_1DC517BAC();

    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_19_3();
      v84 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v181 = v182;
      *v84 = 136315650;
      v85 = v160;
      v158();
      if (OUTLINED_FUNCTION_69_0(v85))
      {
        sub_1DC28EB30(v85, &unk_1ECC7CA30, &qword_1DC522A00);
        v86 = 0xE300000000000000;
        v87 = 7104878;
        v88 = v175;
      }

      else
      {
        v116 = v162;
        OUTLINED_FUNCTION_16_8();
        v117();
        sub_1DC28EB30(v85, &unk_1ECC7CA30, &qword_1DC522A00);
        v87 = sub_1DC510B1C();
        v86 = v118;
        v88 = v175;
        (*(v175 + 8))(v116, v28);
      }

      v119 = sub_1DC291244(v87, v86, &v181);

      *(v84 + 4) = v119;
      *(v84 + 12) = 2080;
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v120, v121);
      v122 = v169;
      sub_1DC51823C();
      (*(v88 + 8))(v122, v28);
      v123 = OUTLINED_FUNCTION_229();
      v126 = sub_1DC291244(v123, v124, v125);

      *(v84 + 14) = v126;
      *(v84 + 22) = 2080;
      *(v84 + 24) = sub_1DC291244(v165, v173, &v181);
      _os_log_impl(&dword_1DC287000, v82, v83, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v84, 0x20u);
      v81 = v182;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();

      v51[1](v170, v174);
    }

    else
    {

      (*(v175 + 8))(v79, v28);
      v51[1](v77, v54);
    }

    sub_1DC388468();
    swift_allocError();
    *v127 = 0;
    goto LABEL_22;
  }

  v89 = v162;
  (*(v57 + 32))(v162, &v40[v62], v28);
  OUTLINED_FUNCTION_0_33();
  sub_1DC2917D0(v90, v91);
  v150 = sub_1DC5176CC();
  v92 = *(v57 + 8);
  v92(v89, v28);
  sub_1DC28EB30(v51, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v54, &unk_1ECC7CA30, &qword_1DC522A00);
  v92(v9, v28);
  sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_11();
  v70 = v171;
  if ((v150 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v93 = v163;
  (*(*v70 + class metadata base offset for NLBridge + 264))();
  v94 = v166;
  if (__swift_getEnumTagSinglePayload(v93, 1, v166) == 1)
  {
    sub_1DC28EB30(v93, &qword_1ECC7D010, &qword_1DC5263B0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v95 = OUTLINED_FUNCTION_56_11();
    v96(v95);
    v81 = sub_1DC516F6C();
    sub_1DC517BAC();
    v97 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v97, v98))
    {
      OUTLINED_FUNCTION_17_4();
      v99 = swift_slowAlloc();
      *v99 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v100, v101, v102, v103, v99, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v51[1](v28, v54);
    sub_1DC388468();
    swift_allocError();
    *v104 = 1;
LABEL_22:
    swift_willThrow();
    return v81;
  }

  v105 = v161;
  v106 = v93;
  v107 = v164;
  v108 = (*(v161 + 32))(v164, v106, v94);
  (*(*v70 + class metadata base offset for NLBridge + 120))(&v179, v108);
  if (v180)
  {
    sub_1DC28F9B0(&v179, &v181);
    OUTLINED_FUNCTION_16_8();
    v109();
    v182 = sub_1DC516AAC();
    v175 = v110;
    sub_1DC516A8C();
    v174 = sub_1DC516A7C();
    v111 = sub_1DC28FB9C(&v181, v177);
    v172 = (*(*v70 + class metadata base offset for NLBridge + 144))(v111);
    (*(*v70 + class metadata base offset for NLBridge + 168))(v176);
    v112 = (*(v105 + 16))(v157, v107, v94);
    v113 = (*(*v70 + class metadata base offset for NLBridge + 288))(v112);
    if (v113)
    {
      v114 = v113;
      v115 = sub_1DC5151FC();
    }

    else
    {
      v115 = 0;
    }

    type metadata accessor for NLRequestProcessor();
    v139 = v70;
    v140 = (*(*v70 + class metadata base offset for NLBridge + 312))();
    v142 = v141;
    v143 = (*(*v139 + class metadata base offset for NLBridge + 240))();
    v144 = (*(*v139 + class metadata base offset for NLBridge + 336))();
    v145 = (*(*v139 + class metadata base offset for NLBridge + 360))();
    v146 = v155;

    v147 = v173;

    OUTLINED_FUNCTION_53_10(v178);

    sub_1DC2BC120(v152, &unk_1ECC8F000, v156, v165, v147, v154, v146, v182, v175, &v179, v174, v177, v172, v176, v157, v115, v140, v142, v143 & 1, v144, v145);
    v81 = v148;
    __swift_destroy_boxed_opaque_existential_1Tm(&v181);
    (*(v161 + 8))(v164, v166);
  }

  else
  {
    sub_1DC28EB30(&v179, &qword_1ECC7C928, &qword_1DC523AB8);
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v129 = OUTLINED_FUNCTION_56_11();
    v130(v129);
    v81 = sub_1DC516F6C();
    sub_1DC517BAC();
    v131 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_17_4();
      v133 = swift_slowAlloc();
      *v133 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v134, v135, v136, v137, v133, 2u);
      v105 = v161;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v51[1](v28, v54);
    sub_1DC388468();
    swift_allocError();
    *v138 = 2;
    swift_willThrow();
    (*(v105 + 8))(v164, v94);
  }

  return v81;
}

uint64_t sub_1DC2BA094(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_54_11();
  v3 = *(v1 + v2);
}

void *sub_1DC2BA0D8()
{
  v1 = qword_1ECC8F2B8;
  OUTLINED_FUNCTION_54_11();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for NLRequestProcessor()
{
  result = qword_1ECC82CD8;
  if (!qword_1ECC82CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC2BA164()
{
  v1 = (v0 + qword_1ECC8F2D0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1DC2BA1C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DC2BA20C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_13_6();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4(27);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v2);
  if (!v19)
  {
    v23 = OUTLINED_FUNCTION_26_3();
    v4(v23);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v24 = sub_1DC296DBC();
    OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C();

    v25 = (v4)(v6, v1, v12);
LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  sub_1DC2A17A4(v2);
  v20 = [objc_opt_self() getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_22_4(27);
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v0);
  if (!v19)
  {
    v26 = *(v15 + 32);
    OUTLINED_FUNCTION_26_1();
    v26();
    sub_1DC517B9C();
    sub_1DC297814();
    v27 = sub_1DC296DBC();
    sub_1DC516F0C();

    v28 = OUTLINED_FUNCTION_5_10();
    v25 = (v26)(v28);
    goto LABEL_6;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v21 = sub_1DC296DBC();
  OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C();

  v22 = 1;
LABEL_7:
  OUTLINED_FUNCTION_12_8(v25, v22);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BA538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeuristicAgentKeywords(0);
  v5 = OUTLINED_FUNCTION_35(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1DC51094C();
  v14 = sub_1DC5176FC();

  v15 = [v13 contentsAtPath_];

  if (v15)
  {
    v40 = a2;
    sub_1DC510A0C();

    v16 = sub_1DC51080C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1DC5107FC();
    sub_1DC2BB448();
    sub_1DC5107EC();
    v24 = sub_1DC510C8C();
    OUTLINED_FUNCTION_11_0(v24);
    (*(v25 + 24))(v12, a1);
    v26 = sub_1DC517B9C();
    sub_1DC297814();
    v39 = sub_1DC2BE518();
    if (os_log_type_enabled(v39, v26))
    {
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v28 = 136315138;
      swift_beginAccess();
      OUTLINED_FUNCTION_0_57();
      sub_1DC2BBA38(v12, v10, v29);
      v30 = sub_1DC51777C();
      v32 = v26;
      v33 = sub_1DC291244(v30, v31, &v41);

      *(v28 + 4) = v33;
      v34 = v32;
      v35 = v39;
      _os_log_impl(&dword_1DC287000, v39, v34, "Heuristics AgentKeywords asset loaded: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      OUTLINED_FUNCTION_22_16();
    }

    else
    {

      OUTLINED_FUNCTION_22_16();
    }

    swift_beginAccess();
    OUTLINED_FUNCTION_0_57();
    v36 = v40;
    sub_1DC2BBA38(v12, v40, v37);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v4);
    return sub_1DC2BBAF0(v12);
  }

  else
  {
    sub_1DC517BAC();
    sub_1DC297814();
    v19 = sub_1DC2BE518();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v4);
  }
}

unint64_t sub_1DC2BA9E0()
{
  result = qword_1ECC7BC68;
  if (!qword_1ECC7BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC68);
  }

  return result;
}

uint64_t sub_1DC2BAA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1DC5109BC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  type metadata accessor for NLRouterAssetsUtils();
  v17 = sub_1DC2B8400();
  sub_1DC2BE13C();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DC28EB30(v7, &qword_1ECC7C950, &unk_1DC523CF0);
    sub_1DC517BAC();
    sub_1DC297814();
    v18 = sub_1DC2BE518();
    sub_1DC516F0C();

    type metadata accessor for HeuristicAgentKeywords(0);
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    sub_1DC2BA538(a1, a2);
    return (*(v11 + 8))(v16, v8);
  }
}

void sub_1DC2BAC2C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (qword_1ECC8F3F8)
  {
    sub_1DC517B9C();
    sub_1DC297814();
    v4 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  else
  {
    qword_1ECC8F3F8 = sub_1DC2BBBF0(a1, a2);
  }
}

id sub_1DC2BACF4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC51090C();
  v4 = [v2 initWithURL_];

  v5 = sub_1DC5109BC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

_OWORD *sub_1DC2BAD90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1DC2BADA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1DC291F78(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DC2BAE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DC510E4C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_31_1();
  v16 = a1 == 0xD000000000000012 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28C0];
LABEL_7:
    (*(v9 + 104))(v14, *v17, v6);
    (*(v9 + 32))(a3, v14, v6);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  v19 = a1 == 0x7361437265776F4CLL && a2 == 0xE900000000000065;
  if (v19 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28F8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v21 = a1 == 0xD00000000000001FLL && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28F0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v23 = a1 == 0xD000000000000013 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28C8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v25 = a1 == 0xD000000000000010 && v24 == a2;
  if (v25 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28A8];
    goto LABEL_7;
  }

  v26 = a1 == 0x7A696C616D726F4ELL && a2 == 0xEE007364726F5765;
  if (v26 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B2898];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v28 = a1 == 0xD000000000000014 && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28D8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v30 = a1 == 0xD000000000000011 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28B8];
    goto LABEL_7;
  }

  v31 = a1 == 0x745365766F6D6552 && a2 == 0xEF7364726F57706FLL;
  if (v31 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28A0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v33 = a1 == 0xD00000000000001ALL && v32 == a2;
  if (v33 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28E0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v35 = a1 == 0xD000000000000013 && v34 == a2;
  if (v35 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28D0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v37 = a1 == 0xD000000000000010 && v36 == a2;
  if (v37 || (OUTLINED_FUNCTION_3_37() & 1) != 0)
  {

    v17 = MEMORY[0x1E69B28B0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  if (a1 == 0xD00000000000001BLL && v38 == a2)
  {

    goto LABEL_83;
  }

  v40 = OUTLINED_FUNCTION_3_37();

  if (v40)
  {
LABEL_83:
    v17 = MEMORY[0x1E69B28E8];
    goto LABEL_7;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

size_t sub_1DC2BB260(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2BB34C(v8, v7);
  v10 = *(sub_1DC510E4C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC455D00(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC2BB34C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E008, &qword_1DC52F0A8);
  v4 = *(sub_1DC510E4C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC2BB448()
{
  result = qword_1ECC7BC50;
  if (!qword_1ECC7BC50)
  {
    type metadata accessor for HeuristicAgentKeywords(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC50);
  }

  return result;
}

uint64_t sub_1DC2BB4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D900, &unk_1DC529D78);
  v4 = OUTLINED_FUNCTION_0(v23);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = type metadata accessor for HeuristicAgentKeywords(0);
  v8 = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC510C4C();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC2BA9E0();
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v15 = sub_1DC510C8C();
    OUTLINED_FUNCTION_35(v15);
    return (*(v16 + 8))(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2BB778();
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC51814C();
    *(v13 + v7[5]) = v24;
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC51814C();
    *(v13 + v7[6]) = v24;
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC5180EC();
    if (v24)
    {
      v18 = v24;
    }

    else
    {
      v18 = &unk_1F57FC7D8;
    }

    v19 = OUTLINED_FUNCTION_4_34();
    v20(v19);
    *(v13 + v7[7]) = v18;
    OUTLINED_FUNCTION_0_57();
    sub_1DC2BBA38(v13, a2, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1DC2BBAF0(v13);
  }
}

unint64_t sub_1DC2BB778()
{
  result = qword_1ECC7B9E8;
  if (!qword_1ECC7B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9E8);
  }

  return result;
}

uint64_t sub_1DC2BB7FC(char a1)
{
  if (!a1)
  {
    return 0x6D614E746E656741;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001DLL;
}

_BYTE *storeEnumTagSinglePayload for HeuristicAgentKeywords.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DC2BB928);
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

uint64_t getEnumTagSinglePayload for CDMPersonaError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DC2BB9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC2BBA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_11_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_43();
  v8(v7);
  return a2;
}

uint64_t sub_1DC2BBA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC2BBAF0(uint64_t a1)
{
  v2 = type metadata accessor for HeuristicAgentKeywords(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC2BBB4C()
{
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22();
  sub_1DC43F2D0();
  return swift_endAccess();
}

uint64_t sub_1DC2BBBB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NLRouterAssetsUtils();
  result = sub_1DC2BA4FC();
  a1[3] = v2;
  a1[4] = &off_1F57FCFA0;
  *a1 = result;
  return result;
}

id sub_1DC2BBBF0(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34[-v6];
  v8 = sub_1DC5109BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(a1, v13, v14);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DC2BE530(v7, &qword_1ECC7C950, &unk_1DC523CF0);
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  (*(v9 + 32))(v12, v7, v8);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1DC51094C();
  v16 = sub_1DC5176FC();

  v17 = [v15 contentsAtPath_];

  if (!v17)
  {
    sub_1DC517BAC();
    sub_1DC297814();
    v25 = sub_1DC296DBC();
    sub_1DC516F0C();
LABEL_11:

LABEL_14:
    (*(v9 + 8))(v12, v8);
    goto LABEL_15;
  }

  sub_1DC510A0C();

  v18 = objc_opt_self();
  OUTLINED_FUNCTION_16();
  v19 = sub_1DC5109EC();
  v35 = 0;
  v20 = [v18 propertyListWithData:v19 options:0 format:0 error:&v35];

  v21 = v35;
  if (!v20)
  {
    v26 = v21;
    v27 = sub_1DC51085C();

    swift_willThrow();
    sub_1DC517BAC();
    sub_1DC297814();
    v25 = sub_1DC296DBC();
    sub_1DC516F0C();
    v28 = OUTLINED_FUNCTION_16();
    sub_1DC2AD740(v28, v29);
    goto LABEL_11;
  }

  sub_1DC517E8C();
  swift_unknownObjectRelease();
  sub_1DC2BAD90(&v36, v38);
  sub_1DC291F78(v38, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D990, &qword_1DC52A630);
  if (!OUTLINED_FUNCTION_0_61())
  {
    goto LABEL_13;
  }

  sub_1DC2BADA0(0x6974736972756548, 0xEF73656C75527363, v35, &v36);

  if (!v37)
  {
    sub_1DC2BE530(&v36, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_0_61() & 1) == 0)
  {
LABEL_13:
    sub_1DC517BAC();
    sub_1DC297814();
    v30 = sub_1DC296DBC();
    sub_1DC516F0C();
    v31 = OUTLINED_FUNCTION_16();
    sub_1DC2AD740(v31, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    goto LABEL_14;
  }

  v22 = OUTLINED_FUNCTION_16();
  sub_1DC2AD740(v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  (*(v9 + 8))(v12, v8);
  result = v35;
LABEL_16:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DC2BC0D0()
{
  v1 = qword_1ECC8F2E8;
  OUTLINED_FUNCTION_54_11();
  return *(v0 + v1);
}

__n128 sub_1DC2BC120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  v26 = *(v21 + 48);
  v27 = *(v21 + 52);
  swift_allocObject();
  LOBYTE(v29) = a19;
  sub_1DC2BC1F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v29, a20, a21, v30, a15, a16, a13, a14, a11, a12, a9, a10, v31, a5, a6);
  return result;
}

void sub_1DC2BC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_33();
  v35 = v33;
  v55 = v36;
  v54 = sub_1DC510B6C();
  v37 = OUTLINED_FUNCTION_0(v54);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC515E1C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_1DC51617C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  *(v33 + qword_1ECC8F5C0) = 0;
  *(v33 + qword_1ECC8F5B0) = 0;
  *(v33 + qword_1ECC8F5A8) = 0;
  *(v33 + _MergedGlobals_18) = 0;
  *(v33 + qword_1ECC8F5B8) = 0;
  sub_1DC28FB9C(a26, v33 + qword_1ECC7BCF0);
  sub_1DC28FB9C(a24, v33 + qword_1ECC8F5D8);
  *(v33 + qword_1EDAC95A0) = a25;
  v50 = qword_1ECC8F5D0;
  v51 = sub_1DC5162DC();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v35 + v50, a27, v51);
  *(v35 + qword_1ECC8F5E8) = a28;
  *(v35 + qword_1EDAC95A8) = a31;
  type metadata accessor for NLRequestTimeoutTimerManager();

  *(v35 + qword_1ECC8F5A0) = sub_1DC2BC578();
  v53 = (v35 + qword_1EDAC95B0);
  *v53 = a29;
  v53[1] = a30;
  *(v35 + qword_1ECC8F5F8) = a32;
  *(v35 + qword_1ECC8F5F0) = a33;
  (*(v39 + 16))(v34, v55, v54);
  sub_1DC28FB9C(a22, &v56);
  sub_1DC51698C();

  (*(v52 + 8))(a27, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  (*(v39 + 8))(v55, v54);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BC578()
{
  OUTLINED_FUNCTION_27_5();
  v0 = swift_allocObject();
  sub_1DC2BC5AC();
  return v0;
}

uint64_t sub_1DC2BC5AC()
{
  v1 = sub_1DC517BCC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v3 = sub_1DC517BEC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_1DC5173CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_1();
  sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
  *(v0 + 24) = sub_1DC51764C();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173AC();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8098], v3);
  sub_1DC2BC840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  *(v0 + 16) = sub_1DC517C1C();
  return v0;
}

unint64_t sub_1DC2BC7DC()
{
  result = qword_1EDAC7FB0;
  if (!qword_1EDAC7FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC7CD20, &qword_1DC525300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FB0);
  }

  return result;
}

unint64_t sub_1DC2BC840()
{
  result = qword_1EDAC7FA8;
  if (!qword_1EDAC7FA8)
  {
    sub_1DC517BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FA8);
  }

  return result;
}

void sub_1DC2BC898()
{
  v2 = OUTLINED_FUNCTION_70_11();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_0();
  v12 = *MEMORY[0x1E69D0538];
  v13 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v13);
  (*(v14 + 104))(v1, v12, v13);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  OUTLINED_FUNCTION_38_1();
  (*(v18 + qword_1ECC8F590 + 168))(v1);
  sub_1DC28D414();
  v19 = OUTLINED_FUNCTION_21_1(v5);
  v20(v19);
  v21 = v0;
  v22 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_169())
  {
    OUTLINED_FUNCTION_63();
    v23 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_54_15(v23, 5.7779e-34);
    OUTLINED_FUNCTION_52_14(&dword_1DC287000, v24, v25, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v23, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();
  }

  v26 = *(v5 + 8);
  v27 = OUTLINED_FUNCTION_36();
  v28(v27);
  OUTLINED_FUNCTION_154();
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_83_3(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_83_5()
{

  return swift_slowAlloc();
}

void sub_1DC2BCB50()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_13_6();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4(34);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v2);
  if (!v19)
  {
    v23 = OUTLINED_FUNCTION_26_3();
    v4(v23);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v24 = sub_1DC296DBC();
    OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C();

    v25 = (v4)(v6, v1, v12);
LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  sub_1DC2A17A4(v2);
  v20 = [objc_opt_self() getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_22_4(34);
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v0);
  if (!v19)
  {
    v26 = *(v15 + 32);
    OUTLINED_FUNCTION_26_1();
    v26();
    sub_1DC517B9C();
    sub_1DC297814();
    v27 = sub_1DC296DBC();
    sub_1DC516F0C();

    v28 = OUTLINED_FUNCTION_5_10();
    v25 = (v26)(v28);
    goto LABEL_6;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v21 = sub_1DC296DBC();
  OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C();

  v22 = 1;
LABEL_7:
  OUTLINED_FUNCTION_12_8(v25, v22);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BCE44(char a1)
{
  if (!a1)
  {
    v2 = 5;

    return sub_1DC29F950(v2);
  }

  if (a1 == 3)
  {
    v2 = 2;

    return sub_1DC29F950(v2);
  }

  if (a1 != 1)
  {
    return 1;
  }

  if (sub_1DC2BCEFC())
  {
    v2 = 3;

    return sub_1DC29F950(v2);
  }

  return 0;
}

uint64_t sub_1DC2BCEFC()
{
  v219 = sub_1DC510BDC();
  v2 = OUTLINED_FUNCTION_0(v219);
  v223 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v216 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  v9 = OUTLINED_FUNCTION_35(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v205 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v209 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v217 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v213 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v221 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v196 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v204 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v218 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  v207 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  v222 = v38;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  v208 = v40;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  v220 = v42;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  v210 = v44;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_1();
  v206 = v46;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  v212 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  v215 = v50;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  v214 = v52;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  v211 = v54;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_52_2();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = &v196 - v58;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v196 - v61;
  v63 = sub_1DC510C6C();
  v64 = OUTLINED_FUNCTION_0(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_1();
  v71 = v70 - v69;
  sub_1DC510C7C();
  sub_1DC510C5C();
  (*(v66 + 8))(v71, v63);
  v72 = v219;
  sub_1DC510BCC();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v72);
  v224 = v8;
  v73 = *(v8 + 48);
  v74 = OUTLINED_FUNCTION_45_0();
  sub_1DC2BE044(v74, v75);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_0(v26);
  if (!v78)
  {
    v76 = OUTLINED_FUNCTION_41();
    sub_1DC2BE044(v76, v77);
    OUTLINED_FUNCTION_3_0(&v26[v73]);
    if (!v78)
    {
      v94 = v62;
      OUTLINED_FUNCTION_20_4();
      v95 = OUTLINED_FUNCTION_19_4();
      v96(v95);
      sub_1DC2BE0B4();
      LODWORD(v197) = OUTLINED_FUNCTION_29();
      v97 = *(v62 + 1);
      v97(v71, v73);
      sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
      v97(v59, v73);
      v62 = v94;
      v72 = v73;
      sub_1DC28EB30(v26, &qword_1ECC7BED8, &qword_1DC522250);
      v81 = v222;
      v82 = v220;
      if (v197)
      {
        goto LABEL_25;
      }

LABEL_10:
      sub_1DC510BCC();
      OUTLINED_FUNCTION_6_0(v0);
      v83 = v221;
      sub_1DC2BE044(v0, v221);
      sub_1DC2BE044(v62, v83 + v73);
      OUTLINED_FUNCTION_3_0(v83);
      if (v78)
      {
        sub_1DC28EB30(v0, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_3_0(v83 + v73);
        v85 = v217;
        v84 = v218;
        v86 = v215;
        if (v78)
        {
          v87 = v221;
LABEL_68:
          sub_1DC28EB30(v87, &qword_1ECC7BED8, &qword_1DC522250);
          goto LABEL_69;
        }
      }

      else
      {
        v88 = v211;
        sub_1DC2BE044(v83, v211);
        OUTLINED_FUNCTION_3_0(v83 + v73);
        if (!v89)
        {
          OUTLINED_FUNCTION_11_2();
          v105 = OUTLINED_FUNCTION_19_4();
          v106(v105);
          sub_1DC2BE0B4();
          v73 = OUTLINED_FUNCTION_29();
          v107 = v88;
          v108 = *(v62 + 1);
          v108(v82, v72);
          v109 = OUTLINED_FUNCTION_39_0();
          sub_1DC28EB30(v109, v110, &qword_1DC522250);
          v108(v107, v72);
          v62 = v197;
          v81 = v222;
          v82 = v220;
          sub_1DC28EB30(v83, &qword_1ECC7BED8, &qword_1DC522250);
          v85 = v217;
          v84 = v218;
          v86 = v215;
          if (v73)
          {
            goto LABEL_69;
          }

LABEL_19:
          v92 = v214;
          sub_1DC510BCC();
          OUTLINED_FUNCTION_6_0(v92);
          v93 = v213;
          sub_1DC2BE044(v92, v213);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_3_0(v93);
          if (v78)
          {
            sub_1DC28EB30(v92, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_3_0(v93 + v73);
            if (v78)
            {
              goto LABEL_67;
            }
          }

          else
          {
            sub_1DC2BE044(v93, v86);
            OUTLINED_FUNCTION_3_0(v93 + v73);
            if (!v99)
            {
              OUTLINED_FUNCTION_20_4();
              v115 = OUTLINED_FUNCTION_19_4();
              v116(v115);
              sub_1DC2BE0B4();
              OUTLINED_FUNCTION_31_5();
              v73 = v72;
              sub_1DC5176CC();
              v117 = OUTLINED_FUNCTION_17();
              v84(v117);
              v82 = &qword_1ECC7BED8;
              v81 = &qword_1DC522250;
              OUTLINED_FUNCTION_32();
              sub_1DC28EB30(v118, v119, v120);
              v121 = OUTLINED_FUNCTION_54_4();
              v84(v121);
              v85 = v217;
              v84 = v218;
              OUTLINED_FUNCTION_60_1(v93);
              if (v72)
              {
                goto LABEL_69;
              }

LABEL_30:
              v102 = v212;
              sub_1DC510BCC();
              OUTLINED_FUNCTION_6_0(v102);
              v103 = OUTLINED_FUNCTION_41();
              sub_1DC2BE044(v103, v104);
              sub_1DC2BE044(v62, v85 + v73);
              OUTLINED_FUNCTION_3_0(v85);
              if (v78)
              {
                sub_1DC28EB30(v102, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_3_0(v85 + v73);
                if (v78)
                {
LABEL_34:
                  v87 = v85;
                  goto LABEL_68;
                }
              }

              else
              {
                sub_1DC2BE044(v85, v206);
                OUTLINED_FUNCTION_3_0(v85 + v73);
                if (!v111)
                {
                  OUTLINED_FUNCTION_11_2();
                  v127 = OUTLINED_FUNCTION_19_4();
                  v128(v127);
                  sub_1DC2BE0B4();
                  OUTLINED_FUNCTION_31_5();
                  v73 = v72;
                  sub_1DC5176CC();
                  v129 = OUTLINED_FUNCTION_17();
                  v84(v129);
                  v82 = &qword_1ECC7BED8;
                  v81 = &qword_1DC522250;
                  OUTLINED_FUNCTION_32();
                  sub_1DC28EB30(v130, v131, v132);
                  v133 = OUTLINED_FUNCTION_54_4();
                  v84(v133);
                  OUTLINED_FUNCTION_44_0();
                  OUTLINED_FUNCTION_60_1(v85);
                  if (v72)
                  {
                    goto LABEL_69;
                  }

LABEL_41:
                  v114 = v210;
                  sub_1DC510BCC();
                  OUTLINED_FUNCTION_6_0(v114);
                  v93 = v209;
                  sub_1DC2BE044(v114, v209);
                  OUTLINED_FUNCTION_61_0();
                  OUTLINED_FUNCTION_3_0(v93);
                  if (v78)
                  {
                    sub_1DC28EB30(v114, &qword_1ECC7BED8, &qword_1DC522250);
                    OUTLINED_FUNCTION_3_0(v93 + v73);
                    if (v78)
                    {
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    sub_1DC2BE044(v93, v82);
                    OUTLINED_FUNCTION_3_0(v93 + v73);
                    if (!v122)
                    {
                      OUTLINED_FUNCTION_11_2();
                      v141 = OUTLINED_FUNCTION_19_4();
                      v142(v141);
                      sub_1DC2BE0B4();
                      OUTLINED_FUNCTION_29();
                      v143 = OUTLINED_FUNCTION_17();
                      v84(v143);
                      OUTLINED_FUNCTION_32();
                      sub_1DC28EB30(v144, v145, v146);
                      v147 = OUTLINED_FUNCTION_47_1();
                      v84(v147);
                      OUTLINED_FUNCTION_44_0();
                      OUTLINED_FUNCTION_32();
                      v81 = v222;
                      sub_1DC28EB30(v148, v149, v150);
                      if (v73)
                      {
                        goto LABEL_69;
                      }

LABEL_52:
                      v124 = v208;
                      sub_1DC510BCC();
                      OUTLINED_FUNCTION_6_0(v124);
                      v125 = v205;
                      sub_1DC2BE044(v124, v205);
                      sub_1DC2BE044(v62, v125 + v73);
                      OUTLINED_FUNCTION_3_0(v125);
                      if (v78)
                      {
                        sub_1DC28EB30(v124, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_3_0(v125 + v73);
                        v126 = v207;
                        if (v78)
                        {
                          v87 = v125;
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        sub_1DC2BE044(v125, v81);
                        OUTLINED_FUNCTION_3_0(v125 + v73);
                        v126 = v207;
                        if (!v134)
                        {
                          OUTLINED_FUNCTION_20_4();
                          v155 = OUTLINED_FUNCTION_19_4();
                          v156(v155);
                          sub_1DC2BE0B4();
                          OUTLINED_FUNCTION_33_2();
                          v157 = OUTLINED_FUNCTION_17();
                          v84(v157);
                          sub_1DC28EB30(v208, &qword_1ECC7BED8, &qword_1DC522250);
                          (v84)(v81, v72);
                          v84 = v218;
                          v158 = OUTLINED_FUNCTION_39_0();
                          sub_1DC28EB30(v158, v159, &qword_1DC522250);
                          if (v73)
                          {
                            goto LABEL_69;
                          }

                          goto LABEL_63;
                        }

                        sub_1DC28EB30(v208, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_24_2();
                        v135(v81, v72);
                      }

                      sub_1DC28EB30(v125, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_63:
                      sub_1DC510BCC();
                      OUTLINED_FUNCTION_6_0(v126);
                      v136 = v126;
                      v137 = v126;
                      v93 = v203;
                      sub_1DC2BE044(v136, v203);
                      OUTLINED_FUNCTION_61_0();
                      OUTLINED_FUNCTION_3_0(v93);
                      if (!v78)
                      {
                        sub_1DC2BE044(v93, v200);
                        OUTLINED_FUNCTION_3_0(v93 + v73);
                        v138 = v204;
                        if (!v151)
                        {
                          OUTLINED_FUNCTION_11_2();
                          v164 = OUTLINED_FUNCTION_19_4();
                          v165(v164);
                          sub_1DC2BE0B4();
                          OUTLINED_FUNCTION_29();
                          v166 = OUTLINED_FUNCTION_17();
                          v84(v166);
                          v137 = &qword_1ECC7BED8;
                          OUTLINED_FUNCTION_32();
                          sub_1DC28EB30(v167, v168, v169);
                          v170 = OUTLINED_FUNCTION_47_1();
                          v84(v170);
                          OUTLINED_FUNCTION_44_0();
                          OUTLINED_FUNCTION_32();
                          sub_1DC28EB30(v171, v172, v173);
                          if (v73)
                          {
                            goto LABEL_69;
                          }

                          goto LABEL_79;
                        }

                        sub_1DC28EB30(v207, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_24_2();
                        v152 = OUTLINED_FUNCTION_47_1();
                        v153(v152);
LABEL_78:
                        sub_1DC28EB30(v93, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_79:
                        sub_1DC510BCC();
                        OUTLINED_FUNCTION_6_0(v84);
                        v85 = v201;
                        sub_1DC2BE044(v84, v201);
                        sub_1DC2BE044(v62, v85 + v73);
                        OUTLINED_FUNCTION_3_0(v85);
                        if (!v78)
                        {
                          sub_1DC2BE044(v85, v138);
                          OUTLINED_FUNCTION_3_0(v85 + v73);
                          v154 = v202;
                          if (!v160)
                          {
                            OUTLINED_FUNCTION_11_2();
                            v175 = OUTLINED_FUNCTION_19_4();
                            v176(v175);
                            sub_1DC2BE0B4();
                            OUTLINED_FUNCTION_33_2();
                            v177 = OUTLINED_FUNCTION_17();
                            v84(v177);
                            v137 = &qword_1ECC7BED8;
                            OUTLINED_FUNCTION_32();
                            sub_1DC28EB30(v178, v179, v180);
                            (v84)(v138, v72);
                            v62 = v197;
                            OUTLINED_FUNCTION_32();
                            sub_1DC28EB30(v181, v182, v183);
                            if (v73)
                            {
                              goto LABEL_69;
                            }

                            goto LABEL_89;
                          }

                          sub_1DC28EB30(v218, &qword_1ECC7BED8, &qword_1DC522250);
                          OUTLINED_FUNCTION_24_2();
                          v161(v138, v72);
LABEL_88:
                          sub_1DC28EB30(v85, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_89:
                          v162 = v198;
                          sub_1DC510BCC();
                          OUTLINED_FUNCTION_6_0(v162);
                          v163 = v199;
                          sub_1DC2BE044(v162, v199);
                          sub_1DC2D24EC(v62, v163 + v73);
                          OUTLINED_FUNCTION_3_0(v163);
                          if (!v78)
                          {
                            sub_1DC2BE044(v163, v154);
                            OUTLINED_FUNCTION_3_0(v163 + v73);
                            if (!v174)
                            {
                              v184 = v223;
                              v185 = *(v223 + 32);
                              v186 = OUTLINED_FUNCTION_19_4();
                              v187(v186);
                              sub_1DC2BE0B4();
                              v188 = OUTLINED_FUNCTION_33_2();
                              v189 = *(v184 + 8);
                              v189(v137, v72);
                              OUTLINED_FUNCTION_32();
                              sub_1DC28EB30(v190, v191, v192);
                              v189(v154, v72);
                              OUTLINED_FUNCTION_32();
                              sub_1DC28EB30(v193, v194, v195);
                              if (v188)
                              {
                                goto LABEL_70;
                              }

LABEL_100:
                              v139 = 0;
                              return v139 & 1;
                            }

                            sub_1DC28EB30(v162, &qword_1ECC7BED8, &qword_1DC522250);
                            (*(v223 + 8))(v154, v72);
LABEL_99:
                            sub_1DC28EB30(v163, &qword_1ECC7BED0, qword_1DC52A730);
                            goto LABEL_100;
                          }

                          sub_1DC28EB30(v162, &qword_1ECC7BED8, &qword_1DC522250);
                          OUTLINED_FUNCTION_3_0(v163 + v73);
                          if (!v78)
                          {
                            goto LABEL_99;
                          }

                          v62 = v163;
LABEL_69:
                          sub_1DC28EB30(v62, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_70:
                          v98 = 8;
                          goto LABEL_71;
                        }

                        sub_1DC28EB30(v84, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_3_0(v85 + v73);
                        v154 = v202;
                        if (!v78)
                        {
                          goto LABEL_88;
                        }

                        goto LABEL_34;
                      }

                      sub_1DC28EB30(v137, &qword_1ECC7BED8, &qword_1DC522250);
                      OUTLINED_FUNCTION_3_0(v93 + v73);
                      v138 = v204;
                      if (!v78)
                      {
                        goto LABEL_78;
                      }

LABEL_67:
                      v87 = v93;
                      goto LABEL_68;
                    }

                    sub_1DC28EB30(v210, &qword_1ECC7BED8, &qword_1DC522250);
                    OUTLINED_FUNCTION_24_2();
                    v123(v82, v72);
                  }

                  sub_1DC28EB30(v93, &qword_1ECC7BED0, qword_1DC52A730);
                  goto LABEL_52;
                }

                sub_1DC28EB30(v212, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_24_2();
                v112 = OUTLINED_FUNCTION_54_4();
                v113(v112);
              }

              sub_1DC28EB30(v85, &qword_1ECC7BED0, qword_1DC52A730);
              goto LABEL_41;
            }

            sub_1DC28EB30(v214, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_24_2();
            v100 = OUTLINED_FUNCTION_54_4();
            v101(v100);
          }

          sub_1DC28EB30(v93, &qword_1ECC7BED0, qword_1DC52A730);
          goto LABEL_30;
        }

        sub_1DC28EB30(v0, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_24_2();
        v90 = OUTLINED_FUNCTION_47_1();
        v91(v90);
        v85 = v217;
        v84 = v218;
        v86 = v215;
      }

      sub_1DC28EB30(v221, &qword_1ECC7BED0, qword_1DC52A730);
      goto LABEL_19;
    }

    sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_24_2();
    v79 = OUTLINED_FUNCTION_47_1();
    v80(v79);
LABEL_9:
    sub_1DC28EB30(v26, &qword_1ECC7BED0, qword_1DC52A730);
    v81 = v222;
    v82 = v220;
    goto LABEL_10;
  }

  sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
  OUTLINED_FUNCTION_3_0(&v26[v73]);
  if (!v78)
  {
    goto LABEL_9;
  }

  sub_1DC28EB30(v26, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_25:
  sub_1DC28EB30(v62, &qword_1ECC7BED8, &qword_1DC522250);
  v98 = 9;
LABEL_71:
  v139 = sub_1DC29F950(v98);
  return v139 & 1;
}