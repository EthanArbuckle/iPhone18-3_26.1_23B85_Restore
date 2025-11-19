uint64_t sub_2576E3EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576E3EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_257743994() & 1;
  }
}

uint64_t sub_2576E3FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576E4024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_205();
  v8(v7);
  return a2;
}

uint64_t sub_2576E4080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return sub_2576E3EA4(v0, type metadata accessor for ModelKind);
}

void OUTLINED_FUNCTION_26_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 208);

  sub_25746EEC4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  v4 = *(v2 - 216);

  return sub_2576E4024(v1, v4, v0);
}

void sub_2576E431C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Proto_MILSpec_Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - v10;
  v11 = type metadata accessor for MLProgram.Value();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(type metadata accessor for Proto_MILSpec_ListValue(0) + 20);
  v29 = a2;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(a1 + 16);
  v34 = MEMORY[0x277D84F90];
  sub_257484C58();
  v21 = v34;
  v31 = a1;
  if (v20)
  {
    v22 = 0;
    v23 = *(a1 + 16);
    v32 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v33 = v23;
    while (v33 != v22)
    {
      sub_2576E79A8(v32 + *(v12 + 72) * v22, v16, type metadata accessor for MLProgram.Value);
      sub_2576E79A8(v16, v9, type metadata accessor for Proto_MILSpec_Value);
      sub_2576E7950(v16, type metadata accessor for MLProgram.Value);
      v34 = v21;
      v24 = *(v21 + 16);
      if (v24 >= *(v21 + 24) >> 1)
      {
        sub_257484C58();
        v21 = v34;
      }

      ++v22;
      *(v21 + 16) = v24 + 1;
      sub_2576E7A08(v9, v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for Proto_MILSpec_Value);
      if (v20 == v22)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v25 = v30;
    v26 = v31;
    while (1)
    {
      v27 = *(v26 + 16);
      if (v20 == v27)
      {

        *v29 = v21;
        return;
      }

      if (v20 >= v27)
      {
        break;
      }

      sub_2576E79A8(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v18, type metadata accessor for MLProgram.Value);
      sub_2576E79A8(v18, v25, type metadata accessor for Proto_MILSpec_Value);
      sub_2576E7950(v18, type metadata accessor for MLProgram.Value);
      v34 = v21;
      v28 = *(v21 + 16);
      if (v28 >= *(v21 + 24) >> 1)
      {
        sub_257484C58();
        v21 = v34;
      }

      *(v21 + 16) = v28 + 1;
      sub_2576E7A08(v25, v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, type metadata accessor for Proto_MILSpec_Value);
      ++v20;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2576E46F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(type metadata accessor for FeatureDescription() - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    v10 = *v9 == a2 && v9[1] == a3;
    if (v10 || (sub_257743994() & 1) != 0)
    {
      v11 = v6;
      goto LABEL_11;
    }

    ++v6;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t sub_2576E47EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_257743994() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_2576E48A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v231 = a7;
  v233 = a6;
  v237 = a5;
  v232 = a4;
  v245 = a2;
  v246 = a3;
  v244 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EA8, &unk_2577447D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v251 = &v212 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v250 = &v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v249 = &v212 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v256 = &v212 - v19;
  v255 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v20 = *(*(v255 - 8) + 64);
  MEMORY[0x28223BE20](v255);
  *&v257 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for MLProgram.Value.Representation(0);
  v22 = *(*(v254 - 8) + 64);
  MEMORY[0x28223BE20](v254);
  v253 = &v212 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v24 = *(*(v236 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v236);
  v248 = &v212 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v252 = &v212 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880698, &qword_25776CFE0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v221 = &v212 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v224 = &v212 - v32;
  v227 = type metadata accessor for MLProgram.Argument.Binding(0);
  v33 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v226 = (&v212 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for MLProgram.Operation();
  v229 = *(v35 - 8);
  v36 = *(v229 + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v228 = &v212 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v235 = &v212 - v39;
  v40 = type metadata accessor for MLProgram.Value();
  v247 = *(v40 - 8);
  v41 = *(v247 + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v212 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v234 = (&v212 - v45);
  v223 = type metadata accessor for MLProgram.Block();
  v219 = *(v223 - 8);
  v46 = *(v219 + 64);
  v47 = MEMORY[0x28223BE20](v223);
  v220 = &v212 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v212 - v50;
  MEMORY[0x28223BE20](v49);
  v238 = &v212 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880668, &unk_257774DB0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v57 = (&v212 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v59 = (&v212 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880730, &qword_25776D388);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v225 = &v212 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v65 = &v212 - v64;
  v66 = type metadata accessor for MLProgram.Function();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = &v212 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLProgram.functions.getter();
  sub_257657BA8(1852399981, 0xE400000000000000, v70, v65);

  v222 = v66;
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    sub_2574695E4(v65, &qword_27F880730, &qword_25776D388);
    sub_2576E6D44();
    swift_allocError();
    *v71 = 0;
    v71[1] = 0;
    return swift_willThrow();
  }

  sub_2576E7A08(v65, v69, type metadata accessor for MLProgram.Function);
  MLProgram.Function.blockSpecializations.getter();
  v74 = *(v73 + 16);

  if (v74 != 1)
  {
    goto LABEL_9;
  }

  MLProgram.Function.blockSpecializations.getter();
  sub_25763CD70(v75, v59);

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880428, &unk_25776C030);
  if (__swift_getEnumTagSinglePayload(v59, 1, v76) != 1)
  {
    v217 = v8;
    v79 = *v59;
    v78 = v59[1];
    sub_2576E7950(v59 + *(v76 + 48), type metadata accessor for MLProgram.Block);
    MLProgram.Function.blockSpecializations.getter();
    sub_25763CD70(v80, v57);

    if (__swift_getEnumTagSinglePayload(v57, 1, v76) == 1)
    {

      v77 = v57;
      goto LABEL_8;
    }

    v87 = v57[1];

    sub_2576E7A08(v57 + *(v76 + 48), v51, type metadata accessor for MLProgram.Block);
    v88 = v51;
    v89 = v238;
    sub_2576E7A08(v88, v238, type metadata accessor for MLProgram.Block);
    if ((sub_2576E6204() & 1) == 0)
    {

      sub_2576E7950(v89, type metadata accessor for MLProgram.Block);
      goto LABEL_9;
    }

    v214 = v79;
    v216 = v78;
    v90 = swift_allocBox();
    LOBYTE(v258) = 1;
    v91 = MEMORY[0x277D84F90];
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v92 = v244;
    v93 = *(v244 + 16);
    v215 = v69;
    if (v93)
    {
      v213 = v90;
      v259 = v91;
      sub_257484A40();
      v94 = (v92 + 40);
      v95 = v259;
      v218 = xmmword_2577442B0;
      v212 = v93;
      v96 = v257;
      v97 = v44;
      v99 = v252;
      v98 = v253;
      do
      {
        v243 = v93;
        v244 = v95;
        v101 = *(v94 - 1);
        v100 = *v94;
        v239 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
        v102 = swift_allocObject();
        *(v102 + 16) = v218;
        *(v102 + 32) = v101;
        *(v102 + 40) = v100;
        LOBYTE(v258) = 1;
        v240 = v100;
        swift_bridgeObjectRetain_n();
        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
        *v98 = v102;
        *(v98 + 8) = 0x3000000000000000;
        *(v98 + 16) = 0;
        type metadata accessor for MLProgram.Value.ImmediateValue(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        *v97 = 0;
        v97[1] = 0xE000000000000000;
        v103 = type metadata accessor for Proto_MILSpec_Value(0);
        v104 = v103[5];
        v241 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
        v242 = v104;
        __swift_storeEnumTagSinglePayload(v97 + v104, 1, 1, v241);
        v105 = v103[6];

        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v106 = v103[7];
        v107 = v255;
        __swift_storeEnumTagSinglePayload(v97 + v106, 1, 1, v255);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        v108 = *(v107 + 20);
        if (qword_27F878FF0 != -1)
        {
          swift_once();
        }

        *(v96 + v108) = qword_27F87B038;
        v109 = v248;
        sub_2576E79A8(v99, v248, type metadata accessor for MLProgram.ValueType.TensorParameters);
        v110 = v109;
        v111 = v256;
        sub_2576E7A08(v110, v256, type metadata accessor for Proto_MILSpec_TensorType);
        v112 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
        swift_storeEnumTagMultiPayload();
        v113 = v112;
        v96 = v257;
        __swift_storeEnumTagSinglePayload(v111, 0, 1, v113);

        v114 = *(v96 + v108);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2576E7950(v99, type metadata accessor for MLProgram.ValueType.TensorParameters);
          v115 = *(v96 + v108);
        }

        else
        {
          v116 = *(v257 + v108);
          v117 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
          v118 = *(v117 + 48);
          v119 = *(v117 + 52);
          swift_allocObject();

          v115 = sub_2574E503C(v120);
          sub_2576E7950(v99, type metadata accessor for MLProgram.ValueType.TensorParameters);
          v96 = v257;

          *(v96 + v108) = v115;
        }

        v121 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_ValueTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__type;
        swift_beginAccess();
        sub_2576E78F0(v256, v115 + v121, &qword_27F879D40, &qword_257744660);
        swift_endAccess();
        sub_2574695E4(v97 + v106, &qword_27F879E10, &qword_257744730);
        sub_2576E7A08(v96, v97 + v106, type metadata accessor for Proto_MILSpec_ValueType);
        __swift_storeEnumTagSinglePayload(v97 + v106, 0, 1, v255);
        v122 = v253;
        v123 = v249;
        sub_2576E79A8(v253, v249, type metadata accessor for MLProgram.Value.Representation);
        v124 = v254;
        __swift_storeEnumTagSinglePayload(v123, 0, 1, v254);
        v125 = v250;
        sub_2576E7880(v123, v250);
        if (__swift_getEnumTagSinglePayload(v125, 1, v124) == 1)
        {

          sub_2574695E4(v123, &qword_27F880A30, &qword_25776ED00);
          sub_2576E7950(v122, type metadata accessor for MLProgram.Value.Representation);
          sub_2574695E4(v125, &qword_27F880A30, &qword_25776ED00);
          v126 = 1;
          v127 = v251;
        }

        else
        {
          v127 = v251;
          sub_257661640();

          sub_2574695E4(v123, &qword_27F880A30, &qword_25776ED00);
          sub_2576E7950(v122, type metadata accessor for MLProgram.Value.Representation);
          sub_2576E7950(v125, type metadata accessor for MLProgram.Value.Representation);
          v126 = 0;
        }

        v98 = v122;
        __swift_storeEnumTagSinglePayload(v127, v126, 1, v241);
        sub_2576E78F0(v127, v97 + v242, &qword_27F879EA8, &unk_2577447D0);
        v128 = v243;
        v95 = v244;
        v259 = v244;
        v129 = *(v244 + 16);
        v99 = v252;
        if (v129 >= *(v244 + 24) >> 1)
        {
          sub_257484A40();
          v95 = v259;
        }

        *(v95 + 16) = v129 + 1;
        sub_2576E7A08(v97, v95 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v129, type metadata accessor for MLProgram.Value);
        v94 = v239 + 2;
        v93 = v128 - 1;
      }

      while (v93);
      v90 = v213;
      v93 = v212;
    }

    v130 = v234;
    sub_2576E6348(v90, v93, 0, v234);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814C0, &qword_257774DD0);
    v131 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814C8, &qword_257774DD8) - 8);
    v132 = *(*v131 + 72);
    v133 = (*(*v131 + 80) + 32) & ~*(*v131 + 80);
    v134 = swift_allocObject();
    v257 = xmmword_257743FF0;
    *(v134 + 16) = xmmword_257743FF0;
    v135 = v134 + v133;
    v136 = v131[14];
    strcpy(v135, "probabilities");
    *(v135 + 14) = -4864;
    v137 = v246;
    v138 = v226;
    *v226 = v245;
    *(v138 + 8) = v137;
    swift_storeEnumTagMultiPayload();

    MLProgram.Argument.init(binding:)(v138);
    v139 = (v135 + v132);
    v140 = v131[14];
    *v139 = 0x73657373616C63;
    v139[1] = 0xE700000000000000;
    sub_2576E79A8(v130, v138, type metadata accessor for MLProgram.Value);
    swift_storeEnumTagMultiPayload();
    MLProgram.Argument.init(binding:)(v138);
    type metadata accessor for MLProgram.Argument(0);
    sub_2577435D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F48, &qword_257744870);
    v141 = *(type metadata accessor for MLProgram.NamedValueType() - 8);
    v142 = *(v141 + 72);
    v143 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = v257;
    v145 = (v144 + v143);
    v146 = swift_allocBox();
    LOBYTE(v258) = 1;
    v147 = v237;

    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v258 = v146;
    MLProgram.NamedValueType.init(name:type:)(v232, v147, &v258, v145);
    v148 = swift_allocBox();
    LOBYTE(v258) = 1;
    v149 = v231;

    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    v150 = swift_allocBox();
    LOBYTE(v258) = 4;
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
    v151 = swift_allocBox();
    v258 = v148;
    v259 = v150;
    MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
    v258 = v151 | 0x6000000000000000;
    MLProgram.NamedValueType.init(name:type:)(v233, v149, &v258, (v145 + v142));
    v152 = v235;
    MLProgram.Operation.init(name:inputs:outputs:)();
    v153 = v228;
    sub_2576E79A8(v152, v228, type metadata accessor for MLProgram.Operation);
    v154 = v238;
    v155 = MLProgram.Block.operations.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v157 = *(v155 + 16);
      v156 = *(v155 + 24);
      if (v157 >= v156 >> 1)
      {
        sub_257469E54(v156 > 1, v157 + 1, 1, v155);
        v155 = v205;
      }

      *(v155 + 16) = v157 + 1;
      sub_2576E7A08(v153, v155 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v157, type metadata accessor for MLProgram.Operation);
      MLProgram.Block.operations.setter();
      v158 = *(v154 + 8);
      v258 = v158;
      v159 = v246;
      swift_bridgeObjectRetain_n();

      v161 = v230;
      result = sub_2576E47EC(v160, v245, v159);
      *&v257 = v161;
      if (v162)
      {
        break;
      }

      v153 = result;
      v149 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      v164 = 16 * result;
      v163 = v158;
      v165 = v245;
      v166 = v246;
      while (1)
      {
        v155 = *(v163 + 16);
        if (v149 == v155)
        {
          v149 = v231;
          goto LABEL_51;
        }

        if (v149 >= v155)
        {
          break;
        }

        v167 = *(v163 + v164 + 48);
        v168 = *(v163 + v164 + 56);
        if (v167 != v165 || v168 != v166)
        {
          v170 = *(v163 + v164 + 48);
          v171 = *(v163 + v164 + 56);
          if (sub_257743994())
          {
            v165 = v245;
            v166 = v246;
          }

          else
          {
            if (v149 != v153)
            {
              if (v153 >= v155)
              {
                goto LABEL_67;
              }

              v172 = (v163 + 32 + 16 * v153);
              v155 = *v172;
              v154 = v172[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_25767A634(v163);
                v163 = v177;
              }

              v173 = v163 + 16 * v153;
              v174 = *(v173 + 40);
              *(v173 + 32) = v167;
              *(v173 + 40) = v168;

              if (v149 >= *(v163 + 16))
              {
                goto LABEL_68;
              }

              v175 = v163 + v164;
              v176 = *(v163 + v164 + 56);
              *(v175 + 48) = v155;
              *(v175 + 56) = v154;

              v258 = v163;
              v154 = v238;
            }

            v165 = v245;
            v166 = v246;
            ++v153;
          }
        }

        ++v149;
        v164 += 16;
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_257469E54(0, *(v155 + 16) + 1, 1, v155);
      v155 = v204;
    }

    v153 = *(v158 + 16);
    v163 = v158;
LABEL_51:

    v178 = *(v163 + 16);
    if (v178 < v153)
    {
      __break(1u);
    }

    else
    {
      sub_2576E745C(v153, v178);

      v158 = v258;
      *(v154 + 8) = v258;

      v179 = v158;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_53:
        v180 = *(v179 + 16);
        if (v180 >= *(v179 + 24) >> 1)
        {
          sub_257469ED4();
          v179 = v208;
        }

        *(v179 + 16) = v180 + 1;
        v181 = v179 + 16 * v180;
        v182 = v237;
        *(v181 + 32) = v232;
        *(v181 + 40) = v182;

        *(v154 + 8) = v179;

        v183 = v179;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = *(v179 + 16);
          sub_257469ED4();
          v183 = v210;
        }

        v184 = *(v183 + 16);
        if (v184 >= *(v183 + 24) >> 1)
        {
          sub_257469ED4();
          v183 = v211;
        }

        *(v183 + 16) = v184 + 1;
        v185 = v183 + 16 * v184;
        *(v185 + 32) = v233;
        *(v185 + 40) = v149;

        *(v154 + 8) = v183;
        v186 = v224;
        sub_2576E79A8(v154, v224, type metadata accessor for MLProgram.Block);
        v187 = v223;
        __swift_storeEnumTagSinglePayload(v186, 0, 1, v223);
        v188 = v215;
        MLProgram.Function.blockSpecializations.getter();
        v190 = v189;
        if (__swift_getEnumTagSinglePayload(v186, 1, v187) == 1)
        {
          sub_2574695E4(v186, &qword_27F880698, &qword_25776CFE0);
          v191 = sub_25765368C(v214, v216);
          if (v192)
          {
            v193 = v191;
            swift_isUniquelyReferenced_nonNull_native();
            v258 = v190;
            v194 = *(v190 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8806A0, &qword_25776CFE8);
            v188 = v215;
            sub_257743894();
            v190 = v258;
            v195 = *(*(v258 + 48) + 16 * v193 + 8);

            v196 = v221;
            sub_2576E7A08(*(v190 + 56) + *(v219 + 72) * v193, v221, type metadata accessor for MLProgram.Block);
            sub_2577438B4();
            v197 = 0;
          }

          else
          {
            v197 = 1;
            v196 = v221;
          }

          __swift_storeEnumTagSinglePayload(v196, v197, 1, v187);

          sub_2574695E4(v196, &qword_27F880698, &qword_25776CFE0);
        }

        else
        {
          v198 = v186;
          v199 = v220;
          sub_2576E7A08(v198, v220, type metadata accessor for MLProgram.Block);
          swift_isUniquelyReferenced_nonNull_native();
          v258 = v190;
          sub_25765C2DC(v199, v214, v216);

          v190 = v258;
        }

        sub_257653AF8(v190);
        v201 = v200;

        v202 = *(v188 + 24);

        *(v188 + 24) = v201;
        v203 = v225;
        sub_2576E79A8(v188, v225, type metadata accessor for MLProgram.Function);
        __swift_storeEnumTagSinglePayload(v203, 0, 1, v222);
        MLProgram.mainFunction.setter();
        sub_2576E7950(v235, type metadata accessor for MLProgram.Operation);
        sub_2576E7950(v234, type metadata accessor for MLProgram.Value);
        sub_2576E7950(v154, type metadata accessor for MLProgram.Block);
        v86 = v188;
        return sub_2576E7950(v86, type metadata accessor for MLProgram.Function);
      }
    }

    v206 = *(v158 + 16);
    sub_257469ED4();
    v179 = v207;
    goto LABEL_53;
  }

  v77 = v59;
LABEL_8:
  sub_2574695E4(v77, &qword_27F880668, &unk_257774DB0);
LABEL_9:
  MLProgram.Function.blockSpecializations.getter();
  v258 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814A8, &unk_257774DC0);
  sub_2576E77C8();
  sub_2576E782C();
  v82 = sub_257743744();
  v84 = v83;

  sub_2576E6D44();
  swift_allocError();
  *v85 = v82;
  v85[1] = v84;
  swift_willThrow();
  v86 = v69;
  return sub_2576E7950(v86, type metadata accessor for MLProgram.Function);
}

