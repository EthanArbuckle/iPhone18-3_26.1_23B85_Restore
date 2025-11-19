uint64_t sub_20DA256DC(int a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
  v6 = sub_20DD64FD4();
  v4[4] = v6;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_20DA257C8;

  return sub_20DA241E4(v6, a2);
}

uint64_t sub_20DA257C8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_20DD63494();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v11 = sub_20DD64DB4();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

unint64_t sub_20DA25998(unint64_t a1, char **a2)
{
  v3 = v2;
  v6 = sub_20DD636C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v140 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v137 - v11;
  v13 = *(v2 + 128);
  v151 = MEMORY[0x277D83E88];
  *&v150 = v13;
  sub_20D9C29D8(&v150, &v148);
  v14 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v147 = v14;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  sub_20DA294AC(*v16, 0x6F43657461647075, 0xED00007265746E75, isUniquelyReferenced_nonNull_native, &v147);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  v152 = v147;
  v141 = objc_opt_self();
  v17 = [v141 hf_rfc3339Formatter];
  sub_20DD63684();
  v18 = sub_20DD63624();
  v142 = *(v7 + 8);
  v142(v12, v6);
  v19 = [v17 stringFromDate_];

  v20 = sub_20DD64EB4();
  v22 = v21;

  v23 = MEMORY[0x277D837D0];
  v151 = MEMORY[0x277D837D0];
  *&v150 = v20;
  *(&v150 + 1) = v22;
  sub_20D9C29D8(&v150, &v148);
  v24 = v152;
  LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
  v147 = v24;
  v25 = v149;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_20DA29604(*v29, v29[1], 0x6D617473656D6974, 0xE900000000000070, v22, &v147);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  v31 = v147;
  v152 = v147;
  v143 = a2;
  v144 = v3;
  v32 = *(v3 + 112);
  if (!v32)
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, &v148);
    sub_20D9D76EC(&v148, &qword_27C8442C0, &qword_20DD94B78);
    v47 = 0x656D614E656E6F7ALL;
    goto LABEL_9;
  }

  v33 = [*(v3 + 112) accessory];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 hf_serviceNameComponents];

    v36 = [v35 composedString];
    v37 = sub_20DD64EB4();
    v39 = v38;

    v151 = v23;
    *&v150 = v37;
    *(&v150 + 1) = v39;
    sub_20D9C29D8(&v150, &v148);
    LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
    v147 = v31;
    v40 = v149;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
    v42 = *(*(v40 - 8) + 64);
    MEMORY[0x28223BE20](v41);
    v44 = v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v44);
    v46 = v44;
    a2 = v143;
    sub_20DA29C88(v46, 0x614E6172656D6163, 0xEA0000000000656DLL, v36, &v147, v23);
    __swift_destroy_boxed_opaque_existential_0(&v148);
    v152 = v147;
  }

  else
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, &v148);
    sub_20D9D76EC(&v148, &qword_27C8442C0, &qword_20DD94B78);
  }

  v47 = 0x656D614E656E6F7ALL;
  v48 = [v32 recordingEventManager];
  if (!v48)
  {
LABEL_9:
    sub_20DA27AE8(0x656D614E656E6F7ALL, 0xE800000000000000, sub_20D9D77C8, sub_20D9D2E2C, &v148);
    sub_20D9D76EC(&v148, &qword_27C8442C0, &qword_20DD94B78);
    if (a2 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v49 = v48;
  v50 = [v48 zoneName];

  v51 = sub_20DD64EB4();
  v53 = v52;

  v151 = v23;
  *&v150 = v51;
  *(&v150 + 1) = v53;
  sub_20D9C29D8(&v150, &v148);
  v54 = v152;
  LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
  v147 = v54;
  v55 = v149;
  v56 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v57 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = v137 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v59);
  sub_20DA29C88(v59, 0x656D614E656E6F7ALL, 0xE800000000000000, v50, &v147, v23);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  a2 = v143;
  v152 = v147;
  if (v143 == 2)
  {
LABEL_8:
    v151 = v23;
    *&v150 = 0x64756F6C63;
    v61 = 0xE500000000000000;
    goto LABEL_14;
  }

LABEL_10:
  if (a2 == 1)
  {
    v151 = v23;
    *&v150 = 0x65646F4D77656976;
    v61 = 0xE90000000000006CLL;
  }

  else
  {
    if (a2)
    {
LABEL_70:
      *&v150 = a2;
      result = sub_20DD659B4();
      __break(1u);
      return result;
    }

    v151 = v23;
    *&v150 = 0x7645657461647075;
    v61 = 0xEC00000073746E65;
  }

LABEL_14:
  *(&v150 + 1) = v61;
  sub_20D9C29D8(&v150, &v148);
  v62 = v152;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v62;
  v64 = v149;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v66 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = v137 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v69 + 16))(v68);
  sub_20DA29C88(v68, 1701869940, 0xE400000000000000, v63, &v147, v64);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  v152 = v147;
  if (a1 >> 62)
  {
LABEL_61:
    v70 = sub_20DD655B4();
  }

  else
  {
    v70 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v70;
  v146 = a1 & 0xC000000000000001;
  v71 = v143;
  if (!v70)
  {
LABEL_24:
    v110 = 0;
    v141 = 0;
    v111 = a1;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = 0;
    v142 = MEMORY[0x277D84F90];
LABEL_25:
    v139 = v110;
    v140 = a1;
    v47 = v141;
    while (v70 != v110)
    {
      if (v146)
      {
        v12 = MEMORY[0x20F326680](v110, v111);
        v6 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v110 >= *(v23 + 16))
        {
          goto LABEL_59;
        }

        v12 = *(v111 + 8 * v110 + 32);
        swift_unknownObjectRetain();
        v6 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      v113 = sub_20DA26AEC(v12, v71);
      v114 = v113;
      if (v71 != 1)
      {
        swift_unknownObjectRelease();
        a1 = v140;
        goto LABEL_45;
      }

      if (!*(v113 + 16) || (v115 = sub_20D9CB170(0x745365676E616863, 0xEB00000000657461), (v116 & 1) == 0) || (sub_20D9D7174(*(v114 + 56) + 32 * v115, &v150), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80), (swift_dynamicCast() & 1) == 0))
      {
        swift_unknownObjectRelease();
        v141 = v47;
LABEL_45:
        v118 = v142;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_20D9E04F4(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        if (v120 >= v119 >> 1)
        {
          v118 = sub_20D9E04F4((v119 > 1), v120 + 1, 1, v118);
        }

        *(v118 + 2) = v120 + 1;
        v142 = v118;
        *(v118 + v120 + 4) = v114;
        v110 = v6;
        v70 = v145;
        goto LABEL_25;
      }

      if (v148 == __PAIR128__(0xE900000000000064, 0x65676E6168636E75))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v117 = sub_20DD65974();

        swift_unknownObjectRelease();
        if ((v117 & 1) == 0)
        {
          v141 = v47;
          v71 = v143;
          goto LABEL_45;
        }

        v71 = v143;
      }

      ++v110;
      v112 = __CFADD__(a1, 1);
      v47 = ++a1;
      v70 = v145;
      if (v112)
      {
        goto LABEL_60;
      }
    }

    if (&v140[v70] == v139)
    {
      goto LABEL_55;
    }

    if (qword_27C842450 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

  v138 = a1;
  if (v146)
  {
    v74 = MEMORY[0x20F326680](0, a1);
    a2 = &selRef_source;
    if (__OFSUB__(v70, 1))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v139 = MEMORY[0x20F326680](v70 - 1, a1);
LABEL_22:
    v137[1] = v74;
    v76 = v141;
    v77 = [v141 hf_rfc3339Formatter];
    v78 = [v74 dateOfOccurrence];
    sub_20DD63674();

    v79 = sub_20DD63624();
    v80 = v12;
    v12 = v142;
    v142(v80, v6);
    v81 = [v77 a2[109]];

    v82 = sub_20DD64EB4();
    v84 = v83;

    v151 = v23;
    *&v150 = v82;
    *(&v150 + 1) = v84;
    sub_20D9C29D8(&v150, &v148);
    v85 = v152;
    LOBYTE(v84) = swift_isUniquelyReferenced_nonNull_native();
    v147 = v85;
    v86 = v149;
    v87 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
    v88 = v23;
    v89 = a2;
    a2 = v137;
    v90 = *(*(v86 - 8) + 64);
    MEMORY[0x28223BE20](v87);
    v92 = (v137 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    sub_20DA29604(*v92, v92[1], 0x7461447472617473, 0xE900000000000065, v84, &v147);
    __swift_destroy_boxed_opaque_existential_0(&v148);
    v152 = v147;
    v94 = [v76 hf_rfc3339Formatter];
    v95 = [v139 hf_endDate];
    if (v95)
    {
      v96 = v95;
      v97 = v140;
      sub_20DD63674();

      v98 = sub_20DD63624();
      (v12)(v97, v6);
      v99 = [v94 v89 + 1144];

      v100 = sub_20DD64EB4();
      v102 = v101;

      v151 = v88;
      *&v150 = v100;
      *(&v150 + 1) = v102;
      sub_20D9C29D8(&v150, &v148);
      v103 = v152;
      LOBYTE(v102) = swift_isUniquelyReferenced_nonNull_native();
      v147 = v103;
      v104 = v149;
      v105 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
      v106 = *(*(v104 - 8) + 64);
      MEMORY[0x28223BE20](v105);
      v108 = (v137 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v109 + 16))(v108);
      sub_20DA29604(*v108, v108[1], 0x65746144646E65, 0xE700000000000000, v102, &v147);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v148);
      v152 = v147;
      v71 = v143;
      a1 = v138;
      v70 = v145;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_69;
  }

  v72 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a2 = &selRef_source;
  if (!v72)
  {
    __break(1u);
    goto LABEL_65;
  }

  v73 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v73 < v72)
  {
    v74 = *(a1 + 32);
    v75 = *(a1 + 32 + 8 * v73);
    swift_unknownObjectRetain();
    v139 = v75;
    swift_unknownObjectRetain();
    goto LABEL_22;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  swift_once();
LABEL_52:
  v121 = sub_20DD64C44();
  __swift_project_value_buffer(v121, qword_27C84C5F8);
  v122 = sub_20DD64C24();
  v123 = sub_20DD65384();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 134217984;
    *(v124 + 4) = v47;
    _os_log_impl(&dword_20D9BF000, v122, v123, "Filtered %lu unchanged events from viewModel debug log", v124, 0xCu);
    MEMORY[0x20F327D10](v124, -1, -1);
  }

LABEL_55:
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  v125 = v142;
  *&v150 = v142;
  sub_20D9C29D8(&v150, &v148);

  v126 = v152;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v126;
  v128 = v149;
  v129 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v130 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v132 = (v137 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v133 + 16))(v132);
  sub_20DA29A90(*v132, 0x73746E657665, 0xE600000000000000, v127, &v147);
  __swift_destroy_boxed_opaque_existential_0(&v148);
  v134 = v147;
  v135 = *(v125 + 2);

  if (!v135)
  {

    return sub_20D9D5FE0(MEMORY[0x277D84F90]);
  }

  return v134;
}

