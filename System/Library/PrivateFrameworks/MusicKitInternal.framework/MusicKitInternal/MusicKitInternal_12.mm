uint64_t sub_1D4F57624()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = v0[33];
  v2 = v0[34];
  sub_1D560C028();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D4E7661C(v0[33], &unk_1EC7E9CA8, &unk_1D561D1D0);
    result = sub_1D5615E08();
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = v0[36];
    v5 = v0[37];
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[28];
    v10 = v0[29];
    v11 = v0[26];
    v21 = v0[32];
    v22 = v0[27];
    v12 = v0[24];
    v23 = v0[25];
    v24 = v0[23];
    v13 = v0[19];
    (*(v7 + 32))(v5, v0[33], v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_1D560B908();
    sub_1D560D298();
    sub_1D4F5A490(v13, v9);
    OUTLINED_FUNCTION_3_19();
    sub_1D4F5A440(v14, v15);
    sub_1D560E6C8();
    (*(v12 + 16))(v23, v11, v24);
    sub_1D560D2B8();
    (*(v12 + 8))(v11, v24);
    sub_1D4F581B8(v9);
    v16 = *(MEMORY[0x1E6974EB0] + 4);
    v17 = swift_task_alloc();
    v0[38] = v17;
    *v17 = v0;
    v17[1] = sub_1D4F57900;
    v18 = v0[32];
    v19 = v0[22];
    v20 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEDCE5B0](v19);
  }

  return result;
}

uint64_t sub_1D4F57900()
{
  OUTLINED_FUNCTION_60();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 312) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4F57A30()
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 176);
  *(v0 + 112) = 100;
  v2 = objc_opt_self();
  sub_1D560D418();
  v3 = sub_1D560C168();
  v4 = OUTLINED_FUNCTION_159();
  sub_1D4E55E1C(v4, v5);
  *(v0 + 120) = 0;
  v6 = [v2 propertyListWithData:v3 options:0 format:v0 + 112 error:v0 + 120];

  v7 = *(v0 + 120);
  if (!v6)
  {
    v15 = v7;
    v16 = *(v0 + 280);
    v66 = *(v0 + 272);
    v69 = *(v0 + 296);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);
    v19 = *(v0 + 240);
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);
    sub_1D560BE98();

    swift_willThrow();
    (*(v20 + 8))(v21, v22);
    (*(v17 + 8))(v18, v19);
    (*(v16 + 8))(v69, v66);
LABEL_15:
    OUTLINED_FUNCTION_6_23();

    OUTLINED_FUNCTION_55();
    v61 = *MEMORY[0x1E69E9840];

    return v60();
  }

  sub_1D56159A8();
  swift_unknownObjectRelease();
  sub_1D5614A88();
  v8 = sub_1D5614BD8();
  sub_1D4E5194C(v0 + 16, v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EC3C0, &unk_1D5620C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 240);
    v28 = v8;
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v29 + 8))(v30, v31);
    v32 = v28;
    (*(v25 + 8))(v26, v27);
    (*(v24 + 8))(v71, v23);
    goto LABEL_7;
  }

  v9 = *(v0 + 128);
  v10 = sub_1D4E4EFA0();
  if (v11)
  {
    v12 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
    sub_1D5615D78();
    v14 = *(v9[6] + 16 * v12 + 8);

    sub_1D4E519A8((v9[7] + 32 * v12), (v0 + 80));
    sub_1D5615D98();
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  v70 = (v0 + 16);
  sub_1D4E7661C(v0 + 80, &qword_1EC7E9F98, &qword_1D561C420);
  v36 = objc_opt_self();
  v37 = sub_1D5614BA8();

  *(v0 + 136) = 0;
  v38 = [v36 dataWithJSONObject:v37 options:0 error:v0 + 136];

  v39 = *(v0 + 136);
  if (!v38)
  {
    v52 = v39;
    v53 = *(v0 + 280);
    v65 = *(v0 + 272);
    v68 = *(v0 + 296);
    v54 = *(v0 + 248);
    v55 = *(v0 + 256);
    v56 = *(v0 + 240);
    v57 = *(v0 + 168);
    v58 = *(v0 + 176);
    v59 = *(v0 + 160);
    sub_1D560BE98();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v70);
    (*(v57 + 8))(v58, v59);
    (*(v54 + 8))(v55, v56);
    (*(v53 + 8))(v68, v65);
    goto LABEL_15;
  }

  v40 = *(v0 + 312);
  v41 = sub_1D560C198();
  v62 = v42;
  v63 = v41;

  v43 = sub_1D560B9C8();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();
  sub_1D560B948();
  v72 = *(v0 + 296);
  v46 = *(v0 + 280);
  v47 = *(v0 + 248);
  v64 = *(v0 + 256);
  v67 = *(v0 + 272);
  v48 = *(v0 + 240);
  v50 = *(v0 + 168);
  v49 = *(v0 + 176);
  v51 = *(v0 + 160);

  sub_1D4E55E1C(v63, v62);
  __swift_destroy_boxed_opaque_existential_1(v70);
  (*(v50 + 8))(v49, v51);
  (*(v47 + 8))(v64, v48);
  (*(v46 + 8))(v72, v67);
  if (v40)
  {
    goto LABEL_15;
  }

  v32 = *(v0 + 144);
LABEL_7:
  OUTLINED_FUNCTION_6_23();

  v33 = *(v0 + 8);
  v34 = *MEMORY[0x1E69E9840];

  return v33(v32);
}

uint64_t sub_1D4F5809C()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_159();
  v6(v5);
  v7 = v0[39];
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_55();
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1D4F581B8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Bag()
{
  result = qword_1EDD549B0;
  if (!qword_1EDD549B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Bag.init(rawUnderlyingBag:)()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for Bag.UnderlyingBagWrapper();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = type metadata accessor for Bag();
    OUTLINED_FUNCTION_24_10(v3);
    *v4 = v2;
    *(v4 + 8) = 0;
    sub_1D502EF3C();

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567F7B0);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4F583E0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v186 = a6;
  v191 = a4;
  v196 = a3;
  v204 = *MEMORY[0x1E69E9840];
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_24_0(v190);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v189 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v188 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v187 = &v182 - v19;
  v195 = sub_1D56158D8();
  v20 = OUTLINED_FUNCTION_4(v195);
  v193 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v182 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v183 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  v184 = v28;
  OUTLINED_FUNCTION_23();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v182 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v182 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v182 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v182 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v185 = &v182 - v42;
  v194 = a7;
  OUTLINED_FUNCTION_20_12(a7, 1);
  *&v201 = 46;
  *(&v201 + 1) = 0xE100000000000000;
  v200 = &v201;

  v192 = a1;
  v43 = sub_1D510DDD4(1, 1, sub_1D4F5A35C, v199, a1, a2);
  v44 = v43;
  v197 = v7;
  if (v43[2] == 2)
  {
    v190 = a5;
    v46 = v43[4];
    v45 = v43[5];
    v47 = v43[6];
    v48 = v43[7];

    MEMORY[0x1DA6EABE0](v46, v45, v47, v48);

    v49 = sub_1D5614D38();

    v50 = [v196 dictionaryForBagKey_];

    if (!v50)
    {
      goto LABEL_27;
    }

    sub_1D5614BB8();

    v51 = objc_opt_self();
    v52 = sub_1D5614BA8();

    *&v201 = 0;
    v53 = [v51 dataWithJSONObject:v52 options:0 error:&v201];

    v54 = v201;
    if (!v53)
    {
      v89 = v54;

      sub_1D560BE98();

      swift_willThrow();
      v90 = OUTLINED_FUNCTION_17_15();
      v91(v90);
      goto LABEL_34;
    }

    v55 = sub_1D560C198();
    v57 = v56;

    if (v191)
    {
      v58 = v191;
    }

    else
    {
      v97 = sub_1D560B9C8();
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      swift_allocObject();
      v58 = sub_1D560B9B8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F31CF4();

    OUTLINED_FUNCTION_21_1();
    v100 = v197;
    sub_1D560B948();
    if (v100)
    {
      v101 = OUTLINED_FUNCTION_17_15();
      v102(v101);

      sub_1D4E55E1C(v55, v57);
LABEL_27:

      goto LABEL_34;
    }

    v197 = 0;
    if (v44[2] >= 2uLL)
    {
      v109 = v201;
      v110 = v44[8];
      v111 = v44[9];
      v112 = v44[10];
      v113 = v44[11];

      v114 = MEMORY[0x1DA6EABE0](v110, v111, v112, v113);
      v116 = v115;

      v117 = v185;
      v118 = v197;
      sub_1D4F593CC(v114, v116, v58, v190, v186, v185);
      if (!v118)
      {
        v197 = v109;
        v154 = v193;
        v153 = v194;
        v155 = v195;
        (*(v193 + 8))(v194, v195);

        sub_1D4E55E1C(v55, v57);

        (*(v154 + 32))(v153, v117, v155);
        goto LABEL_34;
      }

      v119 = OUTLINED_FUNCTION_17_15();
      v120(v119);

      sub_1D4E55E1C(v55, v57);

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    OUTLINED_FUNCTION_0_28();
    swift_once();
LABEL_44:
    v161 = sub_1D560C758();
    __swift_project_value_buffer(v161, qword_1EC87C2B8);

    v162 = sub_1D560C738();
    v163 = sub_1D56156C8();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *&v201 = swift_slowAlloc();
      *v164 = 136315394;
      v165 = OUTLINED_FUNCTION_7_24();
      *(v164 + 4) = sub_1D4E6835C(v165, v166, v167);
      *(v164 + 12) = 2080;
      v168 = sub_1D5616458();
      v170 = sub_1D4E6835C(v168, v169, &v201);

      *(v164 + 14) = v170;
      _os_log_impl(&dword_1D4E3F000, v162, v163, "Failed fetching bag value for key %s. Requested value type %s is not supported.", v164, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    goto LABEL_34;
  }

  v59 = v196;

  v60 = sub_1D560C0A8();
  if (v60 == a5)
  {
    v83 = v60;
    OUTLINED_FUNCTION_7_24();
    v84 = sub_1D5614D38();
    v85 = [v59 urlForBagKey_];

    v86 = a5;
    if (v85)
    {
      v87 = v188;
      sub_1D560BFC8();

      v88 = 0;
    }

    else
    {
      v88 = 1;
      v87 = v188;
    }

    v121 = v193;
    v122 = v195;
    (*(v193 + 8))(v194, v195);
    __swift_storeEnumTagSinglePayload(v87, v88, 1, v83);
    v123 = v187;
    sub_1D4F5A3D0(v87, v187);
    sub_1D4F5A3D0(v123, v189);
    v124 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v41, v124 ^ 1u, 1, v86);
    v125 = *(v121 + 32);
    v126 = OUTLINED_FUNCTION_159();
    v129 = v122;
    goto LABEL_33;
  }

  if (a5 == MEMORY[0x1E69E6158])
  {
    OUTLINED_FUNCTION_7_24();
    v92 = sub_1D5614D38();
    v93 = [v59 stringForBagKey_];

    if (v93)
    {
      v94 = sub_1D5614D68();
      v96 = v95;
    }

    else
    {
      v94 = 0;
      v96 = 0;
    }

    v135 = v193;
    v134 = v194;
    v136 = *(v193 + 8);
    OUTLINED_FUNCTION_25_23();
    v137();
    *&v201 = v94;
    *(&v201 + 1) = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    v138 = swift_dynamicCast();
    OUTLINED_FUNCTION_31_4(v38, v138 ^ 1u);
    v128 = *(v135 + 32);
    v126 = v134;
    v127 = v38;
    v129 = a1;
LABEL_33:
    v128(v126, v127, v129);
    goto LABEL_34;
  }

  if (a5 == MEMORY[0x1E69E7360])
  {
    OUTLINED_FUNCTION_7_24();
    v103 = sub_1D5614D38();
    v104 = [v59 int64ValueForBagKey_];

    v105 = OUTLINED_FUNCTION_23_16();
    v106 = v195;
    v107(v105, v195);
    *&v201 = v104;
    v108 = swift_dynamicCast();
    OUTLINED_FUNCTION_31_4(v35, v108 ^ 1u);
    (v44[4])(v38, v35, v106);
    goto LABEL_34;
  }

  if (a5 == MEMORY[0x1E69E6370])
  {
    OUTLINED_FUNCTION_7_24();
    v130 = sub_1D5614D38();
    v131 = [v59 BOOLValueForBagKey_];

    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_25_23();
    v132();
    LOBYTE(v201) = v131;
    v133 = swift_dynamicCast();
    OUTLINED_FUNCTION_31_4(v32, v133 ^ 1u);
    (v44[4])(v38, v32, a1);
    goto LABEL_34;
  }

  v61 = dynamic_cast_existential_1_conditional(a5);
  if (v61)
  {
    v63 = v61;
    v64 = v62;
    v190 = a5;
    OUTLINED_FUNCTION_7_24();
    v65 = sub_1D5614D38();
    v66 = [v59 numberForBagKey_];

    if (v66)
    {
      v198 = [v66 longLongValue];
      v67 = sub_1D56158D8();
      v68 = OUTLINED_FUNCTION_4(v67);
      v70 = v69;
      v72 = *(v71 + 64);
      MEMORY[0x1EEE9AC00](v68);
      v74 = &v182 - v73;
      v75 = *(*(v64 + 8) + 24);
      sub_1D4F5A37C();
      sub_1D56155E8();
      if (__swift_getEnumTagSinglePayload(v74, 1, v63) == 1)
      {
        v76 = v193;
        v77 = v194;
        v78 = *(v193 + 8);
        OUTLINED_FUNCTION_25_23();
        v79();

        v80 = v76;
        v81 = v67;
        v82 = v75;
        (*(v70 + 8))(v74, v81);
        v201 = 0u;
        v202 = 0u;
        v203 = 0;
      }

      else
      {
        *(&v202 + 1) = v63;
        v203 = v64;
        __swift_allocate_boxed_opaque_existential_0(&v201);
        OUTLINED_FUNCTION_24_0(v63);
        (*(v156 + 32))();

        v80 = v193;
        v77 = v194;
        v82 = v195;
        (*(v193 + 8))(v194, v195);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
      v157 = v184;
      v158 = v190;
      v159 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v157, v159 ^ 1u, 1, v158);
      (*(v80 + 32))(v77, v157, v82);
    }
  }

  else
  {
    v140 = dynamic_cast_existential_1_conditional(a5);
    if (!v140)
    {
      v160 = v59;
      if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780) == a5 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40) == a5)
      {
        OUTLINED_FUNCTION_7_24();
        v171 = sub_1D5614D38();
        v172 = [v160 arrayForBagKey_];

        if (v172)
        {
          v173 = sub_1D5615168();
        }

        else
        {
          v173 = 0;
        }

        v174 = v193;
        v175 = v194;
        v176 = v182;
        *&v201 = v173;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
        if (swift_dynamicCast())
        {
          (*(v174 + 8))(v175, v195);
          OUTLINED_FUNCTION_20_12(v176, 0);
          OUTLINED_FUNCTION_24_0(a5);
          (*(v177 + 32))(v175, v176, a5);
          OUTLINED_FUNCTION_20_12(v175, 0);
        }

        else
        {
          OUTLINED_FUNCTION_20_12(v176, 1);
          v178 = *(v174 + 8);
          v179 = v176;
          v180 = v195;
          v178(v179, v195);
          sub_1D4F48F20();
          OUTLINED_FUNCTION_29();
          swift_allocError();
          *v181 = 2;
          swift_willThrow();
          v178(v175, v180);
        }

        goto LABEL_34;
      }

      if (qword_1EC7E90A8 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }

    v141 = v140;
    OUTLINED_FUNCTION_7_24();
    v142 = sub_1D5614D38();
    v143 = [v59 numberForBagKey_];

    if (v143)
    {
      OUTLINED_FUNCTION_24_0(v141);
      v145 = *(v144 + 64);
      MEMORY[0x1EEE9AC00](v146);
      [v143 doubleValue];
      sub_1D5614B98();

      v148 = v193;
      v147 = v194;
      v149 = *(v193 + 8);
      OUTLINED_FUNCTION_25_23();
      v150();
      v151 = v183;
      v152 = swift_dynamicCast();
      OUTLINED_FUNCTION_20_12(v151, v152 ^ 1u);
      (*(v148 + 32))(v147, v151, a1);
    }
  }

LABEL_34:
  v139 = *MEMORY[0x1E69E9840];
}