uint64_t sub_2576E6204()
{

  do
  {
    while (1)
    {
      v0 = sub_2577436D4();
      if (!v1)
      {

        sub_2577436D4();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_2577436D4();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_257743994();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_2576E6348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for MLProgram.Value.Representation(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v16 = swift_allocBox();
  v28 = a1;
  v26 = a2;
  v27 = a3 & 1;

  MLProgram.ValueType.ListParameters.init(type:length:)();

  sub_2576E431C(v17, v15);
  type metadata accessor for MLProgram.Value.ImmediateValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  v18 = type metadata accessor for Proto_MILSpec_Value(0);
  v19 = v18[5];
  v20 = type metadata accessor for Proto_MILSpec_Value.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a4 + v19, 1, 1, v20);
  v21 = a4 + v18[6];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v22 = v18[7];
  v23 = type metadata accessor for Proto_MILSpec_ValueType(0);
  __swift_storeEnumTagSinglePayload(a4 + v22, 1, 1, v23);
  v26 = v16 | 0x2000000000000000;
  MLProgram.Value.type.setter();
  sub_2576E79A8(v15, v11, type metadata accessor for MLProgram.Value.Representation);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  MLProgram.Value.representation.setter(v11);
  return sub_2576E7950(v15, type metadata accessor for MLProgram.Value.Representation);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Model.makeClassifier(classLabels:probabilityName:outputLabelName:outputProbabilityName:)(Swift::OpaquePointer classLabels, Swift::String probabilityName, Swift::String outputLabelName, Swift::String outputProbabilityName)
{
  rawValue = classLabels._rawValue;
  object = outputProbabilityName._object;
  countAndFlagsBits = outputProbabilityName._countAndFlagsBits;
  v127 = outputLabelName;
  v126 = probabilityName;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v119 = &v112 - v11;
  v114 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v12 = OUTLINED_FUNCTION_4(v114);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v115 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v116 = &v112 - v18;
  v122 = type metadata accessor for Proto_FeatureType(0);
  v19 = OUTLINED_FUNCTION_4(v122);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v121 = v23 - v22;
  v120 = type metadata accessor for FeatureType(0);
  v24 = OUTLINED_FUNCTION_4(v120);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v29 = (v28 - v27);
  v30 = type metadata accessor for FeatureDescription();
  v113 = *(v30 - 8);
  v31 = *(v113 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_11();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = (&v112 - v36);
  v38 = type metadata accessor for ModelKind(0);
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  v118 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v112 - v45;
  v47 = type metadata accessor for MLProgram();
  v48 = OUTLINED_FUNCTION_13(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  v53 = v52 - v51;
  v125 = v4;
  Model.kind.getter();
  v117 = v38;
  if (swift_getEnumCaseMultiPayload() != 31)
  {
    OUTLINED_FUNCTION_3_63();
    sub_2576E7950(v46, v56);
    sub_2576E6D44();
    swift_allocError();
    *v57 = xmmword_257774CB0;
    swift_willThrow();
    return;
  }

  sub_2576E7A08(v46, v53, type metadata accessor for MLProgram);
  v54 = v124;
  sub_2576E48A0(rawValue, v126._countAndFlagsBits, v126._object, v127._countAndFlagsBits, v127._object, countAndFlagsBits, object);
  if (v54)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2576E7950(v53, v55);
    return;
  }

  v124 = v53;

  v58 = v125;
  Model.predictedFeatureName.setter();

  v112 = countAndFlagsBits;
  rawValue = object;
  Model.predictedProbabilitiesName.setter();
  v59 = v126._object;

  Model.outputs.getter();
  v128 = v60;
  v61 = sub_2576E7134(&v128, v126._countAndFlagsBits, v59);
  v126._object = 0;
  v62 = *(v128 + 16);
  if (v62 < v61)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2576E7538(v61, v62);
  Model.outputs.setter();
  v126._countAndFlagsBits = type metadata accessor for FeatureType.StringParameters(0);
  v63 = &v29[*(v126._countAndFlagsBits + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v29 = 0;
  swift_storeEnumTagMultiPayload();
  v37[2] = 0;
  v37[3] = 0xE000000000000000;
  countAndFlagsBits = type metadata accessor for Proto_FeatureDescription(0);
  v64 = v37 + *(countAndFlagsBits + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v65 = *(countAndFlagsBits + 28);
  v66 = v122;
  __swift_storeEnumTagSinglePayload(v37 + v65, 1, 1, v122);
  v67 = v127._object;
  *v37 = v127._countAndFlagsBits;
  v37[1] = v67;

  v68 = v121;
  sub_25768E090();
  OUTLINED_FUNCTION_6_51();
  sub_2574695E4(v37 + v65, &qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_5_48();
  sub_2576E7A08(v68, v37 + v65, v69);
  __swift_storeEnumTagSinglePayload(v37 + v65, 0, 1, v66);
  v37[2] = 0;
  v37[3] = 0xE000000000000000;
  Model.outputs.getter();
  v58 = v70;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    sub_25746A0C8(0, *(v58 + 16) + 1, 1, v58);
    v58 = v108;
  }

  v71 = v116;
  v72 = v113;
  v74 = *(v58 + 16);
  v73 = *(v58 + 24);
  if (v74 >= v73 >> 1)
  {
    sub_25746A0C8(v73 > 1, v74 + 1, 1, v58);
    v58 = v109;
  }

  *(v58 + 16) = v74 + 1;
  v127._object = ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v75 = *(v72 + 72);
  OUTLINED_FUNCTION_2_61();
  sub_2576E7A08(v37, v76, v77);
  Model.outputs.setter();
  v78 = &v71[*(v126._countAndFlagsBits + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v71 = 0;
  swift_storeEnumTagMultiPayload();
  v79 = &v29[*(type metadata accessor for FeatureType.DictionaryParameters(0) + 20)];
  v80 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v80);
  v81 = v79 + *(type metadata accessor for Proto_DictionaryFeatureType(0) + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v29 = 0;
  sub_2576E79A8(v71, v115, type metadata accessor for FeatureType.DictionaryParameters.KeyType);
  FeatureType.DictionaryParameters.keyType.setter();
  sub_2576E7950(v71, type metadata accessor for FeatureType.DictionaryParameters.KeyType);
  swift_storeEnumTagMultiPayload();
  v34[2] = 0;
  v34[3] = 0xE000000000000000;
  v82 = v34 + *(countAndFlagsBits + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v83 = *(countAndFlagsBits + 28);
  v84 = v122;
  __swift_storeEnumTagSinglePayload(v34 + v83, 1, 1, v122);
  v85 = rawValue;
  *v34 = v112;
  v34[1] = v85;

  v86 = v121;
  sub_25768E090();
  OUTLINED_FUNCTION_6_51();
  sub_2574695E4(v34 + v83, &qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_5_48();
  sub_2576E7A08(v86, v34 + v83, v87);
  __swift_storeEnumTagSinglePayload(v34 + v83, 0, 1, v84);
  v34[2] = 0;
  v34[3] = 0xE000000000000000;
  Model.outputs.getter();
  v89 = v88;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25746A0C8(0, *(v89 + 16) + 1, 1, v89);
    v89 = v110;
  }

  v91 = v118;
  v90 = v119;
  v93 = *(v89 + 16);
  v92 = *(v89 + 24);
  if (v93 >= v92 >> 1)
  {
    sub_25746A0C8(v92 > 1, v93 + 1, 1, v89);
    v89 = v111;
  }

  *(v89 + 16) = v93 + 1;
  OUTLINED_FUNCTION_2_61();
  sub_2576E7A08(v34, v94, v95);
  Model.outputs.setter();
  v96 = v124;
  sub_2576E79A8(v124, v91, type metadata accessor for MLProgram);
  v97 = swift_storeEnumTagMultiPayload();
  sub_25746EEC4(v97, v98, v99, v100, v101, v102, v103, v104, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, rawValue);
  v105 = type metadata accessor for Proto_Model.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v105);
  sub_2574FE574();
  OUTLINED_FUNCTION_3_63();
  sub_2576E7950(v91, v106);
  OUTLINED_FUNCTION_4_53();
  sub_2576E7950(v96, v107);
}

unint64_t sub_2576E6D44()
{
  result = qword_27F8814A0;
  if (!qword_27F8814A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814A0);
  }

  return result;
}

void static Package.makeClassifier(contentsOf:classLabels:probabilityName:outputLabelName:outputProbabilityName:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v44._countAndFlagsBits = a7;
  v44._object = a8;
  v43._countAndFlagsBits = a5;
  v43._object = a6;
  v42._countAndFlagsBits = a3;
  v42._object = a4;
  v45 = a2;
  v10 = type metadata accessor for Model(0);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = sub_257743094();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v22 = (v20 - v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  v29 = type metadata accessor for Package();
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  v35 = v34 - v33;
  (*(v18 + 16))(v28, a1, v17);
  Package.init(url:)();
  if (!v8)
  {
    v36._rawValue = v45;
    Package.rootModelURL.getter();
    v37 = sub_2577430C4();
    Model.init(serializedData:)(v37, v38, v16);
    v39 = v26;
    v40 = *(v18 + 8);
    v40(v39, v17);
    Model.makeClassifier(classLabels:probabilityName:outputLabelName:outputProbabilityName:)(v36, v42, v43, v44);
    if (!v41)
    {
      Package.setRootModel(_:)();
      v40(v22, v17);
    }

    sub_2576E7950(v16, type metadata accessor for Model);
    sub_2576E7950(v35, type metadata accessor for Package);
  }
}

unint64_t MakeClassifierError.errorDescription.getter()
{
  v1 = 0xD000000000000025;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000029;
    }

    else
    {
      v3 = *v0;
      sub_257743834();
      MEMORY[0x259C64E90](0xD000000000000036, 0x8000000257781820);
      MEMORY[0x259C64E90](v3, v2);
      MEMORY[0x259C64E90](46, 0xE100000000000000);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_2576E7134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeatureDescription();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v35 - v16);
  v18 = *a1;

  result = sub_2576E46F0(v18, a2, a3);
  if (v3)
  {
  }

  v37 = v12;
  v38 = a3;
  v41 = a2;
  if (v20)
  {
    v21 = *(v18 + 16);

    return v21;
  }

  v35 = 0;
  v36 = a1;
  v39 = result;
  v22 = result + 1;
  v23 = v38;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v40 = v8;
  while (1)
  {
    v24 = *(v18 + 16);
    if (v22 == v24)
    {

      return v39;
    }

    if (v22 >= v24)
    {
      break;
    }

    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = v18 + v25;
    v27 = *(v8 + 72);
    v28 = v27 * v22;
    sub_2576E79A8(v18 + v25 + v27 * v22, v17, type metadata accessor for FeatureDescription);
    if (*v17 == v41 && v17[1] == v23)
    {
      result = sub_2576E7950(v17, type metadata accessor for FeatureDescription);
      goto LABEL_16;
    }

    v30 = sub_257743994();
    result = sub_2576E7950(v17, type metadata accessor for FeatureDescription);
    if (v30)
    {
      v23 = v38;
LABEL_16:
      v8 = v40;
      goto LABEL_27;
    }

    v31 = v39;
    if (v22 == v39)
    {
      v23 = v38;
    }

    else
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v32 = *(v18 + 16);
      if (v39 >= v32)
      {
        goto LABEL_31;
      }

      v33 = v27 * v39;
      result = sub_2576E79A8(v26 + v33, v15, type metadata accessor for FeatureDescription);
      if (v22 >= v32)
      {
        goto LABEL_32;
      }

      sub_2576E79A8(v26 + v28, v37, type metadata accessor for FeatureDescription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25767A6C4(v18);
        v18 = v34;
      }

      v23 = v38;
      result = sub_2576E7764(v37, v18 + v25 + v33);
      if (v22 >= *(v18 + 16))
      {
        goto LABEL_33;
      }

      result = sub_2576E7764(v15, v18 + v25 + v28);
      *v36 = v18;
      v31 = v39;
    }

    v8 = v40;
    v39 = v31 + 1;
LABEL_27:
    ++v22;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2576E745C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25763E954(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_257483384((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2576E7538(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25763E96C(result, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for FeatureDescription() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_2574833C4(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_20MLModelSpecification19MakeClassifierErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2576E7684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2576E76D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2576E7734(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2576E7764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2576E77C8()
{
  result = qword_27F8814B0;
  if (!qword_27F8814B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8814A8, &unk_257774DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814B0);
  }

  return result;
}

unint64_t sub_2576E782C()
{
  result = qword_27F8814B8;
  if (!qword_27F8814B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814B8);
  }

  return result;
}

uint64_t sub_2576E7880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880A30, &qword_25776ED00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576E78F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_2576E7950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576E79A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2576E7A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_51()
{

  return sub_2576E7950(v0, type metadata accessor for FeatureType);
}

void sub_2576E7AF0()
{
  OUTLINED_FUNCTION_31();
  v71 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - v6;
  v66 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  v8 = OUTLINED_FUNCTION_4(v66);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v65 = v12 - v11;
  v13 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_64();
  v25 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(v24);
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442C0;
  OUTLINED_FUNCTION_28_27(inited, 0x6152u);
  v69 = v33;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v34;
  *(inited + 64) = 0;
  *(inited + 72) = 0x7865646E49;
  *(inited + 80) = 0xE500000000000000;
  v35 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v36 = *(v35 + 24);
  v67 = v0;
  sub_2574FD880(v0 + v36, v1, &qword_27F87BD40, &unk_257774DE0);
  v37 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v37, v38, v25) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v39, v40, v25) != 1)
    {
      sub_2574695E4(v1, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v1, v31);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2576E997C(v31, v19);
    v41 = *v19;
    sub_2576E9924(v19, type metadata accessor for Proto_SingleKdTreeIndex);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_257743FF0;
    *(v42 + 32) = 1701869908;
    *(v42 + 40) = 0xE400000000000000;
    *(v42 + 48) = 0xD000000000000015;
    *(v42 + 56) = 0x80000002577818B0;
    *(v42 + 64) = 0;
    *(v42 + 72) = 1702521171;
    *(v42 + 80) = 0xE400000000000000;
    v69 = v41;
    *(v42 + 88) = sub_257743674();
    *(v42 + 96) = v43;
    *(v42 + 104) = 0;
    v44 = sub_2576A6964(v42);
    v46 = 2;
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    sub_2576E9924(v31, v47);
    v46 = 0;
    v45 = 0xE600000000000000;
    v44 = 0x7261656E694CLL;
  }

  v48 = v67;
  *(inited + 88) = v44;
  *(inited + 96) = v45;
  *(inited + 104) = v46;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000002577818D0;
  sub_2574FD880(v48 + *(v35 + 28), v7, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_65(v7);
  if (v49)
  {
    v50 = v65;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v50, v51);
    OUTLINED_FUNCTION_65(v7);
    if (!v49)
    {
      sub_2574695E4(v7, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    v52 = v7;
    v53 = v65;
    sub_2576E997C(v52, v65);
    sub_2576E9924(v53, type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction);
  }

  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000002577818F0;
  *(inited + 144) = 0;
  v54 = NearestNeighborsConfiguration.Parameters.weights.getter();
  if (*(v54 + 16))
  {
    v55 = *(v54 + 32);

    v56 = *(NearestNeighborsConfiguration.Parameters.weights.getter() + 16);

    v68 = v56;
    OUTLINED_FUNCTION_211();
    v69 = sub_257743974();
    v70 = v57;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);
    v58 = *(v55 + 16);

    v68 = v58;
    OUTLINED_FUNCTION_211();
    v59 = sub_257743974();
    MEMORY[0x259C64E90](v59);

    v60 = v69;
    v61 = v70;
    sub_257469AE0();
    inited = v62;
    *(v62 + 16) = 4;
    *(v62 + 152) = 0x73746867696557;
    *(v62 + 160) = 0xE700000000000000;
    *(v62 + 168) = v60;
    *(v62 + 176) = v61;
    *(v62 + 184) = 0;
  }

  else
  {
  }

  sub_2576AACFC(inited);
  v63 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

uint64_t (*NearestNeighborsConfiguration.Parameters.rank.modify(void *a1))(uint64_t result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576E9EA4;
}

uint64_t NearestNeighborsConfiguration.Parameters.weights.getter()
{
  v1 = type metadata accessor for Proto_FloatVector(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2574843A0();
    v9 = v15;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_2576E99F4(v10, v6);
      v12 = *v6;

      sub_2576E9924(v6, type metadata accessor for Proto_FloatVector);
      v13 = *(v15 + 16);
      if (v13 >= *(v15 + 24) >> 1)
      {
        sub_2574843A0();
      }

      *(v15 + 16) = v13 + 1;
      *(v15 + 8 * v13 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void sub_2576E81F8(uint64_t *a1)
{
  v1 = *a1;

  NearestNeighborsConfiguration.Parameters.weights.setter();
}

void NearestNeighborsConfiguration.Parameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for Proto_FloatVector(0);
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = *(v2 + 16);
  if (v12)
  {
    v19 = v0;
    v20 = MEMORY[0x277D84F90];
    sub_2574851B0();
    v13 = 32;
    v14 = v20;
    do
    {
      v15 = *(v2 + v13);
      v16 = *(v3 + 20);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v11 = v15;
      v17 = *(v20 + 16);
      if (v17 >= *(v20 + 24) >> 1)
      {
        sub_2574851B0();
      }

      *(v20 + 16) = v17 + 1;
      sub_2576E997C(v11, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17);
      v13 += 8;
      --v12;
    }

    while (v12);

    v0 = v19;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v18 = *(v0 + 8);

  *(v0 + 8) = v14;
  OUTLINED_FUNCTION_35();
}

void (*NearestNeighborsConfiguration.Parameters.weights.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NearestNeighborsConfiguration.Parameters.weights.getter();
  return sub_2576E8400;
}

void sub_2576E8400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    NearestNeighborsConfiguration.Parameters.weights.setter();
  }

  else
  {
    v5 = *a1;
    NearestNeighborsConfiguration.Parameters.weights.setter();
  }
}

uint64_t NearestNeighborsConfiguration.Parameters.indexType.getter()
{
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for Proto_SingleKdTreeIndex(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = OUTLINED_FUNCTION_201();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_64();
  v19 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(v18);
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v23 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574FD880(v1 + *(v23 + 24), v3, &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_35_0(v3);
  if (v24)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35_0(v3);
    if (!v24)
    {
      sub_2574695E4(v3, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v3, v2);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576E997C(v2, v11);
    v28 = *v11;
    result = sub_2576E9924(v11, type metadata accessor for Proto_SingleKdTreeIndex);
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    result = sub_2576E9924(v2, v26);
    v28 = 0;
  }

  *v0 = v28;
  *(v0 + 8) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_2576E8628@<X0>(uint64_t a1@<X8>)
{
  result = NearestNeighborsConfiguration.Parameters.indexType.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576E866C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return NearestNeighborsConfiguration.Parameters.indexType.setter(&v3);
}

uint64_t NearestNeighborsConfiguration.Parameters.indexType.setter(uint64_t a1)
{
  v4 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*(a1 + 8) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
LABEL_6:
    v17 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = type metadata accessor for Proto_NearestNeighborsIndex(0);
    return sub_2574FD834(v13, v1 + *(v21 + 24), &qword_27F87BD40, &unk_257774DE0);
  }

  v14 = *a1;
  v15 = v2 + *(v4 + 20);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v14 <= 0x7FFFFFFF)
  {
    *v2 = v14;
    OUTLINED_FUNCTION_2_62();
    sub_2576E997C(v2, v13);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void NearestNeighborsConfiguration.Parameters.indexType.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[2] = v0;
  v4 = type metadata accessor for Proto_SingleKdTreeIndex(0);
  v3[3] = v4;
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v3[6] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[7] = v10;
  v11 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  v3[8] = v11;
  OUTLINED_FUNCTION_4(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v3[9] = v13;
  v14 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 24);
  *(v3 + 3) = v14;
  sub_2574FD880(v0 + v14, v10, &qword_27F87BD40, &unk_257774DE0);
  OUTLINED_FUNCTION_65(v10);
  if (v15)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_65(v10);
    if (!v15)
    {
      sub_2574695E4(v10, &qword_27F87BD40, &unk_257774DE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    sub_2576E997C(v10, v13);
  }

  OUTLINED_FUNCTION_211();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2576E997C(v13, v6);
    v18 = *v6;
    sub_2576E9924(v6, type metadata accessor for Proto_SingleKdTreeIndex);
  }

  else
  {
    OUTLINED_FUNCTION_3_64();
    sub_2576E9924(v13, v17);
    v18 = 0;
  }

  *v3 = v18;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void sub_2576E8A1C()
{
  OUTLINED_FUNCTION_31();
  v8 = *v7;
  v9 = **v7;
  v10 = *(*v7 + 8);
  if ((v11 & 1) == 0)
  {
    if (*(*v7 + 8))
    {
      v13 = v8[6];
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    }

    else
    {
      v23 = v8[4] + *(v8[3] + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v9 < 0xFFFFFFFF80000000)
      {
        goto LABEL_18;
      }

      if (v9 > 0x7FFFFFFF)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v24 = v8[6];
      *v8[4] = v9;
      OUTLINED_FUNCTION_2_62();
      sub_2576E997C(v25, v26);
    }

    OUTLINED_FUNCTION_23_26();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v4);
    v21 = v6 + v5;
    v22 = v1;
    goto LABEL_14;
  }

  if (!*(*v7 + 8))
  {
    v14 = v8[4] + *(v8[3] + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        v15 = v8[5];
        *v8[4] = v9;
        OUTLINED_FUNCTION_2_62();
        sub_2576E997C(v16, v17);
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v8[5];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
LABEL_9:
  OUTLINED_FUNCTION_23_26();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  v21 = v6 + v5;
  v22 = v2;
LABEL_14:
  sub_2574FD834(v22, v21, &qword_27F87BD40, &unk_257774DE0);
  free(v9);
  free(v0);
  free(v1);
  free(v2);
  free(v3);
  OUTLINED_FUNCTION_35();

  free(v30);
}

uint64_t NearestNeighborsConfiguration.Parameters.distanceFunction.getter()
{
  v2 = OUTLINED_FUNCTION_211();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v14 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  sub_2574FD880(v0 + *(v14 + 28), v9, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_35_0(v9);
  if (v15)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v1, v16);
    result = OUTLINED_FUNCTION_35_0(v9);
    if (!v15)
    {
      return sub_2574695E4(v9, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    sub_2576E997C(v9, v1);
    return sub_2576E9924(v1, v0);
  }

  return result;
}

uint64_t NearestNeighborsConfiguration.Parameters.distanceFunction.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  return sub_2574FD834(v6, v0 + *(v11 + 28), &qword_27F87BD48, &unk_257750590);
}

void (*NearestNeighborsConfiguration.Parameters.distanceFunction.modify(void *a1))(uint64_t **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_201();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  v3[1] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[2] = v9;
  v10 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  v3[3] = v10;
  OUTLINED_FUNCTION_4(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v3[4] = v12;
  v13 = *(type metadata accessor for Proto_NearestNeighborsIndex(0) + 28);
  *(v3 + 10) = v13;
  sub_2574FD880(v1 + v13, v9, &qword_27F87BD48, &unk_257750590);
  OUTLINED_FUNCTION_35_0(v9);
  if (v14)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_5_49();
    sub_2576E9924(v12, v15);
    OUTLINED_FUNCTION_35_0(v9);
    if (!v14)
    {
      sub_2574695E4(v9, &qword_27F87BD48, &unk_257750590);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_27();
    sub_2576E997C(v9, v12);
    sub_2576E9924(v12, v1);
  }

  return sub_2576E8F1C;
}

void sub_2576E8F1C(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  sub_2574FD834(v6, v7 + v2, &qword_27F87BD48, &unk_257750590);
  free(v3);
  free(v5);
  free(v6);

  free(v1);
}

uint64_t NearestNeighborsConfiguration.Parameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Proto_NearestNeighborsIndex(0);
  v3 = v2[6];
  v4 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_IndexType(0);
  OUTLINED_FUNCTION_22_5(v4);
  v5 = v2[7];
  v6 = type metadata accessor for Proto_NearestNeighborsIndex.OneOf_DistanceFunction(0);
  OUTLINED_FUNCTION_22_5(v6);
  v7 = a1 + v2[8];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void NearestNeighborsConfiguration.Parameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_1();
  v1 = sub_257743A84();
  v2 = OUTLINED_FUNCTION_63(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_64();
  v15 = type metadata accessor for NearestNeighborsConfiguration.Parameters(v14);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_2576E99F4(v0, v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257744E70;
  v22 = OUTLINED_FUNCTION_28_27(v21, 0x6172u);
  v23 = MEMORY[0x277D83B88];
  v22[6] = v24;
  v22[9] = v23;
  v22[10] = 0x73746867696577;
  v22[11] = 0xE700000000000000;
  v25 = NearestNeighborsConfiguration.Parameters.weights.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8814D0, &unk_257774DF0);
  *(v21 + 96) = v25;
  *(v21 + 120) = v26;
  *(v21 + 128) = 0x7079547865646E69;
  *(v21 + 136) = 0xE900000000000065;
  *(v21 + 168) = &type metadata for NearestNeighborsConfiguration.Parameters.IndexType;
  NearestNeighborsConfiguration.Parameters.indexType.getter();
  *(v21 + 176) = 0xD000000000000010;
  *(v21 + 184) = 0x8000000257781890;
  *(v21 + 216) = &type metadata for NearestNeighborsConfiguration.Parameters.DistanceFunction;
  NearestNeighborsConfiguration.Parameters.distanceFunction.getter();
  sub_257743A74();
  v27 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

BOOL static NearestNeighborsConfiguration.Parameters.IndexType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t NearestNeighborsConfiguration.Parameters.DistanceFunction.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  return sub_257743A64();
}

uint64_t sub_2576E9390(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.leafSize.modify(void *a1))(uint64_t result, char)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576E93E0;
}

uint64_t NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.init(leafSize:)@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Proto_SingleKdTreeIndex(0) + 20);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_30();
    v3 = *(type metadata accessor for Proto_SingleKdTreeIndex(v2) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_14_24();
    sub_2576E9C24(v4, v5);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification29NearestNeighborsConfigurationV10ParametersV011LinearIndexE0V2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_30();
  sub_2577431B4();
  OUTLINED_FUNCTION_14_24();
  sub_2576E9C24(v0, v1);
  return sub_257743644() & 1;
}

void NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  OUTLINED_FUNCTION_16_1();
  v3 = sub_257743A84();
  v4 = OUTLINED_FUNCTION_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_271();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_64();
  v14 = type metadata accessor for NearestNeighborsConfiguration.Parameters.SingleKdTreeIndexConfiguration(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  sub_2576E99F4(v2, v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2577442B0;
  *(v20 + 32) = 0x657A69536661656CLL;
  *(v20 + 40) = 0xE800000000000000;
  v21 = *v2;
  *(v20 + 72) = MEMORY[0x277D83B88];
  *(v20 + 48) = v21;
  sub_257743A74();
  v22 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  (*(v6 + 104))(v1, *MEMORY[0x277D84C38], v3);
  OUTLINED_FUNCTION_201();
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void sub_2576E976C()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_16_1();
  v4 = sub_257743A84();
  v5 = OUTLINED_FUNCTION_63(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_64();
  v18 = v2(v17);
  OUTLINED_FUNCTION_4(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  sub_2576E99F4(v3, v26 - v22);
  v26[1] = MEMORY[0x277D84F90];
  sub_257743A74();
  v23 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  (*(v7 + 104))(v12, *MEMORY[0x277D84C38], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  sub_257743A94();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576E9924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576E997C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t sub_2576E99F4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

unint64_t sub_2576E9AF8()
{
  result = qword_27F8814D8;
  if (!qword_27F8814D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8814D8);
  }

  return result;
}

uint64_t sub_2576E9C24(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s10ParametersV16DistanceFunctionOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_2576E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_23_26()
{
  v1 = *(v0 + 12);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_28_27@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(result + 32) = a2 | 0x6B6E0000u;
  *(result + 40) = 0xE400000000000000;
  v3 = *v2;
  return result;
}

void *NeuralNetwork.Layer.ReshapeParameters.propertyDescriptions.getter()
{
  v1 = 0xED00007473726946;
  if (*(v0 + 16) == 1 && v0[1])
  {
    v1 = 0xEC0000007473614CLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_257743FF0;
  strcpy((v2 + 32), "Target Shape");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v4 = *v0;
  v5 = *(*v0 + 16);
  if (v5)
  {
    v18 = v2;
    v19 = MEMORY[0x277D84F90];
    sub_257483754(0, v5, 0);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      v8 = sub_257743974();
      v10 = v9;
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_257483754((v11 > 1), v12 + 1, 1);
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      --v5;
    }

    while (v5);
    v3 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_25767A50C(&qword_27F87A200, &qword_27F87A1F8, &qword_257770B90);
  v14 = sub_257743604();
  v16 = v15;

  v3[6] = v14;
  v3[7] = v16;
  v3[8] = 0xD000000000000015;
  v3[9] = 0x80000002577814F0;
  v3[10] = 0x206C656E6E616843;
  v3[11] = v1;
  return v3;
}

uint64_t static NeuralNetwork.Layer.reshape(name:inputName:outputName:targetShape:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v33 = a1;
  v34 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v31 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v24 = swift_allocObject();
  v30 = xmmword_2577442B0;
  *(v24 + 16) = xmmword_2577442B0;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = v30;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  *v23 = MEMORY[0x277D84F90];
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  LODWORD(a5) = *(type metadata accessor for Proto_ReshapeLayerParams(0) + 24);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v26);
  *(v23 + 8) = v31;
  *(v23 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v27 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a9 + v27) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v25);
  sub_2574897E0(v18);
  v28 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v28);
  sub_25752846C();
  return sub_257634BB4(v23);
}

uint64_t static NeuralNetwork.Layer.Kind.reshape(targetShape:targetChannelLayout:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a2 + *(OUTLINED_FUNCTION_1_73(MEMORY[0x277D84F90]) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v6);
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  type metadata accessor for NeuralNetwork.Layer.Kind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.init(targetShape:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a3 + *(OUTLINED_FUNCTION_1_73(MEMORY[0x277D84F90]) + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  result = NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(a1);
  *(a3 + 8) = v6;
  *(a3 + 16) = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.targetShape.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_257483724();
    result = v8;
    v4 = (v1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v9 = result;
      if (v5 >= *(result + 24) >> 1)
      {
        sub_257483724();
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2576EA5D0(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v2);
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2574845B8();
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_2574845B8();
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v9 = *v2;

  *v2 = v5;
  return result;
}

uint64_t (*NeuralNetwork.Layer.ReshapeParameters.targetShape.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ReshapeParameters.targetShape.getter();
  return sub_2576EA73C;
}

uint64_t sub_2576EA73C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(*a1);
  }

  v4 = *a1;

  NeuralNetwork.Layer.ReshapeParameters.targetShape.setter(v5);
}

unsigned __int8 *NeuralNetwork.Layer.ReshapeParameters.targetChannelLayout.setter(unsigned __int8 *result)
{
  *(v1 + 8) = *result;
  *(v1 + 16) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.ReshapeParameters.targetChannelLayout.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16) == 1 && *(v1 + 8) != 0;
  *(a1 + 8) = v2;
  return sub_2576EA864;
}

uint64_t *sub_2576EA864(uint64_t *result)
{
  v1 = *result;
  *(v1 + 8) = *(result + 8);
  *(v1 + 16) = 1;
  return result;
}

BOOL static NeuralNetwork.Layer.ReshapeParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_257487374(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Proto_ReshapeLayerParams(0) + 24);
  sub_2577431B4();
  sub_2576EAD50(&qword_27F879B68, MEMORY[0x277D216C8]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576EACA4(v0, v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257743FF0;
  *(v15 + 32) = 0x6853746567726174;
  *(v15 + 40) = 0xEB00000000657061;
  v16 = NeuralNetwork.Layer.ReshapeParameters.targetShape.getter();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v15 + 48) = v16;
  *(v15 + 72) = v17;
  *(v15 + 80) = 0xD000000000000013;
  *(v15 + 88) = 0x8000000257781910;
  *(v15 + 120) = &type metadata for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout;
  v18 = *(v0 + 16) == 1 && *(v0 + 8) != 0;
  *(v15 + 96) = v18;
  v19 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2576EAC20@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NeuralNetwork.Layer.ReshapeParameters()
{
  result = qword_27F881538;
  if (!qword_27F881538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576EACA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576EAD50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2576EADE0()
{
  result = qword_27F881530;
  if (!qword_27F881530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881530);
  }

  return result;
}

uint64_t sub_2576EAE5C()
{
  result = type metadata accessor for Proto_ReshapeLayerParams(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17ReshapeParametersV13ChannelLayoutOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_73@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;

  return type metadata accessor for Proto_ReshapeLayerParams(0);
}

void sub_2576EAFC4()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v79 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x646F6874654DLL;
  *(inited + 40) = 0xE600000000000000;
  NonMaximumSuppressorConfiguration.method.getter(inited, v21, v22, v23, v24, v25, v26, v27, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v28 = sub_2576ECC30();
  v30 = v29;
  OUTLINED_FUNCTION_17_26();
  sub_2576EBDBC(v1, v31);
  *(inited + 48) = v28;
  *(inited + 56) = v30;
  *(inited + 64) = 0;
  strcpy((inited + 72), "IoU Threshold");
  *(inited + 86) = -4864;
  v32 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v67 = *(v2 + v32[6]);
  *(inited + 88) = sub_257743674();
  *(inited + 96) = v33;
  *(inited + 104) = 0;
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000257781930;
  v67 = *(v2 + v32[7]);
  *(inited + 128) = sub_257743674();
  *(inited + 136) = v34;
  *(inited + 144) = 0;
  *(inited + 152) = 0x736C6562614CLL;
  *(inited + 160) = 0xE600000000000000;
  sub_2574AD5D8(v2 + v32[5], v15, &qword_27F87FAA8, &unk_257767580);
  if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v36 = v67;
    v35 = v68;
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v9, v37);
  }

  v67 = v36;
  LOBYTE(v68) = v35;
  v38 = sub_2576ECD5C();

  *(inited + 168) = v38;
  *(inited + 176) = 0;
  *(inited + 184) = 1;
  OUTLINED_FUNCTION_1_74(v32[8]);
  if (v39)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    v40 = v67;
    v41 = v68;
    sub_257469AE0();
    inited = v42;
    *(v42 + 16) = 5;
    *(v42 + 192) = 0xD000000000000015;
    *(v42 + 200) = 0x8000000257781950;
    *(v42 + 208) = v40;
    *(v42 + 216) = v41;
    *(v42 + 224) = 0;
  }

  OUTLINED_FUNCTION_1_74(v32[9]);
  if (v43)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v44)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v62;
    }

    OUTLINED_FUNCTION_11_38();
    *(v46 + 32) = 0xD000000000000016;
    *(v46 + 40) = v45;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v32[10]);
  if (v47)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v44)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v63;
    }

    OUTLINED_FUNCTION_11_38();
    *(v49 + 32) = 0xD000000000000018;
    *(v49 + 40) = v48;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v32[11]);
  if (v50)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v44)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v64;
    }

    OUTLINED_FUNCTION_11_38();
    *(v52 + 32) = 0xD00000000000001FLL;
    *(v52 + 40) = v51;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v32[12]);
  if (v53)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_7_40();
    if (v44)
    {
      OUTLINED_FUNCTION_14_25();
      inited = v65;
    }

    OUTLINED_FUNCTION_11_38();
    *(v55 + 32) = 0xD000000000000016;
    *(v55 + 40) = v54;
    OUTLINED_FUNCTION_42_14();
  }

  OUTLINED_FUNCTION_1_74(v32[13]);
  if (v56)
  {
    OUTLINED_FUNCTION_6_52();
    OUTLINED_FUNCTION_316();
    v57 = v67;
    v58 = v68;
    v59 = *(inited + 16);
    if (v59 >= *(inited + 24) >> 1)
    {
      sub_257469AE0();
      inited = v66;
    }

    *(inited + 16) = v59 + 1;
    v60 = inited + 40 * v59;
    *(v60 + 32) = 0xD000000000000017;
    *(v60 + 40) = 0x80000002577819F0;
    *(v60 + 48) = v57;
    *(v60 + 56) = v58;
    *(v60 + 64) = 0;
  }

  sub_2576AACFC(inited);
  v61 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_35();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 32));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 36));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 40));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 44));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 48));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.getter()
{
  v0 = type metadata accessor for Proto_NonMaximumSuppression(0);
  OUTLINED_FUNCTION_20_23(*(v0 + 52));
  return OUTLINED_FUNCTION_205();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.setter()
{
  v3 = OUTLINED_FUNCTION_19_27();
  result = OUTLINED_FUNCTION_34_14(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void NonMaximumSuppressorConfiguration.method.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = OUTLINED_FUNCTION_16_1();
  v26 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(v25);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881548, &unk_257775288);
  OUTLINED_FUNCTION_13(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  v44 = &a9 - v43;
  sub_2574AD5D8(v24, v38, &qword_27F87FAA0, &qword_257775280);
  v45 = 1;
  if (__swift_getEnumTagSinglePayload(v38, 1, v26) != 1)
  {
    sub_2576EBB28();
    sub_2576EBD68();
    OUTLINED_FUNCTION_3_65();
    sub_2576EBB28();
    sub_2576EBDBC(v32, type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod);
    v45 = 0;
  }

  v46 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  if (__swift_getEnumTagSinglePayload(v44, 1, v46) == 1)
  {
    *v20 = 0;
    v47 = &v20[*(type metadata accessor for Proto_NonMaximumSuppression.PickTop(0) + 20)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    if (__swift_getEnumTagSinglePayload(v44, 1, v46) != 1)
    {
      sub_2574695E4(v44, &qword_27F881548, &unk_257775288);
    }
  }

  else
  {
    sub_2576EBB28();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576EB9A4()
{
  v0 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2576EBD68();
  return NonMaximumSuppressorConfiguration.method.setter();
}

uint64_t NonMaximumSuppressorConfiguration.method.setter()
{
  v1 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  sub_2574695E4(v0, &qword_27F87FAA0, &qword_257775280);
  OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_368();
  sub_2576EBB28();
  OUTLINED_FUNCTION_3_65();
  sub_2576EBB28();
  type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t NonMaximumSuppressorConfiguration.SelectTopConfiguration.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Proto_NonMaximumSuppression.PickTop(0) + 20)];
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2576EBB28()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

void sub_2576EBC4C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = a1[3];
    sub_2576EBD68();
    sub_2574695E4(v5, &qword_27F87FAA0, &qword_257775280);
    OUTLINED_FUNCTION_2_63();
    sub_2576EBB28();
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_98_2();
    sub_2576EBB28();
    type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_17_26();
    sub_2576EBDBC(v3, v11);
  }

  else
  {
    sub_2574695E4(*a1, &qword_27F87FAA0, &qword_257775280);
    OUTLINED_FUNCTION_2_63();
    sub_2576EBB28();
    OUTLINED_FUNCTION_3_65();
    OUTLINED_FUNCTION_98_2();
    sub_2576EBB28();
    type metadata accessor for Proto_NonMaximumSuppression.OneOf_SuppressionMethod(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_2576EBD68()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t sub_2576EBDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t NonMaximumSuppressorConfiguration.iouThreshold.setter(double a1)
{
  result = type metadata accessor for Proto_NonMaximumSuppression(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

double (*NonMaximumSuppressorConfiguration.iouThreshold.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 24);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_25766AA44;
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThreshold.setter(double a1)
{
  result = type metadata accessor for Proto_NonMaximumSuppression(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

double (*NonMaximumSuppressorConfiguration.confidenceThreshold.modify(uint64_t a1))(uint64_t)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 28);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return sub_2576EDB40;
}

uint64_t sub_2576EBF6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.confidenceInputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 32));

  return OUTLINED_FUNCTION_368();
}

uint64_t sub_2576EC014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 36));

  return OUTLINED_FUNCTION_368();
}

uint64_t sub_2576EC0B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.iouThresholdInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 40));

  return OUTLINED_FUNCTION_368();
}

uint64_t sub_2576EC15C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceThresholdInputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 44));

  return OUTLINED_FUNCTION_368();
}

