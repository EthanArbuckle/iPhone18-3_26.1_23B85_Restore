unint64_t sub_18EFB30C8()
{
  result = qword_1ED5FCF00;
  if (!qword_1ED5FCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF00);
  }

  return result;
}

uint64_t sub_18EFB311C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_18EFB3164(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_36(v4);
  (*(v5 + 8))(a1);
  return a1;
}

id sub_18EFB31BC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v16 = sub_18F093B5C();
  }

  else
  {
    v16 = 0;
  }

  sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
  v17 = sub_18F093DBC();

  type metadata accessor for LNValueTypeSpecificMetadataKey();
  sub_18EFB3860(&qword_1ED5FF088, type metadata accessor for LNValueTypeSpecificMetadataKey);
  v18 = sub_18F093A3C();

  if (a13)
  {
    v19 = sub_18F093B5C();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v23 initWithName:v16 valueType:a3 optional:a4 & 1 title:a5 description:a6 resolvableInputTypes:v17 typeSpecificMetadata:v18 dynamicOptionsSupport:a9 inputConnectionBehavior:a10 capabilities:a11 queryIdentifier:v19];

  swift_unknownObjectRelease();
  return v20;
}

void sub_18EFB336C()
{
  OUTLINED_FUNCTION_260();
  v1 = sub_18F09337C();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_22();
  v9 = v8 - v7;
  v10 = sub_18F09340C();
  v18 = v0;
  v11 = sub_18EFB3578(sub_18EFB9104, &v17, v10);
  type metadata accessor for LNSystemProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB3860(&qword_1ED5FFA10, type metadata accessor for LNSystemProtocolIdentifier);
  v12 = sub_18F093A5C();
  v13 = 0;
  v14 = *(v11 + 16);
  while (1)
  {
    if (v14 == v13)
    {

      OUTLINED_FUNCTION_259();
      return;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    (*(v4 + 16))(v9, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13++, v1);
    v15 = sub_18EFB8BA0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v12;
    sub_18EFB8908(v15, sub_18EFB908C, 0, isUniquelyReferenced_nonNull_native, &v19);
    (*(v4 + 8))(v9, v1);
    v12 = v19;
  }

  __break(1u);
}

uint64_t sub_18EFB3578(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_18F09337C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = *(v18 + 16);
        sub_18EFB9244();
        v20 = v35;
      }

      a3 = v16;
      v22 = *(v20 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v20 + 24) >> 1)
      {
        v29 = v22 + 1;
        v25 = v22;
        sub_18EFB9244();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      *(v20 + 16) = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18EFB3860(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18EFB38A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v8 = sub_18F093DBC();

  v9 = [v4 initWithDescriptionText:a1 categoryName:a2 searchKeywords:v8 resultValueName:a4];

  return v9;
}

uint64_t sub_18EFB3978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18EFB39E8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F093B5C();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_18EFB3A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18EFB3ACC()
{
  v31 = sub_18F0935CC();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18F0934DC();
  v5 = 0;
  v32 = *(v4 + 16);
  v30[0] = v0 + 8;
  v30[1] = v0 + 16;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v32 == v5)
    {

      type metadata accessor for AssistantPrebuiltLibrary();
      swift_allocObject();
      return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v8, v7, v6);
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = v31;
    (*(v0 + 16))(v3, v4 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v5, v31);
    v10 = sub_18EFB4004();
    (*(v0 + 8))(v3, v9);
    v11 = v10[2];

    swift_isUniquelyReferenced_nonNull_native();
    v33 = v8;
    v12 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7024(v12, v13, v14, v15, v16);
    v8 = v33;
    v17 = v10[3];

    swift_isUniquelyReferenced_nonNull_native();
    v33 = v7;
    v18 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7744(v18, v19, v20, v21, v22);
    v7 = v33;
    v23 = v10[4];

    swift_isUniquelyReferenced_nonNull_native();
    v33 = v6;
    v24 = OUTLINED_FUNCTION_0_0();
    sub_18EFB7350(v24, v25, v26, v27, v28);

    v6 = v33;
    ++v5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t AssistantSchemaVersion.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  OUTLINED_FUNCTION_18_1();
  v7 = sub_18F0943FC();
  MEMORY[0x193AD8780](46, 0xE100000000000000);
  OUTLINED_FUNCTION_18_1();
  v3 = sub_18F0943FC();
  MEMORY[0x193AD8780](v3);

  MEMORY[0x193AD8780](46, 0xE100000000000000);
  OUTLINED_FUNCTION_18_1();
  v4 = sub_18F0943FC();
  MEMORY[0x193AD8780](v4);

  return v7;
}

uint64_t sub_18EFB3E08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18F0937BC();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v2, v4);
  result = (*(v7 + 88))(v11, v4);
  if (result == *MEMORY[0x1E698AC68])
  {
    v13 = xmmword_18F0AAA20;
LABEL_9:
    *a1 = v13;
    *(a1 + 16) = 0;
    return result;
  }

  if (result == *MEMORY[0x1E698AC70])
  {
    v13 = xmmword_18F0AC0B0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E698AC78])
  {
    v13 = xmmword_18F0AC0C0;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x1E698AC80])
  {
    v13 = xmmword_18F0AC0D0;
    goto LABEL_9;
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD000000000000010, 0x800000018F0B0A60);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB4004()
{
  v1 = sub_18F0937FC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_0_3();
  v117 = v3;
  OUTLINED_FUNCTION_237();
  v4 = sub_18F0937EC();
  v5 = OUTLINED_FUNCTION_7(v4);
  v147 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v123 = v9;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114 - v11;
  v13 = sub_18F09346C();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  v122 = v19;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v114 - v21;
  OUTLINED_FUNCTION_237();
  v133 = sub_18F09362C();
  v22 = OUTLINED_FUNCTION_7(v133);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_0();
  v130 = v27;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v114 - v29;
  OUTLINED_FUNCTION_237();
  v139 = sub_18F0937BC();
  v30 = OUTLINED_FUNCTION_7(v139);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_0_3();
  v138 = v35;
  OUTLINED_FUNCTION_237();
  v36 = sub_18F09356C();
  v37 = OUTLINED_FUNCTION_7(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_0();
  v145 = v42;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v43);
  v140 = v0;
  v141 = &v114 - v44;
  v45 = sub_18F0935BC();
  v46 = v45;
  v144 = *(v45 + 16);
  if (!v144)
  {

    v49 = MEMORY[0x1E69E7CC8];
    v112 = MEMORY[0x1E69E7CC8];
    v111 = MEMORY[0x1E69E7CC8];
LABEL_34:
    type metadata accessor for AssistantPrebuiltLibrary();
    swift_allocObject();
    return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v111, v112, v49);
  }

  v121 = v12;
  v124 = v4;
  v47 = 0;
  v118 = 0;
  v48 = v45 + 32;
  v115 = (v147 + 8);
  v116 = (v147 + 32);
  v120 = (v16 + 32);
  v137 = *MEMORY[0x1E698AC70];
  v135 = (v32 + 8);
  v136 = v32 + 104;
  v119 = (v16 + 8);
  v125 = (v24 + 8);
  v126 = (v24 + 32);
  v129 = (v39 + 32);
  v49 = MEMORY[0x1E69E7CC8];
  v127 = MEMORY[0x1E69E7CC8];
  v128 = (v39 + 8);
  v131 = MEMORY[0x1E69E7CC8];
  v132 = v13;
  v50 = v133;
  v51 = v141;
  v52 = v142;
  v134 = v36;
  v53 = v146;
  v143 = v46;
  while (v47 < *(v46 + 16))
  {
    v147 = v48;
    sub_18EFB4B8C(v48, v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9230, &qword_18F0AA148);
    if (swift_dynamicCast())
    {
      (*v129)(v145, v51, v36);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v55 = v138;
      v54 = v139;
      v56(v138, v137, v139);
      v57 = OUTLINED_FUNCTION_5_0();
      sub_18EFB6958(v57, v58, v59);

      (*v135)(v55, v54);
      memcpy(v152, v150, sizeof(v152));
      OUTLINED_FUNCTION_2_1(v152);
      v148 = v152[2].n128_u64[1];
      v149 = v152[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v60 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v60);

      v61 = v148;
      v53 = v149;
      sub_18EFB6BF8(v152, v150);
      swift_isUniquelyReferenced_nonNull_native();
      v150[0] = v49;
      OUTLINED_FUNCTION_7_0();
      v62 = sub_18EFAF54C();
      if (__OFADD__(*(v49 + 16), (v63 & 1) == 0))
      {
        goto LABEL_36;
      }

      v64 = v62;
      v65 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
      if (sub_18F09417C())
      {
        OUTLINED_FUNCTION_7_0();
        v66 = sub_18EFAF54C();
        v51 = v141;
        v52 = v142;
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_38;
        }

        v64 = v66;
      }

      else
      {
        v51 = v141;
        v52 = v142;
      }

      v46 = v143;
      v49 = v150[0];
      if (v65)
      {
        sub_18F02359C(v152, *(v150[0] + 56) + 80 * v64);
      }

      else
      {
        sub_18F0418B4(v64, v61, v53, v152);
      }

      v50 = v133;
      sub_18EFB6C54(v152);
      v36 = v134;
      (*v128)(v145, v134);
      v13 = v132;
      goto LABEL_25;
    }

    if (swift_dynamicCast())
    {
      (*v126)(v130, v52, v50);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v69 = v138;
      v68 = v139;
      v70(v138, v137, v139);
      v71 = OUTLINED_FUNCTION_5_0();
      sub_18EFB5CB4(v71, v72, v69, v73);

      (*v135)(v69, v68);
      memcpy(v153, v150, sizeof(v153));
      OUTLINED_FUNCTION_2_1(v153);
      v148 = v153[2].n128_u64[1];
      v149 = v153[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v74 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v74);

      v75 = v148;
      v53 = v149;
      sub_18EFB62B4(v153, v150);
      v76 = v131;
      swift_isUniquelyReferenced_nonNull_native();
      v150[0] = v76;
      OUTLINED_FUNCTION_7_0();
      v77 = sub_18EFAF54C();
      if (__OFADD__(*(v76 + 16), (v78 & 1) == 0))
      {
        goto LABEL_37;
      }

      v79 = v77;
      v80 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
      if (sub_18F09417C())
      {
        OUTLINED_FUNCTION_7_0();
        v81 = sub_18EFAF54C();
        v51 = v141;
        v52 = v142;
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_38;
        }

        v79 = v81;
      }

      else
      {
        v51 = v141;
        v52 = v142;
      }

      v46 = v143;
      v131 = v150[0];
      if (v80)
      {
        sub_18F023540(v153, *(v150[0] + 56) + 80 * v79);
      }

      else
      {
        sub_18F0418B4(v79, v75, v53, v153);
      }

      sub_18EFB677C(v153);
      v50 = v133;
      (*v125)(v130, v133);
      v13 = v132;
      v53 = v146;
      v36 = v134;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v91 = v121;
        v92 = v124;
        if (swift_dynamicCast())
        {
          (*v116)(v123, v91, v92);
          sub_18F0935AC();
          sub_18F09379C();
          sub_18F09359C();
          sub_18F09377C();
          v93 = sub_18F0419AC();
          v94 = v93[2];
          v95 = v127;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150[0] = v95;
          v97 = v94;
          v53 = v118;
          sub_18EFB7024(v97, sub_18EFB76CC, 0, isUniquelyReferenced_nonNull_native, v150);
          if (v53)
          {
            goto LABEL_39;
          }

          v127 = v150[0];
          v98 = v93[3];
          v99 = v131;

          swift_isUniquelyReferenced_nonNull_native();
          v150[0] = v99;
          v100 = OUTLINED_FUNCTION_9_0();
          sub_18EFB7744(v100, v101, v102, v103, v104);

          v131 = v150[0];
          v105 = v93[4];

          swift_isUniquelyReferenced_nonNull_native();
          v150[0] = v49;
          v106 = OUTLINED_FUNCTION_9_0();
          sub_18EFB7350(v106, v107, v108, v109, v110);
          v52 = v142;
          v118 = 0;

          (*v115)(v123, v124);

          v49 = v150[0];
          v51 = v141;
        }

        v46 = v143;
LABEL_25:
        v53 = v146;
        goto LABEL_31;
      }

      v83 = v122;
      (*v120)(v122, v53, v13);
      sub_18F0935AC();
      OUTLINED_FUNCTION_3_0();
      v85 = v138;
      v84 = v139;
      v86(v138, v137, v139);
      OUTLINED_FUNCTION_5_0();
      sub_18EFB4BF0();

      v87 = v85;
      v36 = v134;
      (*v135)(v87, v84);
      memcpy(__dst, v150, sizeof(__dst));
      OUTLINED_FUNCTION_2_1(__dst);
      v148 = __dst[2].n128_u64[1];
      v149 = __dst[3].n128_u64[0];

      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_4_1();
      v88 = AssistantSchemaVersion.description.getter();
      MEMORY[0x193AD8780](v88);

      v89 = v127;
      swift_isUniquelyReferenced_nonNull_native();
      v150[0] = v89;
      v53 = v146;
      sub_18EFB5598();
      v51 = v141;

      v127 = v150[0];
      v90 = v83;
      v52 = v142;
      (*v119)(v90, v13);
      v46 = v143;
    }

LABEL_31:
    ++v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v151);
    v48 = v147 + 40;
    if (v144 == v47)
    {

      v111 = v127;
      v112 = v131;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_18F0944AC();
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

uint64_t sub_18EFB4B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_18EFB4BF0()
{
  OUTLINED_FUNCTION_260();
  v34[1] = v1;
  v3 = v2;
  v42 = v4;
  v6 = v5;
  v36 = sub_18F0937FC();
  v7 = OUTLINED_FUNCTION_7(v36);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_42();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v34 - v16;
  v18 = sub_18F09343C();
  v40 = v19;
  v41 = v18;
  sub_18EFB3E08(&v45);
  v38 = v46;
  v39 = v45;
  v37 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9410, &qword_18F0AAA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  *(inited + 32) = 0x53555F6E65;
  *(inited + 40) = 0xE500000000000000;

  v21 = sub_18F0933CC();
  v44 = v0;
  v22 = sub_18EFB5424(sub_18F029FEC, &v43, v21);

  *(inited + 48) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
  v35 = sub_18F093A5C();
  v34[0] = sub_18F093A5C();
  v23 = v3;
  v24 = v36;
  sub_18EFB115C();
  v26 = v25;
  sub_18F0933DC();
  (*(v9 + 16))(v14, v17, v24);
  v27 = (*(v9 + 88))(v14, v24);
  if (v27 == *MEMORY[0x1E698AC90])
  {
    v28 = 0;
LABEL_7:
    (*(v9 + 8))(v17, v24);
    v29 = sub_18F09342C();
    v30 = v40;
    *v6 = v41;
    *(v6 + 8) = v30;
    v31 = v38;
    *(v6 + 16) = v39;
    *(v6 + 24) = v31;
    v32 = v42;
    *(v6 + 32) = v37;
    *(v6 + 40) = v32;
    v33 = v35;
    *(v6 + 48) = v23;
    *(v6 + 56) = v33;
    *(v6 + 64) = v34[0];
    *(v6 + 72) = v26;
    *(v6 + 80) = 1;
    *(v6 + 81) = v28;
    *(v6 + 88) = v29;
    OUTLINED_FUNCTION_259();
    return;
  }

  if (v27 == *MEMORY[0x1E698AC98])
  {
    v28 = 1;
    goto LABEL_7;
  }

  if (v27 == *MEMORY[0x1E698AC88])
  {
    v28 = 2;
    goto LABEL_7;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  sub_18F0941AC();
  __break(1u);
}

id sub_18EFB4F94(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = v50 - v5;
  v6 = sub_18F09351C();
  v59 = OUTLINED_FUNCTION_7(v6);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18F0937FC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18F09354C();
  v18 = v17;
  v19 = MEMORY[0x1E69E7CC0];
  v56 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v55 = MEMORY[0x193AD89C0](v19);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v62[0] = sub_18F09354C();
  v62[1] = v20;
  v62[2] = 0;
  v62[3] = 0;
  v63 = 10;
  v21 = sub_18F0937AC();
  v23 = v22;

  sub_18F09352C();
  sub_18F042998(v62, v21, v23, v58, a2, v15, 0, 0);
  v24 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v25 = sub_18EF9307C();
  v26 = sub_18F09355C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v51 = v25;
    v52 = v18;
    v53 = v16;
    v61 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v28 = v59;
    v29 = *(v60 + 16);
    v30 = *(v60 + 80);
    v50[1] = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v32 = (v60 + 8);
    v60 += 16;
    v57 = *(v60 + 56);
    v58 = v29;
    v33 = v54;
    do
    {
      v58(v11, v31, v28);
      v34 = sub_18F09350C();
      v36 = v35;
      v37 = sub_18F09350C();
      v39 = v38;
      v40 = sub_18F0932BC();
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v40);
      objc_allocWithZone(LNStaticDeferredLocalizedString);

      v41 = sub_18EFB6CEC(v37, v39, v37, v39, 0, 0, v33);
      v42 = [objc_allocWithZone(LNDisplayRepresentation) initWithTitle:v41 subtitle:0 image:0];

      v43 = objc_allocWithZone(LNEnumCaseMetadata);
      v44 = v42;
      v28 = v59;
      sub_18EFB802C(v34, v36, v44);
      (*v32)(v11, v28);
      sub_18F0940FC();
      v45 = *(v61 + 16);
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v31 += v57;
      --v27;
    }

    while (v27);

    v46 = v61;
    v18 = v52;
    v16 = v53;
    v25 = v51;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v47 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  v48 = objc_allocWithZone(LNEnumMetadata);
  return sub_18F02CD3C(v16, v18, 0, 0xE000000000000000, v56, v55, v25, v46, 0, 0, 0, 0, 0, 0, 0, v47, 0);
}

uint64_t sub_18EFB5424(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_18F00F708(0, v5, 0);
  v6 = v19;
  v9 = sub_18F09375C();
  OUTLINED_FUNCTION_45(v9);
  v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v12 + 72);
  while (1)
  {
    a1(__src, v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(__dst, __src, sizeof(__dst));
    v19 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_18F00F708((v14 > 1), v15 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v15 + 1;
    memcpy((v6 + 88 * v15 + 32), __dst, 0x58uLL);
    v11 += v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18EFB5598()
{
  v2 = OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_0_16(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9158, &unk_18F0AA0D0);
  if ((OUTLINED_FUNCTION_6_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_18EFAF54C();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56) + 96 * v7;

    return sub_18F041858(v0, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_10();
    sub_18EFB5690(v14, v15, v16, v17, v18);
  }
}

void *sub_18EFB5690(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 96 * a1), __src, 0x60uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_18EFB5704()
{
  v1 = *(sub_18F09340C() + 16);

  if (v1)
  {
    v2 = sub_18F09340C();
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    v1 = sub_18EFB942C(sub_18EFB88EC, v4, v2);
  }

  return v1;
}

char *sub_18EFB57AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
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

id sub_18EFB58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v41 = sub_18F09373C();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SchemaLocalization();
  v12 = *a6;
  v43[0] = a4;
  v43[1] = a5;
  v43[2] = v12;
  v43[3] = 0;
  v44 = 2;
  sub_18F0937AC();
  v13 = sub_18F042E10(v43);
  v15 = v14;

  v16 = sub_18F09363C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v35[2] = v15;
    v35[3] = v13;
    v36 = v12;
    v37 = a6;
    v42 = MEMORY[0x1E69E7CC0];
    sub_18EFB5B40(0, v17, 0);
    v18 = v42;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 64);
    v35[1] = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v38 = *(v19 + 56);
    v39 = v20;
    v23 = (v19 - 8);
    do
    {
      v25 = v40;
      v24 = v41;
      v26 = v19;
      v39(v40, v22, v41);
      v27 = sub_18F09371C();
      v29 = v28;
      (*v23)(v25, v24);
      v42 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_18EFB5B40((v30 > 1), v31 + 1, 1);
        v18 = v42;
      }

      *(v18 + 16) = v31 + 1;
      v32 = v18 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v22 += v38;
      --v17;
      v19 = v26;
    }

    while (v17);

    v12 = v36;
    a6 = v37;
  }

  else
  {
  }

  v33 = objc_allocWithZone(LNActionSummaryString);
  result = sub_18EFB5B60();
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    *a6 = v12 + 1;
  }

  return result;
}