uint64_t sub_20DA26AEC(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() contextWithDetailLevel_];
  v5 = [a1 hf:v4 stateDumpBuilderWithContext:?];

  *&v34 = [v5 buildPropertyListRepresentation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844350, &unk_20DD94D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
  if (swift_dynamicCast())
  {
    v6 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34 = v6;
    sub_20DA2AEEC(v32[0], sub_20DA29460, 0, isUniquelyReferenced_nonNull_native, &v34);

    v8 = v34;
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = [a1 containerType];
  v10 = MEMORY[0x277D837D0];
  v35 = MEMORY[0x277D837D0];
  if (v9 == 2)
  {
    *&v34 = 0x6962616863616572;
    v11 = 0xEC0000007974696CLL;
  }

  else if (v9 == 1)
  {
    *&v34 = 0x6E6964726F636572;
    v11 = 0xE900000000000067;
  }

  else
  {
    *&v34 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  *(&v34 + 1) = v11;
  sub_20D9C29D8(&v34, v32);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v8;
  v13 = v33;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_20DA29C88(v17, 1701869940, 0xE400000000000000, v12, &v31, v13);
  __swift_destroy_boxed_opaque_existential_0(v32);
  v19 = v31;
  if (a2 == 1)
  {
    v20 = sub_20DA26ED8(a1, 1);
    v35 = v10;
    *&v34 = v20;
    *(&v34 + 1) = v21;
    sub_20D9C29D8(&v34, v32);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v19;
    v23 = v33;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v25 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v24);
    v27 = (&v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    sub_20DA29604(*v27, v27[1], 0x745365676E616863, 0xEB00000000657461, v22, &v31);

    __swift_destroy_boxed_opaque_existential_0(v32);
    return v31;
  }

  else
  {
  }

  return v19;
}

uint64_t sub_20DA26ED8(void *a1, uint64_t a2)
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v11 = *(v2 + 136);
  if (!*(v11 + 16))
  {
    goto LABEL_12;
  }

  v12 = sub_20D9CB38C(v9);
  if ((v13 & 1) == 0)
  {

LABEL_12:
    (*(v6 + 8))(v9, v5);
    return 7824750;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = *(v6 + 8);
  swift_unknownObjectRetain();
  v15(v9, v5);

  v16 = [a1 containerType];
  if (v16 == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      if ([v14 containerType] == 1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v17 = &unk_27C844348;
          v18 = 0x277CD18C8;
          goto LABEL_23;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_31:
    swift_unknownObjectRelease();
    return 0x65676E6168636E75;
  }

  if (v16 != 2 || a2 == 2)
  {
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      if ([v14 containerType] == 2)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v17 = &unk_27C844338;
          v18 = off_277DEF780;
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

LABEL_26:
    if (qword_27C842450 != -1)
    {
      swift_once();
    }

    v21 = sub_20DD64C44();
    __swift_project_value_buffer(v21, qword_27C84C5F8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = sub_20DD64C24();
    v23 = sub_20DD65364();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844330, &unk_20DD94D50);
      v26 = sub_20DD64ED4();
      v28 = sub_20D9E0B38(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v29 = sub_20DD64ED4();
      v31 = sub_20D9E0B38(v29, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_20D9BF000, v22, v23, "previousEvent.class %s != event.class %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v25, -1, -1);
      MEMORY[0x20F327D10](v24, -1, -1);
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_26;
    }

    swift_unknownObjectRetain();
    if ([v14 containerType] != 2 || (objc_opt_self(), !swift_dynamicCastObjCClass()))
    {
LABEL_25:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    v17 = &unk_27C844340;
    v18 = 0x277CD1928;
LABEL_23:
    sub_20D9D7510(0, v17, v18);
    swift_unknownObjectRetain();
    v20 = sub_20DD65454();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v20 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0x6465696669646F6DLL;
    }

    goto LABEL_31;
  }

  v33 = a2;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

uint64_t CameraEventDebugLogger.deinit()
{
  v1 = *(v0 + 136);

  sub_20D9D76EC(v0 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, &qword_27C8442E0, &qword_20DD95D90);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CameraEventDebugLogger.__deallocating_deinit()
{
  v1 = *(v0 + 136);

  sub_20D9D76EC(v0 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, &qword_27C8442E0, &qword_20DD95D90);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA274C8()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C5F8);
  __swift_project_value_buffer(v0, qword_27C84C5F8);
  return sub_20DD64C34();
}

double sub_20DA27550@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20D9CB1D0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D23EC();
      v11 = v13;
    }

    sub_20D9C29D8((*(v11 + 56) + 32 * v8), a2);
    sub_20DA27D3C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_20DA2769C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20D9CB264(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D2924();
      v11 = v13;
    }

    sub_20D9D4298(*(v11 + 48) + 40 * v8);
    sub_20D9C29D8((*(v11 + 56) + 32 * v8), a2);
    sub_20DA28254(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_20DA27740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20D9CB534(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D2AC8();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_20DD64504();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_20DD638D4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_20DA283F8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_20DD638D4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_20DA27920@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_20D9CB38C(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_20DD63744();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    sub_20DA27F04(v20, v17, a3);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

double sub_20DA27AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = *v5;
  v11 = sub_20D9CB170(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v8;
    v19 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v19;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    a3(*(v16 + 56) + 32 * v13, a5);
    sub_20DA2873C(v13, v16);
    *v8 = v16;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_20DA27BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_20D9CB800(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D3B54();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_20DD63FE4();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_20DA28C0C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_20DD63FE4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_20DA27D3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_20DD64EB4();
      sub_20DD65A64();
      v12 = v11;
      sub_20DD64F24();
      v13 = sub_20DD65AA4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_20DA27F04(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_20DD65524();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_20DA2B610(&qword_280E02290, MEMORY[0x277CC95F0]);
      v25 = sub_20DD64E24();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20DA28254(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      sub_20D9D7288(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_20DD65664();
      result = sub_20D9D4298(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20DA283F8(int64_t a1, uint64_t a2)
{
  v4 = sub_20DD64504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_20DD65524();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_20DA2B610(&unk_27C8443B0, MEMORY[0x277D16B08]);
      v24 = sub_20DD64E24();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_20DD638D4() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20DA2873C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_20DD65A64();

      sub_20DD64F24();
      v14 = sub_20DD65AA4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20DA288EC(int64_t a1, uint64_t a2)
{
  v43 = sub_20DD63744();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_20DD65524();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_20DA2B610(&qword_280E02290, MEMORY[0x277CC95F0]);
      v26 = sub_20DD64E24();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_20DA28C0C(int64_t a1, uint64_t a2)
{
  v4 = sub_20DD63FE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_20DD65524();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_20DA2B610(&qword_27C844380, MEMORY[0x277D15B60]);
      v23 = sub_20DD64E24();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

void sub_20DA28F0C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v58[0] = v19;
  sub_20D9D7558(a1 + v19, v58 - v16, &qword_27C843530, &qword_20DD95680);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_20D9CB38C(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_20D9CEA00(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_20D9CB38C(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_20DD659E4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_20D9D2FF4();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v33 = swift_dynamicCast();
    v34 = v66;
    if ((v33 & 1) == 0)
    {
      swift_unknownObjectRelease();

      (*(v59 + 8))(v11, v34);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v58[0];
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_20D9D7558(v42, v17, &qword_27C843530, &qword_20DD95680);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_20D9CB38C(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_20D9CEA00(v50, 1);
        v52 = *a3;
        v46 = sub_20D9CB38C(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_20DD65704();
  MEMORY[0x20F325E90](0xD00000000000001BLL, 0x800000020DD98FC0);
  sub_20DD657A4();
  MEMORY[0x20F325E90](39, 0xE100000000000000);
  sub_20DD65814();
  __break(1u);
}

uint64_t sub_20DA29460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_20D9D7174((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

_OWORD *sub_20DA294AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83E88];
  v9 = *a5;
  v11 = sub_20D9CB170(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_20D9CB170(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83E88]);
  sub_20DA2A034(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_20DA29604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_20D9CB170(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_20D9C29D8(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_20D9CB170(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_20DA29FB0(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_20DA297E8(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v24 = a5;
  v25 = MEMORY[0x277D839F8];
  v9 = *a4;
  v11 = sub_20D9CB170(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_20D9CB170(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839F8]);
  sub_20DA29F2C(v11, a1, a2, v17, *v23);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_20DA29938(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_20D9CB170(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_20D9C29D8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_20D9CB170(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839B0]);
  sub_20DA29EA8(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

_OWORD *sub_20DA29A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  v31 = v10;
  *&v30 = a1;
  v11 = *a5;
  v13 = sub_20D9CB170(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_20D9C29D8(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_20D9CB170(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_20DA2A0B8(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_20DA29C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v34 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_20D9CB170(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return sub_20D9C29D8(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_20D9D2E2C();
    goto LABEL_7;
  }

  sub_20D9CE714(v18, a4 & 1);
  v24 = *a5;
  v25 = sub_20D9CB170(a2, a3);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_20DD659E4();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = v34;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_20DA2A168(v15, a2, a3, v31, v21, a6);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

_OWORD *sub_20DA29EA8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_20DA29F2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_20DA29FB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_20D9C29D8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_20DA2A034(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83E88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D9C29D8(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_20DA2A0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_20D9C29D8(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_20DA2A168(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_20D9C29D8(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_20DA2A23C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20D9D7174(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_20D9C29D8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_20D9D76EC(v22, &unk_27C844360, &unk_20DD94D70);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA2A39C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844388, &qword_20DD95590);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v46 = sub_20DD636C4();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844390, &qword_20DD94DF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_20DA031AC(v17, v36, &qword_27C844390, &qword_20DD94DF0);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_20DA031AC(v40, v43, &qword_27C844388, &qword_20DD95590);
      v37(v41);
      sub_20D9D76EC(v41, &qword_27C844388, &qword_20DD95590);
      v39 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CameraEventDebugLogger()
{
  result = qword_27C844318;
  if (!qword_27C844318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20DA2A7CC()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_20DD63504();
  v1 = sub_20DD64E74();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_20DD634D4();
    v8[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v8];

    if (v4)
    {
      v5 = v8[0];
    }

    else
    {
      v6 = v8[0];
      sub_20DD634A4();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20DA2A8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DA2A968()
{
  result = qword_27C844308;
  if (!qword_27C844308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844308);
  }

  return result;
}

void sub_20DA2A9D4()
{
  sub_20DA2AE94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CameraEventDebugLogger.removeExistingFiles()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return v6();
}

uint64_t dispatch thunk of CameraEventDebugLogger.logFetchEventsToJSON(dateInterval:limit:ascending:reason:playheadPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x100);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_20D9D7010;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CameraEventDebugLogger.logEvents(_:toJSONWithDebugLogType:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x108);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D9D77BC;

  return v10(a1, a2);
}

void sub_20DA2AE94()
{
  if (!qword_27C844328)
  {
    sub_20DD63484();
    v0 = sub_20DD65494();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844328);
    }
  }
}

unint64_t sub_20DA2AEEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_20DA2A23C(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_20D9C29D8(v46, v44);
  v14 = *a5;
  result = sub_20D9CB170(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20D9CE714(v20, a4 & 1);
    v22 = *a5;
    result = sub_20D9CB170(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20DD659E4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_20D9D2E2C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_20D9C29D8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_20D9C29D8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_20DA2A23C(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_20D9C29D8(v46, v44);
        v33 = *a5;
        result = sub_20D9CB170(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_20D9CE714(v37, 1);
          v38 = *a5;
          result = sub_20D9CB170(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_20D9C29D8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_20D9C29D8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_20DA2A23C(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_20D9C51CC();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20DA2B1FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D77C4;

  return sub_20DA256DC(v2, v3, v5, v4);
}

uint64_t sub_20DA2B2BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20D9D77C4;

  return sub_20DAB33DC(v2, v3, v5);
}

uint64_t sub_20DA2B37C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20D9D77C4;

  return sub_20DA23D70(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_20DA2B458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DAB34C4(a1, v4, v5, v7);
}

uint64_t sub_20DA2B524()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA22540(v2, v3);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DA2B610(unint64_t *a1, void (*a2)(uint64_t))
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

id HFAccessoryRepresentable.moveToRoom(room:)(uint64_t a1)
{
  v2 = [v1 hf:a1 moveToRoom:?];

  return v2;
}

id HFAccessoryRepresentable.room.getter()
{
  v1 = [v0 hf_safeRoom];

  return v1;
}

id HFAccessoryRepresentable.homeKitObject.getter()
{
  v1 = [v0 hf_homeKitObject];

  return v1;
}

id HFAccessoryRepresentable.accessoryType.getter()
{
  v1 = [v0 hf_accessoryType];

  return v1;
}

id HFAccessoryRepresentable.itemClass.getter()
{
  result = [v0 hf_itemClass];
  if (result)
  {
    swift_getObjCClassMetadata();
    return swift_dynamicCastTypeToObjCProtocolConditional();
  }

  return result;
}

uint64_t sub_20DA2B860(uint64_t a1, SEL *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = [v5 *a2];
  sub_20D9D7510(0, a3, a4);
  sub_20D9EC18C(a5, a3, a4);
  v10 = sub_20DD651E4();

  return v10;
}

uint64_t sub_20DA2B9B4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  while ((a2 & 0xC000000000000001) == 0)
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(a2 + 32);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    if (!sub_20DD655B4())
    {
      return 0;
    }
  }

  v4 = MEMORY[0x20F326680](0, a2);
LABEL_6:
  [v4 mediaProfiles];
  sub_20D9D7510(0, &qword_27C8443C0, 0x277CD1BD8);
  sub_20D9EC18C(&qword_27C8443C8, &qword_27C8443C0, 0x277CD1BD8);
  result = sub_20DD651D4();
  __break(1u);
  return result;
}

uint64_t Sequence<>.contains(services:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_20D9DFCF4(sub_20DA2BEA0, v4, a1) & 1;
}

uint64_t sub_20DA2BEA0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v6 = *a1;
  return sub_20DD64F94() & 1;
}

uint64_t sub_20DA2BEF4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = HFAccessoryRepresentable.containedServices.getter(a1);
  LOBYTE(a2) = sub_20D9F01FC(a2, v4);

  return a2 & 1;
}

uint64_t sub_20DA2BFA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = HFAccessoryRepresentable.associatedAccessories.getter(a1);
  v3 = HFAccessoryRepresentable.associatedAccessories.getter(v2);
  v4 = sub_20DA2C050(v2, v3, &qword_27C844290, 0x277CD1650);

  return v4 & 1;
}

uint64_t sub_20DA2C050(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_20DA2C2A0(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_20D9D7510(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v30 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v31 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v31 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(a2 + 40);
          v22 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v23 = sub_20DD65444();
          v24 = -1 << *(a2 + 32);
          v25 = v23 & ~v24;
          if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v26 = ~v24;
          while (1)
          {
            v27 = *(*(a2 + 48) + 8 * v25);
            v28 = sub_20DD65454();

            if (v28)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v16 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v30;
          v13 = v31;
          v17 = a1;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_20DA2C2A0(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

void sub_20DA2C2A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_20DD655B4())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_20DD65604();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20DA2C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo21HFImageIconIdentifiera4HomeE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _sSo21HFImageIconIdentifiera4HomeE8allCasesSayABGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8443E0, &unk_20DD94E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD94E20;
  *(v0 + 32) = @"HFImageIconIdentifierServiceSensor";
  *(v0 + 40) = @"HFImageIconIdentifierService2Sensors";
  *(v0 + 48) = @"HFImageIconIdentifierService3Sensors";
  *(v0 + 56) = @"HFImageIconIdentifierService4Sensors";
  *(v0 + 64) = @"HFImageIconIdentifierService5Sensors";
  *(v0 + 72) = @"HFImageIconIdentifierService6Sensors";
  *(v0 + 80) = @"HFImageIconIdentifierWaterDroplet";
  *(v0 + 88) = @"HFImageIconIdentifierSceneArrivingHome";
  *(v0 + 96) = @"HFImageIconIdentifierSceneBreakfast";
  *(v0 + 104) = @"HFImageIconIdentifierSceneChillOut";
  *(v0 + 112) = @"HFImageIconIdentifierSceneCoffee";
  *(v0 + 120) = @"HFImageIconIdentifierSceneDinner";
  *(v0 + 128) = @"HFImageIconIdentifierSceneLeavingHome";
  *(v0 + 136) = @"HFImageIconIdentifierSceneMovie";
  *(v0 + 144) = @"HFImageIconIdentifierSceneParty";
  *(v0 + 152) = @"HFImageIconIdentifierSceneRomance";
  *(v0 + 160) = @"HFImageIconIdentifierSceneSleep";
  *(v0 + 168) = @"HFImageIconIdentifierSceneWakeUp";
  *(v0 + 176) = @"HFImageIconIdentifierTriggerTime";
  *(v0 + 184) = @"HFImageIconIdentifierTriggerLocation";
  *(v0 + 192) = @"HFImageIconIdentifierTriggerCharacteristic";
  *(v0 + 200) = @"HFImageIconIdentifierTriggerSensor";
  *(v0 + 208) = @"HFImageIconIdentifierMapLocationHome";
  *(v0 + 216) = @"HFImageIconIdentifierMapLocationMarker";
  *(v0 + 224) = @"HFImageIconIdentifierGeneric";
  *(v0 + 232) = @"HFImageIconIdentifierPlaceholder";
  *(v0 + 240) = @"HFImageIconIdentifierDecorationSwing";
  *(v0 + 248) = @"HFImageIconIdentifierSiriOrbRegular";
  *(v0 + 256) = @"HFImageIconIdentifierSiriOrbSmall";
  *(v0 + 264) = @"HFImageIconIdentifierHomeRegular";
  *(v0 + 272) = @"HFImageIconIdentifierHomeSmall";
  *(v0 + 280) = @"HFImageIconIdentifierNaturalLightingRegular";
  *(v0 + 288) = @"HFImageIconIdentifierNaturalLightingSmall";
  *(v0 + 296) = @"HFImageIconIdentifierSetupBannerDisclosure";
  *(v0 + 304) = @"HFImageIconIdentifierSeparatorArrow";
  v1 = @"HFImageIconIdentifierServiceSensor";
  v2 = @"HFImageIconIdentifierService2Sensors";
  v3 = @"HFImageIconIdentifierService3Sensors";
  v4 = @"HFImageIconIdentifierService4Sensors";
  v5 = @"HFImageIconIdentifierService5Sensors";
  v6 = @"HFImageIconIdentifierService6Sensors";
  v7 = @"HFImageIconIdentifierWaterDroplet";
  v8 = @"HFImageIconIdentifierSceneArrivingHome";
  v9 = @"HFImageIconIdentifierSceneBreakfast";
  v10 = @"HFImageIconIdentifierSceneChillOut";
  v11 = @"HFImageIconIdentifierSceneCoffee";
  v12 = @"HFImageIconIdentifierSceneDinner";
  v13 = @"HFImageIconIdentifierSceneLeavingHome";
  v14 = @"HFImageIconIdentifierSceneMovie";
  v15 = @"HFImageIconIdentifierSceneParty";
  v16 = @"HFImageIconIdentifierSceneRomance";
  v17 = @"HFImageIconIdentifierSceneSleep";
  v18 = @"HFImageIconIdentifierSceneWakeUp";
  v19 = @"HFImageIconIdentifierTriggerTime";
  v20 = @"HFImageIconIdentifierTriggerLocation";
  v21 = @"HFImageIconIdentifierTriggerCharacteristic";
  v22 = @"HFImageIconIdentifierTriggerSensor";
  v23 = @"HFImageIconIdentifierMapLocationHome";
  v24 = @"HFImageIconIdentifierMapLocationMarker";
  v25 = @"HFImageIconIdentifierGeneric";
  v26 = @"HFImageIconIdentifierPlaceholder";
  v27 = @"HFImageIconIdentifierDecorationSwing";
  v28 = @"HFImageIconIdentifierSiriOrbRegular";
  v29 = @"HFImageIconIdentifierSiriOrbSmall";
  v30 = @"HFImageIconIdentifierHomeRegular";
  v31 = @"HFImageIconIdentifierHomeSmall";
  v32 = @"HFImageIconIdentifierNaturalLightingRegular";
  v33 = @"HFImageIconIdentifierNaturalLightingSmall";
  v34 = @"HFImageIconIdentifierSetupBannerDisclosure";
  v35 = @"HFImageIconIdentifierSeparatorArrow";
  return v0;
}

unint64_t sub_20DA2C7A8()
{
  result = qword_27C8443D0;
  if (!qword_27C8443D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443D8, &qword_20DD94E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8443D0);
  }

  return result;
}

uint64_t sub_20DA2C814(void *a1)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  sub_20DD651E4();
  v2 = a1;
  sub_20DD63C74();
}

uint64_t DataModel.home(_:willReadValuesFor:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = sub_20DD655B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a2 + 16);
    if (!result)
    {
      return result;
    }
  }

  return sub_20DD63C74();
}

void sub_20DA2C920(void *a1)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v1 = sub_20DD651E4();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    if (!sub_20DD655B4())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(v1 + 16);
  v4 = a1;
  if (v3)
  {
LABEL_3:
    sub_20DD63C74();
  }

LABEL_4:
}

uint64_t sub_20DA2CA14(void *a1, uint64_t a2, void *a3)
{
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v5 = sub_20DD651E4();
  sub_20DD651E4();
  v6 = a3;
  v7 = a1;
  sub_20DA2F3E8(v5);
}

Swift::Void __swiftcall DataModel.executionEnvironmentRunningStateDidChange(_:)(HFExecutionEnvironment *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = [(HFExecutionEnvironment *)a1 runningState];
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_20DD650F4();
  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = ObjectType;
  sub_20DA1C514(0, 0, v6, &unk_20DD94E90, v10);
}

uint64_t sub_20DA2CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20DD64C44();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_20DD63BD4();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v13 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2CD88, v13, v12);
}

uint64_t sub_20DA2CD88()
{
  v1 = v0[10];
  v2 = v0[2];

  if (v2 == 1)
  {
    v4 = v0 + 9;
    v10 = v0[9];
    v5 = v0 + 8;
    v11 = v0[8];
    v8 = v0 + 7;
    v12 = v0[7];
    sub_20DD63C84();
    v9 = sub_20DD63C64();
    (*(v11 + 104))(v10, *MEMORY[0x277D15410], v12);
    sub_20DD63C54();
  }

  else if (v2)
  {
    v4 = v0 + 6;
    v13 = v0[6];
    v14 = v0[3];
    sub_20DD63BC4();
    v9 = sub_20DD64C24();
    v15 = sub_20DD65374();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = v0[2];
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&dword_20D9BF000, v9, v15, "Received unknown running state from HFExecutionEnvironment: %lu", v17, 0xCu);
      MEMORY[0x20F327D10](v17, -1, -1);
    }

    v5 = v0 + 5;
    v8 = v0 + 4;
  }

  else
  {
    v4 = v0 + 9;
    v3 = v0[9];
    v5 = v0 + 8;
    v6 = v0[8];
    v8 = v0 + 7;
    v7 = v0[7];
    sub_20DD63C84();
    v9 = sub_20DD63C64();
    (*(v6 + 104))(v3, *MEMORY[0x277D15410], v7);
    sub_20DD63C44();
  }

  v18 = *v4;
  v19 = *v8;
  v20 = *v5;
  v21 = v0[9];
  v22 = v0[6];

  (*(v20 + 8))(v18, v19);

  v23 = v0[1];

  return v23();
}

void sub_20DA2CF98(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = a3;
  v10 = [v9 runningState];
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_20DD650F4();
  v12 = sub_20DD650E4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = ObjectType;
  sub_20DA1C514(0, 0, v8, &unk_20DD94FD0, v13);
}

Swift::Void __swiftcall DataModel.didUpdate(toInstallingState:for:)(Swift::Bool toInstallingState, HMAccessory *a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD64464();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if ([(HMAccessory *)a2 supportsCHIP])
  {
    v17 = MEMORY[0x277D16638];
  }

  else
  {
    v18 = *MEMORY[0x277D165E8];
    v19 = sub_20DD64454();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17 = MEMORY[0x277D16610];
  }

  v20 = *(v10 + 104);
  v20(v16, *v17, v9);
  v21 = [(HMAccessory *)a2 uniqueIdentifier];
  sub_20DD63714();

  if (toInstallingState)
  {
    (*(v10 + 16))(v14, v16, v9);
  }

  else
  {
    v20(v14, *MEMORY[0x277D16600], v9);
  }

  sub_20DD63C34();
  v22 = *(v10 + 8);
  v22(v14, v9);
  (*(v5 + 8))(v8, v4);
  v22(v16, v9);
}

void sub_20DA2D398(void *a1, uint64_t a2, Swift::Bool a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  DataModel.didUpdate(toInstallingState:for:)(a3, v6);
}

uint64_t HMHome.notifyHomeObserversOfChanged(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20DD650F4();
  v8 = v1;

  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_20DA1C514(0, 0, v6, &unk_20DD94EA0, v10);
}

uint64_t sub_20DA2D540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v7 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2D5D8, v7, v6);
}

uint64_t sub_20DA2D5D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = [objc_opt_self() sharedDispatcher];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v0[6] = sub_20DA2FC94;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_78;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v3;

  [v4 dispatchHomeObserverMessage:v6 sender:0];
  _Block_release(v6);

  v9 = v0[1];

  return v9();
}

void sub_20DA2D728(void *a1, uint64_t a2)
{
  if ([a1 respondsToSelector_])
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
    {
      sub_20D9EBA70(MEMORY[0x277D84F90]);
    }

    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    v4 = sub_20DD651C4();
    v5 = sub_20DD651C4();

    [a1 home:a2 didWriteValuesForCharacteristics:v4 failedCharacteristics:v5];
  }
}

Swift::Void __swiftcall HMHome.notifyHomeObserversOfNewRoom(_:)(HMRoom a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_20DD65114();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_20DD650F4();
  v8 = v1;
  v9 = a1.super.isa;
  v10 = sub_20DD650E4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_20DA1C514(0, 0, v6, &unk_20DD94EB0, v11);
}

uint64_t sub_20DA2D9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_20DD650F4();
  v5[10] = sub_20DD650E4();
  v7 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2DA4C, v7, v6);
}

uint64_t sub_20DA2DA4C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = [objc_opt_self() sharedDispatcher];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v0[6] = sub_20DA2FC20;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_72;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v3;
  v9 = v2;

  [v4 dispatchHomeObserverMessage:v6 sender:0];
  _Block_release(v6);

  v10 = v0[1];

  return v10();
}

Swift::Void __swiftcall HMHome.notifyHomeObserversOfRoomChanged(_:for:)(HMRoom _, HMAccessory *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_20DD65114();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20DD650F4();
  v10 = v2;
  v11 = _.super.isa;
  v12 = a2;
  v13 = sub_20DD650E4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  sub_20DA1C514(0, 0, v8, &unk_20DD94EC0, v14);
}

uint64_t sub_20DA2DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_20DD650F4();
  v6[11] = sub_20DD650E4();
  v8 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2DD7C, v8, v7);
}

uint64_t sub_20DA2DD7C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = [objc_opt_self() sharedDispatcher];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v0[6] = sub_20DA2FB98;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_66;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];
  v9 = v4;
  v10 = v3;
  v11 = v2;

  [v5 dispatchHomeObserverMessage:v7 sender:0];
  _Block_release(v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DA2DED0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_20DD650F4();
  v9 = v7;

  v10 = sub_20DD650E4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;
  sub_20DA1C514(0, 0, v6, &unk_20DD94FF8, v11);
}

uint64_t sub_20DA2E000(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_20DD650F4();
  v9 = v7;
  v10 = a1;
  v11 = sub_20DD650E4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v10;
  sub_20DA1C514(0, 0, v6, &unk_20DD94FF0, v12);
}

uint64_t sub_20DA2E130(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = *v2;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_20DD650F4();
  v11 = v9;
  v12 = a1;
  v13 = a2;
  v14 = sub_20DD650E4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  sub_20DA1C514(0, 0, v8, &unk_20DD94FE8, v15);
}

uint64_t sub_20DA2E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_20DD650F4();
  *(v4 + 72) = sub_20DD650E4();
  v6 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2E330, v6, v5);
}

uint64_t sub_20DA2E330()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[6] = sub_20DA2FB1C;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_60;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];
  v7 = v2;

  [v3 dispatchAccessoryObserverMessage:v5 sender:0];
  _Block_release(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DA2E46C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20DA2E4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_20DD650F4();
  v9 = v2;
  v10 = sub_20DD650E4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_20DA1C514(0, 0, v7, a2, v11);
}

uint64_t sub_20DA2E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_20DD650F4();
  *(v4 + 72) = sub_20DD650E4();
  v6 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA2E6A4, v6, v5);
}

uint64_t sub_20DA2E6A4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = [objc_opt_self() sharedDispatcher];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[6] = sub_20DA2FAF8;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DA2E46C;
  v0[5] = &block_descriptor_3;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];
  v7 = v2;

  [v3 dispatchAccessoryObserverMessage:v5 sender:0];
  _Block_release(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DA2E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *v4;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_20DD650F4();
  v12 = v10;
  v13 = sub_20DD650E4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_20DA1C514(0, 0, v9, a4, v14);
}

uint64_t HMCharacteristic.hasReadInProgress.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = v0;
  v7 = v0;
  sub_20D9EBA70(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v9 = sub_20DD651C4();

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EEAC8(MEMORY[0x277D84F90]);
    }
  }

  sub_20D9D7510(0, &qword_280E02140, 0x277CD1800);
  sub_20D9EC18C(&qword_280E02138, &qword_280E02140, 0x277CD1800);
  v10 = sub_20DD651C4();

  v11 = [v5 cachedLoadingStateForCharacteristics:v9 actionSets:v10];

  return v11 == 1;
}

uint64_t HMCharacteristic.hasWriteInProgress.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = v0;
  v7 = v0;
  sub_20D9EBA70(inited);
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v9 = sub_20DD651C4();

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EEAC8(MEMORY[0x277D84F90]);
    }
  }

  sub_20D9D7510(0, &qword_280E02140, 0x277CD1800);
  sub_20D9EC18C(&qword_280E02138, &qword_280E02140, 0x277CD1800);
  v10 = sub_20DD651C4();

  v11 = [v5 cachedLoadingStateForCharacteristics:v9 actionSets:v10];

  return v11 == 2;
}

void HMCharacteristic.error.getter(uint64_t a1@<X8>)
{
  if ([objc_opt_self() synchronizesHomeDataModel])
  {
    v3 = [v1 service];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accessory];

      if (v5)
      {
        v6 = [v5 home];

        if (v6)
        {
          v7 = [v6 hf_characteristicValueManagerIfCreated];

          if (v7)
          {
            if ([v7 cachedReadErrorForCharacteristic_])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
              sub_20D9D7510(0, &qword_27C8443F8, 0x277CCA9B8);
              if (swift_dynamicCast())
              {
                v8 = [v22 domain];
                v9 = sub_20DD64EB4();
                v11 = v10;

                v12 = *MEMORY[0x277CCFD28];
                if (v9 == sub_20DD64EB4() && v11 == v13)
                {

                  goto LABEL_15;
                }

                v16 = sub_20DD65974();

                if (v16)
                {
LABEL_15:
                  v17 = [v22 code];

                  if (v17 == 103)
                  {
                    v18 = sub_20DD643C4();
                    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);

                    return;
                  }

                  goto LABEL_18;
                }
              }
            }

LABEL_18:
            if ([v7 cachedReadErrorForCharacteristic_] && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00), sub_20D9D7510(0, &qword_27C8443F8, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
            {
              [v22 code];
              v19 = [v22 domain];
              sub_20DD64EB4();

              sub_20DD643B4();
              v20 = sub_20DD643C4();
              (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
            }

            else
            {

              v21 = sub_20DD643C4();
              (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
            }

            return;
          }
        }
      }
    }
  }

  v14 = sub_20DD643C4();
  v15 = *(*(v14 - 8) + 56);

  v15(a1, 1, 1, v14);
}

uint64_t HMCharacteristic.hasValidRead.getter()
{
  if (![objc_opt_self() synchronizesHomeDataModel])
  {
    return 2;
  }

  v1 = [v0 service];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 accessory];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 home];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 hf_characteristicValueManagerIfCreated];

  if (!v5)
  {
    return 2;
  }

  v6 = [v5 allReadCharacteristics];
  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
  v7 = sub_20DD651E4();

  v8 = sub_20D9EFDB8(v0, v7);

  return v8 & 1;
}

uint64_t sub_20DA2F3E8(uint64_t *a1)
{
  v5 = sub_20DA54FA8(a1);

  sub_20DA12BD0(v1);
  v2 = v5;
  if (!(v5 >> 62))
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = sub_20DD655B4();
  v2 = v5;
  if (v4)
  {
LABEL_3:
    sub_20D9F916C(v2);

    sub_20DD63C74();
  }

LABEL_4:
}

uint64_t sub_20DA2F4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2CC38(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2D540(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA2D9B4(a1, v4, v5, v7, v6);
}

uint64_t sub_20DA2F6E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA2DCE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA2F7B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA2E298(a1, v4, v5, v6);
}

uint64_t sub_20DA2F864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20DA2E60C(a1, v4, v5, v6);
}

uint64_t sub_20DA2F918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DA2CC38(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_20DA2FB28(void *a1, const char **a2)
{
  v5 = *(v2 + 16);
  result = [a1 respondsToSelector_];
  if (result)
  {
    v7 = *a2;

    return [a1 v7];
  }

  return result;
}

id sub_20DA2FB98(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 home:v3 didUpdateRoom:v4 forAccessory:v5];
  }

  return result;
}

id sub_20DA2FC20(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 home:v3 didAddRoom:v4];
  }

  return result;
}

BOOL sub_20DA2FD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_20DA36A04(a4, a5);
  }

  while ((sub_20DD64E64() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_20DA2FE0C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_20DD64164();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_20DA300CC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F326680](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_20DA30228(void (*a1)(uint64_t, uint64_t))
{
  sub_20DD649A4();
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  a1(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t HFEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20DD649D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD64784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D17970])
  {
    (*(v5 + 96))(v8, v4);
    (*(v10 + 32))(v13, v8, v9);
    sub_20DD64774();
    (*(v10 + 8))(v13, v9);
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_20DD647E4();
    v14 = sub_20DD63744();
    (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v16 = sub_20DD63744();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t HFEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DD64784();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD649D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = type metadata accessor for HFEvent();
  sub_20D9C90A8(v1 + *(v19 + 20), v18);
  v20 = sub_20DD63744();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
    (*(v8 + 16))(v11, v1, v7);
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D17970])
    {
      (*(v8 + 96))(v11, v7);
      v23 = v26;
      v22 = v27;
      (*(v26 + 32))(v6, v11, v27);
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v28, v28[3]);
      sub_20DD647D4();
      (*(v23 + 8))(v6, v22);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    else
    {
      (*(v21 + 56))(v16, 1, 1, v20);
      (*(v8 + 8))(v11, v7);
    }

    return sub_20DA30928(v16, a1);
  }

  else
  {
    (*(v21 + 32))(a1, v18, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t type metadata accessor for HFEvent()
{
  result = qword_27C844418;
  if (!qword_27C844418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA30928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA30998(uint64_t a1)
{
  v2 = v1;
  v172 = a1;
  v143 = sub_20DD64654();
  v142 = *(v143 - 8);
  v3 = *(v142 + 64);
  v4 = MEMORY[0x28223BE20](v143);
  v138 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v137 = &v133 - v6;
  v148 = sub_20DD647B4();
  v147 = *(v148 - 8);
  v7 = *(v147 + 64);
  v8 = MEMORY[0x28223BE20](v148);
  v141 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v140 = &v133 - v10;
  v153 = sub_20DD64994();
  v152 = *(v153 - 8);
  v11 = *(v152 + 64);
  v12 = MEMORY[0x28223BE20](v153);
  v146 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = &v133 - v14;
  v158 = sub_20DD646C4();
  v157 = *(v158 - 8);
  v15 = *(v157 + 64);
  v16 = MEMORY[0x28223BE20](v158);
  v151 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v150 = &v133 - v18;
  v19 = sub_20DD64964();
  v161 = *(v19 - 8);
  v162 = v19;
  v20 = *(v161 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v156 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v155 = &v133 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844430, &qword_20DD950B8);
  v24 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v26 = &v133 - v25;
  v27 = sub_20DD63744();
  v167 = *(v27 - 8);
  v168 = v27;
  v28 = *(v167 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v166 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v165 = &v133 - v31;
  v32 = sub_20DD649D4();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = MEMORY[0x28223BE20](v32);
  v171 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v133 - v37;
  v170 = sub_20DD64784();
  v39 = *(v170 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v170);
  v139 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v144 = &v133 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v149 = &v133 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v154 = &v133 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v160 = &v133 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v169 = &v133 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v133 - v53;
  v55 = v33[2];
  v159 = v2;
  v55(v38, v2, v32);
  v173 = v33;
  v174 = v32;
  v56 = v33[11];
  v57 = v56(v38, v32);
  if (v57 == *MEMORY[0x277D17970])
  {
    v58 = v57;
    v133 = v26;
    v59 = v174;
    v60 = v173[12];
    v136 = v173 + 12;
    v135 = v60;
    v60(v38, v174);
    v61 = *(v39 + 32);
    v164 = v54;
    v62 = v170;
    v134 = v61;
    v61();
    v38 = v171;
    v55(v171, v172, v59);
    v63 = v56(v38, v59);
    v64 = v62;
    if (v63 == v58)
    {
      v173 = v39;
      v135(v38, v174);
      v65 = v169;
      (v134)(v169, v38, v62);
      v66 = v164;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(&v175, v176);
      v67 = v165;
      sub_20DD647E4();
      __swift_destroy_boxed_opaque_existential_0(&v175);
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(&v175, v176);
      v68 = v166;
      sub_20DD647E4();
      __swift_destroy_boxed_opaque_existential_0(&v175);
      v69 = sub_20DD63704();
      v70 = *(v167 + 8);
      v71 = v68;
      v72 = v168;
      v70(v71, v168);
      v70(v67, v72);
      if ((v69 & 1) == 0)
      {
        v96 = v173[1];
        v96(v65, v64);
        return (v96)(v66, v64);
      }

      v73 = *(v163 + 48);
      v74 = v173;
      v75 = v173[2];
      v76 = v65;
      v77 = v133;
      v75(v133, v66, v64);
      v75((v77 + v73), v76, v64);
      v78 = v74[11];
      v79 = v78(v77, v64);
      v80 = v79;
      if (v79 == *MEMORY[0x277D17788])
      {
        v81 = v160;
        v75(v160, v77, v64);
        v82 = v74[12];
        v82(v81, v64);
        v83 = v78(v77 + v73, v64);
        v84 = v77;
        if (v83 == v80)
        {
          v85 = v73;
          v82((v84 + v73), v64);
          v87 = v161;
          v86 = v162;
          v88 = *(v161 + 32);
          v89 = v81;
          v90 = v155;
          v88(v155, v89, v162);
          v91 = v156;
          v88(v156, (v84 + v85), v86);
          sub_20DA31A74(v90, v91);
          v92 = *(v87 + 8);
          v92(v91, v86);
          v92(v90, v86);
          v93 = v74[1];
          v93(v169, v64);
          v93(v164, v64);
          v94 = v84;
          return (v93)(v94, v64);
        }

        v108 = v74[1];
        v108(v169, v64);
        v108(v164, v64);
        (*(v161 + 8))(v81, v162);
        return sub_20D9D76EC(v77, &qword_27C844430, &qword_20DD950B8);
      }

      v174 = v73;
      if (v79 == *MEMORY[0x277D17750])
      {
        v97 = v154;
        v77 = v133;
        v75(v154, v133, v64);
        v98 = v173;
        v99 = v173[12];
        v99(v97, v64);
        v100 = v174;
        if (v78(v77 + v174, v64) == v80)
        {
          v99((v77 + v100), v64);
          v101 = v157;
          v102 = *(v157 + 32);
          v103 = v97;
          v104 = v150;
          v105 = v158;
          v102(v150, v103, v158);
          v106 = v77 + v100;
          v107 = v151;
          v102(v151, v106, v105);
          sub_20DA31CD4(v104, v107);
LABEL_26:
          v129 = *(v101 + 8);
          v129(v107, v105);
          v129(v104, v105);
          v93 = v98[1];
          v93(v169, v64);
          v93(v164, v64);
          v94 = v77;
          return (v93)(v94, v64);
        }

        v115 = v98[1];
        v115(v169, v64);
        v115(v164, v64);
        (*(v157 + 8))(v97, v158);
      }

      else if (v79 == *MEMORY[0x277D17790])
      {
        v109 = v149;
        v77 = v133;
        v75(v149, v133, v64);
        v98 = v173;
        v110 = v173[12];
        v110(v109, v64);
        v111 = v174;
        if (v78(v77 + v174, v64) == v80)
        {
          v110((v77 + v111), v64);
          v101 = v152;
          v112 = *(v152 + 32);
          v113 = v109;
          v104 = v145;
          v105 = v153;
          v112(v145, v113, v153);
          v114 = v77 + v111;
          v107 = v146;
          v112(v146, v114, v105);
          sub_20DA31F4C(v104, v107);
          goto LABEL_26;
        }

        v122 = v98[1];
        v122(v169, v64);
        v122(v164, v64);
        (*(v152 + 8))(v109, v153);
      }

      else if (v79 == *MEMORY[0x277D17768])
      {
        v116 = v144;
        v77 = v133;
        v75(v144, v133, v64);
        v98 = v173;
        v117 = v173[12];
        v117(v116, v64);
        v118 = v174;
        if (v78(v77 + v174, v64) == v80)
        {
          v117((v77 + v118), v64);
          v101 = v147;
          v119 = *(v147 + 32);
          v104 = v140;
          v120 = v116;
          v105 = v148;
          v119(v140, v120, v148);
          v121 = v77 + v118;
          v107 = v141;
          v119(v141, v121, v105);
          sub_20DA321AC(v104, v107);
          goto LABEL_26;
        }

        v130 = v98[1];
        v130(v169, v64);
        v130(v164, v64);
        (*(v147 + 8))(v116, v148);
      }

      else if (v79 == *MEMORY[0x277D17798])
      {
        v123 = v139;
        v77 = v133;
        v75(v139, v133, v64);
        v98 = v173;
        v124 = v173[12];
        v124(v123, v64);
        v125 = v174;
        if (v78(v77 + v174, v64) == v80)
        {
          v124((v77 + v125), v64);
          v101 = v142;
          v126 = *(v142 + 32);
          v104 = v137;
          v127 = v123;
          v105 = v143;
          v126(v137, v127, v143);
          v128 = v77 + v125;
          v107 = v138;
          v126(v138, v128, v105);
          sub_20DA32434(v104, v107);
          goto LABEL_26;
        }

        v132 = v98[1];
        v132(v169, v64);
        v132(v164, v64);
        (*(v142 + 8))(v123, v143);
      }

      else
      {
        v131 = v173[1];
        v131(v169, v64);
        v131(v164, v64);
        v77 = v133;
      }

      return sub_20D9D76EC(v77, &qword_27C844430, &qword_20DD950B8);
    }

    (*(v39 + 8))(v164, v62);
  }

  return (v173[1])(v38, v174);
}

uint64_t sub_20DA31A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844438, &qword_20DD950C0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = sub_20DD64944();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_20DD64954();
  sub_20DD64954();
  v17 = *(v5 + 56);
  v18 = *(v10 + 32);
  v18(v8, v16, v9);
  v18(&v8[v17], v14, v9);
  v19 = *(v10 + 88);
  v20 = v19(v8, v9);
  if (v20 == *MEMORY[0x277D178C0])
  {
    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D178D8];
  }

  else
  {
    if (v20 != *MEMORY[0x277D178C8])
    {
      return sub_20D9D76EC(v8, &qword_27C844438, &qword_20DD950C0);
    }

    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D178D0];
  }

  if (v21 == *v22)
  {
    (*(v10 + 8))(v8, v9);
    return sub_20DA34460(a1, a2, v24[1], 30.0);
  }

  return sub_20D9D76EC(v8, &qword_27C844438, &qword_20DD950C0);
}

uint64_t sub_20DA31CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844450, &qword_20DD950C8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_20DD646A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  sub_20DD646B4();
  sub_20DD646B4();
  v17 = *(v5 + 56);
  v18 = *(v10 + 32);
  v18(v8, v16, v9);
  v18(&v8[v17], v14, v9);
  v19 = *(v10 + 88);
  v20 = v19(v8, v9);
  if (v20 == *MEMORY[0x277D176C0])
  {
    if (v19(&v8[v17], v9) == *MEMORY[0x277D176D8])
    {
      v21 = 30.0;
LABEL_7:
      sub_20DA34984(a1, a2, v23[1], v21);
      return (*(v10 + 8))(v8, v9);
    }
  }

  else if (v20 == *MEMORY[0x277D176C8] && v19(&v8[v17], v9) == *MEMORY[0x277D176D0])
  {
    v21 = 300.0;
    goto LABEL_7;
  }

  return sub_20D9D76EC(v8, &qword_27C844450, &qword_20DD950C8);
}

uint64_t sub_20DA31F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844468, &qword_20DD950D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = sub_20DD64974();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_20DD64984();
  sub_20DD64984();
  v17 = *(v5 + 56);
  v18 = *(v10 + 32);
  v18(v8, v16, v9);
  v18(&v8[v17], v14, v9);
  v19 = *(v10 + 88);
  v20 = v19(v8, v9);
  if (v20 == *MEMORY[0x277D17930])
  {
    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D17938];
  }

  else
  {
    if (v20 != *MEMORY[0x277D17918])
    {
      return sub_20D9D76EC(v8, &qword_27C844468, &qword_20DD950D0);
    }

    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D17920];
  }

  if (v21 == *v22)
  {
    (*(v10 + 8))(v8, v9);
    return sub_20DA34E38(a1, a2, v24[1], 30.0);
  }

  return sub_20D9D76EC(v8, &qword_27C844468, &qword_20DD950D0);
}

uint64_t sub_20DA321AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844480, &qword_20DD950D8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = sub_20DD64794();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_20DD647A4();
  sub_20DD647A4();
  v17 = *(v5 + 56);
  v18 = *(v10 + 32);
  v18(v8, v16, v9);
  v18(&v8[v17], v14, v9);
  v19 = *(v10 + 88);
  v20 = v19(v8, v9);
  if (v20 == *MEMORY[0x277D177D0])
  {
    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D177E0];
  }

  else
  {
    if (v20 != *MEMORY[0x277D177D8] && v20 != *MEMORY[0x277D177B0] && v20 != *MEMORY[0x277D177E8])
    {
      return sub_20D9D76EC(v8, &qword_27C844480, &qword_20DD950D8);
    }

    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D177B8];
  }

  if (v21 == *v22)
  {
    (*(v10 + 8))(v8, v9);
    return sub_20DA352EC(a1, a2, v24[1], 30.0);
  }

  return sub_20D9D76EC(v8, &qword_27C844480, &qword_20DD950D8);
}

