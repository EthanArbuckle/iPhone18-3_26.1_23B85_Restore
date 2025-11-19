void sub_257659818()
{
  OUTLINED_FUNCTION_31();
  v110 = v1;
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_63(v2);
  v100 = v4;
  v101 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v97 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880608, &unk_25776D460);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v99 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  v109 = v14;
  v15 = type metadata accessor for MLProgram.Function();
  v16 = OUTLINED_FUNCTION_63(v15);
  v104 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v98 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v105 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_64_2(v27);
  MLProgram.functions.getter();
  v28 = 0;
  v29 = 0;
  v31 = *(v30 + 64);
  v106 = v15;
  v107 = v30;
  v32 = *(v30 + 32);
  OUTLINED_FUNCTION_41_0();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v111 = v0;
  v102 = v38;
  v103 = v33;
  if ((v35 & v34) == 0)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v114 = v29;
LABEL_7:
    v40 = (*(v107 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v36)))));
    v41 = *v40;
    v42 = v40[1];
    MLProgram.functions.getter();
    v44 = v43;

    swift_isUniquelyReferenced_nonNull_native();
    sub_25765368C(v41, v42);
    OUTLINED_FUNCTION_52_3();
    if (__OFADD__(v47, v48))
    {
      break;
    }

    v49 = v45;
    v50 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
    if (sub_257743894())
    {
      v51 = sub_25765368C(v41, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_42;
      }

      v49 = v51;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_40;
    }

    v53 = *(v44 + 56);
    v54 = *(v104 + 72) * v49;
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v55 + v54, v112);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v106);
    sub_257652BA8();
    sub_2574AD5D8(v112, v105, &qword_27F880730, &qword_25776D388);
    if (__swift_getEnumTagSinglePayload(v105, 1, v106) == 1)
    {
      sub_2574695E4(v105, &qword_27F880730, &qword_25776D388);
      sub_2576493CC(*(v44 + 48) + 16 * v49);
      sub_2577438B4();
    }

    else
    {
      sub_25765C3FC(v105, v98);
      sub_25765C3FC(v98, *(v44 + 56) + v54);
    }

    v29 = v114;
    v36 &= v36 - 1;
    sub_2574695E4(v112, &qword_27F880730, &qword_25776D388);
    sub_25765B944(v44);
    v60 = v59;

    v61 = *(v111 + 8);

    *(v111 + 8) = v60;
    v38 = v102;
    v33 = v103;
    if (!v36)
    {
LABEL_3:
      while (1)
      {
        v39 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v39 >= v38)
        {

          MLProgram.attributes.getter();
          v62 = 0;
          v64 = *(v63 + 64);
          v113 = v63;
          v65 = *(v63 + 32);
          OUTLINED_FUNCTION_41_0();
          v69 = v68 & v67;
          v71 = (v70 + 63) >> 6;
          v106 = v71;
          v108 = v66;
          if ((v68 & v67) == 0)
          {
            goto LABEL_19;
          }

          while (1)
          {
            v115 = v29;
LABEL_23:
            v73 = (*(v113 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v69)))));
            v74 = *v73;
            v75 = v73[1];
            MLProgram.attributes.getter();
            v77 = v76;

            swift_isUniquelyReferenced_nonNull_native();
            v116 = v77;
            sub_25765368C(v74, v75);
            OUTLINED_FUNCTION_52_3();
            if (__OFADD__(v78, v79))
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_39_6();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880620, &qword_25776CCA0);
            if (sub_257743894())
            {
              sub_25765368C(v74, v75);
              OUTLINED_FUNCTION_22_11();
              v81 = v111;
              if (!v82)
              {
                goto LABEL_42;
              }

              v36 = v80;
            }

            else
            {
              v81 = v111;
            }

            if ((v28 & 1) == 0)
            {
              goto LABEL_41;
            }

            LOBYTE(v28) = v116;
            v83 = *(v116 + 56);
            v84 = *(v100 + 72) * v36;
            OUTLINED_FUNCTION_14_9();
            sub_25765C3FC(v85 + v84, v109);
            OUTLINED_FUNCTION_21();
            __swift_storeEnumTagSinglePayload(v86, v87, v88, v101);
            sub_257718008(v109, v110);
            sub_2574AD5D8(v109, v99, &qword_27F880608, &unk_25776D460);
            if (__swift_getEnumTagSinglePayload(v99, 1, v101) == 1)
            {
              sub_2574695E4(v99, &qword_27F880608, &unk_25776D460);
              sub_2576493CC(*(v116 + 48) + 16 * v36);
              sub_2577438B4();
            }

            else
            {
              v36 = v97;
              sub_25765C3FC(v99, v97);
              sub_25765C3FC(v97, *(v116 + 56) + v84);
            }

            v69 &= v69 - 1;
            sub_2574695E4(v109, &qword_27F880608, &unk_25776D460);
            v29 = v115;
            v89 = sub_25765B64C(v116);

            v90 = *(v81 + 32);

            *(v81 + 32) = v89;
            v71 = v106;
            v66 = v108;
            if (!v69)
            {
LABEL_19:
              while (1)
              {
                v72 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  goto LABEL_37;
                }

                if (v72 >= v71)
                {

                  OUTLINED_FUNCTION_35();
                  return;
                }

                v69 = *(v66 + 8 * v72);
                ++v62;
                if (v69)
                {
                  v115 = v29;
                  v62 = v72;
                  goto LABEL_23;
                }
              }
            }
          }
        }

        v36 = *(v33 + 8 * v39);
        ++v28;
        if (v36)
        {
          v114 = v29;
          v28 = v39;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v106);
  __break(1u);
LABEL_41:
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v101);
  __break(1u);
LABEL_42:
  sub_2577439B4();
  __break(1u);
}