void sub_1D4F593CC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v79 = a3;
  v78 = a5;
  v11 = sub_1D5615C18();
  v12 = OUTLINED_FUNCTION_4(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v75 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v76 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v77 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v83 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v26 = sub_1D56158D8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v84 = v28;
  v85 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v74 - v34;
  v86 = a6;
  OUTLINED_FUNCTION_31_4(a6, 1);
  if (dynamic_cast_existential_1_conditional(a4))
  {
    sub_1D5614C58();
    if (!v6)
    {
      v66 = OUTLINED_FUNCTION_14_16();
      v67(v66);
      (*(a6 + 32))(a4, v35, a1);
      return;
    }

    v80 = a1;
    v36 = a2;
  }

  else
  {
    type metadata accessor for MusicRequestConfiguration();
    OUTLINED_FUNCTION_3_19();
    sub_1D4F5A440(v37, v38);
    sub_1D5614C08();
    if (!v6)
    {
      v70 = OUTLINED_FUNCTION_14_16();
      v71(v70);

      (*(a6 + 32))(a4, v33, a1);
      return;
    }

    v80 = a1;
    v36 = a2;
  }

  v88 = v6;
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v40 = v82;
  v41 = swift_dynamicCast();
  v42 = v83;
  if (v41)
  {

    v43 = v81;
    (*(v81 + 32))(v42, v25, v40);
    v44 = v43[2];
    v45 = v77;
    v44(v77, v42, v40);
    v46 = v43[11];
    v47 = OUTLINED_FUNCTION_21_1();
    if (v48(v47) != *MEMORY[0x1E69E6AF8])
    {
      v68 = v43[1];
      v68(v42, v40);
      v69 = OUTLINED_FUNCTION_21_1();
      (v68)(v69);

      return;
    }

    v49 = v43[12];
    v50 = OUTLINED_FUNCTION_21_1();
    v51(v50);
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    v53 = sub_1D5615C08();
    OUTLINED_FUNCTION_24_0(v53);
    (*(v54 + 8))(v45 + v52);
    if (qword_1EC7E90A8 != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v55 = sub_1D560C758();
    __swift_project_value_buffer(v55, qword_1EC87C2B8);
    v56 = v76;
    v44(v76, v42, v40);
    v57 = v36;

    v58 = sub_1D560C738();
    v59 = sub_1D56156C8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_1D4E6835C(v80, v57, &v87);
      *(v60 + 12) = 2080;
      v44(v75, v56, v40);
      v61 = sub_1D5614DB8();
      v63 = v62;
      v64 = OUTLINED_FUNCTION_15_19();
      v56(v64);
      v65 = sub_1D4E6835C(v61, v63, &v87);

      *(v60 + 14) = v65;
      _os_log_impl(&dword_1D4E3F000, v58, v59, "Type mismatch for bag key %s: %s.", v60, 0x16u);
      swift_arrayDestroy();
      v42 = v83;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_15_19();
      v56(v72);
    }

    sub_1D4F48F20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v73 = 2;
    swift_willThrow();
    (v56)(v42, v40);
  }

  (*(v84 + 8))(v86, v85);
}

uint64_t Bag.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void sub_1D4F59ACC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {

      sub_1D4F286E0();
    }
  }

  else if ((a4 & 1) == 0)
  {
    type metadata accessor for Bag.UnderlyingBagWrapper();
    [*(a1 + 16) isEqual_];
  }
}

void sub_1D4F59B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1DA6EC0D0](1);

    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    v4 = *(a2 + 16);
    sub_1D5615858();
  }
}

uint64_t sub_1D4F59BC0(uint64_t a1, char a2)
{
  sub_1D56162D8();
  if (a2)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    v4 = *(a1 + 16);
    sub_1D5615858();
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F59C84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  sub_1D4F59B44(v4, v1, v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F59D1C()
{
  sub_1D56162D8();
  v1 = *(v0 + 16);
  sub_1D5615858();
  return sub_1D5616328();
}

uint64_t sub_1D4F59DB4()
{
  sub_1D56162D8();
  v1 = *v0;
  sub_1D4F59CF8();
  return sub_1D5616328();
}

void static Bag.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static MusicRequestConfiguration.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for Bag() + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = a2 + v4;
    v8 = *v7;
    v9 = *(v7 + 8);

    sub_1D4F59ACC(v5, v6, v8, v9);
  }
}

void Bag.hash(into:)()
{
  MusicRequestConfiguration.hash(into:)();
  v0 = type metadata accessor for Bag();
  OUTLINED_FUNCTION_24_10(v0);
  v2 = *v1;
  if (v1[1])
  {
    MEMORY[0x1DA6EC0D0](1);

    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    v3 = *(v2 + 16);
    sub_1D5615858();
  }
}

uint64_t Bag.hashValue.getter()
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  v0 = type metadata accessor for Bag();
  OUTLINED_FUNCTION_24_10(v0);
  v2 = *v1;
  if (v1[1])
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D4F31AC0();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    v3 = *(v2 + 16);
    sub_1D5615858();
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F59F8C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MusicRequestConfiguration.hash(into:)();
  sub_1D4F59B44(v5, *(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  return sub_1D5616328();
}

unint64_t sub_1D4F59FE8()
{
  result = qword_1EC7EC378;
  if (!qword_1EC7EC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC378);
  }

  return result;
}

uint64_t sub_1D4F5A0AC()
{
  result = type metadata accessor for MusicRequestConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Bag.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D4F5A21C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4F5A25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1D4F5A2C0()
{
  result = qword_1EC7EC388;
  if (!qword_1EC7EC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC388);
  }

  return result;
}

unint64_t sub_1D4F5A37C()
{
  result = qword_1EC7EC3A0;
  if (!qword_1EC7EC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC3A0);
  }

  return result;
}

uint64_t sub_1D4F5A3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5A440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F5A490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5A530(void *a1)
{
  v2 = a1[2];
  result = sub_1D56152D8();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = sub_1D56158D8();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = sub_1D56152D8();
      if (v8 <= 0x3F)
      {
        result = sub_1D4ECC7A8(319, &qword_1EC7EC448, off_1E84C0358);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1D4F5A608(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 23;
  if (!v6)
  {
    v10 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((result + v9 + 8) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return (EnumTagSinglePayload - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *result;
      if (*result >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v11 = ((v10 + *(*(v4 - 8) + 64) + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = (v8 + (v13 | v18) + 1);
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1D4F5A788(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v21 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v25 = a2 + 1;
              v26 = &a1[v12 + 8] & ~v12;

              __swift_storeEnumTagSinglePayload(v26, v25, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v22 = ~(-1 << (8 * v13));
              }

              else
              {
                v22 = -1;
              }

              if (v13)
              {
                v23 = v22 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v24 = v13;
                }

                else
                {
                  v24 = 4;
                }

                bzero(v21, v13);
                switch(v24)
                {
                  case 2:
                    *v21 = v23;
                    break;
                  case 3:
                    *v21 = v23;
                    v21[2] = BYTE2(v23);
                    break;
                  case 4:
                    *v21 = v23;
                    break;
                  default:
                    *v21 = v23;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = a2 - 1;
            }

            *a1 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((v13 + ((v12 + 8) & ~v12) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D4F5AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v198 = a4;
  v196 = a3;
  v197 = a1;
  v192 = a2;
  v193 = a9;
  v194 = a12;
  v195 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v20);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v21 = OUTLINED_FUNCTION_4(v164);
  v160 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_11_3(&v158 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v171 = sub_1D5614898();
  v32 = OUTLINED_FUNCTION_4(v171);
  v190 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v43 = OUTLINED_FUNCTION_4(v166);
  v162 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_11_3(&v158 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v176 = sub_1D5613AF8();
  v54 = OUTLINED_FUNCTION_4(v176);
  v169 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v59 - v58);
  v174 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v174);
  v173 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v64);
  OUTLINED_FUNCTION_1_0();
  v178 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_11_3(&v158 - v71);
  v72 = a6;
  v191 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v191);
  v74 = v73;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v158 - v78;
  v183 = v72;
  OUTLINED_FUNCTION_1_0();
  v181 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v85 - v84);
  OUTLINED_FUNCTION_1_0();
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v93 = v92 - v91;
  v199 = a5;
  v200 = v72;
  v185 = a7;
  v201 = a7;
  v202 = v195;
  v203 = a11;
  v94 = type metadata accessor for MusicLibraryImportChangeRequest();
  v95 = v94[20];
  v96 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  v97 = v193;
  *(v193 + v95) = v96;
  v188 = v87;
  (*(v87 + 16))(v93, v197, a8);
  v186 = v96;
  v182 = a5;
  v189 = a8;
  v98 = sub_1D5615318();
  *v97 = v98;
  v99 = v94[17];
  *&v195 = v74;
  v100 = *(v74 + 16);
  v102 = v191;
  v101 = v192;
  v100(v97 + v99, v192, v191);
  *(v97 + v94[18]) = v196;
  *(v97 + v94[19]) = v198;

  sub_1D4F5B780(v98, v94);
  v103 = v101;

  v100(v79, v101, v102);
  v104 = v183;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v183);
  v187 = v94;
  if (EnumTagSinglePayload == 1)
  {
    (*(v195 + 8))(v79, v102);
  }

  else
  {
    v106 = v181;
    v107 = v180;
    (*(v181 + 32))(v180, v79, v104);
    sub_1D4F5B9E4(v107, v94);
    (*(v106 + 8))(v107, v104);
  }

  v108 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v109 = sub_1D5615D38();

  v110 = v197;
  v111 = v190;
  v112 = v184;
  if (!*(v109 + 16))
  {
    v116 = v177;
    v113 = v189;
    sub_1D5615018();
    v117 = v182;
    if (__swift_getEnumTagSinglePayload(v116, 1, v182) == 1)
    {
      (*(v173 + 8))(v116, v174);
LABEL_19:
      v114 = v195;
      v115 = v187;
      goto LABEL_20;
    }

    v118 = v116;
    v119 = v178;
    v120 = v179;
    (*(v178 + 32))(v179, v118, v117);
    v196 = *(v119 + 16);
    v196(v172, v120, v117);
    v121 = v176;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v112, 0, 1, v121);
      v122 = v169;
      v123 = *(v169 + 32);
      v124 = OUTLINED_FUNCTION_11_21();
      v125(v124, v112, v121);
      v126 = v165;
      sub_1D5613AC8();
      v127 = v121;
      v128 = v166;
      if (__swift_getEnumTagSinglePayload(v126, 1, v166) != 1)
      {

        v140 = v162;
        v141 = v161;
        (*(v162 + 32))(v161, v126, v128);
        v142 = *(v140 + 16);
        v143 = OUTLINED_FUNCTION_11_21();
        v144(v143, v141, v128);
        sub_1D4F5BEB8(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470);
        sub_1D5614FB8();
        sub_1D526EBEC();
        v109 = v145;

        (*(v140 + 8))(v141, v128);
        (*(v169 + 8))(v175, v127);
        v146 = OUTLINED_FUNCTION_2_14();
        v147(v146);
        v103 = v192;
        goto LABEL_19;
      }

      (*(v122 + 8))(v175, v127);
      sub_1D4E6C9CC(v126, &qword_1EC7EC458, &unk_1D5620CD0);
      v117 = v182;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v112, 1, 1, v121);
      sub_1D4E6C9CC(v112, &qword_1EC7EEC30, &unk_1D5620CE0);
    }

    v129 = v179;
    v196(v168, v179, v117);
    v130 = v170;
    v131 = v171;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v130, 0, 1, v131);
      v132 = *(v111 + 32);
      v133 = OUTLINED_FUNCTION_11_21();
      v134(v133, v130, v131);
      v135 = v163;
      sub_1D5614858();
      v136 = v164;
      v137 = __swift_getEnumTagSinglePayload(v135, 1, v164);
      v103 = v192;
      if (v137 == 1)
      {
        (*(v111 + 8))(v117, v131);
        v138 = OUTLINED_FUNCTION_2_14();
        v139(v138);
        sub_1D4E6C9CC(v135, &qword_1EC7EC450, &unk_1D5621060);
      }

      else
      {

        v148 = v160;
        v149 = v159;
        (*(v160 + 32))(v159, v135, v136);
        v150 = *(v148 + 16);
        v151 = OUTLINED_FUNCTION_11_21();
        v152(v151, v149, v136);
        sub_1D4F5BEB8(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
        sub_1D5614FB8();
        sub_1D526EC0C();
        v109 = v153;

        (*(v148 + 8))(v149, v136);
        (*(v190 + 8))(v167, v131);
        v154 = OUTLINED_FUNCTION_2_14();
        v155(v154);
      }
    }

    else
    {
      (*(v178 + 8))(v129, v117);
      __swift_storeEnumTagSinglePayload(v130, 1, 1, v131);
      sub_1D4E6C9CC(v130, &unk_1EC7F1990, &unk_1D561CEF0);
      v103 = v192;
    }

    v108 = v191;
    goto LABEL_19;
  }

  v113 = v189;
  v114 = v195;
  v115 = v187;
LABEL_20:
  sub_1D4F5BC74(v109, v115);

  v156 = v186;
  [v186 setShouldLibraryAdd_];

  (*(v114 + 8))(v103, v108);
  return (*(v188 + 8))(v110, v113);
}

void sub_1D4F5B780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56131C8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  v9 = sub_1D5615EE8();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v12 = v10 + 32;
      v13 = *MEMORY[0x1E6976988];
      do
      {
        sub_1D4E628D4(v12, v21);
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        v14 = OUTLINED_FUNCTION_8_24();
        v15(v14);
        OUTLINED_FUNCTION_13_23();
        v16 = OUTLINED_FUNCTION_10_19();
        v17(v16);
        __swift_destroy_boxed_opaque_existential_1(v21);
        sub_1D5615C88();
        v18 = *(v22 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {
    }

    v19 = *(v2 + *(a2 + 80));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v20 = sub_1D5615158();

    [v19 setModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D4F5B9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D56131C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 24);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v15 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v20, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v7 + 104))(v11, *MEMORY[0x1E6976988], v6);
    v18 = sub_1D5159364(v11, v16, v17);
    (*(v7 + 8))(v11, v6);
    [*(v3 + *(a2 + 80)) setReferralObject_];

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1D4E6C9CC(v20, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4F5BC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56131C8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  sub_1D555A4A8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v11 = v9 + 32;
      v12 = *MEMORY[0x1E6976988];
      do
      {
        sub_1D4E628D4(v11, v20);
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        v13 = OUTLINED_FUNCTION_8_24();
        v14(v13);
        OUTLINED_FUNCTION_13_23();
        v15 = OUTLINED_FUNCTION_10_19();
        v16(v15);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_1D5615C88();
        v17 = *(v21 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v11 += 40;
        --v10;
      }

      while (v10);
    }

    else
    {
    }

    v18 = *(v2 + *(a2 + 80));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v19 = sub_1D5615158();

    [v18 setRelatedModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D4F5BEB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t RadioShow.editorialArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v12);
  result = sub_1D5614AE8();
  if (result)
  {
    sub_1D4ED06C8(result, v1);

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    return OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void sub_1D4F5C120()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_6_5();
  v15 = OUTLINED_FUNCTION_2_15(v14);
  v16 = v2(v15);
  if (v16)
  {
    sub_1D4ED06C8(v16, v0);

    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v17, v18, v19, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v21);
    if (v22)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v4, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v27 = OUTLINED_FUNCTION_11_22();
      v28 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v0, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v4, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v24 = *(v23 + 8);
      v25 = OUTLINED_FUNCTION_16_2();
      v27 = v26(v25);
      v28 = 0;
    }

    v29 = OUTLINED_FUNCTION_9_21(v27, v28);
    OUTLINED_FUNCTION_21_16(v29, v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5C2FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD59308, type metadata accessor for MusicMovie);
  OUTLINED_FUNCTION_23_17(&qword_1EDD59300);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F5C564@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = sub_1D56140F8();
  OUTLINED_FUNCTION_2_15(v16);
  result = type metadata accessor for EditorialCard();
  if (*(v1 + *(result + 28)))
  {
    OUTLINED_FUNCTION_15_2();
    sub_1D4ED06C8(v18, v19);
    sub_1D4ED3750(v15, v13, &qword_1EC7EB5B8, &unk_1D56206A0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
    {
      sub_1D4E7661C(v15, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v21 = sub_1D4E7661C(v13, &qword_1EC7EB5B8, &unk_1D56206A0);
      v22 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v15, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0(v20);
      v21 = (*(v23 + 8))(v13, v20);
      v22 = 0;
    }

    v24 = OUTLINED_FUNCTION_9_21(v21, v22);
    return OUTLINED_FUNCTION_21_16(v24, v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void sub_1D4F5C79C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EDD53FE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57650, type metadata accessor for EditorialItem);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EB3D0);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CA04()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EC498);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CC6C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EC488);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5CED4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EC7EA688, type metadata accessor for TVShow);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EC4A0);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5D13C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&unk_1EDD546A0, type metadata accessor for TVSeason);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EA3C8);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F5D3A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_19(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v13);
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D4E74D94(&qword_1EDD54508, type metadata accessor for TVEpisode);
  OUTLINED_FUNCTION_23_17(&qword_1EC7EC490);
  OUTLINED_FUNCTION_5_18();
  if (v28)
  {
    OUTLINED_FUNCTION_15_20();

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t RadioShow.logoArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_15(v12);
  result = sub_1D5614AE8();
  if (result)
  {
    sub_1D4ED06C8(result, v1);

    v14 = OUTLINED_FUNCTION_15_2();
    sub_1D4ED3750(v14, v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_1_32(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_10_20();
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v24 = OUTLINED_FUNCTION_11_22();
      v25 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_16();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_4_20();
      v21 = *(v20 + 8);
      v22 = OUTLINED_FUNCTION_16_2();
      v24 = v23(v22);
      v25 = 0;
    }

    v26 = OUTLINED_FUNCTION_9_21(v24, v25);
    return OUTLINED_FUNCTION_21_16(v26, v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

uint64_t static PartialMusicProperty<A>.editorialArtwork.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E89E0, &qword_1EC7EC468);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E8CA0, &qword_1EC7EECA8);
}

{
  return sub_1D50355DC(&unk_1EC7E8FE0);
}

{
  return sub_1D50355DC(&qword_1EC7E95A0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96B0, &qword_1EC7F7408);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96E0, &qword_1EC7F7510);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E97E0, &qword_1EC7F8490);
}