uint64_t sub_2576EC200(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.confidenceOutputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 48));

  return OUTLINED_FUNCTION_368();
}

uint64_t sub_2576EC2A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.setter();
}

uint64_t NonMaximumSuppressorConfiguration.coordinatesOutputFeatureName.modify()
{
  v0 = OUTLINED_FUNCTION_27_22();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression(v2);
  OUTLINED_FUNCTION_5_50(*(v3 + 52));

  return OUTLINED_FUNCTION_368();
}

uint64_t NonMaximumSuppressorConfiguration.labels.getter()
{
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40();
  v15 = type metadata accessor for Proto_NonMaximumSuppression(0);
  sub_2574AD5D8(v1 + *(v15 + 20), v2, &qword_27F87FAA8, &unk_257767580);
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v18 = v20;
    v17 = v21;
    OUTLINED_FUNCTION_0_91();
    result = sub_2576EBDBC(v10, v19);
  }

  *v0 = v18;
  *(v0 + 8) = v17;
  return result;
}

uint64_t sub_2576EC4B8@<X0>(uint64_t a1@<X8>)
{
  result = NonMaximumSuppressorConfiguration.labels.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_2576EC4FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return NonMaximumSuppressorConfiguration.labels.setter(&v3);
}

uint64_t NonMaximumSuppressorConfiguration.labels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - v7);
  v9 = *a1;
  if (a1[1])
  {
    v10 = *a1;

    sub_25764CFE8();
    v11 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = v8 + *(type metadata accessor for Proto_StringVector(0) + 20);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v8 = v9;
    v11 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  v16 = type metadata accessor for Proto_NonMaximumSuppression(0);
  return sub_2576EC8A0(v8, v1 + *(v16 + 20));
}

void sub_2576EC654()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_16_1();
  v5 = type metadata accessor for Proto_Int64Vector(v4);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for Proto_StringVector(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = (v14 - v13);
  v16 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(0);
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_55();
  sub_2576EBD68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_156();
    sub_2576EBB28();
    v21 = *v1;
    v22 = *(*v1 + 16);
    if (!v22)
    {
      OUTLINED_FUNCTION_0_91();
      sub_2576EBDBC(v3, v32);
      OUTLINED_FUNCTION_16_23();
      sub_2576EBDBC(v1, v33);
      v23 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v34 = MEMORY[0x277D84F90];
    sub_257483724();
    v23 = v34;
    v24 = (v21 + 32);
    v25 = *(v34 + 16);
    do
    {
      v27 = *v24++;
      v26 = v27;
      if (v25 >= *(v34 + 24) >> 1)
      {
        sub_257483724();
      }

      *(v34 + 16) = v25 + 1;
      *(v34 + 8 * v25++ + 32) = v26;
      --v22;
    }

    while (v22);
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v3, v29);
    OUTLINED_FUNCTION_16_23();
    v31 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v3, v28);
    OUTLINED_FUNCTION_156();
    sub_2576EBB28();
    v23 = *v15;

    v30 = type metadata accessor for Proto_StringVector;
    v31 = v15;
  }

  sub_2576EBDBC(v31, v30);
LABEL_10:
  *v0 = v23;
  *(v0 + 8) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576EC8A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*NonMaximumSuppressorConfiguration.labels.modify())(void ***a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_12_39(v1);
  v3 = type metadata accessor for Proto_NonMaximumSuppression.OneOf_ClassLabels(v2);
  v1[3] = v3;
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  v1[4] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  v1[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FAA8, &unk_257767580);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v1[6] = __swift_coroFrameAllocStub(v9);
  v1[7] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[8] = v10;
  v11 = *(type metadata accessor for Proto_NonMaximumSuppression(0) + 20);
  *(v1 + 3) = v11;
  sub_2574AD5D8(v0 + v11, v10, &qword_27F87FAA8, &unk_257767580);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_10_44();
    sub_2576EBB28();
    OUTLINED_FUNCTION_4_55();
    sub_2576EBD68();
    sub_2576EC654();
    v13 = v16;
    v12 = v17;
    OUTLINED_FUNCTION_0_91();
    sub_2576EBDBC(v6, v14);
  }

  *v1 = v13;
  *(v1 + 8) = v12;
  return sub_2576ECAC0;
}

void sub_2576ECAC0(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = *(*a1 + 8);
  v9 = (*a1)[3];
  if (a2)
  {
    v10 = v6[6];
    if ((*a1)[1])
    {
      v11 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v13 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_2576EC8A0(v10, v5 + v4);
    v18 = *v6;
  }

  else
  {
    v10 = v6[7];
    if ((*a1)[1])
    {
      v12 = **a1;

      sub_25764CFE8();
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v19 = v10 + *(type metadata accessor for Proto_StringVector(0) + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v10 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_2576EC8A0(v9, v5 + v4);
  }

  free(v7);
  free(v9);
  free(v10);
  free(v2);
  free(v3);

  free(v6);
}

unint64_t sub_2576ECC30()
{
  v0 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = (v5 - v4);
  v7 = type metadata accessor for NonMaximumSuppressorConfiguration.Method(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_156();
  sub_2576EBD68();
  OUTLINED_FUNCTION_2_63();
  sub_2576EBB28();
  if (*v6)
  {
    v11 = 0xD000000000000014;
  }

  else
  {
    v11 = 0x54207463656C6553;
  }

  *v6;
  sub_2576EBDBC(v6, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
  return v11;
}

uint64_t sub_2576ECD5C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v0[8])
  {
    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_257484040(0, v2, 0);
      v3 = v19;
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        v6 = sub_257743674();
        v8 = v7;
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_257484040((v9 > 1), v10 + 1, 1);
        }

        *(v19 + 16) = v10 + 1;
        v11 = v19 + 24 * v10;
        *(v11 + 32) = v6;
        *(v11 + 40) = v8;
        *(v11 + 48) = 0;
        --v2;
      }

      while (v2);
    }
  }

  else if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v20;
    v12 = (v1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      MEMORY[0x259C64E90](v13, v14);
      OUTLINED_FUNCTION_316();

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_257484040((v15 > 1), v16 + 1, 1);
      }

      *(v20 + 16) = v16 + 1;
      v17 = v20 + 24 * v16;
      *(v17 + 32) = 34;
      *(v17 + 40) = 0xE100000000000000;
      *(v17 + 48) = 0;
      v12 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t static NonMaximumSuppressorConfiguration.Labels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257487374(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257479C78(v4, v5);
}

uint64_t static NonMaximumSuppressorConfiguration.Method.== infix(_:_:)()
{
  v0 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881550, &qword_257775298);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75_0();
  v15 = *(v14 + 56);
  sub_2576EBD68();
  sub_2576EBD68();
  sub_2576EBB28();
  sub_2576EBB28();
  if (*v9 == *v6)
  {
    v18 = *(type metadata accessor for Proto_NonMaximumSuppression.PickTop(0) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_15_24();
    sub_2576ED870(v19, v20);
    v21 = sub_257743644();
    sub_2576EBDBC(v6, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
    v22 = OUTLINED_FUNCTION_98_2();
    sub_2576EBDBC(v22, v23);
    if (v21)
    {
      return 1;
    }
  }

  else
  {
    sub_2576EBDBC(v6, type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration);
    v16 = OUTLINED_FUNCTION_205();
    sub_2576EBDBC(v16, v17);
  }

  return 0;
}

uint64_t (*NonMaximumSuppressorConfiguration.SelectTopConfiguration.perClass.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_257642180;
}

BOOL static NonMaximumSuppressorConfiguration.SelectTopConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = OUTLINED_FUNCTION_0_0();
    v3 = *(type metadata accessor for Proto_NonMaximumSuppression.PickTop(v2) + 20);
    sub_2577431B4();
    OUTLINED_FUNCTION_15_24();
    sub_2576ED870(v4, v5);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

void NonMaximumSuppressorConfiguration.SelectTopConfiguration.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  OUTLINED_FUNCTION_16_1();
  v2 = sub_257743A84();
  v3 = OUTLINED_FUNCTION_63(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_0();
  v15 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  sub_2576EBD68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = 0x7373616C43726570;
  *(v19 + 40) = 0xE800000000000000;
  v20 = *v1;
  *(v19 + 72) = MEMORY[0x277D839B0];
  *(v19 + 48) = v20;
  v21 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v21);
  (*(v5 + 104))(v10, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576ED870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2576ED914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_257462C30);
}

uint64_t sub_2576ED96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_257462C6C);
}