BOOL static MLProgram.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && (sub_25747793C(a1[1], a2[1]) & 1) != 0)
  {
    v4 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v4 || (sub_257743994() & 1) != 0)
    {
      v5 = a1[4];
      v6 = a2[4];
      sub_257476DC8();
      if (v7)
      {
        v8 = *(type metadata accessor for Proto_MILSpec_Program(0) + 32);
        sub_2577431B4();
        sub_25765BF60(&qword_27F879B68, MEMORY[0x277D216C8]);
        if (sub_257743644())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void MLProgram.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for MLProgram();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_25765C59C(v0, v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257744E70;
  *(v20 + 32) = 0x6E6F6973726576;
  *(v20 + 40) = 0xE700000000000000;
  *(v20 + 48) = *v0;
  OUTLINED_FUNCTION_38_4();
  v21[9] = v23;
  v21[10] = v22;
  v21[11] = 0xE900000000000073;
  MLProgram.functions.getter();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880740, &unk_25776D3A0);
  *(v20 + 96) = v25;
  *(v20 + 120) = v26;
  strcpy((v20 + 128), "documentation");
  v27 = v0[2];
  v28 = v0[3];
  *(v20 + 142) = -4864;
  *(v20 + 144) = v27;
  *(v20 + 152) = v28;
  OUTLINED_FUNCTION_76_3();
  *(v20 + 168) = v30;
  *(v20 + 176) = v29;
  *(v20 + 184) = 0xEA00000000007365;
  MLProgram.attributes.getter();
  v32 = v31;
  *(v20 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8805F0, &qword_25776CBE8);
  *(v20 + 192) = v32;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);

  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.debugDescription.getter()
{
  sub_257657310();
  sub_2576A66C8(0, v0, v1, 2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_205();
  sub_257483A28(v4, v5, 2);
  return v3;
}

uint64_t sub_25765A304(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC274(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_25765A3B8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_25765A3B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25765A76C(v8, v9, a1, v4);
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
    return sub_25765A500(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25765A500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        sub_2574AD5D8(v23, v17, &qword_27F879D18, &unk_257775F30);
        sub_2574AD5D8(v20, v13, &qword_27F879D18, &unk_257775F30);
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_257743994();
        sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
        result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          sub_25765C4AC(v23, v36);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_25765C4AC(v26, v20);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2574695E4(v13, &qword_27F879D18, &unk_257775F30);
      result = sub_2574695E4(v17, &qword_27F879D18, &unk_257775F30);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_25765A76C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v119 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v126 = *(v134 - 8);
  v6 = *(v126 + 64);
  v7 = MEMORY[0x28223BE20](v134);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v133 = &v114 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = (&v114 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v114 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v130 = (&v114 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = (&v114 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v118 = (&v114 - v21);
  MEMORY[0x28223BE20](v20);
  v117 = (&v114 - v22);
  v128 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_112:
    v26 = *v119;
    if (!*v119)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v106 = (v25 + 16);
      for (i = *(v25 + 16); i >= 2; *v106 = i)
      {
        if (!*v128)
        {
          goto LABEL_149;
        }

        v108 = (v25 + 16 * i);
        v109 = *v108;
        v110 = &v106[2 * i];
        v111 = *(v110 + 1);
        v112 = v132;
        sub_25765B10C(*v128 + *(v126 + 72) * *v108, *v128 + *(v126 + 72) * *v110, *v128 + *(v126 + 72) * v111, v26);
        v132 = v112;
        if (v112)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v106)
        {
          goto LABEL_138;
        }

        *v108 = v109;
        v108[1] = v111;
        v113 = *v106 - i;
        if (*v106 < i)
        {
          goto LABEL_139;
        }

        i = *v106 - 1;
        sub_2576FB794(v110 + 16, v113, v110);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v25 = sub_2576FB678(v25);
    goto LABEL_114;
  }

  v114 = a4;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v26 = &unk_257775F30;
  v123 = v15;
  while (1)
  {
    v27 = v24;
    v28 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v124 = v23;
      v29 = *v128;
      v30 = *(v126 + 72);
      v131 = v24 + 1;
      v31 = v117;
      sub_2574AD5D8(v29 + v30 * v28, v117, &qword_27F879D18, &unk_257775F30);
      v127 = v30;
      v32 = v118;
      sub_2574AD5D8(v29 + v30 * v27, v118, &qword_27F879D18, &unk_257775F30);
      if (*v31 == *v32 && v31[1] == v32[1])
      {
        LODWORD(v125) = 0;
      }

      else
      {
        LODWORD(v125) = sub_257743994();
      }

      v115 = v25;
      v26 = &unk_257775F30;
      sub_2574695E4(v118, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v117, &qword_27F879D18, &unk_257775F30);
      v116 = v27;
      v34 = v27 + 2;
      v35 = v127 * (v27 + 2);
      v36 = v29 + v35;
      v37 = v131;
      v38 = v127 * v131;
      v39 = v29 + v127 * v131;
      do
      {
        v28 = v34;
        v25 = v37;
        v40 = v38;
        v41 = v35;
        if (v34 >= v124)
        {
          break;
        }

        v131 = v34;
        v42 = v129;
        sub_2574AD5D8(v36, v129, &qword_27F879D18, &unk_257775F30);
        v43 = v130;
        sub_2574AD5D8(v39, v130, &qword_27F879D18, &unk_257775F30);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_257743994();
        v28 = v131;
        sub_2574695E4(v130, &qword_27F879D18, &unk_257775F30);
        v26 = &unk_257775F30;
        sub_2574695E4(v129, &qword_27F879D18, &unk_257775F30);
        v34 = v28 + 1;
        v36 += v127;
        v39 += v127;
        v37 = v25 + 1;
        v38 = v40 + v127;
        v35 = v41 + v127;
        v15 = v123;
      }

      while (((v125 ^ v45) & 1) == 0);
      if (v125)
      {
        v46 = v116;
        if (v28 < v116)
        {
          goto LABEL_143;
        }

        if (v116 >= v28)
        {
          v25 = v115;
          v27 = v116;
          goto LABEL_37;
        }

        v47 = v116 * v127;
        do
        {
          if (v46 != v25)
          {
            v48 = *v128;
            if (!*v128)
            {
              goto LABEL_150;
            }

            v26 = v48 + v47;
            sub_25765C4AC(v48 + v47, v122);
            v49 = v47 < v40 || v26 >= v48 + v41;
            if (v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v47 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_25765C4AC(v122, v48 + v40);
          }

          ++v46;
          v40 -= v127;
          v41 -= v127;
          v47 += v127;
        }

        while (v46 < v25--);
      }

      v25 = v115;
      v27 = v116;
    }

LABEL_37:
    v51 = v128[1];
    if (v28 < v51)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_142;
      }

      if (v28 - v27 < v114)
      {
        break;
      }
    }

LABEL_59:
    if (v28 < v27)
    {
      goto LABEL_141;
    }

    v131 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v25 + 16);
      sub_257469A28();
      v25 = v104;
    }

    v62 = *(v25 + 16);
    v63 = v62 + 1;
    v24 = v131;
    if (v62 >= *(v25 + 24) >> 1)
    {
      sub_257469A28();
      v24 = v131;
      v25 = v105;
    }

    *(v25 + 16) = v63;
    v64 = v25 + 32;
    v65 = (v25 + 32 + 16 * v62);
    *v65 = v27;
    v65[1] = v24;
    v127 = *v119;
    if (!v127)
    {
      goto LABEL_151;
    }

    if (v62)
    {
      while (1)
      {
        v26 = v63 - 1;
        v66 = (v64 + 16 * (v63 - 1));
        v67 = (v25 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_79:
          if (v71)
          {
            goto LABEL_128;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_131;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_136;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v26 = v63 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v63 < 2)
        {
          goto LABEL_130;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_94:
        if (v86)
        {
          goto LABEL_133;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_135;
        }

        if (v93 < v85)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v26 - 1 >= v63)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v128)
        {
          goto LABEL_148;
        }

        v97 = v25;
        v98 = (v64 + 16 * (v26 - 1));
        v99 = *v98;
        v100 = v64 + 16 * v26;
        v25 = *(v100 + 8);
        v101 = v132;
        sub_25765B10C(*v128 + *(v126 + 72) * *v98, *v128 + *(v126 + 72) * *v100, *v128 + *(v126 + 72) * v25, v127);
        v132 = v101;
        if (v101)
        {
          goto LABEL_110;
        }

        if (v25 < v99)
        {
          goto LABEL_123;
        }

        v102 = *(v97 + 16);
        if (v26 > v102)
        {
          goto LABEL_124;
        }

        *v98 = v99;
        v98[1] = v25;
        if (v26 >= v102)
        {
          goto LABEL_125;
        }

        v63 = v102 - 1;
        sub_2576FB794((v100 + 16), v102 - 1 - v26, (v64 + 16 * v26));
        v25 = v97;
        *(v97 + 16) = v102 - 1;
        v24 = v131;
        if (v102 <= 2)
        {
          goto LABEL_108;
        }
      }

      v72 = v64 + 16 * v63;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_140;
        }

        if (v70 < v96)
        {
          v26 = v63 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v128[1];
    v26 = &unk_257775F30;
    if (v24 >= v23)
    {
      goto LABEL_112;
    }
  }

  v52 = v27 + v114;
  if (__OFADD__(v27, v114))
  {
    goto LABEL_144;
  }

  if (v52 >= v51)
  {
    v52 = v128[1];
  }

  if (v52 < v27)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v28 == v52)
  {
    goto LABEL_59;
  }

  v115 = v25;
  v116 = v27;
  v53 = *v128;
  v54 = *(v126 + 72);
  v55 = *v128 + v54 * (v28 - 1);
  v26 = -v54;
  v56 = v27 - v28;
  v120 = v54;
  v121 = v52;
  v57 = v53 + v28 * v54;
LABEL_46:
  v131 = v28;
  v124 = v57;
  v125 = v56;
  v127 = v55;
  while (1)
  {
    sub_2574AD5D8(v57, v15, &qword_27F879D18, &unk_257775F30);
    v58 = v135;
    sub_2574AD5D8(v55, v135, &qword_27F879D18, &unk_257775F30);
    if (*v15 == *v58 && v15[1] == v58[1])
    {
      sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
      sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
LABEL_57:
      v28 = v131 + 1;
      v55 = v127 + v120;
      v56 = v125 - 1;
      v57 = v124 + v120;
      if (v131 + 1 == v121)
      {
        v28 = v121;
        v25 = v115;
        v27 = v116;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v60 = sub_257743994();
    sub_2574695E4(v135, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
    if ((v60 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v53)
    {
      break;
    }

    v61 = v133;
    sub_25765C4AC(v57, v133);
    swift_arrayInitWithTakeFrontToBack();
    sub_25765C4AC(v61, v55);
    v55 += v26;
    v57 += v26;
    v49 = __CFADD__(v56++, 1);
    if (v49)
    {
      goto LABEL_57;
    }
  }

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
}

uint64_t sub_25765B10C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = (&v57 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v57 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v69 = a1;
  v68 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_257483500(a1, v21 / v20, a4);
    v29 = v28;
    v65 = a4 + v26 * v20;
    v67 = v65;
    v63 = a3;
    while (1)
    {
      if (a4 >= v65 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_2574AD5D8(v29, v18, &qword_27F879D18, &unk_257775F30);
      sub_2574AD5D8(a4, v15, &qword_27F879D18, &unk_257775F30);
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
      }

      else
      {
        v33 = sub_257743994();
        sub_2574695E4(v15, &qword_27F879D18, &unk_257775F30);
        sub_2574695E4(v18, &qword_27F879D18, &unk_257775F30);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v63;
          }

          else
          {
            a3 = v63;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v63;
LABEL_37:
      a1 += v20;
      v69 = a1;
    }
  }

  v38 = v23;
  sub_257483500(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v62 = -v20;
  v59 = a4;
LABEL_42:
  v43 = v39 + v41;
  v44 = a3;
  v45 = v42;
  v63 = v39;
  v60 = v42;
  v61 = v43;
  while (1)
  {
    if (v40 <= a4)
    {
      v69 = v39;
      v67 = v45;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v58 = v45;
    v46 = v62;
    v47 = v40 + v62;
    v48 = v64;
    sub_2574AD5D8(v40 + v62, v64, &qword_27F879D18, &unk_257775F30);
    v49 = v43;
    v50 = v65;
    sub_2574AD5D8(v49, v65, &qword_27F879D18, &unk_257775F30);
    if (*v48 == *v50 && v48[1] == v50[1])
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_257743994();
    }

    a3 = v44 + v46;
    sub_2574695E4(v65, &qword_27F879D18, &unk_257775F30);
    sub_2574695E4(v64, &qword_27F879D18, &unk_257775F30);
    if (v52)
    {
      v54 = v44 < v63 || a3 >= v63;
      a4 = v59;
      if (v54)
      {
        v55 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v42 = v58;
        v41 = v62;
      }

      else
      {
        v42 = v58;
        v56 = v61;
        v41 = v62;
        v39 = v61;
        if (v44 != v63)
        {
          v42 = v58;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
        }
      }

      goto LABEL_42;
    }

    v53 = v44 < v40 || a3 >= v40;
    a4 = v59;
    if (v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = a3;
      v40 = v47;
      v45 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
    }

    else
    {
      v45 = v47;
      v22 = v40 == v44;
      v44 = a3;
      v40 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v63;
        v44 = a3;
        v40 = v47;
        v45 = v47;
      }
    }
  }

  v69 = v39;
  v67 = v42;
LABEL_70:
  sub_2576FB690(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_25765B64C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Value(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLProgram.Value();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880630, &qword_25776D4A0);
  result = sub_2577438E4();
  v9 = result;
  v10 = 0;
  v38 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v34;
      sub_25765C59C(*(v38 + 56) + *(v35 + 72) * v21, v34);
      v26 = v36;
      sub_25765C59C(v25, v36);

      sub_25765C454(v25, type metadata accessor for MLProgram.Value);
      v9 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      result = sub_25765C3FC(v26, v9[7] + *(v37 + 72) * v21);
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v9[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25765B944(uint64_t a1)
{
  v2 = type metadata accessor for Proto_MILSpec_Function(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_30_7(v7);
  v8 = type metadata accessor for MLProgram.Function();
  v9 = OUTLINED_FUNCTION_24(v8);
  v44 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_64_2(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880758, &qword_25776D4A8);
  sub_2577438E4();
  v14 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v17 = *(v15 - 32);
  OUTLINED_FUNCTION_41_0();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v41 = v23 + 8;
  v42 = v23;
  if ((v19 & v18) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_50_2();
LABEL_8:
      v26 = v24 | (v14 << 6);
      v27 = *(v47 + 56);
      v28 = (*(v47 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      OUTLINED_FUNCTION_3_31();
      sub_25765C59C(v32, v43);
      OUTLINED_FUNCTION_18_15();
      sub_25765C59C(v43, v45);

      OUTLINED_FUNCTION_16_8();
      sub_25765C454(v43, v33);
      *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v34 = (v42[6] + 16 * v26);
      *v34 = v29;
      v34[1] = v30;
      v35 = v42[7];
      v36 = *(v46 + 72);
      OUTLINED_FUNCTION_17_11();
      sub_25765C3FC(v45, v37);
      v38 = v42[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v42[2] = v40;
      if (!v20)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v14 >= v22)
      {
        return;
      }

      ++v25;
      if (*(v15 + 8 * v14))
      {
        OUTLINED_FUNCTION_49_2();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25765BB84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  OUTLINED_FUNCTION_13(v11);
  result = sub_25765C3FC(a4, v10 + *(v12 + 72) * a1);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_25765BC2C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_25765BC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25765368C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
    sub_257743894();
    v12 = *(*(v23 + 48) + 16 * v9 + 8);

    v13 = *(v23 + 56);
    v14 = type metadata accessor for MLProgram.Function();
    OUTLINED_FUNCTION_4(v14);
    v16 = *(v15 + 72);
    OUTLINED_FUNCTION_0_45();
    sub_25765C3FC(v17, a3);
    sub_2577438B4();
    *v4 = v23;
    OUTLINED_FUNCTION_21();
    v21 = v14;
  }

  else
  {
    type metadata accessor for MLProgram.Function();
    OUTLINED_FUNCTION_44();
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_25765BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880738, &unk_25776D390);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = *v3;
  if (v4)
  {
    v13 = v12[7];
    v14 = type metadata accessor for MLProgram.Function();
    OUTLINED_FUNCTION_13(v14);
    v16 = *(v15 + 72);
    v17 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v17, v18);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, v12, type metadata accessor for MLProgram.Function);
    OUTLINED_FUNCTION_434();
  }
}

uint64_t type metadata accessor for MLProgram()
{
  result = qword_281537430;
  if (!qword_281537430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25765BF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25765BFD0()
{
  result = type metadata accessor for Proto_MILSpec_Program(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25765C03C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_25765368C(a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880748, &unk_25776D470);
  OUTLINED_FUNCTION_19_12();
  if ((sub_257743894() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v4;
  v16 = sub_25765368C(a2, a3);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2577439B4();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    OUTLINED_FUNCTION_434();

    return sub_25765C160(v20, v21);
  }

  else
  {
    sub_25765BC2C(v13, a2, a3, a1, v18);
    OUTLINED_FUNCTION_434();
  }
}

void sub_25765C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880618, &unk_25776D480);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = *v3;
  if (v4)
  {
    v13 = v12[7];
    v14 = type metadata accessor for MLProgram.Argument(0);
    OUTLINED_FUNCTION_13(v14);
    v16 = *(v15 + 72);
    v17 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v17, v18);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, v12, type metadata accessor for MLProgram.Argument);
    OUTLINED_FUNCTION_434();
  }
}

void sub_25765C2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_17(a1, a2, a3);
  OUTLINED_FUNCTION_52_3();
  if (__OFADD__(v5, v6))
  {
    __break(1u);
LABEL_11:
    sub_2577439B4();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_39_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
  OUTLINED_FUNCTION_19_12();
  v7 = sub_257743894();
  if (v7)
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_22_11();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = *v3;
  if (v4)
  {
    v13 = v12[7];
    v14 = type metadata accessor for MLProgram.Block();
    OUTLINED_FUNCTION_13(v14);
    v16 = *(v15 + 72);
    v17 = OUTLINED_FUNCTION_39_2();
    sub_25765C5F4(v17, v18);
    OUTLINED_FUNCTION_434();
  }

  else
  {
    OUTLINED_FUNCTION_25_9(v7, v8, v9, v10, v12, type metadata accessor for MLProgram.Block);
    OUTLINED_FUNCTION_434();
  }
}

uint64_t sub_25765C3FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25765C454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25765C4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25765C51C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_257743804();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25765C59C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25765C5F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

unint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_25765368C(a2, a3);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{

  return sub_25765BB84(v9, v8, v7, v6, a5, a6);
}

unint64_t OUTLINED_FUNCTION_34_5()
{
  v4 = *v2;

  return sub_25765368C(v1, v0);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25765C7DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25765C81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25765C888(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25765C8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25765C928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{

  MEMORY[0x259C64E90](47, 0xE100000000000000);
  result = MEMORY[0x259C64E90](a1, a2);
  *a7 = a3;
  a7[1] = a4;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a5;
  a7[7] = a6;
  return result;
}

uint64_t sub_25765C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v26 = a3;
  v27 = a5;
  v12 = sub_257743164();
  v13 = OUTLINED_FUNCTION_63(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257743154();
  v20 = sub_257743144();
  v22 = v21;
  (*(v15 + 8))(v19, v12);

  sub_25765C928(a1, a2, v26, a4, v27, a6, v29);
  v23 = *(v7 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v7 + 32);
  sub_25765C03C(v29, v20, v22);

  *(v7 + 32) = v28;
  return result;
}

uint64_t sub_25765CB20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000257780AE0 == a2;
  if (v3 || (sub_257743994() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000257780B00 == a2;
    if (v6 || (sub_257743994() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F666E496D657469 && a2 == 0xEF73656972746E45)
    {

      return 2;
    }

    else
    {
      v8 = sub_257743994();

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

uint64_t sub_25765CC4C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6F666E496D657469;
}

uint64_t sub_25765CCBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880788, &qword_25776D5E8);
  OUTLINED_FUNCTION_63(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DA14();
  OUTLINED_FUNCTION_6_25();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  OUTLINED_FUNCTION_3_32();
  sub_257743944();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v20 = v3[4];
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880770, &qword_25776D5E0);
    sub_25765DABC(&qword_27F880790, sub_25765DB40);
    sub_257743954();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_25765CE84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880760, &qword_25776D5D8);
  OUTLINED_FUNCTION_63(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DA14();
  sub_257743AB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_257743924();
  v12 = v11;
  v19 = v10;
  v17 = sub_257743924();
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880770, &qword_25776D5E0);
  sub_25765DABC(&qword_27F880778, sub_25765DA68);
  sub_257743934();
  v14 = OUTLINED_FUNCTION_2_32();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_25765D100(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_257743994() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_257743994() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
      if (v7 || (sub_257743994() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_257743994();

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

uint64_t sub_25765D268(unsigned __int8 a1)
{
  sub_257743A14();
  MEMORY[0x259C651F0](a1);
  return sub_257743A64();
}

uint64_t sub_25765D2B0(char a1)
{
  result = 1752457584;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x726F68747561;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25765D324(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807B0, &qword_25776D5F8);
  OUTLINED_FUNCTION_63(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DB94();
  OUTLINED_FUNCTION_6_25();
  v14 = *v3;
  v15 = v3[1];
  v23[15] = 0;
  OUTLINED_FUNCTION_3_32();
  sub_257743944();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v23[14] = 1;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v18 = v3[4];
    v19 = v3[5];
    v23[13] = 2;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
    v20 = v3[6];
    v21 = v3[7];
    v23[12] = 3;
    OUTLINED_FUNCTION_3_32();
    sub_257743944();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_25765D4A8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807A0, &qword_25776D5F0);
  OUTLINED_FUNCTION_63(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25765DB94();
  sub_257743AB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_4_21();
  v14 = sub_257743924();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  OUTLINED_FUNCTION_4_21();
  v16 = sub_257743924();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  OUTLINED_FUNCTION_4_21();
  v28 = sub_257743924();
  v30 = v18;
  v38 = 3;
  v19 = sub_257743924();
  v21 = v20;
  (*(v7 + 8))(v12, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_25765DBE8(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_25765DC20(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

uint64_t sub_25765D75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25765CB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25765D7A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25765CC44();
  *a1 = result;
  return result;
}

uint64_t sub_25765D7CC(uint64_t a1)
{
  v2 = sub_25765DA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25765D808(uint64_t a1)
{
  v2 = sub_25765DA14();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25765D844@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25765CE84(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25765D8A4()
{
  v1 = *v0;
  sub_257743A14();
  MEMORY[0x259C651F0](v1);
  return sub_257743A64();
}

uint64_t sub_25765D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25765D100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25765D918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25765D260();
  *a1 = result;
  return result;
}

uint64_t sub_25765D940(uint64_t a1)
{
  v2 = sub_25765DB94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25765D97C(uint64_t a1)
{
  v2 = sub_25765DB94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25765D9B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25765D4A8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_25765DA14()
{
  result = qword_27F880768;
  if (!qword_27F880768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880768);
  }

  return result;
}

unint64_t sub_25765DA68()
{
  result = qword_27F880780;
  if (!qword_27F880780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880780);
  }

  return result;
}

uint64_t sub_25765DABC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F880770, &qword_25776D5E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25765DB40()
{
  result = qword_27F880798;
  if (!qword_27F880798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880798);
  }

  return result;
}

unint64_t sub_25765DB94()
{
  result = qword_27F8807A8;
  if (!qword_27F8807A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807A8);
  }

  return result;
}

uint64_t _s8ManifestV11PackageItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ManifestV11PackageItemV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s8ManifestV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25765DE94()
{
  result = qword_27F8807B8;
  if (!qword_27F8807B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807B8);
  }

  return result;
}

unint64_t sub_25765DEEC()
{
  result = qword_27F8807C0;
  if (!qword_27F8807C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807C0);
  }

  return result;
}

unint64_t sub_25765DF44()
{
  result = qword_27F8807C8;
  if (!qword_27F8807C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807C8);
  }

  return result;
}

unint64_t sub_25765DF9C()
{
  result = qword_27F8807D0;
  if (!qword_27F8807D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807D0);
  }

  return result;
}

unint64_t sub_25765DFF4()
{
  result = qword_27F8807D8;
  if (!qword_27F8807D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807D8);
  }

  return result;
}

unint64_t sub_25765E04C()
{
  result = qword_27F8807E0;
  if (!qword_27F8807E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8807E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return sub_257743AC4();
}

uint64_t ODIELibrary.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25765E140(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ODIELibrary.fileName.setter(v1, v2);
}

uint64_t ODIELibrary.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*ODIELibrary.fileName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t ODIELibrary.init(fileName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  v6 = a3 + *(type metadata accessor for Proto_Odie_Library() + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

BOOL static ODIELibrary.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v2 || (sub_257743994() & 1) != 0)
  {
    v3 = *(type metadata accessor for Proto_Odie_Library() + 20);
    sub_2577431B4();
    sub_25765E368(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25765E368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ODIELibrary()
{
  result = qword_27F8807E8;
  if (!qword_27F8807E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25765E424()
{
  result = type metadata accessor for Proto_Odie_Library();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25765E490()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v60 = v7 - v6;
  v8 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v59 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  v24 = OUTLINED_FUNCTION_13(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_28_11(inited, 0x6150u);
  NearestNeighborsConfiguration.parameters.getter();
  sub_2576E7AF0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_19_13();
  v37 = v29;
  v38 = v1;
  sub_25765EF7C(v37, v39);
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  *(inited + 64) = v36;
  strcpy((inited + 72), "Neighbor Count");
  *(inited + 87) = -18;
  v61 = NearestNeighborsConfiguration.neighborCount.getter();
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v40;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  sub_2574FD880(v1, v22, &qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_155(v22, 1, v8);
  if (v41)
  {
    v43 = 0;
    v42 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_20_9();
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    sub_25765F388();
    sub_25765F578();
    v42 = v61;
    v43 = v62;
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v16, v44);
  }

  v63 = v42;
  v64 = v43;
  v45 = sub_2576603F8();

  *(inited + 128) = v45;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  OUTLINED_FUNCTION_23_7();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = v46;
  v47 = v38 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  v48 = *(v47 + 16);
  if (v48 == 255)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
LABEL_9:
    sub_2574670D4(*v47, *(v47 + 8), v48);

    sub_257466FC8(v51, v52, 0);
    v61 = 34;
    v62 = 0xE100000000000000;
    MEMORY[0x259C64E90](v51, v52);
    MEMORY[0x259C64E90](34, 0xE100000000000000);

    v49 = v61;
    v50 = v62;
    goto LABEL_10;
  }

  if ((v48 & 1) == 0)
  {
    v51 = *v47;
    v52 = *(v47 + 8);
    goto LABEL_9;
  }

  v61 = *v47;
  v49 = sub_257743674();
LABEL_10:
  *(inited + 168) = v49;
  *(inited + 176) = v50;
  *(inited + 184) = 0;
  OUTLINED_FUNCTION_23_7();
  *(inited + 192) = 0xD000000000000010;
  *(inited + 200) = v53;
  v54 = v60;
  NearestNeighborsConfiguration.weightingScheme.getter();
  v55 = sub_2576605BC();
  v57 = v56;
  OUTLINED_FUNCTION_1_34();
  sub_25765EF7C(v54, v58);
  *(inited + 208) = v55;
  *(inited + 216) = v57;
  *(inited + 224) = 0;
  sub_2576A6964(inited);
  OUTLINED_FUNCTION_35();
}

uint64_t NearestNeighborsConfiguration.parameters.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75_0();
  v6 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v0 + *(v13 + 32), v1, &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(v1, 1, v6);
  if (v14)
  {
    *v12 = 0;
    *(v12 + 8) = MEMORY[0x277D84F90];
    v15 = v6[6];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = v6[7];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = v12 + v6[8];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_155(v1, 1, v6);
    if (!v14)
    {
      sub_2574695E4(v1, &qword_27F87BD28, &unk_25776D890);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    sub_25765EFD4();
  }

  OUTLINED_FUNCTION_2_33();
  return sub_25765EFD4();
}

uint64_t NearestNeighborsConfiguration.parameters.setter()
{
  v1 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_0();
  sub_25765EFD4();
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574695E4(v0 + *(v5 + 32), &qword_27F87BD28, &unk_25776D890);
  sub_25765EFD4();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

void NearestNeighborsConfiguration.parameters.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v3[6] = __swift_coroFrameAllocStub(v13);
  v14 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 32);
  *(v3 + 14) = v14;
  sub_2574FD880(v0 + v14, v6, &qword_27F87BD28, &unk_25776D890);
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v15)
  {
    *v10 = 0;
    v10[1] = MEMORY[0x277D84F90];
    v16 = v7[6];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v7[7];
    type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v10 + v7[8];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v15)
    {
      sub_2574695E4(v6, &qword_27F87BD28, &unk_25776D890);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    sub_25765EFD4();
  }

  OUTLINED_FUNCTION_2_33();
  OUTLINED_FUNCTION_263();
  sub_25765EFD4();
  OUTLINED_FUNCTION_35();
}

void sub_25765ECD4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*v0 + 14);
  v2 = (*v0)[5];
  v3 = (*v0)[6];
  v4 = (*v0)[3];
  v5 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    v10 = (*v0)[6];
    sub_25765F388();
    OUTLINED_FUNCTION_18_16();
    sub_25765EFD4();
    sub_2574695E4(v8 + v1, &qword_27F87BD28, &unk_25776D890);
    sub_25765EFD4();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    OUTLINED_FUNCTION_19_13();
    sub_25765EF7C(v3, v14);
  }

  else
  {
    OUTLINED_FUNCTION_18_16();
    sub_25765EFD4();
    sub_2574695E4(v8 + v1, &qword_27F87BD28, &unk_25776D890);
    sub_25765EFD4();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v18);
}

uint64_t NearestNeighborsConfiguration.neighborCount.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_2();
  v7 = type metadata accessor for Proto_Int64Parameter(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v1 + *(v11 + 36), v0, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_26_0(v0);
  if (v12)
  {
    *v2 = 0;
    v13 = *(v7 + 20);
    type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = v2 + *(v7 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v0);
    if (!v12)
    {
      sub_2574695E4(v0, &qword_27F87BD30, &unk_2577504D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_14();
    sub_25765EFD4();
  }

  v19 = *v2;
  sub_25765EF7C(v2, type metadata accessor for Proto_Int64Parameter);
  return v19;
}

uint64_t sub_25765EF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25765EFD4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t NearestNeighborsConfiguration.neighborCount.setter(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_0();
  v9 = type metadata accessor for Proto_Int64Parameter(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_0();
  v13 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 36);
  sub_2574FD880(v1 + v13, v3, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_26_0(v3);
  if (v14)
  {
    v15 = *(v9 + 20);
    type metadata accessor for Proto_Int64Parameter.OneOf_AllowedValues(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = v2 + *(v9 + 24);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_26_0(v3);
    if (!v14)
    {
      sub_2574695E4(v3, &qword_27F87BD30, &unk_2577504D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_14();
    sub_25765EFD4();
  }

  *v2 = a1;
  sub_2574695E4(v1 + v13, &qword_27F87BD30, &unk_2577504D0);
  OUTLINED_FUNCTION_9_14();
  sub_25765EFD4();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
}

uint64_t (*NearestNeighborsConfiguration.neighborCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NearestNeighborsConfiguration.neighborCount.getter();
  return sub_25765F1EC;
}

uint64_t NearestNeighborsConfiguration.classLabels.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_2574FD880(v2, &v22 - v15, &qword_27F87BD18, &unk_25776D8A0);
  result = OUTLINED_FUNCTION_155(v16, 1, v4);
  if (v18)
  {
    v20 = 0;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    sub_25765F388();
    sub_25765F578();
    v19 = v22;
    v20 = v23;
    OUTLINED_FUNCTION_0_46();
    result = sub_25765EF7C(v10, v21);
  }

  *v0 = v19;
  *(v0 + 8) = v20;
  return result;
}

uint64_t sub_25765F388()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_25765F3DC@<X0>(uint64_t a1@<X8>)
{
  result = NearestNeighborsConfiguration.classLabels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_25765F420(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NearestNeighborsConfiguration.classLabels.setter(&v3);
}

uint64_t NearestNeighborsConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_2();
  v7 = *a1;
  if (a1[1])
  {
    v8 = v1 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v1 = v7;
    v9 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = *a1;

    sub_25764CFE8();
    v9 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  v14 = OUTLINED_FUNCTION_205();
  return sub_2574FD834(v14, v15, v16, v17);
}

void sub_25765F578()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Proto_Int64Vector(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_22();
  sub_25765F388();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_25765EFD4();
    v25 = *v17;
    v26 = *(*v17 + 16);
    if (v26)
    {
      v33 = MEMORY[0x277D84F90];
      sub_257483724();
      v24 = v33;
      v27 = (v25 + 32);
      v28 = *(v33 + 16);
      do
      {
        v30 = *v27++;
        v29 = v30;
        if (v28 >= *(v33 + 24) >> 1)
        {
          sub_257483724();
        }

        *(v33 + 16) = v28 + 1;
        *(v33 + 8 * v28++ + 32) = v29;
        --v26;
      }

      while (v26);
      OUTLINED_FUNCTION_0_46();
      sub_25765EF7C(v1, v31);
      OUTLINED_FUNCTION_22_12();
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_25765EF7C(v1, v32);
      OUTLINED_FUNCTION_22_12();
      v24 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v1, v23);
    sub_25765EFD4();
    v24 = *v10;

    sub_25765EF7C(v10, type metadata accessor for Proto_StringVector);
  }

  *v3 = v24;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*NearestNeighborsConfiguration.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(0);
  v4[3] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[4] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v4[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  v4[6] = __swift_coroFrameAllocStub(v11);
  v4[7] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v4[8] = v12;
  sub_2574FD880(v2, v12, &qword_27F87BD18, &unk_25776D8A0);
  OUTLINED_FUNCTION_155(v12, 1, v5);
  if (v13)
  {
    v15 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_20_9();
    sub_25765EFD4();
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_263();
    sub_25765F388();
    sub_25765F578();
    v14 = v18;
    v15 = v19;
    OUTLINED_FUNCTION_0_46();
    sub_25765EF7C(v8, v16);
  }

  *v4 = v14;
  *(v4 + 8) = v15;
  return sub_25765F974;
}

void sub_25765F974(void ***a1, char a2)
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(*a1 + 8);
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v5[6];
    if ((*a1)[1])
    {
      v10 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v12 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    sub_2574FD834(v9, v4, &qword_27F87BD18, &unk_25776D8A0);
    v17 = *v5;
  }

  else
  {
    v9 = v5[7];
    if ((*a1)[1])
    {
      v11 = v9 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v6;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v18 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    sub_2574FD834(v8, v4, &qword_27F87BD18, &unk_25776D8A0);
  }

  free(v6);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v5);
}

uint64_t NearestNeighborsConfiguration.defaultClassLabel.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  v3 = v1 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(v2) + 20);
  result = *v3;
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    v8 = 0;
    v6 = 0xE000000000000000;
LABEL_6:
    sub_2574670D4(result, *(v3 + 8), v5);

    sub_257466FC8(v8, v6, 0);
    v7 = 0;
    result = v8;
    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
    v8 = *v3;
    v6 = *(v3 + 8);
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 1;
LABEL_7:
  *v0 = result;
  *(v0 + 8) = v6;
  *(v0 + 16) = v7;
  return result;
}

double sub_25765FB98@<D0>(uint64_t a1@<X8>)
{
  NearestNeighborsConfiguration.defaultClassLabel.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_25765FBDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_25745B0A8(v4[0], v1, v2);
  return NearestNeighborsConfiguration.defaultClassLabel.setter(v4);
}

uint64_t NearestNeighborsConfiguration.defaultClassLabel.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v1 + *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  result = sub_25746706C(*v6, *(v6 + 8), *(v6 + 16));
  *v6 = v3;
  *(v6 + 8) = v5;
  *(v6 + 16) = v4;
  return result;
}

void (*NearestNeighborsConfiguration.defaultClassLabel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(type metadata accessor for Proto_KNearestNeighborsClassifier(0) + 20);
  *(v3 + 5) = v4;
  v5 = v1 + v4;
  v6 = *v5;
  v3[4] = *v5;
  v7 = *(v5 + 8);
  v3[5] = v7;
  v8 = *(v5 + 16);
  *(v3 + 17) = v8;
  if (v8 == 255)
  {
    v11 = 0;
    v9 = 0xE000000000000000;
LABEL_6:
    sub_2574670D4(v6, v7, v8);

    v12 = OUTLINED_FUNCTION_176();
    sub_257466FC8(v12, v13, 0);
    v10 = 0;
    v6 = v11;
    goto LABEL_7;
  }

  if ((v8 & 1) == 0)
  {
    v11 = v6;
    v9 = v7;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
LABEL_7:
  *v3 = v6;
  v3[1] = v9;
  *(v3 + 16) = v10;
  return sub_25765FD60;
}

void sub_25765FD60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 16);
  if (a2)
  {
    if ((*a1)[2])
    {
      v5 = 0;
    }

    else
    {
      v5 = v2[1];
    }

    v9 = v2[3] + *(v2 + 5);
    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v9 = v3;
    *(v9 + 8) = v5;
    *(v9 + 16) = v4;
    sub_257466FC8(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    v6 = v2[3] + *(v2 + 5);
    v7 = v2[1];
    if (*(*a1 + 16))
    {
      v8 = 0;
    }

    else
    {
      v8 = v2[1];
    }

    sub_25746706C(v2[4], v2[5], *(v2 + 17));
    *v6 = v3;
    *(v6 + 8) = v8;
    *(v6 + 16) = v4;
  }

  free(v2);
}

uint64_t NearestNeighborsConfiguration.weightingScheme.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  sub_2574FD880(v0 + *(v11 + 24), v6, &qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_26_0(v6);
  if (v12)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_0(v6);
    if (!v12)
    {
      sub_2574695E4(v6, &qword_27F87BD20, &unk_2577504C0);
    }
  }

  else
  {
    sub_25765EFD4();
  }

  swift_getEnumCaseMultiPayload();
  sub_25765EFD4();
  type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25765FFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_0();
  sub_25765F388();
  return a7(v7);
}

uint64_t NearestNeighborsConfiguration.weightingScheme.setter(uint64_t a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_263();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_0();
  sub_257660148();
  OUTLINED_FUNCTION_1_34();
  sub_25765EF7C(a1, v11);
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  return sub_2574FD834(v2, v3 + *(v16 + 24), &qword_27F87BD20, &unk_2577504C0);
}

uint64_t sub_257660148()
{
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(v1);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_33();
  sub_25765F388();
  OUTLINED_FUNCTION_176();
  swift_getEnumCaseMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_34();
  return sub_25765EF7C(v0, v6);
}

void (*NearestNeighborsConfiguration.weightingScheme.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD20, &unk_2577504C0);
  OUTLINED_FUNCTION_13(v3);
  a1[1] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  a1[3] = __swift_coroFrameAllocStub(v7);
  NearestNeighborsConfiguration.weightingScheme.getter();
  return sub_2576602AC;
}

void sub_2576602AC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_176();
    sub_25765F388();
    sub_257660148();
    sub_25765EF7C(v2, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
    sub_2574FD834(v4, v5 + *(v10 + 24), &qword_27F87BD20, &unk_2577504C0);
    sub_25765EF7C(v3, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
  }

  else
  {
    v11 = a1[1];
    v12 = a1[3];
    sub_257660148();
    OUTLINED_FUNCTION_1_34();
    sub_25765EF7C(v3, v13);
    type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
    sub_2574FD834(v4, v5 + *(v18 + 24), &qword_27F87BD20, &unk_2577504C0);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_2576603F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v20 = MEMORY[0x277D84F90];
      sub_257484040(0, v2, 0);
      v3 = v20;
      v4 = (v1 + 40);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;

        MEMORY[0x259C64E90](v5, v6);
        MEMORY[0x259C64E90](34, 0xE100000000000000);

        v8 = *(v20 + 16);
        v7 = *(v20 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_257484040((v7 > 1), v8 + 1, 1);
        }

        *(v20 + 16) = v8 + 1;
        v9 = v20 + 24 * v8;
        *(v9 + 32) = 34;
        *(v9 + 40) = 0xE100000000000000;
        *(v9 + 48) = 0;
        v4 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v19;
    v10 = (v1 + 32);
    do
    {
      v11 = *v10++;
      v12 = sub_257743674();
      v14 = v13;
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_257484040((v15 > 1), v16 + 1, 1);
      }

      *(v19 + 16) = v16 + 1;
      v17 = v19 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      *(v17 + 48) = 0;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_2576605BC()
{
  v0 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_3_33();
  sub_25765F388();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_23_7();
  sub_25765EF7C(v6, type metadata accessor for NearestNeighborsConfiguration.WeightingScheme);
  return OUTLINED_FUNCTION_10_23();
}

uint64_t NearestNeighborsConfiguration.init()()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_ClassLabels(v1);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v7 = v0 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = -1;
  v8 = v6[6];
  type metadata accessor for Proto_KNearestNeighborsClassifier.OneOf_WeightingScheme(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0 + v6[7];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v14 = v6[8];
  type metadata accessor for Proto_NearestNeighborsIndex(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v6[9];
  type metadata accessor for Proto_Int64Parameter(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void NearestNeighborsConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_35_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_0();
  v12 = type metadata accessor for NearestNeighborsConfiguration(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25765F388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257744000;
  OUTLINED_FUNCTION_28_11(v16, 0x6170u);
  *(v16 + 72) = type metadata accessor for NearestNeighborsConfiguration.Parameters(0);
  __swift_allocate_boxed_opaque_existential_0((v16 + 48));
  NearestNeighborsConfiguration.parameters.getter();
  strcpy((v16 + 80), "neighborCount");
  *(v16 + 94) = -4864;
  v17 = NearestNeighborsConfiguration.neighborCount.getter();
  v18 = MEMORY[0x277D83B88];
  *(v16 + 96) = v17;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0x62614C7373616C63;
  *(v16 + 136) = 0xEB00000000736C65;
  *(v16 + 168) = &type metadata for NearestNeighborsConfiguration.ClassLabels;
  NearestNeighborsConfiguration.classLabels.getter();
  OUTLINED_FUNCTION_23_7();
  *(v16 + 176) = 0xD000000000000011;
  *(v16 + 184) = v19;
  *(v16 + 216) = &type metadata for NearestNeighborsConfiguration.DefaultClassLabel;
  NearestNeighborsConfiguration.defaultClassLabel.getter();
  *(v16 + 224) = 0x6E69746867696577;
  *(v16 + 232) = 0xEF656D6568635367;
  *(v16 + 264) = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  __swift_allocate_boxed_opaque_existential_0((v16 + 240));
  NearestNeighborsConfiguration.weightingScheme.getter();
  sub_257743A74();
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v5 + 104))(v1, *MEMORY[0x277D84C38], v0);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static NearestNeighborsConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374(v4, v5);
}

BOOL static NearestNeighborsConfiguration.DefaultClassLabel.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v7 = OUTLINED_FUNCTION_205();
      sub_257466FC8(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_263();
      sub_257466FC8(v9, v10, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {
    v12 = *(a1 + 8);

LABEL_6:
    v13 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v13, v14, v6);
    v15 = OUTLINED_FUNCTION_205();
    sub_257466FC8(v15, v16, v4);
    v17 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v17, v18, v6);
    return 0;
  }

  v19 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_25745B0A8(v19, v3, 0);
    v32 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v38, v39, v40);
    return 1;
  }

  else
  {
    v21 = sub_257743994();
    v22 = OUTLINED_FUNCTION_263();
    sub_25745B0A8(v22, v23, 0);
    v24 = OUTLINED_FUNCTION_10_23();
    sub_25745B0A8(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_10_23();
    sub_257466FC8(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_263();
    sub_257466FC8(v30, v31, 0);
    return v21 & 1;
  }
}

void static NearestNeighborsConfiguration.WeightingScheme.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration(0);
  v32 = OUTLINED_FUNCTION_13(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_0();
  v35 = type metadata accessor for NearestNeighborsConfiguration.WeightingScheme(0);
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8807F8, &unk_25776D8B0);
  OUTLINED_FUNCTION_13(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_40_2();
  v50 = *(v49 + 56);
  sub_25765F388();
  sub_25765F388();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_33();
    sub_25765F388();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25765EFD4();
      sub_2577431B4();
      OUTLINED_FUNCTION_8_15();
      sub_257661238(v51, v52);
      OUTLINED_FUNCTION_36_4();
      sub_257743644();
      sub_25765EF7C(v30, type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration);
      v53 = v41;
      v54 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration;
LABEL_9:
      sub_25765EF7C(v53, v54);
      OUTLINED_FUNCTION_1_34();
      sub_25765EF7C(v20, v59);
      goto LABEL_10;
    }

    v55 = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration;
    v56 = v41;
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    sub_25765F388();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25765EFD4();
      sub_2577431B4();
      OUTLINED_FUNCTION_8_15();
      sub_257661238(v57, v58);
      sub_257743644();
      sub_25765EF7C(v21, type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration);
      v53 = v44;
      v54 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration;
      goto LABEL_9;
    }

    v55 = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration;
    v56 = v44;
  }

  sub_25765EF7C(v56, v55);
  sub_2574695E4(v20, &qword_27F8807F8, &unk_25776D8B0);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257660F2C()
{
  OUTLINED_FUNCTION_0_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_8_15();
  sub_257661238(v0, v1);
  return sub_257743644() & 1;
}

void sub_257660FF8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_35_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_75_0();
  v16 = v2(0);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  sub_25765F388();
  sub_257743A74();
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  (*(v6 + 104))(v11, *MEMORY[0x277D84C38], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257661238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576612F0()
{
  result = type metadata accessor for NearestNeighborsConfiguration.UniformWeightingConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NearestNeighborsConfiguration.InverseDistanceWeightingConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2576613E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return sub_25765EF7C(v0, type metadata accessor for Proto_Int64Vector);
}

uint64_t OUTLINED_FUNCTION_28_11@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x6574656D61720000;
  *(result + 40) = 0xEA00000000007372;
  return result;
}

void OUTLINED_FUNCTION_38_5()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
}

uint64_t MLProgram.Value.BlobFileValue.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_205();
}

uint64_t MLProgram.Value.BlobFileValue.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_257661640()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for MLProgram.Value.BlobFileValue(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B190, &qword_25774C170);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_51_4();
  v16 = type metadata accessor for MLProgram.Value.ImmediateValue(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_38();
  v21 = type metadata accessor for MLProgram.Value.Representation(v20);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  v25 = OUTLINED_FUNCTION_264();
  sub_257664F1C(v25, v26);
  OUTLINED_FUNCTION_280();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_19_14();
    sub_257664D88(v2, v10);
    v27 = OUTLINED_FUNCTION_156();
    sub_257664D88(v27, v0);
  }

  else
  {
    OUTLINED_FUNCTION_18_17();
    sub_257664D88(v2, v1);
    v28 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
    v32 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue(0);
    OUTLINED_FUNCTION_192_0(v32);
    sub_257663A58();
    OUTLINED_FUNCTION_3_34();
    sub_257664D34();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v28);
    OUTLINED_FUNCTION_292();
    sub_25751BB28();
  }

  type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  OUTLINED_FUNCTION_18_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

void sub_2576619AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v22 = OUTLINED_FUNCTION_280();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = OUTLINED_FUNCTION_51_4();
  v31 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v30);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
  {
    sub_2574695E4(v29, &qword_27F87B190, &qword_25774C170);
    OUTLINED_FUNCTION_26_8();
    sub_257664D34();
    *v21 = MEMORY[0x277D84F90];
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    type metadata accessor for MLProgram.Value.ImmediateValue(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_166();
    sub_257664D88(v38, v37);
    v39 = OUTLINED_FUNCTION_277();
    sub_257664F1C(v39, v40);
    sub_257663CD4();
    OUTLINED_FUNCTION_26_8();
    sub_257664D34();
    OUTLINED_FUNCTION_8_16();
    sub_257664D34();
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static MLProgram.Value.Representation.blobFile(fileName:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    a4[2] = a3;
    type metadata accessor for MLProgram.Value.Representation(0);
    OUTLINED_FUNCTION_66_3();
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t MLProgram.Value.BlobFileValue.init(fileName:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0) + 24);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a4 = a1;
  a4[1] = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    a4[2] = a3;
  }

  return result;
}

void sub_257661C48()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_30();
  v8 = type metadata accessor for MLProgram.Value.Representation(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for MLProgram.Value.BlobFileValue(v12);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  sub_257664F1C(v0, v1);
  OUTLINED_FUNCTION_360();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257664D34();
    sub_257664D88(v1, v2);
    v17 = v2[1];

    *v2 = v6;
    v2[1] = v4;
    sub_257664D88(v2, v0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_257664D34();
  }

  OUTLINED_FUNCTION_434();
}

void sub_257661DA4()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  OUTLINED_FUNCTION_376();
  v5 = sub_257743094();
  v6 = OUTLINED_FUNCTION_63(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_38();
  v12 = type metadata accessor for MLProgram.Value.Representation(v11);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v16 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_5_25();
  v20 = OUTLINED_FUNCTION_369();
  sub_257664F1C(v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_15();
    sub_257664D34();
    sub_257664D88(v2, v1);
    (*(v8 + 16))(v0, v4, v5);
    sub_257743054();
    v22 = *(v8 + 8);
    v23 = OUTLINED_FUNCTION_360();
    v24(v23);
    sub_257664AF0();

    v25 = OUTLINED_FUNCTION_230();
    sub_257664D88(v25, v26);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    OUTLINED_FUNCTION_9_15();
    sub_257664D34();
  }

  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.Representation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_6();
  v33 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v39 = v38 - v37;
  v40 = type metadata accessor for MLProgram.Value.Representation(0);
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v44);
  v46 = &a9 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880830, &qword_25776DC08);
  OUTLINED_FUNCTION_13(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_56_2();
  v52 = *(v51 + 56);
  sub_257664F1C(v28, v20);
  sub_257664F1C(v26, v20 + v52);
  OUTLINED_FUNCTION_369();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_25();
    sub_257664F1C(v20, v46);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_18_17();
      sub_257664D88(v20 + v52, v39);
      static MLProgram.Value.ImmediateValue.== infix(_:_:)(v46, v39);
      sub_257664D34();
      sub_257664D34();
      OUTLINED_FUNCTION_9_15();
      sub_257664D34();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_3_34();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_5_25();
  v53 = OUTLINED_FUNCTION_98_2();
  sub_257664F1C(v53, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_13:
    sub_257664D34();
    sub_2574695E4(v20, &qword_27F880830, &qword_25776DC08);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_19_14();
  sub_257664D88(v20 + v52, v21);
  v55 = *v22 == *v21 && v22[1] == v21[1];
  if (v55 || (sub_257743994()) && v22[2] == v21[2])
  {
    v56 = *(type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    sub_257664E78(v57, v58);
    sub_257743644();
  }

  OUTLINED_FUNCTION_46_7();
  sub_257664D34();
  sub_257664D34();
  OUTLINED_FUNCTION_9_15();
  sub_257664D34();
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.Representation.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for MLProgram.Value.BlobFileValue(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v10 = type metadata accessor for MLProgram.Value.Representation(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_5_25();
  v17 = OUTLINED_FUNCTION_277();
  sub_257664F1C(v17, v18);
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_19_14();
    sub_257664D88(v16, v0);
    MEMORY[0x259C651F0](1);
    type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0);
    sub_257664E78(&qword_27F87B548, type metadata accessor for Proto_MILSpec_Value.BlobFileValue);
    OUTLINED_FUNCTION_72_0();
    sub_2577435F4();
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    OUTLINED_FUNCTION_18_17();
    v19 = OUTLINED_FUNCTION_360();
    sub_257664D88(v19, v20);
    MEMORY[0x259C651F0](0);
    MLProgram.Value.ImmediateValue.hash(into:)();
    OUTLINED_FUNCTION_3_34();
  }

  return sub_257664D34();
}

void MLProgram.Value.Representation.debugDescription.getter()
{
  OUTLINED_FUNCTION_31();
  v6 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v10 = type metadata accessor for MLProgram.Value.Dictionary(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v14 = type metadata accessor for MLProgram.Value.List(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = OUTLINED_FUNCTION_38();
  v19 = type metadata accessor for MLProgram.Value.Tuple(v18);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_0();
  v23 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v27);
  v28 = type metadata accessor for MLProgram.Value.Representation(0);
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  OUTLINED_FUNCTION_5_25();
  sub_257664F1C(v0, v34);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_4_23();
    v36 = OUTLINED_FUNCTION_369();
    sub_257664F1C(v36, v37);
    OUTLINED_FUNCTION_201();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_15_8();
        v50 = sub_257664D88(v5, v4);
        MLProgram.Value.List.elements.getter(v50);
        OUTLINED_FUNCTION_30();
        type metadata accessor for MLProgram.Value();
        v51 = OUTLINED_FUNCTION_66_3();
        MEMORY[0x259C64F20](v51);
        OUTLINED_FUNCTION_96_3();

        v52 = OUTLINED_FUNCTION_263();
        MEMORY[0x259C64E90](v52);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_0_47();
        goto LABEL_9;
      case 2u:
        OUTLINED_FUNCTION_17_12();
        v43 = sub_257664D88(v5, v3);
        MLProgram.Value.List.elements.getter(v43);
        OUTLINED_FUNCTION_30();
        type metadata accessor for MLProgram.Value();
        v44 = OUTLINED_FUNCTION_66_3();
        MEMORY[0x259C64F20](v44);
        OUTLINED_FUNCTION_96_3();

        v45 = OUTLINED_FUNCTION_263();
        MEMORY[0x259C64E90](v45);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_2_34();
        goto LABEL_9;
      case 3u:
        OUTLINED_FUNCTION_16_9();
        sub_257664D88(v5, v2);
        OUTLINED_FUNCTION_63_5();
        MLProgram.Value.Dictionary.keyValuePairs.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
        v46 = OUTLINED_FUNCTION_66_3();
        v47 = MEMORY[0x259C64F20](v46);
        v49 = v48;

        MEMORY[0x259C64E90](v47, v49);

        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_1_35();
LABEL_9:
        sub_257664D34();
        break;
      default:
        v38 = *v5;
        v39 = *(v5 + 8);
        v40 = *(v5 + 16);
        MEMORY[0x259C64E90](0x28726F736E6554, 0xE700000000000000);
        sub_257743884();
        OUTLINED_FUNCTION_75_4();
        v41 = OUTLINED_FUNCTION_263();
        sub_257664F74(v41, v42, v40);
        break;
    }

    OUTLINED_FUNCTION_3_34();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_14();
  sub_257664D88(v34, v1);
  sub_257743834();

  MEMORY[0x259C64E90](*v1, v1[1]);
  MEMORY[0x259C64E90](0x74657366666F202CLL, 0xEA0000000000203ALL);
  if ((v1[2] & 0x8000000000000000) == 0)
  {
    v53 = v1[2];
    v35 = sub_257743974();
    MEMORY[0x259C64E90](v35);

    OUTLINED_FUNCTION_75_4();
    OUTLINED_FUNCTION_27_11();
LABEL_11:
    sub_257664D34();
    OUTLINED_FUNCTION_35();
    return;
  }

  __break(1u);
}

void sub_257662910()
{
  OUTLINED_FUNCTION_433();
  v1 = type metadata accessor for MLProgram.Value();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_6();
  v7 = *v0;
  v8 = *(*v0 + 16);
  if (v8)
  {
    v21 = MEMORY[0x277D84F90];
    sub_257484A40();
    v9 = type metadata accessor for Proto_MILSpec_Value(0);
    OUTLINED_FUNCTION_24(v9);
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_360();
      sub_257664F1C(v14, v15);
      v16 = *(v21 + 16);
      if (v16 >= *(v21 + 24) >> 1)
      {
        sub_257484A40();
      }

      *(v21 + 16) = v16 + 1;
      v17 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      v18 = *(v4 + 72);
      v19 = OUTLINED_FUNCTION_166();
      sub_257664D88(v19, v20);
      v11 += v13;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_434();
}

void MLProgram.Value.Dictionary.keyValuePairs.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  v13 = type metadata accessor for Proto_MILSpec_Value(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_99_2();
  v83 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(v18);
  v19 = OUTLINED_FUNCTION_63(v83);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  v28 = OUTLINED_FUNCTION_63(v27);
  v80 = v29;
  v81 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v82 = &v77 - v33;
  v34 = *v0;
  v35 = *(*v0 + 16);
  if (v35)
  {
    v84 = MEMORY[0x277D84F90];
    sub_257484A98();
    v36 = v84;
    v37 = *(v21 + 80);
    OUTLINED_FUNCTION_193();
    v38 = v21;
    v40 = v34 + v39;
    v77 = *(v38 + 72);
    v78 = v2;
    v79 = v12;
    v41 = v82;
    do
    {
      sub_257664F1C(v40, v26);
      v42 = *(v83 + 20);
      sub_257487308();
      OUTLINED_FUNCTION_35_0(v12);
      if (v43)
      {
        *v2 = 0;
        v2[1] = 0xE000000000000000;
        v44 = v13[5];
        type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
        v49 = v2 + v13[6];
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v50 = v13[7];
        type metadata accessor for Proto_MILSpec_ValueType(0);
        v41 = v82;
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        OUTLINED_FUNCTION_35_0(v12);
        if (!v43)
        {
          sub_2574695E4(v12, &qword_27F879EB8, &unk_2577447E0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_18();
        sub_257664D88(v12, v2);
      }

      OUTLINED_FUNCTION_7_18();
      v55 = OUTLINED_FUNCTION_230();
      sub_257664D88(v55, v56);
      v57 = *(v83 + 24);
      sub_257487308();
      OUTLINED_FUNCTION_35_0(v9);
      if (v43)
      {
        *v1 = 0;
        v1[1] = 0xE000000000000000;
        v58 = v13[5];
        type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
        v63 = v1 + v13[6];
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        OUTLINED_FUNCTION_49_4();
        v64 = v13[7];
        type metadata accessor for Proto_MILSpec_ValueType(0);
        v41 = v82;
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
        OUTLINED_FUNCTION_35_0(v9);
        if (!v43)
        {
          sub_2574695E4(v9, &qword_27F879EB8, &unk_2577447E0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_49_4();
        OUTLINED_FUNCTION_7_18();
        sub_257664D88(v9, v1);
      }

      v69 = v9;
      v70 = *(v81 + 48);
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v1, v41 + v71);
      v84 = v36;
      v73 = *(v36 + 16);
      v72 = *(v36 + 24);
      if (v73 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v72);
        sub_257484A98();
        v36 = v84;
      }

      *(v36 + 16) = v73 + 1;
      v74 = *(v80 + 80);
      OUTLINED_FUNCTION_193();
      sub_257667914(v41, v36 + v75 + *(v76 + 72) * v73);
      v40 += v77;
      --v35;
      v9 = v69;
      v2 = v78;
      v12 = v79;
    }

    while (v35);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.BlobFileValue.offset.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257662F00()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (((v2 >> 60) & 3 | v3) != 6)
  {
    return *(v1 + 16);
  }

  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v5 = __OFSUB__(HIDWORD(v1), v1);
      v6 = HIDWORD(v1) - v1;
      if (v5)
      {
        __break(1u);
        goto LABEL_13;
      }

      result = v6;
      break;
    case 2uLL:
      v9 = v1 + 16;
      v7 = *(v1 + 16);
      v8 = *(v9 + 8);
      result = v8 - v7;
      if (__OFSUB__(v8, v7))
      {
LABEL_13:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(v2);
      break;
  }

  return result;
}

uint64_t sub_257662FA0()
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((v3 >> 60) & 3 | v4)
  {
    case 1uLL:
      v22 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v22)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v23 = *v1++;
          LODWORD(v49) = v23;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v24 > 1));
            v6 = v47;
          }

          OUTLINED_FUNCTION_30_8();
          --v22;
        }

        while (v22);
      }

      goto LABEL_75;
    case 2uLL:
      v12 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v12)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          LOBYTE(v49) = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v13 > 1));
            v6 = v47;
          }

          OUTLINED_FUNCTION_30_8();
          v1 = (v1 + 1);
          --v12;
        }

        while (v12);
      }

      goto LABEL_75;
    case 3uLL:
      v14 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v14)
      {
        v49 = MEMORY[0x277D84F90];
        sub_257484040(0, v14, 0);
        v6 = v49;
        v15 = (v2 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          v47 = 34;
          v48 = 0xE100000000000000;

          v18 = OUTLINED_FUNCTION_277();
          MEMORY[0x259C64E90](v18);
          MEMORY[0x259C64E90](34, 0xE100000000000000);

          v49 = v6;
          v20 = *(v6 + 16);
          v19 = *(v6 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_257484040((v19 > 1), v20 + 1, 1);
            v6 = v49;
          }

          *(v6 + 16) = v20 + 1;
          v21 = v6 + 24 * v20;
          *(v21 + 32) = 34;
          *(v21 + 40) = 0xE100000000000000;
          *(v21 + 48) = 0;
          v15 += 2;
          --v14;
        }

        while (v14);
      }

      goto LABEL_75;
    case 4uLL:
      v9 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v9)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v10 = *v1;
          v1 += 2;
          v49 = v10;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v11 > 1));
            v6 = v47;
          }

          OUTLINED_FUNCTION_30_8();
          --v9;
        }

        while (v9);
      }

      goto LABEL_75;
    case 5uLL:
      v25 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v25)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          v49 = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v26 > 1));
            v6 = v47;
          }

          OUTLINED_FUNCTION_30_8();
          v1 += 2;
          --v25;
        }

        while (v25);
      }

      goto LABEL_75;
    case 6uLL:
      v27 = v3 >> 62;
      v6 = MEMORY[0x277D84F90];
      v28 = BYTE6(v3);
      switch(v3 >> 62)
      {
        case 1uLL:
          v46 = BYTE6(v3);
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_83;
          }

          v28 = HIDWORD(v2) - v2;