char *sub_18EFB5B40(char *a1, int64_t a2, char a3)
{
  result = sub_18EFB57AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_18EFB5B60()
{
  v1 = sub_18F093B5C();

  v2 = sub_18F093DBC();

  v3 = [v0 initWithFormatString:v1 parameterIdentifiers:v2];

  return v3;
}

uint64_t sub_18EFB5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18F0937FC();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = sub_18F09361C();
  v30 = v20;
  v31 = v19;
  sub_18EFB3E08(&v32);
  v28 = v33;
  v29 = v32;
  v27 = v34;

  v21 = sub_18EFB6310(a1, a2, a3);
  sub_18F0935EC();
  (*(v11 + 16))(v16, v18, v8);
  v22 = (*(v11 + 88))(v16, v8);
  if (v22 == *MEMORY[0x1E698AC90])
  {
    v23 = 0;
LABEL_7:
    (*(v11 + 8))(v18, v8);
    result = sub_18F09360C();
    v25 = v30;
    *a4 = v31;
    *(a4 + 8) = v25;
    v26 = v28;
    *(a4 + 16) = v29;
    *(a4 + 24) = v26;
    *(a4 + 32) = v27;
    *(a4 + 40) = a1;
    *(a4 + 48) = a2;
    *(a4 + 56) = v21;
    *(a4 + 64) = 1;
    *(a4 + 65) = v23;
    *(a4 + 72) = result;
    return result;
  }

  if (v22 == *MEMORY[0x1E698AC98])
  {
    v23 = 1;
    goto LABEL_7;
  }

  if (v22 == *MEMORY[0x1E698AC88])
  {
    v23 = 2;
    goto LABEL_7;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

void *sub_18EFB5F54(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 80 * a1), __src, 0x50uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_18EFB5FC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v41 = a3;
  v42 = a2;
  v43 = a1;
  v44 = a4;
  v4 = sub_18F0939AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18F0937FC();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  sub_18F0935EC();
  v16 = sub_18F09361C();
  v18 = v17;
  v19 = sub_18F09367C();
  v39 = v20;
  v40 = v19;
  sub_18F09368C();
  v38 = sub_18EFB22F0();
  (*(v5 + 8))(v8, v4);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v21 = sub_18F09367C();
  v45[0] = v16;
  v45[1] = v18;
  v45[2] = v21;
  v45[3] = v22;
  v46 = 9;
  v23 = sub_18F0937AC();
  v25 = v24;
  v27 = v36;
  v26 = v37;
  (*(v36 + 16))(v13, v15, v37);
  v28 = v42;

  v29 = sub_18F042998(v45, v23, v25, v43, v28, v13, 0, 0);
  LOBYTE(v25) = sub_18F09365C();
  v30 = sub_18F09366C();
  v32 = v31;
  v33 = objc_allocWithZone(LNPropertyMetadata);
  v34 = sub_18EFB67D0(v40, v39, v38, v29, 2, 0, 0, v25 & 1, v30, v32, 0, 0);
  result = (*(v27 + 8))(v15, v26);
  *v44 = v34;
  return result;
}

id sub_18EFB6310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v44 = sub_18F09387C();
  v6 = OUTLINED_FUNCTION_7(v44);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18F0937FC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18F09361C();
  v42 = v18;
  v43 = v17;
  v19 = MEMORY[0x1E69E7CC0];
  v41 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v40 = MEMORY[0x193AD89C0](v19);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v51[0] = sub_18F09361C();
  v51[1] = v20;
  v51[2] = 0;
  v51[3] = 0;
  v52 = 8;
  v21 = a3;
  v22 = sub_18F0937AC();
  v24 = v23;

  sub_18F0935EC();
  v25 = v22;
  v26 = v45;
  sub_18F042998(v51, v25, v24, v45, a2, v16, 0, 0);
  v27 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v39 = sub_18EF9307C();
  sub_18F0935DC();
  v46 = v26;
  v47 = a2;
  v48 = v21;
  v49 = v3;
  v38 = sub_18EFB6750(sub_18EFB5C90);

  v28 = sub_18F0935FC();
  type metadata accessor for LNSystemEntityProtocolIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB6910(&qword_1ED5FE770, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v29 = v44;
  v30 = sub_18F093A5C();
  v31 = 0;
  v32 = *(v28 + 16);
  v45 = v8 + 16;
  while (1)
  {
    if (v32 == v31)
    {

      v35 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
      v36 = objc_allocWithZone(LNEntityMetadata);
      return sub_18F03230C(v43, v42, 0, 0, 0xE000000000000000, v41, v40, v39, v38, 0, 0, 0, 0, v30, 0, 0, 0, 0, 0, 0, v35, 0, 0, 0);
    }

    if (v31 >= *(v28 + 16))
    {
      break;
    }

    (*(v8 + 16))(v12, v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, v29);
    v33 = sub_18EFB9CB8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v30;
    sub_18EFB9FB4(v33, sub_18F032750, 0, isUniquelyReferenced_nonNull_native, &v50);
    ++v31;
    (*(v8 + 8))(v12, v29);
    v30 = v50;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_18EFB67D0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (a2)
  {
    v19 = sub_18F093B5C();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_18F093B5C();
  }

  else
  {
    v20 = 0;
  }

  if (!a10)
  {
    v21 = 0;
    if (a12)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v21 = sub_18F093B5C();

  if (!a12)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = sub_18F093B5C();

LABEL_12:
  v23 = [v13 initWithIdentifier:v19 valueType:a3 title:a4 capabilities:a5 updateActionIdentifier:v20 optional:a8 & 1 spotlightAttributeKey:v21 spotlightCustomAttributeKey:v22];

  return v23;
}

uint64_t sub_18EFB6910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18EFB6958@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_18F0937FC();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = sub_18F09354C();
  v28 = v18;
  v29 = v17;
  sub_18EFB3E08(&v30);
  v26 = v31;
  v27 = v30;
  v25 = v32;

  v19 = sub_18EFB4F94(a1, a2);
  sub_18F09352C();
  (*(v9 + 16))(v14, v16, v6);
  v20 = (*(v9 + 88))(v14, v6);
  if (v20 == *MEMORY[0x1E698AC90])
  {
    v21 = 0;
LABEL_7:
    (*(v9 + 8))(v16, v6);
    result = sub_18F09353C();
    v23 = v28;
    *a3 = v29;
    *(a3 + 8) = v23;
    v24 = v26;
    *(a3 + 16) = v27;
    *(a3 + 24) = v24;
    *(a3 + 32) = v25;
    *(a3 + 40) = a1;
    *(a3 + 48) = a2;
    *(a3 + 56) = v19;
    *(a3 + 64) = 1;
    *(a3 + 65) = v21;
    *(a3 + 72) = result;
    return result;
  }

  if (v20 == *MEMORY[0x1E698AC98])
  {
    v21 = 1;
    goto LABEL_7;
  }

  if (v20 == *MEMORY[0x1E698AC88])
  {
    v21 = 2;
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

unint64_t sub_18EFB6CA8()
{
  result = qword_1ED5FF4D0;
  if (!qword_1ED5FF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF4D0);
  }

  return result;
}

id sub_18EFB6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_18F093B5C();

  if (a4)
  {
    v13 = sub_18F093B5C();

    if (a6)
    {
LABEL_3:
      v14 = sub_18F093B5C();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_18F0932BC();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v15) != 1)
  {
    v16 = sub_18F09324C();
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v17 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v16];

  return v17;
}

uint64_t sub_18EFB6E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_18EFB6E88(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_18EFB9084(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C8, &qword_18F0AC098);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_18EFB9084(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for LNValueTypeSpecificMetadataKey();
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = (v13[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    return sub_18EF914D4(a1, v14);
  }

  else
  {
    sub_18EFBB21C(v8, a2, a1, v13);

    return a2;
  }
}

uint64_t AssistantSchemaLibrary.__deallocating_deinit()
{
  AssistantSchemaLibrary.deinit();
  v0 = OUTLINED_FUNCTION_19_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *_s12LinkMetadata22AssistantSchemaLibraryCfd_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_18EFB7024(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  sub_18EFAF5BC(v48);
  v5 = v48[1];
  v6 = v48[3];
  v7 = v48[4];
  v38 = v48[5];
  v39 = v48[0];
  v8 = (v48[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v39 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v39 + 56) + 96 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x60uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB5BE0(__dst, v44);
    v38(&v45, __src);
    memcpy(v44, __src, sizeof(v44));
    sub_18EF82E14(v44, &qword_1EACB9150, &qword_18F0AB890);
    v17 = v46;
    if (!v46)
    {
LABEL_19:
      sub_18EFAE608();
    }

    v18 = v45;
    v19 = *v49;
    v21 = sub_18EFAF54C();
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9158, &unk_18F0AA0D0);
        sub_18F09418C();
      }
    }

    else
    {
      v26 = v49;
      sub_18EFB96D8(v24);
      v27 = *v26;
      v28 = sub_18EFAF54C();
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v21 = v28;
    }

    v40 = (v9 - 1) & v9;
    if (v25)
    {
      v30 = *v49;

      v31 = (*(v30 + 56) + 96 * v21);
      memcpy(v44, v31, 0x60uLL);
      memcpy(v31, v47, 0x60uLL);
      sub_18EFB5C3C(v44);
    }

    else
    {
      v32 = *v49;
      *(*v49 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v33 = (v32[6] + 16 * v21);
      *v33 = v18;
      v33[1] = v17;
      memcpy((v32[7] + 96 * v21), v47, 0x60uLL);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_22;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v6 = v10;
    v7 = v40;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB7350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  sub_18EFAF5BC(v48);
  v5 = v48[1];
  v6 = v48[3];
  v7 = v48[4];
  v38 = v48[5];
  v39 = v48[0];
  v8 = (v48[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v39 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v39 + 56) + 80 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x50uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB6BF8(__dst, v44);
    v38(&v45, __src);
    memcpy(v44, __src, sizeof(v44));
    sub_18EF82E14(v44, &qword_1EACB9130, &qword_18F0AB8B0);
    v17 = v46;
    if (!v46)
    {
LABEL_19:
      sub_18EFAE608();
    }

    v18 = v45;
    v19 = *v49;
    v21 = sub_18EFAF54C();
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
        sub_18F09418C();
      }
    }

    else
    {
      v26 = v49;
      sub_18EFB9958(v24, a4 & 1);
      v27 = *v26;
      v28 = sub_18EFAF54C();
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v21 = v28;
    }

    v40 = (v9 - 1) & v9;
    if (v25)
    {
      v30 = *v49;

      v31 = (*(v30 + 56) + 80 * v21);
      memcpy(v44, v31, 0x50uLL);
      memcpy(v31, v47, 0x50uLL);
      sub_18EFB6C54(v44);
    }

    else
    {
      v32 = *v49;
      *(*v49 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v33 = (v32[6] + 16 * v21);
      *v33 = v18;
      v33[1] = v17;
      memcpy((v32[7] + 80 * v21), v47, 0x50uLL);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_22;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v6 = v10;
    v7 = v40;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void *AssistantSchemaLibrary.init(intents:entities:enums:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_18EFB76CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v7, a1 + 2, sizeof(v7));
  result = sub_18EFB7AD8(a2 + 2, v3, v4, v7);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18EFB7744(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  sub_18EFAF5BC(v48);
  v5 = v48[1];
  v6 = v48[3];
  v7 = v48[4];
  v38 = v48[5];
  v39 = v48[0];
  v8 = (v48[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v39 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v39 + 56) + 80 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x50uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB62B4(__dst, v44);
    v38(&v45, __src);
    memcpy(v44, __src, sizeof(v44));
    sub_18EF82E14(v44, &qword_1EACB9140, &qword_18F0AB8A0);
    v17 = v46;
    if (!v46)
    {
LABEL_19:
      sub_18EFAE608();
    }

    v18 = v45;
    v19 = *v49;
    v21 = sub_18EFAF54C();
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
        sub_18F09418C();
      }
    }

    else
    {
      v26 = v49;
      sub_18EFB9C18(v24, a4 & 1);
      v27 = *v26;
      v28 = sub_18EFAF54C();
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v21 = v28;
    }

    v40 = (v9 - 1) & v9;
    if (v25)
    {
      v30 = *v49;

      v31 = (*(v30 + 56) + 80 * v21);
      memcpy(v44, v31, 0x50uLL);
      memcpy(v31, v47, 0x50uLL);
      sub_18EFB677C(v44);
    }

    else
    {
      v32 = *v49;
      *(*v49 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v33 = (v32[6] + 16 * v21);
      *v33 = v18;
      v33[1] = v17;
      memcpy((v32[7] + 80 * v21), v47, 0x50uLL);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_22;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v6 = v10;
    v7 = v40;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB7A70@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, _BYTE *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  memcpy(v9, a1 + 2, sizeof(v9));
  result = a2(a3 + 2, v5, v6, v9);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_18EFB7AD8(void *a1, uint64_t a2, int a3, void *__src)
{
  memcpy(a1, __src, 0x60uLL);

  sub_18EFB5BE0(__src, &v7);
  return a2;
}

id sub_18EFB7B38()
{
  v1 = v0;
  v2 = sub_18F0936CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E698ABC8])
  {
    v8 = &selRef_accelerationValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC18])
  {
    v8 = &selRef_angleValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC08])
  {
    v8 = &selRef_areaValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABE8])
  {
    v8 = &selRef_concentrationMassValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABB0])
  {
    v8 = &selRef_dispersionValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC48])
  {
    v8 = &selRef_durationValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABD0])
  {
    v8 = &selRef_electricChargeValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABE0])
  {
    v8 = &selRef_electricCurrentValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC00])
  {
    v8 = &selRef_electricPotentialDifferenceValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABF0])
  {
    v8 = &selRef_electricResistanceValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC30])
  {
    v8 = &selRef_energyValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC58])
  {
    v8 = &selRef_frequencyValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABD8])
  {
    v8 = &selRef_fuelEfficiencyValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABB8])
  {
    v8 = &selRef_illuminanceValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABF8])
  {
    v8 = &selRef_informationStorageValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC38])
  {
    v8 = &selRef_lengthValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC10])
  {
    v8 = &selRef_massValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC20])
  {
    v8 = &selRef_powerValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC50])
  {
    v8 = &selRef_pressureValueType;
  }

  else if (v7 == *MEMORY[0x1E698AC28])
  {
    v8 = &selRef_speedValueType;
  }

  else if (v7 == *MEMORY[0x1E698ABC0])
  {
    v8 = &selRef_temperatureValueType;
  }

  else
  {
    if (v7 != *MEMORY[0x1E698AC40])
    {
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD000000000000019, 0x800000018F0B0D90);
      sub_18F09414C();
      result = sub_18F0941AC();
      __break(1u);
      return result;
    }

    v8 = &selRef_volumeValueType;
  }

  v9 = [objc_opt_self() *v8];

  return v9;
}

uint64_t sub_18EFB7FC4(void *a1, uint64_t a2, int a3, void *__src, void (*a5)(void *, uint64_t *))
{
  memcpy(a1, __src, 0x50uLL);

  a5(__src, &v9);
  return a2;
}

id sub_18EFB802C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F093B5C();

  v6 = [v3 initWithIdentifier:v5 displayRepresentation:a3];

  return v6;
}