uint64_t sub_2576ED9D4(uint64_t a1)
{
  v2 = type metadata accessor for NonMaximumSuppressorConfiguration.SelectTopConfiguration(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = type metadata accessor for Proto_NonMaximumSuppression.PickTop(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2576EDACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_74@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_50@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  v3 = (v1 + a1);
  v5 = *v3;
  result = v3[1];
  *(v2 + 24) = result;
  *v2 = v5;
  *(v2 + 8) = result;
  return result;
}

void OUTLINED_FUNCTION_6_52()
{
  *(v0 - 304) = 34;
  *(v0 - 296) = 0xE100000000000000;

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_7_40()
{
  v2 = *(v1 - 304);
  v3 = *(v1 - 296);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;
  return 0;
}

void OUTLINED_FUNCTION_14_25()
{

  sub_257469AE0();
}

uint64_t OUTLINED_FUNCTION_19_27()
{

  return type metadata accessor for Proto_NonMaximumSuppression(0);
}

uint64_t OUTLINED_FUNCTION_20_23@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_34_14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void OUTLINED_FUNCTION_42_14()
{
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
}

void sub_2576EDD44()
{
  OUTLINED_FUNCTION_31();
  v2 = type metadata accessor for NeuralNetwork.TensorDescriptor();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v221 = v8 - v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_167();
  v224 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_167();
  v226 = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_167();
  v220 = v15;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_167();
  v225 = v17;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v18);
  v222 = &v220 - v19;
  v20 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v220 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257743FF0;
  *(inited + 32) = 1701667150;
  *(inited + 40) = 0xE400000000000000;
  v31 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  v32 = *(v31 + 24);
  *(inited + 48) = *(v31 + 16);
  *(inited + 56) = v32;
  *(inited + 64) = 0;
  *(inited + 72) = 1684957515;
  *(inited + 80) = 0xE400000000000000;

  NeuralNetwork.Layer.kind.getter(v29);
  v33 = NeuralNetwork.Layer.Kind.name.getter();
  v35 = v34;
  OUTLINED_FUNCTION_16_24();
  sub_2576F0AF8(v29, v36);
  *(inited + 88) = v33;
  *(inited + 96) = v35;
  *(inited + 104) = 0;
  v240 = inited;
  NeuralNetwork.Layer.kind.getter(v26);
  v37 = NeuralNetwork.Layer.Kind.propertyDescriptions.getter();
  sub_2576F0AF8(v26, v1);
  v38 = *(v37 + 16);
  v223 = v5;
  v231 = v31;
  if (v38)
  {
    v239 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_37();
    sub_257484060();
    v39 = v239;
    v230 = v37;
    v40 = (v37 + 56);
    do
    {
      v41 = *(v40 - 3);
      v42 = *(v40 - 2);
      v43 = *v40;
      v232 = *(v40 - 1);
      v239 = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);

      if (v45 >= v44 >> 1)
      {
        sub_257484060();
        v39 = v239;
      }

      *(v39 + 16) = v45 + 1;
      v46 = v39 + 40 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v42;
      *(v46 + 48) = v232;
      *(v46 + 56) = v43;
      *(v46 + 64) = 0;
      v40 += 4;
      --v38;
    }

    while (v38);

    v31 = v231;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  sub_25763CF70(v39);
  OUTLINED_FUNCTION_296();
  v47 = MEMORY[0x277D84F90];
  v227 = *(*(v31 + 32) + 16);
  if (v227)
  {
    OUTLINED_FUNCTION_296();
    v48 = 0;
    v49 = v47;
    while (1)
    {
      v50 = *(v31 + 32);
      if (v48 >= *(v50 + 16))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        v215 = *(v48 + 16);
        OUTLINED_FUNCTION_0_66();
        sub_257469AE0();
        v125 = v216;
        goto LABEL_56;
      }

      v230 = v49;
      v232 = v48;
      v51 = v50 + 16 * v48;
      v52 = *(v51 + 40);
      v228 = *(v51 + 32);
      v229 = v52;
      v53 = *(v31 + 48);
      v54 = *(v53 + 16);
      if (v54)
      {
        v237 = v47;

        OUTLINED_FUNCTION_25_14();
        sub_257484490();
        v55 = v237;
        v56 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v56);
        v58 = v53 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
        v60 = *(v59 + 72);
        v61 = v222;
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v58, v61);
          v237 = v55;
          OUTLINED_FUNCTION_20_24();
          if (v63)
          {
            OUTLINED_FUNCTION_174(v62);
            OUTLINED_FUNCTION_46_11();
            v55 = v237;
          }

          *(v55 + 16) = v47;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v66, v64 + v65 * v31);
          v58 += v60;
          --v54;
        }

        while (v54);

        v31 = v231;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {

        v55 = v47;
      }

      v67 = *(v55 + 16);

      v63 = v232 >= v67;
      v48 = v232;
      if (v63)
      {
        OUTLINED_FUNCTION_30_16();
        MEMORY[0x259C64E90](v228, v229);

        MEMORY[0x259C64E90](34, 0xE100000000000000);
        v81 = v237;
        v82 = v238;
        v49 = v230;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = *(v49 + 16);
          OUTLINED_FUNCTION_0_66();
          sub_257469C78();
          v49 = v119;
        }

        v84 = *(v49 + 16);
        v83 = *(v49 + 24);
        OUTLINED_FUNCTION_37_14();
        if (v63)
        {
          OUTLINED_FUNCTION_1_69(v85);
          sub_257469C78();
          v49 = v86;
        }

        goto LABEL_50;
      }

      v68 = *(v31 + 48);
      v69 = *(v68 + 16);
      if (v69)
      {
        v237 = v47;

        OUTLINED_FUNCTION_25_14();
        sub_257484490();
        v70 = v237;
        v71 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v71);
        v73 = v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
        v75 = *(v74 + 72);
        v76 = v220;
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v73, v76);
          v237 = v70;
          OUTLINED_FUNCTION_20_24();
          if (v63)
          {
            OUTLINED_FUNCTION_174(v77);
            OUTLINED_FUNCTION_46_11();
            v70 = v237;
          }

          *(v70 + 16) = v47;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v80, v78 + v79 * v31);
          v73 += v75;
          --v69;
        }

        while (v69);

        v31 = v231;
        v48 = v232;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        v70 = v47;
      }

      if (v48 >= *(v70 + 16))
      {
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_2_64();
      v87 = v225;
      sub_2576F0BF4(v88, v225);

      v89 = *(v87 + 8);
      v90 = *(v89 + 16);
      if (v90)
      {
        break;
      }

      v97 = *(v47 + 16);
      if (v97)
      {
        v91 = v47;
LABEL_40:
        v237 = v47;
        v98 = OUTLINED_FUNCTION_25_14();
        sub_257483754(v98, v99, v100);
        v101 = v237;
        v102 = 32;
        do
        {
          v236 = *(v91 + v102);
          v103 = sub_257743974();
          v105 = v104;
          v237 = v101;
          v107 = *(v101 + 16);
          v106 = *(v101 + 24);
          if (v107 >= v106 >> 1)
          {
            v109 = OUTLINED_FUNCTION_174(v106);
            sub_257483754(v109, v107 + 1, 1);
            v101 = v237;
          }

          *(v101 + 16) = v107 + 1;
          v108 = v101 + 16 * v107;
          *(v108 + 32) = v103;
          *(v108 + 40) = v105;
          v102 += 8;
          --v97;
        }

        while (v97);

        v31 = v231;
        goto LABEL_45;
      }

      v101 = v47;
LABEL_45:
      v237 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v110 = sub_257743604();
      v112 = v111;

      OUTLINED_FUNCTION_30_16();
      MEMORY[0x259C64E90](v228, v229);

      MEMORY[0x259C64E90](8226, 0xE200000000000000);
      MEMORY[0x259C64E90](v110, v112);

      v81 = v237;
      v82 = v238;
      v49 = v230;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v232;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v120 = *(v49 + 16);
        OUTLINED_FUNCTION_0_66();
        sub_257469C78();
        v49 = v121;
      }

      v84 = *(v49 + 16);
      v114 = *(v49 + 24);
      OUTLINED_FUNCTION_37_14();
      if (v63)
      {
        OUTLINED_FUNCTION_1_69(v115);
        sub_257469C78();
        v49 = v122;
      }

      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v225, v116);
LABEL_50:
      ++v48;
      *(v49 + 16) = &v237;
      v117 = v49 + 24 * v84;
      *(v117 + 32) = v81;
      *(v117 + 40) = v82;
      *(v117 + 48) = 0;
      v47 = MEMORY[0x277D84F90];
      if (v48 == v227)
      {
        goto LABEL_54;
      }
    }

    v237 = v47;
    OUTLINED_FUNCTION_64_4();
    sub_257483724();
    v91 = v237;
    v92 = (v89 + 32);
    v93 = *(v237 + 16);
    do
    {
      v95 = *v92++;
      v94 = v95;
      v237 = v91;
      v96 = *(v91 + 24);
      v97 = v93 + 1;
      if (v93 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_174(v96);
        OUTLINED_FUNCTION_41_14();
        sub_257483724();
        v91 = v237;
      }

      *(v91 + 16) = v97;
      *(v91 + 8 * v93++ + 32) = v94;
      --v90;
    }

    while (v90);
    v47 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_54:
  v123 = v240;

  v48 = v123;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v230 = v49;
  if ((v124 & 1) == 0)
  {
    goto LABEL_116;
  }

  v125 = v123;
LABEL_56:
  v127 = *(v125 + 2);
  v126 = *(v125 + 3);
  if (v127 >= v126 >> 1)
  {
    OUTLINED_FUNCTION_1_69(v126);
    sub_257469AE0();
    v125 = v217;
  }

  *(v125 + 2) = v127 + 1;
  v222 = v125;
  v128 = &v125[40 * v127];
  *(v128 + 4) = 0x737475706E49;
  *(v128 + 5) = 0xE600000000000000;
  *(v128 + 6) = v230;
  *(v128 + 7) = 0;
  v128[64] = 1;
  OUTLINED_FUNCTION_296();
  v129 = MEMORY[0x277D84F90];
  v225 = *(*(v31 + 40) + 16);
  if (v225)
  {
    OUTLINED_FUNCTION_296();
    v130 = 0;
    v131 = v129;
    v48 = v226;
    while (1)
    {
      v132 = *(v31 + 40);
      if (v130 >= *(v132 + 16))
      {
        goto LABEL_113;
      }

      v229 = v131;
      v232 = v130;
      v133 = v132 + 16 * v130;
      v134 = *(v133 + 40);
      v227 = *(v133 + 32);
      v228 = v134;
      v135 = *(v31 + 56);
      v136 = *(v135 + 16);
      if (v136)
      {
        v234 = v129;

        OUTLINED_FUNCTION_25_14();
        sub_257484490();
        v137 = v234;
        v138 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v138);
        v140 = v135 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
        v142 = *(v141 + 72);
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v140, v48);
          v234 = v137;
          OUTLINED_FUNCTION_20_24();
          if (v63)
          {
            OUTLINED_FUNCTION_174(v143);
            OUTLINED_FUNCTION_46_11();
            v137 = v234;
          }

          *(v137 + 16) = v47;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v146, v144 + v145 * v31);
          v140 += v142;
          --v136;
        }

        while (v136);

        v31 = v231;
        v129 = MEMORY[0x277D84F90];
      }

      else
      {

        v137 = v129;
      }

      v147 = *(v137 + 16);

      v148 = v232;
      if (v232 >= v147)
      {
        OUTLINED_FUNCTION_25_23();

        MEMORY[0x259C64E90](34, 0xE100000000000000);
        v47 = v234;
        v161 = v235;
        v131 = v229;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = *(v131 + 16);
          OUTLINED_FUNCTION_0_66();
          sub_257469C78();
          v131 = v200;
        }

        v48 = v226;
        v163 = *(v131 + 16);
        v162 = *(v131 + 24);
        OUTLINED_FUNCTION_37_14();
        v165 = v232;
        if (v63)
        {
          OUTLINED_FUNCTION_1_69(v164);
          sub_257469C78();
          v165 = v232;
          v131 = v166;
        }

        goto LABEL_100;
      }

      v149 = *(v31 + 56);
      v150 = *(v149 + 16);
      v48 = v221;
      if (v150)
      {
        v234 = v129;

        OUTLINED_FUNCTION_25_14();
        sub_257484490();
        v151 = v234;
        v152 = type metadata accessor for Proto_Tensor(0);
        OUTLINED_FUNCTION_24(v152);
        v154 = v149 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
        v156 = *(v155 + 72);
        do
        {
          OUTLINED_FUNCTION_0_92();
          sub_2576F0BF4(v154, v48);
          v234 = v151;
          OUTLINED_FUNCTION_20_24();
          if (v63)
          {
            OUTLINED_FUNCTION_174(v157);
            OUTLINED_FUNCTION_46_11();
            v151 = v234;
          }

          *(v151 + 16) = v47;
          OUTLINED_FUNCTION_5_51();
          OUTLINED_FUNCTION_1_75(v160, v158 + v159 * v31);
          v154 += v156;
          --v150;
        }

        while (v150);

        v31 = v231;
        v148 = v232;
      }

      else
      {
        v151 = v129;
      }

      if (v148 >= *(v151 + 16))
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_2_64();
      v167 = v224;
      sub_2576F0BF4(v168, v224);

      v169 = *(v167 + 8);
      v170 = *(v169 + 16);
      if (v170)
      {
        break;
      }

      v178 = MEMORY[0x277D84F90];
      v177 = *(MEMORY[0x277D84F90] + 16);
      if (v177)
      {
        v171 = MEMORY[0x277D84F90];
LABEL_90:
        v234 = v178;
        v179 = OUTLINED_FUNCTION_25_14();
        sub_257483754(v179, v180, v181);
        v182 = v234;
        v183 = 32;
        do
        {
          v233 = *(v171 + v183);
          v184 = sub_257743974();
          v186 = v185;
          v234 = v182;
          v188 = *(v182 + 16);
          v187 = *(v182 + 24);
          if (v188 >= v187 >> 1)
          {
            v190 = OUTLINED_FUNCTION_174(v187);
            sub_257483754(v190, v188 + 1, 1);
            v182 = v234;
          }

          *(v182 + 16) = v188 + 1;
          v189 = v182 + 16 * v188;
          *(v189 + 32) = v184;
          *(v189 + 40) = v186;
          v183 += 8;
          --v177;
        }

        while (v177);

        v31 = v231;
        goto LABEL_95;
      }

      v182 = v178;
LABEL_95:
      v234 = v182;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v191 = sub_257743604();
      v193 = v192;

      OUTLINED_FUNCTION_25_23();

      MEMORY[0x259C64E90](8226, 0xE200000000000000);
      MEMORY[0x259C64E90](v191, v193);

      v47 = v234;
      v161 = v235;
      v131 = v229;
      v194 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v226;
      if ((v194 & 1) == 0)
      {
        v201 = *(v131 + 16);
        OUTLINED_FUNCTION_0_66();
        sub_257469C78();
        v131 = v202;
      }

      v129 = MEMORY[0x277D84F90];
      v163 = *(v131 + 16);
      v195 = *(v131 + 24);
      OUTLINED_FUNCTION_37_14();
      if (v63)
      {
        OUTLINED_FUNCTION_1_69(v196);
        sub_257469C78();
        v131 = v203;
      }

      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v224, v197);
      v165 = v232;
LABEL_100:
      v130 = v165 + 1;
      *(v131 + 16) = &v234;
      v198 = v131 + 24 * v163;
      *(v198 + 32) = v47;
      *(v198 + 40) = v161;
      *(v198 + 48) = 0;
      if (v130 == v225)
      {
        goto LABEL_104;
      }
    }

    v234 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_37();
    sub_257483724();
    v171 = v234;
    v172 = (v169 + 32);
    v173 = *(v234 + 16);
    do
    {
      v175 = *v172++;
      v174 = v175;
      v234 = v171;
      v176 = *(v171 + 24);
      v177 = v173 + 1;
      if (v173 >= v176 >> 1)
      {
        OUTLINED_FUNCTION_174(v176);
        OUTLINED_FUNCTION_41_14();
        sub_257483724();
        v171 = v234;
      }

      *(v171 + 16) = v177;
      *(v171 + 8 * v173++ + 32) = v174;
      --v170;
    }

    while (v170);
    v178 = MEMORY[0x277D84F90];
    goto LABEL_90;
  }

  v131 = MEMORY[0x277D84F90];
LABEL_104:

  v204 = v222;
  v206 = *(v222 + 2);
  v205 = *(v222 + 3);
  v207 = v206 + 1;
  if (v206 >= v205 >> 1)
  {
    OUTLINED_FUNCTION_1_69(v205);
    sub_257469AE0();
    v204 = v218;
  }

  *(v204 + 2) = v207;
  v208 = &v204[40 * v206];
  *(v208 + 4) = 0x7374757074754FLL;
  *(v208 + 5) = 0xE700000000000000;
  *(v208 + 6) = v131;
  *(v208 + 7) = 0;
  v208[64] = 1;
  v209 = v204;
  swift_beginAccess();
  if (*(v31 + 64) == 1)
  {
    v210 = *(v209 + 3);
    v211 = v206 + 2;
    v212 = v209;
    if (v211 > (v210 >> 1))
    {
      OUTLINED_FUNCTION_174(v210);
      sub_257469AE0();
      v212 = v219;
    }

    *(v212 + 2) = v211;
    OUTLINED_FUNCTION_22_24(&v212[40 * v207]);
    *(v214 + 48) = xmmword_2577754B0;
    *(v214 + 64) = 0;
  }

  else
  {
    v213 = v209;
  }

  sub_2576AACFC(v213);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_40();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v11 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a3 + v11) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(a1);
  sub_2574897E0(v3);
  v12 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
  sub_25752846C();
  OUTLINED_FUNCTION_3_66();
  return sub_2576F0AF8(a2, v13);
}

uint64_t NeuralNetwork.Layer.inputNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  v2 = *(v1 + 32);
}

uint64_t NeuralNetwork.Layer.inputNames.setter()
{
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_237_0();
  v10 = *(v7 + 32);
  *(v7 + 32) = v0;
}

uint64_t NeuralNetwork.Layer.outputNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  v2 = *(v1 + 40);
}

uint64_t NeuralNetwork.Layer.outputNames.setter()
{
  v3 = OUTLINED_FUNCTION_155_1();
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_237_0();
  v10 = *(v7 + 40);
  *(v7 + 40) = v0;
}

void NeuralNetwork.Layer.outputTensors.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206(v12);
  OUTLINED_FUNCTION_296();
  v13 = *(v0 + 56);
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_64_4();
    sub_257484490();
    v15 = v26;
    v16 = type metadata accessor for Proto_Tensor(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v18, v11);
      OUTLINED_FUNCTION_187();
      if (v22)
      {
        OUTLINED_FUNCTION_174(v21);
        sub_257484490();
        v15 = v26;
      }

      *(v15 + 16) = v1;
      v23 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_1_75(v25, v15 + v24 + *(v6 + 72) * v2);
      v18 += v20;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.name.getter()
{
  v1 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206(v1);
  OUTLINED_FUNCTION_296();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return OUTLINED_FUNCTION_205();
}

uint64_t sub_2576EF114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return NeuralNetwork.Layer.name.setter(v1, v2);
}

uint64_t NeuralNetwork.Layer.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_12_40();
    v9 = v11;
    *(v3 + v6) = v11;
  }

  OUTLINED_FUNCTION_237_0();
  v12 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

void (*NeuralNetwork.Layer.name.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 64) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return sub_2576EF264;
}

void sub_2576EF264(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    NeuralNetwork.Layer.name.setter(v3, v4);
    v7 = *(v2 + 56);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 64);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 64);
      v15 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v15);
      OUTLINED_FUNCTION_12_40();
      v12 = v16;
      *(v14 + v13) = v16;
    }

    OUTLINED_FUNCTION_447();
    v17 = *(v12 + 24);
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
  }

  free(v2);
}

uint64_t NeuralNetwork.Layer.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881578, &qword_2577754C0);
  OUTLINED_FUNCTION_13(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  v25 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206(v25);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  OUTLINED_FUNCTION_296();
  sub_2576F0A20(v1 + v26, v18);
  v27 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v3) != 1)
  {
    sub_2576F0B50(v18, v12);
    sub_2576F0BF4(v12, v9);
    sub_25748D318(v9);
    sub_2576F0AF8(v12, type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer);
    v27 = 0;
  }

  v28 = type metadata accessor for NeuralNetwork.Layer.Kind();
  __swift_storeEnumTagSinglePayload(v24, v27, 1, v28);
  if (__swift_getEnumTagSinglePayload(v24, 1, v28) != 1)
  {
    return sub_2576F0B50(v24, a1);
  }

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  OUTLINED_FUNCTION_205();
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v24, 1, v28);
  if (result != 1)
  {
    return sub_2576F0A90(v24);
  }

  return result;
}

uint64_t sub_2576EF590(uint64_t a1)
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2576F0BF4(a1, v5);
  return NeuralNetwork.Layer.kind.setter(v5);
}