LABEL_46:
          if (!v28)
          {
            goto LABEL_75;
          }

          v49 = MEMORY[0x277D84F90];
          sub_257484040(0, v28 & ~(v28 >> 63), 0);
          if (v27)
          {
            if (v27 == 2)
            {
              v31 = *(v2 + 16);
            }

            else
            {
              v31 = v2;
            }
          }

          else
          {
            v31 = 0;
          }

          if (v28 < 0)
          {
            goto LABEL_82;
          }

          v6 = v49;
          break;
        case 2uLL:
          v46 = BYTE6(v3);
          v30 = *(v2 + 16);
          v29 = *(v2 + 24);
          v28 = v29 - v30;
          if (!__OFSUB__(v29, v30))
          {
            goto LABEL_46;
          }

          goto LABEL_84;
        case 3uLL:
          goto LABEL_75;
        default:
          v46 = BYTE6(v3);
          goto LABEL_46;
      }

      break;
    default:
      v5 = *(v2 + 16);
      v6 = MEMORY[0x277D84F90];
      if (v5)
      {
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_83_3();
        do
        {
          LODWORD(v49) = *v1;
          OUTLINED_FUNCTION_88_2();
          OUTLINED_FUNCTION_21_12();
          if (v8)
          {
            OUTLINED_FUNCTION_61_2((v7 > 1));
            v6 = v47;
          }

          OUTLINED_FUNCTION_30_8();
          ++v1;
          --v5;
        }

        while (v5);
      }

      goto LABEL_75;
  }

  while (v27 != 1)
  {
    if (!v27)
    {
      if (v31 >= v46)
      {
        goto LABEL_77;
      }

      v47 = v2;
      LOWORD(v48) = v3;
      BYTE2(v48) = BYTE2(v3);
      BYTE3(v48) = BYTE3(v3);
      BYTE4(v48) = BYTE4(v3);
      BYTE5(v48) = BYTE5(v3);
      v32 = *(&v47 + v31);
      goto LABEL_72;
    }

    if (v31 < *(v2 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    if (v31 >= *(v2 + 24))
    {
      goto LABEL_79;
    }

    result = sub_257742F64();
    if (!result)
    {
      goto LABEL_86;
    }

    v35 = result;
    v38 = sub_257742F84();
    v37 = v31 - v38;
    if (__OFSUB__(v31, v38))
    {
      goto LABEL_81;
    }

LABEL_71:
    v32 = *(v35 + v37);
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F0, &qword_25776E388);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2577442B0;
    *(v39 + 56) = MEMORY[0x277D84B78];
    *(v39 + 64) = MEMORY[0x277D84BC0];
    *(v39 + 32) = v32;
    v40 = sub_257743664();
    v42 = v41;
    v49 = v6;
    v27 = *(v6 + 16);
    v43 = *(v6 + 24);
    if (v27 >= v43 >> 1)
    {
      sub_257484040((v43 > 1), v27 + 1, 1);
      v6 = v49;
    }

    *(v6 + 16) = v27 + 1;
    v44 = v6 + 24 * v27;
    *(v44 + 32) = v40;
    *(v44 + 40) = v42;
    *(v44 + 48) = 0;
    ++v31;
    --v28;
    LODWORD(v27) = v3 >> 62;
    if (!v28)
    {
LABEL_75:
      v45 = *MEMORY[0x277D85DE8];
      return v6;
    }
  }

  if (v31 < v2 || v31 >= v2 >> 32)
  {
    goto LABEL_78;
  }

  result = sub_257742F64();
  if (result)
  {
    v35 = result;
    v36 = sub_257742F84();
    v37 = v31 - v36;
    if (__OFSUB__(v31, v36))
    {
      goto LABEL_80;
    }

    goto LABEL_71;
  }

  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

void sub_2576635F0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v8 = v1();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484040(v10, v9, 0);
    v11 = *(v5 + 80);
    OUTLINED_FUNCTION_193();
    v13 = v8 + v12;
    v25 = *(v5 + 72);
    do
    {
      v14 = OUTLINED_FUNCTION_230();
      v16 = sub_257664F1C(v14, v15);
      v17 = sub_25771810C(v16);
      v19 = v18;
      v21 = v20;
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v23 = *(v26 + 16);
      v22 = *(v26 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_257484040((v22 > 1), v23 + 1, 1);
      }

      *(v26 + 16) = v23 + 1;
      v24 = v26 + 24 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v19;
      *(v24 + 48) = v21;
      v13 += v25;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_35();
}

void sub_257663788()
{
  OUTLINED_FUNCTION_31();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  v0 = OUTLINED_FUNCTION_63(v40);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_11();
  v39 = v5 - v6;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v7);
  v38 = v34 - v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  v37 = v34 - v10;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484040(v14, v13, 0);
    v15 = v44;
    v16 = *(v2 + 80);
    OUTLINED_FUNCTION_193();
    v34[1] = v12;
    v18 = v12 + v17;
    v36 = *(v2 + 72);
    v35 = xmmword_257743FF0;
    do
    {
      v41 = v13;
      v42 = v15;
      v19 = v37;
      sub_257487308();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B40, &unk_257744100);
      v20 = swift_allocObject();
      *(v20 + 16) = v35;
      v21 = sub_257487308();
      v22 = v40;
      v43 = *(v40 + 48);
      *(v20 + 32) = sub_25771810C(v21);
      *(v20 + 40) = v23;
      *(v20 + 48) = v24;
      sub_257664D34();
      v25 = sub_257487308();
      v26 = *(v22 + 48);
      v27 = sub_25771810C(v25);
      v15 = v42;
      *(v20 + 56) = v27;
      *(v20 + 64) = v28;
      *(v20 + 72) = v29;
      sub_257664D34();
      sub_2574695E4(v19, &qword_27F879ED0, &qword_2577447F8);
      sub_257664D34();
      sub_257664D34();
      v44 = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = OUTLINED_FUNCTION_13_1(v30);
        sub_257484040(v33, v31 + 1, 1);
        v15 = v44;
      }

      *(v15 + 16) = v31 + 1;
      v32 = v15 + 24 * v31;
      *(v32 + 32) = v20;
      *(v32 + 40) = 0;
      *(v32 + 48) = 1;
      v18 += v36;
      v13 = v41 - 1;
    }

    while (v41 != 1);
  }

  OUTLINED_FUNCTION_35();
}

