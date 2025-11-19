void sub_257476DC8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_376();
  v5 = type metadata accessor for Proto_MILSpec_Value(v4);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_290();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF0, &qword_257744818);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v67 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_19:
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v65 = v3;
    v66 = &v63 - v18;
    v19 = 0;
    v64 = v0;
    v20 = *(v0 + 64);
    v63 = v0 + 64;
    v21 = *(v0 + 32);
    OUTLINED_FUNCTION_27_0();
    v24 = v23 >> 6;
    while (v22)
    {
      OUTLINED_FUNCTION_77();
      v68 = v25;
      v27 = v26 | (v19 << 6);
      v28 = v67;
LABEL_11:
      v34 = (*(v64 + 48) + 16 * v27);
      v35 = *v34;
      v36 = v34[1];
      v37 = *(v64 + 56) + *(v8 + 72) * v27;
      OUTLINED_FUNCTION_107();
      sub_257483824();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
      v39 = *(v38 + 48);
      *v28 = v35;
      v28[1] = v36;
      OUTLINED_FUNCTION_21_0();
      sub_2574792EC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v38);

      v29 = v66;
LABEL_12:
      OUTLINED_FUNCTION_368();
      sub_257487240();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
      OUTLINED_FUNCTION_54(v29);
      if (v44)
      {
        goto LABEL_19;
      }

      v45 = v1;
      v46 = v8;
      v47 = *(v43 + 48);
      v49 = *v29;
      v48 = v29[1];
      OUTLINED_FUNCTION_21_0();
      sub_2574792EC();
      v50 = OUTLINED_FUNCTION_367();
      v51 = v65;
      sub_25765368C(v50, v52);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        sub_257479298();
        goto LABEL_19;
      }

      v55 = *(v51 + 56);
      v8 = v46;
      v56 = *(v46 + 72);
      OUTLINED_FUNCTION_107();
      v1 = v45;
      sub_257483824();
      OUTLINED_FUNCTION_369();
      _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
      v58 = v57;
      sub_257479298();
      OUTLINED_FUNCTION_201();
      sub_257479298();
      v22 = v68;
      if ((v58 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v29 = v66;
    v28 = v67;
    while (1)
    {
      v30 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v30 >= v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EF8, &qword_257744820);
        OUTLINED_FUNCTION_399();
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
        v68 = 0;
        goto LABEL_12;
      }

      ++v19;
      if (*(v63 + 8 * v30))
      {
        OUTLINED_FUNCTION_134();
        v68 = v31;
        v27 = v33 | (v32 << 6);
        v19 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_257477114()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v65 = type metadata accessor for Proto_MILSpec_Argument(0);
  v4 = OUTLINED_FUNCTION_63(v65);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_196();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E20, &qword_257744740);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  v67 = v0;
  if (v1 == v0 || *(v1 + 16) != *(v67 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v62[1] = v1;
    v63 = v62 - v17;
    v66 = v18;
    v19 = 0;
    v20 = *(v1 + 64);
    v62[0] = v1 + 64;
    v21 = *(v1 + 32);
    OUTLINED_FUNCTION_27_0();
    v24 = v23 >> 6;
    while (v22)
    {
      OUTLINED_FUNCTION_77();
      v68 = v25;
LABEL_10:
      OUTLINED_FUNCTION_331();
      v28 = *(v6 + 72);
      OUTLINED_FUNCTION_247();
      sub_257483824();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E28, &qword_257744748);
      OUTLINED_FUNCTION_407(v29);
      OUTLINED_FUNCTION_246();
      sub_2574792EC();
      OUTLINED_FUNCTION_159();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);

LABEL_11:
      v34 = v63;
      sub_257487240();
      v35 = OUTLINED_FUNCTION_252();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
      OUTLINED_FUNCTION_42_0(v34);
      if (v38)
      {
        goto LABEL_20;
      }

      v39 = v34;
      v40 = v3;
      v41 = *(v37 + 48);
      v42 = *v39;
      v43 = v39[1];
      OUTLINED_FUNCTION_246();
      sub_2574792EC();
      v44 = v42;
      v45 = v67;
      sub_25765368C(v44, v43);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_19;
      }

      v48 = *(v45 + 56);
      v49 = *(v6 + 72);
      OUTLINED_FUNCTION_247();
      v3 = v40;
      sub_257483824();
      v50 = *v40;
      v51 = *v2;
      sub_25747CD74();
      if ((v52 & 1) == 0)
      {
        OUTLINED_FUNCTION_308();
        sub_257479298();
LABEL_19:
        sub_257479298();
        goto LABEL_20;
      }

      v53 = *(v65 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v54);
      v55 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_294();
      sub_257479298();
      v22 = v68;
      if ((v55 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v56 = OUTLINED_FUNCTION_252();
        __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
        v68 = 0;
        goto LABEL_11;
      }

      ++v19;
      if (*(v62[0] + 8 * v26))
      {
        OUTLINED_FUNCTION_134();
        v68 = v27;
        OUTLINED_FUNCTION_400();
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_257477D24(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_370(a1, a2);
    if (v5)
    {
      v6 = v4;
      v7 = 0;
      v8 = *(v3 + 64);
      v9 = *(v3 + 32);
      OUTLINED_FUNCTION_41_0();
      v12 = v11 & v10;
      v14 = (v13 + 63) >> 6;
      while (v12)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v19 = v15 | (v7 << 6);
        v20 = *(*(v3 + 56) + 8 * v19);
        v21 = v6(*(*(v3 + 48) + 8 * v19));
        if ((v22 & 1) == 0 || *(*(v2 + 56) + 8 * v21) != v20)
        {
          return;
        }
      }

      v16 = v7;
      while (1)
      {
        v7 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v7 >= v14)
        {
          return;
        }

        ++v16;
        if (*(v3 + 64 + 8 * v7))
        {
          OUTLINED_FUNCTION_212();
          v12 = v18 & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_257477E10()
{
  OUTLINED_FUNCTION_426();
  v6 = v5;
  v8 = v7;
  v156 = *MEMORY[0x277D85DE8];
  v152 = type metadata accessor for Proto_CustomModel.CustomModelParamValue(0);
  v9 = OUTLINED_FUNCTION_63(v152);
  v155 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_281();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_363(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A038, &qword_257744970);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_290();
  if (v8 != v6 && *(v8 + 16) == *(v6 + 16))
  {
    v151 = v6;
    v21 = 0;
    v148 = v3;
    v150 = v0;
    v23 = *(v8 + 64);
    v22 = v8 + 64;
    v24 = 1 << *(v22 - 32);
    OUTLINED_FUNCTION_27_0();
    v26 = &qword_27F87A040;
    v149 = v27 >> 6;
    v153 = v2;
    while (2)
    {
      if (v25)
      {
        OUTLINED_FUNCTION_77();
        v154 = v28;
        goto LABEL_10;
      }

      do
      {
        v29 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_66:
          v112 = OUTLINED_FUNCTION_283();
          v114 = v113;
          sub_257487298(v112, v115, v116);
          v117 = OUTLINED_FUNCTION_366();
          sub_257487298(v117, v118, v26);
          v119 = OUTLINED_FUNCTION_366();
          sub_2574872D0(v119, v120, v26);
          v109 = v0;
          v110 = v114;
          goto LABEL_80;
        }

        if (v29 >= v149)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A040, &qword_257744978);
          OUTLINED_FUNCTION_44();
          __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
          v154 = 0;
          goto LABEL_11;
        }

        ++v21;
      }

      while (!*(v22 + 8 * v29));
      OUTLINED_FUNCTION_134();
      v154 = v30;
      v21 = v31;
LABEL_10:
      OUTLINED_FUNCTION_331();
      v32 = *(v155 + 72);
      OUTLINED_FUNCTION_259();
      sub_257483824();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A040, &qword_257744978);
      v34 = *(v33 + 48);
      *v153 = v2;
      v153[1] = v6;
      OUTLINED_FUNCTION_258();
      sub_2574792EC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);

LABEL_11:
      OUTLINED_FUNCTION_211();
      sub_257487240();
      v38 = OUTLINED_FUNCTION_263();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_42_0(v3);
      if (v77)
      {
        goto LABEL_77;
      }

      v41 = *(v40 + 48);
      v42 = *v3;
      v43 = v3[1];
      OUTLINED_FUNCTION_258();
      sub_2574792EC();
      v44 = OUTLINED_FUNCTION_288();
      sub_25765368C(v44, v45);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_76;
      }

      v48 = *(v151 + 56);
      v49 = *(v155 + 72);
      OUTLINED_FUNCTION_259();
      sub_257483824();
      v50 = v0;
      v0 = *v1;
      v51 = *(v1 + 8);
      v52 = *(v1 + 16);
      v54 = *v50;
      v53 = *(v50 + 8);
      LODWORD(v26) = *(v50 + 16);
      if (v52 != 255)
      {
        if (v26 == 255)
        {
          v105 = *(v50 + 8);
          goto LABEL_64;
        }

        switch(*(v1 + 16))
        {
          case 1:
            if (v26 != 1)
            {
              v125 = *v50;
              v126 = OUTLINED_FUNCTION_79();
              sub_257487298(v126, v127, 1);
              v128 = OUTLINED_FUNCTION_367();
              sub_257487298(v128, v129, v26);
              v130 = OUTLINED_FUNCTION_367();
LABEL_73:
              sub_2574872D0(v130, v131, v26);
LABEL_74:
              v109 = v54;
              v110 = v4;
              v111 = v52;
              goto LABEL_75;
            }

            v77 = v0 == v54 && v51 == v53;
            if (v77)
            {
              v4 = *(v1 + 8);
              sub_257487298(*v1, v4, 1);
              v88 = OUTLINED_FUNCTION_369();
              sub_257487298(v88, v89, 1);
              v86 = OUTLINED_FUNCTION_369();
              v90 = 1;
LABEL_59:
              sub_2574872D0(v86, v87, v90);
              goto LABEL_60;
            }

            v78 = *v50;
            v79 = *(v50 + 8);
            v80 = *(v1 + 8);
            v147 = sub_257743994();
            v81 = v54;
            v54 = v0;
            v4 = v80;
            sub_257487298(v0, v80, 1);
            v82 = OUTLINED_FUNCTION_309();
            sub_257487298(v82, v83, 1);
            v84 = v81;
            v3 = v148;
            sub_2574872D0(v84, v79, 1);
            if ((v147 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_60:
            v101 = OUTLINED_FUNCTION_369();
            sub_2574872D0(v101, v102, v52);
            v103 = *(v152 + 20);
            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v104);
            v0 = v150;
            v6 = sub_257743644();
            sub_257479298();
            OUTLINED_FUNCTION_368();
            sub_257479298();
            v2 = v153;
            v25 = v154;
            v26 = &qword_27F87A040;
            if ((v6 & 1) == 0)
            {
              goto LABEL_77;
            }

            continue;
          case 2:
            v71 = *(v50 + 8);
            if (v26 != 2)
            {
              v132 = *v50;
              v122 = OUTLINED_FUNCTION_79();
              v124 = 2;
LABEL_72:
              sub_257487298(v122, v123, v124);
              v134 = OUTLINED_FUNCTION_309();
              sub_257487298(v134, v135, v26);
              v130 = OUTLINED_FUNCTION_309();
              goto LABEL_73;
            }

            v4 = *(v1 + 8);
            sub_257487298(*v1, v4, 2);
            v72 = OUTLINED_FUNCTION_226();
            sub_257487298(v72, v73, 2);
            v74 = v54;
            v54 = v0;
            if (v0 == v74)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          case 3:
            v75 = *v50;
            v76 = *(v50 + 8);
            if (v26 != 3)
            {
              v122 = OUTLINED_FUNCTION_79();
              v124 = 3;
              goto LABEL_72;
            }

            v4 = *(v1 + 8);
            sub_257487298(*v1, v4, 3);
            if (v0 == v54)
            {
              sub_257487298(v0, v76, 3);
              v3 = v148;
              goto LABEL_60;
            }

            v137 = v54;
            v54 = v0;
            sub_257487298(v137, v76, 3);
            goto LABEL_74;
          case 4:
            v67 = *(v50 + 8);
            if (v26 != 4)
            {
              v133 = *v50;
              v122 = OUTLINED_FUNCTION_79();
              v124 = 4;
              goto LABEL_72;
            }

            v68 = *v50;
            v69 = OUTLINED_FUNCTION_79();
            sub_257487298(v69, v70, 4);
            v3 = v148;
            sub_257487298(v54, v67, 4);
            if (((v54 ^ v0) & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          case 5:
            if (v26 != 5)
            {
              goto LABEL_66;
            }

            if (*&v0 == 0.0)
            {
              v85 = v51 == 0xC000000000000000 && v53 >> 62 == 3;
              if (v85 && *&v54 == 0.0 && v53 == 0xC000000000000000)
              {
                LOBYTE(v52) = 5;
                v4 = *(v1 + 8);
                sub_257487298(0, 0xC000000000000000, 5);
                sub_257487298(0, 0xC000000000000000, 5);
                v86 = 0;
                v87 = 0xC000000000000000;
LABEL_58:
                v90 = 5;
                goto LABEL_59;
              }
            }

            switch(v53 >> 62)
            {
              case 1uLL:
                LODWORD(v91) = HIDWORD(v54) - v54;
                if (__OFSUB__(HIDWORD(v54), v54))
                {
                  goto LABEL_81;
                }

                v91 = v91;
LABEL_56:
                if (!v91)
                {
LABEL_57:
                  LOBYTE(v52) = 5;
                  v95 = OUTLINED_FUNCTION_283();
                  v4 = v96;
                  sub_257487298(v95, v97, v98);
                  v99 = OUTLINED_FUNCTION_360();
                  sub_257487298(v99, v100, 5);
                  v86 = OUTLINED_FUNCTION_360();
                  goto LABEL_58;
                }

                v138 = OUTLINED_FUNCTION_283();
                sub_257487298(v138, v139, v140);
                OUTLINED_FUNCTION_217();
                sub_257487298(v141, v142, v143);
                OUTLINED_FUNCTION_217();
                sub_2574872D0(v144, v145, v146);
                v109 = OUTLINED_FUNCTION_369();
                break;
              case 2uLL:
                v93 = *(v54 + 16);
                v92 = *(v54 + 24);
                v94 = __OFSUB__(v92, v93);
                v91 = v92 - v93;
                if (!v94)
                {
                  goto LABEL_56;
                }

                __break(1u);
LABEL_81:
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                return;
              case 3uLL:
                goto LABEL_57;
              default:
                v91 = BYTE6(v53);
                goto LABEL_56;
            }

            break;
          default:
            v55 = *(v50 + 8);
            if (*(v50 + 16))
            {
              v121 = *v50;
              v122 = OUTLINED_FUNCTION_79();
              v124 = 0;
              goto LABEL_72;
            }

            v56 = *v1;
            v57 = *v50;
            v58 = OUTLINED_FUNCTION_79();
            sub_257487298(v58, v59, 0);
            sub_257487298(v54, v55, 0);
            if (*&v0 == *&v54)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
        }

LABEL_80:
        v111 = 5;
        goto LABEL_75;
      }

      break;
    }

    v60 = *(v50 + 8);
    if (v26 == 255)
    {
      LOBYTE(v52) = -1;
      v4 = *(v1 + 8);
      sub_257487298(*v1, v4, 255);
      v61 = OUTLINED_FUNCTION_226();
      sub_257487298(v61, v62, 255);
      goto LABEL_60;
    }

LABEL_64:
    v106 = *(v1 + 8);
    sub_257487298(*v1, v106, *(v1 + 16));
    v107 = OUTLINED_FUNCTION_226();
    sub_257487298(v107, v108, v26);
    sub_2574872D0(v0, v106, v52);
    v109 = OUTLINED_FUNCTION_226();
    v111 = v26;
LABEL_75:
    sub_2574872D0(v109, v110, v111);
    OUTLINED_FUNCTION_195();
    sub_257479298();
LABEL_76:
    sub_257479298();
  }

LABEL_77:
  v136 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_427();
}

void sub_257478DB4()
{
  OUTLINED_FUNCTION_426();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_257();
  v76 = type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(v5);
  v6 = OUTLINED_FUNCTION_63(v76);
  v81 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_196();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C70, &qword_257744588);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_183();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_196();
  v77 = v20;
  v78 = v4;
  if (v0 != v4 && *(v0 + 16) == *(v4 + 16))
  {
    v21 = 0;
    v75 = v0;
    v23 = *(v0 + 64);
    v22 = v0 + 64;
    v24 = *(v22 - 32);
    OUTLINED_FUNCTION_27_0();
    v27 = v26 >> 6;
    v79 = v2;
    while (v25)
    {
      OUTLINED_FUNCTION_77();
      v80 = v28;
      v30 = v29 | (v21 << 6);
LABEL_10:
      v33 = *(v75 + 56);
      v34 = (*(v75 + 48) + 16 * v30);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v81 + 72);
      OUTLINED_FUNCTION_251();
      sub_257483824();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
      v39 = *(v38 + 48);
      *v79 = v36;
      v79[1] = v35;
      OUTLINED_FUNCTION_250();
      sub_2574792EC();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v38);

LABEL_11:
      sub_257487240();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
      OUTLINED_FUNCTION_42_0(v77);
      if (v70)
      {
        goto LABEL_44;
      }

      v44 = v12;
      v45 = *(v43 + 48);
      v46 = *v77;
      v47 = v77[1];
      OUTLINED_FUNCTION_250();
      sub_2574792EC();
      sub_25765368C(v46, v47);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        goto LABEL_43;
      }

      v50 = *(v78 + 56);
      v51 = *(v81 + 72);
      OUTLINED_FUNCTION_251();
      v12 = v44;
      sub_257483824();
      v52 = *(v1 + 16);
      if (*(v44 + 16) == 255)
      {
        if (v52 != 255)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v52 == 255)
        {
          goto LABEL_42;
        }

        v56 = *v44;
        v57 = *v1;
        switch(*(v44 + 16))
        {
          case 1:
            if (v52 != 1)
            {
              goto LABEL_42;
            }

            v70 = *&v56 == *&v57 && *(v44 + 8) == *(v1 + 8);
            if (!v70)
            {
              v71 = *v44;
              v72 = *v1;
              if ((sub_257743994() & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            break;
          case 2:
            if (v52 != 2)
            {
              goto LABEL_42;
            }

            v68 = OUTLINED_FUNCTION_422();
            sub_257486714(v68, v69, 2);
            if (LODWORD(v56) != LODWORD(v57))
            {
              goto LABEL_42;
            }

            break;
          case 3:
            if (v52 != 3)
            {
              goto LABEL_42;
            }

            if (*&v56 != *&v57)
            {
              goto LABEL_41;
            }

            sub_257486714(*v44, *(v1 + 8), 3);
            break;
          case 4:
            if (v52 != 4)
            {
              goto LABEL_42;
            }

            v66 = OUTLINED_FUNCTION_422();
            sub_257486714(v66, v67, 4);
            if ((LODWORD(v57) ^ LODWORD(v56)))
            {
              goto LABEL_42;
            }

            break;
          default:
            if (*(v1 + 16))
            {
              goto LABEL_42;
            }

            v58 = *v44;
            v59 = *v1;
            v60 = OUTLINED_FUNCTION_422();
            sub_257486714(v60, v61, 0);
            if (v56 != v57)
            {
              goto LABEL_42;
            }

            break;
        }
      }

      v53 = *(v76 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v54);
      v55 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_412();
      sub_257479298();
      v25 = v80;
      if ((v55 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    while (1)
    {
      v31 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C78, &unk_257744590);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
        v80 = 0;
        goto LABEL_11;
      }

      ++v21;
      if (*(v22 + 8 * v31))
      {
        OUTLINED_FUNCTION_134();
        v80 = v32;
        OUTLINED_FUNCTION_400();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_41:
    v73 = OUTLINED_FUNCTION_422();
    sub_257486714(v73, v74, 3);
LABEL_42:
    sub_257479298();
LABEL_43:
    sub_257479298();
  }

LABEL_44:
  OUTLINED_FUNCTION_427();
}

uint64_t sub_257479298()
{
  v1 = OUTLINED_FUNCTION_376();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2574792EC()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

void sub_257479344()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_FeatureVectorizer.InputColumn(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      v12 = *v2 == *v1 && v2[1] == v1[1];
      if (!v12 && (sub_257743994() & 1) == 0 || v2[2] != v1[2])
      {
        break;
      }

      v13 = *(v6 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v14);
      v15 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v15)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_18:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_257479510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_433();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = OUTLINED_FUNCTION_257();
  v24 = type metadata accessor for Proto_PrecisionRecallCurve(v23);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_62();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  v33 = *(v18 + 16);
  if (v33 == *(v22 + 16) && v33 && v18 != v22)
  {
    OUTLINED_FUNCTION_61(v30);
    v35 = v18 + v34;
    v36 = v22 + v34;
    v38 = *(v37 + 72);
    do
    {
      OUTLINED_FUNCTION_173();
      sub_257483824();
      OUTLINED_FUNCTION_204();
      sub_257483824();
      v39 = _s20MLModelSpecification20PrecisionRecallCurveV2eeoiySbAC_ACtFZ_0(v32, v28);
      sub_257479298();
      OUTLINED_FUNCTION_373();
      sub_257479298();
      if ((v39 & 1) == 0)
      {
        break;
      }

      v36 += v38;
      v35 += v38;
      --v33;
    }

    while (v33);
  }

  OUTLINED_FUNCTION_434();
}

void sub_2574796A0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v5 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4(v51);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v17);
  v19 = v44 - v18;
  v54 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v20 = OUTLINED_FUNCTION_18_0(v54);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_62();
  v55 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_282();
  v27 = *(v1 + 16);
  if (v27 != *(v0 + 16) || !v27 || v1 == v0)
  {
    goto LABEL_21;
  }

  v44[0] = v2;
  v44[1] = v3;
  v46 = v4;
  v47 = v5;
  OUTLINED_FUNCTION_61(v26);
  v29 = v1 + v28;
  v30 = v0 + v28;
  v32 = *(v31 + 72);
  v49 = v19;
  v50 = v32;
  v33 = v48;
  while (1)
  {
    sub_257483824();
    v34 = v55;
    sub_257483824();
    v35 = *(v54 + 20);
    v36 = *(v4 + v35);
    if (v36 == *(v34 + v35))
    {
      goto LABEL_14;
    }

    v52 = v29;
    v34 = v33;
    OUTLINED_FUNCTION_296();
    sub_257487308();
    OUTLINED_FUNCTION_296();
    v37 = *(v51 + 48);
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_142(v34, 1);
    v53 = v36;
    if (v41)
    {

      sub_2574695E4(v19, &qword_27F879D40, &qword_257744660);
      OUTLINED_FUNCTION_65(v34 + v37);
      v4 = v46;
      v38 = v34;
      if (!v41)
      {
        goto LABEL_18;
      }

      v39 = OUTLINED_FUNCTION_368();
      sub_2574695E4(v39, v40, &qword_257744660);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_65(v34 + v37);
    if (v41)
    {
      break;
    }

    OUTLINED_FUNCTION_49();
    sub_2574792EC();

    v42 = OUTLINED_FUNCTION_365();
    v45 = sub_2574DDF3C(v42);
    OUTLINED_FUNCTION_245();
    v34 = v48;
    sub_257479298();
    sub_2574695E4(v49, &qword_27F879D40, &qword_257744660);
    OUTLINED_FUNCTION_228();
    sub_257479298();
    sub_2574695E4(v34, &qword_27F879D40, &qword_257744660);
    v4 = v46;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:

    v19 = v49;
    v29 = v52;
LABEL_14:
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v43);
    if ((sub_257743644() & 1) == 0)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_243();
    sub_257479298();
    OUTLINED_FUNCTION_165();
    v33 = v34;
    sub_257479298();
    v30 += v50;
    v29 += v50;
    if (!--v27)
    {
      goto LABEL_21;
    }
  }

  sub_2574695E4(v49, &qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_48();
  sub_257479298();
  v38 = v34;
LABEL_18:
  sub_2574695E4(v38, &qword_27F879D38, &qword_25774F300);
LABEL_19:

LABEL_20:
  OUTLINED_FUNCTION_244();
  sub_257479298();
  OUTLINED_FUNCTION_165();
  sub_257479298();
LABEL_21:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257479B60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257479BB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
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

uint64_t sub_257479C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_257479C78(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_257743994() & 1) == 0)
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

uint64_t sub_257479D04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_257479D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = OUTLINED_FUNCTION_376();
  v141 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(v27);
  v28 = OUTLINED_FUNCTION_4(v141);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  OUTLINED_FUNCTION_13(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = v125 - v35;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB0, &unk_25774F360);
  OUTLINED_FUNCTION_4(v140);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v40 = OUTLINED_FUNCTION_31_0();
  v135 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v40);
  v41 = OUTLINED_FUNCTION_4(v135);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  v46 = v45 - v44;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4(v133);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_198();
  v134 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v52 = OUTLINED_FUNCTION_13(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_196();
  v138 = v56;
  v57 = OUTLINED_FUNCTION_153();
  v144 = type metadata accessor for Proto_MILSpec_ValueType(v57);
  v58 = OUTLINED_FUNCTION_4(v144);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_1();
  v142 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_198();
  v139 = v66;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4(v143);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_198();
  v146 = v70;
  v71 = OUTLINED_FUNCTION_153();
  v147 = type metadata accessor for Proto_MILSpec_Value(v71);
  v72 = OUTLINED_FUNCTION_18_0(v147);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_62();
  v77 = (v75 - v76);
  MEMORY[0x28223BE20](v78);
  v81 = (v125 - v80);
  v82 = *(v20 + 16);
  if (v82 == *(v26 + 16) && v82 && v20 != v26)
  {
    v125[1] = v46;
    v131 = v36;
    v127 = v21;
    OUTLINED_FUNCTION_61(v79);
    v84 = v20 + v83;
    v85 = v26 + v83;
    v132 = *(v86 + 72);
    v136 = v22;
    v137 = v81;
    while (1)
    {
      OUTLINED_FUNCTION_176();
      sub_257483824();
      if (!v82)
      {
        break;
      }

      v145 = v84;
      OUTLINED_FUNCTION_107();
      sub_257483824();
      v87 = *v81 == *v77 && v81[1] == v77[1];
      if (!v87 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_46;
      }

      v88 = v22;
      v89 = v82;
      v90 = v146;
      v91 = v147[7];
      v92 = *(v143 + 48);
      sub_257487308();
      OUTLINED_FUNCTION_388();
      v93 = OUTLINED_FUNCTION_177();
      v94 = v144;
      OUTLINED_FUNCTION_72(v93, v95);
      if (v87)
      {
        OUTLINED_FUNCTION_28_0(v90 + v92);
        if (!v87)
        {
          goto LABEL_39;
        }

        sub_2574695E4(v146, &qword_27F879E10, &qword_257744730);
        v81 = v137;
        v22 = v88;
      }

      else
      {
        v96 = v139;
        OUTLINED_FUNCTION_388();
        OUTLINED_FUNCTION_28_0(v90 + v92);
        if (v97)
        {
          OUTLINED_FUNCTION_94();
          sub_257479298();
LABEL_39:
          sub_2574695E4(v146, &qword_27F879E18, &qword_257744738);
LABEL_46:
          sub_257479298();
          OUTLINED_FUNCTION_292();
          sub_257479298();
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_89();
        v98 = v142;
        sub_2574792EC();
        v99 = *(v94 + 20);
        v100 = *(v96 + v99);
        v101 = *(v98 + v99);
        v81 = v137;
        if (v100 != v101)
        {
          v126 = v89;
          OUTLINED_FUNCTION_296();
          sub_257487308();
          OUTLINED_FUNCTION_296();
          v102 = *(v133 + 48);
          v103 = v101;
          v104 = v134;
          sub_257487308();
          v128 = v102;
          sub_257487308();
          LOBYTE(v98) = v135;
          OUTLINED_FUNCTION_80(v104, 1);
          v130 = v103;
          v129 = v100;
          if (v87)
          {

            sub_2574695E4(v138, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_42_0(v104 + v128);
            if (!v87)
            {
              goto LABEL_43;
            }

            v105 = OUTLINED_FUNCTION_228();
            sub_2574695E4(v105, v106, &qword_257744660);
            OUTLINED_FUNCTION_318();
          }

          else
          {
            OUTLINED_FUNCTION_261(&a17);
            sub_257487308();
            OUTLINED_FUNCTION_42_0(v104 + v128);
            if (v107)
            {

              sub_2574695E4(v138, &qword_27F879D40, &qword_257744660);
              OUTLINED_FUNCTION_48();
              sub_257479298();
LABEL_43:
              sub_2574695E4(v104, &qword_27F879D38, &qword_25774F300);
              OUTLINED_FUNCTION_318();
LABEL_44:

              OUTLINED_FUNCTION_244();
              sub_257479298();
              OUTLINED_FUNCTION_262();
              sub_257479298();
              v122 = &qword_27F879E10;
              v123 = &qword_257744730;
              v124 = v146;
LABEL_45:
              sub_2574695E4(v124, v122, v123);
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_49();
            OUTLINED_FUNCTION_301(&a10);

            OUTLINED_FUNCTION_318();

            sub_2574DDF3C();
            OUTLINED_FUNCTION_256(v108, &a13);
            sub_257479298();
            v98 = &qword_257744660;
            sub_2574695E4(v138, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_222();
            sub_257479298();
            sub_2574695E4(v104, &qword_27F879D40, &qword_257744660);
            if ((v128 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v89 = v126;
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v109);
        sub_257743644();
        OUTLINED_FUNCTION_239();
        sub_257479298();
        OUTLINED_FUNCTION_211();
        sub_257479298();
        sub_2574695E4(v146, &qword_27F879E10, &qword_257744730);
        v22 = v136;
        if ((v98 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v110 = v147[5];
      v111 = *(v140 + 48);
      sub_257487308();
      sub_257487308();
      v112 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_155(v112, v113, v141);
      if (v87)
      {
        OUTLINED_FUNCTION_35_0(v22 + v111);
        if (!v87)
        {
          goto LABEL_41;
        }

        v114 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v114, v115, &unk_2577447D0);
      }

      else
      {
        OUTLINED_FUNCTION_261(&a16);
        sub_257487308();
        OUTLINED_FUNCTION_35_0(v22 + v111);
        if (v116)
        {
          sub_257479298();
LABEL_41:
          v122 = &qword_27F879EB0;
          v123 = &unk_25774F360;
          v124 = v22;
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_392(&a12);
        sub_2574792EC();
        v117 = OUTLINED_FUNCTION_211();
        LOBYTE(v111) = sub_2574DEF88(v117);
        v22 = v136;
        sub_257479298();
        OUTLINED_FUNCTION_222();
        sub_257479298();
        v118 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v118, v119, &unk_2577447D0);
        if ((v111 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v120 = v147[6];
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v121);
      sub_257743644();
      OUTLINED_FUNCTION_92();
      sub_257479298();
      OUTLINED_FUNCTION_263();
      sub_257479298();
      if (v111)
      {
        v82 = v89 - 1;
        v85 += v132;
        v84 = v145 + v132;
        if (v89 != 1)
        {
          continue;
        }
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  else
  {
LABEL_47:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747A74C()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_287();
  v4 = type metadata accessor for Proto_MILSpec_Value(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v59 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  v61 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EC0, &qword_25774F340);
  v17 = OUTLINED_FUNCTION_4(v65);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v60 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_290();
  v64 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  v22 = OUTLINED_FUNCTION_18_0(v64);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v25);
  v58 = &v54 - v27;
  v28 = *(v1 + 16);
  if (v28 == *(v0 + 16) && v28 && v1 != v0)
  {
    v54 = v16;
    OUTLINED_FUNCTION_61(v26);
    v30 = v1 + v29;
    v31 = v0 + v29;
    v56 = *(v32 + 72);
    v57 = v4;
    while (1)
    {
      OUTLINED_FUNCTION_415();
      sub_257483824();
      if (!v28)
      {
        break;
      }

      v63 = v28;
      OUTLINED_FUNCTION_389();
      v33 = *(v64 + 20);
      v34 = *(v65 + 48);
      sub_257487308();
      sub_257487308();
      v35 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_155(v35, v36, v4);
      v62 = v31;
      if (v37)
      {
        OUTLINED_FUNCTION_155(v2 + v34, 1, v4);
        if (!v37)
        {
          goto LABEL_28;
        }

        sub_2574695E4(v2, &qword_27F879EB8, &unk_2577447E0);
        v28 = v63;
      }

      else
      {
        sub_257487308();
        OUTLINED_FUNCTION_155(v2 + v34, 1, v4);
        if (v37)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_21_0();
        sub_2574792EC();
        v38 = OUTLINED_FUNCTION_228();
        _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0(v38);
        OUTLINED_FUNCTION_92();
        v4 = v57;
        sub_257479298();
        sub_257479298();
        v39 = OUTLINED_FUNCTION_309();
        sub_2574695E4(v39, v40, &unk_2577447E0);
        v28 = v63;
        if ((v34 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v41 = *(v64 + 24);
      v42 = *(v65 + 48);
      v43 = v60;
      sub_257487308();
      sub_257487308();
      v44 = OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_155(v44, v45, v4);
      if (v37)
      {
        v46 = OUTLINED_FUNCTION_304();
        OUTLINED_FUNCTION_155(v46, v47, v4);
        if (!v37)
        {
          v2 = v43;
          goto LABEL_28;
        }

        sub_2574695E4(v43, &qword_27F879EB8, &unk_2577447E0);
      }

      else
      {
        sub_257487308();
        v48 = OUTLINED_FUNCTION_304();
        OUTLINED_FUNCTION_155(v48, v49, v4);
        if (v50)
        {
          v2 = v43;
LABEL_27:
          OUTLINED_FUNCTION_248();
          sub_257479298();
LABEL_28:
          sub_2574695E4(v2, &qword_27F879EC0, &qword_25774F340);
LABEL_29:
          sub_257479298();
          OUTLINED_FUNCTION_204();
          sub_257479298();
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_21_0();
        sub_2574792EC();
        v51 = OUTLINED_FUNCTION_361();
        v55 = _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0(v51);
        v4 = v57;
        sub_257479298();
        v28 = v63;
        sub_257479298();
        sub_2574695E4(v43, &qword_27F879EB8, &unk_2577447E0);
        if ((v55 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v52);
      OUTLINED_FUNCTION_362();
      v53 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_277();
      sub_257479298();
      if (v53)
      {
        v31 = v62 + v56;
        v30 += v56;
        OUTLINED_FUNCTION_377();
        if (!v37)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25747ACA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v129 = a1;
  v130 = a2;
  while (2)
  {
    v4 = a1 + v3;
    v5 = a2 + v3;
    if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
    {
      return 0;
    }

    v7 = *(v4 + 40);
    v6 = *(v4 + 48);
    v8 = *(v4 + 56);
    v10 = *(v4 + 64);
    v9 = *(v4 + 72);
    v12 = *(v5 + 40);
    v11 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(v5 + 64);
    v133 = *(v5 + 72);
    v132 = *(v5 + 56);
    v131 = v8;
    switch(v8)
    {
      case 1:
        if (v13 != 1)
        {
          goto LABEL_64;
        }

        v47 = OUTLINED_FUNCTION_173();
        sub_257466F40(v47, v48, 1);

        v49 = OUTLINED_FUNCTION_194();
        sub_257466F40(v49, v50, 1);

        v51 = OUTLINED_FUNCTION_173();
        sub_257467018(v51, v52, 1);
        v53 = OUTLINED_FUNCTION_194();
        sub_257467018(v53, v54, 1);
        if (v7 != v12)
        {
          v106 = 1;
          v107 = OUTLINED_FUNCTION_194();
          sub_257467018(v107, v108, 1);
          goto LABEL_66;
        }

        v8 = v9;
        v9 = v133;
        if (v6 == v11)
        {
          goto LABEL_52;
        }

        v106 = 1;
        OUTLINED_FUNCTION_310();
        goto LABEL_65;
      case 2:
        if (v13 != 2)
        {
          v101 = OUTLINED_FUNCTION_137();
          sub_257466F40(v101, v102, v103);

          goto LABEL_64;
        }

        if (v7 == v12 && v6 == v11)
        {
          OUTLINED_FUNCTION_312(v7, v6, 2);
          v55 = OUTLINED_FUNCTION_137();
          sub_257466F40(v55, v56, v57);
          v9 = v133;

          v58 = OUTLINED_FUNCTION_137();
          sub_257466F40(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_137();
          sub_257466F40(v61, v62, v63);
          v64 = OUTLINED_FUNCTION_137();
          sub_257467018(v64, v65, v66);
          v46 = OUTLINED_FUNCTION_137();
          goto LABEL_51;
        }

        v128 = sub_257743994();
        v24 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_312(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_194();
        sub_257466F40(v27, v28, 2);
        v9 = v133;

        v29 = OUTLINED_FUNCTION_194();
        sub_257466F40(v29, v30, 2);
        v31 = OUTLINED_FUNCTION_137();
        sub_257466F40(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_137();
        sub_257467018(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_194();
        sub_257467018(v37, v38, 2);
        if ((v128 & 1) == 0)
        {
          v106 = 2;
          v123 = OUTLINED_FUNCTION_194();
          v125 = 2;
LABEL_65:
          sub_257467018(v123, v124, v125);
          goto LABEL_66;
        }

        goto LABEL_52;
      case 3:
        switch(v7)
        {
          case 1:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 != 1 || v11 != 0)
            {
              goto LABEL_63;
            }

            v84 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v84, v85, v86);
            OUTLINED_FUNCTION_286(1);
            v87 = OUTLINED_FUNCTION_148();
            sub_257467018(v87, v88, v89);
            v46 = 1;
            goto LABEL_50;
          case 2:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 != 2 || v11 != 0)
            {
              goto LABEL_63;
            }

            v70 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v70, v71, v72);
            OUTLINED_FUNCTION_286(2);
            v73 = OUTLINED_FUNCTION_148();
            sub_257467018(v73, v74, v75);
            v46 = 2;
            goto LABEL_50;
          case 3:
            if (v13 != 3)
            {
              goto LABEL_64;
            }

            if (v12 == 3 && v11 == 0)
            {
              v77 = OUTLINED_FUNCTION_148();
              OUTLINED_FUNCTION_312(v77, v78, v79);
              OUTLINED_FUNCTION_286(3);
              v80 = OUTLINED_FUNCTION_148();
              sub_257467018(v80, v81, v82);
              v46 = 3;
LABEL_50:
              v67 = 0;
              v68 = 3;
LABEL_51:
              sub_257467018(v46, v67, v68);
LABEL_52:
              if (v10 == v14 && v8 == v9)
              {
                v96 = OUTLINED_FUNCTION_194();
                sub_257467018(v96, v97, v132);

                v98 = OUTLINED_FUNCTION_173();
                sub_257467018(v98, v99, v131);
              }

              else
              {
                v91 = sub_257743994();
                v92 = OUTLINED_FUNCTION_194();
                sub_257467018(v92, v93, v132);

                v94 = OUTLINED_FUNCTION_173();
                sub_257467018(v94, v95, v131);

                if ((v91 & 1) == 0)
                {
                  return 0;
                }
              }

              v3 += 48;
              --v2;
              a1 = v129;
              a2 = v130;
              if (!v2)
              {
                return 1;
              }

              continue;
            }

LABEL_63:
            v132 = 3;
LABEL_64:
            v109 = OUTLINED_FUNCTION_173();
            v106 = v8;
            sub_257466F40(v109, v110, v8);

            v111 = OUTLINED_FUNCTION_194();
            sub_257466F40(v111, v112, v132);

            v113 = OUTLINED_FUNCTION_194();
            sub_257466F40(v113, v114, v132);
            v115 = OUTLINED_FUNCTION_173();
            sub_257467018(v115, v116, v8);
            v117 = OUTLINED_FUNCTION_194();
            sub_257467018(v117, v118, v132);
            v119 = OUTLINED_FUNCTION_173();
            sub_257467018(v119, v120, v8);
            v121 = OUTLINED_FUNCTION_194();
            sub_257467018(v121, v122, v132);
LABEL_66:

            v126 = OUTLINED_FUNCTION_173();
            sub_257467018(v126, v127, v106);

            return 0;
          default:
            if (v13 != 3 || (v11 | v12) != 0)
            {
              goto LABEL_64;
            }

            v40 = OUTLINED_FUNCTION_148();
            OUTLINED_FUNCTION_312(v40, v41, v42);
            OUTLINED_FUNCTION_286(0);
            v43 = OUTLINED_FUNCTION_148();
            sub_257467018(v43, v44, v45);
            v46 = 0;
            goto LABEL_50;
        }

      default:
        if (*(v5 + 56))
        {
          goto LABEL_64;
        }

        v15 = OUTLINED_FUNCTION_173();
        OUTLINED_FUNCTION_312(v15, v16, 0);
        v17 = OUTLINED_FUNCTION_194();
        sub_257466F40(v17, v18, 0);
        v9 = v133;

        v19 = OUTLINED_FUNCTION_173();
        sub_257467018(v19, v20, 0);
        v21 = OUTLINED_FUNCTION_194();
        sub_257467018(v21, v22, 0);
        if (v7 == v12)
        {
          goto LABEL_52;
        }

        v104 = OUTLINED_FUNCTION_194();
        sub_257467018(v104, v105, 0);
        v106 = 0;
        goto LABEL_66;
    }
  }
}

uint64_t sub_25747B178(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_289();
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

void sub_25747B1CC()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_SparseVector(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      v13 = *v2;
      v14 = *v1;
      sub_25747B3B8();
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(v6 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v17);
      v18 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v18)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_13:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B3B8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_SparseNode(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      OUTLINED_FUNCTION_346();
      if (!v12 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      v13 = *(v6 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v14);
      v15 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v15)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B56C()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Proto_BayesianProbitRegressor.Gaussian(0);
  v9 = OUTLINED_FUNCTION_32_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v44 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D98, &unk_257746440);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_198();
  v47 = v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DA0, &qword_2577446C0);
  OUTLINED_FUNCTION_4(v45);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_64();
  v46 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureValueWeight(v21);
  v22 = OUTLINED_FUNCTION_18_0(v46);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_345();
  v27 = *(v7 + 16);
  if (v27 == *(v5 + 16) && v27 && v7 != v5)
  {
    OUTLINED_FUNCTION_61(v26);
    v29 = v7 + v28;
    v30 = v5 + v28;
    v42 = *(v31 + 72);
    v43 = v0;
    v41 = v2;
    while (1)
    {
      OUTLINED_FUNCTION_405();
      sub_257483824();
      OUTLINED_FUNCTION_367();
      sub_257483824();
      if (*v3 != *v2)
      {
        break;
      }

      v32 = *(v46 + 24);
      v33 = *(v45 + 48);
      sub_257487308();
      sub_257487308();
      OUTLINED_FUNCTION_26_0(v1);
      if (v34)
      {
        OUTLINED_FUNCTION_26_0(v1 + v33);
        if (!v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_257487308();
        OUTLINED_FUNCTION_26_0(v1 + v33);
        if (v34)
        {
          OUTLINED_FUNCTION_22_0();
          sub_257479298();
LABEL_22:
          sub_2574695E4(v1, &qword_27F879DA0, &qword_2577446C0);
          break;
        }

        sub_2574792EC();
        if (*v47 != *v44 || v47[1] != v44[1])
        {
          OUTLINED_FUNCTION_22_0();
          sub_257479298();
LABEL_20:
          OUTLINED_FUNCTION_22_0();
          sub_257479298();
          sub_2574695E4(v1, &qword_27F879D98, &unk_257746440);
          break;
        }

        v35 = *(v43 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v36);
        v37 = sub_257743644();
        OUTLINED_FUNCTION_22_0();
        sub_257479298();
        if ((v37 & 1) == 0)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_22_0();
        sub_257479298();
        v2 = v41;
      }

      sub_2574695E4(v1, &qword_27F879D98, &unk_257746440);
      v38 = *(v46 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v39);
      v40 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_365();
      sub_257479298();
      if (v40)
      {
        v30 += v42;
        v29 += v42;
        if (--v27)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_257479298();
    OUTLINED_FUNCTION_228();
    sub_257479298();
  }

LABEL_24:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747B9DC()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_ItemSimilarityRecommender.SimilarItems(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      if (*v2 != *v1)
      {
        break;
      }

      v13 = *(v2 + 8);
      v14 = *(v1 + 8);
      sub_257481FE8();
      if ((v15 & 1) == 0 || *(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      v16 = *(v6 + 28);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v17);
      v18 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v18)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747BC64()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_BayesianProbitRegressor.FeatureWeight(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      OUTLINED_FUNCTION_346();
      if (!v12)
      {
        break;
      }

      v13 = *(v2 + 8);
      v14 = *(v1 + 8);
      sub_25747B56C();
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(v6 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v17);
      v18 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v18)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_15:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747BE18()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_FloatVector(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v18 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61(v11);
    OUTLINED_FUNCTION_340(v12);
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      v13 = *v2;
      v14 = *v1;
      OUTLINED_FUNCTION_213();
      if (!v18)
      {
LABEL_21:
        sub_257479298();
        OUTLINED_FUNCTION_204();
        sub_257479298();
        goto LABEL_22;
      }

      v18 = !v15 || v16 == v17;
      if (!v18)
      {
        break;
      }

LABEL_16:
      v22 = *(v6 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v23);
      v24 = OUTLINED_FUNCTION_260();
      sub_257479298();
      OUTLINED_FUNCTION_264();
      sub_257479298();
      if (v24)
      {
        OUTLINED_FUNCTION_411();
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_364();
    while (v19)
    {
      if (*v20 != *v21)
      {
        goto LABEL_21;
      }

      ++v20;
      ++v21;
      if (!--v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747C000()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_257();
  v47 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(v6);
  v7 = OUTLINED_FUNCTION_4(v47);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v43 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_190(v15, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D30, &unk_257744650);
  OUTLINED_FUNCTION_4(v46);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_64();
  v45 = type metadata accessor for Proto_MILSpec_Dimension(v19);
  v20 = OUTLINED_FUNCTION_18_0(v45);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_282();
  v25 = *(v0 + 16);
  if (v25 != *(v5 + 16) || !v25 || v0 == v5)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_61(v24);
  OUTLINED_FUNCTION_337(v26);
  v44 = v27;
  while (1)
  {
    sub_257483824();
    OUTLINED_FUNCTION_280();
    sub_257483824();
    v28 = *(v46 + 48);
    sub_257487308();
    sub_257487308();
    v29 = OUTLINED_FUNCTION_197();
    OUTLINED_FUNCTION_155(v29, v30, v47);
    if (!v37)
    {
      break;
    }

    v31 = OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_155(v31, v32, v47);
    if (!v37)
    {
      goto LABEL_17;
    }

    v33 = OUTLINED_FUNCTION_222();
    sub_2574695E4(v33, v34, &qword_257744648);
LABEL_12:
    v40 = *(v45 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v41);
    v42 = sub_257743644();
    sub_257479298();
    OUTLINED_FUNCTION_415();
    sub_257479298();
    if (v42)
    {
      v2 += v44;
      v3 += v44;
      if (--v25)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_262();
  sub_257487308();
  v35 = OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_155(v35, v36, v47);
  if (!v37)
  {
    sub_2574792EC();
    sub_2574DEBB4();
    v39 = v38;
    sub_257479298();
    sub_257479298();
    sub_2574695E4(v1, &qword_27F879D28, &qword_257744648);
    if ((v39 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  sub_257479298();
LABEL_17:
  sub_2574695E4(v1, &qword_27F879D30, &unk_257744650);
LABEL_18:
  sub_257479298();
  OUTLINED_FUNCTION_165();
  sub_257479298();
LABEL_19:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747C3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31();
  a20 = v25;
  a21 = v26;
  v28 = v27;
  v29 = OUTLINED_FUNCTION_376();
  v30 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v29);
  v31 = OUTLINED_FUNCTION_32_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_4(v87);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v39 = OUTLINED_FUNCTION_13(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_196();
  v91 = v43;
  v44 = OUTLINED_FUNCTION_153();
  v95 = type metadata accessor for Proto_MILSpec_ValueType(v44);
  v45 = OUTLINED_FUNCTION_4(v95);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v92 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_198();
  v93 = v53;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4(v94);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  v57 = OUTLINED_FUNCTION_135();
  v58 = type metadata accessor for Proto_MILSpec_NamedValueType(v57);
  v59 = OUTLINED_FUNCTION_18_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_82();
  v64 = *(v21 + 16);
  if (v64 == *(v28 + 16) && v64 && v21 != v28)
  {
    OUTLINED_FUNCTION_61(v63);
    v66 = v21 + v65;
    v67 = v28 + v65;
    v89 = *(v68 + 72);
    v90 = v58;
    v85 = v23;
    v86 = v24;
    v84 = v22;
    while (1)
    {
      sub_257483824();
      OUTLINED_FUNCTION_408();
      sub_257483824();
      v69 = *v22 == *v23 && v22[1] == v23[1];
      if (!v69 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v70 = *(v58 + 24);
      v71 = *(v94 + 48);
      sub_257487308();
      sub_257487308();
      OUTLINED_FUNCTION_72(v24, 1);
      if (v69)
      {
        OUTLINED_FUNCTION_28_0(v71 + v24);
        if (!v69)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_257487308();
        OUTLINED_FUNCTION_28_0(v71 + v24);
        if (v72)
        {
          OUTLINED_FUNCTION_94();
          sub_257479298();
LABEL_32:
          v80 = &qword_27F879E18;
          v81 = &qword_257744738;
          v82 = v24;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_89();
        sub_2574792EC();
        if (*(v93 + *(v95 + 20)) != *(v92 + *(v95 + 20)))
        {
          OUTLINED_FUNCTION_296();
          sub_257487308();
          OUTLINED_FUNCTION_296();
          v73 = *(v87 + 48);
          OUTLINED_FUNCTION_441();
          OUTLINED_FUNCTION_441();
          OUTLINED_FUNCTION_72(v88, 1);
          if (v69)
          {

            sub_2574695E4(v91, &qword_27F879D40, &qword_257744660);
            OUTLINED_FUNCTION_28_0(v88 + v73);
            v74 = v88;
            v22 = v84;
            if (!v69)
            {
              goto LABEL_34;
            }

            sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
          }

          else
          {
            OUTLINED_FUNCTION_359(&a17);
            sub_257487308();
            OUTLINED_FUNCTION_28_0(v88 + v73);
            if (v75)
            {

              sub_2574695E4(v91, &qword_27F879D40, &qword_257744660);
              OUTLINED_FUNCTION_48();
              sub_257479298();
              v74 = v88;
LABEL_34:
              sub_2574695E4(v74, &qword_27F879D38, &qword_25774F300);
LABEL_35:

LABEL_36:
              sub_257479298();
              OUTLINED_FUNCTION_230();
              sub_257479298();
              v80 = &qword_27F879E10;
              v81 = &qword_257744730;
              v82 = v86;
LABEL_37:
              sub_2574695E4(v82, v80, v81);
              break;
            }

            OUTLINED_FUNCTION_49();
            sub_2574792EC();

            OUTLINED_FUNCTION_307();
            sub_2574DDF3C();
            OUTLINED_FUNCTION_256(v76, &a19);
            sub_257479298();
            sub_2574695E4(v91, &qword_27F879D40, &qword_257744660);
            sub_257479298();
            sub_2574695E4(v88, &qword_27F879D40, &qword_257744660);
            v22 = v84;
            if ((v83 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v77);
        OUTLINED_FUNCTION_280();
        v23 = v85;
        if ((sub_257743644() & 1) == 0)
        {
          goto LABEL_36;
        }

        v71 = type metadata accessor for Proto_MILSpec_ValueType;
        sub_257479298();
        OUTLINED_FUNCTION_366();
        sub_257479298();
        v24 = v86;
      }

      sub_2574695E4(v24, &qword_27F879E10, &qword_257744730);
      v58 = v90;
      v78 = *(v90 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v79);
      sub_257743644();
      OUTLINED_FUNCTION_238();
      sub_257479298();
      OUTLINED_FUNCTION_264();
      sub_257479298();
      if (v71)
      {
        v67 += v89;
        v66 += v89;
        OUTLINED_FUNCTION_377();
        if (!v69)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_39:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747CD74()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_MILSpec_Value(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E68, &qword_257744790);
  OUTLINED_FUNCTION_4(v65);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_198();
  v70 = v15;
  v16 = OUTLINED_FUNCTION_153();
  v17 = type metadata accessor for Proto_MILSpec_Argument.Binding.OneOf_Binding(v16);
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_0();
  v64 = v21;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_163();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_196();
  v71 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E70, &qword_257744798);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_198();
  v72 = v29;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E78, &qword_2577447A0);
  OUTLINED_FUNCTION_4(v73);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_71();
  v69 = type metadata accessor for Proto_MILSpec_Argument.Binding(v33);
  v34 = OUTLINED_FUNCTION_18_0(v69);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v37);
  v39 = v62 - v38;
  OUTLINED_FUNCTION_333();
  if (!v46 || !v0 || v1 == v6)
  {
    goto LABEL_36;
  }

  v62[1] = v2;
  v63 = v3;
  OUTLINED_FUNCTION_61(v40);
  v42 = v1 + v41;
  v43 = v6 + v41;
  v66 = *(v44 + 72);
  v67 = v17;
  v68 = v39;
  while (1)
  {
    OUTLINED_FUNCTION_226();
    sub_257483824();
    OUTLINED_FUNCTION_321();
    sub_257483824();
    v45 = *(v73 + 48);
    OUTLINED_FUNCTION_405();
    sub_257487308();
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_65(v4);
    if (!v46)
    {
      break;
    }

    OUTLINED_FUNCTION_65(v4 + v45);
    if (!v46)
    {
      goto LABEL_29;
    }

LABEL_24:
    sub_2574695E4(v4, &qword_27F879E70, &qword_257744798);
    v57 = *(v69 + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v58);
    v59 = sub_257743644();
    sub_257479298();
    OUTLINED_FUNCTION_406();
    sub_257479298();
    if (v59)
    {
      v43 += v66;
      v42 += v66;
      if (--v0)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_65(v4 + v45);
  if (v46)
  {
    OUTLINED_FUNCTION_249();
    sub_257479298();
LABEL_29:
    v60 = &qword_27F879E78;
    v61 = &qword_2577447A0;
    goto LABEL_35;
  }

  sub_2574792EC();
  v47 = (v70 + *(v65 + 48));
  v48 = v70;
  sub_257483824();
  sub_257483824();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_225();
    v49 = v48;
    sub_257483824();
    OUTLINED_FUNCTION_373();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_248();
      sub_257479298();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_21_0();
    sub_2574792EC();
    _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
    OUTLINED_FUNCTION_92();
    sub_257479298();
    OUTLINED_FUNCTION_406();
    sub_257479298();
    if ((v47 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_225();
  v50 = v63;
  sub_257483824();
  v52 = *v50;
  v51 = v50[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = *v47;
    v54 = v47[1];
    if (v52 == v53 && v51 == v54)
    {
    }

    else
    {
      OUTLINED_FUNCTION_322();
      v56 = sub_257743994();

      if ((v56 & 1) == 0)
      {
LABEL_30:
        OUTLINED_FUNCTION_249();
        sub_257479298();
        goto LABEL_34;
      }
    }

LABEL_23:
    sub_257479298();
    sub_257479298();
    sub_257479298();
    goto LABEL_24;
  }

  v49 = v70;
LABEL_33:
  sub_2574695E4(v49, &qword_27F879E68, &qword_257744790);
LABEL_34:
  sub_257479298();
  OUTLINED_FUNCTION_204();
  sub_257479298();
  v60 = &qword_27F879E70;
  v61 = &qword_257744798;
LABEL_35:
  sub_2574695E4(v4, v60, v61);
  sub_257479298();
  OUTLINED_FUNCTION_361();
  sub_257479298();
LABEL_36:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747D424()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_NeuralNetworkPreprocessing.OneOf_Preprocessor(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v39 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A048, &qword_257744980);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_190(v17, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A050, &qword_257744988);
  OUTLINED_FUNCTION_4(v42);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_64();
  v40 = type metadata accessor for Proto_NeuralNetworkPreprocessing(v21);
  v22 = OUTLINED_FUNCTION_18_0(v40);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_333();
  if (v33 && v0 && v1 != v6)
  {
    v41 = v8;
    OUTLINED_FUNCTION_61(v26);
    OUTLINED_FUNCTION_337(v27);
    v28 = v40;
    while (1)
    {
      sub_257483824();
      OUTLINED_FUNCTION_343();
      sub_257483824();
      v29 = *v4;
      v30 = v4[1];
      OUTLINED_FUNCTION_402();
      v33 = v33 && v31 == v32;
      if (!v33 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_353();
      OUTLINED_FUNCTION_353();
      OUTLINED_FUNCTION_155(v3, 1, v41);
      if (v33)
      {
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (!v33)
        {
          goto LABEL_24;
        }

        sub_2574695E4(v3, &qword_27F87A048, v2);
      }

      else
      {
        OUTLINED_FUNCTION_353();
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (v34)
        {
          sub_257479298();
LABEL_24:
          sub_2574695E4(v3, &qword_27F87A050, &qword_257744988);
          break;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_321();
        sub_257526F48();
        v36 = v35;
        v28 = v40;
        sub_257479298();
        sub_257479298();
        sub_2574695E4(v3, &qword_27F87A048, v2);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(v28 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v38);
      v6 = OUTLINED_FUNCTION_382();
      sub_257479298();
      OUTLINED_FUNCTION_415();
      sub_257479298();
      if (v6)
      {
        OUTLINED_FUNCTION_323();
        if (!v33)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    sub_257479298();
    OUTLINED_FUNCTION_165();
    sub_257479298();
  }

LABEL_26:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v28;
  a20 = v29;
  v30 = OUTLINED_FUNCTION_216();
  v222 = type metadata accessor for Proto_FeatureType.OneOf_Type(v30);
  v31 = OUTLINED_FUNCTION_4(v222);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_23_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  v35 = OUTLINED_FUNCTION_13(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_196();
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  v40 = OUTLINED_FUNCTION_4(v221);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_167();
  v219 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_196();
  v214 = v46;
  v47 = OUTLINED_FUNCTION_153();
  v229 = type metadata accessor for Proto_FeatureType(v47);
  v48 = OUTLINED_FUNCTION_4(v229);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  v213 = v51;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_167();
  v215 = v53;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_218();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v56 = OUTLINED_FUNCTION_13(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  v212 = v59;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_167();
  v216 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_196();
  v220 = v63;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  v64 = OUTLINED_FUNCTION_4(v226);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_0();
  v217 = v67;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_281();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_196();
  v223 = v70;
  v71 = OUTLINED_FUNCTION_153();
  v230 = type metadata accessor for Proto_FeatureDescription(v71);
  v72 = OUTLINED_FUNCTION_63(v230);
  v227 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_25_0();
  v218 = v76;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_167();
  v228 = v79;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_167();
  v224 = v81;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_167();
  v225 = v83;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v84);
  v85 = OUTLINED_FUNCTION_425();
  v86 = type metadata accessor for Proto_FunctionDescription(v85);
  v87 = OUTLINED_FUNCTION_18_0(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_82();
  v93 = *(v24 + 16);
  if (v93 == *(v21 + 16) && v93 && v24 != v21)
  {
    v197 = v91;
    OUTLINED_FUNCTION_61(v92);
    v209 = v27;
    v210 = v23;
    v201 = v96;
    v196 = *(v95 + 72);
    while (1)
    {
      v202 = v94;
      OUTLINED_FUNCTION_93();
      sub_257483824();
      if (v202 == v201)
      {
        break;
      }

      OUTLINED_FUNCTION_302(&v227);
      sub_257483824();
      v97 = *v23 == *v22 && v23[1] == v22[1];
      v98 = v219;
      if (!v97 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_306();
      v100 = *(v99 + 16);
      OUTLINED_FUNCTION_272();
      v208 = *(v100 + 16);
      if (v208 != *(*(v101 + 16) + 16))
      {
        goto LABEL_147;
      }

      if (v208)
      {
        OUTLINED_FUNCTION_305();
        if (v100 != v102)
        {
          v103 = 0;
          v104 = *(v227 + 80);
          OUTLINED_FUNCTION_193();
          v206 = v20;
          v198 = v100;
          while (v103 < *(v100 + 16))
          {
            v105 = *(v227 + 72) * v103;
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_302(&a10);
            sub_257483824();
            OUTLINED_FUNCTION_305();
            if (v103 >= *(v106 + 16))
            {
              goto LABEL_150;
            }

            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_302(&a9);
            v107 = v225;
            sub_257483824();
            v108 = *v25 == *v107 && v25[1] == v107[1];
            if (!v108 && (sub_257743994() & 1) == 0)
            {
              goto LABEL_146;
            }

            v109 = v25[2] == v107[2] && v25[3] == v107[3];
            if (!v109 && (sub_257743994() & 1) == 0)
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_268();
            v110 = v223;
            sub_257487308();
            OUTLINED_FUNCTION_444();
            OUTLINED_FUNCTION_72(v110, 1);
            if (v97)
            {
              OUTLINED_FUNCTION_28_0(v110 + v105);
              v27 = v209;
              if (!v97)
              {
                goto LABEL_127;
              }

              sub_2574695E4(v110, &qword_27F879C38, &qword_257744550);
            }

            else
            {
              v25 = v98;
              OUTLINED_FUNCTION_444();
              OUTLINED_FUNCTION_28_0(v110 + v105);
              v27 = v209;
              if (v111)
              {
                OUTLINED_FUNCTION_45_0();
                sub_257479298();
                OUTLINED_FUNCTION_398();
LABEL_127:
                sub_2574695E4(v110, &qword_27F879C40, &qword_257750390);
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_11_0();
              OUTLINED_FUNCTION_392(&a11);
              sub_2574792EC();
              v105 = *(v221 + 48);
              v112 = v214;
              v113 = &qword_27F879C28;
              sub_257487308();
              sub_257487308();
              OUTLINED_FUNCTION_28_0(v214);
              if (v97)
              {
                OUTLINED_FUNCTION_28_0(v214 + v105);
                if (!v97)
                {
                  goto LABEL_133;
                }

                v114 = OUTLINED_FUNCTION_368();
                sub_2574695E4(v114, v115, &qword_257744540);
                OUTLINED_FUNCTION_397();
              }

              else
              {
                sub_257487308();
                OUTLINED_FUNCTION_28_0(v214 + v105);
                if (v117)
                {
                  OUTLINED_FUNCTION_46_0();
                  sub_257479298();
LABEL_133:
                  sub_2574695E4(v214, &qword_27F879C30, &qword_257744548);
                  OUTLINED_FUNCTION_397();
LABEL_134:
                  OUTLINED_FUNCTION_241();
                  sub_257479298();
                  OUTLINED_FUNCTION_366();
                  sub_257479298();
                  sub_2574695E4(v112, &qword_27F879C38, &qword_257744550);
                  OUTLINED_FUNCTION_398();
LABEL_146:
                  sub_257479298();
                  sub_257479298();
                  goto LABEL_147;
                }

                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_359(&v228);
                sub_2574792EC();
                sub_2574BA824();
                OUTLINED_FUNCTION_85();
                v98 = v219;
                v100 = v220;
                sub_257479298();
                v27 = v209;
                v113 = v26;
                sub_257479298();
                sub_2574695E4(v214, &qword_27F879C28, &qword_257744540);
                v116 = v229;
                v112 = v223;
                if ((v105 & 1) == 0)
                {
                  goto LABEL_134;
                }
              }

              if (*(v100 + *(v116 + 20)) != *(v113 + *(v116 + 20)))
              {
                goto LABEL_134;
              }

              v118 = *(v116 + 24);
              sub_2577431B4();
              OUTLINED_FUNCTION_0_1();
              sub_257483ACC(&qword_27F879B68, v119);
              OUTLINED_FUNCTION_317();
              sub_257743644();
              OUTLINED_FUNCTION_84();
              sub_257479298();
              OUTLINED_FUNCTION_280();
              sub_257479298();
              sub_2574695E4(v112, &qword_27F879C38, &qword_257744550);
              OUTLINED_FUNCTION_398();
              v100 = v198;
              if ((v105 & 1) == 0)
              {
                goto LABEL_146;
              }
            }

            OUTLINED_FUNCTION_381();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v120);
            sub_257743644();
            OUTLINED_FUNCTION_44_0();
            sub_257479298();
            sub_257479298();
            v20 = v206;
            if ((v105 & 1) == 0)
            {
              goto LABEL_147;
            }

            if (v208 == ++v103)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          break;
        }
      }

LABEL_44:
      OUTLINED_FUNCTION_306();
      v122 = *(v121 + 24);
      OUTLINED_FUNCTION_272();
      v124 = *(v123 + 24);
      v125 = *(v122 + 16);
      OUTLINED_FUNCTION_393();
      if (!v97)
      {
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_305();
      if (v126 && v122 != v124)
      {
        v127 = 0;
        v128 = *(v227 + 80);
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_355(v129);
        v207 = v20;
        v204 = v122;
        v199 = v124;
        do
        {
          if (v127 >= *(v122 + 16))
          {
            goto LABEL_151;
          }

          v130 = *(v227 + 72) * v127;
          OUTLINED_FUNCTION_8_0();
          OUTLINED_FUNCTION_302(&a13);
          v131 = v224;
          sub_257483824();
          if (v127 >= *(v124 + 16))
          {
            goto LABEL_152;
          }

          OUTLINED_FUNCTION_8_0();
          OUTLINED_FUNCTION_302(&a10);
          v132 = v228;
          sub_257483824();
          v133 = *v131;
          v134 = v131[1];
          OUTLINED_FUNCTION_402();
          v137 = v97 && v135 == v136;
          if (!v137 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          v138 = v131[2] == *(v228 + 16) && v131[3] == *(v228 + 24);
          if (!v138 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          OUTLINED_FUNCTION_268();
          sub_257487308();
          OUTLINED_FUNCTION_444();
          OUTLINED_FUNCTION_72(v20, 1);
          if (v97)
          {
            OUTLINED_FUNCTION_28_0(v20 + v132);
            if (!v97)
            {
              goto LABEL_131;
            }

            sub_2574695E4(v20, &qword_27F879C38, &qword_257744550);
          }

          else
          {
            OUTLINED_FUNCTION_444();
            OUTLINED_FUNCTION_28_0(v20 + v132);
            if (v139)
            {
              OUTLINED_FUNCTION_45_0();
              sub_257479298();
LABEL_131:
              v190 = &qword_27F879C40;
              v191 = &qword_257750390;
              v192 = v20;
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_11_0();
            sub_2574792EC();
            v132 = *(v221 + 48);
            sub_257487308();
            OUTLINED_FUNCTION_353();
            OUTLINED_FUNCTION_28_0(v98);
            if (v97)
            {
              OUTLINED_FUNCTION_28_0(v98 + v132);
              v140 = v216;
              v20 = v207;
              if (!v97)
              {
                goto LABEL_138;
              }

              sub_2574695E4(v98, &qword_27F879C28, &qword_257744540);
              v141 = v215;
              v142 = v229;
            }

            else
            {
              OUTLINED_FUNCTION_353();
              OUTLINED_FUNCTION_28_0(v98 + v132);
              if (v143)
              {
                OUTLINED_FUNCTION_46_0();
                sub_257479298();
                v20 = v207;
LABEL_138:
                sub_2574695E4(v98, &qword_27F879C30, &qword_257744548);
LABEL_139:
                sub_257479298();
                OUTLINED_FUNCTION_361();
                sub_257479298();
                v190 = &qword_27F879C38;
                v191 = &qword_257744550;
                v192 = v20;
LABEL_140:
                sub_2574695E4(v192, v190, v191);
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_47_0();
              OUTLINED_FUNCTION_359(&v228);
              sub_2574792EC();
              OUTLINED_FUNCTION_321();
              sub_2574BA824();
              OUTLINED_FUNCTION_85();
              v98 = v219;
              sub_257479298();
              OUTLINED_FUNCTION_307();
              sub_257479298();
              sub_2574695E4(v219, &qword_27F879C28, &qword_257744540);
              v141 = v215;
              v140 = v216;
              v142 = v229;
              v20 = v207;
              if ((v132 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            if (*(v140 + *(v142 + 20)) != *(v141 + *(v142 + 20)))
            {
              goto LABEL_139;
            }

            v144 = *(v142 + 24);
            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v145);
            sub_257743644();
            OUTLINED_FUNCTION_84();
            sub_257479298();
            OUTLINED_FUNCTION_307();
            sub_257479298();
            sub_2574695E4(v20, &qword_27F879C38, &qword_257744550);
            v27 = v209;
            if ((v132 & 1) == 0)
            {
              goto LABEL_146;
            }
          }

          OUTLINED_FUNCTION_381();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v146);
          sub_257743644();
          OUTLINED_FUNCTION_44_0();
          sub_257479298();
          OUTLINED_FUNCTION_280();
          sub_257479298();
          v122 = v204;
          v124 = v199;
          if ((v132 & 1) == 0)
          {
            goto LABEL_147;
          }

          ++v127;
          OUTLINED_FUNCTION_305();
        }

        while (v147 != v127);
      }

      OUTLINED_FUNCTION_306();
      v149 = *(v148 + 32);
      OUTLINED_FUNCTION_272();
      v151 = *(v150 + 32);
      v152 = *(v149 + 16);
      OUTLINED_FUNCTION_393();
      if (!v97)
      {
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_305();
      if (v153 && v149 != v151)
      {
        v154 = 0;
        v155 = *(v227 + 80);
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_355(v156);
        v203 = v25;
        v205 = v149;
        v200 = v151;
        do
        {
          if (v154 >= *(v149 + 16))
          {
            goto LABEL_154;
          }

          v157 = *(v227 + 72) * v154;
          OUTLINED_FUNCTION_8_0();
          OUTLINED_FUNCTION_302(&a13);
          sub_257483824();
          v158 = v217;
          if (v154 >= *(v151 + 16))
          {
            goto LABEL_155;
          }

          OUTLINED_FUNCTION_8_0();
          OUTLINED_FUNCTION_302(&a10);
          sub_257483824();
          v159 = *v27 == *v218 && v27[1] == v218[1];
          if (!v159 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          v160 = v27[2] == v218[2] && v27[3] == v218[3];
          if (!v160 && (sub_257743994() & 1) == 0)
          {
            goto LABEL_146;
          }

          OUTLINED_FUNCTION_268();
          v25 = &qword_257744550;
          sub_257487308();
          OUTLINED_FUNCTION_445();
          v161 = OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_69(v161, v162);
          if (v97)
          {
            OUTLINED_FUNCTION_26_0(v217 + v157);
            if (!v97)
            {
              goto LABEL_136;
            }

            sub_2574695E4(v217, &qword_27F879C38, &qword_257744550);
            OUTLINED_FUNCTION_398();
          }

          else
          {
            OUTLINED_FUNCTION_445();
            OUTLINED_FUNCTION_26_0(v217 + v157);
            if (v163)
            {
              OUTLINED_FUNCTION_45_0();
              sub_257479298();
              v158 = v217;
LABEL_136:
              v193 = &qword_27F879C40;
              v194 = &qword_257750390;
              v195 = v158;
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_11_0();
            sub_2574792EC();
            v157 = *(v221 + 48);
            OUTLINED_FUNCTION_211();
            sub_257487308();
            OUTLINED_FUNCTION_445();
            OUTLINED_FUNCTION_28_0(v211);
            if (v97)
            {
              v164 = v212;
              OUTLINED_FUNCTION_28_0(v211 + v157);
              v25 = v203;
              if (!v97)
              {
                goto LABEL_143;
              }

              sub_2574695E4(v211, &qword_27F879C28, &qword_257744540);
              v165 = v229;
              v166 = v213;
            }

            else
            {
              OUTLINED_FUNCTION_180(&v222);
              OUTLINED_FUNCTION_445();
              OUTLINED_FUNCTION_28_0(v211 + v157);
              v25 = v203;
              if (v167)
              {
                OUTLINED_FUNCTION_46_0();
                sub_257479298();
LABEL_143:
                sub_2574695E4(v211, &qword_27F879C30, &qword_257744548);
LABEL_144:
                OUTLINED_FUNCTION_242();
                sub_257479298();
                OUTLINED_FUNCTION_292();
                sub_257479298();
                v193 = &qword_27F879C38;
                v194 = &qword_257744550;
                v195 = v217;
LABEL_145:
                sub_2574695E4(v195, v193, v194);
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_47_0();
              OUTLINED_FUNCTION_359(&v228);
              sub_2574792EC();
              OUTLINED_FUNCTION_321();
              sub_2574BA824();
              OUTLINED_FUNCTION_85();
              sub_257479298();
              OUTLINED_FUNCTION_409();
              sub_257479298();
              sub_2574695E4(v211, &qword_27F879C28, &qword_257744540);
              v165 = v229;
              v164 = v212;
              v166 = v213;
              if ((v157 & 1) == 0)
              {
                goto LABEL_144;
              }
            }

            if (*(v164 + *(v165 + 20)) != *(v166 + *(v165 + 20)))
            {
              goto LABEL_144;
            }

            v168 = *(v165 + 24);
            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v169);
            sub_257743644();
            OUTLINED_FUNCTION_84();
            sub_257479298();
            OUTLINED_FUNCTION_409();
            sub_257479298();
            sub_2574695E4(v217, &qword_27F879C38, &qword_257744550);
            if ((v157 & 1) == 0)
            {
              goto LABEL_146;
            }
          }

          OUTLINED_FUNCTION_381();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v170);
          sub_257743644();
          OUTLINED_FUNCTION_44_0();
          sub_257479298();
          OUTLINED_FUNCTION_405();
          sub_257479298();
          v149 = v205;
          v151 = v200;
          if ((v157 & 1) == 0)
          {
            goto LABEL_147;
          }

          ++v154;
          OUTLINED_FUNCTION_305();
        }

        while (v171 != v154);
      }

      OUTLINED_FUNCTION_306();
      v173 = *(v172 + 40);
      v174 = *(v172 + 48);
      OUTLINED_FUNCTION_272();
      v178 = v177 == *(v176 + 40) && v175 == *(v176 + 48);
      if (!v178 && (sub_257743994() & 1) == 0 || ((OUTLINED_FUNCTION_306(), v180 = *(v179 + 56), v181 = *(v179 + 64), OUTLINED_FUNCTION_272(), v184 == *(v183 + 56)) ? (v185 = v182 == *(v183 + 64)) : (v185 = 0), !v185 && (sub_257743994() & 1) == 0))
      {
LABEL_147:
        sub_257479298();
        sub_257479298();
        goto LABEL_148;
      }

      v186 = *(v197 + 40);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v187);
      v23 = v210;
      OUTLINED_FUNCTION_272();
      v22 = v188;
      v189 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_412();
      sub_257479298();
      if (v189)
      {
        v94 = v202 + 1;
        if (v202 + 1 != v201)
        {
          continue;
        }
      }

      goto LABEL_148;
    }

    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
  }

  else
  {
LABEL_148:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25747EBD4()
{
  OUTLINED_FUNCTION_31();
  v7 = OUTLINED_FUNCTION_287();
  v74 = type metadata accessor for Proto_FeatureType.OneOf_Type(v7);
  v8 = OUTLINED_FUNCTION_4(v74);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C28, &qword_257744540);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_198();
  v73 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C30, &qword_257744548);
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_198();
  v80 = v20;
  v21 = OUTLINED_FUNCTION_153();
  v81 = type metadata accessor for Proto_FeatureType(v21);
  v22 = OUTLINED_FUNCTION_4(v81);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_1();
  v76 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_13(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = (&v69 - v30);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  OUTLINED_FUNCTION_4(v77);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_335();
  v82 = type metadata accessor for Proto_FeatureDescription(v35);
  v36 = OUTLINED_FUNCTION_18_0(v82);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_324();
  if (v45 && v5 && v3 != v1)
  {
    v70 = v6;
    v71 = v16;
    v69 = v0;
    OUTLINED_FUNCTION_61(v40);
    v42 = v3 + v41;
    v43 = v1 + v41;
    v72 = *(v44 + 72);
    v75 = v31;
    while (1)
    {
      OUTLINED_FUNCTION_176();
      sub_257483824();
      OUTLINED_FUNCTION_194();
      sub_257483824();
      v45 = *v2 == *v4 && v2[1] == v4[1];
      if (!v45 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v46 = v2[2] == v4[2] && v2[3] == v4[3];
      if (!v46 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      v78 = v43;
      v79 = v42;
      v47 = *(v82 + 28);
      v48 = *(v77 + 48);
      sub_257487308();
      v49 = &qword_27F879C38;
      sub_257487308();
      OUTLINED_FUNCTION_72(v6, 1);
      if (v45)
      {
        OUTLINED_FUNCTION_28_0(v6 + v48);
        if (!v45)
        {
          goto LABEL_36;
        }

        sub_2574695E4(v6, &qword_27F879C38, &qword_257744550);
        v51 = v78;
        v50 = v79;
      }

      else
      {
        OUTLINED_FUNCTION_406();
        sub_257487308();
        OUTLINED_FUNCTION_28_0(v6 + v48);
        if (v52)
        {
          OUTLINED_FUNCTION_45_0();
          sub_257479298();
LABEL_36:
          v66 = &qword_27F879C40;
          v67 = &qword_257750390;
          v68 = v6;
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_11_0();
        sub_2574792EC();
        v53 = *(v71 + 48);
        v54 = v80;
        sub_257487308();
        sub_257487308();
        OUTLINED_FUNCTION_42_0(v54);
        if (v45)
        {
          OUTLINED_FUNCTION_42_0(v80 + v53);
          if (!v45)
          {
            goto LABEL_38;
          }

          sub_2574695E4(v80, &qword_27F879C28, &qword_257744540);
          v49 = v75;
          v55 = v76;
          v56 = v81;
        }

        else
        {
          v57 = v80;
          sub_257487308();
          OUTLINED_FUNCTION_42_0(v57 + v53);
          if (v58)
          {
            OUTLINED_FUNCTION_46_0();
            sub_257479298();
LABEL_38:
            sub_2574695E4(v80, &qword_27F879C30, &qword_257744548);
LABEL_39:
            OUTLINED_FUNCTION_242();
            sub_257479298();
            sub_257479298();
            v66 = &qword_27F879C38;
            v67 = &qword_257744550;
            v68 = v70;
LABEL_40:
            sub_2574695E4(v68, v66, v67);
            break;
          }

          OUTLINED_FUNCTION_47_0();
          v59 = v80;
          sub_2574792EC();
          sub_2574BA824();
          v61 = v60;
          sub_257479298();
          sub_257479298();
          sub_2574695E4(v59, &qword_27F879C28, &qword_257744540);
          v49 = v75;
          v55 = v76;
          v56 = v81;
          if ((v61 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if (*(v49 + *(v56 + 20)) != *(v55 + *(v56 + 20)))
        {
          goto LABEL_39;
        }

        v62 = *(v56 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_1();
        sub_257483ACC(&qword_27F879B68, v63);
        LOBYTE(v62) = sub_257743644();
        OUTLINED_FUNCTION_241();
        sub_257479298();
        sub_257479298();
        v6 = v70;
        sub_2574695E4(v70, &qword_27F879C38, &qword_257744550);
        v51 = v78;
        v50 = v79;
        if ((v62 & 1) == 0)
        {
          break;
        }
      }

      v64 = *(v82 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v65);
      sub_257743644();
      OUTLINED_FUNCTION_44_0();
      sub_257479298();
      OUTLINED_FUNCTION_292();
      sub_257479298();
      if (v49)
      {
        v43 = v51 + v72;
        v42 = v50 + v72;
        if (--v5)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

    sub_257479298();
    OUTLINED_FUNCTION_292();
    sub_257479298();
  }

LABEL_42:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25747F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v29;
  a20 = v30;
  v31 = OUTLINED_FUNCTION_216();
  v198 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v31);
  v32 = OUTLINED_FUNCTION_4(v198);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D38, &qword_25774F300);
  OUTLINED_FUNCTION_32_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_198();
  v204 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v41 = OUTLINED_FUNCTION_13(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39();
  v206 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v45 = OUTLINED_FUNCTION_4(v206);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_23_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  OUTLINED_FUNCTION_13(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_363(v52);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E18, &qword_257744738);
  OUTLINED_FUNCTION_4(v205);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  v56 = OUTLINED_FUNCTION_332();
  v208 = type metadata accessor for Proto_MILSpec_NamedValueType(v56);
  v57 = OUTLINED_FUNCTION_63(v208);
  v194 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v199 = v61;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_196();
  v209 = v63;
  v64 = OUTLINED_FUNCTION_153();
  v65 = type metadata accessor for Proto_MILSpec_Block(v64);
  v195 = OUTLINED_FUNCTION_63(v65);
  v196 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_207();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_196();
  v207 = v70;
  v71 = OUTLINED_FUNCTION_153();
  v72 = type metadata accessor for Proto_MILSpec_Operation(v71);
  v73 = OUTLINED_FUNCTION_18_0(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_62();
  v203 = (v76 - v77);
  v79 = MEMORY[0x28223BE20](v78);
  v82 = (&v173 - v81);
  v83 = *(v26 + 16);
  if (v83 == *(v21 + 16) && v83 && v26 != v21)
  {
    v181 = v79;
    v176 = v20;
    OUTLINED_FUNCTION_61(v80);
    v86 = v26 + v85;
    v187 = v21 + v85;
    v88 = *(v87 + 72);
    v89 = v207;
    v192 = v82;
    v190 = v90;
    v179 = v86;
    v178 = v88;
    while (1)
    {
      v91 = v84;
      sub_257483824();
      v188 = v91;
      if (v91 == v190)
      {
        break;
      }

      v92 = v203;
      sub_257483824();
      v93 = *v82;
      v94 = v82[1];
      OUTLINED_FUNCTION_402();
      v97 = v97 && v95 == v96;
      if (!v97 && (sub_257743994() & 1) == 0)
      {
        goto LABEL_72;
      }

      v98 = v82[2];
      v99 = v92[2];
      sub_257477114();
      if ((v106 & 1) == 0)
      {
        goto LABEL_72;
      }

      sub_25747C3F4(v82[3], v92[3], v100, v101, v102, v103, v104, v105, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, SHIDWORD(v182), v183, v184);
      if ((v107 & 1) == 0)
      {
        goto LABEL_72;
      }

      v108 = v82[4];
      v109 = v92[4];
      v110 = *(v108 + 16);
      if (v110 != *(v109 + 16))
      {
        goto LABEL_72;
      }

      if (v110 && v108 != v109)
      {
        v111 = *(v196 + 80);
        OUTLINED_FUNCTION_193();
        v183 = v112 + v114;
        v182 = v115 + v114;
        v186 = v22;
        v180 = v25;
        v197 = v27;
        v189 = v23;
        v193 = v28;
        v175 = v112;
        v184 = v115;
        v174 = v116;
        while (1)
        {
          if (v113 >= *(v112 + 16))
          {
            goto LABEL_75;
          }

          v117 = v113;
          v118 = *(v196 + 72) * v113;
          OUTLINED_FUNCTION_20_0();
          sub_257483824();
          v119 = *(v184 + 16);
          v185 = v117;
          if (v117 >= v119)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_20_0();
          sub_257483824();
          v120 = *v89;
          v121 = *v28;
          v122 = *(*v89 + 16);
          v123 = v199;
          v124 = v209;
          if (v122 != *(*v28 + 16))
          {
            goto LABEL_71;
          }

          if (v122 && v120 != v121)
          {
            break;
          }

LABEL_46:
          v150 = v207[1];
          OUTLINED_FUNCTION_272();
          v153 = *(v152 + 8);
          v154 = *(v151 + 16);
          if (v154 != *(v153 + 16))
          {
            goto LABEL_71;
          }

          if (v154 && v151 != v153)
          {
            v155 = (v151 + 40);
            v156 = (v153 + 40);
            while (1)
            {
              v157 = *(v155 - 1) == *(v156 - 1) && *v155 == *v156;
              if (!v157 && (sub_257743994() & 1) == 0)
              {
                break;
              }

              v155 += 2;
              v156 += 2;
              if (!--v154)
              {
                goto LABEL_56;
              }
            }

LABEL_71:
            OUTLINED_FUNCTION_234();
            sub_257479298();
            sub_257479298();
            goto LABEL_72;
          }

LABEL_56:
          v158 = v207[2];
          OUTLINED_FUNCTION_272();
          v160 = *(v159 + 16);
          if ((sub_25747F2A8() & 1) == 0)
          {
            goto LABEL_71;
          }

          v161 = v207[3];
          OUTLINED_FUNCTION_272();
          v163 = *(v162 + 24);
          sub_257476DC8();
          if ((v164 & 1) == 0)
          {
            goto LABEL_71;
          }

          v165 = *(v195 + 32);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v166);
          v89 = v207;
          v28 = v193;
          LOBYTE(v165) = sub_257743644();
          sub_257479298();
          sub_257479298();
          v22 = v186;
          v25 = v180;
          v27 = v197;
          v23 = v189;
          v92 = v203;
          v112 = v175;
          if ((v165 & 1) == 0)
          {
            goto LABEL_72;
          }

          v113 = v185 + 1;
          if (v185 + 1 == v174)
          {
            goto LABEL_60;
          }
        }

        v125 = (*(v194 + 80) + 32) & ~*(v194 + 80);
        v126 = v120 + v125;
        v127 = v121 + v125;
        v191 = *(v194 + 72);
        v177 = v24;
        while (1)
        {
          sub_257483824();
          v200 = v127;
          v201 = v126;
          OUTLINED_FUNCTION_156();
          sub_257483824();
          v128 = *v124 == *v123 && v124[1] == v123[1];
          if (!v128 && (sub_257743994() & 1) == 0)
          {
            break;
          }

          v129 = *(v208 + 24);
          v130 = *(v205 + 48);
          v131 = v197;
          sub_257487308();
          sub_257487308();
          v132 = v206;
          OUTLINED_FUNCTION_80(v131, 1);
          if (v97)
          {
            OUTLINED_FUNCTION_42_0(v131 + v130);
            if (!v97)
            {
              goto LABEL_66;
            }

            sub_2574695E4(v131, &qword_27F879E10, &qword_257744730);
          }

          else
          {
            v133 = v202;
            sub_257487308();
            OUTLINED_FUNCTION_42_0(v131 + v130);
            if (v134)
            {
              OUTLINED_FUNCTION_94();
              sub_257479298();
LABEL_66:
              sub_2574695E4(v131, &qword_27F879E18, &qword_257744738);
              break;
            }

            OUTLINED_FUNCTION_89();
            sub_2574792EC();
            v135 = *(v132 + 20);
            v132 = *(v133 + v135);
            if (v132 != *(v24 + v135))
            {
              OUTLINED_FUNCTION_296();
              OUTLINED_FUNCTION_185(&a13);
              sub_257487308();
              v136 = v204;
              OUTLINED_FUNCTION_296();
              v137 = *(v186 + 48);
              OUTLINED_FUNCTION_362();
              sub_257487308();
              v24 = v198;
              sub_257487308();
              OUTLINED_FUNCTION_34_0(v136);
              if (v97)
              {

                v138 = OUTLINED_FUNCTION_412();
                sub_2574695E4(v138, v139, &qword_257744660);
                OUTLINED_FUNCTION_155(v204 + v137, 1, v198);
                v123 = v199;
                v82 = v192;
                if (!v97)
                {
                  goto LABEL_68;
                }

                sub_2574695E4(v204, &qword_27F879D40, &qword_257744660);
                OUTLINED_FUNCTION_344();
              }

              else
              {
                v140 = v204;
                OUTLINED_FUNCTION_392(&v210);
                sub_257487308();
                OUTLINED_FUNCTION_155(v140 + v137, 1, v198);
                if (v141)
                {

                  sub_2574695E4(v189, &qword_27F879D40, &qword_257744660);
                  OUTLINED_FUNCTION_48();
                  sub_257479298();
LABEL_68:
                  sub_2574695E4(v204, &qword_27F879D38, &qword_25774F300);
                  OUTLINED_FUNCTION_344();
LABEL_69:

                  OUTLINED_FUNCTION_243();
                  sub_257479298();
                  sub_257479298();
                  sub_2574695E4(v197, &qword_27F879E10, &qword_257744730);
                  break;
                }

                OUTLINED_FUNCTION_49();
                OUTLINED_FUNCTION_261(&v208);
                sub_2574792EC();

                OUTLINED_FUNCTION_294();
                sub_2574DDF3C();
                v143 = v142;
                OUTLINED_FUNCTION_245();
                sub_257479298();
                sub_2574695E4(v189, &qword_27F879D40, &qword_257744660);
                OUTLINED_FUNCTION_230();
                sub_257479298();
                v144 = OUTLINED_FUNCTION_362();
                sub_2574695E4(v144, v145, &qword_257744660);
                OUTLINED_FUNCTION_344();
                v123 = v199;
                v82 = v192;
                if ((v143 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }
            }

            sub_2577431B4();
            OUTLINED_FUNCTION_0_1();
            sub_257483ACC(&qword_27F879B68, v146);
            OUTLINED_FUNCTION_399();
            sub_257743644();
            OUTLINED_FUNCTION_239();
            sub_257479298();
            sub_257479298();
            sub_2574695E4(v197, &qword_27F879E10, &qword_257744730);
            if ((v132 & 1) == 0)
            {
              break;
            }
          }

          v147 = *(v208 + 20);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v148);
          sub_257743644();
          OUTLINED_FUNCTION_238();
          sub_257479298();
          v124 = v209;
          sub_257479298();
          if ((v132 & 1) == 0)
          {
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_305();
          v127 = v200 + v149;
          v126 = v201 + v149;
          if (!--v122)
          {
            goto LABEL_46;
          }
        }

        sub_257479298();
        OUTLINED_FUNCTION_165();
        sub_257479298();
        goto LABEL_71;
      }

LABEL_60:
      v167 = v82[5];
      v168 = v92[5];
      sub_257476DC8();
      if ((v169 & 1) == 0)
      {
LABEL_72:
        OUTLINED_FUNCTION_255();
        sub_257479298();
        sub_257479298();
        goto LABEL_73;
      }

      v170 = *(v181 + 36);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v171);
      OUTLINED_FUNCTION_306();
      v172 = sub_257743644();
      OUTLINED_FUNCTION_255();
      v82 = v192;
      sub_257479298();
      sub_257479298();
      if (v172)
      {
        v84 = v188 + 1;
        if (v188 + 1 != v190)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_257480040()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_216();
  v6 = v5(v4);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_326();
  v12 = *(v3 + 16);
  if (v12 == *(v0 + 16) && v12 && v3 != v0)
  {
    v13 = 0;
    OUTLINED_FUNCTION_61(v11);
    v15 = *(v14 + 72);
    while (1)
    {
      sub_257483824();
      if (v13 == v12)
      {
        break;
      }

      sub_257483824();
      v16 = *v2;
      v17 = *v1;
      OUTLINED_FUNCTION_213();
      if (!v21)
      {
LABEL_21:
        OUTLINED_FUNCTION_262();
        sub_257479298();
        OUTLINED_FUNCTION_230();
        sub_257479298();
        goto LABEL_22;
      }

      if (v18)
      {
        v21 = v19 == v20;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        OUTLINED_FUNCTION_364();
        while (v22)
        {
          if (*v23 != *v24)
          {
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_347();
          if (v21)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      v25 = *(v6 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v26);
      OUTLINED_FUNCTION_317();
      v27 = sub_257743644();
      OUTLINED_FUNCTION_262();
      sub_257479298();
      OUTLINED_FUNCTION_230();
      sub_257479298();
      if ((v27 & 1) != 0 && ++v13 != v12)
      {
        continue;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_2574806C0()
{
  OUTLINED_FUNCTION_31();
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v26 = v7(0);
  v8 = OUTLINED_FUNCTION_18_0(v26);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_326();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_345();
  v13 = *(v6 + 16);
  if (v13 == *(v4 + 16) && v13 && v6 != v4)
  {
    OUTLINED_FUNCTION_61(v12);
    v15 = v6 + v14;
    v16 = v4 + v14;
    v18 = *(v17 + 72);
    while (1)
    {
      sub_257483824();
      sub_257483824();
      v19 = *(v26 + 20);
      v20 = *(v1 + v19);
      v21 = *(v0 + v19);
      if (v20 != v21)
      {
        v22 = *(v1 + v19);

        v23 = v25(v20, v21);

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v24);
      OUTLINED_FUNCTION_194();
      if ((sub_257743644() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_343();
      sub_257479298();
      sub_257479298();
      v16 += v18;
      v15 += v18;
      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    sub_257479298();
    OUTLINED_FUNCTION_228();
    sub_257479298();
  }

LABEL_11:
  OUTLINED_FUNCTION_35();
}

void sub_2574808B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_267();
  v391 = *MEMORY[0x277D85DE8];
  v28 = type metadata accessor for Proto_QuantizationParams.OneOf_QuantizationType(0);
  v29 = OUTLINED_FUNCTION_32_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C80, &qword_25776D180);
  OUTLINED_FUNCTION_13(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &v371 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C88, &unk_2577445A0);
  OUTLINED_FUNCTION_4(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  v42 = OUTLINED_FUNCTION_135();
  v389 = type metadata accessor for Proto_QuantizationParams(v42);
  v43 = OUTLINED_FUNCTION_4(v389);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v386 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C90, &unk_2577530D0);
  OUTLINED_FUNCTION_13(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_198();
  v387 = v51;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C98, &qword_2577445B0);
  OUTLINED_FUNCTION_4(v388);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  v55 = OUTLINED_FUNCTION_71();
  v56 = type metadata accessor for Proto_WeightParams(v55);
  v57 = OUTLINED_FUNCTION_18_0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_62();
  v62 = (v60 - v61);
  v64 = MEMORY[0x28223BE20](v63);
  v67 = &v371 - v66;
  v68 = *(v21 + 16);
  if (v68 != *(v20 + 16) || !v68 || v21 == v20)
  {
    goto LABEL_251;
  }

  v384 = v64;
  v376 = v38;
  v377 = v25;
  v374 = v37;
  v373 = v23;
  v378 = v22;
  v69 = 0;
  OUTLINED_FUNCTION_61(v65);
  v381 = 0;
  v382 = v20 + v70;
  v72 = *(v71 + 72);
  v73 = 0xC000000000000000;
  v74 = v389;
  v385 = v75;
  v379 = v72;
  v380 = v21 + v70;
  while (1)
  {
    OUTLINED_FUNCTION_253();
    sub_257483824();
    if (v69 == v385)
    {
      goto LABEL_253;
    }

    v383 = v69;
    OUTLINED_FUNCTION_253();
    sub_257483824();
    v76 = *v67;
    v77 = *v62;
    OUTLINED_FUNCTION_213();
    if (!v81)
    {
      goto LABEL_250;
    }

    if (v78)
    {
      v81 = v79 == v80;
    }

    else
    {
      v81 = 1;
    }

    if (!v81)
    {
      OUTLINED_FUNCTION_364();
      while (v82)
      {
        if (*v83 != *v84)
        {
          goto LABEL_250;
        }

        ++v83;
        ++v84;
        if (!--v82)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
    }

LABEL_16:
    v85 = *(v67 + 1);
    v86 = *(v67 + 2);
    v88 = v62[1];
    v87 = v62[2];
    OUTLINED_FUNCTION_342();
    if (!v81)
    {
      switch(v92)
      {
        case 1:
          if (!__OFSUB__(v91, v90))
          {
            goto LABEL_31;
          }

          goto LABEL_260;
        case 2:
          if (!__OFSUB__(*(v90 + 24), *(v90 + 16)))
          {
            goto LABEL_31;
          }

          goto LABEL_261;
        default:
          goto LABEL_31;
      }
    }

    if (v90)
    {
      break;
    }

    v93 = v86 == v73 && v89 >= 3;
    if (!v93 || v88 || v87 != v73)
    {
      break;
    }

LABEL_87:
    v170 = *(v67 + 3);
    v171 = *(v67 + 4);
    v173 = v62[3];
    v172 = v62[4];
    OUTLINED_FUNCTION_342();
    if (!v81)
    {
      switch(v177)
      {
        case 1:
          if (!__OFSUB__(v176, v175))
          {
            goto LABEL_102;
          }

          goto LABEL_262;
        case 2:
          if (!__OFSUB__(*(v175 + 24), *(v175 + 16)))
          {
            goto LABEL_102;
          }

          goto LABEL_263;
        default:
          goto LABEL_102;
      }
    }

    if (v175 || (v171 == v73 ? (v178 = v174 >= 3) : (v178 = 0), !v178 || v173 || v172 != v73))
    {
LABEL_102:
      OUTLINED_FUNCTION_339();
      switch(v186)
      {
        case 1:
          LODWORD(v187) = v183 - v173;
          if (__OFSUB__(v183, v173))
          {
            goto LABEL_257;
          }

          v187 = v187;
LABEL_111:
          if (v185 != v187)
          {
            goto LABEL_250;
          }

          if (v185 < 1)
          {
            goto LABEL_158;
          }

          break;
        case 2:
          v189 = *(v173 + 16);
          v188 = *(v173 + 24);
          v105 = __OFSUB__(v188, v189);
          v187 = v188 - v189;
          if (!v105)
          {
            goto LABEL_111;
          }

          goto LABEL_256;
        case 3:
          if (v185)
          {
            goto LABEL_250;
          }

          goto LABEL_158;
        default:
          v187 = v179;
          goto LABEL_111;
      }

      v190 = v173 >> 8;
      v191 = v173 >> 16;
      v192 = v173 >> 24;
      v193 = v173 >> 40;
      v194 = HIWORD(v173);
      v195 = HIBYTE(v173);
      v196 = v172 >> 8;
      switch(v184)
      {
        case 1:
          v221 = v181 >> 32;
          if (v181 >> 32 < v181)
          {
            goto LABEL_268;
          }

          v73 = v181;
          v222 = OUTLINED_FUNCTION_165();
          sub_257486740(v222, v223);
          v224 = OUTLINED_FUNCTION_165();
          sub_257486740(v224, v225);
          v226 = OUTLINED_FUNCTION_165();
          sub_257486740(v226, v227);
          v212 = sub_257742F64();
          if (!v212)
          {
            goto LABEL_140;
          }

          v228 = sub_257742F84();
          if (__OFSUB__(v73, v228))
          {
            goto LABEL_275;
          }

          v212 += v73 - v228;
LABEL_140:
          v74 = v221 - v73;
LABEL_141:
          sub_257742F74();
          OUTLINED_FUNCTION_154();
          v381 = v212;
          v229 = OUTLINED_FUNCTION_165();
          sub_257486798(v229, v230);
          v231 = OUTLINED_FUNCTION_165();
          sub_257486798(v231, v232);
          v233 = OUTLINED_FUNCTION_165();
          sub_257486798(v233, v234);
          OUTLINED_FUNCTION_336();
          if ((v235 & 1) == 0)
          {
            goto LABEL_250;
          }

          break;
        case 2:
          v205 = *(v181 + 16);
          v73 = *(v181 + 24);
          v206 = OUTLINED_FUNCTION_165();
          sub_257486740(v206, v207);
          v208 = OUTLINED_FUNCTION_165();
          sub_257486740(v208, v209);
          v210 = OUTLINED_FUNCTION_165();
          sub_257486740(v210, v211);
          v212 = sub_257742F64();
          if (!v212)
          {
            goto LABEL_125;
          }

          v213 = sub_257742F84();
          if (__OFSUB__(v205, v213))
          {
            goto LABEL_274;
          }

          v212 += v205 - v213;
LABEL_125:
          v105 = __OFSUB__(v73, v205);
          v74 = v73 - v205;
          if (!v105)
          {
            goto LABEL_141;
          }

          goto LABEL_269;
        case 3:
          memset(v390, 0, 14);
          if (!v180)
          {
            goto LABEL_143;
          }

          if (v180 == 2)
          {
            v214 = *(v173 + 16);
            v215 = *(v173 + 24);
            v216 = OUTLINED_FUNCTION_165();
            sub_257486740(v216, v217);
            v218 = sub_257742F64();
            if (v218)
            {
              v219 = sub_257742F84();
              if (__OFSUB__(v214, v219))
              {
                goto LABEL_294;
              }

              v218 += v214 - v219;
            }

            if (__OFSUB__(v215, v214))
            {
              goto LABEL_284;
            }

            v220 = sub_257742F74();
            v73 = 0xC000000000000000;
            if (!v218)
            {
              goto LABEL_304;
            }

            goto LABEL_157;
          }

          OUTLINED_FUNCTION_410();
          if (v116 != v105)
          {
            goto LABEL_283;
          }

          v236 = OUTLINED_FUNCTION_165();
          sub_257486740(v236, v237);
          v202 = sub_257742F64();
          if (v202)
          {
            sub_257742F84();
            OUTLINED_FUNCTION_357();
            if (v105)
            {
              goto LABEL_296;
            }

            v202 += v238;
          }

          v204 = sub_257742F74();
          if (!v202)
          {
            goto LABEL_303;
          }

          goto LABEL_150;
        default:
          v390[0] = v181;
          LOBYTE(v390[1]) = BYTE2(v181);
          HIBYTE(v390[1]) = BYTE3(v181);
          LOBYTE(v390[2]) = v182;
          HIBYTE(v390[2]) = BYTE5(v181);
          OUTLINED_FUNCTION_200();
          LOBYTE(v390[5]) = v198;
          HIBYTE(v390[5]) = v199;
          LOBYTE(v390[6]) = BYTE4(v171);
          HIBYTE(v390[6]) = BYTE5(v171);
          if (v197)
          {
            if (v197 == 1)
            {
              OUTLINED_FUNCTION_410();
              if (v116 != v105)
              {
                goto LABEL_282;
              }

              v200 = OUTLINED_FUNCTION_165();
              sub_257486740(v200, v201);
              v202 = sub_257742F64();
              if (v202)
              {
                sub_257742F84();
                OUTLINED_FUNCTION_357();
                if (v105)
                {
                  goto LABEL_295;
                }

                v202 += v203;
              }

              v204 = sub_257742F74();
              if (!v202)
              {
                goto LABEL_306;
              }

LABEL_150:
              v239 = OUTLINED_FUNCTION_208(v204);
              v241 = memcmp(v239, v202, v240);
              v242 = OUTLINED_FUNCTION_165();
              sub_257486798(v242, v243);
              if (v241)
              {
                goto LABEL_250;
              }
            }

            else
            {
              v244 = *(v173 + 16);
              v245 = *(v173 + 24);
              v246 = OUTLINED_FUNCTION_165();
              sub_257486740(v246, v247);
              v248 = sub_257742F64();
              if (v248)
              {
                v249 = sub_257742F84();
                if (__OFSUB__(v244, v249))
                {
                  goto LABEL_293;
                }

                v248 += v244 - v249;
              }

              if (__OFSUB__(v245, v244))
              {
                goto LABEL_285;
              }

              v220 = sub_257742F74();
              v73 = 0xC000000000000000;
              if (!v248)
              {
                goto LABEL_305;
              }

LABEL_157:
              v250 = OUTLINED_FUNCTION_315(v220);
              v251 = OUTLINED_FUNCTION_165();
              sub_257486798(v251, v252);
              v74 = v389;
              if (v250)
              {
                goto LABEL_250;
              }
            }
          }

          else
          {
LABEL_143:
            if (OUTLINED_FUNCTION_88(v196, v195, v179, v194, v193, v192, v191, v190))
            {
              goto LABEL_250;
            }
          }

          break;
      }
    }

LABEL_158:
    v253 = *(v67 + 5);
    v254 = *(v67 + 6);
    v256 = v62[5];
    v255 = v62[6];
    OUTLINED_FUNCTION_342();
    if (!v81)
    {
      switch(v260)
      {
        case 1:
          if (!__OFSUB__(v259, v258))
          {
            goto LABEL_173;
          }

          goto LABEL_264;
        case 2:
          if (!__OFSUB__(*(v258 + 24), *(v258 + 16)))
          {
            goto LABEL_173;
          }

          goto LABEL_265;
        default:
          goto LABEL_173;
      }
    }

    if (v258 || (v254 == v73 ? (v261 = v257 >= 3) : (v261 = 0), !v261 || v256 || v255 != v73))
    {
LABEL_173:
      OUTLINED_FUNCTION_339();
      switch(v269)
      {
        case 1:
          LODWORD(v270) = v266 - v256;
          if (__OFSUB__(v266, v256))
          {
            goto LABEL_258;
          }

          v270 = v270;
LABEL_182:
          if (v268 != v270)
          {
            goto LABEL_250;
          }

          if (v268 < 1)
          {
            goto LABEL_224;
          }

          break;
        case 2:
          v272 = *(v256 + 16);
          v271 = *(v256 + 24);
          v105 = __OFSUB__(v271, v272);
          v270 = v271 - v272;
          if (!v105)
          {
            goto LABEL_182;
          }

          goto LABEL_259;
        case 3:
          if (v268)
          {
            goto LABEL_250;
          }

          goto LABEL_224;
        default:
          v270 = v262;
          goto LABEL_182;
      }

      v273 = v256 >> 32;
      v274 = v256 >> 8;
      v275 = v256 >> 16;
      v276 = v256 >> 24;
      v277 = v256 >> 40;
      v278 = HIWORD(v256);
      v279 = HIBYTE(v256);
      v280 = v255 >> 8;
      switch(v267)
      {
        case 1:
          v310 = v264 >> 32;
          if (v264 >> 32 < v264)
          {
            goto LABEL_270;
          }

          v73 = v264;
          v311 = OUTLINED_FUNCTION_165();
          sub_257486740(v311, v312);
          v313 = OUTLINED_FUNCTION_165();
          sub_257486740(v313, v314);
          v315 = OUTLINED_FUNCTION_165();
          sub_257486740(v315, v316);
          v298 = sub_257742F64();
          if (!v298)
          {
            goto LABEL_208;
          }

          v317 = sub_257742F84();
          if (__OFSUB__(v73, v317))
          {
            goto LABEL_277;
          }

          v298 += v73 - v317;
LABEL_208:
          v74 = v310 - v73;
LABEL_209:
          sub_257742F74();
          OUTLINED_FUNCTION_154();
          v381 = v298;
          v318 = OUTLINED_FUNCTION_165();
          sub_257486798(v318, v319);
          v320 = OUTLINED_FUNCTION_165();
          sub_257486798(v320, v321);
          v322 = OUTLINED_FUNCTION_165();
          sub_257486798(v322, v323);
          OUTLINED_FUNCTION_336();
          if ((v324 & 1) == 0)
          {
            goto LABEL_250;
          }

          break;
        case 2:
          v291 = *(v264 + 16);
          v73 = *(v264 + 24);
          v292 = OUTLINED_FUNCTION_165();
          sub_257486740(v292, v293);
          v294 = OUTLINED_FUNCTION_165();
          sub_257486740(v294, v295);
          v296 = OUTLINED_FUNCTION_165();
          sub_257486740(v296, v297);
          v298 = sub_257742F64();
          if (!v298)
          {
            goto LABEL_192;
          }

          v299 = sub_257742F84();
          if (__OFSUB__(v291, v299))
          {
            goto LABEL_276;
          }

          v298 += v291 - v299;
LABEL_192:
          v105 = __OFSUB__(v73, v291);
          v74 = v73 - v291;
          if (!v105)
          {
            goto LABEL_209;
          }

          goto LABEL_271;
        case 3:
          memset(v390, 0, 14);
          if (!v263)
          {
            goto LABEL_211;
          }

          if (v263 == 2)
          {
            v300 = *(v256 + 16);
            v301 = *(v256 + 24);
            v302 = OUTLINED_FUNCTION_165();
            sub_257486740(v302, v303);
            v304 = sub_257742F64();
            if (v304)
            {
              v305 = sub_257742F84();
              if (__OFSUB__(v300, v305))
              {
                goto LABEL_297;
              }

              v304 += v300 - v305;
            }

            if (__OFSUB__(v301, v300))
            {
              goto LABEL_288;
            }

            v306 = sub_257742F74();
            v73 = 0xC000000000000000;
            if (!v304)
            {
              goto LABEL_308;
            }

            v307 = OUTLINED_FUNCTION_315(v306);
            v308 = OUTLINED_FUNCTION_165();
            sub_257486798(v308, v309);
            v74 = v389;
            if (v307)
            {
              goto LABEL_250;
            }
          }

          else
          {
            v375 = v256;
            if (v273 < v256)
            {
              goto LABEL_286;
            }

            v325 = OUTLINED_FUNCTION_165();
            sub_257486740(v325, v326);
            v327 = sub_257742F64();
            if (v327)
            {
              v328 = v327;
              sub_257742F84();
              OUTLINED_FUNCTION_357();
              if (v105)
              {
                goto LABEL_298;
              }

              v372 = v329 + v328;
            }

            else
            {
              v372 = 0;
            }

            v342 = sub_257742F74();
            if (!v372)
            {
              goto LABEL_307;
            }

            v343 = OUTLINED_FUNCTION_208(v342);
            v346 = memcmp(v343, v344, v345);
            v347 = OUTLINED_FUNCTION_165();
            sub_257486798(v347, v348);
            if (v346)
            {
              goto LABEL_250;
            }
          }

          break;
        default:
          v390[0] = v264;
          LOBYTE(v390[1]) = BYTE2(v264);
          HIBYTE(v390[1]) = BYTE3(v264);
          LOBYTE(v390[2]) = v265;
          HIBYTE(v390[2]) = BYTE5(v264);
          OUTLINED_FUNCTION_200();
          LOBYTE(v390[5]) = v282;
          HIBYTE(v390[5]) = v283;
          LOBYTE(v390[6]) = BYTE4(v254);
          HIBYTE(v390[6]) = BYTE5(v254);
          if (v281)
          {
            if (v281 == 1)
            {
              if (v273 < v256)
              {
                goto LABEL_287;
              }

              v284 = OUTLINED_FUNCTION_165();
              sub_257486740(v284, v285);
              v286 = OUTLINED_FUNCTION_165();
              sub_257486740(v286, v287);
              v288 = v255 & 0x3FFFFFFFFFFFFFFFLL;
              v289 = v256;
              v290 = v256 >> 32;
            }

            else
            {
              v330 = *(v256 + 16);
              v331 = *(v256 + 24);
              v332 = OUTLINED_FUNCTION_165();
              sub_257486740(v332, v333);
              v334 = OUTLINED_FUNCTION_165();
              sub_257486740(v334, v335);
              v288 = v255 & 0x3FFFFFFFFFFFFFFFLL;
              v289 = v330;
              v290 = v331;
            }

            v336 = v381;
            v337 = sub_257483200(v289, v290, v288, v390);
            v338 = OUTLINED_FUNCTION_165();
            sub_257486798(v338, v339);
            v340 = OUTLINED_FUNCTION_165();
            sub_257486798(v340, v341);
            v381 = v336;
            if (v336)
            {
              goto LABEL_309;
            }

            if ((v337 & 1) == 0)
            {
              goto LABEL_250;
            }
          }

          else
          {
LABEL_211:
            if (OUTLINED_FUNCTION_88(v280, v279, v262, v278, v277, v276, v275, v274))
            {
              goto LABEL_250;
            }
          }

          break;
      }
    }

LABEL_224:
    v349 = *(v384 + 40);
    v350 = *(v388 + 48);
    sub_257487308();
    sub_257487308();
    OUTLINED_FUNCTION_65(v24);
    if (!v81)
    {
      v353 = v387;
      sub_257487308();
      OUTLINED_FUNCTION_65(v24 + v350);
      if (v354)
      {
        OUTLINED_FUNCTION_308();
        sub_257479298();
LABEL_245:
        v368 = &qword_27F879C98;
        v369 = &qword_2577445B0;
      }

      else
      {
        v355 = v386;
        sub_2574792EC();
        if (*v353 != *v355)
        {
          goto LABEL_248;
        }

        v375 = v24;
        v356 = *(v74 + 20);
        v357 = v377;
        v358 = *(v376 + 48);
        sub_257487308();
        sub_257487308();
        OUTLINED_FUNCTION_80(v357, 1);
        if (v81)
        {
          OUTLINED_FUNCTION_42_0(v357 + v358);
          if (!v81)
          {
            goto LABEL_247;
          }

          sub_2574695E4(v357, &qword_27F879C80, &qword_25776D180);
          v24 = v375;
          goto LABEL_238;
        }

        OUTLINED_FUNCTION_392(&a18);
        sub_257487308();
        OUTLINED_FUNCTION_42_0(v357 + v358);
        if (!v359)
        {
          OUTLINED_FUNCTION_180(&a17);
          sub_2574792EC();
          OUTLINED_FUNCTION_229();
          sub_257530D2C();
          v361 = v360;
          sub_257479298();
          OUTLINED_FUNCTION_366();
          sub_257479298();
          sub_2574695E4(v357, &qword_27F879C80, &qword_25776D180);
          v74 = v389;
          v24 = v375;
          if ((v361 & 1) == 0)
          {
            goto LABEL_248;
          }

LABEL_238:
          v362 = *(v74 + 24);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_1();
          sub_257483ACC(&qword_27F879B68, v363);
          LOBYTE(v362) = sub_257743644();
          sub_257479298();
          sub_257479298();
          v364 = OUTLINED_FUNCTION_365();
          sub_2574695E4(v364, v365, &unk_2577530D0);
          v73 = 0xC000000000000000;
          if ((v362 & 1) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_239;
        }

        sub_257479298();
LABEL_247:
        sub_2574695E4(v357, &qword_27F879C88, &unk_2577445A0);
        v24 = v375;
LABEL_248:
        sub_257479298();
        OUTLINED_FUNCTION_361();
        sub_257479298();
        v368 = &qword_27F879C90;
        v369 = &unk_2577530D0;
      }

      sub_2574695E4(v24, v368, v369);
LABEL_250:
      sub_257479298();
      OUTLINED_FUNCTION_262();
      sub_257479298();
LABEL_251:
      v370 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_65(v24 + v350);
    if (!v81)
    {
      goto LABEL_245;
    }

    v351 = OUTLINED_FUNCTION_365();
    sub_2574695E4(v351, v352, &unk_2577530D0);
LABEL_239:
    if (v67[56] != *(v62 + 56))
    {
      goto LABEL_250;
    }

    v366 = *(v384 + 36);
    sub_2577431B4();
    OUTLINED_FUNCTION_0_1();
    sub_257483ACC(&qword_27F879B68, v367);
    LOBYTE(v366) = OUTLINED_FUNCTION_143();
    sub_257479298();
    sub_257479298();
    if (v366)
    {
      v69 = v383 + 1;
      if (v383 + 1 != v385)
      {
        continue;
      }
    }

    goto LABEL_251;
  }

LABEL_31:
  OUTLINED_FUNCTION_339();
  switch(v101)
  {
    case 1:
      LODWORD(v102) = v98 - v88;
      if (__OFSUB__(v98, v88))
      {
        goto LABEL_254;
      }

      v102 = v102;
LABEL_40:
      if (v100 != v102)
      {
        goto LABEL_250;
      }

      if (v100 < 1)
      {
        goto LABEL_87;
      }

      break;
    case 2:
      v104 = *(v88 + 16);
      v103 = *(v88 + 24);
      v105 = __OFSUB__(v103, v104);
      v102 = v103 - v104;
      if (!v105)
      {
        goto LABEL_40;
      }

      goto LABEL_255;
    case 3:
      if (v100)
      {
        goto LABEL_250;
      }

      goto LABEL_87;
    default:
      v102 = v94;
      goto LABEL_40;
  }

  v106 = v88 >> 8;
  v107 = v88 >> 16;
  v108 = v88 >> 24;
  v109 = v88 >> 40;
  v110 = HIWORD(v88);
  v111 = HIBYTE(v88);
  v112 = v87 >> 8;
  switch(v99)
  {
    case 1:
      v138 = v96 >> 32;
      if (v96 >> 32 < v96)
      {
        goto LABEL_266;
      }

      v73 = v96;
      v139 = OUTLINED_FUNCTION_165();
      sub_257486740(v139, v140);
      v141 = OUTLINED_FUNCTION_165();
      sub_257486740(v141, v142);
      v143 = OUTLINED_FUNCTION_165();
      sub_257486740(v143, v144);
      v129 = sub_257742F64();
      if (!v129)
      {
        goto LABEL_69;
      }

      v145 = sub_257742F84();
      if (__OFSUB__(v73, v145))
      {
        goto LABEL_273;
      }

      v129 += v73 - v145;
LABEL_69:
      v74 = v138 - v73;
LABEL_70:
      sub_257742F74();
      OUTLINED_FUNCTION_154();
      v381 = v129;
      v146 = OUTLINED_FUNCTION_165();
      sub_257486798(v146, v147);
      v148 = OUTLINED_FUNCTION_165();
      sub_257486798(v148, v149);
      v150 = OUTLINED_FUNCTION_165();
      sub_257486798(v150, v151);
      OUTLINED_FUNCTION_336();
      if ((v152 & 1) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_87;
    case 2:
      v122 = *(v96 + 16);
      v73 = *(v96 + 24);
      v123 = OUTLINED_FUNCTION_165();
      sub_257486740(v123, v124);
      v125 = OUTLINED_FUNCTION_165();
      sub_257486740(v125, v126);
      v127 = OUTLINED_FUNCTION_165();
      sub_257486740(v127, v128);
      v129 = sub_257742F64();
      if (!v129)
      {
        goto LABEL_54;
      }

      v130 = sub_257742F84();
      if (__OFSUB__(v122, v130))
      {
        goto LABEL_272;
      }

      v129 += v122 - v130;
LABEL_54:
      v105 = __OFSUB__(v73, v122);
      v74 = v73 - v122;
      if (!v105)
      {
        goto LABEL_70;
      }

      goto LABEL_267;
    case 3:
      memset(v390, 0, 14);
      if (!v95)
      {
        goto LABEL_72;
      }

      if (v95 == 2)
      {
        v131 = *(v88 + 16);
        v132 = *(v88 + 24);
        v133 = OUTLINED_FUNCTION_165();
        sub_257486740(v133, v134);
        v135 = sub_257742F64();
        if (v135)
        {
          v136 = sub_257742F84();
          if (__OFSUB__(v131, v136))
          {
            goto LABEL_289;
          }

          v135 += v131 - v136;
        }

        if (__OFSUB__(v132, v131))
        {
          goto LABEL_280;
        }

        v137 = sub_257742F74();
        v73 = 0xC000000000000000;
        if (!v135)
        {
          goto LABEL_300;
        }

LABEL_86:
        v167 = OUTLINED_FUNCTION_315(v137);
        v168 = OUTLINED_FUNCTION_165();
        sub_257486798(v168, v169);
        v74 = v389;
        if (v167)
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      OUTLINED_FUNCTION_410();
      if (v116 != v105)
      {
        goto LABEL_278;
      }

      v153 = OUTLINED_FUNCTION_165();
      sub_257486740(v153, v154);
      v119 = sub_257742F64();
      if (v119)
      {
        sub_257742F84();
        OUTLINED_FUNCTION_357();
        if (v105)
        {
          goto LABEL_292;
        }

        v119 += v155;
      }

      v121 = sub_257742F74();
      if (v119)
      {
LABEL_79:
        v156 = OUTLINED_FUNCTION_208(v121);
        v158 = memcmp(v156, v119, v157);
        v159 = OUTLINED_FUNCTION_165();
        sub_257486798(v159, v160);
        if (v158)
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      MEMORY[0x259C65580](v381);
      __break(1u);
      return;
    default:
      v390[0] = v96;
      LOBYTE(v390[1]) = BYTE2(v96);
      HIBYTE(v390[1]) = BYTE3(v96);
      LOBYTE(v390[2]) = v97;
      HIBYTE(v390[2]) = BYTE5(v96);
      OUTLINED_FUNCTION_200();
      LOBYTE(v390[5]) = v114;
      HIBYTE(v390[5]) = v115;
      LOBYTE(v390[6]) = BYTE4(v86);
      HIBYTE(v390[6]) = BYTE5(v86);
      if (!v113)
      {
LABEL_72:
        if (OUTLINED_FUNCTION_88(v112, v111, v94, v110, v109, v108, v107, v106))
        {
          goto LABEL_250;
        }

        goto LABEL_87;
      }

      if (v113 == 1)
      {
        OUTLINED_FUNCTION_410();
        if (v116 != v105)
        {
          goto LABEL_279;
        }

        v117 = OUTLINED_FUNCTION_165();
        sub_257486740(v117, v118);
        v119 = sub_257742F64();
        if (v119)
        {
          sub_257742F84();
          OUTLINED_FUNCTION_357();
          if (v105)
          {
            goto LABEL_291;
          }

          v119 += v120;
        }

        v121 = sub_257742F74();
        if (!v119)
        {
          goto LABEL_302;
        }

        goto LABEL_79;
      }

      v161 = *(v88 + 16);
      v162 = *(v88 + 24);
      v163 = OUTLINED_FUNCTION_165();
      sub_257486740(v163, v164);
      v165 = sub_257742F64();
      if (v165)
      {
        v166 = sub_257742F84();
        if (__OFSUB__(v161, v166))
        {
          goto LABEL_290;
        }

        v165 += v161 - v166;
      }

      if (__OFSUB__(v162, v161))
      {
        goto LABEL_281;
      }

      v137 = sub_257742F74();
      v73 = 0xC000000000000000;
      if (!v165)
      {
        goto LABEL_301;
      }

      goto LABEL_86;
  }
}

void sub_257481CB8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_40_0(v11);
    while (1)
    {
      OUTLINED_FUNCTION_222();
      sub_257483824();
      OUTLINED_FUNCTION_229();
      sub_257483824();
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      v13 = *(v2 + 16);
      v14 = *(v1 + 16);
      if (*(v1 + 24) == 1)
      {
        switch(v14)
        {
          case 1:
            if (v13 != 1)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 2:
            if (v13 != 2)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 3:
            if (v13 != 3)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 4:
            if (v13 != 4)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 5:
            if (v13 != 5)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          case 6:
            if (v13 != 6)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
          default:
            if (v13)
            {
              goto LABEL_35;
            }

            goto LABEL_13;
        }
      }

      if (v13 != v14)
      {
        break;
      }

LABEL_13:
      if (*(v2 + 32) != *(v1 + 32))
      {
        break;
      }

      if (*(v2 + 40) != *(v1 + 40))
      {
        break;
      }

      if (*(v2 + 48) != *(v1 + 48))
      {
        break;
      }

      if (*(v2 + 56) != *(v1 + 56))
      {
        break;
      }

      if (*(v2 + 64) != *(v1 + 64))
      {
        break;
      }

      v15 = *(v2 + 72);
      v16 = *(v1 + 72);
      sub_257481FE8();
      if ((v17 & 1) == 0 || *(v2 + 80) != *(v1 + 80))
      {
        break;
      }

      v18 = *(v6 + 56);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v19);
      v20 = OUTLINED_FUNCTION_192();
      sub_257479298();
      OUTLINED_FUNCTION_252();
      sub_257479298();
      if (v20)
      {
        OUTLINED_FUNCTION_67();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

LABEL_35:
    sub_257479298();
    OUTLINED_FUNCTION_204();
    sub_257479298();
  }

LABEL_36:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_257481FE8()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_216();
  v21 = v6(v5);
  v7 = OUTLINED_FUNCTION_18_0(v21);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_325();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61(v11);
    v14 = v3 + v13;
    v15 = v0 + v13;
    v17 = *(v16 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_194();
      sub_257483824();
      sub_257483824();
      if (*v2 != *v1 || *(v2 + 8) != *(v1 + 8))
      {
        break;
      }

      v18 = *(v21 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v19);
      v20 = OUTLINED_FUNCTION_430();
      OUTLINED_FUNCTION_262();
      sub_257479298();
      OUTLINED_FUNCTION_230();
      sub_257479298();
      if (v20)
      {
        v15 += v17;
        v14 += v17;
        OUTLINED_FUNCTION_377();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_262();
    sub_257479298();
    OUTLINED_FUNCTION_230();
    sub_257479298();
  }

LABEL_14:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257482390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_298();
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 == v2)
        {
          return result;
        }

        if (v7 >= v2)
        {
          __break(1u);
          return result;
        }

        v4 = *(v3 + 8 * v7);
        v5 = *(a2 + 32 + 8 * v7++);
        v6 = *(v4 + 16);
        if (v6 != *(v5 + 16))
        {
          return result;
        }
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return OUTLINED_FUNCTION_298();
  }

  return 1;
}

void sub_25748244C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_287();
  v4 = type metadata accessor for SizeRange();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_62();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_324();
  if (v11 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_61(v10);
    v13 = v2 + v12;
    v14 = v0 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_176();
      sub_257483824();
      OUTLINED_FUNCTION_262();
      sub_257483824();
      if (*v1 != *v8 || v1[1] != v8[1])
      {
        break;
      }

      v17 = *(type metadata accessor for Proto_SizeRange(0) + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v18);
      v19 = sub_257743644();
      sub_257479298();
      OUTLINED_FUNCTION_409();
      sub_257479298();
      if (v19)
      {
        v14 += v16;
        v13 += v16;
        if (--v3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_257479298();
    OUTLINED_FUNCTION_173();
    sub_257479298();
  }

LABEL_13:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

void sub_25748264C()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_ArrayFeatureType.Shape(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v18 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61(v11);
    OUTLINED_FUNCTION_340(v12);
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      v13 = *v2;
      v14 = *v1;
      OUTLINED_FUNCTION_213();
      if (!v18)
      {
LABEL_22:
        sub_257479298();
        OUTLINED_FUNCTION_204();
        sub_257479298();
        goto LABEL_23;
      }

      v18 = !v15 || v16 == v17;
      if (!v18)
      {
        break;
      }

LABEL_17:
      v22 = *(v6 + 20);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v23);
      v24 = OUTLINED_FUNCTION_260();
      sub_257479298();
      OUTLINED_FUNCTION_264();
      sub_257479298();
      if (v24)
      {
        OUTLINED_FUNCTION_411();
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_364();
    while (v19)
    {
      if (*v20 != *v21)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_347();
      if (v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_25748286C()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_216();
  v21 = v6(v5);
  v7 = OUTLINED_FUNCTION_18_0(v21);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_276();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_325();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61(v11);
    v14 = v3 + v13;
    v15 = v0 + v13;
    v17 = *(v16 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_194();
      sub_257483824();
      sub_257483824();
      if (*v2 != *v1 || v2[1] != v1[1])
      {
        break;
      }

      v18 = *(v21 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v19);
      v20 = OUTLINED_FUNCTION_430();
      OUTLINED_FUNCTION_262();
      sub_257479298();
      OUTLINED_FUNCTION_230();
      sub_257479298();
      if (v20)
      {
        v15 += v17;
        v14 += v17;
        OUTLINED_FUNCTION_377();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_262();
    sub_257479298();
    OUTLINED_FUNCTION_230();
    sub_257479298();
  }

LABEL_14:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257482A08(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_257482A7C(uint64_t a1, uint64_t a2)
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
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      if (*v3 == 1)
      {
        result = 0;
        if (!*v4 || ((v6 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      else
      {
        if (v5 == v6)
        {
          v8 = *v4;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_289();
}

void sub_257482AFC()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_133();
  v6 = type metadata accessor for Proto_Tensor(v5);
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_279();
  if (v18 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_61(v11);
    OUTLINED_FUNCTION_340(v12);
    while (1)
    {
      OUTLINED_FUNCTION_385();
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_346();
      if (!v18 || (v13 = *(v2 + 8), v14 = *(v1 + 8), OUTLINED_FUNCTION_213(), !v18))
      {
LABEL_24:
        sub_257479298();
        OUTLINED_FUNCTION_204();
        sub_257479298();
        goto LABEL_25;
      }

      v18 = !v15 || v16 == v17;
      if (!v18)
      {
        break;
      }

LABEL_19:
      v22 = *(v6 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v23);
      v24 = OUTLINED_FUNCTION_260();
      sub_257479298();
      OUTLINED_FUNCTION_264();
      sub_257479298();
      if (v24)
      {
        OUTLINED_FUNCTION_411();
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_364();
    while (v19)
    {
      if (*v20 != *v21)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_347();
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_35();
  }
}

void sub_257482CE4()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_257();
  v8 = type metadata accessor for Proto_LossLayer.OneOf_LossLayerType(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_1();
  v39 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C48, &qword_257744560);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_190(v17, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C50, &qword_257744568);
  OUTLINED_FUNCTION_4(v42);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_64();
  v40 = type metadata accessor for Proto_LossLayer(v21);
  v22 = OUTLINED_FUNCTION_18_0(v40);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_270();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_333();
  if (v33 && v0 && v1 != v6)
  {
    v41 = v8;
    OUTLINED_FUNCTION_61(v26);
    OUTLINED_FUNCTION_337(v27);
    v28 = v40;
    while (1)
    {
      sub_257483824();
      OUTLINED_FUNCTION_343();
      sub_257483824();
      v29 = *v4;
      v30 = v4[1];
      OUTLINED_FUNCTION_402();
      v33 = v33 && v31 == v32;
      if (!v33 && (sub_257743994() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_353();
      OUTLINED_FUNCTION_353();
      OUTLINED_FUNCTION_155(v3, 1, v41);
      if (v33)
      {
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (!v33)
        {
          goto LABEL_24;
        }

        sub_2574695E4(v3, &qword_27F879C48, v2);
      }

      else
      {
        OUTLINED_FUNCTION_353();
        OUTLINED_FUNCTION_35_0(v3 + v6);
        if (v34)
        {
          sub_257479298();
LABEL_24:
          sub_2574695E4(v3, &qword_27F879C50, &qword_257744568);
          break;
        }

        OUTLINED_FUNCTION_386();
        OUTLINED_FUNCTION_321();
        sub_257533840();
        v36 = v35;
        v28 = v40;
        sub_257479298();
        sub_257479298();
        sub_2574695E4(v3, &qword_27F879C48, v2);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(v28 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_1();
      sub_257483ACC(&qword_27F879B68, v38);
      v6 = OUTLINED_FUNCTION_382();
      sub_257479298();
      OUTLINED_FUNCTION_415();
      sub_257479298();
      if (v6)
      {
        OUTLINED_FUNCTION_323();
        if (!v33)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    sub_257479298();
    OUTLINED_FUNCTION_165();
    sub_257479298();
  }

LABEL_26:
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257483094@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_257483200(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a4 = result & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        result = MEMORY[0x259C65580](v4);
        __break(1u);
      }

      return result;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_257483200(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_257742F64();
  v8 = result;
  if (result)
  {
    result = sub_257742F84();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_257742F74();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_2574832B8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_267();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_4(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_173();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_173();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_257483384(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574833A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574833F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_257483444(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_25748346C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

char *sub_2574834A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_0(a3, result);
  }

  return result;
}

uint64_t sub_257483584(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_267();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_222(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_4(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_173();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_173();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_257483674()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574836CC()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257483724()
{
  v1 = *v0;
  sub_257485CBC();
  *v0 = v2;
}

char *sub_257483754(char *a1, int64_t a2, char a3)
{
  result = sub_257485548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257483774()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574837CC()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

uint64_t sub_257483824()
{
  OUTLINED_FUNCTION_267();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_205();
  v6(v5);
  return v0;
}

void sub_25748389C()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574838F4()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

_OWORD *sub_25748396C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25748397C()
{
  result = qword_27F879C10;
  if (!qword_27F879C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F879C08, &qword_2577709D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F879C10);
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

uint64_t sub_257483A28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
    }

    else if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_257483ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257483B84()
{
  result = type metadata accessor for Proto_Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257483BF4()
{
  result = type metadata accessor for PipelineClassifierConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PipelineRegressorConfiguration(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PipelineConfiguration(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IdentityModelConfiguration();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CustomModelConfiguration();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for LinkedModelConfiguration();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for SerializedModelConfiguration();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FeatureVectorizerConfiguration(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for DictionaryVectorizerConfiguration();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ImputerConfiguration();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for CategoricalMappingConfiguration();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for OneHotEncoderConfiguration();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for NormalizerConfiguration();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for ScalerConfiguration();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for NonMaximumSuppressorConfiguration(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for LinearClassifierConfiguration();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for LinearRegressorConfiguration();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TreeEnsembleClassifierConfiguration();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TreeEnsembleRegressorConfiguration();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for ArrayFeatureExtractorConfiguration();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for AudioFeaturePrintKind(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for VisionFeaturePrintKind(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for SoundAnalysisPreprocessorKind(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for WordTaggerConfiguration();
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for WordEmbeddingConfiguration();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TextClassifierConfiguration();
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for GazetteerConfiguration();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for ItemSimilarityRecommenderConfiguration(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for NeuralNetwork();
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for NeuralNetworkClassifier();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for NeuralNetworkRegressor();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for MLProgram();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for ODIELibrary();
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for ClassConfidenceThresholding();
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for SupportVectorClassifierConfiguration(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for SupportVectorRegressorConfiguration(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for BayesianProbitRegressorConfiguration(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for NearestNeighborsConfiguration(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

  return result;
}

void sub_257483F38()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257483F90()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257483FE8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484040(char *a1, int64_t a2, char a3)
{
  result = sub_257485650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484060()
{
  v1 = *v0;
  sub_257485788();
  *v0 = v2;
}

void sub_2574840A0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574840F8()
{
  v1 = *v0;
  sub_2574862E4();
  *v0 = v2;
}

void sub_257484138()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484190()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574841E8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484240()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484298()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574842F0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484348()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574843A0()
{
  v1 = *v0;
  sub_2574862E4();
  *v0 = v2;
}

void sub_2574843E0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484438()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484490()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574844E8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484540(char *a1, int64_t a2, char a3)
{
  result = sub_257485BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484560()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574845B8()
{
  v1 = *v0;
  sub_257485CBC();
  *v0 = v2;
}

void sub_2574845E8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484640()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484698()
{
  v1 = *v0;
  sub_257485CBC();
  *v0 = v2;
}

void sub_2574846C8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484720()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484778()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574847D0()
{
  v1 = *v0;
  sub_257485D88();
  *v0 = v2;
}

void sub_257484810()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484868()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574848C0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484918()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484970()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574849C8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484A20(char *a1, int64_t a2, char a3)
{
  result = sub_257485EF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484A40()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484A98()
{
  v1 = *v0;
  sub_257485D88();
  *v0 = v2;
}

void sub_257484AD8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484B30()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484B88()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484BE0(char *a1, int64_t a2, char a3)
{
  result = sub_257486000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484C00()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484C58()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484CB0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484D08()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484D60()
{
  v1 = *v0;
  sub_257486218();
  *v0 = v2;
}

void sub_257484D90()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484DE8(char *a1, int64_t a2, char a3)
{
  result = sub_257486100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484E08()
{
  v1 = *v0;
  sub_257486218();
  *v0 = v2;
}

void sub_257484E38()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484E90()
{
  v1 = *v0;
  sub_2574862E4();
  *v0 = v2;
}

void sub_257484ED0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484F28()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257484F80(char *a1, int64_t a2, char a3)
{
  result = sub_2574863C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257484FA0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257484FF8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485050()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574850A8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485100()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485158()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574851B0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485208()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485260()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574852B8()
{
  v1 = *v0;
  sub_2574864C8();
  *v0 = v2;
}

void sub_2574852F8()
{
  v1 = *v0;
  sub_2574864C8();
  *v0 = v2;
}

void sub_257485338()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485390()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574853E8()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485440()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_257485498()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

void sub_2574854F0()
{
  v1 = *v0;
  sub_2574865B8();
  *v0 = v2;
}

char *sub_257485548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257485650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B40, &unk_257744100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_257485788()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_379(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      v16 = OUTLINED_FUNCTION_201();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

void sub_257485894()
{
  OUTLINED_FUNCTION_25();
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FF0, &qword_257744928);
    v9 = OUTLINED_FUNCTION_431();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_211();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FF8, &unk_257744930);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

void sub_2574859AC()
{
  OUTLINED_FUNCTION_25();
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A008, &qword_257744940);
    v9 = OUTLINED_FUNCTION_431();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = OUTLINED_FUNCTION_211();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A010, &qword_257744948);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

void sub_257485AC4()
{
  OUTLINED_FUNCTION_25();
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A030, &qword_257744968);
    v9 = OUTLINED_FUNCTION_46();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_418();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[4 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_211();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A028, &qword_257744960);
    OUTLINED_FUNCTION_211();
    swift_arrayInitWithCopy();
  }
}

char *sub_257485BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E58, &qword_257744780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_257485CBC()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_379(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_46();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_418();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[8 * v11] <= v15)
    {
      memmove(v15, v16, 8 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v11);
  }
}

void sub_257485D88()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_186();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v5 ^ v6 | v22)
  {
    v14 = v2;
  }

  else
  {
    v14 = v13;
  }

  if (!v14)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_379(v7, v8, v9, v10, v11, v12);
  v15 = OUTLINED_FUNCTION_173();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_24(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_352();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21 - v3 == 0x8000000000000000 && v19 == -1;
  if (v22)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_349(v21 - v3);
LABEL_17:
  v23 = OUTLINED_FUNCTION_173();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v23, v24) - 8) + 80);
  OUTLINED_FUNCTION_193();
  if (v1)
  {
    sub_257483584(v0 + v26, v2, v20 + v26);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  OUTLINED_FUNCTION_35();
}

char *sub_257485EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D10, &unk_257744630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257486000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F28, &qword_257744850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_257486100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B08, &qword_2577440C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_257486218()
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_20();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_379(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_46();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_418();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v11] <= v15)
    {
      memmove(v15, v16, 16 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v11);
  }
}

void sub_2574862E4()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_20();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_379(v6, v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_46();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_418();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[v2 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_201();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

char *sub_2574863C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E40, &qword_257744760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2574864C8()
{
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_186();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_20();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_379(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_349(v16 - 32);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[24 * v2 + 32] <= v15 + 32)
    {
      v18 = OUTLINED_FUNCTION_201();
      memmove(v18, v19, v20);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_201();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_434();
}

void sub_2574865B8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    OUTLINED_FUNCTION_8();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_20();
      if (v11)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7();
    }
  }

  OUTLINED_FUNCTION_416();
  if (v11 ^ v12 | v26)
  {
    v20 = v0;
  }

  else
  {
    v20 = v19;
  }

  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_379(v13, v14, v15, v16, v17, v18);
  v21 = v5(0);
  OUTLINED_FUNCTION_24(v21);
  v23 = *(v22 + 72);
  v24 = OUTLINED_FUNCTION_352();
  v25 = _swift_stdlib_malloc_size(v24);
  if (!v23)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25 - v1 == 0x8000000000000000 && v23 == -1;
  if (v26)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_349(v25 - v1);
LABEL_17:
  v27 = *(*(v5(0) - 8) + 80);
  OUTLINED_FUNCTION_193();
  if (v9)
  {
    sub_2574832B8(v7 + v28, v0, v24 + v28, v3);
    *(v7 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_257486714(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_257486728(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_257486728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_257486740(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_257486798(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2574867F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC28C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25748685C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25748685C(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A028, &qword_257744960);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_257486A28(v7, v8, a1, v4);
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
    return sub_257486960(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257486960(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_257743994();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_257486A28(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_257743994();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_257743994()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = (v9 + a4);
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v93 = v9;
            v32 = (v9 - v10);
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (sub_257743994() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while ((v33 + 1) != v29);
            v10 = v29;
            v9 = v93;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_257469A28();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_257469A28();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v92;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25748707C((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_257486F50(&v96, *a1, a3);
LABEL_102:
}