uint64_t NeuralNetwork.Layer.kind.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40();
  sub_2574897E0(v1);
  v7 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  sub_25752846C();
  OUTLINED_FUNCTION_3_66();
  return sub_2576F0AF8(a1, v8);
}

void (*NeuralNetwork.Layer.kind.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v3);
  a1[1] = __swift_coroFrameAllocStub(*(v4 + 64));
  v5 = type metadata accessor for NeuralNetwork.Layer.Kind();
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  a1[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  a1[3] = v8;
  NeuralNetwork.Layer.kind.getter(v8);
  return sub_2576EF798;
}

void sub_2576EF798(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_2576F0BF4(a1[3], v2);
    sub_2574897E0(v4);
    v6 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    OUTLINED_FUNCTION_44_9(v6);
    OUTLINED_FUNCTION_3_66();
    sub_2576F0AF8(v2, v7);
  }

  else
  {
    v8 = a1[3];
    sub_2574897E0(a1[1]);
    v9 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    OUTLINED_FUNCTION_44_9(v9);
  }

  sub_2576F0AF8(v3, type metadata accessor for NeuralNetwork.Layer.Kind);
  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_2576EF870(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.inputNames.setter();
}

void (*NeuralNetwork.Layer.inputNames.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 56) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 48) = *(v4 + 32);

  return sub_2576EF924;
}

void sub_2576EF924(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    NeuralNetwork.Layer.inputNames.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      v14 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v14);
      OUTLINED_FUNCTION_12_40();
      v11 = v15;
      *(v13 + v12) = v15;
    }

    OUTLINED_FUNCTION_447();
    v16 = *(v11 + 32);
    *(v11 + 32) = v3;
  }

  free(v2);
}

void NeuralNetwork.Layer.inputTensors.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Proto_NeuralNetworkLayer(0);
  OUTLINED_FUNCTION_206(v12);
  OUTLINED_FUNCTION_296();
  v13 = *(v0 + 48);
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_64_4();
    sub_257484490();
    v15 = v26;
    v16 = type metadata accessor for Proto_Tensor(0);
    OUTLINED_FUNCTION_24(v16);
    v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v18, v11);
      OUTLINED_FUNCTION_187();
      if (v22)
      {
        OUTLINED_FUNCTION_174(v21);
        sub_257484490();
        v15 = v26;
      }

      *(v15 + 16) = v1;
      v23 = *(v6 + 80);
      OUTLINED_FUNCTION_193();
      OUTLINED_FUNCTION_1_75(v25, v15 + v24 + *(v6 + 72) * v2);
      v18 += v20;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_35();
}

void sub_2576EFB74(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.inputTensors.setter();
}

void NeuralNetwork.Layer.inputTensors.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_155_1();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for Proto_Tensor(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v0 + 16);
  if (v16)
  {
    v32 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_37();
    sub_257485208();
    v17 = v32;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_2_64();
      sub_2576F0BF4(v20, v2);
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v2, v15);
      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v2, v22);
      OUTLINED_FUNCTION_42_15();
      if (v24)
      {
        OUTLINED_FUNCTION_174(v23);
        OUTLINED_FUNCTION_41_14();
        sub_257485208();
        v17 = v32;
      }

      OUTLINED_FUNCTION_14_26();
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v26 = *(v1 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v1 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v29);
    OUTLINED_FUNCTION_12_40();
    v28 = v30;
    *(v1 + v25) = v30;
  }

  OUTLINED_FUNCTION_447();
  v31 = *(v28 + 48);
  *(v28 + 48) = v17;

  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.inputTensors.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.inputTensors.getter();
  *a1 = v3;
  return sub_2576EFDE0;
}

uint64_t sub_2576EFDF8(uint64_t *a1)
{
  v1 = *a1;

  return NeuralNetwork.Layer.outputNames.setter();
}

void (*NeuralNetwork.Layer.outputNames.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 56) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 48) = *(v4 + 40);

  return sub_2576EFEAC;
}

void sub_2576EFEAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    NeuralNetwork.Layer.outputNames.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      v14 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
      OUTLINED_FUNCTION_448(v14);
      OUTLINED_FUNCTION_12_40();
      v11 = v15;
      *(v13 + v12) = v15;
    }

    OUTLINED_FUNCTION_447();
    v16 = *(v11 + 40);
    *(v11 + 40) = v3;
  }

  free(v2);
}

void sub_2576EFF64(uint64_t *a1)
{
  v1 = *a1;

  NeuralNetwork.Layer.outputTensors.setter();
}

void NeuralNetwork.Layer.outputTensors.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_155_1();
  v3 = type metadata accessor for NeuralNetwork.TensorDescriptor();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for Proto_Tensor(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v0 + 16);
  if (v16)
  {
    v32 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_37();
    sub_257485208();
    v17 = v32;
    v18 = *(v6 + 80);
    OUTLINED_FUNCTION_193();
    v20 = v0 + v19;
    v21 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_2_64();
      sub_2576F0BF4(v20, v2);
      OUTLINED_FUNCTION_0_92();
      sub_2576F0BF4(v2, v15);
      OUTLINED_FUNCTION_4_56();
      sub_2576F0AF8(v2, v22);
      OUTLINED_FUNCTION_42_15();
      if (v24)
      {
        OUTLINED_FUNCTION_174(v23);
        OUTLINED_FUNCTION_41_14();
        sub_257485208();
        v17 = v32;
      }

      OUTLINED_FUNCTION_14_26();
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v26 = *(v1 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v1 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v29);
    OUTLINED_FUNCTION_12_40();
    v28 = v30;
    *(v1 + v25) = v30;
  }

  OUTLINED_FUNCTION_447();
  v31 = *(v28 + 56);
  *(v28 + 56) = v17;

  OUTLINED_FUNCTION_35();
}

uint64_t (*NeuralNetwork.Layer.outputTensors.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  NeuralNetwork.Layer.outputTensors.getter();
  *a1 = v3;
  return sub_2576F01D0;
}

uint64_t sub_2576F01E8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
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

uint64_t NeuralNetwork.Layer.isUpdatable.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  return *(v1 + 64);
}

uint64_t NeuralNetwork.Layer.isUpdatable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_12_40();
    v7 = v9;
    *(v2 + v4) = v9;
  }

  result = OUTLINED_FUNCTION_237_0();
  *(v7 + 64) = a1 & 1;
  return result;
}

void (*NeuralNetwork.Layer.isUpdatable.modify())(uint64_t *a1)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_36_15(v2) + 72) = v0;
  v3 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_296();
  *(v1 + 84) = *(v4 + 64);
  return sub_2576F0394;
}

void sub_2576F0394(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Proto_NeuralNetworkLayer._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_12_40();
    v7 = v11;
    *(v9 + v8) = v11;
  }

  OUTLINED_FUNCTION_447();
  *(v7 + 64) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.propertyDescriptions.getter()
{
  v2 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257743FF0;
  *(v9 + 32) = 1701667150;
  *(v9 + 40) = 0xE400000000000000;
  v10 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  v11 = *(v10 + 24);
  *(v9 + 48) = *(v10 + 16);
  *(v9 + 56) = v11;
  *(v9 + 64) = 1684957515;
  *(v9 + 72) = 0xE400000000000000;

  NeuralNetwork.Layer.kind.getter(v8);
  v12 = NeuralNetwork.Layer.Kind.name.getter();
  v14 = v13;
  OUTLINED_FUNCTION_16_24();
  sub_2576F0AF8(v8, v15);
  *(v9 + 80) = v12;
  *(v9 + 88) = v14;
  NeuralNetwork.Layer.kind.getter(v8);
  v16 = NeuralNetwork.Layer.Kind.propertyDescriptions.getter();
  sub_2576F0AF8(v8, v1);
  sub_25763CEB8(v16);
  OUTLINED_FUNCTION_296();
  v17 = v9;
  if (*(v10 + 64) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v9 + 16);
      OUTLINED_FUNCTION_0_66();
      sub_257469388();
      v17 = v23;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_1_69(v18);
      sub_257469388();
      v17 = v24;
    }

    *(v17 + 16) = v19 + 1;
    OUTLINED_FUNCTION_22_24(v17 + 32 * v19);
    *(v20 + 48) = 1702195828;
    *(v20 + 56) = 0xE400000000000000;
  }

  return v17;
}

uint64_t NeuralNetwork.Layer.namedWeights.getter()
{
  v0 = type metadata accessor for NeuralNetwork.Layer.Kind();
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  NeuralNetwork.Layer.kind.getter(v5 - v4);
  v7 = NeuralNetwork.Layer.Kind.namedWeights.getter();
  OUTLINED_FUNCTION_3_66();
  sub_2576F0AF8(v6, v8);
  return v7;
}

void NeuralNetwork.Layer.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v32 = v2;
  v31 = sub_257743A84();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v30 = type metadata accessor for NeuralNetwork.Layer();
  v11 = OUTLINED_FUNCTION_4(v30);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  sub_2576F0BF4(v0, v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257748720;
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  v17 = *(v0 + *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20));
  OUTLINED_FUNCTION_296();
  v18 = *(v17 + 24);
  v19 = MEMORY[0x277D837D0];
  *(v16 + 48) = *(v17 + 16);
  *(v16 + 56) = v18;
  *(v16 + 72) = v19;
  *(v16 + 80) = 1684957547;
  *(v16 + 88) = 0xE400000000000000;
  *(v16 + 120) = type metadata accessor for NeuralNetwork.Layer.Kind();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 96));

  NeuralNetwork.Layer.kind.getter(boxed_opaque_existential_0);
  *(v16 + 128) = 0x6D614E7475706E69;
  *(v16 + 136) = 0xEA00000000007365;
  OUTLINED_FUNCTION_296();
  v21 = *(v17 + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  *(v16 + 144) = v21;
  *(v16 + 168) = v22;
  strcpy((v16 + 176), "inputTensors");
  *(v16 + 189) = 0;
  *(v16 + 190) = -5120;

  NeuralNetwork.Layer.inputTensors.getter();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881580, &qword_2577754C8);
  *(v16 + 192) = v24;
  *(v16 + 216) = v25;
  *(v16 + 224) = 0x614E74757074756FLL;
  *(v16 + 232) = 0xEB0000000073656DLL;
  OUTLINED_FUNCTION_296();
  *(v16 + 240) = *(v17 + 40);
  *(v16 + 264) = v22;
  strcpy((v16 + 272), "outputTensors");
  *(v16 + 286) = -4864;

  NeuralNetwork.Layer.outputTensors.getter();
  *(v16 + 288) = v26;
  *(v16 + 312) = v25;
  *(v16 + 320) = 0x6174616470557369;
  *(v16 + 328) = 0xEB00000000656C62;
  OUTLINED_FUNCTION_296();
  v27 = *(v17 + 64);
  *(v16 + 360) = MEMORY[0x277D839B0];
  *(v16 + 336) = v27;
  v28 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v28);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v31);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F0A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2576F0A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881578, &qword_2577754C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2576F0AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2576F0B50(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

uint64_t type metadata accessor for NeuralNetwork.Layer()
{
  result = qword_27F881588;
  if (!qword_27F881588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2576F0BF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_30();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return a2;
}

unint64_t sub_2576F0C50()
{
  result = qword_27F87E4E0;
  if (!qword_27F87E4E0)
  {
    type metadata accessor for Proto_NeuralNetworkLayer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87E4E0);
  }

  return result;
}

uint64_t sub_2576F0CD0()
{
  result = type metadata accessor for Proto_NeuralNetworkLayer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_75(uint64_t a1, uint64_t a2)
{

  return sub_2576F0B50(v2, a2);
}

void OUTLINED_FUNCTION_12_40()
{

  sub_2575435B4();
}

uint64_t OUTLINED_FUNCTION_14_26()
{
  *(v4 + 16) = v3;
  v6 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;

  return sub_2576F0B50(v2, v6);
}

void OUTLINED_FUNCTION_25_23()
{
  v0[14] = 34;
  v0[15] = 0xE100000000000000;
  v2 = v0[7];
  v3 = v0[8];

  JUMPOUT(0x259C64E90);
}

void OUTLINED_FUNCTION_42_15()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_25752846C();
}

void OUTLINED_FUNCTION_46_11()
{

  sub_257484490();
}

void sub_2576F0F64()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_3();
  v10 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v9);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_99_3();
  v15 = *(v2 + *(type metadata accessor for Proto_MILSpec_ValueType(0) + 20));
  OUTLINED_FUNCTION_296();
  sub_257487308();
  v16 = OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_155(v16, v17, v10);
  if (v18)
  {
    sub_2574695E4(v0, &qword_27F879D40, &qword_257744660);
    v21 = OUTLINED_FUNCTION_120_1();
    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
    OUTLINED_FUNCTION_6_53();
    sub_2576FA218(v2, v19);
  }

  else
  {
    OUTLINED_FUNCTION_6_53();
    sub_2576FA218(v2, v20);
    sub_2576FBBA0();
    sub_2576FBBA0();
    sub_2576F5254();
    v21 = v22;
  }

  *v4 = v21;
  OUTLINED_FUNCTION_35();
}

void FeatureType.init(_:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for SizeRange();
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8F0, &unk_257770640);
  OUTLINED_FUNCTION_13(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_38();
  v25 = type metadata accessor for MLProgram.ValueType.TensorParameters(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_196();
  v93 = v33;
  v34 = OUTLINED_FUNCTION_153();
  v35 = type metadata accessor for FeatureType(v34);
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v92 = (v40 - v39);
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      MLProgram.ValueType.ListParameters.type.getter();
      if (v94 >> 61)
      {

LABEL_18:
        OUTLINED_FUNCTION_18_38();
        sub_2576FA218(v10, v60);
        goto LABEL_2;
      }

      v53 = v35;
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();

      MLProgram.ValueType.TensorParameters.shape.getter();
      v55 = sub_257482A7C(v54, &unk_2868B34A8);

      if ((v55 & 1) == 0 || (v56 = *v31, v57 = *(v31 + 8), sub_25773A738(&v94), v94 == 22))
      {
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v31, v58);
        OUTLINED_FUNCTION_18_38();
        sub_2576FA218(v10, v59);

        v35 = v53;
        goto LABEL_3;
      }

      v35 = v53;
      if (v94 > 0xEu || ((1 << v94) & 0x7BC0) == 0)
      {
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v31, v88);
        goto LABEL_18;
      }

      static FeatureType.sequenceOfInt(optional:)(0);
      OUTLINED_FUNCTION_2_65();
      sub_2576FA218(v31, v86);
      OUTLINED_FUNCTION_18_38();
      sub_2576FA218(v10, v87);
LABEL_34:

      sub_2576FBBA0();
      v41 = v3;
      v42 = 0;
LABEL_35:
      __swift_storeEnumTagSinglePayload(v41, v42, 1, v35);
      OUTLINED_FUNCTION_35();
      return;
    case 2:
    case 3:
    case 4:
LABEL_2:

LABEL_3:
      v41 = OUTLINED_FUNCTION_188();
      goto LABEL_35;
    default:
      v91 = v35;
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      v43 = *v93;
      v44 = *(v93 + 8);
      sub_25773A738(&v94);
      v89 = byte_257775B9A[v94];
      MLProgram.ValueType.TensorParameters.shape.getter();
      v46 = v45;
      v47 = *(v45 + 16);
      v90 = v3;
      if (v47)
      {
        OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
        sub_257483724();
        v48 = v94;
        v49 = *(v94 + 16);
        v50 = (v46 + 40);
        do
        {
          if (*v50)
          {
            v51 = 0;
          }

          else
          {
            v51 = *(v50 - 1);
          }

          v94 = v48;
          v52 = *(v48 + 24);
          if (v49 >= v52 >> 1)
          {
            OUTLINED_FUNCTION_13_1(v52);
            sub_257483724();
            v48 = v94;
          }

          *(v48 + 16) = v49 + 1;
          *(v48 + 8 * v49 + 32) = v51;
          v50 += 16;
          ++v49;
          --v47;
        }

        while (v47);

        v3 = v90;
      }

      else
      {

        v48 = MEMORY[0x277D84F90];
      }

      v35 = v91;
      if (sub_2576F1A38(0, v48))
      {
        v61 = *(v48 + 16);
        if (v61)
        {
          OUTLINED_FUNCTION_12_3(MEMORY[0x277D84F90]);
          sub_257484640();
          v62 = v94;
          v63 = type metadata accessor for Proto_SizeRange(0);
          v64 = 32;
          do
          {
            v65 = *(v48 + v64);
            v66 = v19 + *(v63 + 24);
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            if (v65)
            {
              v67 = v65;
              if (v65 < 0)
              {
                __break(1u);
                return;
              }
            }

            else
            {
              v67 = -1;
              v65 = 1;
            }

            *v19 = v65;
            v19[1] = v67;
            v94 = v62;
            v69 = *(v62 + 16);
            v68 = *(v62 + 24);
            if (v69 >= v68 >> 1)
            {
              OUTLINED_FUNCTION_13_1(v68);
              sub_257484640();
              v62 = v94;
            }

            *(v62 + 16) = v69 + 1;
            v70 = *(v14 + 80);
            OUTLINED_FUNCTION_193();
            v71 = *(v14 + 72);
            sub_2576FBBA0();
            v64 += 8;
            --v61;
          }

          while (v61);
        }

        v73 = &v92[*(type metadata accessor for FeatureType.ShapedArrayParameters() + 20)];
        *v73 = MEMORY[0x277D84F90];
        v74 = type metadata accessor for Proto_ArrayFeatureType(0);
        v75 = v74[6];
        v76 = type metadata accessor for Proto_ArrayFeatureType.OneOf_ShapeFlexibility(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
        v80 = &v73[v74[7]];
        *v80 = 0;
        v80[8] = -1;
        v81 = &v73[v74[8]];
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();

        sub_2576A5D40();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v93, v82);

        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v83, v84, v85, v76);
        sub_25751BB28();
        *(v73 + 1) = qword_257775BB8[v89];
        v73[16] = 1;
        *v92 = 0;
        v3 = v90;
        v35 = v91;
      }

      else
      {
        LOBYTE(v94) = v89;
        FeatureType.ShapedArrayParameters.init(dataType:shape:optional:)(&v94, v48, 0, v92);
        OUTLINED_FUNCTION_2_65();
        sub_2576FA218(v93, v72);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
  }
}

void sub_2576F17A0()
{
  OUTLINED_FUNCTION_433();
  v5 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_35_15();
  v10 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_17_3();
  v15 = type metadata accessor for MLProgram.ValueType.TupleParameters(v14);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = OUTLINED_FUNCTION_38();
  v20 = type metadata accessor for MLProgram.ValueType.ListParameters(v19);
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v24 = OUTLINED_FUNCTION_14();
  v25 = type metadata accessor for MLProgram.ValueType.TensorParameters(v24);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_28();
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      sub_2576F210C();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_18_38();
      v30 = v3;
      goto LABEL_7;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      sub_2576F2344();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_65_5();
      v30 = v2;
      goto LABEL_7;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      sub_2576FA1C0();
      sub_2576F4D1C();
      OUTLINED_FUNCTION_39_5();
      v30 = OUTLINED_FUNCTION_62_7();
      goto LABEL_7;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      sub_2576F4F60();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_12_41();
      sub_2576FA218(v0, v31);
      goto LABEL_8;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      sub_2576F1B84();
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_2_65();
      v30 = v4;
LABEL_7:
      sub_2576FA218(v30, v29);
LABEL_8:
      OUTLINED_FUNCTION_434();
      return;
  }
}

void MLProgram.ValueType.init()()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for MLProgram.ValueType.TensorParameters(v1);
  v2 = swift_allocBox();
  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *v0 = v2;
}

BOOL sub_2576F1A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2576F1A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 40);
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v3 += 2;
  }

  while (v6 != a1 || v5 != a2);
  return v4 != 0;
}

void static MLProgram.ValueType.tensor(dataType:shape:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OUTLINED_FUNCTION_120_1();

  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
  *a2 = v4;
}

void static MLProgram.ValueType.dictionary(keyType:valueType:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
  v6 = swift_allocBox();

  MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)();
  *a3 = v6 | 0x6000000000000000;
}