void sub_257663A58()
{
  OUTLINED_FUNCTION_433();
  v6 = v1;
  v7 = OUTLINED_FUNCTION_16_1();
  v8 = type metadata accessor for MLProgram.Value.Dictionary(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for MLProgram.Value.List(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_0();
  v19 = type metadata accessor for MLProgram.Value.Tuple(0);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  OUTLINED_FUNCTION_13(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v27 = OUTLINED_FUNCTION_38();
  v28 = type metadata accessor for MLProgram.Value.ImmediateValue(v27);
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_4_23();
  sub_257664F1C(v6, v5);
  OUTLINED_FUNCTION_201();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_8();
      sub_257664D88(v5, v4);
      OUTLINED_FUNCTION_41_8();
      v45 = v4;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_17_12();
      sub_257664D88(v5, v2);
      OUTLINED_FUNCTION_42_9();
      v45 = v2;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_16_9();
      sub_257664D88(v5, v14);
      v45 = OUTLINED_FUNCTION_156();
LABEL_6:
      sub_257664D88(v45, v0);
      break;
    default:
      v32 = *v5;
      v33 = *(v5 + 8);
      v34 = *(v5 + 16);
      v35 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      v39 = type metadata accessor for Proto_MILSpec_TensorValue(0);
      OUTLINED_FUNCTION_192_0(v39);
      sub_2576652F4(v3);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v35);
      sub_25751BB28();
      v43 = OUTLINED_FUNCTION_264();
      sub_257664F74(v43, v44, v34);
      break;
  }

  type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(0);
  OUTLINED_FUNCTION_18_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

void sub_257663CD4()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_38();
  v10 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_99_2();
  v16 = type metadata accessor for Proto_MILSpec_TensorValue(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v20);
  v22 = v39 - v21;
  v23 = OUTLINED_FUNCTION_51_4();
  v24 = type metadata accessor for Proto_MILSpec_Value.ImmediateValue.OneOf_Value(v23);
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  v31 = OUTLINED_FUNCTION_156();
  sub_257664F1C(v31, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    case 2u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    case 3u:
      OUTLINED_FUNCTION_8_16();
      sub_257664D34();
      OUTLINED_FUNCTION_101_3();
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
    default:
      sub_257664D88(v30, v22);
      v32 = OUTLINED_FUNCTION_166();
      sub_257664F1C(v32, v0);
      OUTLINED_FUNCTION_277();
      sub_257487308();
      if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
      {
        sub_2574695E4(v1, &qword_27F87B0E0, &unk_25774C0C0);
        OUTLINED_FUNCTION_8_16();
        sub_257664D34();
        OUTLINED_FUNCTION_47_6();
        sub_257664D34();
        OUTLINED_FUNCTION_173();
        sub_257664D34();
        v33 = 0;
        v34 = 0;
        v35 = MEMORY[0x277D84F90];
      }

      else
      {
        v36 = OUTLINED_FUNCTION_64_5();
        sub_257664D88(v36, v2);
        v37 = OUTLINED_FUNCTION_280();
        sub_257664F1C(v37, v38);
        sub_257665480();
        OUTLINED_FUNCTION_8_16();
        sub_257664D34();
        sub_257664D34();
        OUTLINED_FUNCTION_47_6();
        sub_257664D34();
        OUTLINED_FUNCTION_173();
        sub_257664D34();
        v35 = v39[1];
        v33 = v39[2];
        v34 = v40;
      }

      *v4 = v35;
      *(v4 + 8) = v33;
      *(v4 + 16) = v34;
      type metadata accessor for MLProgram.Value.ImmediateValue(0);
      OUTLINED_FUNCTION_18_1();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35();
}

void MLProgram.Value.ImmediateValue.hash(into:)()
{
  OUTLINED_FUNCTION_433();
  v3 = OUTLINED_FUNCTION_30();
  v4 = type metadata accessor for MLProgram.Value.Dictionary(v3);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_56_2();
  v8 = type metadata accessor for MLProgram.Value.List(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_6();
  v12 = type metadata accessor for MLProgram.Value.Tuple(0);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_0();
  v16 = type metadata accessor for MLProgram.Value.ImmediateValue(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_4_23();
  v20 = OUTLINED_FUNCTION_211();
  sub_257664F1C(v20, v21);
  OUTLINED_FUNCTION_280();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_15_8();
      sub_257664D88(v2, v1);
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_MILSpec_TupleValue(0);
      sub_257664E78(&qword_27F87B440, type metadata accessor for Proto_MILSpec_TupleValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_0_47();
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_17_12();
      sub_257664D88(v2, v0);
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_MILSpec_ListValue(0);
      sub_257664E78(&qword_27F87B430, type metadata accessor for Proto_MILSpec_ListValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_2_34();
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_16_9();
      v28 = OUTLINED_FUNCTION_230();
      sub_257664D88(v28, v29);
      MEMORY[0x259C651F0](3);
      type metadata accessor for Proto_MILSpec_DictionaryValue(0);
      sub_257664E78(&qword_27F87B420, type metadata accessor for Proto_MILSpec_DictionaryValue);
      OUTLINED_FUNCTION_72_0();
      sub_2577435F4();
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      sub_257664D34();
      break;
    default:
      v23 = *v2;
      v22 = *(v2 + 8);
      v24 = *(v2 + 16);
      MEMORY[0x259C651F0](0);
      if (v24)
      {
        v25 = 4;
      }

      else
      {
        v25 = 0;
      }

      switch((v22 >> 60) & 3 | v25)
      {
        case 1uLL:
          MEMORY[0x259C651F0](1);
          v37 = OUTLINED_FUNCTION_188_1();
          sub_257667A94(v37, v38);
          break;
        case 2uLL:
          MEMORY[0x259C651F0](2);
          v33 = OUTLINED_FUNCTION_188_1();
          sub_257667A44(v33, v34);
          break;
        case 3uLL:
          MEMORY[0x259C651F0](3);
          v35 = OUTLINED_FUNCTION_188_1();
          sub_2576679DC(v35, v36);
          break;
        case 4uLL:
          MEMORY[0x259C651F0](4);
          OUTLINED_FUNCTION_23_11();
          v30 = OUTLINED_FUNCTION_188_1();
          sub_257668318(v30, v31, v32);
          break;
        case 5uLL:
          MEMORY[0x259C651F0](5);
          v39 = OUTLINED_FUNCTION_188_1();
          sub_257667984(v39, v40);
          break;
        case 6uLL:
          MEMORY[0x259C651F0](6);
          OUTLINED_FUNCTION_188_1();
          sub_257743114();
          break;
        default:
          MEMORY[0x259C651F0](0);
          v26 = OUTLINED_FUNCTION_188_1();
          sub_257667AE4(v26, v27);
          break;
      }

      sub_257664F74(v23, v22, v24);
      break;
  }

  OUTLINED_FUNCTION_434();
}

uint64_t sub_257664948(void (*a1)(_BYTE *))
{
  sub_257743A14();
  a1(v3);
  return sub_257743A64();
}

uint64_t sub_2576649B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_257743A14();
  a4(v6);
  return sub_257743A64();
}

uint64_t sub_2576649F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MLProgram.Value.BlobFileValue.fileName.setter(v1, v2);
}

uint64_t (*MLProgram.Value.BlobFileValue.fileName.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25749BD04;
}

uint64_t MLProgram.Value.BlobFileValue.offset.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
  }

  return result;
}

uint64_t *(*MLProgram.Value.BlobFileValue.offset.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_257664ACC;
  }

  return result;
}