uint64_t sub_20DA32434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844498, &qword_20DD950E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = sub_20DD64634();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  sub_20DD64644();
  sub_20DD64644();
  v17 = *(v5 + 56);
  v18 = *(v10 + 32);
  v18(v8, v16, v9);
  v18(&v8[v17], v14, v9);
  v19 = *(v10 + 88);
  v20 = v19(v8, v9);
  if (v20 == *MEMORY[0x277D175D8])
  {
    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D175F0];
  }

  else
  {
    if (v20 != *MEMORY[0x277D175E0])
    {
      return sub_20D9D76EC(v8, &qword_27C844498, &qword_20DD950E0);
    }

    v21 = v19(&v8[v17], v9);
    v22 = MEMORY[0x277D175E8];
  }

  if (v21 == *v22)
  {
    (*(v10 + 8))(v8, v9);
    return sub_20DA357A0(a1, a2, v24[1], 30.0);
  }

  return sub_20D9D76EC(v8, &qword_27C844498, &qword_20DD950E0);
}

uint64_t HFEvent.hashValue.getter()
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

uint64_t sub_20DA326E0()
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

uint64_t sub_20DA32724()
{
  sub_20DD65A64();
  _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
  return sub_20DD65AA4();
}

id HFEvent.home.getter()
{
  v0 = sub_20DD63744();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedDispatcher];
  v6 = [v5 homeManager];

  if (!v6)
  {
    return 0;
  }

  sub_20DD649A4();
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  sub_20DD64684();
  __swift_destroy_boxed_opaque_existential_0(v11);
  v7 = sub_20DD636F4();
  (*(v1 + 8))(v4, v0);
  v8 = [v6 hf:v7 homeWithIdentifier:?];

  return v8;
}