uint64_t sub_1D4F5D92C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4A8, &qword_1D5620D40);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4E74D94(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v4 = sub_1D560D138();

  *a3 = v4;
  return result;
}

uint64_t static PartialMusicProperty<A>.logoArtwork.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E89E8, &qword_1EC7EC470);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96B8, &qword_1EC7F7410);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E96E8, &qword_1EC7F7518);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E97E8, &qword_1EC7F8498);
}

uint64_t sub_1D4F5DA4C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

void RadioShow.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v97 = v2;
  v3 = sub_1D560D838();
  v4 = OUTLINED_FUNCTION_4(v3);
  v94 = v5;
  v95 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v93 = v9 - v8;
  v83 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_4(v83);
  v92 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v87 = v15 - v14;
  v88 = sub_1D5611AB8();
  v16 = OUTLINED_FUNCTION_4(v88);
  v84 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v78 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v82 = &v78 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_0();
  v80 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v81 = &v78 - v44;
  v45 = sub_1D5614B68();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v91 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v53 = v52 - v51;
  v54 = *(v48 + 16);
  v54(v52 - v51, v0, v45);
  v55 = sub_1D5614B38();
  v89 = v56;
  v90 = v55;
  v57 = sub_1D5614B58();
  v85 = v58;
  v86 = v57;
  sub_1D5614B48();
  v59 = sub_1D56106B8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v59);
  sub_1D5614B28();
  v60 = v96;
  v61 = v83;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v83);
  v99 = v45;
  v100 = MEMORY[0x1E6977538];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v98);
  v78 = v53;
  v54(boxed_opaque_existential_0, v53, v45);
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v79 = v45;
  sub_1D5612AF8();
  v63 = v87;
  sub_1D5611A98();
  (*(v84 + 8))(v22, v88);
  sub_1D560FDD8();
  (*(v92 + 8))(v63, v61);
  sub_1D4E7661C(v60, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v61);
  v64 = v29;
  sub_1D4ED3A14(v29, v60, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v65 = v93;
  sub_1D560EC98();
  sub_1D4ED3750(v60, v29, &qword_1EC7EA358, &unk_1D561DF50);
  v66 = type metadata accessor for MusicSiriRepresentation();
  v67 = v97;
  v68 = v81;
  sub_1D4ED3750(v81, v97 + v66[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v69 = v80;
  sub_1D4ED3750(v80, v67 + v66[9], &qword_1EC7EC478, &unk_1D56299D0);
  v70 = v82;
  sub_1D4ED3750(v82, v67 + v66[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v98[0]) = 10;
  sub_1D50391CC();
  v72 = v71;
  v74 = v73;
  sub_1D4E7661C(v64, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v94 + 8))(v65, v95);
  sub_1D4E7661C(v96, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v70, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v69, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v68, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v91 + 8))(v78, v79);
  v75 = v97;
  *v97 = v72;
  v75[1] = v74;
  *(v75 + 16) = 10;
  v76 = v89;
  v75[3] = v90;
  v75[4] = v76;
  v77 = v85;
  v75[5] = v86;
  v75[6] = v77;
  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_23_17(unint64_t *a1)
{

  return sub_1D4E74D94(a1, v1);
}

uint64_t sub_1D4F5E0F8()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D4F5E29C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D5615B68();

      v3 = OUTLINED_FUNCTION_98();
      MEMORY[0x1DA6EAC70](v3);
      MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
      v4 = OUTLINED_FUNCTION_98();
      sub_1D4E58768(v4, v5, 1);
      return 0x696669636570732ELL;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_98();
      sub_1D4E58768(v9, v10, 2);
      return 0xD000000000000013;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_98();
    sub_1D4E58768(v7, v8, 0);
    return 0x6576697463612ELL;
  }
}

void sub_1D4F5E39C(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = sub_1D4F5F808(a1);
  v7 = [objc_opt_self() sharedContentTasteController];
  sub_1D52FCF9C([v7 tasteTypeForModelObject_], a3);
}

uint64_t sub_1D4F5E430()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_98();
  sub_1D4F5E47C(v4, v5);
  return v3;
}

void *sub_1D4F5E47C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v211 = v6;
  v212 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v206 = &v191 - v11;
  v12 = *(v6 + 80);
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_2();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v191 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v191 - v25;
  *(v4 + *(v6 + 152)) = 0;
  OUTLINED_FUNCTION_12_24();
  v28 = *(v27 + 176);
  *(v4 + v28) = [objc_opt_self() sharedContentTasteController];
  OUTLINED_FUNCTION_12_24();
  v30 = *(v29 + 184);
  v205 = objc_opt_self();
  *(v4 + v30) = [v205 sharedLibraryTransientStateController];
  OUTLINED_FUNCTION_12_24();
  v32 = *(v31 + 192);
  v33 = sub_1D56129F8();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *(v4 + v32) = sub_1D56129E8();
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v36 + 208)) = 0;
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v37 + 216)) = 0;
  OUTLINED_FUNCTION_12_24();
  v39 = *(v38 + 224);
  v40 = type metadata accessor for MusicTaskCoalescer(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  v44 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  *(v39 + v4) = v43;
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_0_29();
    goto LABEL_15;
  }

  v202 = v22;
  OUTLINED_FUNCTION_12_24();
  v53 = (v14 + 16);
  v52 = *(v14 + 16);
  v44 = v212;
  (v52)(v4 + *(v51 + 136), v212, v12);
  OUTLINED_FUNCTION_12_24();
  v55 = *(v54 + 144);
  (v52)(v4 + v55, v44, v12);
  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v56 + 232)) = a2;
  OUTLINED_FUNCTION_59();
  (v52)(v26, v4 + v55, v12);
  v200 = *(v211 + 88);
  v57 = *(v200 + 8);

  v208 = v57;
  v58 = sub_1D4F5F808(v12);
  v59 = *(v14 + 8);
  v196 = v26;
  v211 = v14 + 8;
  v210 = v59;
  v59(v26, v12);
  [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  OUTLINED_FUNCTION_12_24();
  v61 = *(v60 + 160);
  *(v4 + v61) = v62;
  v63 = objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver);
  v201 = v58;
  [v63 initWithIdentifyingModelObject_];
  OUTLINED_FUNCTION_12_24();
  v65 = *(v64 + 168);
  *(v4 + v65) = v66;
  v197 = [*(v4 + v61) currentStatus];
  [*(v4 + v65) currentStatus];
  v198 = *(&aBlock + 1);
  v67 = aBlock;
  v3 = v217;
  v68 = sub_1D560F0C8();
  v207 = a2;
  v194 = v67;
  if (v68)
  {
    OUTLINED_FUNCTION_18_20();
    LOBYTE(v220[0]) = 71;
    v69 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FC98(v69);
    swift_endAccess();
    OUTLINED_FUNCTION_18_20();
    *&v220[0] = 0;
    BYTE8(v220[0]) = 2;
    v70 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FD68(v70);
    swift_endAccess();
    v71 = v12;
    v26 = v53;
  }

  else
  {
    v72 = OUTLINED_FUNCTION_75_4(&v222);
    v52(v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    v71 = v12;
    v26 = v53;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v73 = v208;
      *(&v217 + 1) = v71;
      v218 = v208;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v52)(boxed_opaque_existential_0, v44, v71);

      sub_1D518AB68(v197, &aBlock, v220);
      OUTLINED_FUNCTION_18_20();
      v75 = OUTLINED_FUNCTION_70_6();
      sub_1D4F5FC98(v75);
      swift_endAccess();
      *(&v217 + 1) = v71;
      v218 = v73;
      v76 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (v52)(v76, v44, v71);

      sub_1D50A911C(v67, v198, &aBlock, v220, v3);
      v77 = *&v220[0];
      v78 = BYTE8(v220[0]);
      OUTLINED_FUNCTION_24_18();
      v213 = v77;
      v214 = v78;
      sub_1D4F5FD68(&v213);
      swift_endAccess();
      v39 = v52;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_18_20();
    LOBYTE(v220[0]) = 68;
    v79 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FC98(v79);
    swift_endAccess();
    OUTLINED_FUNCTION_18_20();
    *&v220[0] = 0;
    BYTE8(v220[0]) = 2;
    v80 = OUTLINED_FUNCTION_70_6();
    sub_1D4F5FD68(v80);
    swift_endAccess();
  }

  v39 = v52;
LABEL_8:
  sub_1D4F5FE54(v71);
  OUTLINED_FUNCTION_24_18();
  sub_1D4F5FFA0();
  swift_endAccess();
  v81 = OUTLINED_FUNCTION_75_4(&v224);
  v39(v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    v82 = *(&v217 + 1);
    v83 = v218;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v217 + 1));
    v84 = *(v83 + 16);
    v85 = v83;
    v44 = v212;
    v84(v220, v82, v85);
    v86 = v220[0];
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v218 = 0;
    aBlock = 0u;
    v217 = 0u;
    sub_1D4E765C8(&aBlock, &qword_1EC7EC510, &unk_1D5621040);
    v86 = 0;
  }

  OUTLINED_FUNCTION_24_18();
  LOBYTE(v220[0]) = v86;
  sub_1D4F60098(v220);
  swift_endAccess();
  v87 = OUTLINED_FUNCTION_75_4(&v223);
  v39(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v220, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v217 + 1));
    sub_1D4F60168();
    v88 = v213;
    OUTLINED_FUNCTION_54_0();
    v215 = v88;
    sub_1D4F601E4(&v215);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    sub_1D4E765C8(v220, &qword_1EC7EC500, &unk_1D5621030);
    OUTLINED_FUNCTION_18_20();
    LOBYTE(v220[0]) = 0;
    v89 = OUTLINED_FUNCTION_70_6();
    sub_1D4F601E4(v89);
    swift_endAccess();
  }

  v22 = v71;
  v90 = *(sub_1D4E5A1CC() + 40);

  OUTLINED_FUNCTION_12_24();
  *(v4 + *(v91 + 200)) = v90;
  v209 = sub_1D4F636B4();
  v12 = v92;
  if (qword_1EDD54488 != -1)
  {
    goto LABEL_33;
  }

LABEL_15:
  v93 = sub_1D560C758();
  v94 = __swift_project_value_buffer(v93, qword_1EDD76AA8);
  v95 = v203;
  v96 = v39;
  (v39)(v203, v44, v22);

  v202 = v94;
  v97 = sub_1D560C738();
  LODWORD(v94) = sub_1D56156E8();

  v193 = v94;
  if (os_log_type_enabled(v97, v94))
  {
    v98 = OUTLINED_FUNCTION_86_4();
    v195 = v26;
    v99 = v98;
    v192 = OUTLINED_FUNCTION_85_3();
    *&v220[0] = v192;
    *v99 = 136446978;
    *(v99 + 4) = OUTLINED_FUNCTION_110_2();
    *(v99 + 12) = 2082;
    v191 = v96;
    v96(v196, v95, v22);
    OUTLINED_FUNCTION_222();
    v100 = v22;
    v101 = sub_1D5614DB8();
    v103 = v102;
    v104 = v95;
    v105 = v210;
    v210(v104, v100);
    v106 = sub_1D4E6835C(v101, v103, v220);

    *(v99 + 14) = v106;
    *(v99 + 22) = 2082;
    v107 = sub_1D4F5E0F8();
    v109 = sub_1D4E6835C(v107, v108, v220);

    *(v99 + 24) = v109;
    *(v99 + 32) = 2082;
    *&aBlock = v194;
    *(&aBlock + 1) = v198;
    *&v217 = v3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v110 = sub_1D5614DB8();
    v112 = sub_1D4E6835C(v110, v111, v220);

    *(v99 + 34) = v112;
    _os_log_impl(&dword_1D4E3F000, v97, v193, "%{public}s ╭ Initializing library item state for item: %{public}s with MPLibraryAddStatusObserver currentStatus:%{public}s and MPLibraryKeepLocalStatusObserver currentStatus: %{public}s.", v99, 0x2Au);
    swift_arrayDestroy();
    v113 = v212;
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    v96 = v191;
  }

  else
  {

    v114 = v95;
    v105 = v210;
    v210(v114, v22);
    v113 = v44;
    v100 = v22;
  }

  v115 = v204;
  v96(v204, v113, v100);
  OUTLINED_FUNCTION_61_14();
  swift_retain_n();

  v116 = v202;
  v117 = sub_1D560C738();
  v118 = sub_1D56156E8();

  v119 = os_log_type_enabled(v117, v118);
  v199 = v12;
  if (v119)
  {
    v203 = v100;
    v120 = OUTLINED_FUNCTION_86_4();
    *&v220[0] = OUTLINED_FUNCTION_85_3();
    *v120 = 136446978;
    *(v120 + 4) = OUTLINED_FUNCTION_110_2();
    *(v120 + 12) = 2082;
    sub_1D4F625B0();
    v121 = v213;
    v122 = v213 >> 6;
    if (v122)
    {
      if (v122 == 1)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        v123 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v123);
        sub_1D502EC78(v121 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v125 = *(&aBlock + 1);
        v124 = aBlock;
      }

      else
      {
        v125 = 0xE600000000000000;
        v124 = 0x64656464612ELL;
      }
    }

    else
    {
      OUTLINED_FUNCTION_105_3();
      if (v121)
      {
        v124 = 0x656C62616464612ELL;
      }

      else
      {
        v124 = 0xD000000000000028;
      }

      if (v121)
      {
        v125 = v127;
      }

      else
      {
        v125 = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v124, v125, v220);
    OUTLINED_FUNCTION_120_2();
    *(v120 + 14) = v121;
    *(v120 + 22) = 2082;
    sub_1D4F62958();

    v128 = MusicLibrary.DownloadStatus.description.getter();

    v129 = OUTLINED_FUNCTION_222();
    sub_1D4E6835C(v129, v130, v131);
    OUTLINED_FUNCTION_0_6();

    *(v120 + 24) = v128;
    *(v120 + 32) = 2082;
    v132 = v203;
    v116 = sub_1D4F602B4(v203, v208);
    v210(v115, v132);
    v133 = OUTLINED_FUNCTION_222();
    sub_1D4E6835C(v133, v134, v135);
    OUTLINED_FUNCTION_0_6();

    *(v120 + 34) = v116;
    v126 = v132;
    _os_log_impl(&dword_1D4E3F000, v117, v118, "%{public}s | Returning initial value from init with add status %{public}s and download status: %{public}s for item: %{public}s.", v120, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();

    v105(v115, v100);
    v126 = v100;
  }

  OUTLINED_FUNCTION_12_24();
  v137 = *(v4 + *(v136 + 160));
  OUTLINED_FUNCTION_40_13();
  swift_allocObject();
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_83_2();
  v138 = swift_allocObject();
  v139 = v200;
  v138[2] = v126;
  v138[3] = v139;
  v140 = v139;
  v138[4] = v116;
  v218 = sub_1D4F689A4;
  v219 = v138;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v217 = sub_1D5570C18;
  *(&v217 + 1) = &block_descriptor_2;
  v141 = _Block_copy(&aBlock);

  v142 = v137;

  v143 = OUTLINED_FUNCTION_81_4();
  [v143 v144];
  _Block_release(v141);

  OUTLINED_FUNCTION_12_24();
  v146 = *(v4 + *(v145 + 168));
  OUTLINED_FUNCTION_40_13();
  swift_allocObject();
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_83_2();
  v147 = swift_allocObject();
  v147[2] = v126;
  v147[3] = v140;
  v147[4] = v141;
  v218 = sub_1D4F689B0;
  v219 = v147;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v217 = sub_1D5571B7C;
  *(&v217 + 1) = &block_descriptor_73;
  v148 = _Block_copy(&aBlock);
  v149 = v146;

  v150 = OUTLINED_FUNCTION_81_4();
  [v150 v151];
  _Block_release(v148);

  sub_1D5611CC8();
  v152 = objc_opt_self();
  v153 = [v152 canShowCloudDownloadButtonsDidChangeNotificationName];
  v154 = [v152 sharedCloudController];
  OUTLINED_FUNCTION_40_13();
  v155 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v156 = swift_allocObject();
  v156[2] = v126;
  v156[3] = v140;
  v157 = v140;
  v156[4] = v155;

  OUTLINED_FUNCTION_61();
  v158 = sub_1D5611CB8();

  OUTLINED_FUNCTION_12_24();
  v160 = *(v159 + 208);
  v161 = *(v4 + v160);
  *(v4 + v160) = v158;

  v162 = [v205 didChangeNotificationName];
  OUTLINED_FUNCTION_12_24();
  v164 = *(v4 + *(v163 + 184));
  OUTLINED_FUNCTION_40_13();
  v165 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v166 = swift_allocObject();
  v166[2] = v126;
  v166[3] = v157;
  v166[4] = v165;
  v167 = v164;

  v168 = sub_1D5611CB8();

  OUTLINED_FUNCTION_12_24();
  v170 = *(v169 + 216);
  v171 = *(v4 + v170);
  *(v4 + v170) = v168;

  OUTLINED_FUNCTION_12_24();
  v173 = *(v172 + 192);
  v174 = *(v4 + v173);
  OUTLINED_FUNCTION_40_13();
  v175 = swift_allocObject();
  swift_weakInit();
  v176 = swift_allocObject();
  v176[2] = v126;
  v176[3] = v157;
  v177 = v157;
  v178 = v209;
  v176[4] = v175;
  v176[5] = v178;
  v179 = v199;
  v176[6] = v199;

  OUTLINED_FUNCTION_97_5();
  sub_1D56129D8();

  OUTLINED_FUNCTION_12_24();
  v181 = *(v4 + *(v180 + 200));
  v182 = *(v4 + v173);

  sub_1D56129B8();

  v183 = v207;
  sub_1D560EFA8();
  sub_1D5615458();
  v184 = v206;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
  OUTLINED_FUNCTION_40_13();
  swift_allocObject();
  OUTLINED_FUNCTION_88_4();

  v189 = swift_allocObject();
  v189[2] = 0;
  v189[3] = 0;
  v189[4] = v126;
  v189[5] = v177;
  v189[6] = v183;
  v189[7] = v178;
  v189[8] = v179;
  sub_1D51EC8B4(0, 0, v184, &unk_1D56210E8, v189);
  OUTLINED_FUNCTION_0_6();

  v210(v212, v126);
  return v4;
}