uint64_t *sub_257664ACC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 16) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_257664AF0()
{
  if (sub_2577436F4())
  {
  }

  else
  {

    MEMORY[0x259C64E90](47, 0xE100000000000000);
  }

  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_173();
  v3 = sub_2577436E4();

  if (v3)
  {
    OUTLINED_FUNCTION_173();
    sub_2577436A4();

    sub_2577436B4();
    sub_2576682AC();
    result = sub_257743684();
    *v0 = v1;
    v0[1] = v2;
  }

  else
  {
  }

  return result;
}

BOOL static MLProgram.Value.BlobFileValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_267();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  result = 0;
  if (v3 || (sub_257743994()) && *(v1 + 16) == v0[2])
  {
    v4 = *(type metadata accessor for Proto_MILSpec_Value.BlobFileValue(0) + 24);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    sub_257664E78(v5, v6);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257664D34()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_257664D88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_257664E78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_66_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257664F1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_257664F74(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  switch((a2 >> 60) & 3 | v3)
  {
    case 6uLL:
      result = sub_257486798(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

void MLProgram.Value.BlobFileValue.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for MLProgram.Value.BlobFileValue(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v18 = OUTLINED_FUNCTION_64_5();
  sub_257664F1C(v18, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_257743FF0;
  *(v19 + 32) = 0x656D614E656C6966;
  *(v19 + 40) = 0xE800000000000000;
  v20 = v3[1];
  v21 = MEMORY[0x277D837D0];
  *(v19 + 48) = *v3;
  *(v19 + 56) = v20;
  *(v19 + 72) = v21;
  *(v19 + 80) = 0x74657366666FLL;
  *(v19 + 88) = 0xE600000000000000;
  v22 = v3[2];
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 120) = MEMORY[0x277D83B88];
    *(v19 + 96) = v22;
    sub_257743A74();
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    (*(v7 + 104))(v1, *MEMORY[0x277D84C38], v4);

    OUTLINED_FUNCTION_201();
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t MLProgram.Value.BlobFileValue.debugDescription.getter()
{
  sub_257743834();

  MEMORY[0x259C64E90](*v0, v0[1]);
  result = MEMORY[0x259C64E90](0x657366666F202C22, 0xEB00000000203A74);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[2];
    v2 = sub_257743974();
    MEMORY[0x259C64E90](v2);

    OUTLINED_FUNCTION_75_4();
    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_2576652F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  switch((v4 >> 60) & 3 | v6)
  {
    case 1uLL:
      v11 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
      OUTLINED_FUNCTION_86_3(v11);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 2uLL:
      v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
      OUTLINED_FUNCTION_86_3(v9);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 3uLL:
      v10 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(0);
      OUTLINED_FUNCTION_86_3(v10);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 4uLL:
      v8 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
      OUTLINED_FUNCTION_86_3(v8);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 5uLL:
      v12 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
      OUTLINED_FUNCTION_86_3(v12);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
      goto LABEL_11;
    case 6uLL:
      v16 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      *a1 = xmmword_257745740;
      v17 = *(type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0) + 20);
      v18 = OUTLINED_FUNCTION_205();
      sub_257486740(v18, v19);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      sub_257486798(*a1, *(a1 + 8));
      *a1 = v3;
      *(a1 + 8) = v16;
      type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
      OUTLINED_FUNCTION_62_4();

      return swift_storeEnumTagMultiPayload();
    default:
      v7 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
      OUTLINED_FUNCTION_86_3(v7);
      OUTLINED_FUNCTION_85_3();
      OUTLINED_FUNCTION_62_4();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v13 = OUTLINED_FUNCTION_98_2();

      return sub_257667B4C(v13, v14, v5);
  }
}

void sub_257665480()
{
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_16_1();
  v7 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_6();
  v11 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_0();
  v15 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = OUTLINED_FUNCTION_38();
  v20 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_0();
  v24 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v28 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v34 = (v33 - v32);
  v35 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
  v36 = OUTLINED_FUNCTION_13(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v41 = (v40 - v39);
  type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  OUTLINED_FUNCTION_66_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = OUTLINED_FUNCTION_156();
      sub_257664D88(v49, v34);
      v43 = *v34;

      sub_257664D34();
      v45 = 0;
      goto LABEL_8;
    case 2u:
      v47 = OUTLINED_FUNCTION_156();
      sub_257664D88(v47, v5);
      v43 = *v5;

      sub_257664D34();
      v45 = 0;
      v44 = 0x2000000000000000;
      break;
    case 3u:
      v48 = OUTLINED_FUNCTION_156();
      sub_257664D88(v48, v4);
      v43 = *v4;

      sub_257664D34();
      v45 = 0;
      v44 = 0x3000000000000000;
      break;
    case 4u:
      v46 = OUTLINED_FUNCTION_156();
      sub_257664D88(v46, v3);
      v43 = *v3;

      sub_257664D34();
      v44 = 0;
      goto LABEL_10;
    case 5u:
      v50 = OUTLINED_FUNCTION_156();
      sub_257664D88(v50, v2);
      v43 = *v2;

      sub_257664D34();
      v45 = 1;
LABEL_8:
      v44 = 0x1000000000000000;
      break;
    case 6u:
      v51 = OUTLINED_FUNCTION_156();
      sub_257664D88(v51, v1);
      v43 = *v1;
      v52 = v1[1];
      v53 = OUTLINED_FUNCTION_188_1();
      sub_257486740(v53, v54);
      sub_257664D34();
      v44 = v52 | 0x2000000000000000;
LABEL_10:
      v45 = 1;
      break;
    default:
      v42 = OUTLINED_FUNCTION_156();
      sub_257664D88(v42, v41);
      v43 = *v41;

      sub_257664D34();
      v44 = 0;
      v45 = 0;
      break;
  }

  *v0 = v43;
  *(v0 + 8) = v44;
  *(v0 + 16) = v45;
  OUTLINED_FUNCTION_35();
}

void static MLProgram.Value.Tensor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_433();
  v2 = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 16);
  if (*(v1 + 16))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + 16))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v5 >> 60) & 3 | v8;
  switch((v3 >> 60) & 3 | v7)
  {
    case 1uLL:
      if (v9 == 1)
      {
        v18 = OUTLINED_FUNCTION_205();
        sub_257479BB4(v18, v19);
      }

      goto LABEL_22;
    case 2uLL:
      if (v9 == 2)
      {
        v14 = OUTLINED_FUNCTION_205();
        sub_257479C08(v14, v15);
      }

      goto LABEL_22;
    case 3uLL:
      if (v9 == 3)
      {
        v16 = OUTLINED_FUNCTION_205();
        sub_257479C78(v16, v17);
      }

      goto LABEL_22;
    case 4uLL:
      if (v9 == 4)
      {
        v12 = OUTLINED_FUNCTION_205();
        sub_257487374(v12, v13);
      }

      goto LABEL_22;
    case 5uLL:
      if (v9 == 5)
      {
        v20 = OUTLINED_FUNCTION_205();
        sub_257479D04(v20, v21);
      }

      goto LABEL_22;
    case 6uLL:
      if (v9 != 6)
      {
        goto LABEL_22;
      }

      v22 = OUTLINED_FUNCTION_188_1();
      sub_257667B4C(v22, v23, v6);
      v24 = OUTLINED_FUNCTION_53_3();
      sub_257667B4C(v24, v25, v26);
      MEMORY[0x259C648D0](v2, v3 & 0xCFFFFFFFFFFFFFFFLL, v4, v5 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    default:
      if (!v9)
      {
        v10 = OUTLINED_FUNCTION_205();
        sub_257479B60(v10, v11);
      }

LABEL_22:
      v27 = OUTLINED_FUNCTION_188_1();
      sub_257667B4C(v27, v28, v6);
      v29 = OUTLINED_FUNCTION_53_3();
      sub_257667B4C(v29, v30, v31);
      break;
  }

  v32 = OUTLINED_FUNCTION_53_3();
  sub_257664F74(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_188_1();
  sub_257664F74(v35, v36, v6);
  OUTLINED_FUNCTION_434();
}

void MLProgram.Value.Tensor.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  switch((v0[1] >> 60) & 3 | v2)
  {
    case 1uLL:
      MEMORY[0x259C651F0](1);
      v12 = OUTLINED_FUNCTION_292();

      sub_257667A94(v12, v13);
      break;
    case 2uLL:
      MEMORY[0x259C651F0](2);
      v8 = OUTLINED_FUNCTION_292();

      sub_257667A44(v8, v9);
      break;
    case 3uLL:
      MEMORY[0x259C651F0](3);
      v10 = OUTLINED_FUNCTION_292();

      sub_2576679DC(v10, v11);
      break;
    case 4uLL:
      MEMORY[0x259C651F0](4);
      OUTLINED_FUNCTION_23_11();
      v5 = OUTLINED_FUNCTION_292();
      sub_257668318(v5, v6, v7);
      break;
    case 5uLL:
      MEMORY[0x259C651F0](5);
      v14 = OUTLINED_FUNCTION_292();

      sub_257667984(v14, v15);
      break;
    case 6uLL:
      MEMORY[0x259C651F0](6);
      OUTLINED_FUNCTION_292();

      sub_257743114();
      break;
    default:
      MEMORY[0x259C651F0](0);
      v3 = OUTLINED_FUNCTION_292();

      sub_257667AE4(v3, v4);
      break;
  }
}