id sub_20DA32924(void (*a1)(uint64_t, uint64_t), SEL *a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD649D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD64784();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D17970])
  {
    (*(v9 + 96))(v12, v8);
    (*(v14 + 32))(v17, v12, v13);
    v18 = HFEvent.home.getter();
    if (v18)
    {
      v19 = v18;
      sub_20DD64774();
      v20 = v29;
      v21 = v30;
      __swift_project_boxed_opaque_existential_0(v28, v29);
      v26(v20, v21);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v22 = sub_20DD636F4();
      (*(v4 + 8))(v7, v3);
      v23 = [v19 *v27];
    }

    else
    {
      v23 = 0;
    }

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v23;
}

void *HFEvent.user.getter()
{
  v1 = HFEvent.home.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 hf_allUsersIncludingCurrentUser];

  sub_20D9D7510(0, &qword_27C844400, 0x277CD1EE0);
  v4 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v5);
  v8[2] = v0;
  v6 = sub_20DA300CC(sub_20DA3315C, v8, v4);

  return v6;
}

uint64_t sub_20DA32D24(id *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = [*a1 uniqueIdentifier];
  sub_20DD63714();

  (*(v3 + 56))(v19, 0, 1, v2);
  HFEvent.userIdentifier.getter(v17);
  v21 = *(v7 + 56);
  sub_20D9C90A8(v19, v10);
  sub_20D9C90A8(v17, &v10[v21]);
  v22 = *(v3 + 48);
  if (v22(v10, 1, v2) != 1)
  {
    sub_20D9C90A8(v10, v29);
    if (v22(&v10[v21], 1, v2) != 1)
    {
      v24 = &v10[v21];
      v25 = v28;
      (*(v3 + 32))(v28, v24, v2);
      sub_20DA36A04(&qword_280E02288, MEMORY[0x277CC95F0]);
      v23 = sub_20DD64E64();
      v26 = *(v3 + 8);
      v26(v25, v2);
      sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v19, &unk_27C843A70, &qword_20DD94260);
      v26(v29, v2);
      sub_20D9D76EC(v10, &unk_27C843A70, &qword_20DD94260);
      return v23 & 1;
    }

    sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v19, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v29, v2);
    goto LABEL_6;
  }

  sub_20D9D76EC(v17, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v19, &unk_27C843A70, &qword_20DD94260);
  if (v22(&v10[v21], 1, v2) != 1)
  {
LABEL_6:
    sub_20D9D76EC(v10, &qword_27C843A68, &unk_20DD940F0);
    v23 = 0;
    return v23 & 1;
  }

  sub_20D9D76EC(v10, &unk_27C843A70, &qword_20DD94260);
  v23 = 1;
  return v23 & 1;
}

void *HFEvent.guestUser.getter()
{
  v1 = HFEvent.home.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = [v3 pinCodeManagerForHome_];

  v5 = [v4 guestUserInformation];
  sub_20D9D7510(0, &qword_27C844408, 0x277CD1638);
  v6 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v7);
  v10[2] = v0;
  v8 = sub_20DA300CC(sub_20DA33710, v10, v6);

  return v8;
}