void sub_2576F1B84()
{
  OUTLINED_FUNCTION_31();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D18, &unk_257775F30);
  v0 = OUTLINED_FUNCTION_63(v57);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_25_0();
  v56 = v5;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_167();
  v55 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_196();
  v54 = v9;
  MLProgram.ValueType.TensorParameters.shape.getter();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v65 = MEMORY[0x277D84F90];
    sub_257483754(0, v12, 0);
    v13 = v65;
    v14 = (v11 + 40);
    do
    {
      v15 = *v14;
      v63 = *(v14 - 1);
      LOBYTE(v64) = v15;
      v16 = sub_257743674();
      v18 = v17;
      v65 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_257483754((v19 > 1), v20 + 1, 1);
        v13 = v65;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v14 += 16;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v63 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  sub_257743604();

  MLProgram.ValueType.TensorParameters.attributes.getter();
  v23 = *(v22 + 16);

  if (v23)
  {
    MLProgram.ValueType.TensorParameters.attributes.getter();
    v63 = sub_2576A8BA8();
    sub_2576FA318(&v63);

    v24 = v63;
    v25 = *(v63 + 16);
    if (v25)
    {
      v63 = MEMORY[0x277D84F90];
      sub_257484060();
      v26 = v63;
      v27 = *(v2 + 80);
      OUTLINED_FUNCTION_193();
      v29 = v24 + v28;
      v53 = *(v2 + 72);
      do
      {
        sub_257487308();
        sub_257487308();
        v61 = v55[1];
        v62 = *v55;
        v30 = *(v57 + 48);
        sub_257487308();
        v31 = *(v56 + 8);

        v33 = *(v57 + 48);
        v60 = sub_25771810C(v32);
        v59 = v34;
        v58 = v35;
        sub_2574695E4(v54, &qword_27F879D18, &unk_257775F30);
        sub_2576FA218(v56 + v33, type metadata accessor for MLProgram.Value);
        sub_2576FA218(v55 + v30, type metadata accessor for MLProgram.Value);
        v63 = v26;
        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_174(v36);
          sub_257484060();
          v26 = v63;
        }

        *(v26 + 16) = v37 + 1;
        v38 = v26 + 40 * v37;
        *(v38 + 32) = v62;
        *(v38 + 40) = v61;
        *(v38 + 48) = v60;
        *(v38 + 56) = v59;
        *(v38 + 64) = v58;
        v29 += v53;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_45_11(inited, xmmword_257743FF0);
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_114_1();
    if (v41)
    {
      v46 = v47;
    }

    LOBYTE(v65) = v46;
    v48 = MLProgram.DataType.debugDescription.getter();
    MEMORY[0x259C64E90](v48);

    v49 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v49);
    v50 = OUTLINED_FUNCTION_294();
    MEMORY[0x259C64E90](v50);

    OUTLINED_FUNCTION_113_1();
    v51 = v64;
    inited[3].n128_u64[0] = v63;
    inited[3].n128_u64[1] = v51;
    inited[4].n128_u8[0] = 0;
    inited[4].n128_u64[1] = 0x7475626972747441;
    inited[5].n128_u64[0] = 0xEA00000000007365;
    inited[5].n128_u64[1] = sub_2576AACFC(v26);
    inited[6].n128_u64[0] = v52;
    inited[6].n128_u8[8] = 2;
    sub_2576A6964(inited);
  }

  else
  {
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_114_1();
    if (v41)
    {
      v39 = v40;
    }

    LOBYTE(v65) = v39;
    v42 = MLProgram.DataType.debugDescription.getter();
    MEMORY[0x259C64E90](v42);

    v43 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v43);
    v44 = OUTLINED_FUNCTION_294();
    MEMORY[0x259C64E90](v44);

    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F210C()
{
  MLProgram.ValueType.ListParameters.type.getter();
  v0 = sub_2576F17A0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_176();
    sub_257483A28(v2, v3, v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
    inited = swift_initStackObject();
    v6 = OUTLINED_FUNCTION_45_11(inited, xmmword_2577442C0);
    v7 = OUTLINED_FUNCTION_83_4(v6, xmmword_257775550);
    v7[4].n128_u64[1] = v9;
    v7[5].n128_u64[0] = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    MLProgram.ValueType.ListParameters.type.getter();
    v25 = v23;
    sub_2576F17A0();
    OUTLINED_FUNCTION_39_5();
    v11 = v10;

    inited[5].n128_u64[1] = &v25;
    inited[6].n128_u64[0] = v0;
    inited[6].n128_u8[8] = v11;
    inited[7].n128_u64[0] = 0x6874676E654CLL;
    inited[7].n128_u64[1] = 0xE600000000000000;
    MLProgram.ValueType.ListParameters.length.getter();
    if (v24 == 1)
    {
      if (v23)
      {
        v12 = 3026478;
      }

      else
      {
        v12 = 63;
      }

      if (v23)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE100000000000000;
      }
    }

    else
    {
      v12 = sub_257743974();
    }

    inited[8].n128_u64[0] = v12;
    inited[8].n128_u64[1] = v13;
    inited[9].n128_u8[0] = 0;
    return sub_2576A6964(inited);
  }

  else
  {

    v14 = OUTLINED_FUNCTION_176();
    MEMORY[0x259C64E90](v14);
    v15 = OUTLINED_FUNCTION_176();
    sub_257483A28(v15, v16, 0);
    v17 = OUTLINED_FUNCTION_105_1();
    MEMORY[0x259C64E90](v17);
    MLProgram.ValueType.ListParameters.length.getter();
    if (v22 == 1)
    {
      if (v23)
      {
        v18 = 3026478;
      }

      else
      {
        v18 = 63;
      }

      if (v23)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE100000000000000;
      }
    }

    else
    {
      v25 = v23;
      v18 = sub_257743974();
      v19 = v21;
    }

    MEMORY[0x259C64E90](v18, v19);

    OUTLINED_FUNCTION_113_1();
    return 0x3C7473694CLL;
  }
}