uint64_t MLProgram.Value.Tensor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257743A14();
  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  switch((v2 >> 60) & 3 | v4)
  {
    case 1uLL:
      v46 = MEMORY[0x259C651F0](1);
      v54 = OUTLINED_FUNCTION_67_4(v46, v47, v48, v49, v50, v51, v52, v53, v67, v68);
      sub_257667A94(v54, v55);
      break;
    case 2uLL:
      v26 = MEMORY[0x259C651F0](2);
      v34 = OUTLINED_FUNCTION_67_4(v26, v27, v28, v29, v30, v31, v32, v33, v67, v68);
      sub_257667A44(v34, v35);
      break;
    case 3uLL:
      v36 = MEMORY[0x259C651F0](3);
      v44 = OUTLINED_FUNCTION_67_4(v36, v37, v38, v39, v40, v41, v42, v43, v67, v68);
      sub_2576679DC(v44, v45);
      break;
    case 4uLL:
      MEMORY[0x259C651F0](4);
      OUTLINED_FUNCTION_23_11();
      v23 = OUTLINED_FUNCTION_67_4(v15, v16, v17, v18, v19, v20, v21, v22, v67, v68);
      sub_257668318(v23, v24, v25);
      break;
    case 5uLL:
      v56 = MEMORY[0x259C651F0](5);
      v64 = OUTLINED_FUNCTION_67_4(v56, v57, v58, v59, v60, v61, v62, v63, v67, v68);
      sub_257667984(v64, v65);
      break;
    case 6uLL:
      MEMORY[0x259C651F0](6);
      sub_257743114();
      break;
    default:
      v5 = MEMORY[0x259C651F0](0);
      v13 = OUTLINED_FUNCTION_67_4(v5, v6, v7, v8, v9, v10, v11, v12, v67, v68);
      sub_257667AE4(v13, v14);
      break;
  }

  return sub_257743A64();
}

uint64_t sub_257665CC0()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_257743A14();
  MLProgram.Value.Tensor.hash(into:)();
  return sub_257743A64();
}

uint64_t (*MLProgram.Value.Tuple.elements.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Value.List.elements.getter(a1);
  return sub_257665D5C;
}