uint64_t sub_20DA332B4(id *a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A68, &unk_20DD940F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = [*a1 labelIdentifier];
  if (v19)
  {
    v20 = v19;
    sub_20DD63714();

    (*(v3 + 56))(v18, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v18, 1, 1, v2);
  }

  HFEvent.userIdentifier.getter(v16);
  v21 = *(v6 + 48);
  sub_20D9C90A8(v18, v9);
  sub_20D9C90A8(v16, &v9[v21]);
  v22 = *(v3 + 48);
  if (v22(v9, 1, v2) != 1)
  {
    v24 = v30;
    sub_20D9C90A8(v9, v30);
    if (v22(&v9[v21], 1, v2) != 1)
    {
      v25 = &v9[v21];
      v26 = v29;
      (*(v3 + 32))(v29, v25, v2);
      sub_20DA36A04(&qword_280E02288, MEMORY[0x277CC95F0]);
      v23 = sub_20DD64E64();
      v27 = *(v3 + 8);
      v27(v26, v2);
      sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
      sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
      v27(v30, v2);
      sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
      return v23 & 1;
    }

    sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
    sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
    (*(v3 + 8))(v24, v2);
    goto LABEL_9;
  }

  sub_20D9D76EC(v16, &unk_27C843A70, &qword_20DD94260);
  sub_20D9D76EC(v18, &unk_27C843A70, &qword_20DD94260);
  if (v22(&v9[v21], 1, v2) != 1)
  {
LABEL_9:
    sub_20D9D76EC(v9, &qword_27C843A68, &unk_20DD940F0);
    v23 = 0;
    return v23 & 1;
  }

  sub_20D9D76EC(v9, &unk_27C843A70, &qword_20DD94260);
  v23 = 1;
  return v23 & 1;
}

uint64_t HFEvent.id.getter()
{
  v1 = sub_20DD63604();
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = *(v68 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD636C4();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v59 - v11;
  v12 = sub_20DD63744();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20DD64784();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20DD649D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v0, v21);
  if ((*(v22 + 88))(v25, v21) == *MEMORY[0x277D17970])
  {
    v61 = v8;
    (*(v22 + 96))(v25, v21);
    v59 = v17;
    v60 = v16;
    (*(v17 + 32))(v20, v25, v16);
    v62 = v0;
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    sub_20DD64684();
    __swift_destroy_boxed_opaque_existential_0(v70);
    v26 = sub_20DD636E4();
    v28 = v27;
    v29 = v64;
    v30 = v65;
    v31 = *(v64 + 8);
    v31(v15, v65);
    v72 = v26;
    v73 = v28;
    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD64774();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    sub_20DD647E4();
    __swift_destroy_boxed_opaque_existential_0(v70);
    v32 = sub_20DD636E4();
    v34 = v33;
    v31(v15, v30);
    MEMORY[0x20F325E90](v32, v34);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD64774();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    v35 = v63;
    sub_20DD647D4();
    __swift_destroy_boxed_opaque_existential_0(v70);
    v36 = (*(v29 + 48))(v35, 1, v30);
    v37 = v20;
    if (v36 == 1)
    {
      sub_20D9D76EC(v35, &unk_27C843A70, &qword_20DD94260);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = sub_20DD636E4();
      v39 = v48;
      v31(v35, v30);
    }

    v50 = v68;
    v49 = v69;
    v51 = v67;
    v70[0] = v38;
    v70[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844118, qword_20DD96F20);
    v52 = sub_20DD64ED4();
    MEMORY[0x20F325E90](v52);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    v53 = v61;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v70);
    sub_20DA33EDC(v4);
    v54 = sub_20DD63594();
    v56 = v55;
    (*(v50 + 8))(v4, v49);
    (*(v66 + 8))(v53, v51);
    MEMORY[0x20F325E90](v54, v56);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    v57 = HFEvent.stateDescription.getter();
    MEMORY[0x20F325E90](v57);

    v47 = v72;
    (*(v59 + 8))(v37, v60);
  }

  else
  {
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    sub_20DD64684();
    __swift_destroy_boxed_opaque_existential_0(v70);
    v40 = sub_20DD636E4();
    v42 = v41;
    (*(v64 + 8))(v15, v65);
    v72 = v40;
    v73 = v42;
    MEMORY[0x20F325E90](45, 0xE100000000000000);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v70, v71);
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v70);
    sub_20DA33EDC(v4);
    v43 = sub_20DD63594();
    v45 = v44;
    (*(v68 + 8))(v4, v69);
    (*(v66 + 8))(v8, v67);
    MEMORY[0x20F325E90](v43, v45);

    MEMORY[0x20F325E90](45, 0xE100000000000000);
    v46 = HFEvent.stateDescription.getter();
    MEMORY[0x20F325E90](v46);

    v47 = v72;
    (*(v22 + 8))(v25, v21);
  }

  return v47;
}

uint64_t sub_20DA33EDC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844500, &qword_20DD97000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_20DD63834();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20DD635F4();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD635D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20DD635B4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20DD635C4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_20DD63814();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_20DD635E4();
  }

  return result;
}

uint64_t sub_20DA34334@<X0>(uint64_t *a1@<X8>)
{
  result = HFEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_20DA34384()
{
  sub_20DD649D4();
  if (v0 <= 0x3F)
  {
    sub_20DA34408();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DA34408()
{
  if (!qword_27C844428)
  {
    sub_20DD63744();
    v0 = sub_20DD65494();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844428);
    }
  }
}

uint64_t sub_20DA34460(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v44 = sub_20DD636C4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_20DD64964();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = v19[2];
  v26(&v40 - v24, a1, v18);
  v26(v23, v43, v18);
  sub_20DA36A04(&qword_27C844440, MEMORY[0x277D17908]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v28 = v27;
  v29 = *(v11 + 8);
  v30 = v44;
  v29(v15, v44);
  v29(v17, v30);
  if (fabs(v28) <= a4)
  {
    sub_20DA36A04(&qword_27C844448, MEMORY[0x277D17908]);
    v33 = v45;
    sub_20DD647D4();
    v34 = v19[1];
    v34(v25, v18);
    v35 = sub_20DD63744();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v33, 1, v35) == 1)
    {
      v38 = v41;
      sub_20DD647D4();
      v34(v23, v18);
      if (v37(v45, 1, v35) != 1)
      {
        sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v34(v23, v18);
      v38 = v41;
      (*(v36 + 32))(v41, v45, v35);
      (*(v36 + 56))(v38, 0, 1, v35);
    }

    v39 = type metadata accessor for HFEvent();
    return sub_20DA34914(v38, v42 + *(v39 + 20));
  }

  else
  {
    v31 = v19[1];
    v31(v23, v18);
    return (v31)(v25, v18);
  }
}

uint64_t sub_20DA34914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA34984(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v44 = sub_20DD636C4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_20DD646C4();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = v19[2];
  v26(&v40 - v24, a1, v18);
  v26(v23, v43, v18);
  sub_20DA36A04(&qword_27C844458, MEMORY[0x277D17710]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v28 = v27;
  v29 = *(v11 + 8);
  v30 = v44;
  v29(v15, v44);
  v29(v17, v30);
  if (fabs(v28) <= a4)
  {
    sub_20DA36A04(&qword_27C844460, MEMORY[0x277D17710]);
    v33 = v45;
    sub_20DD647D4();
    v34 = v19[1];
    v34(v25, v18);
    v35 = sub_20DD63744();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v33, 1, v35) == 1)
    {
      v38 = v41;
      sub_20DD647D4();
      v34(v23, v18);
      if (v37(v45, 1, v35) != 1)
      {
        sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v34(v23, v18);
      v38 = v41;
      (*(v36 + 32))(v41, v45, v35);
      (*(v36 + 56))(v38, 0, 1, v35);
    }

    v39 = type metadata accessor for HFEvent();
    return sub_20DA34914(v38, v42 + *(v39 + 20));
  }

  else
  {
    v31 = v19[1];
    v31(v23, v18);
    return (v31)(v25, v18);
  }
}

uint64_t sub_20DA34E38(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v44 = sub_20DD636C4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_20DD64994();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = v19[2];
  v26(&v40 - v24, a1, v18);
  v26(v23, v43, v18);
  sub_20DA36A04(&qword_27C844470, MEMORY[0x277D17960]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v28 = v27;
  v29 = *(v11 + 8);
  v30 = v44;
  v29(v15, v44);
  v29(v17, v30);
  if (fabs(v28) <= a4)
  {
    sub_20DA36A04(&qword_27C844478, MEMORY[0x277D17960]);
    v33 = v45;
    sub_20DD647D4();
    v34 = v19[1];
    v34(v25, v18);
    v35 = sub_20DD63744();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v33, 1, v35) == 1)
    {
      v38 = v41;
      sub_20DD647D4();
      v34(v23, v18);
      if (v37(v45, 1, v35) != 1)
      {
        sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v34(v23, v18);
      v38 = v41;
      (*(v36 + 32))(v41, v45, v35);
      (*(v36 + 56))(v38, 0, 1, v35);
    }

    v39 = type metadata accessor for HFEvent();
    return sub_20DA34914(v38, v42 + *(v39 + 20));
  }

  else
  {
    v31 = v19[1];
    v31(v23, v18);
    return (v31)(v25, v18);
  }
}

uint64_t sub_20DA352EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v44 = sub_20DD636C4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_20DD647B4();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = v19[2];
  v26(&v40 - v24, a1, v18);
  v26(v23, v43, v18);
  sub_20DA36A04(&qword_27C844488, MEMORY[0x277D17810]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v28 = v27;
  v29 = *(v11 + 8);
  v30 = v44;
  v29(v15, v44);
  v29(v17, v30);
  if (fabs(v28) <= a4)
  {
    sub_20DA36A04(&qword_27C844490, MEMORY[0x277D17810]);
    v33 = v45;
    sub_20DD647D4();
    v34 = v19[1];
    v34(v25, v18);
    v35 = sub_20DD63744();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v33, 1, v35) == 1)
    {
      v38 = v41;
      sub_20DD647D4();
      v34(v23, v18);
      if (v37(v45, 1, v35) != 1)
      {
        sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v34(v23, v18);
      v38 = v41;
      (*(v36 + 32))(v41, v45, v35);
      (*(v36 + 56))(v38, 0, 1, v35);
    }

    v39 = type metadata accessor for HFEvent();
    return sub_20DA34914(v38, v42 + *(v39 + 20));
  }

  else
  {
    v31 = v19[1];
    v31(v23, v18);
    return (v31)(v25, v18);
  }
}

uint64_t sub_20DA357A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v44 = sub_20DD636C4();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_20DD64654();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = v19[2];
  v26(&v40 - v24, a1, v18);
  v26(v23, v43, v18);
  sub_20DA36A04(&qword_27C8444A0, MEMORY[0x277D17620]);
  sub_20DD64694();
  sub_20DD64694();
  sub_20DD635A4();
  v28 = v27;
  v29 = *(v11 + 8);
  v30 = v44;
  v29(v15, v44);
  v29(v17, v30);
  if (fabs(v28) <= a4)
  {
    sub_20DA36A04(&qword_27C8444A8, MEMORY[0x277D17620]);
    v33 = v45;
    sub_20DD647D4();
    v34 = v19[1];
    v34(v25, v18);
    v35 = sub_20DD63744();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v33, 1, v35) == 1)
    {
      v38 = v41;
      sub_20DD647D4();
      v34(v23, v18);
      if (v37(v45, 1, v35) != 1)
      {
        sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
      }
    }

    else
    {
      v34(v23, v18);
      v38 = v41;
      (*(v36 + 32))(v41, v45, v35);
      (*(v36 + 56))(v38, 0, 1, v35);
    }

    v39 = type metadata accessor for HFEvent();
    return sub_20DA34914(v38, v42 + *(v39 + 20));
  }

  else
  {
    v31 = v19[1];
    v31(v23, v18);
    return (v31)(v25, v18);
  }
}

BOOL sub_20DA35C54(uint64_t a1)
{
  v109 = a1;
  v86 = sub_20DD64634();
  v91 = *(v86 - 8);
  v1 = *(v91 + 64);
  MEMORY[0x28223BE20](v86);
  v89 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_20DD64654();
  v88 = *(v90 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64794();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_20DD647B4();
  v93 = *(v95 - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD64974();
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD64994();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x28223BE20](v13);
  v98 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20DD646A4();
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = *(v107 + 64);
  MEMORY[0x28223BE20](v16);
  v106 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20DD646C4();
  v104 = *(v19 - 8);
  v105 = v19;
  v20 = *(v104 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20DD64944();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20DD64964();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20DD64784();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v109, v33);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == *MEMORY[0x277D17788])
  {
    (*(v34 + 96))(v37, v33);
    v39 = *(v29 + 32);
    v85 = v28;
    v39(v32, v37, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444D0, &qword_20DD95108);
    v40 = *(v24 + 72);
    v41 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_20DD94280;
    v43 = v42 + v41;
    v44 = *(v24 + 104);
    v44(v43, *MEMORY[0x277D178D8], v23);
    v44(v43 + v40, *MEMORY[0x277D178D0], v23);
    sub_20DD64954();
    v45 = sub_20DA2FD04(v27, v42, MEMORY[0x277D178E8], &qword_27C8444D8, MEMORY[0x277D178E8]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v85);
    return v45;
  }

  if (v38 == *MEMORY[0x277D17750])
  {
    (*(v34 + 96))(v37, v33);
    v46 = v104;
    v47 = v105;
    (*(v104 + 32))(v22, v37, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444C8, &qword_20DD95100);
    v48 = v107;
    v49 = *(v107 + 72);
    v50 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20DD94280;
    v52 = *(v48 + 104);
    v53 = v108;
    v52(v51 + v50, *MEMORY[0x277D176D8], v108);
    v52(v51 + v50 + v49, *MEMORY[0x277D176D0], v53);
    v54 = v106;
    sub_20DD646B4();
    v45 = sub_20DA2FD04(v54, v51, MEMORY[0x277D176F0], &qword_27C8444E0, MEMORY[0x277D176F0]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v48 + 8))(v54, v53);
    (*(v46 + 8))(v22, v47);
    return v45;
  }

  if (v38 == *MEMORY[0x277D17790])
  {
    (*(v34 + 96))(v37, v33);
    v56 = v98;
    v55 = v99;
    v57 = v100;
    (*(v99 + 32))(v98, v37, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444C0, &qword_20DD950F8);
    v58 = v102;
    v59 = *(v102 + 72);
    v60 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_20DD94280;
    v62 = v61 + v60;
    v63 = *(v58 + 104);
    v64 = v103;
    v63(v62, *MEMORY[0x277D17920], v103);
    v63(v62 + v59, *MEMORY[0x277D17938], v64);
    v65 = v101;
    sub_20DD64984();
    v66 = &unk_27C8444E8;
    v67 = MEMORY[0x277D17940];
    v68 = MEMORY[0x277D17940];
LABEL_9:
    v45 = sub_20DA2FD04(v65, v61, v67, v66, v68);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v58 + 8))(v65, v64);
    (*(v55 + 8))(v56, v57);
    return v45;
  }

  if (v38 == *MEMORY[0x277D17768])
  {
    (*(v34 + 96))(v37, v33);
    v56 = v92;
    v55 = v93;
    v57 = v95;
    (*(v93 + 32))(v92, v37, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444B8, &qword_20DD950F0);
    v58 = v96;
    v69 = *(v96 + 72);
    v70 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_20DD94280;
    v71 = v61 + v70;
    v72 = *(v58 + 104);
    v64 = v97;
    v72(v71, *MEMORY[0x277D177B8], v97);
    v72(v71 + v69, *MEMORY[0x277D177E0], v64);
    v65 = v94;
    sub_20DD647A4();
    v66 = &unk_27C8444F0;
    v67 = MEMORY[0x277D177F0];
    v68 = MEMORY[0x277D177F0];
    goto LABEL_9;
  }

  if (v38 == *MEMORY[0x277D17798])
  {
    (*(v34 + 96))(v37, v33);
    v74 = v88;
    v75 = v87;
    v76 = v90;
    (*(v88 + 32))(v87, v37, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8444B0, &qword_20DD950E8);
    v77 = v91;
    v78 = *(v91 + 72);
    v79 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_20DD94280;
    v81 = v80 + v79;
    v82 = *(v77 + 104);
    v83 = v86;
    v82(v81, *MEMORY[0x277D175F0], v86);
    v82(v81 + v78, *MEMORY[0x277D175E8], v83);
    v84 = v89;
    sub_20DD64644();
    v45 = sub_20DA2FD04(v84, v80, MEMORY[0x277D17600], &qword_27C8444F8, MEMORY[0x277D17600]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v77 + 8))(v84, v83);
    (*(v74 + 8))(v75, v76);
  }

  else
  {
    (*(v34 + 8))(v37, v33);
    return 0;
  }

  return v45;
}