void sub_18EFB8090(uint64_t a1@<X0>, id *a2@<X8>)
{
  v4 = sub_18F09337C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E698AB48])
  {
    (*(v5 + 96))(v8, v4);
    sub_18EFBB5B4(v8, v16);
    sub_18EF825F4(0, &unk_1EACB7078, off_1E72B0030);
    __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    v10 = sub_18F09392C();
    *a2 = sub_18EFBB5CC(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else if (v9 == *MEMORY[0x1E698AB30])
  {
    sub_18EFB84D4();
    if ((v12 & 1) != 0 && (v13 = [objc_opt_self() openEntitySystemProtocol], v14 = objc_msgSend(objc_allocWithZone(LNTraitInjectedSystemProtocol), sel_initWithProtocol_, v13), v13, v14))
    {
      *a2 = v14;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    (*(v5 + 8))(v8, v4);
  }
}

void sub_18EFB82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14)
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_0();
  v16 = *v15;
  v17 = *(*v15 + 24);
  OUTLINED_FUNCTION_15_0(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_37_0();
  if (!*(v16 + 16))
  {
LABEL_29:

LABEL_30:
    *v14 = v22;
    OUTLINED_FUNCTION_35_0();
    return;
  }

  v55 = v14;
  v56 = v16;
  v23 = 0;
  v24 = v16;
  OUTLINED_FUNCTION_0_7();
  v28 = (v27 + 63) >> 6;
  v29 = v22 + 64;
  if ((v26 & v25) == 0)
  {
LABEL_4:
    v31 = v23;
    while (1)
    {
      v23 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v23 >= v28)
      {
        break;
      }

      ++v31;
      if (*(v24 + 8 * v23))
      {
        OUTLINED_FUNCTION_229();
        a14 = v33 & v32;
        goto LABEL_9;
      }
    }

    if ((a13 & 1) == 0)
    {

      v14 = v55;
      goto LABEL_30;
    }

    v49 = *(v16 + 32);
    OUTLINED_FUNCTION_9_1();
    v14 = v55;
    if (v51 != v52)
    {
      OUTLINED_FUNCTION_11_1(v50);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v53, v54, v24);
    }

    *(v16 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_0();
LABEL_9:
    v34 = v30 | (v23 << 6);
    v35 = *(v16 + 56);
    v36 = *(*(v16 + 48) + 8 * v34);
    v37 = *(v35 + 8 * v34);
    if ((a13 & 1) == 0)
    {
      v38 = v36;
      swift_unknownObjectRetain();
    }

    v39 = *(v22 + 40);
    sub_18F093B8C();
    sub_18F09452C();
    sub_18F093C1C();
    v40 = sub_18F09456C();

    v41 = *(v29 + 8 * ((v40 & ~(-1 << *(v22 + 32))) >> 6));
    OUTLINED_FUNCTION_17_0();
    if (v42)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_21:
    OUTLINED_FUNCTION_2_4();
    *(v29 + v46) |= v47;
    *(*(v22 + 48) + 8 * v48) = v36;
    *(*(v22 + 56) + 8 * v48) = v37;
    ++*(v22 + 16);
    v16 = v56;
    if (!a14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v42)
    {
      if (v44)
      {
        break;
      }
    }

    if (v43 == v45)
    {
      v43 = 0;
    }

    if (*(v29 + 8 * v43) != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_51()
{
  result = _s14CodableWrapperVMa_0(0);
  v1 = *(result - 8);
  return result;
}

void sub_18EFB84D4()
{
  OUTLINED_FUNCTION_260();
  v0 = sub_18F0939AC();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_42();
  v54 = v6 - v7;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - v9;
  OUTLINED_FUNCTION_237();
  v55 = sub_18F09373C();
  v10 = OUTLINED_FUNCTION_7(v55);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v48 - v19;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v48 - v21;
  OUTLINED_FUNCTION_237();
  v22 = sub_18F09337C();
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22();
  v30 = v29 - v28;
  v31 = sub_18F09340C();
  (*(v25 + 104))(v30, *MEMORY[0x1E698AB30], v22);
  v56[2] = v30;
  v32 = sub_18EFB9508(sub_18EFB94E8, v56, v31);

  (*(v25 + 8))(v30, v22);
  if (v32)
  {
    v49 = v3;
    v50 = v0;
    v33 = sub_18F0933BC();
    v34 = 0;
    v35 = *(v33 + 16);
    while (1)
    {
      if (v35 == v34)
      {

        goto LABEL_14;
      }

      if (v34 >= *(v33 + 16))
      {
        break;
      }

      (*(v12 + 16))(v17, v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v55);
      if (sub_18F09371C() == 0x746567726174 && v36 == 0xE600000000000000)
      {

LABEL_13:

        v39 = *(v12 + 32);
        v40 = v51;
        v41 = v55;
        v39(v51, v17, v55);
        v42 = v52;
        v39(v52, v40, v41);
        v43 = v53;
        sub_18F09372C();
        v45 = v49;
        v44 = v50;
        v46 = v54;
        (*(v49 + 104))(v54, *MEMORY[0x1E698ACE8], v50);
        sub_18F09399C();
        v47 = *(v45 + 8);
        v47(v46, v44);
        v47(v43, v44);
        (*(v12 + 8))(v42, v41);
        goto LABEL_14;
      }

      v38 = sub_18F09444C();

      if (v38)
      {
        goto LABEL_13;
      }

      (*(v12 + 8))(v17, v55);
      ++v34;
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_259();
  }
}

uint64_t sub_18EFB8908(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  sub_18EFAC3CC(a1, a2, a3, v51);
  v8 = v51[1];
  v9 = v53;
  v10 = v54;
  v46 = v55;
  v47 = v51[0];
  v42 = v52;
  v11 = (v52 + 64) >> 6;
  v44 = a1;

  v43 = a3;

  if (v10)
  {
    while (1)
    {
      v48 = a4;
      v12 = v9;
LABEL_8:
      v14 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
      v15 = *(*(v47 + 56) + v14);
      v50[0] = *(*(v47 + 48) + v14);
      v50[1] = v15;
      v16 = v50[0];
      swift_unknownObjectRetain();
      v46(v49, v50);
      swift_unknownObjectRelease();

      v18 = v49[0];
      v17 = v49[1];
      v19 = *v56;
      v25 = sub_18EFB9084(v49[0]);
      v26 = *(v19 + 16);
      v27 = (v20 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v20;
      if (*(v19 + 24) >= v28)
      {
        if ((v48 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9448, &qword_18F0AAA58);
          sub_18F09418C();
        }
      }

      else
      {
        v30 = v56;
        sub_18EFB82B8(v28, v48 & 1, &unk_1EACB9450, &unk_18F09BD58, v21, v22, v23, v24, v41, v42, v43, v44, SBYTE4(v44), v45);
        v31 = *v30;
        v32 = sub_18EFB9084(v18);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v10 &= v10 - 1;
      v34 = *v56;
      if (v29)
      {

        v35 = v34[7];
        v36 = *(v35 + 8 * v25);
        *(v35 + 8 * v25) = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        *(v34[6] + 8 * v25) = v18;
        *(v34[7] + 8 * v25) = v17;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v34[2] = v39;
      }

      a4 = 1;
      v9 = v12;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_18EFAE608();
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        v48 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for LNSystemProtocolIdentifier();
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB8BA0()
{
  v1 = v0;
  v2 = sub_18F09337C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E698AB48])
  {
    type metadata accessor for LNSystemProtocolIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8();
    v8 = sub_18F093A5C();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E698AB30])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierOpenEntity;
LABEL_7:
    v12 = *v11;
    *(inited + 32) = *v11;
    v13 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
    v14 = v12;
    *(v10 + 40) = [v13 init];
    type metadata accessor for LNSystemProtocolIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8();
    return sub_18F093A5C();
  }

  if (v7 == *MEMORY[0x1E698AB38])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierDeleteEntity;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E698AB40])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_18F09BCC0;
    *(v16 + 32) = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
    sub_18EFBB55C();
    v17 = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
    *(v16 + 40) = sub_18EFBB5A0(&unk_1F02E2750);
    type metadata accessor for LNSystemProtocolIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8();
    return sub_18F093A5C();
  }

  if (v7 == *MEMORY[0x1E698AB18])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierAudioStarting;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E698AB20])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierAudioRecording;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E698AB10])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierSessionStarting;
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x1E698AB28])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v10 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v11 = LNSystemProtocolIdentifierURLRepresentable;
    goto LABEL_7;
  }

  v18[42] = 0;
  v18[43] = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ELL, 0x800000018F0AFA20);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

id sub_18EFB908C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFB90C8(&v5, *a1, *(a1 + 8));
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_18EFB90C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  v3 = a2;
  swift_unknownObjectRetain();
  return v3;
}

BOOL sub_18EFB9124()
{
  v0 = sub_18F09337C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E698AB30], v0);
  v5 = sub_18F09336C();
  (*(v1 + 8))(v4, v0);
  result = 1;
  if (v5)
  {
    sub_18EFB84D4();
    if (v6)
    {
      return 0;
    }
  }

  return result;
}

void sub_18EFB9244()
{
  v1 = *v0;
  sub_18EFB929C();
  *v0 = v2;
}

void sub_18EFB929C()
{
  OUTLINED_FUNCTION_260();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_74();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_238();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v11 = v1;
  }

  v14 = *(v9 + 16);
  if (v11 <= v14)
  {
    v15 = *(v9 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v16 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v18 = v8(0);
  OUTLINED_FUNCTION_45(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v14;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_18:
  v26 = v8(0);
  OUTLINED_FUNCTION_106(v26);
  v28 = *(v27 + 80);
  OUTLINED_FUNCTION_149();
  if (v10)
  {
    sub_18EFBB490(v9 + v29, v14, v23 + v29, v6);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_259();
}

uint64_t sub_18EFB9458()
{
  sub_18F09337C();
  sub_18EFB3860(&qword_1EACB6CA0, MEMORY[0x1E698AB50]);
  return sub_18F093AAC() & 1;
}

BOOL sub_18EFB9508(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_18F09337C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_18EFB95E8()
{
  result = qword_1ED5FFA10;
  if (!qword_1ED5FFA10)
  {
    type metadata accessor for LNSystemProtocolIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FFA10);
  }

  return result;
}

uint64_t AssistantSchemaIdentifier.kind.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_108();
}

uint64_t AssistantSchemaIdentifier.domain.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_108();
}

void sub_18EFB96D8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9480, &qword_18F0AAA78);
  OUTLINED_FUNCTION_22_0();
  HIDWORD(v38) = v3;
  v4 = sub_18F0941DC();
  if (!*(v2 + 16))
  {
LABEL_30:

LABEL_31:
    *v1 = v4;
    return;
  }

  v37 = v1;
  v5 = 0;
  OUTLINED_FUNCTION_0_7();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_25_0();
  v9 = v4 + 64;
  if (!v8)
  {
LABEL_4:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v11;
      if (*(v2 + 8 * v5))
      {
        OUTLINED_FUNCTION_229();
        v8 = v13 & v12;
        goto LABEL_9;
      }
    }

    if ((v38 & 0x100000000) == 0)
    {

      v1 = v37;
      goto LABEL_31;
    }

    v31 = *(v2 + 32);
    OUTLINED_FUNCTION_9_1();
    v1 = v37;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_11_1(v32);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v35, v36, v2);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_30_0();