uint64_t sub_257665DA0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v9 = v8;
  v82 = a2;
  v83 = a4;
  v81 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63(AssociatedTypeWitness);
  v76 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  v19 = MEMORY[0x28223BE20](v18);
  v69 = a5;
  v70 = &v64 - v20;
  v67 = *(a5 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v79 = (v22 - v23);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v24);
  v77 = &v64 - v25;
  OUTLINED_FUNCTION_153();
  v26 = sub_2577437B4();
  v27 = OUTLINED_FUNCTION_63(v26);
  v65 = v28;
  v66 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v64 - v36;
  v38 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v78 = v39 - v40;
  OUTLINED_FUNCTION_158();
  v42 = MEMORY[0x28223BE20](v41);
  v75 = *(a3 - 8);
  v43 = *(v75 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v74 = v45 - v44;
  v73 = a6;
  v84 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63(v84);
  v71 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  v51 = &v64 - v50;
  v52 = sub_257743724();
  v85 = sub_257743864();
  v80 = sub_257743874();
  sub_257743844();
  (*(v75 + 16))(v74, v72, a3);
  v83 = v51;
  v75 = a3;
  result = sub_257743714();
  if (v52 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v52)
  {
    v54 = (v76 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2577437C4();
      result = __swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v81(v37, v77);
      if (v9)
      {
        v62 = OUTLINED_FUNCTION_71_2();
        v63(v62);

        (*(v67 + 32))(v68, v77, v69);
        return (*v54)(v37, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v54)(v37, AssociatedTypeWitness);
      sub_257743854();
      if (!--v52)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v55 = (v76 + 32);
  v56 = (v76 + 8);
  v57 = v70;
  while (1)
  {
    sub_2577437C4();
    if (__swift_getEnumTagSinglePayload(v33, 1, AssociatedTypeWitness) == 1)
    {
      v58 = OUTLINED_FUNCTION_71_2();
      v59(v58);
      (*(v65 + 8))(v33, v66);
      return v85;
    }

    (*v55)(v57, v33, AssociatedTypeWitness);
    v81(v57, v79);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v56)(v57, AssociatedTypeWitness);
    sub_257743854();
  }

  (*v56)(v57, AssociatedTypeWitness);
  v60 = OUTLINED_FUNCTION_71_2();
  v61(v60);

  return (*(v67 + 32))(v68, v79, v69);
}

uint64_t MLProgram.Value.Tuple.debugDescription.getter()
{
  result = 0x28656C707554;
  sub_257666E78(0x28656C707554, 0xE600000000000000, MLProgram.Value.Tuple.elements.getter);
  return result;
}

void sub_25766653C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_376();
  v4 = type metadata accessor for MLProgram.Value();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for Proto_MILSpec_Value(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_0();
  v16 = *(v0 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484C58();
    v17 = v29;
    v18 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v7 + 72);
    do
    {
      sub_257664F1C(v20, v2);
      OUTLINED_FUNCTION_24_12();
      v22 = OUTLINED_FUNCTION_264();
      sub_257664F1C(v22, v23);
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v24 = *(v29 + 16);
      if (v24 >= *(v29 + 24) >> 1)
      {
        sub_257484C58();
      }

      *(v29 + 16) = v24 + 1;
      v25 = *(v13 + 80);
      OUTLINED_FUNCTION_193();
      v26 = *(v13 + 72);
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v3, v27);
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v28 = *v1;

  *v1 = v17;
  OUTLINED_FUNCTION_35();
}

uint64_t (*MLProgram.Value.List.elements.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLProgram.Value.List.elements.getter(a1);
  return sub_257666770;
}

uint64_t sub_257666788(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t sub_257666824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t *a6@<X8>)
{
  v11 = a6 + *(a4(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = type metadata accessor for Proto_MILSpec_Value(0);
  v14 = sub_257665DA0(a5, 0, a2, v12, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v13);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a6 = v14;
  return result;
}

void sub_257666A1C()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_16_1();
  v7 = type metadata accessor for MLProgram.Value();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v13 = type metadata accessor for Proto_MILSpec_Value(0);
  v14 = OUTLINED_FUNCTION_24(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  v19 = v4(0);
  OUTLINED_FUNCTION_192_0(v19);
  v20 = *(v6 + 16);
  if (v20)
  {
    v32 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484C58();
    v21 = v33;
    v22 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    v24 = v6 + v23;
    v25 = *(v10 + 72);
    do
    {
      sub_257664F1C(v24, v1);
      OUTLINED_FUNCTION_24_12();
      v26 = OUTLINED_FUNCTION_264();
      sub_257664F1C(v26, v27);
      OUTLINED_FUNCTION_25_10();
      sub_257664D34();
      v28 = *(v33 + 16);
      if (v28 >= *(v33 + 24) >> 1)
      {
        sub_257484C58();
      }

      *(v33 + 16) = v28 + 1;
      v29 = *(v16 + 80);
      OUTLINED_FUNCTION_193();
      v30 = *(v16 + 72);
      OUTLINED_FUNCTION_7_18();
      sub_257664D88(v2, v31);
      v24 += v25;
      --v20;
    }

    while (v20);

    v0 = v32;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *v0 = v21;
  OUTLINED_FUNCTION_35();
}

void sub_257666C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_16_1();
  v28 = sub_257743A84();
  v29 = OUTLINED_FUNCTION_63(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v38 = v27(0);
  OUTLINED_FUNCTION_4(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  sub_257664F1C(v20, &a9 - v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2577442B0;
  *(v43 + 32) = 0x73746E656D656C65;
  *(v43 + 40) = 0xE800000000000000;
  v44 = v25();
  *(v43 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880840, &qword_25776DC18);
  *(v43 + 48) = v44;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  (*(v31 + 104))(v21, *MEMORY[0x277D84C38], v28);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.List.debugDescription.getter()
{
  result = 0x287473694CLL;
  sub_257666E78(0x287473694CLL, 0xE500000000000000, MLProgram.Value.List.elements.getter);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_257666E78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_376();
  type metadata accessor for MLProgram.Value();
  v3 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x259C64F20](v3);
  OUTLINED_FUNCTION_96_3();

  v4 = OUTLINED_FUNCTION_263();
  MEMORY[0x259C64E90](v4);

  OUTLINED_FUNCTION_75_4();
}

void sub_257666EF0(uint64_t *a1)
{
  v1 = *a1;

  MLProgram.Value.Dictionary.keyValuePairs.setter();
}

void MLProgram.Value.Dictionary.keyValuePairs.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v63 = type metadata accessor for Proto_MILSpec_Value(0);
  v4 = OUTLINED_FUNCTION_4(v63);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v68 = v7 - v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  v67 = &v56 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  OUTLINED_FUNCTION_63(v66);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v62 = &v56 - v16;
  v17 = OUTLINED_FUNCTION_153();
  v18 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(v17);
  v19 = OUTLINED_FUNCTION_63(v18);
  v64 = v20;
  v65 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6();
  v23 = *(v3 + 16);
  if (v23)
  {
    v57 = v0;
    OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
    sub_257484CB0();
    v24 = 0;
    v25 = *(v12 + 80);
    OUTLINED_FUNCTION_193();
    v58 = v3 + v26;
    v59 = v23;
    v27 = v69;
    v60 = v12;
    v61 = v3;
    v28 = v67;
    v29 = v63;
    while (v24 < *(v3 + 16))
    {
      v30 = *(v12 + 72);
      v31 = v62;
      sub_257487308();
      v32 = *(v66 + 48);
      sub_257664F1C(v31, v28);
      sub_257664F1C(v31 + v32, v68);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      v33 = v65;
      v34 = *(v65 + 20);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v29);
      v38 = *(v33 + 24);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
      sub_2574695E4(v1 + v34, &qword_27F879EB8, &unk_2577447E0);
      sub_257664D88(v28, v1 + v34);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v29);
      sub_2574695E4(v1 + v38, &qword_27F879EB8, &unk_2577447E0);
      sub_257664D88(v68, v1 + v38);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v29);
      sub_2574695E4(v31, &qword_27F879ED0, &qword_2577447F8);
      v69 = v27;
      v49 = *(v27 + 16);
      v48 = *(v27 + 24);
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_13_1(v48);
        sub_257484CB0();
        v27 = v69;
      }

      ++v24;
      *(v27 + 16) = v49 + 1;
      v50 = *(v64 + 80);
      OUTLINED_FUNCTION_193();
      v52 = *(v51 + 72);
      v53 = OUTLINED_FUNCTION_166();
      sub_257664D88(v53, v54);
      v12 = v60;
      v3 = v61;
      if (v59 == v24)
      {

        v0 = v57;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
LABEL_9:
    v55 = *v0;

    *v0 = v27;
    OUTLINED_FUNCTION_35();
  }
}

uint64_t (*MLProgram.Value.Dictionary.keyValuePairs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  *a1 = v3;
  return sub_2576672FC;
}

uint64_t MLProgram.Value.Dictionary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for Proto_MILSpec_DictionaryValue(0);
  return OUTLINED_FUNCTION_192_0(v1);
}

BOOL sub_257667378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  result = 0;
  if (v7(*v5, *v6))
  {
    v8 = *(a4(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_6_26();
    sub_257664E78(v9, v10);
    if (OUTLINED_FUNCTION_4_2())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_257667454(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_211();

  return sub_2577435F4();
}

uint64_t sub_257667504(void (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_87_2();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2576675D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_87_2();
  sub_2577435F4();
  return sub_257743A64();
}

void sub_257667650(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_MILSpec_DictionaryValue(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  MLProgram.Value.Dictionary.keyValuePairs.setter();
}

void MLProgram.Value.Dictionary.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for MLProgram.Value.Dictionary(v12);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_30_2();
  v17 = OUTLINED_FUNCTION_156();
  sub_257664F1C(v17, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  strcpy((v18 + 32), "keyValuePairs");
  *(v18 + 46) = -4864;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  v20 = v19;
  *(v18 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880848, &qword_25776DC20);
  *(v18 + 48) = v20;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v5 + 104))(v0, *MEMORY[0x277D84C38], v2);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t MLProgram.Value.Dictionary.debugDescription.getter()
{
  OUTLINED_FUNCTION_63_5();
  v4 = v0;
  MLProgram.Value.Dictionary.keyValuePairs.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  v1 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x259C64F20](v1);
  OUTLINED_FUNCTION_96_3();

  v2 = OUTLINED_FUNCTION_263();
  MEMORY[0x259C64E90](v2);

  OUTLINED_FUNCTION_75_4();
  return v4;
}

uint64_t sub_257667914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879ED0, &qword_2577447F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_257667984(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x259C65220](*&v6);
      --v2;
    }

    while (v2);
  }
}

void sub_2576679DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_257743694();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_257667A44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_257743A34();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_257743A44();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_257743A44();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_257667B4C(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  switch((a2 >> 60) & 3 | v3)
  {
    case 6uLL:
      result = sub_257486740(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_257667CFC()
{
  result = qword_27F880868;
  if (!qword_27F880868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880868);
  }

  return result;
}

uint64_t sub_257667F48()
{
  result = type metadata accessor for MLProgram.Value.ImmediateValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLProgram.Value.BlobFileValue(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257667FBC()
{
  result = type metadata accessor for MLProgram.Value.Tuple(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLProgram.Value.List(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MLProgram.Value.Dictionary(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2576680A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FA && *(a1 + 17))
    {
      v2 = *a1 + 1017;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
      if (v2 >= 0x3F9)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2576680F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_257668150(uint64_t result, char a2)
{
  *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 16) = (a2 & 4) != 0;
  return result;
}

uint64_t sub_25766823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2576682AC()
{
  result = qword_27F8808E8;
  if (!qword_27F8808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8808E8);
  }

  return result;
}

uint64_t sub_257668318(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x259C651F0](v5);
  if (v5)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      result = a3(v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_257668370(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *v4;
      MEMORY[0x259C651F0](*(v4 - 1));
      MEMORY[0x259C651F0](v5);
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void OUTLINED_FUNCTION_30_8()
{
  *(v0 + 16) = v3;
  v6 = v0 + v5 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = 0;
}

char *OUTLINED_FUNCTION_32_7()
{

  return sub_257484040(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_257664D34();
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_257664D34();
}

char *OUTLINED_FUNCTION_61_2(char *a1)
{

  return sub_257484040(a1, v1, 1);
}

void OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x259C651F0);
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

void OUTLINED_FUNCTION_75_4()
{

  JUMPOUT(0x259C64E90);
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  *v1 = v0;

  return type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
}

uint64_t OUTLINED_FUNCTION_86_3(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_257664E78(v1, v0);
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return sub_257743674();
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return sub_257664D88(v1, v0);
}

uint64_t static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 *a11)
{
  v37 = a7;
  v38 = a8;
  v33 = a1;
  v34 = a2;
  v36 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v24 = swift_allocObject();
  v35 = xmmword_2577442B0;
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = v35;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v26 = 1;
  v23[32] = 1;
  LODWORD(a5) = *(type metadata accessor for Proto_SliceLayerParams(0) + 32);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = v36;
  v28 = v38;
  *v23 = v37;
  *(v23 + 1) = v28;
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v23 + 2) = v27;
  *(v23 + 3) = v32;
  v23[32] = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v26 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    swift_once();
  }

  *(a9 + v26) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v25);
  sub_2574897E0(v19);
  v29 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v29);
  sub_25752846C();
  return sub_257634BB4(v23);
}

uint64_t static NeuralNetwork.Layer.Kind.slice(startIndex:endIndex:stride:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1;
  v10 = a5 + *(type metadata accessor for Proto_SliceLayerParams(0) + 32);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = a3;
    *(a5 + 24) = v9;
    *(a5 + 32) = 1;
    type metadata accessor for NeuralNetwork.Layer.Kind();

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_257668B70()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40();
  v91 = type metadata accessor for SupportVectorCoefficients();
  v8 = OUTLINED_FUNCTION_4(v91);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v92 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F8, &qword_25776E398);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - v17;
  v19 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = type metadata accessor for SupportVectorKernel.Kind(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_17_3();
  v38 = type metadata accessor for SupportVectorKernel(v37);
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  v44 = v43 - v42;
  SupportVectorRegressorConfiguration.kernel.getter();
  v45 = OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_155(v45, v46, v38);
  if (v47)
  {
    sub_2574695E4(v1, &qword_27F880638, &unk_25776CCB8);
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = v0;
    OUTLINED_FUNCTION_11_17();
    sub_257669410(v1, v44);
    SupportVectorKernel.kind.getter();
    v89 = sub_2576D4A84();
    v50 = v49;
    v52 = v51;
    sub_257669E7C(v32, type metadata accessor for SupportVectorKernel.Kind);
    sub_257469AE0();
    v48 = v53;
    v54 = *(v53 + 16);
    if (v54 >= *(v53 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v48 = v83;
    }

    sub_257669E7C(v44, type metadata accessor for SupportVectorKernel);
    *(v48 + 16) = v54 + 1;
    v55 = v48 + 40 * v54;
    *(v55 + 32) = 0x6C656E72654BLL;
    *(v55 + 40) = 0xE600000000000000;
    *(v55 + 48) = v89;
    *(v55 + 56) = v50;
    *(v55 + 64) = v52;
    v3 = v90;
  }

  SupportVectorRegressorConfiguration.supportVectors.getter(v18);
  OUTLINED_FUNCTION_155(v18, 1, v19);
  if (v47)
  {
    sub_2574695E4(v18, &qword_27F8808F8, &qword_25776E398);
  }

  else
  {
    sub_257669410(v18, v25);
    v56 = sub_25766AA58();
    v58 = v57;
    v60 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_19_15();
      v48 = v84;
    }

    v62 = *(v48 + 16);
    if (v62 >= *(v48 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v48 = v85;
    }

    OUTLINED_FUNCTION_2_35();
    sub_257669E7C(v25, v63);
    *(v48 + 16) = v62 + 1;
    v64 = v48 + 40 * v62;
    *(v64 + 32) = 0x2074726F70707553;
    *(v64 + 40) = 0xEF73726F74636556;
    *(v64 + 48) = v56;
    *(v64 + 56) = v58;
    *(v64 + 64) = v60;
  }

  SupportVectorRegressorConfiguration.coefficients.getter();
  v65 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v65, v66, v91);
  if (v47)
  {
    sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
  }

  else
  {
    v67 = v3;
    OUTLINED_FUNCTION_10_24();
    sub_257669410(v2, v92);
    v68 = sub_25771F1B0();
    v70 = v69;
    v72 = v71;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    if ((v73 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_15();
      v48 = v86;
    }

    v74 = *(v48 + 16);
    if (v74 >= *(v48 + 24) >> 1)
    {
      OUTLINED_FUNCTION_18_18();
      v48 = v87;
    }

    sub_257669E7C(v92, type metadata accessor for SupportVectorCoefficients);
    *(v48 + 16) = v74 + 1;
    v75 = v48 + 40 * v74;
    strcpy((v75 + 32), "Coefficients");
    *(v75 + 45) = 0;
    *(v75 + 46) = -5120;
    *(v75 + 48) = v68;
    *(v75 + 56) = v70;
    *(v75 + 64) = v72;
    v3 = v67;
  }

  v93 = *(v3 + *(type metadata accessor for Proto_SupportVectorRegressor(0) + 20));
  v76 = sub_257743674();
  v78 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_19_15();
    v48 = v81;
  }

  v79 = *(v48 + 16);
  if (v79 >= *(v48 + 24) >> 1)
  {
    sub_257469AE0();
    v48 = v82;
  }

  *(v48 + 16) = v79 + 1;
  v80 = v48 + 40 * v79;
  *(v80 + 32) = 7301202;
  *(v80 + 40) = 0xE300000000000000;
  *(v80 + 48) = v76;
  *(v80 + 56) = v78;
  *(v80 + 64) = 0;
  sub_2576AACFC(v48);
  OUTLINED_FUNCTION_35();
}

void SupportVectorRegressorConfiguration.kernel.getter()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v6 = type metadata accessor for Proto_Kernel(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v28 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v16);
  v17 = *(OUTLINED_FUNCTION_35_5() + 28);
  OUTLINED_FUNCTION_34_6();
  v18 = OUTLINED_FUNCTION_29_9();
  sub_2574695E4(v18, v19, &unk_257768D60);
  if (v3 != 1)
  {
    sub_2574AD5D8(v0 + v17, v1, &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_16_10();
    if (v20)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v26 = v28;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = v28 + *(v6 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v20)
      {
        sub_2574695E4(v1, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_35();
      v26 = v28;
      sub_257669410(v1, v28);
    }

    OUTLINED_FUNCTION_3_35();
    sub_257669410(v26, v5);
    v2 = 0;
  }

  v27 = type metadata accessor for SupportVectorKernel(0);
  __swift_storeEnumTagSinglePayload(v5, v2, 1, v27);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorRegressorConfiguration.kernel.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_Kernel(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for SupportVectorKernel(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v14 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v14, v15, v16);
  if (v17)
  {
    sub_2574695E4(a1, &qword_27F880638, &unk_25776CCB8);
    v18 = type metadata accessor for Proto_SupportVectorRegressor(0);
    sub_2574695E4(v1 + *(v18 + 28), &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v5);
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    v22 = OUTLINED_FUNCTION_277();
    sub_257669410(v22, v23);
    sub_257669410(v3, v2);
    v24 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 28);
    sub_2574695E4(v1 + v24, &qword_27F87FDE0, &unk_257768D60);
    sub_257669410(v2, v1 + v24);
    return __swift_storeEnumTagSinglePayload(v1 + v24, 0, 1, v5);
  }
}

uint64_t sub_257669410(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

void (*SupportVectorRegressorConfiguration.kernel.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x58uLL);
  v2 = OUTLINED_FUNCTION_26_9(v1);
  v3 = type metadata accessor for SupportVectorKernel(v2);
  v1[1] = v3;
  v29 = v3;
  OUTLINED_FUNCTION_4(v3);
  v1[2] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for Proto_Kernel(0);
  v1[3] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v1[4] = __swift_coroFrameAllocStub(v7);
  v28 = __swift_coroFrameAllocStub(v7);
  v1[5] = v28;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE0, &unk_257768D60);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_37_9();
  v1[6] = v11;
  v12 = OUTLINED_FUNCTION_37_9();
  v1[7] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880638, &unk_25776CCB8);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  v1[8] = OUTLINED_FUNCTION_37_9();
  v16 = OUTLINED_FUNCTION_37_9();
  v1[9] = v16;
  v17 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 28);
  *(v1 + 20) = v17;
  sub_2574AD5D8(v0 + v17, v12, &qword_27F87FDE0, &unk_257768D60);
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v5);
  sub_2574695E4(v12, &qword_27F87FDE0, &unk_257768D60);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574AD5D8(v0 + v17, v11, &qword_27F87FDE0, &unk_257768D60);
    OUTLINED_FUNCTION_155(v11, 1, v5);
    if (v20)
    {
      type metadata accessor for Proto_Kernel.OneOf_Kernel(0);
      v26 = v28;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = &v28[*(v5 + 20)];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v11, 1, v5);
      if (!v20)
      {
        sub_2574695E4(v11, &qword_27F87FDE0, &unk_257768D60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_35();
      v26 = v28;
      sub_257669410(v11, v28);
    }

    OUTLINED_FUNCTION_3_35();
    sub_257669410(v26, v16);
    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v18, 1, v29);
  return sub_2576696E8;
}

void sub_2576696E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[9];
  if (v3)
  {
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v8 = v1[4];
    v9 = v1[2];
    v10 = *v1;
    v11 = OUTLINED_FUNCTION_263();
    sub_2574AD5D8(v11, v12, &qword_27F880638, v13);
    SupportVectorRegressorConfiguration.kernel.setter(v4);
    sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
  }

  else
  {
    v14 = v1[1];
    v15 = OUTLINED_FUNCTION_33_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v17);
    v19 = *(v1 + 20);
    if (EnumTagSinglePayload == 1)
    {
      v20 = *v1;
      sub_2574695E4(v2, &qword_27F880638, &unk_25776CCB8);
      sub_2574695E4(v20 + v19, &qword_27F87FDE0, &unk_257768D60);
      v21 = 1;
    }

    else
    {
      v22 = v1[4];
      v23 = v1[2];
      v24 = *v1;
      OUTLINED_FUNCTION_11_17();
      v25 = OUTLINED_FUNCTION_263();
      sub_257669410(v25, v26);
      sub_257669410(v23, v22);
      sub_2574695E4(v24 + v19, &qword_27F87FDE0, &unk_257768D60);
      sub_257669410(v22, v24 + v19);
      v21 = 0;
    }

    v4 = v1[8];
    v2 = v1[9];
    v6 = v1[6];
    v5 = v1[7];
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 20), v21, 1, v1[3]);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  OUTLINED_FUNCTION_35();

  free(v27);
}

uint64_t SupportVectorRegressorConfiguration.supportVectors.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40();
  sub_2574AD5D8(v3, v2, &qword_27F87FDD8, &qword_25776E390);
  v18 = 1;
  v19 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v19, v20, v5);
  if (!v21)
  {
    sub_257669410(v2, v13);
    sub_25766AFD4(v13, v11);
    sub_257669BEC();
    sub_257669E7C(v13, type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors);
    v18 = 0;
  }

  v22 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v22);
}

uint64_t sub_257669A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - v15;
  sub_2574AD5D8(a1, &v18 - v15, a5, a6);
  return a7(v16);
}

uint64_t SupportVectorRegressorConfiguration.supportVectors.setter(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(v9);
  OUTLINED_FUNCTION_155(a1, 1, v10);
  if (v11)
  {
    sub_2574695E4(a1, &qword_27F8808F8, &qword_25776E398);
    v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
    v14 = 1;
  }

  else
  {
    sub_257669CF8(v2);
    OUTLINED_FUNCTION_2_35();
    sub_257669E7C(a1, v12);
    v13 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
    v14 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v14, 1, v13);
  return sub_257669C88(v2, v3);
}

uint64_t sub_257669BEC()
{
  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  swift_getEnumCaseMultiPayload();
  v0 = OUTLINED_FUNCTION_205();
  sub_257669410(v0, v1);
  type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257669C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257669CF8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for DenseSupportVectorCollection(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for SparseSupportVectorCollection(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v17 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_4_24();
  sub_25766AFD4(v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_16();
    sub_257669410(v3, v12);
    sub_257669410(v12, a1);
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_257669410(v3, v2);
    sub_257669410(v2, a1);
  }

  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_257669E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void SupportVectorRegressorConfiguration.supportVectors.modify()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_26_9(v2);
  v4 = type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(v3);
  v2[1] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v2[2] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDD8, &qword_25776E390);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v2[3] = OUTLINED_FUNCTION_36_5();
  v10 = OUTLINED_FUNCTION_36_5();
  v2[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8808F8, &qword_25776E398);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v2[5] = OUTLINED_FUNCTION_36_5();
  v14 = OUTLINED_FUNCTION_36_5();
  v2[6] = v14;
  sub_2574AD5D8(v1, v10, &qword_27F87FDD8, &qword_25776E390);
  v15 = 1;
  OUTLINED_FUNCTION_155(v10, 1, v4);
  if (!v16)
  {
    sub_257669410(v10, v6);
    sub_257669BEC();
    v15 = 0;
  }

  v17 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  __swift_storeEnumTagSinglePayload(v14, v15, 1, v17);
  OUTLINED_FUNCTION_35();
}

void sub_25766A054()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[6];
  if (v3)
  {
    v5 = v1[4];
    v4 = v1[5];
    v7 = v1[2];
    v6 = v1[3];
    v8 = *v1;
    v9 = OUTLINED_FUNCTION_263();
    sub_2574AD5D8(v9, v10, &qword_27F8808F8, &qword_25776E398);
    SupportVectorRegressorConfiguration.supportVectors.setter(v4);
    sub_2574695E4(v2, &qword_27F8808F8, &qword_25776E398);
  }

  else
  {
    type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
    v11 = OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_155(v11, v12, v13);
    if (v14)
    {
      sub_2574695E4(v2, &qword_27F8808F8, &qword_25776E398);
      v16 = 1;
    }

    else
    {
      sub_257669CF8(v1[3]);
      OUTLINED_FUNCTION_2_35();
      sub_257669E7C(v2, v15);
      v16 = 0;
    }

    v4 = v1[5];
    v2 = v1[6];
    v6 = v1[3];
    v5 = v1[4];
    v7 = v1[2];
    v17 = *v1;
    __swift_storeEnumTagSinglePayload(v6, v16, 1, v1[1]);
    sub_257669C88(v6, v17);
  }

  free(v2);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v18);
}