uint64_t sub_1D4F5F808(uint64_t a1)
{
  v3 = sub_1D56131C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = *(v9 + 16);
  v14(&v20 - v15, v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1D4E765C8(&v24, &qword_1EC7EC520, &unk_1D5621050);
    goto LABEL_6;
  }

  v21 = v3;
  sub_1D4E48324(&v24, &v27);
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1D4E765C8(v22, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    v3 = v21;
LABEL_6:
    v14(v13, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
    if (swift_dynamicCast())
    {
      sub_1D4E765C8(v30, &unk_1EC7ED400, &qword_1D5620CF0);
      sub_1D4E48324(&v24, &v27);
      sub_1D4E48324(&v27, v30);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1D4E765C8(&v24, &unk_1EC7ED400, &qword_1D5620CF0);
    }

    goto LABEL_9;
  }

  sub_1D4E765C8(v30, &unk_1EC7ED400, &qword_1D5620CF0);
  sub_1D4E48324(v22, &v24);
  sub_1D4E48324(&v24, v30);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v3 = v21;
LABEL_9:
  sub_1D4F68934(v30, &v24);
  if (*(&v25 + 1))
  {
    sub_1D4E48324(&v24, &v27);
    v16 = v28;
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, v28);
    (*(v4 + 104))(v8, *MEMORY[0x1E6976988], v3);
    v18 = sub_1D5159364(v8, v16, v17);
    (*(v4 + 8))(v8, v3);
    sub_1D4E765C8(v30, &unk_1EC7ED400, &qword_1D5620CF0);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    return v18;
  }

  else
  {
    sub_1D4E765C8(&v24, &unk_1EC7ED400, &qword_1D5620CF0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F5FCCC(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F5FD68(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  return sub_1D560C8B8();
}

uint64_t sub_1D4F5FDA4(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  OUTLINED_FUNCTION_13_5();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_13_5();
  v8 = *(v7 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F5FE54(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC560, &qword_1D56210A8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = sub_1D5370A10(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D4E765C8(v8, qword_1EC7EC568, &unk_1D56210B0);
    return 0;
  }

  return v6;
}

uint64_t sub_1D4F5FFF0()
{
  OUTLINED_FUNCTION_5_6();
  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v4 = *(v1 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F600CC(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

uint64_t sub_1D4F60168()
{
  sub_1D4E5A1CC();
  sub_1D5329168();

  OUTLINED_FUNCTION_61();
  sub_1D5200C94(v0);
}

uint64_t sub_1D4F60218(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_13_5();
  v7 = *(v6 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_16_19();
  return sub_1D560C908();
}

unint64_t sub_1D4F602B4(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v53 = sub_1D560D838();
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v48 - v17;
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v64 = 0xD000000000000018;
  v65 = 0x80000001D56800B0;
  v51 = *(v19 + 16);
  v51(&v48 - v24, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v57, &v60);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD000000000000015;
    *(&v57 + 1) = 0x80000001D5680110;
    v49 = v23;
    v48 = v9;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    sub_1D560DB28();
    v25 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v25);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD00000000000001CLL;
    *(&v57 + 1) = 0x80000001D5680130;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    sub_1D560DB18();
    v26 = sub_1D56158C8();
    MEMORY[0x1DA6EAC70](v26);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD00000000000001ELL;
    *(&v57 + 1) = 0x80000001D5680150;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    sub_1D560DB38();
    v27 = sub_1D5615898();
    v29 = v28;
    sub_1D4E765C8(v18, &qword_1EC7EC538, &unk_1D5621080);
    MEMORY[0x1DA6EAC70](v27, v29);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD00000000000001ELL;
    *(&v57 + 1) = 0x80000001D5680170;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    sub_1D560DB48();
    v30 = sub_1D56158A8();
    v32 = v31;
    sub_1D4E765C8(v13, &qword_1EC7EC530, &unk_1D5632150);
    MEMORY[0x1DA6EAC70](v30, v32);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));

    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD000000000000025;
    *(&v57 + 1) = 0x80000001D5680190;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    v33 = v48;
    sub_1D560DB58();
    v34 = sub_1D56158B8();
    v36 = v35;
    sub_1D4E765C8(v33, &qword_1EC7EC528, &unk_1D5621070);
    MEMORY[0x1DA6EAC70](v34, v36);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));
    v23 = v49;

    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_1D4E765C8(&v57, &qword_1EC7EC548, &qword_1D5621090);
  }

  v51(v23, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v57, &v60);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1D5615B68();

    *&v57 = 0xD000000000000015;
    *(&v57 + 1) = 0x80000001D56800F0;
    v37 = v62;
    v38 = v63;
    __swift_project_boxed_opaque_existential_1(&v60, v62);
    (*(v38 + 16))(v56, v37, v38);
    v39 = 0xEA00000000006465;
    v40 = 0x7469726F7661662ELL;
    if (LOBYTE(v56[0]) != 1)
    {
      v40 = 0x656B696C7369642ELL;
      v39 = 0xE900000000000064;
    }

    if (LOBYTE(v56[0]))
    {
      v41 = v40;
    }

    else
    {
      v41 = 0x6C61727475656E2ELL;
    }

    if (LOBYTE(v56[0]))
    {
      v42 = v39;
    }

    else
    {
      v42 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v41, v42);

    MEMORY[0x1DA6EAC70](v57, *(&v57 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_1D4E765C8(&v57, &qword_1EC7EC510, &unk_1D5621040);
  }

  MEMORY[0x1DA6EAC70](2099257354, 0xE400000000000000);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1D5615B68();

  v60 = 0xD000000000000013;
  v61 = 0x80000001D56800D0;
  sub_1D560EC98();
  *&v57 = sub_1D5614DD8();
  *(&v57 + 1) = v43;
  v56[0] = 10;
  v56[1] = 0xE100000000000000;
  v54 = 2105354;
  v55 = 0xE300000000000000;
  sub_1D4F53278();
  v44 = sub_1D5615968();
  v46 = v45;

  MEMORY[0x1DA6EAC70](v44, v46);

  MEMORY[0x1DA6EAC70](v60, v61);

  MEMORY[0x1DA6EAC70](32010, 0xE200000000000000);
  return v64;
}

uint64_t sub_1D4F60B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v13 = sub_1D56153B8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v12;
  v14[7] = a1;

  sub_1D51ECB60(0, 0, v10, &unk_1D5621128, v14);
}

uint64_t sub_1D4F60CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1D56153C8();
  v5[8] = sub_1D56153B8();
  v7 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F60D60, v7, v6);
}

uint64_t sub_1D4F60D60()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D4F669F8(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D4F60DF0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v17 = sub_1D56153B8();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v16;
  *(v18 + 56) = a1;
  *(v18 + 64) = a2;
  *(v18 + 72) = a3;

  sub_1D51ECB60(0, 0, v14, &unk_1D5621118, v18);
}

uint64_t sub_1D4F60F84(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a2;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  sub_1D56153C8();
  *(v7 + 80) = sub_1D56153B8();
  v9 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61024, v9, v8);
}

uint64_t sub_1D4F61024()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D4F66DBC(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D4F610B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61150, v4, v3);
}

uint64_t sub_1D4F61150()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D4F678D0();
  }

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F611CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_1D56153C8();
  *(v2 + 48) = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61264, v4, v3);
}

uint64_t sub_1D4F61264()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_9_2();
  if (swift_weakLoadStrong())
  {
    sub_1D4F678D0();
  }

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F612E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = v14;
  v15[7] = a2;
  v15[8] = a3;

  sub_1D51ECB60(0, 0, v12, &unk_1D56210F8, v15);
}

uint64_t sub_1D4F61440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v9 = sub_1D5615458();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61508, 0, 0);
}

uint64_t sub_1D4F61508()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 128);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = *(Strong + *(*Strong + 224));
    *(v0 + 144) = v7;

    v13 = *(v0 + 96);

    sub_1D5615438();
    OUTLINED_FUNCTION_40_13();
    v8 = swift_allocObject();
    *(v0 + 152) = v8;
    OUTLINED_FUNCTION_59();
    swift_weakLoadStrong();
    swift_weakInit();

    v9 = swift_allocObject();
    *(v0 + 160) = v9;
    *(v9 + 16) = v13;
    *(v9 + 32) = v8;
    *(v9 + 40) = v5;
    *(v9 + 48) = v4;

    return MEMORY[0x1EEE6DFA0](sub_1D4F616B0, v7, 0);
  }

  else
  {
    v10 = *(v0 + 128);
    **(v0 + 64) = 1;

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D4F616B0()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = OUTLINED_FUNCTION_93_4();
  sub_1D529A3DC(v7, v8, v9);

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_85_0();
  v12(v11);

  return MEMORY[0x1EEE6DFA0](sub_1D4F61774, 0, 0);
}

uint64_t sub_1D4F61774()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_115_4(*(v0 + 136));
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4F617CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1D56158D8();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61894, 0, 0);
}

uint64_t sub_1D4F61894()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[5];
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  v3 = v0[11];
  if (Strong)
  {
    v4 = v0[8];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_102_3(v9);

    return sub_1D4F64934();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D4F61978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v16 = v15[13];
  v17 = v15[12];
  v18 = v15[11];
  v19 = v15[10];
  v20 = v15[9];
  v21 = *v11;
  OUTLINED_FUNCTION_8();
  *v22 = v21;
  *(v13 + 112) = v10;

  v23 = OUTLINED_FUNCTION_74_6();
  v24(v23);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v29 = *(v13 + 88);

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_1D4F61C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1D56158D8();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F61CF4, 0, 0);
}

uint64_t sub_1D4F61CF4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[5];
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  v3 = v0[11];
  if (Strong)
  {
    v4 = v0[8];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_102_3(v9);

    return sub_1D4F64934();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D4F61DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v16 = v15[13];
  v17 = v15[12];
  v18 = v15[11];
  v19 = v15[10];
  v20 = v15[9];
  v21 = *v11;
  OUTLINED_FUNCTION_8();
  *v22 = v21;
  *(v13 + 112) = v10;

  v23 = OUTLINED_FUNCTION_74_6();
  v24(v23);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v29 = *(v13 + 88);

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t MusicLibrary.ItemState.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_6();
  v3 = v2;
  v5 = *(v4 + 200);
  v6 = *(v0 + v5);
  v7 = *(v4 + 192);
  v8 = *(v1 + v7);

  sub_1D56129C8();

  OUTLINED_FUNCTION_12_24();
  v10 = *(v9 + 232);
  v11 = *(v1 + v10);

  sub_1D560EF98();

  if (qword_1EDD54488 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v12 = sub_1D560C758();
  __swift_project_value_buffer(v12, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();

  v13 = sub_1D560C738();
  v14 = sub_1D56156E8();

  if (os_log_type_enabled(v13, v14))
  {
    v55 = v3;
    v15 = OUTLINED_FUNCTION_142();
    v16 = swift_slowAlloc();
    v56 = v16;
    *v15 = 136446210;
    v17 = sub_1D4F636B4();
    v19 = v5;
    v20 = sub_1D4E6835C(v17, v18, &v56);

    *(v15 + 4) = v20;
    v5 = v19;
    _os_log_impl(&dword_1D4E3F000, v13, v14, "%{public}s ╰ De-initializing library item state.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_41_1();
    v3 = v55;
    OUTLINED_FUNCTION_122();
  }

  v21 = qword_1EDD53520;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B0, &qword_1D5620EA8);
  OUTLINED_FUNCTION_4_0(v22);
  (*(v23 + 8))(v1 + v21);
  v24 = qword_1EDD53510;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B8, &qword_1D5620EB0);
  OUTLINED_FUNCTION_4_0(v25);
  (*(v26 + 8))(v1 + v24);
  v27 = qword_1EDD53500;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C0, &qword_1D5620EB8);
  OUTLINED_FUNCTION_4_0(v28);
  (*(v29 + 8))(v1 + v27);
  v30 = qword_1EDD53508;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C8, &qword_1D5620EC0);
  OUTLINED_FUNCTION_4_0(v31);
  (*(v32 + 8))(v1 + v30);
  v33 = qword_1EDD53518;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D0, &qword_1D5620EC8);
  OUTLINED_FUNCTION_4_0(v34);
  (*(v35 + 8))(v1 + v33);
  OUTLINED_FUNCTION_12_24();
  v37 = *(v3 + 80);
  v38 = *(*(v37 - 8) + 8);
  v38(v1 + *(v36 + 136), v37);
  OUTLINED_FUNCTION_12_24();
  v38(v1 + *(v39 + 144), v37);
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_12_24();

  v45 = *(v1 + v7);

  v46 = *(v1 + v5);

  OUTLINED_FUNCTION_12_24();
  v48 = *(v1 + *(v47 + 208));

  OUTLINED_FUNCTION_12_24();
  v50 = *(v1 + *(v49 + 216));

  OUTLINED_FUNCTION_12_24();
  v52 = *(v1 + *(v51 + 224));

  v53 = *(v1 + v10);

  return v1;
}

uint64_t MusicLibrary.ItemState.__deallocating_deinit()
{
  MusicLibrary.ItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D4F6254C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D4F625B0();
  *v1 = v2;
}

void sub_1D4F625B0()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F62640()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F6270C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D8, &qword_1D5620ED0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B0, &qword_1D5620EA8);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D4F627F4()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D8, &qword_1D5620ED0);
  v1[1] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D4F626F0();
  return OUTLINED_FUNCTION_97_5();
}

void sub_1D4F628D8(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D4F62958();
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t sub_1D4F62918(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return sub_1D4F5FDA4(&v5);
}

void sub_1D4F62958()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F629E8()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F62A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_61();
  v18(v17);
  v19 = *a2;
  return a7(v14);
}

uint64_t sub_1D4F62B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E0, &qword_1D5620ED8);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4B8, &qword_1D5620EB0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D4F62C60()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E0, &qword_1D5620ED8);
  v1[1] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D4F62B5C();
  return OUTLINED_FUNCTION_97_5();
}

void sub_1D4F62D44(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = *v4;
    a3((*a1)[4]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D4F62E0C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D4F62E60();
  *v1 = result;
  return result;
}

uint64_t sub_1D4F62E34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D4F5FFF0();
}

uint64_t sub_1D4F62E60()
{
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v5;
}

void sub_1D4F62F08()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F62FB8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D4F6303C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E8, &qword_1D5620EE0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C0, &qword_1D5620EB8);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

uint64_t sub_1D4F63124()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4E8, &qword_1D5620EE0);
  v1[1] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D4F63020();
  return OUTLINED_FUNCTION_97_5();
}

void sub_1D4F63208(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D4F6326C();
  *v1 = v2;
}

void sub_1D4F6326C()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F63318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC558, &qword_1D56210A0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4C8, &qword_1D5620EC0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

void sub_1D4F63400(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D4F63464();
  *v1 = v2;
}

void sub_1D4F63464()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_82_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_2();

  OUTLINED_FUNCTION_107_1();
}

void sub_1D4F63510()
{
  OUTLINED_FUNCTION_108_1();
  v1 = *v0;
  OUTLINED_FUNCTION_54_0();
  v2 = OUTLINED_FUNCTION_98();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D4F63574()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC550, &qword_1D5621098);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4D0, &qword_1D5620EC8);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

void sub_1D4F63704(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - v6);
  v8 = *a2;
  sub_1D4F64670();
}