uint64_t sub_20DA36A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HFHomeKitDispatcher.allHomes.getter()
{
  v1[3] = v0;
  v1[4] = sub_20DD650F4();
  v1[5] = sub_20DD650E4();
  v3 = sub_20DD65094();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20DA36B00, v3, v2);
}

uint64_t sub_20DA36B00()
{
  v18 = v0;
  v1 = [*(v0 + 24) homeManager];
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 24) hasLoadedHomes])
    {
      v3 = *(v0 + 40);

      v4 = [v2 homes];
      sub_20DA37338();
      sub_20DD64FD4();

      v17 = sub_20DA3990C(v5);
      sub_20DA38A6C(&v17);

      v14 = v17;
      v15 = *(v0 + 8);

      return v15(v14);
    }
  }

  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = sub_20DD650E4();
  *(v0 + 64) = v8;
  v9 = swift_allocObject();
  *(v0 + 72) = v9;
  swift_unknownObjectWeakInit();
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441E0, &qword_20DD949E8);
  *v11 = v0;
  v11[1] = sub_20DA36D38;
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v8, v13, 0x73656D6F486C6C61, 0xE800000000000000, sub_20DA37330, v9, v12);
}

uint64_t sub_20DA36D38()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  v4 = v2[8];
  if (v0)
  {

    v5 = v2[6];
    v6 = v2[7];
    v7 = sub_20DA36ED4;
  }

  else
  {
    v8 = v2[9];

    v2[12] = v2[2];
    v5 = v2[6];
    v6 = v2[7];
    v7 = sub_20DA36E6C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20DA36E6C()
{
  v1 = v0[5];

  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20DA36ED4()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_20DA36F44()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C610);
  __swift_project_value_buffer(v0, qword_27C84C610);
  if (qword_27C842490 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EA8;
  return sub_20DD64C54();
}

void static HFHomeKitDispatcher.Error.failed(with:title:description:)(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v4 = a3;
  if (!a2)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = sub_20DD64E74();
  if (v4)
  {
LABEL_3:
    v4 = sub_20DD64E74();
  }

LABEL_4:
  v8 = [objc_opt_self() hf:a1 errorWithCode:v7 title:v4 description:?];

  *a4 = v8;
  *(a4 + 8) = 1;
}

id sub_20DA370C4(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_20DA37100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - v5;
  if ((sub_20DD65194() & 1) == 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v8 = Strong, v9 = [Strong allHomesFuture], v8, v9))
  {
    (*(v3 + 16))(v6, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v6, v2);
    aBlock[4] = sub_20DA39B30;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DA1AA10;
    aBlock[3] = &block_descriptor_4;
    v12 = _Block_copy(aBlock);

    v13 = [v9 addCompletionBlock_];
    _Block_release(v12);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20DD650B4();
  }
}

unint64_t sub_20DA37338()
{
  result = qword_280E01EF0;
  if (!qword_280E01EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01EF0);
  }

  return result;
}

uint64_t sub_20DA37384(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
    return sub_20DD650A4();
  }

  else
  {
    if (a1)
    {
      sub_20DA37338();
      sub_20DD64FC4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208);
    return sub_20DD650B4();
  }
}

uint64_t HFHomeKitDispatcher.refresh(until:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = sub_20DD636C4();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  sub_20DD650F4();
  *(v2 + 64) = sub_20DD650E4();
  v7 = sub_20DD65094();
  *(v2 + 72) = v7;
  *(v2 + 80) = v6;

  return MEMORY[0x2822009F8](sub_20DA37544, v7, v6);
}

uint64_t sub_20DA37544()
{
  if (qword_27C842460 != -1)
  {
    swift_once();
  }

  if (byte_27C844510)
  {
    goto LABEL_7;
  }

  if (qword_27C842468 != -1)
  {
    swift_once();
  }

  if (byte_27C844511)
  {
LABEL_7:
    if (v0[2] <= 25.0)
    {
      v1 = *(v0 + 2);
    }
  }

  else
  {
    v2 = *(v0 + 2);
  }

  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  sub_20DD63684();
  sub_20DD63584();
  v5 = swift_task_alloc();
  *(v0 + 11) = v5;
  *v5 = v0;
  v5[1] = sub_20DA37690;
  v6 = *(v0 + 7);
  v7 = *(v0 + 3);

  return HFHomeKitDispatcher.refresh(until:)(v6);
}

uint64_t sub_20DA37690()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 80);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_20DA378A0;
  }

  else
  {
    v10 = sub_20DA37828;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_20DA37828()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DA378A0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t HFHomeKitDispatcher.refresh(until:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD636C4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_20DD650F4();
  v2[7] = sub_20DD650E4();
  v7 = sub_20DD65094();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_20DA37A0C, v7, v6);
}

uint64_t sub_20DA37A0C()
{
  v33 = v0;
  v1 = [*(v0 + 24) homeManager];
  *(v0 + 80) = v1;
  if (v1)
  {
    if (qword_27C842458 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_20DD64C44();
    *(v0 + 88) = __swift_project_value_buffer(v6, qword_27C84C610);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_20DD64C24();
    v8 = sub_20DD65384();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v13 = 136315394;
      *(v13 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, v32);
      *(v13 + 12) = 2080;
      sub_20DA399F4();
      v14 = sub_20DD65934();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_20D9E0B38(v14, v16, v32);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_20D9BF000, v7, v8, ">>> %s until:%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v31, -1, -1);
      MEMORY[0x20F327D10](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v29 = swift_task_alloc();
    *(v0 + 96) = v29;
    *v29 = v0;
    v29[1] = sub_20DA37E88;
    v30 = *(v0 + 16);

    return HMHomeManager.refresh(before:)(v30);
  }

  else
  {
    v18 = *(v0 + 56);

    if (qword_27C842458 != -1)
    {
      swift_once();
    }

    v19 = sub_20DD64C44();
    __swift_project_value_buffer(v19, qword_27C84C610);
    v20 = sub_20DD64C24();
    v21 = sub_20DD65364();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, v32);
      _os_log_impl(&dword_20D9BF000, v20, v21, "%s HMHomeManager is nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F327D10](v23, -1, -1);
      MEMORY[0x20F327D10](v22, -1, -1);
    }

    sub_20DA399A0();
    swift_allocError();
    v25 = v24;
    *v24 = [objc_opt_self() hf:-1 errorWithCode:0 title:0 description:?];
    *(v25 + 8) = 1;
    swift_willThrow();
    v26 = *(v0 + 48);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_20DA37E88()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_20DA38118;
  }

  else
  {
    v7 = sub_20DA37FC4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20DA37FC4()
{
  v13 = v0;
  v1 = v0[11];
  v2 = v0[7];

  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, &v12);
    _os_log_impl(&dword_20D9BF000, v3, v4, "<<< %s finished synchronization succesfully", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F327D10](v8, -1, -1);
    MEMORY[0x20F327D10](v7, -1, -1);
  }

  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DA38118()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[7];

  v3 = sub_20DD64C24();
  v4 = sub_20DD65364();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D9E0B38(0x2868736572666572, 0xEF293A6C69746E75, &v13);
    _os_log_impl(&dword_20D9BF000, v3, v4, "<<< %s exceeded timeout and failed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F327D10](v6, -1, -1);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

  v7 = v0[13];
  v8 = v0[10];
  swift_willThrow();

  v9 = v0[13];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t HFHomeKitDispatcher.waitForAllHomes(timeout:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  sub_20DD650F4();
  *(v2 + 32) = sub_20DD650E4();
  v4 = sub_20DD65094();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_20DA38310, v4, v3);
}

uint64_t sub_20DA38310()
{
  if ([*(v0 + 24) hasLoadedHomes])
  {
    goto LABEL_2;
  }

  if (qword_27C842460 != -1)
  {
    swift_once();
  }

  if (byte_27C844510)
  {
    goto LABEL_11;
  }

  if (qword_27C842468 != -1)
  {
    swift_once();
  }

  if (byte_27C844511 == 1)
  {
LABEL_11:
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_20DA3849C;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return HFHomeKitDispatcher.refresh(until:)(v6);
  }

  else
  {
LABEL_2:
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_20DA38604;
    v2 = *(v0 + 24);

    return HFHomeKitDispatcher.allHomes.getter();
  }
}

uint64_t sub_20DA3849C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];
    v5 = v3[6];

    return MEMORY[0x2822009F8](sub_20DA3892C, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v3;
    v6[1] = sub_20DA38604;
    v7 = v3[3];

    return HFHomeKitDispatcher.allHomes.getter();
  }
}