void SupportVectorRegressorConfiguration.coefficients.getter()
{
  OUTLINED_FUNCTION_31();
  v23 = v5;
  v6 = type metadata accessor for Proto_Coefficients(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v14);
  v15 = *(OUTLINED_FUNCTION_35_5() + 32);
  OUTLINED_FUNCTION_34_6();
  v16 = OUTLINED_FUNCTION_29_9();
  sub_2574695E4(v16, v17, &qword_25776E3A0);
  if (v4 != 1)
  {
    sub_2574AD5D8(v0 + v15, v1, &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_16_10();
    if (v18)
    {
      *v2 = MEMORY[0x277D84F90];
      v19 = v2 + *(v6 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_16_10();
      if (!v18)
      {
        sub_2574695E4(v1, &qword_27F87FDE8, &qword_25776E3A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_26();
      v20 = OUTLINED_FUNCTION_277();
      sub_257669410(v20, v21);
    }

    OUTLINED_FUNCTION_5_26();
    sub_257669410(v2, v23);
    v3 = 0;
  }

  v22 = type metadata accessor for SupportVectorCoefficients();
  __swift_storeEnumTagSinglePayload(v23, v3, 1, v22);
  OUTLINED_FUNCTION_35();
}

uint64_t SupportVectorRegressorConfiguration.coefficients.setter(uint64_t a1)
{
  v5 = type metadata accessor for Proto_Coefficients(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_17_3();
  v9 = type metadata accessor for SupportVectorCoefficients();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  v13 = OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_155(v13, v14, v15);
  if (v16)
  {
    sub_2574695E4(a1, &qword_27F880900, &qword_25776E3A8);
    v17 = type metadata accessor for Proto_SupportVectorRegressor(0);
    sub_2574695E4(v1 + *(v17 + 32), &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_44();

    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
  }

  else
  {
    OUTLINED_FUNCTION_10_24();
    v21 = OUTLINED_FUNCTION_277();
    sub_257669410(v21, v22);
    sub_257669410(v3, v2);
    v23 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 32);
    sub_2574695E4(v1 + v23, &qword_27F87FDE8, &qword_25776E3A0);
    sub_257669410(v2, v1 + v23);
    return __swift_storeEnumTagSinglePayload(v1 + v23, 0, 1, v5);
  }
}

void (*SupportVectorRegressorConfiguration.coefficients.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  OUTLINED_FUNCTION_26_9(v1);
  v2 = type metadata accessor for SupportVectorCoefficients();
  v1[1] = v2;
  v27 = v2;
  OUTLINED_FUNCTION_4(v2);
  v1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = type metadata accessor for Proto_Coefficients(0);
  v1[3] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v1[4] = __swift_coroFrameAllocStub(v6);
  v25 = __swift_coroFrameAllocStub(v6);
  v1[5] = v25;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FDE8, &qword_25776E3A0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v24 = __swift_coroFrameAllocStub(v9);
  v1[6] = v24;
  v10 = __swift_coroFrameAllocStub(v9);
  v1[7] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v1[8] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v1[9] = v14;
  v26 = __swift_coroFrameAllocStub(v13);
  v1[10] = v26;
  v15 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 32);
  *(v1 + 22) = v15;
  sub_2574AD5D8(v0 + v15, v10, &qword_27F87FDE8, &qword_25776E3A0);
  v16 = 1;
  v17 = OUTLINED_FUNCTION_188();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v4);
  sub_2574695E4(v10, &qword_27F87FDE8, &qword_25776E3A0);
  if (EnumTagSinglePayload != 1)
  {
    sub_2574AD5D8(v0 + v15, v24, &qword_27F87FDE8, &qword_25776E3A0);
    OUTLINED_FUNCTION_155(v24, 1, v4);
    if (v20)
    {
      v22 = v25;
      *v25 = MEMORY[0x277D84F90];
      v21 = v25 + *(v4 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      OUTLINED_FUNCTION_155(v24, 1, v4);
      if (!v20)
      {
        sub_2574695E4(v24, &qword_27F87FDE8, &qword_25776E3A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_26();
      v22 = v25;
      sub_257669410(v24, v25);
    }

    OUTLINED_FUNCTION_5_26();
    sub_257669410(v22, v14);
    v16 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v16, 1, v27);
  sub_25766A928(v14, v26);
  return sub_25766A764;
}

void sub_25766A764()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = (*v0)[10];
  if (v3)
  {
    v4 = v1[8];
    v5 = v1[9];
    v7 = v1[6];
    v6 = v1[7];
    v9 = v1[4];
    v8 = v1[5];
    v10 = v1[2];
    v11 = *v1;
    sub_2574AD5D8((*v0)[10], v4, &qword_27F880900, &qword_25776E3A8);
    SupportVectorRegressorConfiguration.coefficients.setter(v4);
    sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
  }

  else
  {
    v12 = v1[1];
    v13 = OUTLINED_FUNCTION_33_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v15);
    v17 = *(v1 + 22);
    if (EnumTagSinglePayload == 1)
    {
      v18 = *v1;
      sub_2574695E4(v2, &qword_27F880900, &qword_25776E3A8);
      sub_2574695E4(v18 + v17, &qword_27F87FDE8, &qword_25776E3A0);
      v19 = 1;
    }

    else
    {
      v20 = v1[4];
      v21 = v1[2];
      v22 = *v1;
      OUTLINED_FUNCTION_10_24();
      v23 = OUTLINED_FUNCTION_263();
      sub_257669410(v23, v24);
      sub_257669410(v21, v20);
      sub_2574695E4(v22 + v17, &qword_27F87FDE8, &qword_25776E3A0);
      sub_257669410(v20, v22 + v17);
      v19 = 0;
    }

    v5 = v1[9];
    v2 = v1[10];
    v6 = v1[7];
    v4 = v1[8];
    v8 = v1[5];
    v7 = v1[6];
    v9 = v1[4];
    v10 = v1[2];
    __swift_storeEnumTagSinglePayload(*v1 + *(v1 + 22), v19, 1, v1[3]);
  }

  free(v2);
  free(v5);
  free(v4);
  free(v6);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  OUTLINED_FUNCTION_35();

  free(v25);
}

uint64_t sub_25766A928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880900, &qword_25776E3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SupportVectorRegressorConfiguration.rho.setter(double a1)
{
  result = type metadata accessor for Proto_SupportVectorRegressor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

double (*SupportVectorRegressorConfiguration.rho.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_SupportVectorRegressor(0) + 20);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_25766AA44;
}

double sub_25766AA44(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16)) = *a1;
  return result;
}

uint64_t sub_25766AA58()
{
  v1 = type metadata accessor for DenseSupportVectorCollection(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for SparseSupportVectorCollection(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  v19 = OUTLINED_FUNCTION_263();
  sub_25766AFD4(v19, v20);
  OUTLINED_FUNCTION_277();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_16();
    sub_257669410(v0, v7);
    sub_2576C029C();
    OUTLINED_FUNCTION_1_36();
    v22 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_257669410(v0, v14);
    sub_25771C79C();
    OUTLINED_FUNCTION_0_48();
    v22 = v14;
  }

  sub_257669E7C(v22, v21);
  return OUTLINED_FUNCTION_263();
}

uint64_t SupportVectorRegressorConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_SupportVectorRegressor.OneOf_SupportVectors(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Proto_SupportVectorRegressor(0);
  *(a1 + v6[5]) = 0;
  v7 = a1 + v6[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v8 = v6[7];
  type metadata accessor for Proto_Kernel(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v6[8];
  type metadata accessor for Proto_Coefficients(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void static SupportVectorRegressorConfiguration.SupportVectors.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for DenseSupportVectorCollection(0);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_17_3();
  v33 = type metadata accessor for SparseSupportVectorCollection(v32);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v39 = (v38 - v37);
  v40 = type metadata accessor for SupportVectorRegressorConfiguration.SupportVectors(0);
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v44);
  v46 = (&a9 - v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880908, &qword_25776E3B0);
  OUTLINED_FUNCTION_13(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &a9 - v52;
  v54 = *(v51 + 56);
  sub_25766AFD4(v27, &a9 - v52);
  sub_25766AFD4(v25, &v53[v54]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_24();
    sub_25766AFD4(v53, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_9_16();
      sub_257669410(&v53[v54], v20);
      v55 = *v21;
      v56 = *v20;
      sub_25747B378();
      if (v57)
      {
        v58 = *(type metadata accessor for Proto_DenseSupportVectors(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_15_9();
        sub_25766B074(v59, v60);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_36();
      sub_257669E7C(v20, v61);
      OUTLINED_FUNCTION_1_36();
      v63 = v21;
LABEL_14:
      sub_257669E7C(v63, v62);
      OUTLINED_FUNCTION_2_35();
      sub_257669E7C(v53, v73);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_36();
    v65 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    sub_25766AFD4(v53, v46);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_17();
      sub_257669410(&v53[v54], v39);
      v66 = *v46;
      v67 = *v39;
      sub_25747B1CC();
      if (v68)
      {
        v69 = *(type metadata accessor for Proto_SparseSupportVectors(0) + 20);
        sub_2577431B4();
        OUTLINED_FUNCTION_15_9();
        sub_25766B074(v70, v71);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_48();
      sub_257669E7C(v39, v72);
      OUTLINED_FUNCTION_0_48();
      v63 = v46;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_48();
    v65 = v46;
  }

  sub_257669E7C(v65, v64);
  sub_2574695E4(v53, &qword_27F880908, &qword_25776E3B0);
LABEL_15:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25766AFD4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_25766B074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25766B104()
{
  result = type metadata accessor for Proto_SupportVectorRegressor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_18_18()
{

  sub_257469AE0();
}

void OUTLINED_FUNCTION_19_15()
{
  v2 = *(v0 + 16) + 1;

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_26_9(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_2574AD5D8(v1 + v0, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return type metadata accessor for Proto_SupportVectorRegressor(0);
}

void *OUTLINED_FUNCTION_36_5()
{

  return __swift_coroFrameAllocStub(v0);
}

void *OUTLINED_FUNCTION_37_9()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t TreeEnsemble.nodes.getter()
{
  v1 = type metadata accessor for TreeEnsemble.TreeNode();
  v2 = OUTLINED_FUNCTION_24(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_257484138();
    v12 = v22;
    v13 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
    OUTLINED_FUNCTION_24(v13);
    v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v16 + 72);
    do
    {
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v15, v9);
      v18 = *(v22 + 16);
      if (v18 >= *(v22 + 24) >> 1)
      {
        sub_257484138();
      }

      *(v22 + 16) = v18 + 1;
      v19 = *(v4 + 80);
      OUTLINED_FUNCTION_193();
      sub_25766C254(v9, v22 + v20 + *(v4 + 72) * v18);
      v15 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_25766B548(uint64_t *a1)
{
  v1 = *a1;

  TreeEnsemble.nodes.setter();
}

void TreeEnsemble.nodes.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = type metadata accessor for TreeEnsemble.TreeNode();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v10 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = *(v3 + 16);
  if (v19)
  {
    OUTLINED_FUNCTION_8_18(MEMORY[0x277D84F90]);
    v20 = v30;
    v21 = *(v7 + 80);
    OUTLINED_FUNCTION_193();
    v23 = v3 + v22;
    v24 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v23, v1);
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v1, v18);
      sub_25766C1F8(v1);
      v25 = *(v30 + 16);
      if (v25 >= *(v30 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      *(v30 + 16) = v25 + 1;
      v26 = *(v13 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_25(v28, v30 + v27 + *(v13 + 72) * v25);
      v23 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v29 = *v0;

  *v0 = v20;
  OUTLINED_FUNCTION_35();
}

void (*TreeEnsemble.nodes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TreeEnsemble.nodes.getter();
  return sub_25766B780;
}

void sub_25766B780(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    TreeEnsemble.nodes.setter();
  }

  else
  {
    v5 = *a1;
    TreeEnsemble.nodes.setter();
  }
}

uint64_t TreeEnsemble.predictionSize.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.predictionSize.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.predictionSize.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

uint64_t sub_25766B834(uint64_t *a1)
{
  v1 = *a1;

  return TreeEnsemble.basePrediction.setter(v2);
}

uint64_t TreeEnsemble.basePrediction.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*TreeEnsemble.basePrediction.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25766B8DC;
}

uint64_t sub_25766B8DC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 16) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 16) = v4;
  }

  return result;
}

void sub_25766B950()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for TreeEnsemble.TreeNode();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  v9 = OUTLINED_FUNCTION_13_12(inited, 28494);
  v10 = *(v9 + 16);
  v34 = inited;
  if (v10)
  {
    v37 = MEMORY[0x277D84F90];
    sub_257484040(0, v10, 0);
    v11 = v37;
    v12 = *(v5 + 80);
    OUTLINED_FUNCTION_193();
    v14 = v9 + v13;
    v35 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v14, v1);
      v15 = sub_25773F384();
      v17 = v16;
      v19 = v18;
      sub_25766C1F8(v1);
      v21 = *(v37 + 16);
      v20 = *(v37 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_257484040((v20 > 1), v21 + 1, 1);
      }

      *(v37 + 16) = v21 + 1;
      v22 = v37 + 24 * v21;
      *(v22 + 32) = v15;
      *(v22 + 40) = v17;
      *(v22 + 48) = v19;
      v14 += v35;
      --v10;
    }

    while (v10);

    inited = v34;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  *(inited + 72) = 0x6974636964657250;
  *(inited + 80) = 0xEF657A6953206E6FLL;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v0 + 8);
    *(inited + 88) = sub_257743674();
    *(inited + 96) = v23;
    *(inited + 104) = 0;
    *(inited + 112) = 0x6572502065736142;
    *(inited + 120) = 0xEF6E6F6974636964;
    v24 = *(v0 + 16);
    v25 = *(v24 + 16);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v39 = MEMORY[0x277D84F90];
      sub_257484040(0, v25, 0);
      v26 = v39;
      v27 = (v24 + 32);
      do
      {
        v36 = *v27;
        v28 = sub_257743674();
        v30 = v29;
        v32 = *(v39 + 16);
        v31 = *(v39 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_257484040((v31 > 1), v32 + 1, 1);
        }

        *(v39 + 16) = v32 + 1;
        v33 = v39 + 24 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        *(v33 + 48) = 0;
        ++v27;
        --v25;
      }

      while (v25);
      inited = v34;
    }

    *(inited + 128) = v26;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    sub_2576A6964(inited);
    OUTLINED_FUNCTION_35();
  }
}

uint64_t TreeEnsemble.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void TreeEnsemble.init(basePrediction:nodes:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TreeEnsemble.TreeNode();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v13 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(0);
  v14 = OUTLINED_FUNCTION_24(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = v6 + *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v6[1] = *(v4 + 16);
  v6[2] = v4;
  v23 = *(v2 + 16);
  if (v23)
  {
    OUTLINED_FUNCTION_8_18(MEMORY[0x277D84F90]);
    v24 = v33;
    v25 = *(v10 + 80);
    OUTLINED_FUNCTION_193();
    v27 = v2 + v26;
    v28 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_1_37();
      sub_25766C2FC(v27, v0);
      OUTLINED_FUNCTION_0_49();
      sub_25766C2FC(v0, v21);
      sub_25766C1F8(v0);
      v29 = *(v33 + 16);
      if (v29 >= *(v33 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      *(v33 + 16) = v29 + 1;
      v30 = *(v16 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_4_25(v32, v33 + v31 + *(v16 + 72) * v29);
      v27 += v28;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  *v6 = v24;
  OUTLINED_FUNCTION_35();
}

BOOL static TreeEnsemble.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_257481CB8();
  result = 0;
  if (v6 & 1) != 0 && a1[1] == a2[1] && (sub_257479D04(a1[2], a2[2]))
  {
    v7 = *(type metadata accessor for Proto_TreeEnsembleParameters(0) + 28);
    sub_2577431B4();
    sub_25766C3A0(&qword_27F879B68, MEMORY[0x277D216C8]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void TreeEnsemble.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = sub_257743A84();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &a9 - v29;
  v31 = type metadata accessor for TreeEnsemble();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  sub_25766C2FC(v20, v36 - v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2577442C0;
  v38 = OUTLINED_FUNCTION_13_12(v37, 28526);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880920, &unk_25776E470);
  *(v37 + 48) = v38;
  *(v37 + 72) = v39;
  strcpy((v37 + 80), "predictionSize");
  *(v37 + 95) = -18;
  v40 = *(v20 + 8);
  if (v40 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x277D83B88];
    *(v37 + 96) = v40;
    *(v37 + 120) = v41;
    strcpy((v37 + 128), "basePrediction");
    *(v37 + 143) = -18;
    v42 = *(v20 + 16);
    *(v37 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
    *(v37 + 144) = v42;
    v43 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v43);
    (*(v25 + 104))(v21, *MEMORY[0x277D84C38], v24);

    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25766C1F8(uint64_t a1)
{
  v2 = type metadata accessor for TreeEnsemble.TreeNode();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25766C254(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for TreeEnsemble()
{
  result = qword_27F880928;
  if (!qword_27F880928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25766C2FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25766C3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25766C410()
{
  result = type metadata accessor for Proto_TreeEnsembleParameters(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2)
{

  return sub_25766C254(v2, a2);
}

void OUTLINED_FUNCTION_7_19()
{

  sub_257484D08();
}

void OUTLINED_FUNCTION_8_18(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  sub_257484D08();
}

uint64_t OUTLINED_FUNCTION_13_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFF00000000FFFFLL | 0x7365640000;
  *(a1 + 40) = 0xE500000000000000;

  return TreeEnsemble.nodes.getter();
}