uint64_t sub_1D4F637C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v49 - v6;
  v7 = *(v2 + 80);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - v13;
  v54 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v49 - v16;
  v18 = *(v2 + 136);
  swift_beginAccess();
  v19 = v8[2];
  v19(v17, &v1[v18], v7);
  if (qword_1EDD54488 != -1)
  {
    swift_once();
  }

  v20 = sub_1D560C758();
  __swift_project_value_buffer(v20, qword_1EDD76AA8);
  v56 = v17;
  v19(v14, v17, v7);

  v21 = sub_1D560C738();
  v22 = sub_1D56156E8();

  v23 = os_log_type_enabled(v21, v22);
  v58 = v2;
  if (v23)
  {
    v24 = v8;
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = v50;
    *v25 = 136446466;
    v26 = sub_1D4F636B4();
    v28 = sub_1D4E6835C(v26, v27, &v59);
    v51 = v19;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = sub_1D4F602B4(v7, *(*(v58 + 88) + 8));
    v32 = v31;
    v33 = v24[1];
    v52 = (v24 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v33;
    v33(v14, v7);
    v34 = sub_1D4E6835C(v30, v32, &v59);
    v19 = v51;

    *(v25 + 14) = v34;
    _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Client manually updated item to %{public}s in the item state.", v25, 0x16u);
    v35 = v50;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v35, -1, -1);
    MEMORY[0x1DA6ED200](v25, -1, -1);
  }

  else
  {

    v36 = v8[1];
    v52 = (v8 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v36;
    v36(v14, v7);
    v24 = v8;
  }

  v51 = sub_1D4F636B4();
  v38 = v37;
  v39 = sub_1D5615458();
  v40 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v39);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v55;
  v43 = v56;
  v19(v55, v56, v7);
  v44 = (*(v24 + 80) + 56) & ~*(v24 + 80);
  v45 = (v54 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v7;
  *(v46 + 5) = *(v58 + 88);
  *(v46 + 6) = v41;
  (v24[4])(&v46[v44], v42, v7);
  v47 = &v46[v45];
  *v47 = v51;
  v47[1] = v38;
  sub_1D51ECB60(0, 0, v40, &unk_1D5621138, v46);

  return v53(v43, v7);
}

uint64_t sub_1D4F63CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v15;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[8] = a1;
  v9 = *(a8 - 8);
  v8[15] = v9;
  v8[16] = *(v9 + 64);
  v8[17] = swift_task_alloc();
  v10 = sub_1D5615458();
  v8[18] = v10;
  v11 = *(v10 - 8);
  v8[19] = v11;
  v12 = *(v11 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F63DDC, 0, 0);
}

uint64_t sub_1D4F63DDC()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 160);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    v23 = *(v0 + 88);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    *(v0 + 176) = *(Strong + *(*Strong + 224));

    v24 = *(v0 + 104);

    sub_1D56153D8();
    OUTLINED_FUNCTION_40_13();
    v10 = swift_allocObject();
    *(v0 + 184) = v10;
    OUTLINED_FUNCTION_59();
    swift_weakLoadStrong();
    swift_weakInit();

    v11 = *(v6 + 16);
    v12 = OUTLINED_FUNCTION_112();
    v13(v12);
    v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v0 + 192) = v15;
    *(v15 + 16) = v24;
    *(v15 + 32) = v10;
    (*(v6 + 32))(v15 + v14, v4, v24);
    v16 = (v15 + ((v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v23;
    v16[1] = v7;

    v17 = OUTLINED_FUNCTION_98();

    return MEMORY[0x1EEE6DFA0](v17, v18, 0);
  }

  else
  {
    v19 = *(v0 + 160);
    v20 = *(v0 + 136);
    **(v0 + 64) = 1;

    OUTLINED_FUNCTION_55();

    return v21();
  }
}

uint64_t sub_1D4F64008()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = OUTLINED_FUNCTION_93_4();
  sub_1D529A3DC(v7, v8, v9);

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_85_0();
  v12(v11);

  return MEMORY[0x1EEE6DFA0](sub_1D4F640CC, 0, 0);
}

uint64_t sub_1D4F640CC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[20];
  v2 = v0[17];
  OUTLINED_FUNCTION_115_4(v0[21]);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F64130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_1D56158D8();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F641FC, 0, 0);
}

uint64_t sub_1D4F641FC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v3 = v0[12];
  if (Strong)
  {
    v4 = v0[9];
    v5 = v0[6];
    OUTLINED_FUNCTION_24_0(v4);
    (*(v6 + 16))(v3);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1D4F64338;
    v8 = v0[12];

    return sub_1D4F64934();
  }

  else
  {
    v10 = v0[12];

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D4F64338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  *v14 = v13;
  v16 = v15[14];
  v17 = v15[13];
  v18 = v15[12];
  v19 = v15[11];
  v20 = v15[10];
  v21 = *v11;
  OUTLINED_FUNCTION_8();
  *v22 = v21;
  *(v13 + 120) = v10;

  v23 = OUTLINED_FUNCTION_74_6();
  v24(v23);

  if (v10)
  {
    OUTLINED_FUNCTION_73_1();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v29 = *(v13 + 96);

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_25_3();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_1D4F645EC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0(*(v5 + 80));
  return (*(v6 + 16))(a1, v1 + v4);
}

void sub_1D4F64670()
{
  OUTLINED_FUNCTION_108_1();
  v2 = v1;
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_46_3();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_24_0(v6);
  (*(v7 + 24))(v0 + v4, v2, v6);
  swift_endAccess();
  sub_1D4F637C4();
  v8 = OUTLINED_FUNCTION_15_8();
  v9(v8);
  OUTLINED_FUNCTION_107_1();
}

uint64_t (*sub_1D4F6472C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 136);
  OUTLINED_FUNCTION_54_0();
  return sub_1D4F64794;
}

uint64_t sub_1D4F64794(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1D4F637C4();
  }

  return result;
}