LABEL_9:
    OUTLINED_FUNCTION_23_0(v10 | (v5 << 6));
    if ((v38 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_29_0(v14);
      v39 = *(v17 + 48);
      v41 = *(v17 + 64);
      v48 = *(v17 + 80);
      v49 = *(v17 + 81);
      v50 = *(v17 + 88);
    }

    else
    {
      memcpy(__dst, (v15 + v14 * v16), sizeof(__dst));
      OUTLINED_FUNCTION_26_0();
      v46 = *(&__dst[0] + 1);
      v47 = *&__dst[0];
      v43 = __dst[1];
      v44 = __dst[2];
      v39 = __dst[3];
      v41 = __dst[4];

      sub_18EFB5BE0(__dst, v51);
    }

    v18 = *(v4 + 40);
    sub_18F09452C();
    sub_18F093C1C();
    v19 = sub_18F09456C();
    OUTLINED_FUNCTION_6_2(v19);
    v21 = *(v9 + 8 * v20);
    OUTLINED_FUNCTION_17_0();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_22:
    OUTLINED_FUNCTION_2_4();
    v27 = *(v9 + v26);
    OUTLINED_FUNCTION_24_0(v28);
    OUTLINED_FUNCTION_27_0(v29, v37, v38, v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47);
    *(v30 + 48) = v40;
    *(v30 + 64) = v42;
    *(v30 + 80) = v48;
    *(v30 + 81) = v49;
    *(v30 + 88) = v50;
    OUTLINED_FUNCTION_13_1();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v9 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_18EFB9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, char *))
{
  v51 = a5;
  OUTLINED_FUNCTION_10_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_22_0();
  HIDWORD(v52) = v7;
  v10 = sub_18F0941DC();
  if (!*(v6 + 16))
  {
LABEL_33:

LABEL_34:
    *v5 = v10;
    return;
  }

  v50 = v5;
  v11 = 0;
  v12 = (v6 + 64);
  v13 = 1 << *(v6 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v6 + 64);
  OUTLINED_FUNCTION_25_0();
  v16 = v10 + 8;
  v17 = 80;
  if (!v15)
  {
LABEL_7:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v5)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_229();
        v15 = v21 & v20;
        goto LABEL_12;
      }
    }

    if ((v52 & 0x100000000) == 0)
    {

      v5 = v50;
      goto LABEL_34;
    }

    v43 = *(v6 + 32);
    OUTLINED_FUNCTION_9_1();
    v5 = v50;
    if (v45 != v46)
    {
      *v12 = -1 << v44;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v47, v48, v6 + 64);
    }

    *(v6 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v22 = v18 | (v11 << 6);
    if ((v52 & 0x100000000) != 0)
    {
      v23 = *(v6 + 56);
      v24 = (*(v6 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      OUTLINED_FUNCTION_29_0(v22);
      v53 = *(v27 + 48);
      v60 = *(v27 + 64);
      v61 = *(v27 + 65);
      v62 = *(v27 + 72);
    }

    else
    {
      v28 = (*(v6 + 48) + 16 * v22);
      v25 = *v28;
      v26 = v28[1];
      memcpy(__dst, (*(v6 + 56) + v22 * v17), sizeof(__dst));
      OUTLINED_FUNCTION_26_0();
      v58 = *(&__dst[0] + 1);
      v59 = *&__dst[0];
      v55 = __dst[1];
      v56 = __dst[2];
      v53 = __dst[3];

      v51(__dst, v63);
    }

    v29 = v10[5];
    sub_18F09452C();
    sub_18F093C1C();
    v30 = sub_18F09456C();
    OUTLINED_FUNCTION_6_2(v30);
    v32 = v16[v31];
    OUTLINED_FUNCTION_17_0();
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_25:
    OUTLINED_FUNCTION_2_4();
    *(v16 + v37) |= v38;
    v40 = (v10[6] + 16 * v39);
    *v40 = v25;
    v40[1] = v26;
    v41 = v10[7];
    OUTLINED_FUNCTION_27_0(v39, v49, v50, v51, v52, v53, *(&v53 + 1), v55, v56, v57, v58, v59);
    *(v42 + 48) = v54;
    *(v42 + 64) = v60;
    *(v42 + 65) = v61;
    *(v42 + 72) = v62;
    OUTLINED_FUNCTION_13_1();
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_19_0(v34);
    if (!v33)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

id sub_18EFB9C40(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequirement:a1 condition:a2 behavior:a3 message:a4];

  return v7;
}

uint64_t sub_18EFB9CB8()
{
  v1 = v0;
  v2 = sub_18F09387C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E698ACE0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F09BCC0;
    *(inited + 32) = @"com.apple.appintents.entity.PersistentFileIdentifiable";
    sub_18EFBFCD4();
    v9 = @"com.apple.appintents.entity.PersistentFileIdentifiable";
    v10 = sub_18EFBFC64();
LABEL_8:
    *(inited + 40) = v10;
    type metadata accessor for LNSystemEntityProtocolIdentifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFBA23C();
    return sub_18F093A5C();
  }

  if (v7 == *MEMORY[0x1E698ACD0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    v11 = swift_initStackObject();
    inited = v11;
    *(v11 + 16) = xmmword_18F09BCC0;
    v12 = &LNSystemEntityProtocolIdentifierUniqueEntity;
LABEL_7:
    v13 = *v12;
    *(v11 + 32) = *v12;
    v14 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
    v15 = v13;
    v10 = [v14 init];
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x1E698ACD8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    v11 = swift_initStackObject();
    inited = v11;
    *(v11 + 16) = xmmword_18F09BCC0;
    v12 = &LNSystemEntityProtocolIdentifierURLRepresentable;
    goto LABEL_7;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ELL, 0x800000018F0B0260);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB9FB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  sub_18EFAF5BC(v53);
  v8 = v53[1];
  v9 = v55;
  v10 = v56;
  v48 = v57;
  v49 = v53[0];
  v44 = v54;
  v11 = (v54 + 64) >> 6;
  v46 = a1;

  v45 = a3;

  if (v10)
  {
    while (1)
    {
      v50 = a4;
      v12 = v9;
LABEL_8:
      v14 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
      v15 = *(*(v49 + 56) + v14);
      v52[0] = *(*(v49 + 48) + v14);
      v52[1] = v15;
      v16 = v52[0];
      swift_unknownObjectRetain();
      v48(v51, v52);
      swift_unknownObjectRelease();

      v18 = v51[0];
      v17 = v51[1];
      v19 = *v58;
      v27 = sub_18EFB9084(v51[0]);
      v28 = *(v19 + 16);
      v29 = (v20 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v20;
      if (*(v19 + 24) >= v30)
      {
        if ((v50 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9630, &qword_18F0AB8E0);
          sub_18F09418C();
        }
      }

      else
      {
        v32 = v58;
        sub_18EFB9FA0(v30, v50 & 1, v21, v22, v23, v24, v25, v26, v43, v44, v45, v46, SBYTE4(v46), v47);
        v33 = *v32;
        v34 = sub_18EFB9084(v18);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v27 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v58;
      if (v31)
      {

        v37 = v36[7];
        v38 = *(v37 + 8 * v27);
        *(v37 + 8 * v27) = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        *(v36[6] + 8 * v27) = v18;
        *(v36[7] + 8 * v27) = v17;
        v39 = v36[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v36[2] = v41;
      }

      a4 = 1;
      v9 = v12;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_18EFAE608();
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for LNSystemEntityProtocolIdentifier();
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

unint64_t sub_18EFBA23C()
{
  result = qword_1ED5FE770;
  if (!qword_1ED5FE770)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE770);
  }

  return result;
}

id sub_18EFBA294()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v1 = sub_18F093DBC();

  v2 = [v0 initWithMemberValueTypes_];

  return v2;
}

uint64_t sub_18EFBA344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18EFBA3B4()
{
  v0 = sub_18F09351C();
  v1 = OUTLINED_FUNCTION_7(v0);
  v144 = v2;
  v145 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_22();
  v7 = v6 - v5;
  v8 = sub_18F09356C();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22();
  v16 = v15 - v14;
  v139 = sub_18F0932BC();
  v17 = OUTLINED_FUNCTION_7(v139);
  v138 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_42();
  v136 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v135 - v24;
  v25 = sub_18F09314C();
  v26 = OUTLINED_FUNCTION_7(v25);
  v141 = v27;
  v142 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_42();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v140 = &v135 - v34;
  v35 = sub_18F0939AC();
  v36 = OUTLINED_FUNCTION_7(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_42();
  v143 = v41 - v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v135 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v135 - v47;
  sub_18F0938EC();
  v49 = (*(v38 + 88))(v46, v35);
  if (v49 != *MEMORY[0x1E698AD78])
  {
    if (v49 == *MEMORY[0x1E698ADA0])
    {
      sub_18F0938FC();
      v57 = v150;
      v58 = OUTLINED_FUNCTION_1_4();
      v60 = __swift_project_boxed_opaque_existential_1Tm(v58, v59);
      v147 = v57;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v146);
      (*(*(v57 - 8) + 16))(boxed_opaque_existential_0, v60, v57);
      v62 = [objc_opt_self() stringValueType];
      v63 = objc_allocWithZone(LNValue);
      v56 = sub_18EFBB1A4(&v146, v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      (*(v38 + 8))(v46, v35);
      return v56;
    }

    v64 = v49 == *MEMORY[0x1E698AD88] || v49 == *MEMORY[0x1E698AD58];
    v65 = v38;
    if (v64)
    {
      v66 = *(v38 + 96);
      v67 = v35;
      v66(v46, v35);
      v68 = *v46;
      v69 = swift_projectBox();
      (*(v65 + 16))(v48, v69, v35);

      OUTLINED_FUNCTION_4_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C8, &qword_18F0AA3C0);
      swift_dynamicCast();
      v70 = v147;
      v71 = v148;
      v72 = __swift_project_boxed_opaque_existential_1Tm(&v146, v147);
      v73 = MEMORY[0x1EEE9AC00](v72);
      *(&v135 - 2) = v48;
      MEMORY[0x1EEE9AC00](v73);
      *(&v135 - 4) = v70;
      *(&v135 - 3) = v71;
      *(&v135 - 2) = sub_18F024828;
      *(&v135 - 1) = v74;
      sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
      v75 = *(v71 + 8);
      v76 = sub_18F093D3C();
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8888, &qword_18F0A1448);
      v149[0] = v76;
      v77 = v143;
      sub_18F0938EC();
      sub_18EFB22F0();
      v78 = *(v65 + 8);
      v78(v77, v67);
      v79 = objc_allocWithZone(LNValue);
      v80 = OUTLINED_FUNCTION_1_4();
      v56 = sub_18EFBB1A4(v80, v81);
      __swift_destroy_boxed_opaque_existential_1Tm(&v146);
      v82 = v48;
    }

    else
    {
      v67 = v35;
      if (v49 == *MEMORY[0x1E698AD48])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        swift_dynamicCast();
        v83 = sub_18EF825F4(0, &qword_1EACB92D8, off_1E72B0188);
        v84 = sub_18F024314();
        v150 = v83;
        OUTLINED_FUNCTION_7_1(v84);
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v85(v83, v67);
        v86 = objc_allocWithZone(LNValue);
        v87 = OUTLINED_FUNCTION_1_4();
        return sub_18EFBB1A4(v87, v88);
      }

      if (v49 == *MEMORY[0x1E698AD38])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        v89 = v140;
        v90 = v142;
        swift_dynamicCast();
        v91 = sub_18EF825F4(0, &qword_1EACB92E0, 0x1E696AAB0);
        v92 = v141;
        (*(v141 + 16))(v32, v89, v90);
        v93 = sub_18F093EFC();
        v150 = v91;
        OUTLINED_FUNCTION_7_1(v93);
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v94(v35, v35);
        v95 = objc_allocWithZone(LNValue);
        v96 = OUTLINED_FUNCTION_1_4();
        v56 = sub_18EFBB1A4(v96, v97);
        (*(v92 + 8))(v89, v90);
        return v56;
      }

      if (v49 == *MEMORY[0x1E698AD08] || v49 == *MEMORY[0x1E698ADB8])
      {
        OUTLINED_FUNCTION_4_3();
        v99 = v150;
        v100 = OUTLINED_FUNCTION_1_4();
        v102 = __swift_project_boxed_opaque_existential_1Tm(v100, v101);
        v48 = type metadata accessor for LNCodableValue(0);
        v103 = *(*(v99 - 8) + 64);
        MEMORY[0x1EEE9AC00](v48);
        OUTLINED_FUNCTION_22();
        v106 = v105 - v104;
        (*(v107 + 16))(v105 - v104, v102, v99);
        v108 = LNCodableValue.init<A>(_:)(v106, v99);
        __swift_destroy_boxed_opaque_existential_1Tm(v149);
        v150 = v48;
LABEL_22:
        v149[0] = v108;
        v109 = v108;
        OUTLINED_FUNCTION_5_1();
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v110(v48, v67);
        v111 = objc_allocWithZone(LNValue);
        v112 = OUTLINED_FUNCTION_1_4();
        v56 = sub_18EFBB1A4(v112, v113);

        return v56;
      }

      if (v49 == *MEMORY[0x1E698AD80])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        v114 = v137;
        v115 = v139;
        swift_dynamicCast();
        v116 = sub_18EF825F4(0, &qword_1EACB87C0, 0x1E696E840);
        v117 = v138;
        v118 = v136;
        (*(v138 + 16))(v136, v114, v115);
        v119 = sub_18F024388(v118, 0, 0, 0, 0);
        v150 = v116;
        v149[0] = v119;
        v120 = v119;
        OUTLINED_FUNCTION_5_1();
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v121(v48, v67);
        v122 = objc_allocWithZone(LNValue);
        v123 = OUTLINED_FUNCTION_1_4();
        v56 = sub_18EFBB1A4(v123, v124);

        (*(v117 + 8))(v114, v115);
        return v56;
      }

      if (v49 == *MEMORY[0x1E698AD10])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        swift_dynamicCast();
        v126 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
        v127 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
        v108 = sub_18F024850(v126);
        v150 = sub_18EF825F4(0, &qword_1EACB92D0, 0x1E696E7E8);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_3();
      v128 = v150;
      v129 = OUTLINED_FUNCTION_1_4();
      v131 = __swift_project_boxed_opaque_existential_1Tm(v129, v130);
      v147 = v128;
      v132 = __swift_allocate_boxed_opaque_existential_0(&v146);
      (*(*(v128 - 8) + 16))(v132, v131, v128);
      OUTLINED_FUNCTION_5_1();
      v133 = sub_18EFB22F0();
      v78 = *(v65 + 8);
      v78(v48, v67);
      v134 = objc_allocWithZone(LNValue);
      v56 = sub_18EFBB1A4(&v146, v133);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      v82 = v46;
    }

    v78(v82, v67);
    return v56;
  }

  (*(v38 + 96))(v46, v35);
  (*(v11 + 32))(v16, v46, v8);
  sub_18F0938FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
  v50 = v145;
  swift_dynamicCast();
  v51 = sub_18F09350C();
  v150 = MEMORY[0x1E69E6158];
  v149[0] = v51;
  v149[1] = v52;
  sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);
  sub_18F09354C();
  sub_18EFBB130();
  v53 = objc_allocWithZone(LNValue);
  v54 = OUTLINED_FUNCTION_1_4();
  v56 = sub_18EFBB1A4(v54, v55);
  (*(v11 + 8))(v16, v8);
  (*(v144 + 8))(v7, v50);
  return v56;
}

id sub_18EFBB130()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F093B5C();

  v2 = [v0 initWithEnumerationIdentifier_];

  return v2;
}

id sub_18EFBB1A4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v5 = [v2 initWithValue:sub_18F09443C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

_OWORD *sub_18EFBB21C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_18EF914D4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_18EFBB284()
{
  result = qword_1ED5FF088;
  if (!qword_1ED5FF088)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF088);
  }

  return result;
}

id sub_18EFBB2DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    sub_18EFB6E2C(*(v3 + 56) + 32 * v10, &v16);
    *&v19[0] = v11;
    sub_18EF914D4(&v16, (v19 + 8));
    result = v11;
    v13 = *&v19[0];
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v15 = v1[5];
      v14 = v1[6];
      v16 = v13;
      v17 = *(v19 + 8);
      v18 = *(&v19[1] + 8);
      v15(&v16);
      return sub_18EF82E14(&v16, &qword_1EACB8868, &qword_18F0A1430);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        memset(v19, 0, 40);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_18EFBB41C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFBB450((a2 + 1), *a1, (a1 + 1));
  *a2 = result;
  return result;
}

id sub_18EFBB450(uint64_t a1, void *a2, uint64_t a3)
{
  sub_18EFB6E2C(a3, a1);

  return a2;
}

uint64_t sub_18EFBB490(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_115();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_36(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_292();

    return MEMORY[0x1EEE6BD00](v14);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_292();

    return MEMORY[0x1EEE6BCF8](v13);
  }

  return result;
}

unint64_t sub_18EFBB55C()
{
  result = qword_1ED5FD150;
  if (!qword_1ED5FD150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FD150);
  }

  return result;
}

uint64_t sub_18EFBB5B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_18EFBB69C(uint64_t a1, void *a2)
{
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v4 = sub_18F093DBC();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

id sub_18EFBB720()
{
  v1 = sub_18F093B5C();

  sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  v2 = sub_18F093DBC();

  v3 = [v0 initWithParameterIdentifier:v1 cases:v2];

  return v3;
}

unint64_t sub_18EFBB7BC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_18EFBB7E0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue:a1 configuration:a2];

  return v4;
}

uint64_t sub_18EFBB83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18EFBB8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9658, &qword_18F0AB918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18EFBB90C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_18F093B5C();

  v8 = [v4 initWithParameterIdentifier:v7 comparisonOperator:a3 value:a4];

  return v8;
}

uint64_t sub_18EFBB980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96B0, &unk_18F0ABC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18EFBBA78()
{
  sub_18F0936AC();
  v0 = OUTLINED_FUNCTION_0_12();
  sub_18EFBBB3C(v0);
  sub_18F093F4C();

  sub_18F0936AC();
  v1 = OUTLINED_FUNCTION_0_12();
  sub_18EFBBBFC(v1, v2, v3);
  sub_18EFBBCD0();

  sub_18F093C5C();

  sub_18EFBBD24();
  return sub_18EFBB130();
}

uint64_t sub_18EFBBB3C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_18F093C4C();
    v1 = sub_18F093D2C();

    return v1;
  }

  return result;
}

unint64_t sub_18EFBBBFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_18F093C4C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_18F093D2C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18EFBBCD0()
{
  result = qword_1EACB6C80;
  if (!qword_1EACB6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C80);
  }

  return result;
}

unint64_t sub_18EFBBD24()
{
  result = qword_1ED5FE070;
  if (!qword_1ED5FE070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FE070);
  }

  return result;
}

unint64_t sub_18EFBBD74()
{
  result = qword_1ED5FEBF8;
  if (!qword_1ED5FEBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    sub_18EF8558C(&unk_1ED5FF230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBF8);
  }

  return result;
}

void *sub_18EFBBE30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFBD04C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x98uLL);
  }

  return result;
}

void LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_406();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  a10 = *MEMORY[0x1E69E9840];
  v28 = sub_18F09324C();
  v29 = sub_18F0932BC();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v27, 1, v29) != 1)
  {
    v30 = sub_18F09324C();
    OUTLINED_FUNCTION_111(v29);
    v32 = *(v31 + 8);
    v33 = OUTLINED_FUNCTION_380();
    v34(v33);
  }

  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  a9 = 0;
  v36 = [v35 _initWithMetadataFileURL_bundleURL_effectiveBundleIdentifier_error_];

  v37 = a9;
  if (v36)
  {
    OUTLINED_FUNCTION_111(v29);
    v39 = *(v38 + 8);
    v40 = v37;
    v41 = OUTLINED_FUNCTION_257();
    v39(v41);
  }

  else
  {
    v42 = a9;
    sub_18F09318C();

    swift_willThrow();
    OUTLINED_FUNCTION_111(v29);
    v44 = *(v43 + 8);
    v45 = OUTLINED_FUNCTION_257();
    v46(v45);
  }

  v47 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_405();
}

id OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_18F00DE14(a1, v15, v16, a15, a14, v17, v18, v19, a9);
}

void sub_18EFBC078(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8778, &qword_18F0A1378), v2 = sub_18F09403C(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_18F093B8C();
      sub_18F09452C();
      v27 = v6;
      sub_18F093C1C();
      v8 = sub_18F09456C();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_18F093B8C();
        v17 = v16;
        if (v15 == sub_18F093B8C() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_18F09444C();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  v38 = v4;
  v39 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v11 = sub_18F09316C();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7398, &qword_18F09BD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  v18 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v19 = v18;
  sub_18EFBC078(inited);
  sub_18F09322C();
  if (v0)
  {

LABEL_4:
    sub_18EFD2EC8();
    OUTLINED_FUNCTION_249();
    *v24 = 0;
    v25 = 4;
    goto LABEL_5;
  }

  v20 = sub_18F09315C();
  v22 = v21;
  v23 = (*(v14 + 8))(v1, v11);
  if (v22)
  {
    goto LABEL_4;
  }

  if (v20 <= 5048575)
  {
    v28 = MEMORY[0x193AD91F0](v23);
    sub_18F0932CC();
    v29 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v29);
    sub_18F09301C();
    sub_18EFBC84C();
    sub_18F09300C();

    v30 = OUTLINED_FUNCTION_380();
    sub_18EF9A4AC(v30, v31);
    objc_autoreleasePoolPop(v28);
    v32 = memcpy(v41, v40, 0x98uLL);
    v33 = MEMORY[0x193AD91F0](v32);
    sub_18EFC5660(v40);
    objc_autoreleasePoolPop(v33);
    v36 = v40[1];
    v37 = v40[0];
    swift_getObjectType();
    sub_18EF9FE2C();
    v40[0] = v37;
    v40[1] = v36;
    sub_18EFC5A60(v41, v2, v38, v40);
    sub_18EF933AC(v39, &qword_1EACB72C8);
    v34 = sub_18F0932BC();
    OUTLINED_FUNCTION_36(v34);
    (*(v35 + 8))(v6);
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_413();
    goto LABEL_6;
  }

  sub_18EFD2EC8();
  OUTLINED_FUNCTION_249();
  *v24 = v20;
  v25 = 2;
LABEL_5:
  *(v24 + 8) = v25;
  swift_willThrow();

  sub_18EF933AC(v39, &qword_1EACB72C8);
  v26 = sub_18F0932BC();
  OUTLINED_FUNCTION_36(v26);
  (*(v27 + 8))(v6);
  swift_getObjectType();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_413();
LABEL_6:
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFBC84C()
{
  result = qword_1ED5FEB10;
  if (!qword_1ED5FEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB10);
  }

  return result;
}

unint64_t sub_18EFBC8A4()
{
  result = qword_1ED5FEB20;
  if (!qword_1ED5FEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB20);
  }

  return result;
}

unint64_t sub_18EFBC8FC()
{
  result = qword_1ED5FEB28;
  if (!qword_1ED5FEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB28);
  }

  return result;
}

unint64_t sub_18EFBC950()
{
  result = qword_1ED5FEB38[0];
  if (!qword_1ED5FEB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FEB38);
  }

  return result;
}