void sub_2576F2344()
{
  OUTLINED_FUNCTION_31();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25_0();
  v462 = v7;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  v478 = v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_167();
  v496 = v11;
  OUTLINED_FUNCTION_158();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v443 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_196();
  v502 = v17;
  v18 = OUTLINED_FUNCTION_153();
  v504 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v18);
  v19 = OUTLINED_FUNCTION_4(v504);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  v461 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v459 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v476 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  v475 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  v497 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  v494 = v32;
  OUTLINED_FUNCTION_158();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v443 - v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_167();
  v463 = v37;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_167();
  v483 = v39;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_167();
  v479 = v41;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_167();
  v503 = v43;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_196();
  v498 = v45;
  v46 = OUTLINED_FUNCTION_153();
  v518 = type metadata accessor for Proto_MILSpec_ValueType(v46);
  v47 = OUTLINED_FUNCTION_4(v518);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  v450 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  v460 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_167();
  v477 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_167();
  v495 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_167();
  v453 = v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_167();
  v466 = v60;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_167();
  v482 = v62;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_196();
  v501 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879E10, &qword_257744730);
  v66 = OUTLINED_FUNCTION_13(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_0();
  v454 = v69;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_167();
  v452 = v71;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_167();
  v464 = v73;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_167();
  v465 = v75;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_167();
  v480 = v77;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_167();
  v481 = v79;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_167();
  v499 = v81;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_167();
  v500 = v83;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_167();
  v455 = v85;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_167();
  v457 = v87;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_167();
  v467 = v89;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_167();
  v469 = v91;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_167();
  v484 = v93;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_167();
  v487 = v95;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_167();
  v507 = v97;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_196();
  v510.n128_u64[0] = v99;
  v100 = OUTLINED_FUNCTION_153();
  v473 = type metadata accessor for MLProgram.ValueType.StateParameters(v100);
  v101 = OUTLINED_FUNCTION_4(v473);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_25_0();
  v456 = v104;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_167();
  v468 = v106;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_167();
  v486 = v108;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_167();
  v485 = v110;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_167();
  v509 = v112;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_167();
  v451 = v114;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_167();
  v458 = v116;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_167();
  v474 = v118;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_167();
  v493 = v120;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_167();
  v492 = v122;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_196();
  v517 = v124;
  v125 = OUTLINED_FUNCTION_153();
  v472 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v125);
  v126 = OUTLINED_FUNCTION_4(v472);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_25_0();
  v491 = v129;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_196();
  v514 = v131;
  v132 = OUTLINED_FUNCTION_153();
  v471 = type metadata accessor for MLProgram.ValueType.TupleParameters(v132);
  v133 = OUTLINED_FUNCTION_4(v471);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_25_0();
  v490 = v136;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_196();
  v513 = v138;
  v139 = OUTLINED_FUNCTION_153();
  v470 = type metadata accessor for MLProgram.ValueType.ListParameters(v139);
  v140 = OUTLINED_FUNCTION_4(v470);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_25_0();
  v489 = v143;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_196();
  v512 = v145;
  v146 = OUTLINED_FUNCTION_153();
  v511 = type metadata accessor for MLProgram.ValueType.TensorParameters(v146);
  v147 = OUTLINED_FUNCTION_4(v511);
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_3();
  v519 = v151 - v150;
  MLProgram.ValueType.TupleParameters.types.getter();
  v153 = v152;
  EnumTagSinglePayload = MEMORY[0x277D84F90];
  v155 = &xmmword_257744000;
  v156 = *(v152 + 16);
  if (v156)
  {
    v448 = v36;
    v449 = v1;
    v447 = v15;
    v488 = v0;
    v157 = OUTLINED_FUNCTION_102_2();
    sub_257484040(v157, v158, v159);
    v160 = 32;
    v161 = v523;
    v508 = xmmword_2577442B0;
    v520 = v153;
    while (1)
    {
      switch(*(v153 + v160) >> 61)
      {
        case 1:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          v162 = v512;
          sub_2576FA1C0();
          sub_2576F210C();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_24_26();
          goto LABEL_10;
        case 2:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          v162 = v513;
          v170 = sub_2576FA1C0();
          sub_2576F2344(v170);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_25_24();
          goto LABEL_10;
        case 3:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          v162 = v514;
          sub_2576FA1C0();
          sub_2576F4D1C();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_23_27();
          goto LABEL_10;
        case 4:
          v516 = v161;
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          v165 = v517;
          sub_2576FA1C0();
          v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
          inited = swift_initStackObject();
          v515 = OUTLINED_FUNCTION_15_25(inited, v508);
          *(v515 + 40) = v167;
          v505 = type metadata accessor for Proto_MILSpec_StateType(0);
          v168 = *(v165->n128_i64 + *(v505 + 20));
          v169 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296();
          EnumTagSinglePayload = v510.n128_u64[0];
          sub_257487308();
          OUTLINED_FUNCTION_57_3();
          if (v153 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_27_23();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            v161 = v516;
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_153_0();
          sub_257487308();
          v171 = OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_155(v171, v172, v165);
          if (v173)
          {
            v175 = v501;
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            v174 = v165[1].n128_i32[1];
            v161 = v516;
            if (qword_27F878FF0 != -1)
            {
              OUTLINED_FUNCTION_12_15();
              swift_once();
            }

            *(v175 + v174) = qword_27F87B038;
            OUTLINED_FUNCTION_111_2(v507, 1);
            if (v168 != 1)
            {
              sub_2574695E4(v507, &qword_27F879E10, &qword_257744730);
            }
          }

          else
          {
            OUTLINED_FUNCTION_14_27();
            v175 = v501;
            sub_2576FBBA0();
            v161 = v516;
          }

          OUTLINED_FUNCTION_94_3();
          v177 = *(v175 + v176);
          OUTLINED_FUNCTION_296();
          v153 = v175;
          EnumTagSinglePayload = &qword_27F879D40;
          sub_257487308();
          v178 = OUTLINED_FUNCTION_78_3();
          v169 = v504;
          OUTLINED_FUNCTION_155(v178, v179, v504);
          if (!v173)
          {
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v153, v190);
            OUTLINED_FUNCTION_41_15();
            sub_2576FBBA0();
            sub_2576FBBA0();
            OUTLINED_FUNCTION_287_0();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            switch(EnumCaseMultiPayload)
            {
              case 1:
                OUTLINED_FUNCTION_8_39();
                v198 = v512;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_1_76();
                v199 = v489;
                sub_2576FA1C0();
                v184 = v199;
                sub_2576F210C();
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_24_26();
                goto LABEL_34;
              case 2:
                OUTLINED_FUNCTION_10_45();
                v198 = v513;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_4_57();
                v199 = v490;
                v200 = sub_2576FA1C0();
                v184 = v199;
                sub_2576F2344(v200);
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_25_24();
                goto LABEL_34;
              case 3:
                OUTLINED_FUNCTION_9_37();
                v198 = v514;
                sub_2576FBBA0();
                OUTLINED_FUNCTION_3_67();
                v199 = v491;
                sub_2576FA1C0();
                v184 = v199;
                sub_2576F4D1C();
                OUTLINED_FUNCTION_39_5();
                OUTLINED_FUNCTION_23_27();
LABEL_34:
                v202 = v201;
                sub_2576FA218(v199, v201);
                sub_2576FA218(v198, v202);
                goto LABEL_21;
              case 4:
                OUTLINED_FUNCTION_11_39();
                sub_2576FBBA0();
                OUTLINED_FUNCTION_7_41();
                v192 = v493;
                sub_2576FA1C0();
                v193 = swift_initStackObject();
                v446 = OUTLINED_FUNCTION_15_25(v193, v508);
                OUTLINED_FUNCTION_95_3(v446, v194);
                v196 = *(v192 + v195);
                v197 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                OUTLINED_FUNCTION_296();
                EnumTagSinglePayload = v487;
                sub_257487308();
                OUTLINED_FUNCTION_57_3();
                if (v153 == 1)
                {
                  swift_allocBox();
                  OUTLINED_FUNCTION_27_23();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  v161 = v516;
                }

                else
                {
                  v203 = v484;
                  OUTLINED_FUNCTION_153_0();
                  sub_257487308();
                  v204 = OUTLINED_FUNCTION_188();
                  OUTLINED_FUNCTION_155(v204, v205, v192);
                  if (v173)
                  {
                    v206 = v482;
                    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                    v207 = *(v192 + 20);
                    v161 = v516;
                    if (qword_27F878FF0 != -1)
                    {
                      OUTLINED_FUNCTION_12_15();
                      swift_once();
                    }

                    *(v206 + v207) = qword_27F87B038;
                    v208 = OUTLINED_FUNCTION_188();
                    OUTLINED_FUNCTION_111_2(v208, v209);
                    v210 = v206;
                    if (v207 != 1)
                    {
                      sub_2574695E4(v203, &qword_27F879E10, &qword_257744730);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_27();
                    v210 = v482;
                    sub_2576FBBA0();
                    v161 = v516;
                  }

                  OUTLINED_FUNCTION_94_3();
                  v212 = *(v210 + v211);
                  OUTLINED_FUNCTION_296();
                  LOBYTE(v153) = v210;
                  EnumTagSinglePayload = &qword_27F879D40;
                  sub_257487308();
                  v213 = OUTLINED_FUNCTION_78_3();
                  v197 = v504;
                  OUTLINED_FUNCTION_155(v213, v214, v504);
                  if (!v173)
                  {
                    OUTLINED_FUNCTION_6_53();
                    sub_2576FA218(v210, v222);
                    OUTLINED_FUNCTION_41_15();
                    sub_2576FBBA0();
                    sub_2576FBBA0();
                    OUTLINED_FUNCTION_287_0();
                    v223 = swift_getEnumCaseMultiPayload();
                    switch(v223)
                    {
                      case 1:
                        swift_allocBox();
                        OUTLINED_FUNCTION_8_39();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_1_76();
                        v231 = v512;
                        sub_2576FA1C0();
                        v184 = v231;
                        sub_2576F210C();
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_24_26();
                        goto LABEL_54;
                      case 2:
                        swift_allocBox();
                        OUTLINED_FUNCTION_10_45();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_4_57();
                        v231 = v513;
                        v232 = sub_2576FA1C0();
                        v184 = v231;
                        sub_2576F2344(v232);
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_25_24();
                        goto LABEL_54;
                      case 3:
                        swift_allocBox();
                        OUTLINED_FUNCTION_9_37();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_3_67();
                        v231 = v514;
                        sub_2576FA1C0();
                        v184 = v231;
                        sub_2576F4D1C();
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_23_27();
LABEL_54:
                        sub_2576FA218(v231, v233);
                        goto LABEL_45;
                      case 4:
                        v445 = swift_allocBox();
                        LODWORD(v153) = v224;
                        OUTLINED_FUNCTION_11_39();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_7_41();
                        v225 = v474;
                        sub_2576FA1C0();
                        v226 = swift_initStackObject();
                        v444 = OUTLINED_FUNCTION_15_25(v226, v508);
                        OUTLINED_FUNCTION_95_3(v444, v227);
                        v229 = *(v225 + v228);
                        v230 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                        OUTLINED_FUNCTION_296();
                        EnumTagSinglePayload = v469;
                        sub_257487308();
                        OUTLINED_FUNCTION_57_3();
                        if (v153 == 1)
                        {
                          swift_allocBox();
                          OUTLINED_FUNCTION_27_23();
                          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                          v161 = v516;
LABEL_64:
                          swift_projectBox();
                          OUTLINED_FUNCTION_0_93();
                          OUTLINED_FUNCTION_101_4();
                          v184 = v230;
                          sub_2576F1B84();
                          OUTLINED_FUNCTION_32_6();
                          OUTLINED_FUNCTION_2_65();
                          sub_2576FA218(v230, v248);
                          v15 = v515;
                          v220 = v446;
                          goto LABEL_65;
                        }

                        sub_257487308();
                        v235 = OUTLINED_FUNCTION_171_1();
                        OUTLINED_FUNCTION_155(v235, v236, v225);
                        if (v173)
                        {
                          v237 = v466;
                          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                          v238 = *(v225 + 20);
                          v161 = v516;
                          if (qword_27F878FF0 != -1)
                          {
                            OUTLINED_FUNCTION_12_15();
                            swift_once();
                          }

                          *(v237 + v238) = qword_27F87B038;
                          EnumTagSinglePayload = v467;
                          v239 = OUTLINED_FUNCTION_188();
                          OUTLINED_FUNCTION_111_2(v239, v240);
                          v241 = v237;
                          if (v238 != 1)
                          {
                            sub_2574695E4(EnumTagSinglePayload, &qword_27F879E10, &qword_257744730);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_14_27();
                          v241 = v466;
                          sub_2576FBBA0();
                          v161 = v516;
                        }

                        OUTLINED_FUNCTION_94_3();
                        v243 = *(v241 + v242);
                        OUTLINED_FUNCTION_296();
                        v153 = v241;
                        v244 = v447;
                        sub_257487308();
                        v245 = OUTLINED_FUNCTION_78_3();
                        v230 = v504;
                        OUTLINED_FUNCTION_155(v245, v246, v504);
                        if (v173)
                        {
                          sub_2574695E4(v244, &qword_27F879D40, &qword_257744660);
                          swift_allocBox();
                          OUTLINED_FUNCTION_27_23();
                          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                          OUTLINED_FUNCTION_6_53();
                          sub_2576FA218(v153, v247);
                          goto LABEL_64;
                        }

                        OUTLINED_FUNCTION_6_53();
                        sub_2576FA218(v153, v251);
                        OUTLINED_FUNCTION_41_15();
                        sub_2576FBBA0();
                        sub_2576FBBA0();
                        OUTLINED_FUNCTION_287_0();
                        v252 = swift_getEnumCaseMultiPayload();
                        switch(v252)
                        {
                          case 1:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_8_39();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_1_76();
                            v260 = v512;
                            sub_2576FA1C0();
                            v184 = v260;
                            sub_2576F210C();
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_24_26();
                            goto LABEL_73;
                          case 2:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_10_45();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_4_57();
                            v260 = v513;
                            v261 = sub_2576FA1C0();
                            v184 = v260;
                            sub_2576F2344(v261);
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_25_24();
                            goto LABEL_73;
                          case 3:
                            swift_allocBox();
                            OUTLINED_FUNCTION_86_5();
                            OUTLINED_FUNCTION_9_37();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_3_67();
                            v260 = v514;
                            sub_2576FA1C0();
                            v184 = v260;
                            sub_2576F4D1C();
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_23_27();
LABEL_73:
                            sub_2576FA218(v260, v262);
                            v15 = v515;
                            v220 = v446;
                            break;
                          case 4:
                            v443[1] = swift_allocBox();
                            OUTLINED_FUNCTION_11_39();
                            sub_2576FBBA0();
                            OUTLINED_FUNCTION_7_41();
                            v253 = v458;
                            sub_2576FA1C0();
                            v254 = swift_initStackObject();
                            v506 = OUTLINED_FUNCTION_15_25(v254, v508);
                            OUTLINED_FUNCTION_95_3(v506, v255);
                            EnumTagSinglePayload = *(v253 + v256);
                            v257 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                            OUTLINED_FUNCTION_296();
                            v258 = v457;
                            sub_257487308();
                            v153 = v518;
                            LODWORD(v253) = __swift_getEnumTagSinglePayload(v258, 1, v518);
                            sub_2574695E4(v258, &qword_27F879E10, &qword_257744730);
                            if (v253 == 1)
                            {
                              swift_allocBox();
                              OUTLINED_FUNCTION_27_23();
                              MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                              v522 = v258;
                              v161 = v516;
                              v259 = v506;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_103_3();
                              sub_257487308();
                              v263 = OUTLINED_FUNCTION_78_3();
                              OUTLINED_FUNCTION_155(v263, v264, v153);
                              if (v173)
                              {
                                v257 = v453;
                                _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                                v265 = *(v153 + 20);
                                v266 = v153;
                                v161 = v516;
                                v259 = v506;
                                if (qword_27F878FF0 != -1)
                                {
                                  OUTLINED_FUNCTION_12_15();
                                  swift_once();
                                  v266 = v518;
                                }

                                *(v257 + v265) = qword_27F87B038;
                                v153 = v455;
                                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v455, 1, v266);

                                if (EnumTagSinglePayload != 1)
                                {
                                  sub_2574695E4(v153, &qword_27F879E10, &qword_257744730);
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_14_27();
                                v257 = v453;
                                sub_2576FBBA0();
                                v161 = v516;
                                v259 = v506;
                              }

                              sub_2576F0F64();
                              v258 = v522;
                            }

                            switch(v258 >> 61)
                            {
                              case 1uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_1_76();
                                v271 = v512;
                                sub_2576FA1C0();
                                v184 = v271;
                                sub_2576F210C();
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_38_10();
                                goto LABEL_87;
                              case 2uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_4_57();
                                v271 = v513;
                                v272 = sub_2576FA1C0();
                                v184 = v271;
                                sub_2576F2344(v272);
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_39_13();
                                goto LABEL_87;
                              case 3uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_3_67();
                                v271 = v514;
                                sub_2576FA1C0();
                                v184 = v271;
                                sub_2576F4D1C();
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_37_15();
LABEL_87:
                                sub_2576FA218(v271, v273);
                                break;
                              case 4uLL:
                                OUTLINED_FUNCTION_66_4();
                                OUTLINED_FUNCTION_7_41();
                                v269 = v451;
                                sub_2576FA1C0();
                                v184 = v269;
                                sub_2576F4F60();
                                OUTLINED_FUNCTION_106_2();
                                OUTLINED_FUNCTION_12_41();
                                sub_2576FA218(v269, v270);
                                EnumTagSinglePayload = 2;
                                break;
                              default:
                                swift_projectBox();
                                OUTLINED_FUNCTION_0_93();
                                OUTLINED_FUNCTION_101_4();
                                v184 = v257;
                                sub_2576F1B84();
                                OUTLINED_FUNCTION_106_2();
                                EnumTagSinglePayload = v267;
                                OUTLINED_FUNCTION_2_65();
                                sub_2576FA218(v257, v268);
                                break;
                            }

                            *(v259 + 48) = v184;
                            *(v259 + 56) = v153;
                            *(v259 + 64) = EnumTagSinglePayload;
                            sub_2576A6964(v259);
                            OUTLINED_FUNCTION_39_5();
                            OUTLINED_FUNCTION_12_41();
                            sub_2576FA218(v458, v274);
                            LOBYTE(v153) = 2;
                            v15 = v515;
                            v220 = v446;
                            break;
                          default:
                            swift_allocBox();
                            OUTLINED_FUNCTION_13_28();
                            sub_2576FBBA0();
                            goto LABEL_64;
                        }

LABEL_65:

                        v249 = v444;
                        v444[3].n128_u64[0] = v184;
                        v249[3].n128_u64[1] = EnumTagSinglePayload;
                        v249[4].n128_u8[0] = v153;
                        sub_2576A6964(v249);
                        OUTLINED_FUNCTION_39_5();
                        OUTLINED_FUNCTION_12_41();
                        sub_2576FA218(v474, v250);
                        LOBYTE(v153) = 2;
                        break;
                      default:
                        swift_allocBox();
                        OUTLINED_FUNCTION_13_28();
                        sub_2576FBBA0();
                        goto LABEL_44;
                    }

                    goto LABEL_46;
                  }

                  OUTLINED_FUNCTION_153_0();
                  sub_2574695E4(v215, v216, v217);
                  swift_allocBox();
                  OUTLINED_FUNCTION_27_23();
                  MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                  OUTLINED_FUNCTION_6_53();
                  sub_2576FA218(v210, v218);
                }

LABEL_44:
                swift_projectBox();
                OUTLINED_FUNCTION_0_93();
                OUTLINED_FUNCTION_101_4();
                v184 = v197;
                sub_2576F1B84();
                OUTLINED_FUNCTION_32_6();
                OUTLINED_FUNCTION_2_65();
                sub_2576FA218(v197, v219);
LABEL_45:
                v15 = v515;
                v220 = v446;
LABEL_46:

                v220[3].n128_u64[0] = v184;
                v220[3].n128_u64[1] = EnumTagSinglePayload;
                v220[4].n128_u8[0] = v153;
                sub_2576A6964(v220);
                OUTLINED_FUNCTION_16_25();
                v153 = v221;
                sub_2576FA218(v493, v221);
                sub_2576FA218(v492, v153);
                LOBYTE(v153) = 2;
                goto LABEL_22;
              default:
                swift_allocBox();
                OUTLINED_FUNCTION_13_28();
                sub_2576FBBA0();
                goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_153_0();
          sub_2574695E4(v180, v181, v182);
          swift_allocBox();
          OUTLINED_FUNCTION_27_23();
          MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          OUTLINED_FUNCTION_6_53();
          sub_2576FA218(v153, v183);
LABEL_20:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          OUTLINED_FUNCTION_101_4();
          v184 = v169;
          sub_2576F1B84();
          OUTLINED_FUNCTION_32_6();
          OUTLINED_FUNCTION_2_65();
          sub_2576FA218(v169, v185);

LABEL_21:
          v15 = v515;
LABEL_22:
          *(v15 + 6) = v184;
          *(v15 + 7) = EnumTagSinglePayload;
          v15[64] = v153;
          sub_2576A6964(v15);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_12_41();
          sub_2576FA218(v517, v186);
          LOBYTE(v153) = 2;
LABEL_23:
          v523 = v161;
          v188 = v161[1].n128_u64[0];
          v187 = v161[1].n128_u64[1];
          v2 = v188 + 1;
          if (v188 >= v187 >> 1)
          {
            v234 = OUTLINED_FUNCTION_174(v187);
            sub_257484040(v234, v188 + 1, 1);
            v161 = v523;
          }

          v161[1].n128_u64[0] = v2;
          v189 = v161 + 24 * v188;
          *(v189 + 4) = EnumTagSinglePayload;
          *(v189 + 5) = v15;
          v189[48] = v153;
          v160 += 8;
          --v156;
          v155 = &xmmword_257744000;
          v153 = v520;
          if (!v156)
          {

            EnumTagSinglePayload = MEMORY[0x277D84F90];
            goto LABEL_90;
          }

          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          v162 = v519;
          sub_2576FA1C0();
          sub_2576F1B84();
          OUTLINED_FUNCTION_61_5();
          LOBYTE(v153) = v163;
          v164 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_10:
          sub_2576FA218(v162, v164);
          goto LABEL_23;
      }
    }
  }

  v161 = MEMORY[0x277D84F90];
LABEL_90:
  v275 = v161[1].n128_u64[0];
  v276 = v275 + 1;
  v277 = 48;
  do
  {
    if (!--v276)
    {
      if (v275)
      {
        v420 = OUTLINED_FUNCTION_102_2();
        sub_257483754(v420, v421, v422);
        v423 = v523;
        v424 = &v161[3];
        do
        {
          v425 = *(v424 - 2);
          v426 = *(v424 - 1);
          v427 = *v424;
          v428 = OUTLINED_FUNCTION_287_0();
          sub_2576A8798(v428, v429, v427);
          OUTLINED_FUNCTION_287_0();
          sub_2576A7674();
          v431 = v430;
          v433 = v432;
          v434 = OUTLINED_FUNCTION_287_0();
          sub_257483A28(v434, v435, v427);
          v523 = v423;
          v437 = *(v423 + 16);
          v436 = *(v423 + 24);
          if (v437 >= v436 >> 1)
          {
            v439 = OUTLINED_FUNCTION_174(v436);
            sub_257483754(v439, v437 + 1, 1);
            v423 = v523;
          }

          v424 += 24;
          *(v423 + 16) = v437 + 1;
          v438 = v423 + 16 * v437;
          *(v438 + 32) = v431;
          *(v438 + 40) = v433;
          --v275;
        }

        while (v275);
      }

      else
      {

        v423 = MEMORY[0x277D84F90];
      }

      v523 = 0x3C656C707554;
      v524 = 0xE600000000000000;
      v522 = v423;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      OUTLINED_FUNCTION_105_1();
      v440 = sub_257743604();
      v442 = v441;

      MEMORY[0x259C64E90](v440, v442);

      OUTLINED_FUNCTION_113_1();
      goto LABEL_191;
    }

    v278 = v161->n128_u8[v277];
    v277 += 24;
  }

  while (!v278);

  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  v279 = swift_initStackObject();
  v280 = OUTLINED_FUNCTION_45_11(v279, xmmword_257743FF0);
  v281 = OUTLINED_FUNCTION_83_4(v280, xmmword_257775560);
  v281[4].n128_u64[1] = v283;
  v281[5].n128_u64[0] = v282 & 0xFFFF0000FFFFLL | 0xEB00000000730000;
  MLProgram.ValueType.TupleParameters.types.getter();
  v285 = v284;
  v286 = v284[2];
  if (v286)
  {
    v507 = v279;
    v525 = EnumTagSinglePayload;
    sub_257484040(0, v286, 0);
    v287 = 4;
    v288 = v525;
    v510 = v155[43];
    v520 = v285;
    while (2)
    {
      switch(v285[v287] >> 61)
      {
        case 1uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_1_76();
          v289 = v512;
          sub_2576FA1C0();
          sub_2576F210C();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_35_16();
          goto LABEL_102;
        case 2uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_4_57();
          v289 = v513;
          v299 = sub_2576FA1C0();
          sub_2576F2344(v299);
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_36_16();
          goto LABEL_102;
        case 3uLL:
          swift_projectBox();
          OUTLINED_FUNCTION_3_67();
          v289 = v514;
          sub_2576FA1C0();
          sub_2576F4D1C();
          OUTLINED_FUNCTION_61_5();
          OUTLINED_FUNCTION_34_15();
          goto LABEL_102;
        case 4uLL:
          v517 = v286;
          swift_projectBox();
          OUTLINED_FUNCTION_7_41();
          v292 = v509;
          sub_2576FA1C0();
          v293 = swift_initStackObject();
          v516 = OUTLINED_FUNCTION_15_25(v293, v510);
          v516[2].n128_u64[1] = v294;
          v508.n128_u64[0] = type metadata accessor for Proto_MILSpec_StateType(0);
          EnumTagSinglePayload = *(v292 + *(v508.n128_u64[0] + 20));
          LOBYTE(v2) = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296();
          v295 = v500;
          sub_257487308();
          v296 = OUTLINED_FUNCTION_78_3();
          v297 = v518;
          v285 = __swift_getEnumTagSinglePayload(v296, v298, v518);
          sub_2574695E4(v295, &qword_27F879E10, &qword_257744730);
          if (v285 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            v286 = v517;
LABEL_116:
            swift_projectBox();
            OUTLINED_FUNCTION_0_93();
            OUTLINED_FUNCTION_101_4();
            v313 = v297;
            sub_2576F1B84();
            OUTLINED_FUNCTION_39_5();
            LOBYTE(v2) = v314;
            OUTLINED_FUNCTION_2_65();
            sub_2576FA218(v297, v315);

            goto LABEL_117;
          }

          sub_257487308();
          v303 = OUTLINED_FUNCTION_78_3();
          OUTLINED_FUNCTION_155(v303, v304, v297);
          v285 = &qword_27F879D40;
          if (v173)
          {
            v2 = v495;
            _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
            v305 = *(v297 + 20);
            if (qword_27F878FF0 != -1)
            {
              OUTLINED_FUNCTION_12_15();
              swift_once();
              v297 = v518;
            }

            *(v2 + v305) = qword_27F87B038;
            v306 = __swift_getEnumTagSinglePayload(v499, 1, v297);

            v297 = v2;
            v286 = v517;
            if (v306 != 1)
            {
              sub_2574695E4(v499, &qword_27F879E10, &qword_257744730);
            }
          }

          else
          {
            OUTLINED_FUNCTION_14_27();
            v297 = v495;
            sub_2576FBBA0();
            v286 = v517;
          }

          OUTLINED_FUNCTION_94_3();
          v308 = *(v297 + v307);
          OUTLINED_FUNCTION_296();
          v309 = v496;
          sub_257487308();
          v310 = OUTLINED_FUNCTION_33_5();
          EnumTagSinglePayload = v504;
          OUTLINED_FUNCTION_155(v310, v311, v504);
          if (v173)
          {
            sub_2574695E4(v309, &qword_27F879D40, &qword_257744660);
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v297, v312);
            goto LABEL_116;
          }

          OUTLINED_FUNCTION_6_53();
          sub_2576FA218(v297, v318);
          OUTLINED_FUNCTION_40_13();
          sub_2576FBBA0();
          v297 = v497;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_415();
          v319 = swift_getEnumCaseMultiPayload();
          break;
        default:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          v289 = v519;
          sub_2576FA1C0();
          sub_2576F1B84();
          OUTLINED_FUNCTION_61_5();
          LOBYTE(v2) = v290;
          v291 = type metadata accessor for MLProgram.ValueType.TensorParameters;
LABEL_102:
          sub_2576FA218(v289, v291);
          goto LABEL_103;
      }

      switch(v319)
      {
        case 1:
          OUTLINED_FUNCTION_8_39();
          v285 = v512;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_1_76();
          v332 = v489;
          sub_2576FA1C0();
          v313 = v332;
          sub_2576F210C();
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_35_16();
          goto LABEL_125;
        case 2:
          OUTLINED_FUNCTION_10_45();
          v285 = v513;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_4_57();
          v332 = v490;
          v333 = sub_2576FA1C0();
          v313 = v332;
          sub_2576F2344(v333);
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_36_16();
          goto LABEL_125;
        case 3:
          OUTLINED_FUNCTION_9_37();
          v285 = v514;
          sub_2576FBBA0();
          OUTLINED_FUNCTION_3_67();
          v332 = v491;
          sub_2576FA1C0();
          v313 = v332;
          sub_2576F4D1C();
          OUTLINED_FUNCTION_39_5();
          OUTLINED_FUNCTION_34_15();
LABEL_125:
          v335 = v334;
          sub_2576FA218(v332, v334);
          sub_2576FA218(v285, v335);
          goto LABEL_117;
        case 4:
          OUTLINED_FUNCTION_11_39();
          sub_2576FBBA0();
          OUTLINED_FUNCTION_7_41();
          v320 = v486;
          sub_2576FA1C0();
          v321 = swift_initStackObject();
          v517 = OUTLINED_FUNCTION_15_25(v321, v510);
          OUTLINED_FUNCTION_96_4(v517, v322);
          EnumTagSinglePayload = *(v320 + v323);
          v324 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
          OUTLINED_FUNCTION_296();
          v325 = v481;
          sub_257487308();
          v326 = OUTLINED_FUNCTION_171_1();
          v328 = __swift_getEnumTagSinglePayload(v326, v327, v518);
          OUTLINED_FUNCTION_103_3();
          sub_2574695E4(v329, v330, v331);
          if (v328 == 1)
          {
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
          }

          else
          {
            OUTLINED_FUNCTION_92_3();
            v336 = OUTLINED_FUNCTION_33_5();
            v337 = v518;
            OUTLINED_FUNCTION_155(v336, v338, v518);
            if (v173)
            {
              v325 = v477;
              _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
              v339 = *(v337 + 20);
              v340 = v337;
              v285 = &qword_257744660;
              if (qword_27F878FF0 != -1)
              {
                OUTLINED_FUNCTION_12_15();
                swift_once();
                v340 = v518;
              }

              *(v325 + v339) = qword_27F87B038;
              v341 = __swift_getEnumTagSinglePayload(v480, 1, v340);

              if (v341 != 1)
              {
                sub_2574695E4(v480, &qword_27F879E10, &qword_257744730);
              }
            }

            else
            {
              OUTLINED_FUNCTION_14_27();
              v325 = v477;
              sub_2576FBBA0();
              v285 = &qword_257744660;
            }

            OUTLINED_FUNCTION_94_3();
            v343 = *(v325 + v342);
            OUTLINED_FUNCTION_296();
            v328 = v478;
            OUTLINED_FUNCTION_92_3();
            v344 = OUTLINED_FUNCTION_33_5();
            EnumTagSinglePayload = v504;
            OUTLINED_FUNCTION_155(v344, v345, v504);
            if (!v173)
            {
              OUTLINED_FUNCTION_6_53();
              sub_2576FA218(v325, v355);
              OUTLINED_FUNCTION_40_13();
              sub_2576FBBA0();
              v325 = v476;
              sub_2576FBBA0();
              OUTLINED_FUNCTION_415();
              v356 = swift_getEnumCaseMultiPayload();
              switch(v356)
              {
                case 1:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_8_39();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_1_76();
                  v370 = v512;
                  sub_2576FA1C0();
                  v313 = v370;
                  sub_2576F210C();
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_35_16();
                  goto LABEL_145;
                case 2:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_10_45();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_4_57();
                  v370 = v513;
                  v371 = sub_2576FA1C0();
                  v313 = v370;
                  sub_2576F2344(v371);
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_36_16();
                  goto LABEL_145;
                case 3:
                  swift_allocBox();
                  OUTLINED_FUNCTION_86_5();
                  OUTLINED_FUNCTION_9_37();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_3_67();
                  v370 = v514;
                  sub_2576FA1C0();
                  v313 = v370;
                  sub_2576F4D1C();
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_34_15();
LABEL_145:
                  sub_2576FA218(v370, v372);
                  goto LABEL_136;
                case 4:
                  v506 = swift_allocBox();
                  OUTLINED_FUNCTION_11_39();
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_7_41();
                  v357 = v468;
                  sub_2576FA1C0();
                  v358 = swift_initStackObject();
                  v505 = OUTLINED_FUNCTION_15_25(v358, v510);
                  OUTLINED_FUNCTION_96_4(v505, v359);
                  v361 = *(v357 + v360);
                  v362 = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                  OUTLINED_FUNCTION_296();
                  v363 = v465;
                  sub_257487308();
                  v364 = OUTLINED_FUNCTION_171_1();
                  v366 = __swift_getEnumTagSinglePayload(v364, v365, v518);
                  OUTLINED_FUNCTION_103_3();
                  sub_2574695E4(v367, v368, v369);
                  if (v366 == 1)
                  {
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_17();
                    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                    goto LABEL_155;
                  }

                  OUTLINED_FUNCTION_92_3();
                  v373 = OUTLINED_FUNCTION_33_5();
                  v374 = v518;
                  OUTLINED_FUNCTION_155(v373, v375, v518);
                  if (v173)
                  {
                    v363 = v460;
                    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                    v376 = *(v374 + 20);
                    v377 = v374;
                    if (qword_27F878FF0 != -1)
                    {
                      OUTLINED_FUNCTION_12_15();
                      swift_once();
                      v377 = v518;
                    }

                    *(v363 + v376) = qword_27F87B038;
                    v378 = __swift_getEnumTagSinglePayload(v464, 1, v377);

                    if (v378 != 1)
                    {
                      sub_2574695E4(v464, &qword_27F879E10, &qword_257744730);
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_14_27();
                    v363 = v460;
                    sub_2576FBBA0();
                  }

                  OUTLINED_FUNCTION_94_3();
                  v380 = *(v363 + v379);
                  OUTLINED_FUNCTION_296();
                  OUTLINED_FUNCTION_92_3();
                  v381 = OUTLINED_FUNCTION_33_5();
                  EnumTagSinglePayload = v504;
                  OUTLINED_FUNCTION_155(v381, v382, v504);
                  if (v173)
                  {
                    OUTLINED_FUNCTION_103_3();
                    sub_2574695E4(v383, v384, v385);
                    swift_allocBox();
                    OUTLINED_FUNCTION_26_17();
                    MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                    OUTLINED_FUNCTION_6_53();
                    sub_2576FA218(v363, v386);
LABEL_155:
                    v285 = v506;
LABEL_156:
                    swift_projectBox();
                    OUTLINED_FUNCTION_0_93();
                    OUTLINED_FUNCTION_101_4();
                    v313 = v363;
                    sub_2576F1B84();
                    OUTLINED_FUNCTION_69_4();
                    EnumTagSinglePayload = v387;
                    OUTLINED_FUNCTION_2_65();
                    sub_2576FA218(v363, v388);
                    goto LABEL_157;
                  }

                  OUTLINED_FUNCTION_6_53();
                  sub_2576FA218(v363, v391);
                  OUTLINED_FUNCTION_40_13();
                  sub_2576FBBA0();
                  v363 = v461;
                  sub_2576FBBA0();
                  OUTLINED_FUNCTION_415();
                  v392 = swift_getEnumCaseMultiPayload();
                  v285 = v506;
                  switch(v392)
                  {
                    case 1:
                      swift_allocBox();
                      OUTLINED_FUNCTION_8_39();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_1_76();
                      v403 = v512;
                      sub_2576FA1C0();
                      v313 = v403;
                      sub_2576F210C();
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_38_10();
                      goto LABEL_165;
                    case 2:
                      swift_allocBox();
                      OUTLINED_FUNCTION_10_45();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_4_57();
                      v403 = v513;
                      v404 = sub_2576FA1C0();
                      v313 = v403;
                      sub_2576F2344(v404);
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_39_13();
                      goto LABEL_165;
                    case 3:
                      swift_allocBox();
                      OUTLINED_FUNCTION_9_37();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_3_67();
                      v403 = v514;
                      sub_2576FA1C0();
                      v313 = v403;
                      sub_2576F4D1C();
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_37_15();
LABEL_165:
                      sub_2576FA218(v403, v405);
                      break;
                    case 4:
                      v503 = swift_allocBox();
                      OUTLINED_FUNCTION_11_39();
                      sub_2576FBBA0();
                      OUTLINED_FUNCTION_7_41();
                      v393 = v456;
                      sub_2576FA1C0();
                      v394 = swift_initStackObject();
                      v502 = OUTLINED_FUNCTION_15_25(v394, v510);
                      OUTLINED_FUNCTION_96_4(v502, v395);
                      v397 = *(v393 + v396);
                      LOBYTE(v398) = OBJC_IVAR____TtCV20MLModelSpecification23Proto_MILSpec_StateTypeP33_332B47BD95040FAA9FC0D6990ECE156813_StorageClass__wrappedType;
                      OUTLINED_FUNCTION_296();
                      v399 = v452;
                      sub_257487308();
                      v400 = v518;
                      LODWORD(v393) = __swift_getEnumTagSinglePayload(v399, 1, v518);
                      v401 = v399;
                      v362 = &qword_27F879E10;
                      sub_2574695E4(v401, &qword_27F879E10, &qword_257744730);
                      if (v393 == 1)
                      {
                        swift_allocBox();
                        OUTLINED_FUNCTION_26_17();
                        MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
                        v521 = v397;
                        v285 = v506;
                        v402 = v503;
                      }

                      else
                      {
                        sub_257487308();
                        v406 = OUTLINED_FUNCTION_78_3();
                        OUTLINED_FUNCTION_155(v406, v407, v400);
                        if (v173)
                        {
                          v398 = v450;
                          _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
                          v408 = v518;
                          v409 = *(v518 + 20);
                          if (qword_27F878FF0 != -1)
                          {
                            OUTLINED_FUNCTION_12_15();
                            swift_once();
                            v408 = v518;
                          }

                          *(v398 + v409) = qword_27F87B038;
                          v410 = __swift_getEnumTagSinglePayload(v454, 1, v408);

                          v285 = v506;
                          v402 = v503;
                          if (v410 != 1)
                          {
                            sub_2574695E4(v454, &qword_27F879E10, &qword_257744730);
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_14_27();
                          LOBYTE(v398) = v450;
                          sub_2576FBBA0();
                          v285 = v506;
                          v402 = v503;
                        }

                        sub_2576F0F64();
                        v397 = v521;
                      }

                      switch(v397 >> 61)
                      {
                        case 1uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_1_76();
                          v415 = v512;
                          sub_2576FA1C0();
                          v313 = v415;
                          sub_2576F210C();
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_38_10();
                          goto LABEL_179;
                        case 2uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_4_57();
                          v415 = v513;
                          v416 = sub_2576FA1C0();
                          v313 = v415;
                          sub_2576F2344(v416);
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_39_13();
                          goto LABEL_179;
                        case 3uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_3_67();
                          v415 = v514;
                          sub_2576FA1C0();
                          v313 = v415;
                          sub_2576F4D1C();
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_37_15();
LABEL_179:
                          sub_2576FA218(v415, v417);
                          break;
                        case 4uLL:
                          OUTLINED_FUNCTION_123_1();
                          OUTLINED_FUNCTION_7_41();
                          v413 = v451;
                          sub_2576FA1C0();
                          v313 = v413;
                          sub_2576F4F60();
                          OUTLINED_FUNCTION_69_4();
                          OUTLINED_FUNCTION_12_41();
                          sub_2576FA218(v413, v414);
                          LOBYTE(v398) = 2;
                          break;
                        default:
                          swift_projectBox();
                          OUTLINED_FUNCTION_0_93();
                          OUTLINED_FUNCTION_101_4();
                          v313 = v402;
                          sub_2576F1B84();
                          OUTLINED_FUNCTION_69_4();
                          LOBYTE(v398) = v411;
                          OUTLINED_FUNCTION_2_65();
                          sub_2576FA218(v402, v412);
                          v508.n128_u64[0] = v397 & 0x1FFFFFFFFFFFFFFFLL;
                          break;
                      }

                      v418 = v502;
                      v502[3].n128_u64[0] = v313;
                      v418[3].n128_u64[1] = &qword_27F879E10;
                      v418[4].n128_u8[0] = v398;
                      sub_2576A6964(v418);
                      OUTLINED_FUNCTION_69_4();
                      OUTLINED_FUNCTION_12_41();
                      sub_2576FA218(v456, v419);
                      EnumTagSinglePayload = 2;
                      break;
                    default:
                      swift_allocBox();
                      OUTLINED_FUNCTION_13_28();
                      sub_2576FBBA0();
                      goto LABEL_156;
                  }

LABEL_157:
                  v352 = v517;

                  v389 = v505;
                  *(v505 + 48) = v313;
                  *(v389 + 56) = v362;
                  *(v389 + 64) = EnumTagSinglePayload;
                  sub_2576A6964(v389);
                  OUTLINED_FUNCTION_39_5();
                  OUTLINED_FUNCTION_12_41();
                  sub_2576FA218(v468, v390);
                  v324 = 2;
                  break;
                default:
                  v328 = swift_allocBox();
                  OUTLINED_FUNCTION_13_28();
                  sub_2576FBBA0();
                  goto LABEL_135;
              }

LABEL_137:

              v352[3].n128_u64[0] = v313;
              v352[3].n128_u64[1] = EnumTagSinglePayload;
              v352[4].n128_u8[0] = v324;
              sub_2576A6964(v352);
              OUTLINED_FUNCTION_16_25();
              v354 = v353;
              sub_2576FA218(v486, v353);
              sub_2576FA218(v485, v354);
              LOBYTE(v2) = 2;
LABEL_117:
              v316 = v516;
              v516[3].n128_u64[0] = v313;
              v316[3].n128_u64[1] = EnumTagSinglePayload;
              v316[4].n128_u8[0] = v2;
              sub_2576A6964(v316);
              OUTLINED_FUNCTION_61_5();
              OUTLINED_FUNCTION_12_41();
              sub_2576FA218(v509, v317);
              LOBYTE(v2) = 2;
LABEL_103:
              v525 = v288;
              v301 = *(v288 + 16);
              v300 = *(v288 + 24);
              if (v301 >= v300 >> 1)
              {
                sub_257484040((v300 > 1), v301 + 1, 1);
                v288 = v525;
              }

              *(v288 + 16) = v301 + 1;
              v302 = v288 + 24 * v301;
              *(v302 + 32) = EnumTagSinglePayload;
              *(v302 + 40) = v285;
              *(v302 + 48) = v2;
              ++v287;
              --v286;
              v285 = v520;
              if (!v286)
              {

                v279 = v507;
                goto LABEL_190;
              }

              continue;
            }

            OUTLINED_FUNCTION_103_3();
            sub_2574695E4(v346, v347, v348);
            swift_allocBox();
            OUTLINED_FUNCTION_26_17();
            MLProgram.ValueType.TensorParameters.init(dataType:shape:)();
            OUTLINED_FUNCTION_6_53();
            sub_2576FA218(v325, v349);
          }

LABEL_135:
          swift_projectBox();
          OUTLINED_FUNCTION_0_93();
          OUTLINED_FUNCTION_101_4();
          v313 = v325;
          sub_2576F1B84();
          OUTLINED_FUNCTION_39_5();
          v324 = v350;
          OUTLINED_FUNCTION_2_65();
          sub_2576FA218(v325, v351);
          v285 = (v328 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_136:
          v352 = v517;
          goto LABEL_137;
        default:
          swift_allocBox();
          OUTLINED_FUNCTION_13_28();
          sub_2576FBBA0();
          goto LABEL_116;
      }
    }
  }

  v288 = MEMORY[0x277D84F90];
LABEL_190:
  v279[5].n128_u64[1] = v288;
  v279[6].n128_u64[0] = 0;
  v279[6].n128_u8[8] = 1;
  sub_2576A6964(v279);
LABEL_191:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2576F4D1C()
{
  MLProgram.ValueType.DictionaryParameters.keyType.getter();
  v29 = v28;
  v0 = sub_2576F17A0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_176();
    sub_257483A28(v2, v3, v4);
  }

  else
  {

    MLProgram.ValueType.DictionaryParameters.valueType.getter();
    v29 = v28;
    sub_2576F17A0();
    if (!v5)
    {

      sub_257743834();

      v21 = OUTLINED_FUNCTION_176();
      MEMORY[0x259C64E90](v21);
      v22 = OUTLINED_FUNCTION_176();
      sub_257483A28(v22, v23, 0);
      v24 = OUTLINED_FUNCTION_105_1();
      MEMORY[0x259C64E90](v24);
      v25 = OUTLINED_FUNCTION_294();
      MEMORY[0x259C64E90](v25);
      v26 = OUTLINED_FUNCTION_294();
      sub_257483A28(v26, v27, 0);
      OUTLINED_FUNCTION_113_1();
      return 0x616E6F6974636944;
    }

    v6 = OUTLINED_FUNCTION_294();
    sub_257483A28(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_176();
    sub_257483A28(v9, v10, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  v12 = OUTLINED_FUNCTION_45_11(inited, xmmword_2577442C0);
  v12[3] = xmmword_257775570;
  v12[4].n128_u8[0] = 0;
  v12[4].n128_u64[1] = 0x657079542079654BLL;
  v12[5].n128_u64[0] = 0xE800000000000000;
  MLProgram.ValueType.DictionaryParameters.keyType.getter();
  v29 = v28;
  sub_2576F17A0();
  OUTLINED_FUNCTION_39_5();
  v14 = v13;

  inited[5].n128_u64[1] = &v29;
  inited[6].n128_u64[0] = v0;
  inited[6].n128_u8[8] = v14;
  inited[7].n128_u64[0] = 0x79542065756C6156;
  inited[7].n128_u64[1] = 0xEA00000000006570;
  MLProgram.ValueType.DictionaryParameters.valueType.getter();
  v15 = sub_2576F17A0();
  v17 = v16;
  v19 = v18;

  inited[8].n128_u64[0] = v15;
  inited[8].n128_u64[1] = v17;
  inited[9].n128_u8[0] = v19;
  return sub_2576A6964(inited);
}

uint64_t sub_2576F4F60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577442B0;
  strcpy((inited + 32), "Wrapped Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  MLProgram.ValueType.StateParameters.wrappedType.getter();
  v1 = sub_2576F17A0();
  v3 = v2;
  v5 = v4;

  *(inited + 48) = v1;
  *(inited + 56) = v3;
  *(inited + 64) = v5;
  return sub_2576A6964(inited);
}

void sub_2576F5020()
{
  OUTLINED_FUNCTION_433();
  v1 = OUTLINED_FUNCTION_16_1();
  v2 = type metadata accessor for MLProgram.ValueType.StateParameters(v1);
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_17_3();
  v7 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_38();
  v16 = type metadata accessor for MLProgram.ValueType.ListParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_14();
  v21 = type metadata accessor for MLProgram.ValueType.TensorParameters(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19_28();
  switch(*v0 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_8_39();
      sub_2576FBBA0();
      break;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_10_45();
      sub_2576FBBA0();
      break;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_9_37();
      sub_2576FBBA0();
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_11_39();
      sub_2576FBBA0();
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      OUTLINED_FUNCTION_13_28();
      sub_2576FBBA0();
      break;
  }

  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_434();
}

uint64_t sub_2576F5254()
{
  v1 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for MLProgram.ValueType.ListParameters(0);
      v7 = swift_allocBox();
      OUTLINED_FUNCTION_8_39();
      result = sub_2576FBBA0();
      v2 = v7 | 0x2000000000000000;
      break;
    case 2u:
      type metadata accessor for MLProgram.ValueType.TupleParameters(0);
      v5 = swift_allocBox();
      OUTLINED_FUNCTION_10_45();
      result = sub_2576FBBA0();
      v2 = v5 | 0x4000000000000000;
      break;
    case 3u:
      type metadata accessor for MLProgram.ValueType.DictionaryParameters(0);
      v6 = swift_allocBox();
      OUTLINED_FUNCTION_9_37();
      result = sub_2576FBBA0();
      v2 = v6 | 0x6000000000000000;
      break;
    case 4u:
      type metadata accessor for MLProgram.ValueType.StateParameters(0);
      v4 = swift_allocBox();
      OUTLINED_FUNCTION_11_39();
      result = sub_2576FBBA0();
      v2 = v4 | 0x8000000000000000;
      break;
    default:
      v2 = OUTLINED_FUNCTION_120_1();
      OUTLINED_FUNCTION_13_28();
      result = sub_2576FBBA0();
      break;
  }

  *v0 = v2;
  return result;
}

void MLProgram.ValueType.TensorParameters.init(dataType:shape:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_78();
  v13 = type metadata accessor for Proto_MILSpec_Dimension(v12);
  v14 = OUTLINED_FUNCTION_63(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_28();
  v19 = *v5;
  type metadata accessor for Proto_MILSpec_Value(0);
  v20 = MEMORY[0x277D84F90];
  *(v7 + 32) = sub_2577435D4();
  v21 = v7 + *(type metadata accessor for Proto_MILSpec_TensorType(0) + 32);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v7 = sub_25773A814();
  *(v7 + 8) = v22 & 1;
  v23 = *(v3 + 16);
  *(v7 + 16) = v23;
  if (v23)
  {
    v42 = v7;
    sub_2574844E8();
    v24 = v20;
    v25 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
    v26 = (v3 + 40);
    while (1)
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
      v32 = v1 + *(v13 + 20);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v28 == 1)
      {
        v33 = type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0);
        OUTLINED_FUNCTION_112_2(v33);
        *v0 = v27 & 1;
      }

      else
      {
        v34 = type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0);
        OUTLINED_FUNCTION_112_2(v34);
        if (v27 < 0)
        {
          __break(1u);
          return;
        }

        *v0 = v27;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v25);
      sub_25751BB28();
      v39 = *(v24 + 16);
      v38 = *(v24 + 24);
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_174(v38);
        sub_2574844E8();
      }

      *(v24 + 16) = v39 + 1;
      v40 = *(v16 + 80);
      OUTLINED_FUNCTION_193();
      v41 = *(v16 + 72);
      OUTLINED_FUNCTION_33_13();
      sub_2576FBBA0();
      v26 += 16;
      if (!--v23)
      {

        v7 = v42;
        goto LABEL_12;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_12:
  *(v7 + 24) = v24;
  OUTLINED_FUNCTION_35();
}

void static MLProgram.ValueType.tuple<A>(_:)()
{
  OUTLINED_FUNCTION_433();
  v4 = v3;
  OUTLINED_FUNCTION_91_4(v5, v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v11 = OUTLINED_FUNCTION_38();
  type metadata accessor for MLProgram.ValueType.TupleParameters(v11);
  v12 = swift_allocBox();
  (*(v7 + 16))(v2, v0, v4);
  MLProgram.ValueType.TupleParameters.init<A>(_:)(v2, v4);
  *v1 = v12 | 0x4000000000000000;
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.TupleParameters.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_91_4(a1, a2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  *v3 = MEMORY[0x277D84F90];
  v13 = type metadata accessor for Proto_MILSpec_TupleType(0);
  OUTLINED_FUNCTION_112_2(v13);
  (*(v6 + 16))(v12, v2, a2);
  sub_257743784();
  MLProgram.ValueType.TupleParameters.types.setter();
  return (*(v6 + 8))(v2, a2);
}

void static MLProgram.ValueType.list(type:length:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v7 = swift_allocBox();

  MLProgram.ValueType.ListParameters.init(type:length:)();
  *a3 = v7 | 0x2000000000000000;
}

void MLProgram.ValueType.ListParameters.init(type:length:)()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D28, &qword_257744648);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_17_3();
  v14 = type metadata accessor for Proto_MILSpec_Dimension(v13);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_14();
  v23 = type metadata accessor for Proto_MILSpec_ValueType(v22);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_28();
  v27 = *v6;
  v50 = *v4;
  v49 = *(v4 + 8);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v28 = *(type metadata accessor for Proto_MILSpec_ListType(0) + 20);
  if (qword_27F879010 != -1)
  {
    swift_once();
  }

  *(v8 + v28) = qword_27F87B040;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v29 = *(v23 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  *(v2 + v29) = qword_27F87B038;
  sub_2576F5020();
  type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);

  v34 = *(v2 + v29);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v35 = *(v2 + v29);
  }

  else
  {
    v36 = *(v2 + v29);
    v37 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v37);

    v39 = sub_2574E503C(v38);

    *(v2 + v29) = v39;
  }

  OUTLINED_FUNCTION_93_2();
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE6A8();
  v40 = type metadata accessor for Proto_MILSpec_Dimension.OneOf_Dimension(0);
  v41 = OUTLINED_FUNCTION_188();
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  v43 = v1 + *(v14 + 20);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v49)
  {
    v44 = &v0[*(type metadata accessor for Proto_MILSpec_Dimension.UnknownDimension(0) + 20)];
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v0 = v50 & 1;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    sub_25751BB28();
    sub_2574DE7E0();
    OUTLINED_FUNCTION_35();
    return;
  }

  v45 = &v0[*(type metadata accessor for Proto_MILSpec_Dimension.ConstantDimension(0) + 20)];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if ((v50 & 0x8000000000000000) == 0)
  {
    *v0 = v50;
    goto LABEL_12;
  }

  __break(1u);
}

void MLProgram.ValueType.DictionaryParameters.init(keyType:valueType:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879D40, &qword_257744660);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for Proto_MILSpec_ValueType(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_99_3();
  v18 = *v5;
  v42 = *v3;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v19 = *(type metadata accessor for Proto_MILSpec_DictionaryType(0) + 20);
  if (qword_27F879020 != -1)
  {
    swift_once();
  }

  *(v7 + v19) = qword_27F87B048;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v41 = v13;
  v20 = *(v13 + 20);
  if (qword_27F878FF0 != -1)
  {
    OUTLINED_FUNCTION_12_15();
    swift_once();
  }

  v21 = qword_27F87B038;
  *(v1 + v20) = qword_27F87B038;
  v43 = v18;
  sub_2576F5020();
  v22 = type metadata accessor for Proto_MILSpec_ValueType.OneOf_Type(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  swift_retain_n();
  v26 = *(v1 + v20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v27 = *(v1 + v20);
  }

  else
  {
    v28 = *(v1 + v20);
    v29 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v29);

    v31 = sub_2574E503C(v30);

    *(v1 + v20) = v31;
  }

  OUTLINED_FUNCTION_93_2();
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE8C0();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v32 = *(v41 + 20);
  *(v0 + v32) = v21;
  v43 = v42;
  sub_2576F5020();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);
  v36 = *(v0 + v32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {

    v37 = *(v0 + v32);
  }

  else
  {
    v38 = *(v0 + v32);
    v39 = type metadata accessor for Proto_MILSpec_ValueType._StorageClass(0);
    OUTLINED_FUNCTION_448(v39);
    OUTLINED_FUNCTION_118_2();

    sub_2574E503C(v40);
    OUTLINED_FUNCTION_118_2();

    *(v0 + v32) = &v43;
  }

  OUTLINED_FUNCTION_93_2();
  sub_25751BB28();
  swift_endAccess();
  sub_2574DE9A0();
  OUTLINED_FUNCTION_35();
}

void static MLProgram.ValueType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v80 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_196();
  v79 = v14;
  v15 = OUTLINED_FUNCTION_153();
  v16 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v15);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_179();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_99_3();
  v21 = type metadata accessor for MLProgram.ValueType.TupleParameters(0);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_134_0();
  v29 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v79 - v37;
  v39 = type metadata accessor for MLProgram.ValueType.TensorParameters(0);
  v40 = OUTLINED_FUNCTION_13(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_4();
  MEMORY[0x28223BE20](v43);
  v45 = &v79 - v44;
  v46 = *v7;
  v47 = *v5;
  switch(v46 >> 61)
  {
    case 1uLL:
      if (v47 >> 61 == 1)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();
        v70 = *(type metadata accessor for Proto_MILSpec_ListType(0) + 20);
        v71 = *&v38[v70];
        v72 = *(v35 + v70);

        if (v71 == v72 || (, , sub_2574E9844(), v74 = v73, , , (v74 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v75, v76);
          sub_257743644();
        }

        sub_2576FA218(v35, type metadata accessor for MLProgram.ValueType.ListParameters);
        sub_2576FA218(v38, type metadata accessor for MLProgram.ValueType.ListParameters);

        goto LABEL_25;
      }

      break;
    case 2uLL:
      if (v47 >> 61 == 2)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();
        v57 = *v3;
        v58 = *v27;

        OUTLINED_FUNCTION_205();
        sub_2574796A0();
        if (v59)
        {
          v60 = *(type metadata accessor for Proto_MILSpec_TupleType(0) + 20);
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v61, v62);
          sub_257743644();
          sub_2576FA218(v27, type metadata accessor for MLProgram.ValueType.TupleParameters);
          sub_2576FA218(v3, type metadata accessor for MLProgram.ValueType.TupleParameters);
        }

        else
        {
          sub_2576FA218(v27, type metadata accessor for MLProgram.ValueType.TupleParameters);
          sub_2576FA218(v3, type metadata accessor for MLProgram.ValueType.TupleParameters);
        }
      }

      break;
    case 3uLL:
      if (v47 >> 61 == 3)
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();
        v63 = *(type metadata accessor for Proto_MILSpec_DictionaryType(0) + 20);
        v64 = *(v2 + v63);
        v65 = *(v1 + v63);

        if (v64 == v65 || (, , OUTLINED_FUNCTION_205(), sub_2574EA9B4(), v67 = v66, , , (v67 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v68, v69);
          sub_257743644();
        }

        v77 = type metadata accessor for MLProgram.ValueType.DictionaryParameters;
        sub_2576FA218(v1, type metadata accessor for MLProgram.ValueType.DictionaryParameters);
        v78 = v2;
        goto LABEL_23;
      }

      break;
    case 4uLL:
      if (v47 >> 61 == 4)
      {
        swift_projectBox();
        swift_projectBox();
        v48 = v79;
        sub_2576FA1C0();
        v49 = v80;
        sub_2576FA1C0();
        v50 = *(type metadata accessor for Proto_MILSpec_StateType(0) + 20);
        v51 = *(v48 + v50);
        v52 = *(v49 + v50);

        if (v51 == v52 || (, , OUTLINED_FUNCTION_205(), sub_2574EDA64(), v54 = v53, , , (v54 & 1) != 0))
        {
          sub_2577431B4();
          OUTLINED_FUNCTION_17_27();
          sub_2576FA2D0(v55, v56);
          sub_257743644();
        }

        v77 = type metadata accessor for MLProgram.ValueType.StateParameters;
        sub_2576FA218(v49, type metadata accessor for MLProgram.ValueType.StateParameters);
        v78 = v48;
LABEL_23:
        sub_2576FA218(v78, v77);

        goto LABEL_25;
      }

      break;
    default:
      if (!(v47 >> 61))
      {
        swift_projectBox();
        swift_projectBox();
        sub_2576FA1C0();
        sub_2576FA1C0();

        sub_2574E8694(v45);
        sub_2576FA218(v0, type metadata accessor for MLProgram.ValueType.TensorParameters);
        sub_2576FA218(v45, type metadata accessor for MLProgram.ValueType.TensorParameters);

LABEL_25:
      }

      break;
  }

  OUTLINED_FUNCTION_35();
}

void MLProgram.ValueType.hash(into:)()
{
  OUTLINED_FUNCTION_433();
  v5 = type metadata accessor for MLProgram.ValueType.StateParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_35_15();
  v10 = type metadata accessor for MLProgram.ValueType.DictionaryParameters(v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_17_3();
  v15 = type metadata accessor for MLProgram.ValueType.TupleParameters(v14);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_0();
  v19 = type metadata accessor for MLProgram.ValueType.ListParameters(0);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = OUTLINED_FUNCTION_14();
  v24 = type metadata accessor for MLProgram.ValueType.TensorParameters(v23);
  v25 = OUTLINED_FUNCTION_13(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19_28();
  switch(*v1 >> 61)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_1_76();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](1);
      type metadata accessor for Proto_MILSpec_ListType(0);
      sub_2576FA2D0(&qword_27F87B5F8, type metadata accessor for Proto_MILSpec_ListType);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_18_38();
      v29 = v3;
      break;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_4_57();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](2);
      type metadata accessor for Proto_MILSpec_TupleType(0);
      sub_2576FA2D0(&qword_27F87B608, type metadata accessor for Proto_MILSpec_TupleType);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_65_5();
      v29 = v2;
      break;
    case 3:
      swift_projectBox();
      OUTLINED_FUNCTION_3_67();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](3);
      type metadata accessor for Proto_MILSpec_DictionaryType(0);
      sub_2576FA2D0(&qword_27F87B5E8, type metadata accessor for Proto_MILSpec_DictionaryType);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      v29 = OUTLINED_FUNCTION_62_7();
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_7_41();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](4);
      type metadata accessor for Proto_MILSpec_StateType(0);
      sub_2576FA2D0(&qword_27F87B5D8, type metadata accessor for Proto_MILSpec_StateType);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_12_41();
      v29 = v0;
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_93();
      sub_2576FA1C0();
      MEMORY[0x259C651F0](0);
      type metadata accessor for Proto_MILSpec_TensorType(0);
      sub_2576FA2D0(&qword_27F87B618, type metadata accessor for Proto_MILSpec_TensorType);
      OUTLINED_FUNCTION_85_5();
      sub_2577435F4();
      OUTLINED_FUNCTION_2_65();
      v29 = v4;
      break;
  }

  sub_2576FA218(v29, v28);
  OUTLINED_FUNCTION_434();
}

uint64_t MLProgram.ValueType.hashValue.getter()
{
  v2 = *v0;
  sub_257743A14();
  MLProgram.ValueType.hash(into:)();
  return sub_257743A64();
}

uint64_t sub_2576F6AA4()
{
  v2 = *v0;
  sub_257743A14();
  MLProgram.ValueType.hash(into:)();
  return sub_257743A64();
}

uint64_t MLProgram.ValueType.debugDescription.getter()
{
  v9 = *v0;
  sub_2576F17A0();
  OUTLINED_FUNCTION_87_4(v3, v4, v5);
  OUTLINED_FUNCTION_61_5();
  v6 = OUTLINED_FUNCTION_205();
  sub_257483A28(v6, v7, v1);
  return v2;
}

void MLProgram.ValueType.TensorParameters.dataType.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_25773A738(&v8);
  OUTLINED_FUNCTION_114_1();
  if (v7)
  {
    v5 = v6;
  }

  *a1 = v5;
}