uint64_t sub_1D4F647C8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0(*(v5 + 80));
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_1D4F6484C(uint64_t a1)
{
  OUTLINED_FUNCTION_38_14();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_99_2();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0(*(v5 + 80));
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void *sub_1D4F648D8()
{
  v1 = *(v0 + *(*v0 + 152));
  v2 = v1;
  return v1;
}

uint64_t sub_1D4F64914(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D4F64934()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 464) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  v4 = *v0;
  *(v1 + 72) = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  *(v1 + 88) = v8;
  OUTLINED_FUNCTION_69(v8);
  *(v1 + 96) = v9;
  v11 = *(v10 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_127();
  v15 = sub_1D5614898();
  *(v1 + 120) = v15;
  OUTLINED_FUNCTION_69(v15);
  *(v1 + 128) = v16;
  v18 = *(v17 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_127();
  v19 = sub_1D560C998();
  *(v1 + 144) = v19;
  OUTLINED_FUNCTION_69(v19);
  *(v1 + 152) = v20;
  v22 = *(v21 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_127();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_127();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  *(v1 + 176) = v26;
  OUTLINED_FUNCTION_69(v26);
  *(v1 + 184) = v27;
  v29 = *(v28 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_127();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_127();
  v33 = sub_1D5613AF8();
  *(v1 + 208) = v33;
  OUTLINED_FUNCTION_69(v33);
  *(v1 + 216) = v34;
  v36 = *(v35 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_127();
  v37 = sub_1D560DF28();
  *(v1 + 232) = v37;
  OUTLINED_FUNCTION_69(v37);
  *(v1 + 240) = v38;
  v40 = *(v39 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_127();
  v41 = sub_1D560DF38();
  *(v1 + 256) = v41;
  OUTLINED_FUNCTION_69(v41);
  *(v1 + 264) = v42;
  v44 = *(v43 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_127();
  v45 = *(v4 + 80);
  *(v1 + 280) = v45;
  v46 = sub_1D56158D8();
  *(v1 + 288) = v46;
  OUTLINED_FUNCTION_69(v46);
  *(v1 + 296) = v47;
  v49 = *(v48 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_127();
  v50 = *(v45 - 8);
  OUTLINED_FUNCTION_13_5();
  *(v1 + 312) = v51;
  v53 = *(v52 + 64) + 15;
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  sub_1D56153C8();
  *(v1 + 368) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v55 = sub_1D5615338();
  *(v1 + 376) = v55;
  *(v1 + 384) = v54;

  return MEMORY[0x1EEE6DFA0](sub_1D4F64DC0, v55, v54);
}

uint64_t sub_1D4F64DC0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[38];
  v2 = v0[35];
  (*(v0[37] + 16))(v1, v0[7], v0[36]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[38];
    v4 = v0[35];
    v5 = v0[8];
    sub_1D4F647C8(v0[45]);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      (*(v0[37] + 8))(v0[38], v0[36]);
    }
  }

  else
  {
    (*(v0[39] + 32))(v0[45], v0[38], v0[35]);
  }

  v6 = v0[31];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[9];
  (*(v0[33] + 104))(v0[34], *MEMORY[0x1E6975100], v0[32]);
  v10 = *MEMORY[0x1E6975118];
  v11 = *(v8 + 104);
  v12 = OUTLINED_FUNCTION_96_2();
  v13(v12);
  v14 = *(MEMORY[0x1E6975448] + 4);
  v15 = swift_task_alloc();
  v0[49] = v15;
  v16 = *(*(v9 + 88) + 8);
  v0[50] = v16;
  *v15 = v0;
  v15[1] = sub_1D4F64F5C;
  v17 = v0[44];
  v18 = v0[45];
  v19 = v0[34];
  v20 = v0[35];
  v21 = v0[31];

  return MEMORY[0x1EEDCF270](v17, v19, v21, v20, v16);
}

uint64_t sub_1D4F64F5C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v2[49];
  v6 = v2[34];
  v7 = v2[33];
  v8 = v2[32];
  v9 = v2[31];
  v10 = v2[30];
  v11 = v2[29];
  *v4 = *v1;
  *(v3 + 408) = v0;

  (*(v10 + 8))(v9, v11);
  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_85_0();
  v14(v13);
  v15 = v2[48];
  v16 = v2[47];
  if (v0)
  {
    v17 = sub_1D4F664EC;
  }

  else
  {
    v17 = sub_1D4F6514C;
  }

  return MEMORY[0x1EEE6DFA0](v17, v16, v15);
}

uint64_t sub_1D4F6514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_95_2();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v40 = *(v36 + 344);
  v39 = *(v36 + 352);
  v41 = *(v36 + 312);
  v42 = *(v36 + 280);
  v44 = *(v36 + 200);
  v43 = *(v36 + 208);
  v45 = *(v41 + 16);
  *(v36 + 416) = v45;
  *(v36 + 424) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46 = OUTLINED_FUNCTION_96_2();
  v45(v46);
  OUTLINED_FUNCTION_16_19();
  if (swift_dynamicCast())
  {
    v48 = *(v36 + 216);
    v47 = *(v36 + 224);
    v50 = *(v36 + 200);
    v49 = *(v36 + 208);
    v52 = *(v36 + 168);
    v51 = *(v36 + 176);
    OUTLINED_FUNCTION_113_3();
    v53 = *(v48 + 32);
    v54 = OUTLINED_FUNCTION_222();
    v55(v54);
    sub_1D5613AC8();
    if (__swift_getEnumTagSinglePayload(v52, 1, v51) != 1)
    {
      v98 = *(v36 + 152);
      v97 = *(v36 + 160);
      v99 = *(v36 + 144);
      (*(*(v36 + 184) + 32))(*(v36 + 192), *(v36 + 168), *(v36 + 176));
      v100 = *MEMORY[0x1E69E7F88];
      v101 = *(v98 + 104);
      v102 = OUTLINED_FUNCTION_96_2();
      v103(v102);
      v104 = *(MEMORY[0x1E6977588] + 4);
      v105 = swift_task_alloc();
      *(v36 + 432) = v105;
      sub_1D4F688F0();
      OUTLINED_FUNCTION_42_12(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470);
      *v105 = v36;
      v105[1] = sub_1D4F65A9C;
      v106 = *(v36 + 192);
      v107 = *(v36 + 176);
      v108 = *(v36 + 160);
      goto LABEL_31;
    }

    v56 = *(v36 + 168);
    (*(*(v36 + 216) + 8))(*(v36 + 224), *(v36 + 208));
    v57 = &unk_1EC7EC458;
    v58 = &unk_1D5620CD0;
  }

  else
  {
    v56 = *(v36 + 200);
    v59 = *(v36 + 208);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v57 = &unk_1EC7EEC30;
    v58 = &unk_1D5620CE0;
  }

  sub_1D4E765C8(v56, v57, v58);
  v64 = *(v36 + 352);
  v65 = *(v36 + 336);
  v66 = *(v36 + 280);
  v68 = *(v36 + 112);
  v67 = *(v36 + 120);
  v69 = OUTLINED_FUNCTION_96_2();
  v45(v69);
  OUTLINED_FUNCTION_16_19();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v84 = *(v36 + 368);
    v85 = *(v36 + 112);
    v86 = *(v36 + 120);

    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
    v81 = &unk_1EC7F1990;
    v82 = &unk_1D561CEF0;
    v83 = v85;
    goto LABEL_9;
  }

  v71 = *(v36 + 128);
  v70 = *(v36 + 136);
  v73 = *(v36 + 112);
  v72 = *(v36 + 120);
  v75 = *(v36 + 80);
  v74 = *(v36 + 88);
  OUTLINED_FUNCTION_113_3();
  v76 = *(v71 + 32);
  v77 = OUTLINED_FUNCTION_222();
  v78(v77);
  sub_1D5614858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v74);
  v67 = *(v36 + 80);
  if (EnumTagSinglePayload == 1)
  {
    v80 = *(v36 + 368);
    (*(*(v36 + 128) + 8))(*(v36 + 136), *(v36 + 120));

    v81 = &unk_1EC7EC450;
    v82 = &unk_1D5621060;
    v83 = v67;
LABEL_9:
    sub_1D4E765C8(v83, v81, v82);
    if (*(v36 + 464) == 1)
    {
      v90 = 0x80000001D5680090;
      v194 = 0xD000000000000013;
    }

    else
    {
      OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_11_23();
      if (!v91)
      {
        v94 = 0xD000000000000016;
      }

      v194 = v94;
      if (v91)
      {
        v90 = v92;
      }

      else
      {
        v90 = v93;
      }
    }

    sub_1D4E62628(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_120_2();
    v95 = 0xE000000000000000;
    if (v67)
    {
      a24 = 0;
      a25 = 0xE000000000000000;
      sub_1D5615B68();

      a24 = 0xD000000000000016;
      a25 = 0x80000001D5680050;
      *(v36 + 16) = sub_1D4F0B2D8(MEMORY[0x1E69E7CC0]);
      v96 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v96);

      v95 = a25;
      v192 = a24;
    }

    else
    {
      v192 = 0;
    }

    if (qword_1EDD54488 != -1)
    {
      OUTLINED_FUNCTION_0_29();
    }

    v110 = *(v36 + 416);
    v109 = *(v36 + 424);
    v111 = *(v36 + 352);
    v112 = *(v36 + 328);
    v113 = *(v36 + 280);
    v114 = *(v36 + 64);
    v115 = sub_1D560C758();
    __swift_project_value_buffer(v115, qword_1EDD76AA8);
    v110(v112, v111, v113);

    v116 = sub_1D560C738();
    v117 = sub_1D56156E8();

    if (os_log_type_enabled(v116, v117))
    {
      v187 = *(v36 + 400);
      v118 = *(v36 + 328);
      v119 = *(v36 + 312);
      v120 = *(v36 + 280);
      v189 = v117;
      v121 = *(v36 + 64);
      v122 = OUTLINED_FUNCTION_86_4();
      a24 = OUTLINED_FUNCTION_85_3();
      *v122 = 136446978;
      v123 = sub_1D4F636B4();
      v125 = v124;
      v126 = sub_1D4E6835C(v123, v124, &a24);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2082;
      sub_1D4E6835C(v194, v90, &a24);
      OUTLINED_FUNCTION_82();

      *(v122 + 14) = v125;
      *(v122 + 22) = 2082;
      v127 = sub_1D4F602B4(v120, v187);
      v129 = v128;
      v130 = *(v119 + 8);
      v131 = OUTLINED_FUNCTION_222();
      v195 = v132;
      (v132)(v131);
      sub_1D4E6835C(v127, v129, &a24);
      OUTLINED_FUNCTION_82();

      *(v122 + 24) = v118;
      *(v122 + 32) = 2082;
      v133 = sub_1D4E6835C(v192, v95, &a24);

      *(v122 + 34) = v133;
      _os_log_impl(&dword_1D4E3F000, v116, v189, "%{public}s | ↳ %{public}s to: %{public}s%{public}s.", v122, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
      v134 = *(v36 + 328);
      v135 = *(v36 + 312);
      v136 = *(v36 + 280);

      v137 = *(v135 + 8);
      v138 = OUTLINED_FUNCTION_222();
      v195 = v139;
      (v139)(v138);
    }

    v140 = *(v36 + 424);
    v142 = *(v36 + 352);
    v141 = *(v36 + 360);
    v143 = *(v36 + 336);
    v144 = *(v36 + 344);
    v145 = *(v36 + 320);
    v178 = *(v36 + 328);
    v179 = *(v36 + 304);
    v146 = *(v36 + 280);
    v180 = *(v36 + 272);
    v181 = *(v36 + 248);
    v182 = *(v36 + 224);
    v183 = *(v36 + 200);
    v184 = *(v36 + 192);
    v185 = *(v36 + 168);
    v186 = *(v36 + 160);
    v188 = *(v36 + 136);
    v190 = *(v36 + 112);
    v191 = *(v36 + 104);
    v193 = *(v36 + 80);
    v147 = *(v36 + 64);
    (*(v36 + 416))(v145, v142, v146);
    sub_1D4F6484C(v145);
    OUTLINED_FUNCTION_112();
    sub_1D4F66890();

    v195(v142, v146);
    v195(v141, v146);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_71_2();

    return v149(v148, v149, v150, v151, v152, v153, v154, v155, a9, v178, v179, v180, v181, v182, v183, v184, v185, v186, v188, v190, v191, v193, v195, a24, a25, a26, a27, a28);
  }

  v157 = *(v36 + 104);
  v158 = *(v36 + 88);
  v159 = *(*(v36 + 96) + 32);
  v160 = OUTLINED_FUNCTION_222();
  v161(v160);
  sub_1D4E62A60(&unk_1EDD53B80, &unk_1EC7F6A30, &qword_1D561C4C0);
  sub_1D5615608();
  sub_1D5615648();
  if (sub_1D5615638() >= 301)
  {
    v162 = *(v36 + 104);
    v163 = *(v36 + 88);
    OUTLINED_FUNCTION_98();
    sub_1D5615608();
    OUTLINED_FUNCTION_98();
    sub_1D5615648();
    sub_1D5615638();
  }

  (*(*(v36 + 152) + 104))(*(v36 + 160), *MEMORY[0x1E69E7F88], *(v36 + 144));
  v164 = *(MEMORY[0x1E6977588] + 4);
  v165 = swift_task_alloc();
  *(v36 + 448) = v165;
  sub_1D4F688F0();
  OUTLINED_FUNCTION_42_12(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
  *v165 = v36;
  v165[1] = sub_1D4F65FC4;
  v166 = *(v36 + 160);
  v167 = *(v36 + 104);
  v168 = *(v36 + 88);
LABEL_31:
  OUTLINED_FUNCTION_71_2();

  return MEMORY[0x1EEDD2260](v169, v170, v171, v172, v173, v174, v175, v176, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D4F65A9C()
{
  OUTLINED_FUNCTION_91();
  v1 = *v0;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = v1[54];
  v5 = v1[20];
  v6 = v1[19];
  v7 = v1[18];
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v11 + 440) = v10;

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_128();
  v14(v13);
  v15 = v1[48];
  v16 = v1[47];

  return MEMORY[0x1EEE6DFA0](sub_1D4F65C14, v16, v15);
}

uint64_t sub_1D4F65FC4()
{
  OUTLINED_FUNCTION_91();
  v1 = *v0;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = v1[56];
  v5 = v1[20];
  v6 = v1[19];
  v7 = v1[18];
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v11 + 456) = v10;

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_128();
  v14(v13);
  v15 = v1[48];
  v16 = v1[47];

  return MEMORY[0x1EEE6DFA0](sub_1D4F6613C, v16, v15);
}

uint64_t sub_1D4F664EC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[35];
  v14 = v0[34];
  v15 = v0[31];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[10];

  (*(v8 + 8))(v2, v10);

  OUTLINED_FUNCTION_55();
  v12 = v0[51];

  return v11();
}

void sub_1D4F666B4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v29 = v4;
  v6 = v5(0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = sub_1D56131C8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v28 - v24;
  v26 = MEMORY[0x1DA6EC3C0](v23);
  (*(v17 + 104))(v25, *MEMORY[0x1E6976988], v14);
  (*(v17 + 16))(v22, v25, v14);
  (*(v8 + 16))(v13, v3, v6);
  v27 = v1(v13, v22);
  (*(v17 + 8))(v25, v14);
  objc_autoreleasePoolPop(v26);
  *v29 = v27;
  OUTLINED_FUNCTION_46();
}

void sub_1D4F66890()
{
  OUTLINED_FUNCTION_94_3();
  v2 = *(*(*v0 + 88) + 8);
  v3 = sub_1D4F5F808(*(*v0 + 80));
  OUTLINED_FUNCTION_12_24();
  v5 = *(v0 + *(v4 + 168));
  v6 = OUTLINED_FUNCTION_81_4();
  [v6 v7];
  if (sub_1D4E62628(v1))
  {
    sub_1D4F688F0();
    v8 = sub_1D5615158();
    v9 = OUTLINED_FUNCTION_81_4();
    [v9 v10];

    OUTLINED_FUNCTION_12_24();
    v12 = *(v0 + *(v11 + 160));
    v13 = sub_1D5615158();
    v14 = OUTLINED_FUNCTION_81_4();
    [v14 v15];
  }

  else
  {
    OUTLINED_FUNCTION_12_24();
    [*(v0 + *(v16 + 160)) setIdentifyingModelObject_];
  }

  v17 = v3;
  sub_1D4F64914(v3);
  sub_1D4F678D0();
}

uint64_t sub_1D4F669F8(uint64_t a1)
{
  v5 = *v1;
  v6 = [objc_opt_self() isMainThread];
  if (v6)
  {
    v14 = OUTLINED_FUNCTION_90_4(v6, v7, v8, v9, v10, v11, v12, v13, v35, v36, v37, v38, v39, v40, v41, v42);
    sub_1D4F645EC(v14);
    OUTLINED_FUNCTION_12_24();
    v16 = *(v1 + *(v15 + 232));

    sub_1D518AB68(a1, &v38, &v37);
    v3 = v37;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29();
LABEL_3:
  v17 = sub_1D560C758();
  __swift_project_value_buffer(v17, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();
  swift_retain_n();
  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = 0x64656464612ELL;
    v21 = OUTLINED_FUNCTION_86_4();
    v37 = OUTLINED_FUNCTION_85_3();
    *v21 = 136446978;
    v22 = sub_1D4F636B4();
    sub_1D4E6835C(v22, v23, &v37);
    OUTLINED_FUNCTION_118_3();
    *(v21 + 4) = v2;
    *(v21 + 12) = 2082;
    if (v3 >> 6)
    {
      if (v3 >> 6 == 1)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        v24 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v24);
        sub_1D502EC78(v3 & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
        v25 = v38;
        v26 = v39;
      }

      else
      {
        v26 = 0xE600000000000000;
        v25 = 0x64656464612ELL;
      }
    }

    else
    {
      if (v3)
      {
        v25 = 0x656C62616464612ELL;
      }

      else
      {
        v25 = 0xD000000000000028;
      }

      if (v3)
      {
        v26 = 0xED0000296C696E28;
      }

      else
      {
        v26 = 0x80000001D567FDB0;
      }
    }

    sub_1D4E6835C(v25, v26, &v37);
    OUTLINED_FUNCTION_118_3();
    *(v21 + 14) = v2;
    *(v21 + 22) = 2082;
    sub_1D4F625B0();

    v27 = HIBYTE(v36) >> 6;
    if (v27)
    {
      if (v27 == 1)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
        v28 = OUTLINED_FUNCTION_10_21();
        MEMORY[0x1DA6EAC70](v28);
        sub_1D502EC78(HIBYTE(v36) & 0x3F);
        MEMORY[0x1DA6EAC70](41, 0xE100000000000000);

        v20 = v38;
        v29 = v39;
      }

      else
      {

        v29 = 0xE600000000000000;
      }
    }

    else
    {

      OUTLINED_FUNCTION_105_3();
      if ((v36 & 0x100000000000000) != 0)
      {
        v20 = 0x656C62616464612ELL;
      }

      else
      {
        v20 = 0xD000000000000028;
      }

      if ((v36 & 0x100000000000000) != 0)
      {
        v29 = v30;
      }

      else
      {
        v29 = 0x80000001D567FDB0;
      }
    }

    v31 = sub_1D4E6835C(v20, v29, &v37);

    *(v21 + 24) = v31;
    *(v21 + 32) = 2082;
    v32 = sub_1D4F5E0F8();
    sub_1D4E6835C(v32, v33, &v37);
    OUTLINED_FUNCTION_120_2();
    *(v21 + 34) = a1;
    _os_log_impl(&dword_1D4E3F000, v18, v19, "%{public}s | Updated:\n  • Add status: %{public}s with previous status %{public}s\n  Change source: MPLibraryAddStatusObserver.statusBlock(%{public}s)", v21, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();
  }

  sub_1D4F625B0();
  LOBYTE(v37) = v3;
  result = static MusicLibrary.AddStatus.== infix(_:_:)(&v38, &v37);
  if ((result & 1) == 0)
  {
    LOBYTE(v38) = v3;
    return sub_1D4F5FCCC(&v38);
  }

  return result;
}

void sub_1D4F66DBC(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v3;
  v9 = [objc_opt_self() isMainThread];
  if (v9)
  {
    v17 = OUTLINED_FUNCTION_90_4(v9, v10, v11, v12, v13, v14, v15, v16, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_1D4F645EC(v17);
    OUTLINED_FUNCTION_12_24();
    v19 = *(v3 + *(v18 + 232));

    v20 = OUTLINED_FUNCTION_61();
    sub_1D50A911C(v20, v21, v22, v23, *&a3);
    v47 = v53;
    HIDWORD(v46) = v54;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_29();
LABEL_3:
  v24 = sub_1D560C758();
  __swift_project_value_buffer(v24, qword_1EDD76AA8);
  OUTLINED_FUNCTION_82();
  swift_retain_n();
  v25 = sub_1D560C738();
  v26 = sub_1D56156E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_86_4();
    v53 = OUTLINED_FUNCTION_85_3();
    *v27 = 136446978;
    v28 = sub_1D4F636B4();
    sub_1D4E6835C(v28, v29, &v53);
    OUTLINED_FUNCTION_118_3();
    *(v27 + 4) = v4;
    *(v27 + 12) = 2082;
    v30 = MusicLibrary.DownloadStatus.description.getter();
    sub_1D4E6835C(v30, v31, &v53);
    OUTLINED_FUNCTION_118_3();
    *(v27 + 14) = v4;
    *(v27 + 22) = 2082;
    sub_1D4F62958();

    v32 = MusicLibrary.DownloadStatus.description.getter();
    v34 = v33;

    v35 = sub_1D4E6835C(v32, v34, &v53);

    *(v27 + 24) = v35;
    *(v27 + 32) = 2082;
    v48 = a1;
    v49 = a2;
    v50 = *&a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v36 = sub_1D5614DB8();
    sub_1D4E6835C(v36, v37, &v53);
    OUTLINED_FUNCTION_120_2();
    *(v27 + 34) = a2;
    _os_log_impl(&dword_1D4E3F000, v25, v26, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v27, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_61_14();
  }

  sub_1D4F62958();
  if (v49)
  {
    v38 = BYTE4(v46);
    if (v49 == 1)
    {
      v39 = v47;
      if (HIDWORD(v46) != 1 || v48 != v47)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v39 = v47;
      switch(v48)
      {
        case 1:
          if (HIDWORD(v46) != 2 || v47 != 1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (HIDWORD(v46) != 2 || v47 != 2)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (HIDWORD(v46) != 2 || v47 != 3)
          {
            goto LABEL_25;
          }

          break;
        case 4:
          if (HIDWORD(v46) != 2 || v47 != 4)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (HIDWORD(v46) != 2 || *&v47 != 0.0)
          {
            goto LABEL_25;
          }

          break;
      }
    }
  }

  else
  {
    v39 = v47;
    v38 = BYTE4(v46);
    if (HIDWORD(v46) || *&v48 != *&v47)
    {
LABEL_25:
      v48 = v39;
      LOBYTE(v49) = v38;
      sub_1D4F5FDA4(&v48);
    }
  }
}

id sub_1D4F67140()
{
  OUTLINED_FUNCTION_94_3();
  v1 = v0;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    v4 = sub_1D4F62E60();
    v5 = sub_1D4F0B2E4(v3, v4);

    if (v5)
    {
    }

    else
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x100000000000001ALL, 0x80000001D567FD70);
      v6 = MEMORY[0x1DA6EAF70](v3, &type metadata for MusicLibrary.DownloadWarning);
      MEMORY[0x1DA6EAC70](v6);

      MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D567FD90);
      sub_1D4F62E60();
      MEMORY[0x1DA6EAF70]();

      v7 = OUTLINED_FUNCTION_85_0();
      MEMORY[0x1DA6EAC70](v7);

      MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

      return sub_1D4F5FFF0();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D4F672F0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94_3();
  v3 = v2;
  OUTLINED_FUNCTION_5_6();
  v5 = v4;
  OUTLINED_FUNCTION_24_0(*(v6 + 80));
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  if ([objc_opt_self() isMainThread])
  {
    if (v3)
    {
      if (v3 <= 3)
      {
        v10 = (0x2010000u >> (8 * v3)) & 3;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1D4F647C8(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((OUTLINED_FUNCTION_92_2() & 1) == 0)
      {
        memset(v21, 0, sizeof(v21));
        sub_1D4E765C8(v21, &qword_1EC7EC510, &unk_1D5621040);
LABEL_27:
        OUTLINED_FUNCTION_46();
        return;
      }

      OUTLINED_FUNCTION_121_2();
      (*(v1 + 16))(v21, v0, v1);
      v10 = LOBYTE(v21[0]);
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    sub_1D4F6326C();
    if (v10 != v22)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      v11 = 0x7469726F7661662ELL;
      v12 = 0xEA00000000006465;
      if (v10 != 1)
      {
        v11 = 0x656B696C7369642ELL;
        v12 = 0xE900000000000064;
      }

      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x6C61727475656E2ELL;
      }

      if (v10)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v14);

      OUTLINED_FUNCTION_117_2();
      sub_1D4F6326C();
      v15 = 0x7469726F7661662ELL;
      v16 = 0xEA00000000006465;
      if (LOBYTE(v21[0]) != 1)
      {
        v15 = 0x656B696C7369642ELL;
        v16 = 0xE900000000000064;
      }

      if (LOBYTE(v21[0]))
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6C61727475656E2ELL;
      }

      if (LOBYTE(v21[0]))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v17, v18);

      OUTLINED_FUNCTION_55_7();
      LOBYTE(v21[0]) = v3 == 0;
      v19 = *(v5 + 88);
      _s9ItemStateC12StatusSourceOMa();
      OUTLINED_FUNCTION_29_11();
      v20 = sub_1D5614DC8();
      MEMORY[0x1DA6EAC70](v20);

      MEMORY[0x1DA6EAC70](v22, v23);

      LOBYTE(v22) = v10;
      sub_1D4F600CC(&v22);
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_1D4F675FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_94_3();
  v3 = v2;
  OUTLINED_FUNCTION_5_6();
  v5 = v4;
  OUTLINED_FUNCTION_24_0(*(v6 + 80));
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_71_1();
  if ([objc_opt_self() isMainThread])
  {
    if (v3)
    {
      v10 = v3 == 1;
    }

    else
    {
      sub_1D4F645EC(v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
      if ((OUTLINED_FUNCTION_92_2() & 1) == 0)
      {
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        sub_1D4E765C8(v20, &qword_1EC7EC500, &unk_1D5621030);
LABEL_21:
        OUTLINED_FUNCTION_46();
        return;
      }

      OUTLINED_FUNCTION_121_2();
      OUTLINED_FUNCTION_12_24();
      v12 = *(v0 + *(v11 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D5200C94(v20);

      v10 = v20[0];
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    sub_1D4F63464();
    if (v10 != v22)
    {
      v19 = v3 == 0;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v10)
      {
        v13 = 0x64656E6E69702ELL;
      }

      else
      {
        v13 = 0x6E6E6950746F6E2ELL;
      }

      if (v10)
      {
        v14 = 0xE700000000000000;
      }

      else
      {
        v14 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v13, v14);

      OUTLINED_FUNCTION_117_2();
      sub_1D4F63464();
      if (v20[0])
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v20[0])
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      OUTLINED_FUNCTION_55_7();
      v20[0] = v19;
      v17 = *(v5 + 88);
      _s9ItemStateC12StatusSourceOMa();
      OUTLINED_FUNCTION_29_11();
      v18 = sub_1D5614DC8();
      MEMORY[0x1DA6EAC70](v18);

      MEMORY[0x1DA6EAC70](v22, v23);

      LOBYTE(v22) = v10;
      sub_1D4F60218(&v22);
    }

    goto LABEL_21;
  }

  __break(1u);
}

void sub_1D4F678D0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_6();
  v3 = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_71_1();
  v11 = sub_1D4F648D8();
  if (v11)
  {
    v12 = v11;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1D4F647C8(v1);
    v13 = *(*(v3 + 88) + 8);
    sub_1D4F5FE54(v5);
    (*(v7 + 8))(v1, v5);
    sub_1D4F67140();

    v14 = *(v0 + *(*v0 + 184));
    v15 = OUTLINED_FUNCTION_93_4();
    [v15 v16];
    sub_1D4F672F0();
    v17 = OUTLINED_FUNCTION_93_4();
    [v17 v18];
    sub_1D4F675FC();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F67C34(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

BOOL sub_1D4F67C6C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1D4EA7318(*a1, *a2);
}

uint64_t sub_1D4F67C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1D4F483B8(*v1);
}

uint64_t sub_1D4F67C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1D4EA7328(a1, *v2);
}

uint64_t sub_1D4F67CA0(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1D4EA7328(v7, *v2);
  return sub_1D5616328();
}

unint64_t sub_1D4F67CE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1D4F67C34(*v1);
}

uint64_t sub_1D4F67CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for MusicLibrary.ItemState();
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t MusicLibrary.state<A>(for:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for MusicLibrary.ItemState();
  v5 = *(v1 + 16);
  v6 = OUTLINED_FUNCTION_61();
  v7(v6);

  return sub_1D4F5E430();
}

void sub_1D4F67E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_56_8(a1, a2, a3);
  v7 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryAddStatusObserver) initWithIdentifyingModelObject_];
  v8 = [v7 currentStatus];
  v11 = v4;
  v12 = v5;
  __swift_allocate_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_24_0(v4);
  (*(v9 + 16))();

  sub_1D518AB68(v8, v10, v3);
}

void sub_1D4F67EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_56_8(a1, a2, a3);
  v7 = [objc_allocWithZone(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver) initWithIdentifyingModelObject_];
  [v7 currentStatus];
  v8 = v12[0];
  v9 = v12[1];
  v10 = v12[2];
  v13 = v4;
  v14 = v5;
  __swift_allocate_boxed_opaque_existential_0(v12);
  OUTLINED_FUNCTION_24_0(v4);
  (*(v11 + 16))();

  sub_1D50A911C(v8, v9, v12, v3, v10);
}