uint64_t sub_18EFBC9A4()
{
  sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_18EFBDB20(319, &qword_1ED5FF120, _s14CodableWrapperVMa_1, MEMORY[0x1E69E6720]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_18EFBDB20(319, &qword_1ED5FF148, _s14CodableWrapperVMa_8, MEMORY[0x1E69E6720]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_18EFBDB20(319, &unk_1ED5FD108, type metadata accessor for LNActionModes, MEMORY[0x1E69E6720]);
                if (v16 > 0x3F)
                {
                  return v15;
                }

                type metadata accessor for LNActionAuthenticationPolicy(319);
                if (v17 > 0x3F)
                {
                  return v15;
                }

                else
                {
                  sub_18EF802BC(319, &unk_1ED5FD350, &_s14CodableWrapperON_0, MEMORY[0x1E69E6720]);
                  v1 = v18;
                  if (v19 <= 0x3F)
                  {
                    sub_18EFBDB20(319, &qword_1ED5FD2A8, type metadata accessor for LNActionOutputFlags, MEMORY[0x1E69E6720]);
                    v1 = v20;
                    if (v21 <= 0x3F)
                    {
                      sub_18EFBDB20(319, &qword_1ED5FD3D0, _s14CodableWrapperVMa_10, MEMORY[0x1E69E62F8]);
                      v1 = v22;
                      if (v23 <= 0x3F)
                      {
                        sub_18EFBDAD4(319, &unk_1ED5FD438, &qword_1EACB7428);
                        v1 = v24;
                        if (v25 <= 0x3F)
                        {
                          sub_18EFBE974(319, &qword_1ED5FD450, &unk_1EACB77D8, &qword_18F09CD58, sub_18F01440C);
                          v1 = v26;
                          if (v27 <= 0x3F)
                          {
                            sub_18EF802BC(319, &qword_1ED5FD2A0, &_s14CodableWrapperON_1, MEMORY[0x1E69E6720]);
                            v1 = v28;
                            if (v29 <= 0x3F)
                            {
                              sub_18EFBDAD4(319, &unk_1ED5FD418, &qword_1EACB7450);
                              v1 = v30;
                              if (v31 <= 0x3F)
                              {
                                sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
                                v1 = v32;
                                if (v33 <= 0x3F)
                                {
                                  sub_18EFBDAD4(319, &qword_1ED5FD6C8, &qword_1EACB7488);
                                  v1 = v34;
                                  if (v35 <= 0x3F)
                                  {
                                    sub_18EF802BC(319, &unk_1ED5FD2B0, &_s14CodableWrapperVN_10, MEMORY[0x1E69E6720]);
                                    v1 = v36;
                                    if (v37 <= 0x3F)
                                    {
                                      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
                                      v1 = v38;
                                      if (v39 <= 0x3F)
                                      {
                                        sub_18EFBDAD4(319, &qword_1ED5FD3E0, &qword_1EACB74C0);
                                        v1 = v40;
                                        if (v41 <= 0x3F)
                                        {
                                          sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
                                          v1 = v42;
                                          if (v43 <= 0x3F)
                                          {
                                            sub_18EFBDAD4(319, &qword_1ED5FD140, &qword_1EACB74E0);
                                            v1 = v44;
                                            if (v45 <= 0x3F)
                                            {
                                              sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
                                              v1 = v46;
                                              if (v47 <= 0x3F)
                                              {
                                                type metadata accessor for LNActionPresentationStyle(319);
                                                v1 = v48;
                                                if (v49 <= 0x3F)
                                                {
                                                  sub_18EFBDB20(319, &unk_1ED5FD3B0, type metadata accessor for LNSystemProtocolIdentifier, MEMORY[0x1E69E62F8]);
                                                  v1 = v50;
                                                  if (v51 <= 0x3F)
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

  return v1;
}

void *sub_18EFBD04C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7A60, &qword_18F0A0BB0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBC950();
  sub_18F09459C();
  if (v2)
  {
    v68 = v2;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    LODWORD(v39) = 0;
  }

  else
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    LOBYTE(v40[0]) = 0;
    sub_18EFBBD74();
    sub_18F0942CC();
    v38 = v41;
    LOBYTE(v41) = 1;
    v25 = sub_18F09423C();
    v37 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    LOBYTE(v40[0]) = 2;
    sub_18EFC47B4();
    sub_18F09426C();
    v36 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    LOBYTE(v40[0]) = 3;
    sub_18EFC491C();
    sub_18F0942CC();
    v35 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    LOBYTE(v40[0]) = 4;
    sub_18EFC4698();
    sub_18F0942CC();
    v34 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    LOBYTE(v40[0]) = 5;
    sub_18EFC4868();
    sub_18F0942CC();
    v33 = v41;
    type metadata accessor for LNShortcutTileColor(0);
    LOBYTE(v40[0]) = 6;
    sub_18EF8558C(&unk_1ED5FEAE8);
    sub_18F09426C();
    v24 = v41;
    v67 = v42;
    type metadata accessor for LNBundleMetadataVersion(0);
    LOBYTE(v40[0]) = 7;
    sub_18EF8558C(&unk_1ED5FEA50);
    sub_18F09426C();
    v13 = v41;
    v65 = v42;
    LOBYTE(v40[0]) = 8;
    sub_18EFC53C4();
    sub_18F09426C();
    v29 = v41;
    v30 = v42;
    v31 = v44;
    v32 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    LOBYTE(v40[0]) = 9;
    sub_18EFC4A38();
    sub_18F09426C();
    v68 = 0;
    v28 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    LOBYTE(v40[0]) = 10;
    sub_18F016700();
    v14 = v68;
    sub_18F09426C();
    v68 = v14;
    if (v14)
    {
      (*(v5 + 8))(v8, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v15 = 0;
      LODWORD(v39) = 0;
    }

    else
    {
      v27 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
      LOBYTE(v40[0]) = 11;
      sub_18F016784();
      v16 = v68;
      sub_18F09426C();
      v68 = v16;
      if (v16)
      {
        (*(v5 + 8))(v8, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        LODWORD(v39) = 0;
        v15 = 1;
      }

      else
      {
        v26 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
        v62 = 12;
        sub_18F016808();
        v17 = v68;
        sub_18F09426C();
        v68 = v17;
        if (!v17)
        {
          (*(v5 + 8))(v8, v39);
          v23 = v63;
          v18 = v25;
          v40[0] = v38;
          v40[1] = v25;
          v40[2] = v37;
          v40[3] = v36;
          v40[4] = v35;
          v40[5] = v34;
          v40[6] = v33;
          v40[7] = v24;
          LODWORD(v39) = v67;
          LOBYTE(v40[8]) = v67;
          *(&v40[8] + 1) = *v66;
          HIDWORD(v40[8]) = *&v66[3];
          v40[9] = v13;
          HIDWORD(v22) = v65;
          LOBYTE(v40[10]) = v65;
          HIDWORD(v40[10]) = *&v64[3];
          *(&v40[10] + 1) = *v64;
          v19 = v29;
          v20 = v30;
          v40[11] = v29;
          v40[12] = v30;
          v21 = v31;
          v40[13] = v32;
          v40[14] = v31;
          v40[15] = v28;
          v40[16] = v27;
          v40[17] = v26;
          v40[18] = v63;
          sub_18EFC5524(v40, &v41);
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          v41 = v38;
          v42 = v18;
          v43 = v37;
          v44 = v36;
          v45 = v35;
          v46 = v34;
          v47 = v33;
          v48 = v24;
          v49 = v39;
          *v50 = *v66;
          *&v50[3] = *&v66[3];
          v51 = v13;
          v52 = BYTE4(v22);
          *v53 = *v64;
          *&v53[3] = *&v64[3];
          v54 = v19;
          v55 = v20;
          v56 = v32;
          v57 = v21;
          v58 = v28;
          v59 = v27;
          v60 = v26;
          v61 = v23;
          sub_18EFC4784(&v41);
          return memcpy(v10, v40, 0x98uLL);
        }

        (*(v5 + 8))(v8, v39);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v15 = 1;
        LODWORD(v39) = 1;
      }
    }

    sub_18F0166BC(v29, v30);

    if (v15)
    {

      if ((v39 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (!v39)
  {
    return result;
  }
}

void sub_18EFBDAD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_269(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_142();
    v6 = sub_18F093F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_18EFBDB20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_271();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_18EFBDB80()
{
  type metadata accessor for LNEffectiveBundleIdentifierType(319);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFBDC3C()
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FF4B0, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_18EFBDAD4(319, &qword_1EACB78A8, &qword_1EACB78B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18EFBDDDC()
{
  _s14CodableWrapperVMa_0(319);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF358, _s14CodableWrapperVMa_2, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FD3A0, _s14CodableWrapperVMa_0, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_18EFBDB20(319, &unk_1ED5FEAD0, _s14CodableWrapperVMa_5, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18EFBDF68()
{
  v0 = _s14CodableWrapperVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FF330, _s14CodableWrapperOMa, MEMORY[0x1E69E6720]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_18EFBE0AC()
{
  sub_18EFBE15C();
  if (v0 <= 0x3F)
  {
    sub_18F014E34();
    if (v1 <= 0x3F)
    {
      sub_18EFBE228();
      if (v2 <= 0x3F)
      {
        sub_18F014EAC();
        if (v3 <= 0x3F)
        {
          sub_18EFBE340();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18EFBE15C()
{
  if (!qword_1ED5FD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7838, &qword_18F09DA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED5FD5E0);
    }
  }
}

void sub_18EFBE228()
{
  if (!qword_1ED5FD618)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_18F0932BC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED5FD618);
    }
  }
}

void sub_18EFBE340()
{
  if (!qword_1ED5FD5A8)
  {
    type metadata accessor for LNImageISIconType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD5A8);
    }
  }
}

uint64_t sub_18EFBE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18EFBE45C()
{
  sub_18EFBDB20(319, &unk_1ED5FEA08, _s14CodableWrapperVMa_6, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &unk_1ED5FD030, _s14CodableWrapperVMa_7, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFBE540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_18EFBDB20(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_274();
  }
}

void sub_18EFBE5D8()
{
  _s14CodableWrapperVMa_0(319);
  if (v0 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_274();
    }
  }
}

unint64_t sub_18EFBE6B0()
{
  result = qword_1ED5FD428;
  if (!qword_1ED5FD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7880, &qword_18F09DA80);
    sub_18EF8558C(&unk_1ED5FD4D0);
    sub_18EF8558C(&unk_1ED5FD258);
    sub_18EFBE7AC();
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD428);
  }

  return result;
}

unint64_t sub_18EFBE7AC()
{
  result = qword_1ED5FF320;
  if (!qword_1ED5FF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF320);
  }

  return result;
}

unint64_t sub_18EFBE800()
{
  result = qword_1ED5FD468;
  if (!qword_1ED5FD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD468);
  }

  return result;
}

uint64_t sub_18EFBE864(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  v5 = a3[3];
  v7 = *a3;
  v8 = a3[2];
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18EFBE8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18EFBE974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_269(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a5();
    OUTLINED_FUNCTION_270();
    v9 = type metadata accessor for CompactDictionary();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_18EFBE9DC()
{
  result = qword_1ED5FED90;
  if (!qword_1ED5FED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED90);
  }

  return result;
}

unint64_t sub_18EFBEA30()
{
  result = qword_1ED5FD740;
  if (!qword_1ED5FD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD740);
  }

  return result;
}

uint64_t sub_18EFBEA84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18EFBEB58()
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_18EF802BC(319, &unk_1ED5FD3C0, &_s14CodableWrapperVN_2, MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_18EFBE974(319, &unk_1ED5FD458, &unk_1EACB7880, &qword_18F09DA80, sub_18EFBE6B0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for LNActionParameterMetadataDynamicOptionsSupport(319);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDB20(319, &qword_1ED5FD240, type metadata accessor for LNActionParameterMetadataInputConnectionBehavior, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDB20(319, &unk_1ED5FD248, type metadata accessor for LNActionParameterMetadataCapabilities, MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_18EFBED88()
{
  result = qword_1ED5FD448;
  if (!qword_1ED5FD448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FF178);
    sub_18EF8558C(&unk_1ED5FD268);
    sub_18EFBE9DC();
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD448);
  }

  return result;
}

void sub_18EFBEEE4()
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_18EFBEFDC()
{
  result = qword_1ED5FF240;
  if (!qword_1ED5FF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF240);
  }

  return result;
}

unint64_t sub_18EFBF030()
{
  result = qword_1ED5FF248;
  if (!qword_1ED5FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF248);
  }

  return result;
}

unint64_t sub_18EFBF088()
{
  result = qword_1ED5FF510;
  if (!qword_1ED5FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF510);
  }

  return result;
}

unint64_t sub_18EFBF0E0()
{
  result = qword_1ED5FF508;
  if (!qword_1ED5FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF508);
  }

  return result;
}

unint64_t sub_18EFBF13C()
{
  result = qword_1ED5FE308;
  if (!qword_1ED5FE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE308);
  }

  return result;
}

unint64_t sub_18EFBF1B8()
{
  result = qword_1ED5FE300;
  if (!qword_1ED5FE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE300);
  }

  return result;
}

unint64_t sub_18EFBF214(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0x726F68536F747561;
      break;
    case 3:
      result = 0x7365697469746E65;
      break;
    case 4:
      result = 0x73656972657571;
      break;
    case 5:
      result = 0x736D756E65;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E6F6973726576;
      break;
    case 8:
      result = 0x6F746172656E6567;
      break;
    case 9:
      result = 0x657669746167656ELL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_7(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x18EFBF498);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_7(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18EFBF5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8E98, &qword_18F0A7D40);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = _s14CodableWrapperVMa_20(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s19BasicCodableWrapperOMa(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBF918();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v14, &unk_1EACB72F8);
  }

  else
  {
    v17 = v22;
    v28 = 0;
    sub_18EF8558C(&unk_1ED5FE008);
    v18 = v23;
    sub_18F09426C();
    sub_18EF872D4();
    v27 = 1;
    v14[*(v11 + 20)] = sub_18F09424C();
    v26 = 2;
    sub_18EF9561C();
    sub_18F0942CC();
    (*(v17 + 8))(v10, v18);
    *&v14[*(v11 + 24)] = v25;
    sub_18EF86A14(v14, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFBF918()
{
  result = qword_1ED5FD4C0;
  if (!qword_1ED5FD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD4C0);
  }

  return result;
}

uint64_t sub_18EFBF974(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6C75616665447369;
  }

  return 0x72756769666E6F63;
}

uint64_t sub_18EFBF9E0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8DB8, &qword_18F0A7CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC4340();
  sub_18F09459C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    v10[15] = 1;
    sub_18EFC41DC();
    sub_18F0942CC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_18EFBFC00()
{
  result = qword_1ED5FE030;
  if (!qword_1ED5FE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE030);
  }

  return result;
}

id sub_18EFBFC64()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_138();
  sub_18F0939FC();
  OUTLINED_FUNCTION_272();
  v2 = sub_18F093DBC();

  v3 = [v0 initWithSupportedContentTypes_];

  return v3;
}

unint64_t sub_18EFBFCD4()
{
  result = qword_1EACB6ED0;
  if (!qword_1EACB6ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACB6ED0);
  }

  return result;
}

unint64_t sub_18EFBFD40()
{
  result = qword_1ED5FE6F8;
  if (!qword_1ED5FE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6F8);
  }

  return result;
}

unint64_t sub_18EFBFD94()
{
  result = qword_1ED5FE688;
  if (!qword_1ED5FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE688);
  }

  return result;
}

unint64_t sub_18EFBFDF8()
{
  result = qword_1ED5FDA30;
  if (!qword_1ED5FDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA30);
  }

  return result;
}

unint64_t sub_18EFBFE54()
{
  result = qword_1ED5FDA90;
  if (!qword_1ED5FDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA90);
  }

  return result;
}

unint64_t sub_18EFBFEAC()
{
  result = qword_1ED5FDA98;
  if (!qword_1ED5FDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA98);
  }

  return result;
}

unint64_t sub_18EFBFF10()
{
  result = qword_1ED5FDA40;
  if (!qword_1ED5FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA40);
  }

  return result;
}

unint64_t sub_18EFBFF68()
{
  result = qword_1ED5FDA48;
  if (!qword_1ED5FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA48);
  }

  return result;
}

unint64_t sub_18EFBFFBC()
{
  result = qword_1ED5FDA60;
  if (!qword_1ED5FDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA60);
  }

  return result;
}

unint64_t sub_18EFC0014()
{
  result = qword_1ED5FDA58;
  if (!qword_1ED5FDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA58);
  }

  return result;
}

unint64_t sub_18EFC0070()
{
  result = qword_1ED5FDAA8;
  if (!qword_1ED5FDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAA8);
  }

  return result;
}

unint64_t sub_18EFC0104()
{
  result = qword_1ED5FDA38;
  if (!qword_1ED5FDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA38);
  }

  return result;
}

unint64_t sub_18EFC0168()
{
  result = qword_1ED5FDA70;
  if (!qword_1ED5FDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA70);
  }

  return result;
}

unint64_t sub_18EFC01C0()
{
  result = qword_1ED5FDA78;
  if (!qword_1ED5FDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA78);
  }

  return result;
}

unint64_t sub_18EFC023C()
{
  result = qword_1ED5FDAA0;
  if (!qword_1ED5FDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAA0);
  }

  return result;
}

unint64_t sub_18EFC02B8()
{
  result = qword_1ED5FDAB8;
  if (!qword_1ED5FDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAB8);
  }

  return result;
}

unint64_t sub_18EFC0320()
{
  result = qword_1ED5FDA80;
  if (!qword_1ED5FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA80);
  }

  return result;
}

unint64_t sub_18EFC0378()
{
  result = qword_1ED5FDA88;
  if (!qword_1ED5FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA88);
  }

  return result;
}

unint64_t sub_18EFC03E4()
{
  result = qword_1ED5FDAB0;
  if (!qword_1ED5FDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAB0);
  }

  return result;
}

unint64_t sub_18EFC044C()
{
  result = qword_1ED5FDAC0;
  if (!qword_1ED5FDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAC0);
  }

  return result;
}

unint64_t sub_18EFC04A4()
{
  result = qword_1ED5FDAC8;
  if (!qword_1ED5FDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAC8);
  }

  return result;
}

unint64_t sub_18EFC04F8()
{
  result = qword_1ED5FDAD0;
  if (!qword_1ED5FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAD0);
  }

  return result;
}

uint64_t sub_18EFC054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFC0574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFC0574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242338 && a2 == 0xE400000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000010 && 0x800000018F0AC5B0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_18F09444C();

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

unint64_t sub_18EFC07E8()
{
  result = qword_1ED5FD748;
  if (!qword_1ED5FD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD748);
  }

  return result;
}

unint64_t sub_18EFC083C()
{
  result = qword_1ED5FD630;
  if (!qword_1ED5FD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD630);
  }

  return result;
}

uint64_t sub_18EFC0890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8468, &qword_18F0A1128);
  v147 = *(v154 - 8);
  v3 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v162 = &v132 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8470, &qword_18F0A1130);
  v6 = *(v5 - 8);
  v155 = v5;
  v156 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v165 = &v132 - v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8478, &qword_18F0A1138);
  v149 = *(v158 - 8);
  v9 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v169 = &v132 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8480, &qword_18F0A1140);
  v148 = *(v157 - 8);
  v11 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v161 = &v132 - v12;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8488, &qword_18F0A1148);
  v146 = *(v159 - 8);
  v13 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v168 = &v132 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8490, &qword_18F0A1150);
  v145 = *(v153 - 8);
  v15 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v164 = &v132 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8498, &qword_18F0A1158);
  v144 = *(v152 - 8);
  v17 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v160 = &v132 - v18;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84A0, &qword_18F0A1160);
  v143 = *(v150 - 8);
  v19 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v163 = &v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84A8, &qword_18F0A1168);
  v166 = *(v21 - 8);
  v167 = v21;
  v22 = *(v166 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v132 - v23;
  v170 = _s19BasicCodableWrapperOMa(0);
  v25 = *(*(v170 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v170);
  v139 = (&v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x1EEE9AC00](v26);
  v141 = &v132 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v151 = &v132 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v140 = (&v132 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v132 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v132 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v132 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v132 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v132 - v46;
  v49 = a1[3];
  v48 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v49);
  sub_18EFC04F8();
  v171 = v24;
  v50 = v173;
  sub_18F09459C();
  if (v50)
  {
    goto LABEL_11;
  }

  v136 = v42;
  v137 = v39;
  v135 = v36;
  v138 = v45;
  v51 = v168;
  v52 = v169;
  v173 = v47;
  v53 = v167;
  v54 = v171;
  v55 = sub_18F0942EC();
  sub_18EF89690(v55, 0);
  if (v58 == v59 >> 1)
  {
    v60 = v170;
LABEL_10:
    v74 = sub_18F0940BC();
    swift_allocError();
    v76 = v75;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80) + 48);
    *v76 = v60;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v166 + 1))(v54, v53);