uint64_t sub_20DA38604(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v7 = *(v3 + 48);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_20DA38990;
  }

  else
  {
    v9 = sub_20DA38748;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20DA38748()
{
  v18 = v0;
  v1 = v0[4];

  if (qword_27C842458 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = sub_20DD64C44();
  __swift_project_value_buffer(v3, qword_27C84C610);

  v4 = sub_20DD64C24();
  v5 = sub_20DD65384();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD99040, &v17);
    *(v8 + 12) = 2048;
    if (v7 >> 62)
    {
      if (v0[10] < 0)
      {
        v16 = v0[10];
      }

      v10 = sub_20DD655B4();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[10];
    *(v8 + 14) = v10;

    _os_log_impl(&dword_20D9BF000, v4, v5, "%s Finished lazy loading of [HMHome]: count=%ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  else
  {
    v12 = v0[10];
  }

  v13 = v0[1];
  v14 = v0[10];

  return v13(v14);
}

uint64_t sub_20DA3892C()
{
  v1 = v0[4];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA38990()
{
  v1 = v0[11];
  v2 = v0[4];

  sub_20DA399A0();
  swift_allocError();
  v4 = v3;
  *v3 = [objc_opt_self() hf:59 errorWithCode:0 title:0 description:?];
  *(v4 + 8) = 1;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DA38A6C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DA73A14(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_20DA38AD8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20DA38AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
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
        sub_20DA37338();
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20DA38D50(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_20DA38BDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA38BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 8 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      sub_20DD64EB4();

      v11 = [v9 name];
      sub_20DD64EB4();

      sub_20D9C8A28();
      v12 = sub_20DD654D4();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 8;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v13;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA38D50(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v104 = result;
    while (1)
    {
      v11 = v9 + 1;
      v105 = v9;
      if (v9 + 1 < v8)
      {
        v12 = v9;
        v109 = v8;
        v100 = v10;
        v102 = v5;
        v13 = *(*v6 + 8 * v11);
        v106 = 8 * v9;
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = v13;
        v9 = v16;
        v18 = [v17 name];
        sub_20DD64EB4();

        v19 = [v9 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v111 = sub_20DD654D4();

        v20 = v12 + 2;
        while (1)
        {
          v11 = v109;
          if (v109 == v20)
          {
            break;
          }

          v21 = *(v15 - 1);
          v9 = *v15;
          v22 = v21;
          v23 = [v9 name];
          sub_20DD64EB4();

          v24 = [v22 name];
          sub_20DD64EB4();

          v25 = sub_20DD654D4();

          ++v20;
          ++v15;
          if ((v111 == -1) == (v25 != -1))
          {
            v11 = (v20 - 1);
            break;
          }
        }

        v10 = v100;
        v5 = v102;
        v6 = a3;
        v7 = v104;
        v26 = v106;
        if (v111 == -1)
        {
          v27 = v105;
          if (v11 < v105)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v105 < v11)
          {
            v28 = 8 * v11 - 8;
            v29 = v11;
            do
            {
              if (v27 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v30 = *(v31 + v26);
                *(v31 + v26) = *(v31 + v28);
                *(v31 + v28) = v30;
              }

              ++v27;
              v28 -= 8;
              v26 += 8;
            }

            while (v27 < v29);
          }
        }
      }

      v32 = v6[1];
      if (v11 >= v32)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v11, v105))
      {
        goto LABEL_116;
      }

      if (v11 - v105 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v105, a4))
      {
        goto LABEL_117;
      }

      if (&v105[a4] >= v32)
      {
        v33 = v6[1];
      }

      else
      {
        v33 = &v105[a4];
      }

      if (v33 < v105)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v34 = v105;
      if (v11 != v33)
      {
        break;
      }

LABEL_37:
      if (v11 < v34)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20D9E014C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        result = sub_20D9E014C((v46 > 1), v47 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v105;
      *(v49 + 5) = v11;
      v50 = *v7;
      if (!v50)
      {
        goto LABEL_125;
      }

      v9 = v11;
      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v10 + 4);
            v53 = *(v10 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_57:
            if (v55)
            {
              goto LABEL_104;
            }

            v68 = &v10[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_107;
            }

            v74 = &v10[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_111;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v78 = &v10[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_71:
          if (v73)
          {
            goto LABEL_106;
          }

          v81 = &v10[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_109;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_78:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
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
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v90 = *&v10[16 * v89 + 32];
          v91 = *&v10[16 * v51 + 40];
          sub_20DA39514((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_20DA73550(v10);
          }

          if (v89 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v92 = &v10[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          result = sub_20DA734C4(v51);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v10[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_102;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_105;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v67 >= v59)
        {
          v85 = &v10[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_112;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v104;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }

    v101 = v10;
    v103 = v5;
    v35 = *v6;
    v36 = *v6 + 8 * v11 - 8;
    v37 = &v105[-v11];
    v107 = v33;
    do
    {
      v110 = v36;
      v112 = v11;
      v38 = *(v35 + 8 * v11);
      v108 = v37;
      do
      {
        v39 = *v36;
        v9 = v38;
        v40 = v39;
        v41 = [v9 name];
        sub_20DD64EB4();

        v42 = [v40 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v43 = sub_20DD654D4();

        if (v43 != -1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_121;
        }

        v44 = *v36;
        v38 = *(v36 + 8);
        *v36 = v38;
        *(v36 + 8) = v44;
        v36 -= 8;
      }

      while (!__CFADD__(v37++, 1));
      ++v11;
      v36 = v110 + 8;
      v37 = v108 - 1;
    }

    while ((v112 + 1) != v107);
    v11 = v107;
    v10 = v101;
    v5 = v103;
    v6 = a3;
    v7 = v104;
LABEL_36:
    v34 = v105;
    goto LABEL_37;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_20DA73550(v10);
    v10 = result;
  }

  v93 = *(v10 + 2);
  if (v93 >= 2)
  {
    while (*v6)
    {
      v94 = v10;
      v10 = (v93 - 1);
      v95 = *&v94[16 * v93];
      v96 = *&v94[16 * v93 + 24];
      sub_20DA39514((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
      if (v5)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_20DA73550(v94);
      }

      if (v93 - 2 >= *(v94 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v94[16 * v93];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_20DA734C4(v93 - 1);
      v10 = v94;
      v93 = *(v94 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_20DA39514(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v44 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v39 = v5;
    }

    else
    {
      __srca = v15;
LABEL_25:
      v41 = v5;
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v27;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 name];
        sub_20DD64EB4();

        v37 = [v35 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v38 = sub_20DD654D4();

        if (v38 == -1)
        {
          v25 = v31 == v41;
          v4 = v30;
          if (!v25)
          {
            *v30 = *v42;
          }

          v15 = __srca;
          if (v44 <= __srca || (v5 = v42, v42 <= v6))
          {
            v39 = v42;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > __srca);
      v44 = v29;
      v39 = v41;
      v15 = __srca;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v44 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = v17;
        v21 = [v19 name];
        sub_20DD64EB4();

        v22 = [v20 name];
        sub_20DD64EB4();

        sub_20D9C8A28();
        v23 = sub_20DD654D4();

        if (v23 != -1)
        {
          break;
        }

        v24 = v18;
        v5 = v18 + 1;
        if (v6 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v6;
        if (v15 < v44)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v24 = v15;
      v25 = v6 == v15++;
      v5 = v18;
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v24;
      goto LABEL_14;
    }

LABEL_35:
    v39 = v6;
  }

LABEL_38:
  if (v39 != v15 || v39 >= (v15 + ((v44 - v15 + (v44 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v39, v15, 8 * ((v44 - v15) / 8));
  }

  return 1;
}

uint64_t sub_20DA3990C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20DD655B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20D9EF64C(v3, 0);
  sub_20DA16A84(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_20DA399A0()
{
  result = qword_27C844518;
  if (!qword_27C844518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844518);
  }

  return result;
}

unint64_t sub_20DA399F4()
{
  result = qword_27C844520;
  if (!qword_27C844520)
  {
    sub_20DD636C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So19HFHomeKitDispatcherC4HomeE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20DA39A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DA39AC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20DA39B08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_20DA39B30(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844528, &qword_20DD95208) - 8) + 80);

  return sub_20DA37384(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA39BD4(uint64_t a1)
{
  v2 = sub_20DD63904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DD64674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v31 = MEMORY[0x277D84FA0];
  if (!a1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844620, &qword_20DD955A0);
    v16 = *(v8 + 72);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v28[0] = *(v8 + 80);
    v28[2] = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20DD95210;
    v29 = v17;
    v30 = v2;
    v19 = v18 + v17;
    v20 = *(v8 + 104);
    v20(v19, *MEMORY[0x277D17658], v7);
    v21 = *MEMORY[0x277D17670];
    v28[1] = v16;
    v20(v19 + v16, v21, v7);
    v20(v19 + 2 * v16, *MEMORY[0x277D17678], v7);
    v22 = sub_20D9EEAEC(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v31 = v22;
    v23 = v30;
    (*(v3 + 104))(v6, *MEMORY[0x277D15288], v30);
    sub_20DA483E4(&qword_27C844628, MEMORY[0x277D15290]);
    LOBYTE(v18) = sub_20DD638B4();
    (*(v3 + 8))(v6, v23);
    if (v18)
    {

      v24 = v29;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20DD93A70;
      v20(v25 + v24, *MEMORY[0x277D17660], v7);
      v26 = sub_20D9EEAEC(v25);
      swift_setDeallocating();
      (*(v8 + 8))(v25 + v24, v7);
      swift_deallocClassInstance();
      return v26;
    }

    return v31;
  }

  if (a1 == 1)
  {
    (*(v8 + 104))(v12, *MEMORY[0x277D17680], v7);
    sub_20D9E20DC(v14, v12);
    (*(v8 + 8))(v14, v7);
    return v31;
  }

  result = sub_20DD65814();
  __break(1u);
  return result;
}

uint64_t sub_20DA39FFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v5;
  return result;
}

uint64_t sub_20DA3A07C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20DD64CE4();
}

uint64_t sub_20DA3A0F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA3A16C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844600, &qword_20DD95538);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA3A30C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v5;
  return result;
}

uint64_t sub_20DA3A38C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_20DD64CE4();
}

uint64_t sub_20DA3A408()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA3A47C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445F8, &qword_20DD95530);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_20DA3A61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  *a2 = v5;
  return result;
}

uint64_t sub_20DA3A69C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20DD64CE4();
}

uint64_t sub_20DA3A710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  return v1;
}

uint64_t sub_20DA3A784(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445F0, &qword_20DD95528);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  sub_20DD64CB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

id ActivityLogCoordinator.__allocating_init(home:targetKind:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ActivityLogCoordinator.init(home:targetKind:)(a1, a2);
}

id ActivityLogCoordinator.init(home:targetKind:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR___HFActivityLogCoordinator_Swift__eventsByDate;
  v31 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844560, &qword_20DD95320);
  sub_20DD64C94();
  (*(v14 + 32))(&v3[v18], v17, v13);
  v19 = OBJC_IVAR___HFActivityLogCoordinator_Swift__lastError;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844568, qword_20DD95328);
  sub_20DD64C94();
  (*(v9 + 32))(&v3[v19], v12, v8);
  v20 = OBJC_IVAR___HFActivityLogCoordinator_Swift__activelyFetching;
  LOBYTE(v31) = 0;
  sub_20DD64C94();
  (*(v4 + 32))(&v3[v20], v7, v27);
  v21 = OBJC_IVAR___HFActivityLogCoordinator_Swift_queryController;
  sub_20DD64704();
  *&v3[v21] = sub_20DD646F4();
  sub_20DD63654();
  *&v3[OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount] = 0;
  v22 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  v23 = sub_20DD636C4();
  (*(*(v23 - 8) + 56))(&v3[v22], 1, 1, v23);
  *&v3[OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer] = 0;
  v24 = v29;
  *(v3 + 14) = v28;
  *(v3 + 15) = v24;
  v25 = type metadata accessor for ActivityLogCoordinator();
  v30.receiver = v3;
  v30.super_class = v25;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t type metadata accessor for ActivityLogCoordinator()
{
  result = qword_27C8445C0;
  if (!qword_27C8445C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityLogCoordinator.deinit()
{
  v1 = v0;
  v2 = sub_20DD64C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v8 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v8)
  {
    v9 = qword_27C842480;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_27C84C658;
    sub_20DD64C54();
    v12 = sub_20DD64C24();
    v13 = sub_20DD65384();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20D9BF000, v12, v13, "Deinit - Stopping auto-fetch timer", v14, 2u);
      MEMORY[0x20F327D10](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    [v10 invalidate];
  }

  v15 = OBJC_IVAR___HFActivityLogCoordinator_Swift__eventsByDate;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844538, &qword_20DD95278);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR___HFActivityLogCoordinator_Swift__lastError;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844548, &qword_20DD952C8);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = OBJC_IVAR___HFActivityLogCoordinator_Swift__activelyFetching;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844558, &qword_20DD95318);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_queryController);

  v22 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo;
  v23 = sub_20DD636C4();
  (*(*(v23 - 8) + 8))(v1 + v22, v23);
  sub_20D9D76EC(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate, &unk_27C843810, &qword_20DD93F00);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t ActivityLogCoordinator.__deallocating_deinit()
{
  ActivityLogCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA3B0A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DA3B15C;

  return sub_20DA45D84(a1, a2);
}

uint64_t sub_20DA3B15C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_20DA3B25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 432) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844570, &unk_20DD95350) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_20DD649D4();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844578, &qword_20DD95360);
  *(v5 + 160) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844580, &qword_20DD95368);
  *(v5 + 176) = v13;
  v14 = *(v13 - 8);
  *(v5 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v16 = sub_20DD64614();
  *(v5 + 200) = v16;
  v17 = *(v16 - 8);
  *(v5 + 208) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v19 = sub_20DD64624();
  *(v5 + 224) = v19;
  v20 = *(v19 - 8);
  *(v5 + 232) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v22 = sub_20DD63744();
  *(v5 + 248) = v22;
  v23 = *(v22 - 8);
  *(v5 + 256) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v26 = sub_20DD636C4();
  *(v5 + 288) = v26;
  v27 = *(v26 - 8);
  *(v5 + 296) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v5 + 320) = v29;
  v30 = *(v29 - 8);
  *(v5 + 328) = v30;
  v31 = *(v30 + 64) + 15;
  *(v5 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3B660, v4, 0);
}

uint64_t sub_20DA3B660()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  sub_20DA4688C(*(v0 + 88), v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 312);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 280);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 112) + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, *(v0 + 288));
    if (v4(v9, 1, v8) != 1)
    {
      sub_20D9D76EC(*(v0 + 280), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 280), *(v0 + 288));
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 272);
  sub_20DA4688C(*(v0 + 96), v11);
  if (v4(v11, 1, v10) == 1)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 272);
    v14 = *(v0 + 304);
    sub_20DD63684();
    if (v4(v13, 1, v12) != 1)
    {
      sub_20D9D76EC(*(v0 + 272), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 272), *(v0 + 288));
  }

  v39 = *(v0 + 336);
  v45 = *(v0 + 320);
  v15 = *(v0 + 264);
  v40 = *(v0 + 296);
  v41 = *(v0 + 256);
  v42 = *(v0 + 248);
  v43 = *(v0 + 288);
  v33 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v36 = *(v0 + 312);
  v34 = *(v0 + 216);
  v35 = *(v0 + 304);
  v37 = *(v0 + 208);
  v38 = *(v0 + 200);
  v46 = *(v0 + 192);
  v44 = *(v0 + 168);
  v18 = *(v0 + 112);
  if ((*(v0 + 432) & 1) == 0)
  {
    v19 = *(v0 + 104);
  }

  v20 = *(v18 + 112);
  v21 = [v20 uniqueIdentifier];
  sub_20DD63714();

  v22 = [v20 hf_currentUserIsOwner];
  v23 = MEMORY[0x277D175C0];
  if (!v22)
  {
    v23 = MEMORY[0x277D175C8];
  }

  (*(v17 + 104))(v33, *v23, v16);
  sub_20DD64704();
  sub_20DA39BD4(*(v18 + 120));
  sub_20DD646D4();

  v24 = *(v18 + OBJC_IVAR___HFActivityLogCoordinator_Swift_queryController);
  *(v0 + 48) = sub_20DD646E4();
  *(v0 + 56) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844590, &unk_20DD95380);
  *(v0 + 344) = type metadata accessor for HFEvent();
  sub_20D9EF5F8(&qword_27C844598, &qword_27C844590, &unk_20DD95380);
  sub_20DD65804();
  (*(v37 + 8))(v34, v38);
  (*(v17 + 8))(v33, v16);
  (*(v41 + 8))(v15, v42);
  v26 = *(v40 + 8);
  v26(v35, v43);
  v26(v36, v43);
  v27 = MEMORY[0x20F326710](v45);
  v28 = *(v0 + 72);
  (*(v0 + 64))(v27);

  sub_20DD657D4();
  sub_20DD657E4();
  *(v0 + 352) = sub_20DA483E4(&qword_27C8445A0, type metadata accessor for ActivityLogCoordinator);
  *(v0 + 360) = 0;
  v29 = *(v0 + 112);
  swift_getObjectType();
  v31 = sub_20DD65094();
  *(v0 + 368) = v31;
  *(v0 + 376) = v30;

  return MEMORY[0x2822009F8](sub_20DA3BB4C, v31, v30);
}

uint64_t sub_20DA3BB4C()
{
  v1 = v0[44];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[14];
  v0[48] = sub_20DD657C4();
  v5 = sub_20D9EF5F8(&qword_27C8445A8, &qword_27C844578, &qword_20DD95360);
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_20DA3BC54;
  v8 = v0[20];
  v9 = v0[15];

  return MEMORY[0x282200310](v9, v4, v1, v0 + 10, v8, v5);
}

uint64_t sub_20DA3BC54()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 368);
    v5 = *(v2 + 376);
    v6 = sub_20DA3BF74;
  }

  else
  {
    (*(v2 + 384))();
    v4 = *(v2 + 368);
    v5 = *(v2 + 376);
    v6 = sub_20DA3BD7C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20DA3BD7C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v3, &qword_27C844570, &unk_20DD95350);
    v4 = v0[19];
    v5 = v0[14];
    v6 = *(v0[43] - 8);
    v0[53] = v6;
    (*(v6 + 56))(v4, 1, 1);

    return MEMORY[0x2822009F8](sub_20DA3C384, v5, 0);
  }

  else
  {
    v7 = v0[24];
    v8 = v0[22];
    (*(v2 + 32))(v0[18], v3, v1);
    v9 = sub_20DD657D4();
    v0[51] = v10;
    v16 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_20DA3C144;
    v14 = v0[18];
    v13 = v0[19];

    return v16(v13, v14);
  }
}

uint64_t sub_20DA3BF74()
{
  v1 = v0[48];
  v2 = v0[14];
  v0[50] = v0[10];
  v1();

  return MEMORY[0x2822009F8](sub_20DA3BFF8, v2, 0);
}

uint64_t sub_20DA3BFF8()
{
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v13 = v0[30];
  v14 = v0[27];
  v9 = v0[21];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[15];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v1 + 8))(v2, v3);

  v10 = v0[1];
  v11 = v0[50];

  return v10();
}

uint64_t sub_20DA3C144()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 128);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 376);
  v8 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_20DA3C2E4, v8, v7);
}

uint64_t sub_20DA3C2E4()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = *(v0[43] - 8);
  v0[53] = v3;
  (*(v3 + 56))(v1, 0, 1);

  return MEMORY[0x2822009F8](sub_20DA3C384, v2, 0);
}

uint64_t sub_20DA3C384()
{
  v1 = v0[43];
  v2 = v0[19];
  v3 = (*(v0[53] + 48))(v2, 1);
  if (v3 == 1)
  {
    v6 = v0[41];
    v7 = v0[42];
    v9 = v0[39];
    v8 = v0[40];
    v10 = v0[38];
    v12 = v0[34];
    v11 = v0[35];
    v23 = v0[33];
    v24 = v0[30];
    v25 = v0[27];
    v26 = v0[21];
    v13 = v0[18];
    v27 = v0[15];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v6 + 8))(v7, v8);

    v14 = v0[1];
    v15 = v0[45];

    return v14(v15);
  }

  else
  {
    v17 = v0[45];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      sub_20D9D76EC(v2, &qword_27C844198, &qword_20DD949D0);
      v0[45] = v18;
      v19 = v0[44];
      v20 = v0[14];
      swift_getObjectType();
      v21 = sub_20DD65094();
      v5 = v22;
      v0[46] = v21;
      v0[47] = v22;
      v3 = sub_20DA3BB4C;
      v4 = v21;
    }

    return MEMORY[0x2822009F8](v3, v4, v5);
  }
}

uint64_t sub_20DA3C5A4()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3C64C, v0, 0);
}

uint64_t sub_20DA3C64C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_20DD636C4();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v4(v1, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20DA3C760;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_20DA3B25C(v7, v6, 1, 0);
}

uint64_t sub_20DA3C760(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  v5[6] = v1;

  if (v1)
  {
    v6 = v5[4];
    v7 = v5[2];
    sub_20D9D76EC(v5[3], &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);

    return MEMORY[0x2822009F8](sub_20DA3C938, v7, 0);
  }

  else
  {
    v8 = v5[4];
    sub_20D9D76EC(v5[3], &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);

    v9 = v5[1];

    return v9(a1 > 0);
  }
}

uint64_t sub_20DA3C938()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(0);
}

uint64_t sub_20DA3CB20(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_20DA3CBF0, a2, 0);
}

uint64_t sub_20DA3CBF0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_20DD636C4();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v4(v1, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20DA3CD04;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_20DA3B25C(v7, v6, 1, 0);
}