uint64_t MusicLibrary.downloadWarnings<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  result = sub_1D4F5FE54(a2);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D4F68014(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = *(*(a2 + 8) + 8);
  v7 = sub_1D4F5F808(a1);
  v14 = [objc_opt_self() sharedLibraryTransientStateController];
  v8 = [v14 transientFavoriteStateForModelObject_];
  if (v8)
  {
    v9 = v8;

    v10 = 0x2010000u >> (8 * v9);
    if (v9 >= 4)
    {
      LOBYTE(v10) = 0;
    }

    *a3 = v10;
  }

  else
  {
    v11 = *(a2 + 16);
    v12 = OUTLINED_FUNCTION_61();
    v13(v12);
  }
}

void sub_1D4F68140(uint64_t a1)
{
  sub_1D4F6888C(319, &qword_1EDD543E8);
  if (v3 <= 0x3F)
  {
    v15 = *(v2 - 8) + 64;
    sub_1D4F6888C(319, &qword_1EDD543F8);
    if (v5 <= 0x3F)
    {
      v16 = *(v4 - 8) + 64;
      sub_1D4F68828();
      if (v7 <= 0x3F)
      {
        v17 = *(v6 - 8) + 64;
        sub_1D4F6888C(319, &qword_1EDD54430);
        if (v9 <= 0x3F)
        {
          v18 = *(v8 - 8) + 64;
          sub_1D4F6888C(319, &qword_1EDD54410);
          if (v11 <= 0x3F)
          {
            v19 = *(v10 - 8) + 64;
            v12 = *(a1 + 80);
            v13 = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v20 = *(v13 - 8) + 64;
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D4F68828()
{
  if (!qword_1EDD543D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC4F0, &qword_1D565B520);
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD543D0);
    }
  }
}

void sub_1D4F6888C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D560C928();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D4F688F0()
{
  result = qword_1EDD52630;
  if (!qword_1EDD52630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52630);
  }

  return result;
}

uint64_t sub_1D4F68934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED400, &qword_1D5620CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F689BC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_69_6(v5);

  return sub_1D4F610B8(v7, v8);
}

uint64_t sub_1D4F68A50()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_69_6(v5);

  return sub_1D4F611CC(v7, v8);
}

uint64_t sub_1D4F68AF4()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_25(v5);
  OUTLINED_FUNCTION_98_2();

  return sub_1D4F61C2C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t objectdestroy_90Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1D4F68BE4()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_25(v5);
  OUTLINED_FUNCTION_98_2();

  return sub_1D4F61440(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D4F68CCC()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  v7[1] = sub_1D4F69338;
  v9 = OUTLINED_FUNCTION_85_0();

  return sub_1D4F617CC(v9, v10, v5, v1);
}

uint64_t sub_1D4F68D7C()
{
  OUTLINED_FUNCTION_34_13();
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = v0[9];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_25(v6);

  return sub_1D4F60F84(v8, v4, v9, v10, v11, v2, v3);
}

uint64_t objectdestroy_107Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D4F68E90()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_34_13();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_8_25(v4);
  OUTLINED_FUNCTION_25_3();

  return sub_1D4F60CC4(v6, v7, v8, v9, v10);
}

uint64_t sub_1D4F68F2C(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  OUTLINED_FUNCTION_1_0();
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_32(v13);
  *v14 = v15;
  v14[1] = sub_1D4F69064;

  return sub_1D4F63CB4(a1, v7, v8, v9, v1 + v5, v11, v12, v2);
}

uint64_t sub_1D4F69064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4F69148()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_1_0();
  v5 = v0[4];
  v6 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_43_1(v9);
  *v10 = v11;
  v10[1] = sub_1D4F69338;
  OUTLINED_FUNCTION_25_3();

  return sub_1D4F64130(v12, v13, v14, v15, v16);
}

_BYTE *sub_1D4F6924C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_34_13()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_42_12(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1D4E62A60(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_57_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1D4E6835C(v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 + 4) = v23;
  *(v24 + 12) = 2082;

  return sub_1D4E6835C(a22, v22, (v25 - 88));
}

uint64_t OUTLINED_FUNCTION_76_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 + 24) = v21;
  *(v23 + 32) = 2082;

  return sub_1D4E6835C(a21, v22, (v24 - 88));
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[35];
  v7 = v0[8];

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_89_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_type_t a20)
{

  _os_log_impl(a1, v20, a20, a4, v21, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_91_3()
{
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_110_2()
{
  v3 = *(v1 - 272);

  return sub_1D4E6835C(v3, v0, (v1 - 176));
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_115_4@<X0>(uint64_t a1@<X8>)
{
  **(v1 + 64) = a1 == 0;
}

uint64_t OUTLINED_FUNCTION_116_3@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 88) = v2;
  *(v3 - 80) = (a1 - 32) | 0x8000000000000000;

  return sub_1D4F0B2D8(v1);
}

void OUTLINED_FUNCTION_117_2()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_120_2()
{
}

void *OUTLINED_FUNCTION_121_2()
{
  sub_1D4E48324((v0 - 160), v0 - 120);
  v1 = *(v0 - 88);
  v2 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v2);
}

uint64_t sub_1D4F6964C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC678, &qword_1D56214B0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F6B870();
  sub_1D56163D8();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_1D4F697AC(uint64_t a1)
{
  v2 = sub_1D4F6B870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F697E8(uint64_t a1)
{
  v2 = sub_1D4F6B870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F69858(void *a1, void *a2)
{
  v5 = sub_1D5612478();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC6C8, &qword_1D56214D0);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = a1[1];
  v23 = a2[1];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *a1 == *a2 && v22 == v23;
    if (!v24 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v45 = v8;
  v44 = type metadata accessor for CloudSuggestedSongsRawRequest.Body();
  v25 = *(v44 + 20);
  v26 = *(v16 + 48);
  sub_1D4E69910(a1 + v25, v21, &qword_1EC7EAB90, &qword_1D5621260);
  sub_1D4E69910(a2 + v25, &v21[v26], &qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_10(v21);
  if (!v24)
  {
    sub_1D4E69910(v21, v2, &qword_1EC7EAB90, &qword_1D5621260);
    OUTLINED_FUNCTION_10(&v21[v26]);
    if (!v27)
    {
      v29 = v45;
      (*(v45 + 32))(v13, &v21[v26], v5);
      OUTLINED_FUNCTION_0_30();
      sub_1D4F6BC08(v30, v31);
      v32 = sub_1D5614D18();
      v33 = *(v29 + 8);
      v33(v13, v5);
      v33(v2, v5);
      sub_1D4E50004(v21, &qword_1EC7EAB90, &qword_1D5621260);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v45 + 8))(v2, v5);
LABEL_18:
    sub_1D4E50004(v21, &qword_1EC7EC6C8, &qword_1D56214D0);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v21[v26]);
  if (!v24)
  {
    goto LABEL_18;
  }

  sub_1D4E50004(v21, &qword_1EC7EAB90, &qword_1D5621260);
LABEL_22:
  v34 = v44;
  v35 = *(v44 + 24);
  v36 = *(a2 + v35);
  if (*(a1 + v35))
  {
    if (!v36)
    {
      return 0;
    }

    v37 = *(a2 + v35);

    sub_1D4F293CC();
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v40 = *(v34 + 28);
  v41 = *(a2 + v40);
  if (*(a1 + v40))
  {
    if (v41)
    {

      sub_1D4EF7F48();
      v43 = v42;

      if (v43)
      {
        return 1;
      }
    }
  }

  else if (!v41)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D4F69BE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473696C79616C70 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F43746567726174 && a2 == 0xED0000746E65746ELL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465726566666FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

uint64_t sub_1D4F69D44(char a1)
{
  result = 0x7473696C79616C70;
  switch(a1)
  {
    case 1:
      result = 0x6F43746567726174;
      break;
    case 2:
      result = 0x6465726566666FLL;
      break;
    case 3:
      result = 0x64657463656C6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F69DDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC638, &qword_1D56214A8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F6B6B0();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v22) = 0;
  sub_1D5616028();
  if (!v2)
  {
    v16 = type metadata accessor for CloudSuggestedSongsRawRequest.Body();
    v17 = v16[5];
    LOBYTE(v22) = 1;
    sub_1D5612478();
    OUTLINED_FUNCTION_0_30();
    sub_1D4F6BC08(v18, v19);
    OUTLINED_FUNCTION_4_3();
    v22 = *(v3 + v16[6]);
    HIBYTE(v21) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC610, &qword_1D5621270);
    sub_1D4F6B704();
    OUTLINED_FUNCTION_4_3();
    v22 = *(v3 + v16[7]);
    HIBYTE(v21) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
    sub_1D4F6BAA4(&qword_1EC7EC658, &qword_1EC7EC660);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1D4F6A030()
{
  v1 = sub_1D5612478();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (v0[1])
  {
    v14 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v15 = type metadata accessor for CloudSuggestedSongsRawRequest.Body();
  sub_1D4E69910(v0 + v15[5], v13, &qword_1EC7EAB90, &qword_1D5621260);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v9, v13, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_30();
    sub_1D4F6BC08(v16, v17);
    sub_1D5614CB8();
    (*(v4 + 8))(v9, v1);
  }

  if (*(v0 + v15[6]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F32B58();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v15[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F07A30();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1D4F6A254()
{
  OUTLINED_FUNCTION_164();
  sub_1D4F6A030();
  return sub_1D5616328();
}

void sub_1D4F6A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v51 = v10;
  v12 = v11;
  v45 = v13;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC6A0, &qword_1D56214C8);
  OUTLINED_FUNCTION_4(v50);
  v47 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for CloudSuggestedSongsRawRequest.Body();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  *v28 = 0;
  v28[1] = 0;
  v29 = v24[7];
  v30 = sub_1D5612478();
  v46 = v29;
  __swift_storeEnumTagSinglePayload(v28 + v29, 1, 1, v30);
  v31 = v24[8];
  *(v28 + v31) = 0;
  v32 = v24[9];
  *(v28 + v32) = 0;
  v33 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1D4F6B6B0();
  v49 = v22;
  v34 = v51;
  sub_1D5616398();
  if (v34)
  {
    v42 = v12;
  }

  else
  {
    v43 = v32;
    v44 = v31;
    v35 = v47;
    v36 = v48;
    v51 = v12;
    v37 = v49;
    v38 = v50;
    *v28 = sub_1D5615F38();
    v28[1] = v39;
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_0_30();
    sub_1D4F6BC08(v40, v41);
    sub_1D5615F78();
    sub_1D4F6B970(v36, v28 + v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC610, &qword_1D5621270);
    v52 = 2;
    sub_1D4F6B9E0();
    OUTLINED_FUNCTION_5_19();
    *(v28 + v44) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC620, qword_1D5621278);
    v52 = 3;
    sub_1D4F6BAA4(&qword_1EC7EC6B8, &qword_1EC7EC6C0);
    OUTLINED_FUNCTION_5_19();
    (*(v35 + 8))(v37, v38);
    *(v28 + v43) = a10;
    sub_1D4F6BBA4(v28, v45);
    v42 = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D4F6B918(v28, type metadata accessor for CloudSuggestedSongsRawRequest.Body);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6A604(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if (a6 != 2)
    {
      return 0;
    }

LABEL_15:
    if (BYTE1(a3) == 2)
    {
      if (BYTE1(a6) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a6) == 2 || ((BYTE1(a6) ^ BYTE1(a3)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a6 != 2 && ((a6 ^ a3) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D4F6A6C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573736572706D69 && a2 == 0xE900000000000064;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6577656976657270 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D4F6A7E8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a1);
  return sub_1D5616328();
}

uint64_t sub_1D4F6A828(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x6573736572706D69;
  }

  return 0x6577656976657270;
}

void sub_1D4F6A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v25;
  a24 = v26;
  a10 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC698, &qword_1D56214C0);
  OUTLINED_FUNCTION_4(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D4F6B8C4();
  sub_1D56163D8();
  a14 = 0;
  sub_1D5616028();
  if (!v24)
  {
    a13 = 1;
    sub_1D5616038();
    a12 = 2;
    sub_1D5616038();
  }

  (*(v32 + 8))(v37, v30);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6AA04(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a3)
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (a4 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (HIBYTE(a4) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D4F6AAA8(uint64_t a1, uint64_t a2, __int16 a3)
{
  OUTLINED_FUNCTION_164();
  sub_1D4F6AA04(v7, a1, a2, a3);
  return sub_1D5616328();
}

void sub_1D4F6AB00()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC688, &qword_1D56214B8);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9();
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D4F6B8C4();
  sub_1D5616398();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F38();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F48();
  OUTLINED_FUNCTION_6_24();
  sub_1D5615F48();
  v7 = OUTLINED_FUNCTION_7_25();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F69BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F6ACFC(uint64_t a1)
{
  v2 = sub_1D4F6B6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F6AD38(uint64_t a1)
{
  v2 = sub_1D4F6B6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F6ADB0()
{
  sub_1D56162D8();
  sub_1D4F6A030();
  return sub_1D5616328();
}

uint64_t sub_1D4F6ADEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4F6AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F6A6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F6AE68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F6A7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F6AE90(uint64_t a1)
{
  v2 = sub_1D4F6B8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F6AECC(uint64_t a1)
{
  v2 = sub_1D4F6B8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D4F6AF08(uint64_t a1@<X8>)
{
  sub_1D4F6AB00();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1D4F6AF94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D56162D8();
  sub_1D4F6AA04(v5, v1, v2, v3);
  return sub_1D5616328();
}

void sub_1D4F6AFEC()
{
  OUTLINED_FUNCTION_25_1();
  v37 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE68, &unk_1D5621200);
  OUTLINED_FUNCTION_4(v36);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v35 - v7;
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0) - 8);
  v9 = *(*v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9();
  v11 = type metadata accessor for MusicSuggestedSongsEntry();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  OUTLINED_FUNCTION_10_22();
  v19 = *(v0 + v8[14]);

  sub_1D4F6B31C(v0, v18);
  OUTLINED_FUNCTION_10_22();
  v20 = *(v0 + v8[14]);
  sub_1D4F6B918(v0, type metadata accessor for MusicSuggestedSongsEntry);
  v21 = sub_1D4ED17E4(*&v18[*(v12 + 28)], *&v18[*(v12 + 28) + 8], *v37);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1D5613838();
  OUTLINED_FUNCTION_14(v23);
  (*(v24 + 16))(v16, v18);
  v25 = &v16[*(v12 + 28)];
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  v26 = v20;
  v27 = v35;
  v28 = sub_1D54E4C60(v26);
  sub_1D542ACA8(v28, v27);

  sub_1D4F6B918(v16, type metadata accessor for MusicSuggestedSongsEntry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = *(v22 + 16);
    sub_1D4F00530();
    v22 = v33;
  }

  v29 = *(v22 + 16);
  if (v29 >= *(v22 + 24) >> 1)
  {
    sub_1D4F00530();
    v22 = v34;
  }

  *(v22 + 16) = v29 + 1;
  (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v27, v36);
  v30 = v37;
  v31 = *v37;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *v30;
  sub_1D4F13C7C();
  *v30 = v38;
  sub_1D4F6B918(v18, type metadata accessor for MusicSuggestedSongsEntry);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F6B31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D4F6B3A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1D4F6B3F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for CloudSuggestedSongsRawRequest.Body()
{
  result = qword_1EC7EC5F0;
  if (!qword_1EC7EC5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F6B4D0()
{
  sub_1D4F18AF4();
  if (v0 <= 0x3F)
  {
    sub_1D4F6B5B4();
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EC7EC608, &qword_1EC7EC610, &qword_1D5621270);
      if (v2 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EC618, &qword_1EC7EC620, qword_1D5621278);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4F6B5B4()
{
  if (!qword_1EC7EC600)
  {
    sub_1D5612478();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EC600);
    }
  }
}

unint64_t sub_1D4F6B65C()
{
  result = qword_1EC7EC630;
  if (!qword_1EC7EC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC630);
  }

  return result;
}

unint64_t sub_1D4F6B6B0()
{
  result = qword_1EC7EC640;
  if (!qword_1EC7EC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC640);
  }

  return result;
}

unint64_t sub_1D4F6B704()
{
  result = qword_1EC7EC650;
  if (!qword_1EC7EC650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC610, &qword_1D5621270);
    sub_1D4F6BAA4(&qword_1EC7EC658, &qword_1EC7EC660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC650);
  }

  return result;
}

unint64_t sub_1D4F6B7C8()
{
  result = qword_1EC7EC668;
  if (!qword_1EC7EC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC668);
  }

  return result;
}

unint64_t sub_1D4F6B81C()
{
  result = qword_1EC7EC670;
  if (!qword_1EC7EC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC670);
  }

  return result;
}

unint64_t sub_1D4F6B870()
{
  result = qword_1EC7EC680;
  if (!qword_1EC7EC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC680);
  }

  return result;
}

unint64_t sub_1D4F6B8C4()
{
  result = qword_1EC7EC690;
  if (!qword_1EC7EC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC690);
  }

  return result;
}

uint64_t sub_1D4F6B918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F6B970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F6B9E0()
{
  result = qword_1EC7EC6B0;
  if (!qword_1EC7EC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC610, &qword_1D5621270);
    sub_1D4F6BAA4(&qword_1EC7EC6B8, &qword_1EC7EC6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6B0);
  }

  return result;
}

uint64_t sub_1D4F6BAA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC620, qword_1D5621278);
    sub_1D4F6BB2C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F6BB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F6B7C8();
    sub_1D4F6B81C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F6BBA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSuggestedSongsRawRequest.Body();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F6BC08(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CloudSuggestedSongsRawRequest.EntryMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSuggestedSongsRawRequest.Body.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F6BE1C()
{
  result = qword_1EC7EC6D0;
  if (!qword_1EC7EC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6D0);
  }

  return result;
}

unint64_t sub_1D4F6BE74()
{
  result = qword_1EC7EC6D8;
  if (!qword_1EC7EC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6D8);
  }

  return result;
}

unint64_t sub_1D4F6BECC()
{
  result = qword_1EC7EC6E0;
  if (!qword_1EC7EC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6E0);
  }

  return result;
}

unint64_t sub_1D4F6BF24()
{
  result = qword_1EC7EC6E8;
  if (!qword_1EC7EC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6E8);
  }

  return result;
}

unint64_t sub_1D4F6BF7C()
{
  result = qword_1EC7EC6F0;
  if (!qword_1EC7EC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6F0);
  }

  return result;
}

unint64_t sub_1D4F6BFD4()
{
  result = qword_1EC7EC6F8;
  if (!qword_1EC7EC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC6F8);
  }

  return result;
}

unint64_t sub_1D4F6C02C()
{
  result = qword_1EC7EC700;
  if (!qword_1EC7EC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC700);
  }

  return result;
}

unint64_t sub_1D4F6C084()
{
  result = qword_1EC7EC708;
  if (!qword_1EC7EC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC708);
  }

  return result;
}