LABEL_11:
    v78 = v172;
    return __swift_destroy_boxed_opaque_existential_1Tm(v78);
  }

  v61 = v57;
  v134 = 0;
  v62 = v59 >> 1;
  v60 = v170;
  if (v58 < (v59 >> 1))
  {
    v133 = *(v61 + v58);
    sub_18F019378(v58 + 1, v62, v56, v61, v58, v59);
    v64 = v63;
    v66 = v65;
    swift_unknownObjectRelease();
    v67 = v64 == v66 >> 1;
    v68 = v173;
    if (v67)
    {
      v69 = v134;
      switch(v133)
      {
        case 1:
          v174 = 1;
          sub_18F0199A4();
          v94 = v160;
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v95 = v152;
          sub_18F09429C();
          v96 = v166;
          v116 = v115;
          v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198) + 48);
          *v136 = v116;
          _s14CodableWrapperVMa_2(0);
          v174 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          v117 = v144;
          swift_unknownObjectRelease();
          (*(v117 + 8))(v94, v95);
          v96[1](v171, v53);
          v122 = v136;
          goto LABEL_29;
        case 2:
          v174 = 2;
          sub_18F019950();
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v84 = v153;
          v85 = sub_18F09428C();
          v86 = v166;
          v87 = v85;
          v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190) + 48);
          *v137 = v87 & 1;
          _s14CodableWrapperVMa_2(0);
          v174 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          v88 = v164;
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v145 + 8))(v88, v84);
          v86[1](v171, v53);
          v122 = v137;
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v128 = v122;
          goto LABEL_31;
        case 3:
          v174 = 3;
          sub_18F0198FC();
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v89 = sub_18F09427C();
          v90 = v51;
          v91 = v166;
          v103 = v89;
          v105 = v104;
          v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188) + 48);
          v99 = v135;
          *v135 = v103;
          v99[1] = v105;
          v165 = v105;
          _s14CodableWrapperVMa_2(0);
          v174 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          v106 = v159;
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v146 + 8))(v90, v106);
          v91[1](v171, v53);
          goto LABEL_30;
        case 4:
          v174 = 4;
          sub_18EFC083C();
          v80 = v161;
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v81 = v80;
          v82 = sub_18F09427C();
          v83 = v166;
          v99 = v140;
          *v140 = v82;
          v99[1] = v100;
          v174 = 1;
          v101 = v100;
          v102 = sub_18F09427C();
          v168 = v101;
          v118 = v102;
          v120 = v119;
          v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180) + 64);
          v99[2] = v118;
          v99[3] = v120;
          v121 = v157;
          v165 = v120;
          _s14CodableWrapperVMa_2(0);
          v174 = 2;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v148 + 8))(v81, v121);
          v83[1](v171, v53);
          goto LABEL_30;
        case 5:
          v174 = 5;
          sub_18EFC07E8();
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7898, &qword_18F09DC48);
          v174 = 0;
          sub_18EFC2360();
          v99 = v151;
          sub_18F0942CC();
          v97 = v166;
          v174 = 1;
          sub_18EF8882C();
          sub_18F0942CC();
          v168 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178) + 64);
          v165 = _s14CodableWrapperVMa_2(0);
          v174 = 2;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v149 + 8))(v52, v158);
          v97[1](v171, v53);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          v128 = v99;
LABEL_31:
          v127 = v172;
          goto LABEL_32;
        case 6:
          v174 = 6;
          sub_18F019854();
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v49 = v155;
          v98 = sub_18F09428C();
          v52 = v166;
          *v141 = v98 & 1;
          v174 = 1;
          sub_18F0198A8();
          v47 = v165;
          sub_18F0942CC();
          v174 = 2;
          sub_18EF8882C();
          sub_18F0942CC();
          v174 = 3;
          v56 = sub_18F09423C();
          goto LABEL_34;
        case 7:
          v174 = 7;
          sub_18F019800();
          v92 = v162;
          v70 = v171;
          sub_18F09421C();
          if (v69)
          {
            goto LABEL_26;
          }

          v174 = 0;
          v93 = v154;
          v107 = sub_18F09427C();
          v109 = v108;
          v174 = 1;
          v110 = sub_18F09427C();
          v111 = (v147 + 8);
          v112 = (v166 + 8);
          v169 = v110;
          v124 = v123;
          swift_unknownObjectRelease();
          (*v111)(v92, v93);
          (*v112)(v171, v53);
          v125 = v139;
          *v139 = v107;
          v125[1] = v109;
          v125[2] = v169;
          v125[3] = v124;
          swift_storeEnumTagMultiPayload();
          v128 = v125;
          goto LABEL_28;
        default:
          v174 = 0;
          sub_18F0199F8();
          v70 = v171;
          sub_18F09421C();
          if (!v69)
          {
            v174 = 0;
            v71 = v150;
            v72 = sub_18F0942AC();
            v73 = v166;
            v113 = v72;
            v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0) + 48);
            *v138 = v113;
            _s14CodableWrapperVMa_2(0);
            v174 = 1;
            sub_18EF8558C(&unk_1ED5FE420);
            v114 = v163;
            sub_18F09426C();
            swift_unknownObjectRelease();
            (*(v143 + 8))(v114, v71);
            v73[1](v171, v53);
            v126 = v138;
            swift_storeEnumTagMultiPayload();
            v127 = v172;
            v128 = v126;
            goto LABEL_32;
          }

LABEL_26:
          (*(v166 + 1))(v70, v53);
          swift_unknownObjectRelease();
          break;
      }

      goto LABEL_11;
    }

    v54 = v171;
    goto LABEL_10;
  }

  __break(1u);
LABEL_34:
  v129 = v56;
  v130 = v62;
  v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170) + 96);
  v131 = v141;
  *(v141 + 7) = v129;
  *(v131 + 8) = v130;
  _s14CodableWrapperVMa_2(0);
  v174 = 4;
  sub_18EF8558C(&unk_1ED5FE420);
  sub_18F09426C();
  swift_unknownObjectRelease();
  (*(v156 + 8))(v47, v49);
  (*(v52 + 1))(v171, v53);
  swift_storeEnumTagMultiPayload();
  v128 = v131;
LABEL_28:
  v127 = v172;
  v68 = v173;
LABEL_32:
  sub_18EF88240(v128, v68);
  sub_18EF88240(v68, v142);
  v78 = v127;
  return __swift_destroy_boxed_opaque_existential_1Tm(v78);
}

unint64_t sub_18EFC2270(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 0x676E69727473;
      break;
    case 4:
      result = 0x746172656D756E65;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 0x797469746E65;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EFC2360()
{
  result = qword_1ED5FD7D0;
  if (!qword_1ED5FD7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7898, &qword_18F09DC48);
    sub_18EF8558C(&unk_1ED5FE008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD7D0);
  }

  return result;
}

uint64_t sub_18EFC241C(char a1)
{
  if (!a1)
  {
    return 0x7365756C6176;
  }

  if (a1 == 1)
  {
    return 0x70795465756C6176;
  }

  return 0xD000000000000015;
}

uint64_t sub_18EFC2480(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0xD000000000000015;
}

unint64_t sub_18EFC2500()
{
  result = qword_1ED5FF460;
  if (!qword_1ED5FF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF460);
  }

  return result;
}

unint64_t sub_18EFC2554()
{
  result = qword_1ED5FF468;
  if (!qword_1ED5FF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF468);
  }

  return result;
}

unint64_t sub_18EFC25A8()
{
  result = qword_1ED5FE028;
  if (!qword_1ED5FE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE028);
  }

  return result;
}

uint64_t sub_18EFC25FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18EFC2670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

unint64_t sub_18EFC2698()
{
  result = qword_1ED5FF420;
  if (!qword_1ED5FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF420);
  }

  return result;
}

unint64_t sub_18EFC26F0()
{
  result = qword_1ED5FF1C0;
  if (!qword_1ED5FF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1C0);
  }

  return result;
}

unint64_t sub_18EFC2748()
{
  result = qword_1ED5FF1C8;
  if (!qword_1ED5FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1C8);
  }

  return result;
}

unint64_t sub_18EFC279C()
{
  result = qword_1ED5FF400;
  if (!qword_1ED5FF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF400);
  }

  return result;
}

unint64_t sub_18EFC27F0()
{
  result = qword_1ED5FEC98[0];
  if (!qword_1ED5FEC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FEC98);
  }

  return result;
}

unint64_t sub_18EFC2844()
{
  result = qword_1ED5FEC08;
  if (!qword_1ED5FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC08);
  }

  return result;
}

unint64_t sub_18EFC28AC()
{
  result = qword_1ED5FEC50;
  if (!qword_1ED5FEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC50);
  }

  return result;
}

unint64_t sub_18EFC2904()
{
  result = qword_1ED5FEC58;
  if (!qword_1ED5FEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC58);
  }

  return result;
}

unint64_t sub_18EFC296C()
{
  result = qword_1ED5FF0B0;
  if (!qword_1ED5FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0B0);
  }

  return result;
}

unint64_t sub_18EFC29C4()
{
  result = qword_1ED5FF0B8;
  if (!qword_1ED5FF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0B8);
  }

  return result;
}

unint64_t sub_18EFC2A2C()
{
  result = qword_1ED5FE748;
  if (!qword_1ED5FE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE748);
  }

  return result;
}

unint64_t sub_18EFC2A84()
{
  result = qword_1ED5FE750;
  if (!qword_1ED5FE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE750);
  }

  return result;
}

unint64_t sub_18EFC2AE8()
{
  result = qword_1ED5FF0A0;
  if (!qword_1ED5FF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0A0);
  }

  return result;
}

unint64_t sub_18EFC2B50()
{
  result = qword_1ED5FE208;
  if (!qword_1ED5FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE208);
  }

  return result;
}

unint64_t sub_18EFC2BA8()
{
  result = qword_1ED5FE210;
  if (!qword_1ED5FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE210);
  }

  return result;
}

unint64_t sub_18EFC2C18()
{
  result = qword_1ED5FDFD0;
  if (!qword_1ED5FDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFD0);
  }

  return result;
}

unint64_t sub_18EFC2C6C()
{
  result = qword_1ED5FDD00;
  if (!qword_1ED5FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDD00);
  }

  return result;
}

unint64_t sub_18EFC2CC0()
{
  result = qword_1ED5FDFD8;
  if (!qword_1ED5FDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFD8);
  }

  return result;
}

unint64_t sub_18EFC2D14()
{
  result = qword_1ED5FDCF8;
  if (!qword_1ED5FDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDCF8);
  }

  return result;
}

unint64_t sub_18EFC2D90()
{
  result = qword_1ED5FDC40;
  if (!qword_1ED5FDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC40);
  }

  return result;
}

unint64_t sub_18EFC2DE4()
{
  result = qword_1ED5FDC48;
  if (!qword_1ED5FDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC48);
  }

  return result;
}

void sub_18EFC2E58()
{
  sub_18EF802BC(319, &unk_1ED5FD1B8, &_s14CodableWrapperVN_8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_18EF802BC(319, &unk_1ED5FD210, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_18EFC2FBC()
{
  result = qword_1ED5FDC88;
  if (!qword_1ED5FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC88);
  }

  return result;
}

unint64_t sub_18EFC3014()
{
  result = qword_1ED5FDC90;
  if (!qword_1ED5FDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC90);
  }

  return result;
}

unint64_t sub_18EFC307C()
{
  result = qword_1ED5FDB68;
  if (!qword_1ED5FDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB68);
  }

  return result;
}

unint64_t sub_18EFC30D4()
{
  result = qword_1ED5FDB60;
  if (!qword_1ED5FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB60);
  }

  return result;
}

unint64_t sub_18EFC3150()
{
  result = qword_1ED5FE698;
  if (!qword_1ED5FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE698);
  }

  return result;
}

unint64_t sub_18EFC31A4()
{
  result = qword_1ED5FE5F8;
  if (!qword_1ED5FE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5F8);
  }

  return result;
}

unint64_t sub_18EFC31F8()
{
  result = qword_1ED5FE690;
  if (!qword_1ED5FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE690);
  }

  return result;
}

unint64_t sub_18EFC324C()
{
  result = qword_1ED5FE6C0;
  if (!qword_1ED5FE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6C0);
  }

  return result;
}

unint64_t sub_18EFC32A0()
{
  result = qword_1ED5FE618;
  if (!qword_1ED5FE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE618);
  }

  return result;
}

unint64_t sub_18EFC32F4()
{
  result = qword_1ED5FE6A8;
  if (!qword_1ED5FE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6A8);
  }

  return result;
}

unint64_t sub_18EFC3388()
{
  result = qword_1ED5FE620;
  if (!qword_1ED5FE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE620);
  }

  return result;
}

unint64_t sub_18EFC33DC()
{
  result = qword_1ED5FE678;
  if (!qword_1ED5FE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE678);
  }

  return result;
}

unint64_t sub_18EFC3430()
{
  result = qword_1ED5FDA08;
  if (!qword_1ED5FDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA08);
  }

  return result;
}

unint64_t sub_18EFC3490()
{
  result = qword_1ED5FE6B0;
  if (!qword_1ED5FE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6B0);
  }

  return result;
}

unint64_t sub_18EFC3518()
{
  result = qword_1ED5FE648;
  if (!qword_1ED5FE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE648);
  }

  return result;
}

unint64_t sub_18EFC356C()
{
  result = qword_1ED5FE408;
  if (!qword_1ED5FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE408);
  }

  return result;
}

unint64_t sub_18EFC3610()
{
  result = qword_1ED5FE638;
  if (!qword_1ED5FE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE638);
  }

  return result;
}

unint64_t sub_18EFC366C()
{
  result = qword_1ED5FE6D0;
  if (!qword_1ED5FE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6D0);
  }

  return result;
}

unint64_t sub_18EFC36C0()
{
  result = qword_1ED5FE400;
  if (!qword_1ED5FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE400);
  }

  return result;
}

unint64_t sub_18EFC3714()
{
  result = qword_1ED5FE6D8;
  if (!qword_1ED5FE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6D8);
  }

  return result;
}

unint64_t sub_18EFC3768()
{
  result = qword_1ED5FE628;
  if (!qword_1ED5FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE628);
  }

  return result;
}

unint64_t sub_18EFC37BC()
{
  result = qword_1ED5FE6C8;
  if (!qword_1ED5FE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6C8);
  }

  return result;
}

unint64_t sub_18EFC3810()
{
  result = qword_1ED5FE680;
  if (!qword_1ED5FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE680);
  }

  return result;
}

unint64_t sub_18EFC38FC()
{
  result = qword_1ED5FDA10;
  if (!qword_1ED5FDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA10);
  }

  return result;
}

unint64_t sub_18EFC3950()
{
  result = qword_1ED5FE600;
  if (!qword_1ED5FE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE600);
  }

  return result;
}

unint64_t sub_18EFC39A4()
{
  result = qword_1ED5FE650;
  if (!qword_1ED5FE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE650);
  }

  return result;
}

unint64_t sub_18EFC39F8()
{
  result = qword_1ED5FE668;
  if (!qword_1ED5FE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE668);
  }

  return result;
}

unint64_t sub_18EFC3A5C()
{
  result = qword_1ED5FE630;
  if (!qword_1ED5FE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE630);
  }

  return result;
}

unint64_t sub_18EFC3AB0()
{
  result = qword_1ED5FE5C0;
  if (!qword_1ED5FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5C0);
  }

  return result;
}

unint64_t sub_18EFC3B04()
{
  result = qword_1ED5FE660;
  if (!qword_1ED5FE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE660);
  }

  return result;
}

unint64_t sub_18EFC3B58()
{
  result = qword_1ED5FE610;
  if (!qword_1ED5FE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE610);
  }

  return result;
}

unint64_t sub_18EFC3BAC()
{
  result = qword_1ED5FE5C8;
  if (!qword_1ED5FE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5C8);
  }

  return result;
}

unint64_t sub_18EFC3C00()
{
  result = qword_1ED5FE670;
  if (!qword_1ED5FE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE670);
  }

  return result;
}

unint64_t sub_18EFC3C58()
{
  result = qword_1ED5FD708;
  if (!qword_1ED5FD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FE8C0);
    sub_18EF8558C(&unk_1ED5FD640);
    sub_18EFBE9DC();
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD708);
  }

  return result;
}

uint64_t sub_18EFC3D58()
{
  sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      v5 = _s14CodableWrapperVMa_0(319);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &unk_1ED5FD6D8, _s14CodableWrapperVMa_12, MEMORY[0x1E69E62F8]);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6C8, &qword_1EACB7488);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD6F8, &qword_1EACB75D0);
      if (v14 > 0x3F)
      {
        return v5;
      }

      sub_18EFBE974(319, &unk_1ED5FD730, &unk_1EACB77E8, &qword_18F09CD60, sub_18F0144B8);
      if (v15 > 0x3F)
      {
        return v5;
      }

      sub_18EFC414C(319, &unk_1ED5FD660, &qword_1ED5FE428, off_1E72AFFD0, MEMORY[0x1E69E6720]);
      if (v16 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
      if (v17 > 0x3F)
      {
        return v5;
      }

      sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
      if (v18 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
        v1 = v19;
        if (v20 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_18EFC414C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_18EF825F4(255, a3, a4);
    v7 = OUTLINED_FUNCTION_271();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_18EFC41DC()
{
  result = qword_1ED5FD5D0;
  if (!qword_1ED5FD5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    sub_18EF8558C(&unk_1ED5FD498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5D0);
  }

  return result;
}

unint64_t sub_18EFC4298()
{
  result = qword_1ED5FD580;
  if (!qword_1ED5FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD580);
  }

  return result;
}

unint64_t sub_18EFC42EC()
{
  result = qword_1ED5FD528;
  if (!qword_1ED5FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD528);
  }

  return result;
}

unint64_t sub_18EFC4340()
{
  result = qword_1ED5FD550;
  if (!qword_1ED5FD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD550);
  }

  return result;
}