uint64_t sub_20DA3CD04(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 56) = v1;

  if (v1)
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    sub_20D9D76EC(*(v5 + 24), &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v6, &unk_27C843810, &qword_20DD93F00);

    return MEMORY[0x2822009F8](sub_20DA3CF08, v7, 0);
  }

  else
  {
    v9 = *(v5 + 32);
    v8 = *(v5 + 40);
    v10 = *(v5 + 16);
    v11 = *(v5 + 24);

    sub_20D9D76EC(v11, &unk_27C843810, &qword_20DD93F00);
    sub_20D9D76EC(v9, &unk_27C843810, &qword_20DD93F00);
    (*(v8 + 16))(v8, a1 > 0, 0);
    v12 = *(v5 + 32);
    v13 = *(v5 + 24);
    _Block_release(*(v5 + 40));

    v14 = *(v5 + 8);

    return v14();
  }
}

uint64_t sub_20DA3CF08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = sub_20DD63494();

  (*(v2 + 16))(v2, 0, v4);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  _Block_release(*(v0 + 40));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DA3CFC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8445B0, &unk_20DD953A0);
  v2[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = sub_20DD636C4();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v2[21] = *(v10 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA3D1B0, v1, 0);
}

uint64_t sub_20DA3D1B0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[9];
  v5 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  v0[25] = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v4 + v5, v3);
  v6 = *(v2 + 48);
  v0[26] = v6;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v0[18], &unk_27C843810, &qword_20DD93F00);
LABEL_4:
    v11 = v0[23];
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v15 = v0[14];
    v16 = v0[8];
    v17 = v0[9];
    v18 = sub_20DD65114();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    (*(v13 + 16))(v11, v16, v14);
    sub_20DD650F4();

    v19 = sub_20DD650E4();
    v20 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 2) = v19;
    *(v21 + 3) = v22;
    *(v21 + 4) = v17;
    v23 = *(v13 + 32);
    v0[28] = v23;
    v0[29] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(&v21[v20], v11, v14);
    v24 = sub_20DA1C814(0, 0, v15, &unk_20DD953B8, v21);
    v0[30] = v24;
    v25 = *(MEMORY[0x277D857E0] + 4);
    v26 = swift_task_alloc();
    v0[31] = v26;
    *v26 = v0;
    v26[1] = sub_20DA3D550;
    v28 = v0[10];
    v27 = v0[11];

    return MEMORY[0x282200460](v27, v24, v28);
  }

  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[9];
  (*(v9 + 32))(v7, v0[18], v8);
  sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
  LOBYTE(v10) = sub_20DD64E54();
  (*(v9 + 8))(v7, v8);
  if (v10)
  {
    goto LABEL_4;
  }

  v30 = v0[23];
  v29 = v0[24];
  v31 = v0[22];
  v33 = v0[17];
  v32 = v0[18];
  v35 = v0[15];
  v34 = v0[16];
  v37 = v0[13];
  v36 = v0[14];
  v38 = v0[11];

  v39 = v0[1];

  return v39(0);
}

uint64_t sub_20DA3D550()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DA3D660, v2, 0);
}

uint64_t sub_20DA3D660()
{
  v1 = v0[11];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[30];

    sub_20D9D76EC(v1, &qword_27C844280, &qword_20DD94B28);
    v50 = 0;
  }

  else
  {
    v5 = v0[28];
    v4 = v0[29];
    v48 = v0[26];
    v49 = v0[27];
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[17];
    v9 = v0[12];
    v10 = v0[13];
    v46 = v0[9];
    v47 = v0[25];
    v11 = *(v2 + 48);
    v12 = *(v9 + 48);
    *v10 = *v1;
    v5(&v10[v12], &v1[v11], v7);
    v50 = *v10;
    v5(v6, &v10[*(v9 + 48)], v7);
    sub_20DA4688C(v46 + v47, v8);
    if (v48(v8, 1, v7) == 1)
    {
      v13 = v0[30];
      v14 = v0[17];

      sub_20D9D76EC(v14, &unk_27C843810, &qword_20DD93F00);
    }

    else
    {
      v16 = v0[26];
      v15 = v0[27];
      v17 = v0[25];
      v18 = v0[19];
      v19 = v0[16];
      v20 = v0[9];
      sub_20D9D76EC(v0[17], &unk_27C843810, &qword_20DD93F00);
      sub_20DA4688C(v20 + v17, v19);
      result = v16(v19, 1, v18);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v22 = v0[30];
      v23 = v0[22];
      v25 = v0[19];
      v24 = v0[20];
      v26 = v0[16];
      v27 = sub_20DD63644();

      v28 = *(v24 + 8);
      v28(v26, v25);
      if ((v27 & 1) == 0)
      {
        v28(v0[22], v0[19]);
        goto LABEL_9;
      }
    }

    v29 = v0[29];
    v30 = v0[25];
    v31 = v0[19];
    v32 = v0[20];
    v33 = v0[15];
    v34 = v0[9];
    (v0[28])(v33, v0[22], v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    swift_beginAccess();
    sub_20DA469F4(v33, v34 + v30);
    swift_endAccess();
  }

LABEL_9:
  v36 = v0[23];
  v35 = v0[24];
  v37 = v0[22];
  v39 = v0[17];
  v38 = v0[18];
  v41 = v0[15];
  v40 = v0[16];
  v43 = v0[13];
  v42 = v0[14];
  v44 = v0[11];

  v45 = v0[1];

  return v45(v50);
}

uint64_t sub_20DA3D98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20DD650F4();
  v5[3] = sub_20DD650E4();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_20DA3DA54;

  return sub_20DA3DBF0(a1, a5);
}

uint64_t sub_20DA3DA54()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA3DB90, v5, v4);
}

uint64_t sub_20DA3DB90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DA3DBF0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_20DD64C44();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = *(type metadata accessor for HFEvent() - 8);
  v3[22] = v7;
  v8 = *(v7 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = sub_20DD637B4();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v12 = sub_20DD637C4();
  v3[28] = v12;
  v13 = *(v12 - 8);
  v3[29] = v13;
  v14 = *(v13 + 64) + 15;
  v3[30] = swift_task_alloc();
  v15 = sub_20DD637A4();
  v3[31] = v15;
  v16 = *(v15 - 8);
  v3[32] = v16;
  v17 = *(v16 + 64) + 15;
  v3[33] = swift_task_alloc();
  v18 = sub_20DD637F4();
  v3[34] = v18;
  v19 = *(v18 - 8);
  v3[35] = v19;
  v20 = *(v19 + 64) + 15;
  v3[36] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v22 = sub_20DD636C4();
  v3[42] = v22;
  v23 = *(v22 - 8);
  v3[43] = v23;
  v24 = *(v23 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  sub_20DD650F4();
  v3[49] = sub_20DD650E4();
  v26 = sub_20DD65094();
  v3[50] = v26;
  v3[51] = v25;

  return MEMORY[0x2822009F8](sub_20DA3DFC8, v26, v25);
}

uint64_t sub_20DA3DFC8()
{
  v133 = v0;
  v1 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  if (*(v0 + 496) == 1)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 112);

LABEL_3:
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 352);
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v14 = *(v0 + 296);
    v108 = *(v0 + 288);
    v110 = *(v0 + 264);
    v113 = *(v0 + 240);
    v115 = *(v0 + 216);
    v118 = *(v0 + 192);
    v120 = *(v0 + 184);
    v123 = *(v0 + 168);
    v125 = *(v0 + 160);
    v128 = *(v0 + 152);

    v15 = *(v0 + 8);

    return v15();
  }

  v124 = *(v0 + 344);
  v114 = *(v0 + 288);
  v116 = *(v0 + 328);
  v126 = *(v0 + 272);
  v129 = *(v0 + 336);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v121 = *(v0 + 280);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);
  v24 = *(v0 + 216);
  v25 = *(v0 + 200);
  v111 = *(v0 + 120);
  sub_20DD637D4();
  (*(v18 + 104))(v17, *MEMORY[0x277CC9878], v19);
  (*(v22 + 104))(v20, *MEMORY[0x277CC9900], v21);
  (*(v23 + 104))(v24, *MEMORY[0x277CC98E8], v25);
  sub_20DD637E4();
  (*(v23 + 8))(v24, v25);
  (*(v22 + 8))(v20, v21);
  (*(v18 + 8))(v17, v19);
  (*(v121 + 8))(v114, v126);
  v119 = *(v124 + 48);
  result = v119(v116, 1, v129);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v26 = *(v0 + 336);
  v27 = *(v0 + 344);
  v28 = *(v0 + 320);
  v29 = *(v0 + 128);
  v104 = *(v27 + 32);
  v104(*(v0 + 384), *(v0 + 328), v26);
  v107 = *(v27 + 56);
  v107(v28, 1, 1, v26);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20DD64CD4();

  v30 = *(v0 + 96);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(v0 + 344);
    v33 = sub_20D9E09B4(*(v30 + 16), 0);
    v34 = sub_20D9EB224(&v132, &v33[(*(v32 + 80) + 32) & ~*(v32 + 80)], v31, v30);

    sub_20D9C51CC();
    if (v34 == v31)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v33 = MEMORY[0x277D84F90];
LABEL_11:
  v132 = v33;
  sub_20DA44724(&v132);

  v35 = v132;
  v112 = *(v132 + 2);
  if (v112)
  {
    v36 = 0;
    v37 = 0;
    v117 = *(v0 + 344);
    v127 = (v117 + 8);
    v130 = *(v0 + 176);
    v109 = v132;
    do
    {
      if (v36 >= *(v35 + 2))
      {
        goto LABEL_56;
      }

      (*(v117 + 16))(*(v0 + 376), &v35[((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v36], *(v0 + 336));
      if (v37 >= 20)
      {
        (*v127)(*(v0 + 376), *(v0 + 336));

        goto LABEL_49;
      }

      v40 = *(v0 + 128);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_20DD64CD4();

      v41 = *(v0 + 104);
      if (!*(v41 + 16))
      {
        goto LABEL_57;
      }

      v42 = sub_20D9CB72C(*(v0 + 376));
      if ((v43 & 1) == 0)
      {
        goto LABEL_58;
      }

      v122 = v36;
      v44 = *(*(v41 + 56) + 8 * v42);

      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = *(v0 + 336);
        v47 = *(v0 + 312);
        v48 = *(v0 + 320);
        sub_20DA1A828(v44 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * (v45 - 1), *(v0 + 192));
        sub_20DA4688C(v48, v47);
        if (v119(v47, 1, v46) == 1)
        {
          v105 = *(v0 + 336);
          v49 = *(v0 + 320);
          v50 = *(v0 + 304);
          v51 = *(v0 + 192);
          sub_20D9D76EC(*(v0 + 312), &unk_27C843810, &qword_20DD93F00);
          sub_20DD649A4();
          v52 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          sub_20DD64694();
          sub_20DA1A960(v51);
          sub_20D9D76EC(v49, &unk_27C843810, &qword_20DD93F00);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v107(v50, 0, 1, v105);
          sub_20DA47868(v50, v49);
        }

        else
        {
          v53 = *(v0 + 312);
          sub_20DA1A960(*(v0 + 192));
          sub_20D9D76EC(v53, &unk_27C843810, &qword_20DD93F00);
        }
      }

      v54 = *(v0 + 376);
      v55 = *(v0 + 384);
      if (sub_20DD63634())
      {
        (*v127)(*(v0 + 376), *(v0 + 336));

        goto LABEL_37;
      }

      v56 = *(v0 + 376);
      v57 = *(v0 + 384);
      if ((sub_20DD63644() & 1) == 0)
      {
        v106 = v45 + v37;
        while (1)
        {
          if (!v45)
          {
            v63 = *v127;
            v37 = v106;
LABEL_33:
            v63(*(v0 + 376), *(v0 + 336));

            goto LABEL_14;
          }

          if (v45 > *(v44 + 16))
          {
            break;
          }

          --v45;
          v58 = *(v0 + 368);
          v59 = *(v0 + 336);
          v60 = *(v0 + 184);
          v61 = *(v0 + 120);
          sub_20DA1A828(v44 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v45, v60);
          sub_20DD649A4();
          sub_20DA1A960(v60);
          v62 = *(v0 + 88);
          __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
          sub_20DD64694();
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));
          LOBYTE(v60) = sub_20DD63644();
          v63 = *v127;
          (*v127)(v58, v59);
          if ((v60 & 1) == 0)
          {
            goto LABEL_33;
          }

          v39 = __OFADD__(v37++, 1);
          if (v39)
          {
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      (*v127)(*(v0 + 376), *(v0 + 336));
      v38 = *(v44 + 16);

      v39 = __OFADD__(v37, v38);
      v37 += v38;
      if (v39)
      {
        goto LABEL_59;
      }

LABEL_14:
      v35 = v109;
      v36 = v122 + 1;
    }

    while (v122 + 1 != v112);

    if (v37 < 20)
    {
      goto LABEL_38;
    }

LABEL_49:
    v91 = *(v0 + 392);

    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v92 = *(v0 + 168);
    v93 = qword_27C84C658;
    sub_20DD64C54();
    v94 = sub_20DD64C24();
    v95 = sub_20DD65354();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      *(v96 + 4) = v37;
      _os_log_impl(&dword_20D9BF000, v94, v95, "Not prefetching events, at least %ld left in the list", v96, 0xCu);
      MEMORY[0x20F327D10](v96, -1, -1);
    }

    v97 = *(v0 + 384);
    v98 = *(v0 + 336);
    v99 = *(v0 + 344);
    v100 = *(v0 + 320);
    v101 = *(v0 + 168);
    v102 = *(v0 + 136);
    v103 = *(v0 + 144);
    v3 = *(v0 + 112);

    (*(v103 + 8))(v101, v102);
    sub_20D9D76EC(v100, &unk_27C843810, &qword_20DD93F00);
    (*(v99 + 8))(v97, v98);
    goto LABEL_3;
  }

  v37 = 0;
LABEL_37:

LABEL_38:
  if (qword_27C842480 != -1)
  {
LABEL_60:
    swift_once();
  }

  v64 = *(v0 + 160);
  v65 = qword_27C84C658;
  *(v0 + 416) = qword_27C84C658;
  v66 = v65;
  sub_20DD64C54();
  v67 = sub_20DD64C24();
  v68 = sub_20DD65384();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = v37;
    _os_log_impl(&dword_20D9BF000, v67, v68, "Prefetching more events, only %ld left in the list", v69, 0xCu);
    MEMORY[0x20F327D10](v69, -1, -1);
  }

  v70 = *(v0 + 360);
  v71 = *(v0 + 336);
  v72 = *(v0 + 344);
  v131 = *(v0 + 320);
  v73 = *(v0 + 296);
  v74 = *(v0 + 160);
  v75 = *(v0 + 136);
  v76 = *(v0 + 144);
  v77 = *(v0 + 128);

  v78 = *(v76 + 8);
  *(v0 + 424) = v78;
  *(v0 + 432) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78(v74, v75);
  v79 = *(v72 + 16);
  v79(v70, v77 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v71);
  sub_20DA4688C(v131, v73);
  v80 = v119(v73, 1, v71);
  v81 = *(v0 + 352);
  v82 = *(v0 + 296);
  if (v80 == 1)
  {
    v83 = *(v0 + 336);
    (v79)(v81, *(v0 + 120));
    if (v119(v82, 1, v83) != 1)
    {
      sub_20D9D76EC(*(v0 + 296), &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    v104(v81, *(v0 + 296), *(v0 + 336));
  }

  v84 = *(v0 + 112);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  *(v0 + 440) = v85;
  v86 = *(v85 + 48);
  v87 = swift_task_alloc();
  *(v0 + 448) = v87;
  *v87 = v0;
  v87[1] = sub_20DA3EC84;
  v89 = *(v0 + 352);
  v88 = *(v0 + 360);
  v90 = *(v0 + 128);

  return sub_20DA40090(v84 + v86, v88, v89, 200, 0);
}