uint64_t sub_1D4F6C17C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC728, &unk_1D5621810);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612EC8();

  *(v0 + 48) = v3;
  qword_1EC87BE70 = v0;
  return result;
}

uint64_t sub_1D4F6C25C()
{
  type metadata accessor for UploadedVideo();
  sub_1D4F6C3F0(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  return sub_1D560EC98();
}

uint64_t sub_1D4F6C33C(void *a1)
{
  a1[1] = sub_1D4F6C3F0(&qword_1EC7EC710, type metadata accessor for UploadedVideo);
  a1[2] = sub_1D4F6C3F0(&qword_1EC7EC718, type metadata accessor for UploadedVideo);
  result = sub_1D4F6C3F0(&qword_1EC7EC720, type metadata accessor for UploadedVideo);
  a1[3] = result;
  return result;
}

uint64_t sub_1D4F6C3F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D4F6C438()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__libraries;
  v21[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC748, &qword_1D56219E0);
  sub_1D560C8B8();
  (*(v6 + 32))(v0 + v10, v9, v5);
  v11 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask) = 0;
  v12 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_libraryDidChangeObservationTasks;
  sub_1D560F0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC770, &qword_1D5621A50);
  sub_1D4F6F854(&qword_1EDD53438, MEMORY[0x1E6975598]);
  *(v0 + v12) = sub_1D5614BD8();
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    swift_beginAccess();
    sub_1D560C8B8();
    swift_endAccess();
    v14 = sub_1D5615458();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;

    v17 = sub_1D51EC8B4(0, 0, v4, &unk_1D5621A68, v16);
    v18 = *(v0 + v11);
    *(v0 + v11) = v17;

    [objc_opt_self() beginDiscoveringMediaLibraries];
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
    v19 = swift_allocObject();
    swift_weakInit();

    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    sub_1D51ECB60(0, 0, v4, &unk_1D5621A78, v20);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F6C7B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F6C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_1D56157D8();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6C914, 0, 0);
}

uint64_t sub_1D4F6C914()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = [objc_opt_self() defaultCenter];
  v4 = [objc_opt_self() availableMediaLibrariesDidChangeNotificationName];
  sub_1D56157E8();

  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v5, v6);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[11] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_16(v8);

  return MEMORY[0x1EEE6D8C8](v10);
}

uint64_t sub_1D4F6CA38()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (v0)
  {
    v9 = sub_1D4F6CCF4;
  }

  else
  {
    v9 = sub_1D4F6CB34;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D4F6CB48()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[7];
  v2 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v2);
  if (v3)
  {
    v4 = v0[10];
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_22_17(v0[9]);
    v7(v6);

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    v10 = v0[6];
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v0[14] = sub_1D56153C8();
      v0[15] = sub_1D56153B8();
      v12 = swift_task_alloc();
      v0[16] = v12;
      *v12 = v0;
      OUTLINED_FUNCTION_26_12(v12);

      return sub_1D4F6DC58();
    }

    else
    {
      sub_1D4E765C8(v0[7], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v13, v14);
      v15 = *(MEMORY[0x1E69E85A8] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      v0[11] = v16;
      *v16 = v17;
      v18 = OUTLINED_FUNCTION_2_16();

      return MEMORY[0x1EEE6D8C8](v18);
    }
  }
}

uint64_t sub_1D4F6CCF4()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_28_15();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4F6CD6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[14];
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  sub_1D5615338();
  v7 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4F6CE90()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F6CEF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 56), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 88) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_16();

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1D4F6CFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4F6CFC8, 0, 0);
}

uint64_t sub_1D4F6CFC8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_15_21();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D4F6DC58();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D4F6D0A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4F6D1A4()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t MusicAutoupdatingSharedLibrariesResponse.deinit()
{
  [objc_opt_self() endDiscoveringMediaLibraries];
  v1 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_availableLibrariesDidChangeObservationTask);

    sub_1D56154B8();
  }

  v3 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__request;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse__libraries;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  OUTLINED_FUNCTION_4_0(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + v1);

  v10 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_libraryDidChangeObservationTasks);

  return v0;
}

uint64_t MusicAutoupdatingSharedLibrariesResponse.__deallocating_deinit()
{
  MusicAutoupdatingSharedLibrariesResponse.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4F6D390()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

void (*sub_1D4F6D408(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1D560C8E8();
  return sub_1D4F62FB8;
}

uint64_t sub_1D4F6D4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC740, &qword_1D56218F8);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = OUTLINED_FUNCTION_1_3(v8, v12);
  v10(v9);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1D4F6D5B8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC740, &qword_1D56218F8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC730, &qword_1D56218E8);
  sub_1D560C8C8();
  swift_endAccess();
  return sub_1D4F6D6D4;
}

void sub_1D4F6D6D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[3];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1D4F6D4B4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[3];
    sub_1D4F6D4B4(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D4F6D788@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D4F6D7E0();
  *a2 = result;
  return result;
}

uint64_t sub_1D4F6D7B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D4F6D854();
}

uint64_t sub_1D4F6D7E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4F6D854()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D4F6D8C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1);
  v17 = *a2;
  return a7(v15);
}

uint64_t sub_1D4F6D9A4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D4F6DA14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC780, &qword_1D5621A58);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = OUTLINED_FUNCTION_1_3(v8, v12);
  v10(v9);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC738, &qword_1D56218F0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1D4F6DB18()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = v0;
  sub_1D56153C8();
  *(v1 + 24) = sub_1D56153B8();
  sub_1D5615338();
  v2 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F6DBA4()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  type metadata accessor for MusicAutoupdatingSharedLibrariesResponse();
  sub_1D4F6F854(&qword_1EC7EC778, type metadata accessor for MusicAutoupdatingSharedLibrariesResponse);
  sub_1D560C838();
  sub_1D560C888();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F6DC58()
{
  OUTLINED_FUNCTION_60();
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC758, &qword_1D5621A38);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC760, &qword_1D5621A40);
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1D56153C8();
  v1[25] = sub_1D56153B8();
  sub_1D5615338();
  v7 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4F6DD94()
{
  v1 = v0[25];
  v63 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v59 = v0[20];
  v65 = v0[19];
  v62 = v0[18];

  sub_1D560F0D8();
  v0[15] = sub_1D560EFE8();
  v0[16] = sub_1D4F6D7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC748, &qword_1D56219E0);
  sub_1D4E62A60(&qword_1EDD527D8, &qword_1EC7EC748, &qword_1D56219E0);
  v5 = MEMORY[0x1E6975598];
  sub_1D4F6F854(&qword_1EDD53430, MEMORY[0x1E6975598]);
  sub_1D5614CE8();

  v6 = v5;
  v7 = v59;
  sub_1D4F6F854(&qword_1EDD53438, v6);
  sub_1D5615EC8();
  v8 = OUTLINED_FUNCTION_22_17(v3);
  v58 = v9;
  v9(v8, v4);
  (*(v3 + 16))(v2, v63, v4);
  sub_1D4E62A60(&unk_1EDD52588, &qword_1EC7EC760, &qword_1D5621A40);
  sub_1D5614F98();
  v10 = *(v65 + 36);
  v61 = OBJC_IVAR____TtC16MusicKitInternal40MusicAutoupdatingSharedLibrariesResponse_libraryDidChangeObservationTasks;
  swift_beginAccess();
  sub_1D4E62A60(&qword_1EDD52580, &qword_1EC7EC760, &qword_1D5621A40);
  while (1)
  {
    v12 = v0[20];
    v11 = v0[21];
    sub_1D5615648();
    if (*(v7 + v10) == v0[17])
    {
      break;
    }

    v13 = v0[20];
    v14 = v0[21];
    v15 = sub_1D5615688();
    v17 = v16[1];
    v18 = *(v16 + 24);
    v19 = *(v16 + 25);
    v64 = *v16;
    v66 = v16[2];
    sub_1D4F6F844();
    v15(v0 + 2, 0);
    sub_1D5615658();
    if (v19 == 1)
    {
      if ((v18 & 1) != 0 && (v20 = *(v62 + v61), *(v20 + 16)))
      {
        v21 = *(v62 + v61);

        v22 = sub_1D4F0E290();
        if ((v23 & 1) == 0)
        {

          goto LABEL_22;
        }

        v24 = (*(v20 + 56) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];

        sub_1D56154B8();
        sub_1D56154B8();
        OUTLINED_FUNCTION_54_0();
        v27 = *(v62 + v61);
        v28 = sub_1D4F0E290();
        if (v29)
        {
          v30 = v28;
          v31 = *(v62 + v61);
          swift_isUniquelyReferenced_nonNull_native();
          v67 = *(v62 + v61);
          *(v62 + v61) = 0x8000000000000000;
          v32 = v67[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC768, &qword_1D5621A48);
          sub_1D5615D78();
          v33 = *(v67[6] + 8 * v30);

          v34 = (v67[7] + 16 * v30);
          v35 = *v34;
          v36 = v34[1];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC770, &qword_1D5621A50);
          sub_1D5615D98();
          *(v62 + v61) = v67;
        }

        swift_endAccess();
        OUTLINED_FUNCTION_9_22();
        sub_1D4F6F84C();
      }

      else
      {
LABEL_22:
        OUTLINED_FUNCTION_9_22();
        sub_1D4F6F84C();
      }
    }

    else
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }

      v37 = v0[18];
      v60 = sub_1D4F6E498(v17);
      v39 = v38;
      OUTLINED_FUNCTION_54_0();
      v40 = *(v62 + v61);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v62 + v61);
      *(v62 + v61) = 0x8000000000000000;
      result = sub_1D4F0E290();
      if (__OFADD__(v68[2], (v42 & 1) == 0))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v43 = result;
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC768, &qword_1D5621A48);
      result = sub_1D5615D78();
      if (result)
      {
        result = sub_1D4F0E290();
        if ((v44 & 1) != (v45 & 1))
        {

          return sub_1D5616238();
        }

        v43 = result;
        if (v44)
        {
LABEL_19:
          v50 = (v68[7] + 16 * v43);
          v51 = *v50;
          v52 = v50[1];
          *v50 = v60;
          v50[1] = v39;

          goto LABEL_20;
        }
      }

      else if (v44)
      {
        goto LABEL_19;
      }

      v68[(v43 >> 6) + 8] |= 1 << v43;
      *(v68[6] + 8 * v43) = v17;
      v46 = (v68[7] + 16 * v43);
      *v46 = v60;
      v46[1] = v39;
      v47 = v68[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_30;
      }

      v68[2] = v49;

LABEL_20:
      *(v62 + v61) = v68;
      swift_endAccess();
      OUTLINED_FUNCTION_9_22();
      sub_1D4F6F84C();
      v7 = v59;
    }
  }

  v54 = v0[23];
  v53 = v0[24];
  v55 = v0[21];
  v56 = v0[18];
  sub_1D4E765C8(v0[20], &qword_1EC7EC758, &qword_1D5621A38);
  v58(v53, v55);
  sub_1D4F6D854();

  OUTLINED_FUNCTION_55();

  return v57();
}

uint64_t sub_1D4F6E498(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D5615458();
  OUTLINED_FUNCTION_27_11();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v5[5] = v4;

  v6 = OUTLINED_FUNCTION_21_18();
  v10 = sub_1D51EC8B4(v6, v7, v8, v9, v5);
  OUTLINED_FUNCTION_27_11();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v11;

  v13 = OUTLINED_FUNCTION_21_18();
  sub_1D51EC8B4(v13, v14, v15, v16, v12);
  return v10;
}

uint64_t sub_1D4F6E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_1D56157D8();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6E708, 0, 0);
}

uint64_t sub_1D4F6E708()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  sub_1D560F048();
  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v4, v5);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_25(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_33(v8);

  return MEMORY[0x1EEE6D8C8](v10);
}

uint64_t sub_1D4F6E7DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = sub_1D4F6F9CC;
  }

  else
  {
    v9 = sub_1D4F6E8D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D4F6E8EC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];
  v2 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v2);
  if (v3)
  {
    v4 = v0[11];
    v5 = v0[9];
    v6 = OUTLINED_FUNCTION_22_17(v0[10]);
    v7(v6);

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    v10 = v0[7];
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      OUTLINED_FUNCTION_26_12(v12);

      return sub_1D4F6DB18();
    }

    else
    {
      sub_1D4E765C8(v0[8], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v13, v14);
      v15 = *(MEMORY[0x1E69E85A8] + 4);
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_6_25(v16);
      *v17 = v18;
      v19 = OUTLINED_FUNCTION_1_33(v17);

      return MEMORY[0x1EEE6D8C8](v19);
    }
  }
}

uint64_t sub_1D4F6EA90()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4F6EB90()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 64), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_25(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_33(v5);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1D4F6EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC750, &unk_1D5667A30) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_1D56157D8();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F6ED4C, 0, 0);
}

uint64_t sub_1D4F6ED4C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  sub_1D560F068();
  sub_1D56157C8();
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v4, v5);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_25(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_33(v8);

  return MEMORY[0x1EEE6D8C8](v10);
}

uint64_t sub_1D4F6EE20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = sub_1D4F6F0D4;
  }

  else
  {
    v9 = sub_1D4F6EF1C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D4F6EF30()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];
  v2 = sub_1D560BB18();
  OUTLINED_FUNCTION_18_21(v2);
  if (v3)
  {
    v4 = v0[11];
    v5 = v0[9];
    v6 = OUTLINED_FUNCTION_22_17(v0[10]);
    v7(v6);

    OUTLINED_FUNCTION_55();

    return v8();
  }

  else
  {
    v10 = v0[7];
    Strong = swift_weakLoadStrong();
    v0[14] = Strong;
    if (Strong)
    {
      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      OUTLINED_FUNCTION_26_12(v12);

      return sub_1D4F6DB18();
    }

    else
    {
      sub_1D4E765C8(v0[8], &qword_1EC7EC750, &unk_1D5667A30);
      OUTLINED_FUNCTION_0_31();
      sub_1D4F6F854(v13, v14);
      v15 = *(MEMORY[0x1E69E85A8] + 4);
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_6_25(v16);
      *v17 = v18;
      v19 = OUTLINED_FUNCTION_1_33(v17);

      return MEMORY[0x1EEE6D8C8](v19);
    }
  }
}

uint64_t sub_1D4F6F0D4()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_28_15();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4F6F14C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4F6F24C()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(*(v0 + 64), &qword_1EC7EC750, &unk_1D5667A30);
  OUTLINED_FUNCTION_0_31();
  sub_1D4F6F854(v1, v2);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_25(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1_33(v5);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1D4F6F310@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicAutoupdatingSharedLibrariesResponse();
  result = sub_1D560C838();
  *a1 = result;
  return result;
}

id MusicSharedLibrariesRequest.autoupdatingResponse.getter()
{
  v0 = type metadata accessor for MusicAutoupdatingSharedLibrariesResponse();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1D4F6C438();
}

uint64_t type metadata accessor for MusicAutoupdatingSharedLibrariesResponse()
{
  result = qword_1EDD59678;
  if (!qword_1EDD59678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}