uint64_t sub_18EFC4394(char a1)
{
  if (a1)
  {
    return 0x7365736163;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_18EFC4404(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

uint64_t sub_18EFC444C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8068, &qword_18F0A0F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCB0C0();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v11 = sub_18F09427C();
  v21 = v12;
  v23 = 1;
  v19 = sub_18F09427C();
  v20 = v13;
  v22 = 2;
  v14 = sub_18F09428C();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v21;
  *a2 = v11;
  *(a2 + 8) = v16;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14 & 1;
  return result;
}

unint64_t sub_18EFC4698()
{
  result = qword_1ED5FEC00;
  if (!qword_1ED5FEC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    sub_18EF8558C(&unk_1ED5FED78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC00);
  }

  return result;
}

unint64_t sub_18EFC47B4()
{
  result = qword_1ED5FEBC0;
  if (!qword_1ED5FEBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    sub_18EF8558C(&unk_1ED5FEC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBC0);
  }

  return result;
}

unint64_t sub_18EFC4868()
{
  result = qword_1ED5FE5B8;
  if (!qword_1ED5FE5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    sub_18EF8558C(&unk_1ED5FEBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5B8);
  }

  return result;
}

unint64_t sub_18EFC491C()
{
  result = qword_1ED5FEBE8;
  if (!qword_1ED5FEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    sub_18EF8558C(&unk_1ED5FF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBE8);
  }

  return result;
}

unint64_t sub_18EFC4A38()
{
  result = qword_1ED5FEBB8;
  if (!qword_1ED5FEBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    sub_18EF8558C(&unk_1ED5FEA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBB8);
  }

  return result;
}

uint64_t sub_18EFC4C64(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B60, &qword_18F0A7B80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC560C();
  sub_18F09459C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_18F09427C();
    v11 = 1;
    sub_18F09427C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_18EFC4E48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFC4C64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_18EFC4EB0()
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_18EF802BC(319, &qword_1EACB7148, &_s14CodableWrapperVN_14, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18EFC4FE4()
{
  sub_18EF802BC(319, &unk_1ED5FD350, &_s14CodableWrapperON_0, MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &qword_1EACB70E8, _s14CodableWrapperVMa_33, MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &qword_1EACB70E0, _s14CodableWrapperVMa_35, MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &unk_1EACB7088, type metadata accessor for LNQueryCapabilities, MEMORY[0x1E69E6720]);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDB20(319, &qword_1ED5FF120, _s14CodableWrapperVMa_1, MEMORY[0x1E69E6720]);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v14 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
        v1 = v15;
        if (v16 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_18EFC5348()
{
  result = _s14CodableWrapperVMa_0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18EFC53C4()
{
  result = qword_1ED5FE978;
  if (!qword_1ED5FE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE978);
  }

  return result;
}

unint64_t sub_18EFC5418()
{
  result = qword_1ED5FE588;
  if (!qword_1ED5FE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE588);
  }

  return result;
}

unint64_t sub_18EFC546C()
{
  result = qword_1ED5FE570;
  if (!qword_1ED5FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE570);
  }

  return result;
}

unint64_t sub_18EFC54D0()
{
  result = qword_1ED5FE578;
  if (!qword_1ED5FE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE578);
  }

  return result;
}

unint64_t sub_18EFC5560()
{
  result = qword_1ED5FE988;
  if (!qword_1ED5FE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE988);
  }

  return result;
}

unint64_t sub_18EFC55B8()
{
  result = qword_1ED5FE990;
  if (!qword_1ED5FE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE990);
  }

  return result;
}

unint64_t sub_18EFC560C()
{
  result = qword_1ED5FE998;
  if (!qword_1ED5FE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE998);
  }

  return result;
}

void sub_18EFC5660(_OWORD *a1@<X8>)
{
  v3 = sub_18F0932BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  sub_18F09326C();
  sub_18F09325C();
  v11 = *(v4 + 8);
  v11(v8, v3);
  v12 = [objc_opt_self() defaultManager];
  sub_18F09328C();
  v13 = sub_18F093B5C();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    v35 = a1;
    v15 = sub_18F0932CC();
    if (v1)
    {
      v11(v10, v3);
      if (qword_1ED5FEEB8 != -1)
      {
        swift_once();
      }

      v22 = sub_18F093A2C();
      __swift_project_value_buffer(v22, qword_1ED60C1C0);
      v23 = v1;
      v24 = sub_18F093A0C();
      v25 = sub_18F093EDC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v36[0] = v27;
        *v26 = 136315138;
        swift_getErrorValue();
        v28 = sub_18F0944DC();
        v30 = sub_18F0462AC(v28, v29, v36);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_18EF7E000, v24, v25, "Error with NLU example phrase file: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x193AD9AF0](v27, -1, -1);
        MEMORY[0x193AD9AF0](v26, -1, -1);
      }

      else
      {
      }

      v31 = v35;
      *v35 = 0u;
      v31[1] = 0u;
    }

    else
    {
      v17 = v15;
      v18 = v16;
      v19 = sub_18F09302C();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_18F09301C();
      sub_18F019F9C();
      sub_18F09300C();
      v11(v10, v3);

      sub_18EF9A4AC(v17, v18);
      v32 = v36[1];
      v33 = v35;
      *v35 = v36[0];
      v33[1] = v32;
    }
  }

  else
  {
    v11(v10, v3);
    *a1 = 0u;
    a1[1] = 0u;
  }
}

id sub_18EFC5A60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v62 = *a4;
  v56 = v7;
  v8 = *(a4 + 24);
  v55 = *(a4 + 16);
  v54 = v8;
  if (*(a1 + 80) == 1)
  {
    v9 = [objc_opt_self() latestMetadataVersion];
  }

  else
  {
    v9 = *(a1 + 72);
  }

  v10 = MEMORY[0x193AD91F0]();
  v11 = *a1;
  MEMORY[0x1EEE9AC00](v10);
  v68 = v9;
  v50 = v9;
  v51 = a2;
  v52 = a3;
  sub_18F012158(sub_18EFC66CC, &v49, v12);
  objc_autoreleasePoolPop(v10);
  v13 = MEMORY[0x193AD91F0]();
  v14 = *(a1 + 32);
  MEMORY[0x1EEE9AC00](v13);
  v52 = a2;
  v53 = a3;
  sub_18F011EE4(sub_18EFCCC58, &v50, v15);
  objc_autoreleasePoolPop(v13);
  v16 = MEMORY[0x193AD91F0]();
  v17 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](v16);
  v52 = a2;
  v53 = a3;
  sub_18F011C70(sub_18EFCD488, &v50, v18);
  objc_autoreleasePoolPop(v16);
  v19 = MEMORY[0x193AD91F0]();
  v20 = *(a1 + 48);
  MEMORY[0x1EEE9AC00](v19);
  v71 = v21;
  v52 = v21;
  v53 = a3;

  sub_18EF9D97C(sub_18EFC865C);

  objc_autoreleasePoolPop(v19);
  sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
  v67 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
  v66 = sub_18F093A3C();

  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  v65 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  v64 = sub_18F093DBC();

  if (*(a1 + 16))
  {
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);

    v63 = sub_18F093B5C();
  }

  else
  {
    v63 = 0;
  }

  v25 = v71;
  if (*(a1 + 24))
  {
    MEMORY[0x1EEE9AC00](v22);
    v52 = v25;
    v53 = a3;

    sub_18EF9D97C(sub_18F019F24);
  }

  sub_18EF825F4(0, &qword_1ED5FEC28, off_1E72AFF60);
  v70 = sub_18F093DBC();

  v61 = *(a1 + 56);
  v59 = *(a1 + 64);
  if (*(a1 + 96))
  {
    v28 = *(a1 + 104);
    v27 = *(a1 + 112);
    v29 = *(a1 + 88);
    sub_18EF825F4(0, &qword_1ED5FE8A8, off_1E72AFF90);

    v26 = sub_18EFC8678();
    v60 = v26;
  }

  else
  {
    v60 = 0;
  }

  if (*(a1 + 120))
  {
    MEMORY[0x1EEE9AC00](v26);
    v52 = v25;
    v53 = a3;

    sub_18EF9D97C(sub_18F019F08);

    sub_18EF825F4(0, &unk_1ED5FE730, off_1E72AFEE8);
    v58 = sub_18F093DBC();
  }

  else
  {
    v58 = 0;
  }

  v30 = v62;
  if (v62)
  {
    v72 = v62;
    v73 = v56;
    v74 = v55;
    v75 = v54;
    LNExamplePhraseDescriptions.phraseDescriptions.getter();
    sub_18F019EA8(v30);
    sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
    v31 = sub_18F093DBC();
  }

  else
  {
    v31 = 0;
  }

  v32 = *(a1 + 128);
  if (v32)
  {
    MEMORY[0x1EEE9AC00](v26);
    v52 = v25;
    v53 = a3;

    sub_18EFC871C(sub_18F019E8C, &v50, v32);

    sub_18EF825F4(0, qword_1ED5FE4D8, off_1E72AFF20);
    v33 = sub_18F093DBC();
  }

  else
  {
    v33 = 0;
  }

  v34 = *(a1 + 136);
  if (v34)
  {
    MEMORY[0x1EEE9AC00](v26);
    v52 = v25;
    v53 = a3;

    sub_18EFC8C24(sub_18F019E4C, &v50, v34);

    sub_18EF825F4(0, qword_1ED5FE438, off_1E72AFF28);
    v34 = sub_18F093DBC();
  }

  v35 = *(a1 + 144);
  v57 = a3;
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v26);
    v52 = v71;
    v53 = a3;

    sub_18EFC8D4C(sub_18F019E30, &v50, v35);
    sub_18EFC4784(a1);

    sub_18EF825F4(0, &unk_1ED5FE410, off_1E72AFF08);
    v36 = sub_18F093DBC();
  }

  else
  {
    sub_18EFC4784(a1);
    v36 = 0;
  }

  v62 = v36;
  if (v59)
  {
    v37 = 14;
  }

  else
  {
    v37 = v61;
  }

  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v53 = v36;
  v51 = v33;
  v39 = v58;
  v40 = v60;
  v48 = v37;
  v42 = v66;
  v41 = v67;
  v43 = v33;
  v45 = v64;
  v44 = v65;
  v46 = v63;
  v69 = [v38 initWithActions:v67 entities:v66 queries:v65 enums:v64 autoShortcutProviderMangledName:v63 autoShortcuts:v70 shortcutTileColor:v48 version:v68 generator:v60 negativePhrases:v58 examplePhrases:v31 assistantIntents:v51 assistantIntentNegativePhrases:v34 assistantEntities:v53];

  sub_18EF933AC(v71, &qword_1EACB72C8);
  return v69;
}

void sub_18EFC62FC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
  sub_18EF86A14(a1, v14);
  sub_18EF9FE2C();
  v15 = a3;
  LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(v14, a2, v10, a3, v16, v17, v18, v19, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v21 = v20;
  v22 = [v20 effectiveBundleIdentifiers];
  v23 = [v22 array];

  v24 = MEMORY[0x1E69E7CA0];
  v25 = sub_18F093DCC();

  v26 = *(v25 + 16);

  if (!v26)
  {
    v27 = a1[6];
    if (v27)
    {
      v41 = a1[5];
      v28 = v27;
    }

    else
    {
      v29 = a1[2];
      v28 = a1[3];
      v41 = v29;
    }

    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_18F09BCC0;
      *(v30 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
      *(v30 + 32) = v15;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);

    v31 = v15;
    v32 = sub_18EF9CBD0(v30, v24 + 8, &selRef_initWithArray_);
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F09BCC0;
      v34 = v31;
      v35 = [v34 bundleIdentifier];
      v36 = sub_18F093B8C();
      v38 = v37;

      *(inited + 32) = v36;
      *(inited + 40) = v38;
      *(inited + 48) = v41;
      *(inited + 56) = v28;

      sub_18F093A5C();
    }

    else
    {

      sub_18F093A5C();
    }

    v39 = sub_18F093A3C();

    v40 = [v21 metadataByAddingEffectiveBundleIdentifiers:v32 mangledTypeNameByBundleIdentifier:v39];

    v21 = v40;
  }

  *v42 = v21;
}

id sub_18EFC66EC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = _s14CodableWrapperVMa_20(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  result = sub_18EFC6904(v13, v9, a2);
  *a3 = result;
  return result;
}

id sub_18EFC6860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[2] = a4;
  v8[3] = a5;

  sub_18EF93B88(sub_18EFC6844, v8, a3, _s14CodableWrapperVMa_20);
  v6 = objc_allocWithZone(LNActionConfigurationSwitch);
  return sub_18EFBB720();
}

id sub_18EFC6904(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s14CodableWrapperVMa_20(0);
  v7 = *(a1 + *(v6 + 20));
  if (v7 != 2 && (v7 & 1) == 0)
  {
    sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
    v11 = sub_18EFA4278(*(a1 + *(v6 + 24)), a2, a3);
    if (v11)
    {
      v12 = v11;
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      MEMORY[0x1EEE9AC00](v13);
      v14 = sub_18EFA4790(sub_18EFC74D8);
      v10 = [v13 initWithValue:v14 configuration:v12];

      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
  v8 = sub_18EFA4278(*(a1 + *(v6 + 24)), a2, a3);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefaultConfiguration_];

LABEL_7:
LABEL_9:
  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v10;
}

id sub_18EFC6ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v86 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v86 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v86 - v21;
  v23 = _s19BasicCodableWrapperOMa(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF86A14(a1, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = *v26;
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198) + 48);
      sub_18EF869B4();
      v93 = MEMORY[0x1E69E63B0];
      v91 = v54;
      v29 = [objc_opt_self() doubleValueType];
      goto LABEL_8;
    case 2u:
      v41 = *v26;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190) + 48);
      sub_18EF869B4();
      v93 = MEMORY[0x1E69E6370];
      LOBYTE(v91) = v41;
      v29 = [objc_opt_self() BOOLValueType];
      goto LABEL_8;
    case 3u:
      v43 = *v26;
      v44 = v26[1];
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188) + 48);
      sub_18EF869B4();
      v93 = MEMORY[0x1E69E6158];
      v91 = v43;
      v92 = v44;
      v29 = [objc_opt_self() stringValueType];
      goto LABEL_8;
    case 4u:
      v30 = *v26;
      v31 = v26[1];
      v32 = v26[2];
      v33 = v26[3];
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180) + 64);
      sub_18EF869B4();
      v93 = MEMORY[0x1E69E6158];
      v91 = v30;
      v92 = v31;
      sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);
      v35 = sub_18EFBB130();
      sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v36 = a3;
      v37 = sub_18EFC7534(v20, v9, a3);
      v38 = objc_allocWithZone(LNValue);
      v39 = sub_18EFC7858(&v91, v35, v37);
      v40 = v22;
      goto LABEL_9;
    case 5u:
      v62 = *v26;
      v61 = v26[1];
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178) + 64);
      sub_18EF869B4();
      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      v64 = sub_18EF9E62C(v61);
      if (v64)
      {
        v65 = v64;
        MEMORY[0x1EEE9AC00](v64);
        *(&v86 - 2) = a2;
        *(&v86 - 1) = a3;
        v90 = v61;
        v66 = sub_18EF93B88(sub_18EFC751C, (&v86 - 4), v62, _s19BasicCodableWrapperOMa);

        v67 = objc_allocWithZone(LNValue);
        v68 = v65;
        v39 = sub_18EFBB69C(v66, v68);
        sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
        sub_18EF9FE2C();
        sub_18EF9FE2C();
        v69 = a3;
        v70 = sub_18EFC7534(v22, v9, a3);
        [v39 setDisplayRepresentation_];

        sub_18EFA3DA4(v90);
        v40 = v17;
        goto LABEL_9;
      }

      sub_18EF933AC(v17, &qword_1EACB7860);
      sub_18EFA3DA4(v61);
      goto LABEL_17;
    case 6u:
      v88 = *v26;
      v71 = v26[2];
      v73 = v26[3];
      v72 = v26[4];
      v75 = v26[6];
      v74 = v26[7];
      v86 = v26[1];
      v87 = v74;
      v89 = v26[8];
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170) + 96);
      sub_18EF869B4();
      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      v90 = v75;
      v77 = sub_18EF9E62C(v75);
      if (v77)
      {
        v78 = v77;
        v79 = objc_allocWithZone(LNEntityIdentifier);
        v80 = sub_18EFA7764(v86, v71, v73, v72, &selRef_initWithTypeIdentifier_instanceIdentifier_);
        v81 = objc_allocWithZone(LNEntity);
        v82 = sub_18F00DBCC(v88, v80, MEMORY[0x1E69E7CC0], v87, v89);
        v93 = sub_18EF825F4(0, &unk_1ED5FCDB0, off_1E72B0008);
        v91 = v82;
        sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
        sub_18EF9FE2C();
        sub_18EF9FE2C();
        v83 = a3;
        v84 = sub_18EFC7534(v22, v9, a3);
        v85 = objc_allocWithZone(LNValue);
        v39 = sub_18EFC7858(&v91, v78, v84);
        sub_18EFA3DA4(v90);
        v40 = v14;
LABEL_9:
        sub_18EF933AC(v40, &qword_1EACB7860);
      }

      else
      {
        sub_18EF933AC(v14, &qword_1EACB7860);
        sub_18EFA3DA4(v90);

LABEL_17:

        return 0;
      }

      return v39;
    case 7u:
      v46 = *v26;
      v47 = v26[1];
      v49 = v26[2];
      v48 = v26[3];
      v50 = objc_allocWithZone(LNEntityIdentifier);
      v51 = sub_18EFA7764(v46, v47, v49, v48, &selRef_initWithTypeIdentifier_instanceIdentifier_);
      v93 = sub_18EF825F4(0, &unk_1EACB6AB8, off_1E72B0010);
      v91 = v51;
      v52 = [objc_allocWithZone(LNEntityIdentifierValueType) init];
      v53 = objc_allocWithZone(LNValue);
      return sub_18EFBB1A4(&v91, v52);
    default:
      v27 = *v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0) + 48);
      sub_18EF869B4();
      v93 = MEMORY[0x1E69E6530];
      v91 = v27;
      v29 = [objc_opt_self() intValueType];
LABEL_8:
      v56 = v29;
      sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v57 = a3;
      v58 = sub_18EFC7534(v20, v9, a3);
      v59 = objc_allocWithZone(LNValue);
      v39 = sub_18EFC7858(&v91, v56, v58);
      v40 = v22;
      goto LABEL_9;
  }
}

void OUTLINED_FUNCTION_312()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
}

id sub_18EFC7534(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = _s14CodableWrapperVMa_2(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {

    sub_18EF933AC(a2, &qword_1EACB72C8);
    sub_18EF933AC(a1, &qword_1EACB7860);
    sub_18EF933AC(v13, &qword_1EACB7860);
    return 0;
  }

  else
  {
    sub_18EF88240(v13, v20);
    sub_18EF86A14(v20, v18);
    sub_18EF9FE2C();
    v21 = sub_18EFA63B4(v18, v9, a3);
    sub_18EF933AC(a2, &qword_1EACB72C8);
    sub_18EF933AC(a1, &qword_1EACB7860);
    sub_18EF86A6C();
  }

  return v21;
}

id sub_18EFC77F4()
{
  OUTLINED_FUNCTION_316();
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v2 = OUTLINED_FUNCTION_137();
  result = sub_18EFC6ADC(v2, v3, v0);
  *v1 = result;
  return result;
}

id sub_18EFC7858(uint64_t *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = [v3 initWithValue:sub_18F09443C() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFC78EC(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_18EFC791C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

id sub_18EFC7954(void *a1, uint64_t a2, void *a3)
{
  v88 = a3;
  v89 = a2;
  v4 = _s14CodableWrapperVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v71[-v10];
  v12 = *a1;
  v13 = a1[1];
  v84 = sub_18F093B5C();
  v14 = 0;
  v15 = a1[6];
  if ((~v15 & 0xF000000000000007) != 0)
  {
    sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
    sub_18EFA3D24(v15);
    v14 = sub_18EF9E62C(v15);
    sub_18EFA3D90(v15);
  }

  v16 = a1[7];
  v90 = a1;
  if ((~v16 & 0xF000000000000007) == 0 || (sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220), sub_18EFA3D24(v16), v17 = sub_18EF9E62C(v16), sub_18EFA3D90(v16), !v17))
  {
    sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
    v18 = a1[4];
    v19 = v90[5];

    v20 = v19;
    a1 = v90;
    v17 = sub_18EF9EB60(v18, v20, &selRef_initWithIdentifier_);
  }

  if (a1[9])
  {
    v21 = a1[8];
    v22 = a1[9];
  }

  v80 = sub_18F093B5C();

  v23 = a1[10];
  v82 = v14;
  if (!v23)
  {
    sub_18F093A5C();
  }

  v79 = sub_18F093A3C();

  v24 = a1[11];
  v25 = MEMORY[0x1E69E7CC0];
  v81 = v17;
  if (v24)
  {
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v28 = MEMORY[0x1E69E7CC0];
      v29 = *(v5 + 72);
      do
      {
        sub_18EF86A14(v27, v11);
        v30 = *(v11 + 2);
        v31 = *(v11 + 1) & 0xFFFFFFFFFFFFLL;
        if ((v30 & 0x2000000000000000) != 0)
        {
          v31 = HIBYTE(v30) & 0xF;
        }

        if (v31)
        {
          v32 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          sub_18EF86A14(v11, v9);
          v33 = sub_18EF9FEB8(v9);
          *(&v92 + 1) = v32;
          *&v91 = v33;
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
        }

        sub_18EF86A6C();
        if (*(&v92 + 1))
        {
          sub_18EF914D4(&v91, v93);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_18EFA0044(0, *(v28 + 2) + 1, 1, v28);
          }

          v35 = *(v28 + 2);
          v34 = *(v28 + 3);
          if (v35 >= v34 >> 1)
          {
            v28 = sub_18EFA0044((v34 > 1), v35 + 1, 1, v28);
          }

          *(v28 + 2) = v35 + 1;
          sub_18EF914D4(v93, &v28[32 * v35 + 32]);
        }

        else
        {
          sub_18EF933AC(&v91, &qword_1EACB9180);
        }

        v27 += v29;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v78 = sub_18EF9CBD0(v28, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  v36 = v90;
  v37 = v90[12];
  MEMORY[0x1EEE9AC00](v78);
  sub_18EF9D97C(sub_18EFCD5FC);
  sub_18EF825F4(0, &qword_1ED5FE338, off_1E72B0130);
  v77 = sub_18F093DBC();

  v39 = v36[13];
  MEMORY[0x1EEE9AC00](v38);
  sub_18EF9D97C(sub_18EFCDCA4);
  sub_18EF825F4(0, &qword_1ED5FE320, off_1E72B0140);
  v87 = sub_18F093DBC();

  v40 = v36[14];
  if (v40)
  {
    sub_18EF94FC0(v40);
    type metadata accessor for LNPlatformName();
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v36 = v90;
    v86 = sub_18F093A3C();
  }

  else
  {
    v86 = 0;
  }

  v41 = v36[15];
  v42 = *(v36 + 128);
  v43 = _s14CodableWrapperVMa_32(0);
  v44 = v43[16];
  MEMORY[0x1EEE9AC00](v43);
  v85 = sub_18EFD9810(sub_18EF9D840);
  if (*(v36 + v43[17]) == 2)
  {
    result = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v45 = *(v36 + v43[17]);
    result = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v45 & 1 assistantOnly:(v45 >> 8) & 1];
  }

  v76 = result;
  v47 = v43[19];
  v74 = *(v36 + v43[18]);
  if (*(v36 + v47 + 8))
  {
    v48 = *(v36 + v47);
    result = sub_18F093B5C();
    v75 = result;
  }

  else
  {
    v75 = 0;
  }

  v49 = *(v36 + v43[20]);
  if (v49)
  {
    v72 = v42;
    v73 = v41;
    v50 = 0;
    *&v93[0] = v25;
    v51 = *(v49 + 16);
    for (i = (v49 + 56); ; i += 4)
    {
      if (v51 == v50)
      {
        sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
        v57 = sub_18F093DBC();

        v41 = v73;
        v42 = v72;
        goto LABEL_47;
      }

      if (v50 >= *(v49 + 16))
      {
        break;
      }

      v54 = *(i - 1);
      v53 = *i;
      v56 = *(i - 3);
      v55 = *(i - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      sub_18EFF196C(v56, v55, v54, v53);
      MEMORY[0x193AD88C0]();
      if (*((*&v93[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v93[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      result = sub_18F093E3C();
      ++v50;
    }

    __break(1u);
  }

  else
  {
    v57 = 0;
LABEL_47:
    if (v42)
    {
      v58 = 0;
    }

    else
    {
      v58 = v41;
    }

    v59 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v60 = v75;
    LOBYTE(v70) = v74 & 1;
    v61 = v76;
    v69 = v58;
    v62 = v77;
    v63 = v84;
    v65 = v81;
    v64 = v82;
    v67 = v79;
    v66 = v80;
    v68 = v78;
    v83 = [v59 initWithIdentifier:v84 inputValueType:v82 resultValueType:v81 mangledTypeName:v80 mangledTypeNameByBundleIdentifier:v79 effectiveBundleIdentifiers:v78 parameters:v77 sortingOptions:v87 availabilityAnnotations:v86 capabilities:v69 descriptionMetadata:v85 visibilityMetadata:v76 defaultQueryForEntity:v70 fullyQualifiedIdentifier:v75 allowedTargets:v57];

    sub_18EF933AC(v89, &qword_1EACB72C8);
    sub_18EF86A6C();
    return v83;
  }

  return result;
}

void sub_18EFC82CC(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = _s14CodableWrapperVMa_32(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  v15 = sub_18EFC7954(v13, v9, a2);
  v16 = [v15 effectiveBundleIdentifiers];
  v17 = [v16 array];

  v18 = MEMORY[0x1E69E7CA0];
  v19 = sub_18F093DCC();

  v20 = *(v19 + 16);

  if (!v20)
  {
    v21 = *(a1 + 72);
    if (v21)
    {
      v34 = *(a1 + 64);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_18F09BCC0;
        *(v22 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        *(v22 + 32) = v14;
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
      v23 = v14;
      v24 = sub_18EF9CBD0(v22, v18 + 8, &selRef_initWithArray_);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18F09BCC0;
        v26 = v23;
        v27 = [v26 bundleIdentifier];
        v28 = sub_18F093B8C();
        v30 = v29;

        *(inited + 32) = v28;
        *(inited + 40) = v30;
        *(inited + 48) = v34;
        *(inited + 56) = v21;

        sub_18F093A5C();
      }

      else
      {
        sub_18F093A5C();
      }

      v31 = sub_18F093A3C();

      v32 = [v15 metadataByAddingEffectiveBundleIdentifiers:v24 mangledTypeNameByBundleIdentifier:v31];

      v15 = v32;
    }
  }

  *a3 = v15;
}

id sub_18EFC8678()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F093B5C();
  v2 = sub_18F093B5C();

  v3 = [v0 initWithName:v1 version:v2];

  return v3;
}

uint64_t sub_18EFC871C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v8 = (a3 + 72);
    while (1)
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v13 = *(v8 - 1);
      v12 = *v8;
      v16[0] = *(v8 - 5);
      v16[1] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v13;
      v16[5] = v12;

      a1(&v17, v16);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v8 += 6;

      sub_18F0940FC();
      v14 = *(v18 + 16);
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      if (!--v5)
      {
        return v18;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18EFC888C(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  sub_18EF86A14(a1, v13);
  sub_18EF9FE2C();
  v14 = a2;
  LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v13, v9, a2, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v21 = v20;
  v22 = [v20 effectiveBundleIdentifiers];
  v23 = [v22 array];

  v24 = MEMORY[0x1E69E7CA0];
  v25 = sub_18F093DCC();

  v26 = *(v25 + 16);

  if (!v26)
  {
    v27 = *(a1 + 24);
    if (v27)
    {
      v40 = *(a1 + 16);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_18F09BCC0;
        *(v28 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        *(v28 + 32) = v14;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
      v29 = v14;
      v30 = sub_18EF9CBD0(v28, v24 + 8, &selRef_initWithArray_);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18F09BCC0;
        v32 = v29;
        v33 = [v32 bundleIdentifier];
        v34 = sub_18F093B8C();
        v36 = v35;

        *(inited + 32) = v34;
        *(inited + 40) = v36;
        *(inited + 48) = v40;
        *(inited + 56) = v27;

        sub_18F093A5C();
      }

      else
      {
        sub_18F093A5C();
      }

      v37 = sub_18F093A3C();

      v38 = [v21 metadataByAddingEffectiveBundleIdentifiers:v30 mangledTypeNameByBundleIdentifier:v37];

      v21 = v38;
    }
  }

  *a3 = v21;
}

uint64_t sub_18EFC8C24(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    for (i = (a3 + 48); ; i += 3)
    {
      v10 = *(i - 1);
      v11 = *i;
      v13[0] = *(i - 2);
      v13[1] = v10;
      v13[2] = v11;

      a1(&v14, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_18F0940FC();
      v12 = *(v15 + 16);
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18EFC8D4C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 56);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      a1(&v13, v14);
      if (v3)
      {
        break;
      }

      if (v13)
      {
        MEMORY[0x193AD88C0](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        sub_18F093E3C();
        v5 = v15;
      }

      v7 += 4;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_18EFC8FD0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x657A696C61636F6CLL;
  }

  return 0x74617261706D6F63;
}

uint64_t sub_18EFC9040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8230, &qword_18F0A1030);
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = _s14CodableWrapperVMa_33(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 20);
  v15 = _s14CodableWrapperVMa_0(0);
  v27 = v14;
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCC0E4();
  v17 = v26;
  sub_18F09459C();
  if (v17)
  {
    v19 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_18EF933AC(v13 + v19, &qword_1EACB72D0);
  }

  else
  {
    v26 = v9;
    v18 = v24;
    v31 = 0;
    *v13 = sub_18F09423C();
    v13[1] = v20;
    v30 = 1;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8240, &qword_18F0A1038);
    v29 = 2;
    sub_18F018AF0();
    v21 = v25;
    sub_18F0942CC();
    (*(v18 + 8))(v8, v21);
    *(v13 + *(v26 + 24)) = v28;
    sub_18EF86A14(v13, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18EFC9408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = _s14CodableWrapperVMa_0(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8218, &qword_18F0A1020);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = _s14CodableWrapperVMa_35(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC9854();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = a1;
  v16 = v27;
  v17 = v28;
  v31 = 0;
  *v14 = sub_18F09427C();
  v14[1] = v18;
  v30 = 1;
  v14[2] = sub_18F09427C();
  v14[3] = v19;
  v29 = 2;
  sub_18EF8558C(&unk_1ED5FF4F8);
  v23 = v14;
  sub_18F0942CC();
  (*(v16 + 8))(v10, v17);
  v20 = *(v11 + 24);
  v21 = v23;
  sub_18EF88240(v6, v23 + v20);
  sub_18EF86A14(v21, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_18EF86A6C();
}

unint64_t sub_18EFC97A8()
{
  result = qword_1EACB7170;
  if (!qword_1EACB7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7170);
  }

  return result;
}

unint64_t sub_18EFC9800()
{
  result = qword_1EACB7178;
  if (!qword_1EACB7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7178);
  }

  return result;
}

unint64_t sub_18EFC9854()
{
  result = qword_1EACB7180;
  if (!qword_1EACB7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7180);
  }

  return result;
}

uint64_t sub_18EFC98B0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x7954797469746E65;
  }

  return 0x656C746974;
}

uint64_t sub_18EFC990C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81C0, &qword_18F0A1000);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = v34 - v7;
  v9 = _s14CodableWrapperVMa_32(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 64);
  v15 = _s14CodableWrapperVMa_1(0);
  v45 = v14;
  v46 = v13;
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  v17 = a1[3];
  v16 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_18EFCBE50();
  v37 = v8;
  sub_18F09459C();
  if (v2)
  {
    v40 = 0;
    v41 = 0;
    v43 = 0;
    v44 = 0xF000000000000007;
    v42 = 0xF000000000000007;
    v20 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    sub_18EFA3D90(v42);
    sub_18EFA3D90(v44);

    sub_18EF933AC(v20 + v45, &unk_1EACB7310);
  }

  else
  {
    v18 = v36;
    LOBYTE(v47) = 0;
    v19 = sub_18F09427C();
    v21 = v46;
    *v46 = v19;
    v21[1] = v22;
    LOBYTE(v47) = 1;
    v21[2] = sub_18F09427C();
    v21[3] = v23;
    LOBYTE(v47) = 2;
    v21[4] = sub_18F09427C();
    v21[5] = v24;
    v49 = 3;
    v44 = sub_18EF8882C();
    sub_18F09426C();
    v42 = v47;
    v21[6] = v47;
    v49 = 4;
    sub_18F09426C();
    v44 = v47;
    v21[7] = v47;
    LOBYTE(v47) = 5;
    v21[8] = sub_18F09423C();
    v21[9] = v25;
    v43 = v25;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    v49 = 6;
    sub_18EF85B48(&unk_1ED5FF4A0);
    sub_18F09426C();
    v41 = v47;
    v21[10] = v47;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    v49 = 7;
    sub_18EF861C4();
    sub_18F09426C();
    v40 = v47;
    v21[11] = v47;
    v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81D0, &qword_18F0A1008);
    v49 = 8;
    sub_18EFCBEA4();
    sub_18F0942CC();
    v21[12] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81D8, &qword_18F0A1010);
    v49 = 9;
    sub_18EFCBF58();
    sub_18F0942CC();
    v46[13] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    v49 = 10;
    sub_18EF9CC4C();
    sub_18F09426C();
    v46[14] = v47;
    type metadata accessor for LNQueryCapabilities();
    v49 = 11;
    sub_18EF8558C(&unk_1ED5FE350);
    sub_18F09426C();
    v26 = v46;
    v27 = v48;
    v46[15] = v47;
    *(v26 + 128) = v27;
    LOBYTE(v47) = 12;
    sub_18EF8558C(&unk_1ED5FF140);
    sub_18F09426C();
    sub_18EF872D4();
    v49 = 13;
    sub_18EF99E5C();
    sub_18F09426C();
    *(v46 + v9[17]) = v47;
    LOBYTE(v47) = 14;
    *(v46 + v9[18]) = sub_18F09424C();
    LOBYTE(v47) = 15;
    v28 = sub_18F09423C();
    v29 = (v46 + v9[19]);
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    v49 = 16;
    sub_18F0135BC();
    sub_18F09426C();
    v31 = v9[20];
    (*(v18 + 8))(v37, v38);
    v32 = v46;
    *(v46 + v31) = v47;
    sub_18EF86A14(v32, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFCA3F0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7079547972657571;
      break;
    case 2:
      result = 0x7954797469746E65;
      break;
    case 3:
      result = 0x6C61567475706E69;
      break;
    case 4:
      result = 0x6156746C75736572;
      break;
    case 5:
      result = 0x5464656C676E616DLL;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x6574656D61726170;
      break;
    case 9:
      result = 0x4F676E6974726F73;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x696C696261706163;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFCA70C()
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
    if (v5 > 0x3F)
    {
      return v3;
    }

    v3 = _s14CodableWrapperVMa_0(319);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDB20(319, &qword_1ED5FD3D8, _s14CodableWrapperVMa_18, MEMORY[0x1E69E62F8]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
    if (v11 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
      v1 = v12;
      if (v13 <= 0x3F)
      {
        sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
        v1 = v14;
        if (v15 <= 0x3F)
        {
          sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
          v1 = v16;
          if (v17 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}