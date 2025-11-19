void sub_24814A0F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24814A31C();
    (*(v4 + 16))(v6, v9, v3);

    v10 = sub_248382A80();
    v11 = sub_248383DC0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136446210;
      v13 = sub_248383EF0();
      v14 = MEMORY[0x24C1CB100](a2, v13);
      v16 = sub_24814A378(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_248146000, v10, v11, "Received proactive suggestions update: %{public}s", v12, 0xCu);
      v17 = v19;
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1CD5F0](v17, -1, -1);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    *&v8[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions] = a2;

    sub_24814A5AC();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24814A378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24814A444(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24814A550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24814A444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24822B4D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248384490();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24814A550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24814A5AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v2 - 8);
  v168 = &v158 - v3;
  v180 = sub_248382500();
  v172 = *(v180 - 8);
  v4 = MEMORY[0x28223BE20](v180);
  v179 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v178 = &v158 - v6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v177 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v158 - v7;
  v8 = sub_248381210();
  v176 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = (&v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v158 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v158 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v158 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v158 - v25;
  v27 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer];
  if (v27 && ([v27 isValid] & 1) != 0)
  {
    v28 = sub_24814A31C();
    (*(v12 + 16))(v15, v28, v11);
    v29 = v1;
    v30 = sub_248382A80();
    v31 = sub_248383DC0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v11;
      v34 = swift_slowAlloc();
      v181[0] = v34;
      *v32 = 136446210;
      v182 = *&v29[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38);
      v35 = sub_2483841D0();
      v37 = sub_24814A378(v35, v36, v181);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_248146000, v30, v31, "Receive proactive suggestions but timer is still active. Delaying processing for suggestions: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1CD5F0](v34, -1, -1);
      MEMORY[0x24C1CD5F0](v32, -1, -1);

      return (*(v12 + 8))(v15, v33);
    }

    v55 = *(v12 + 8);
    v56 = v15;
    return v55(v56, v11);
  }

  v39._rawValue = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions];
  if (!v39._rawValue)
  {
    v51 = sub_24814A31C();
    (*(v12 + 16))(v18, v51, v11);
    v52 = sub_248382A80();
    v53 = sub_248383DC0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_248146000, v52, v53, "processProactiveSuggestionsIfNeeded called but pendingProactiveSuggestions is nil so we have nothing to do.", v54, 2u);
      MEMORY[0x24C1CD5F0](v54, -1, -1);
    }

    v55 = *(v12 + 8);
    v56 = v18;
    return v55(v56, v11);
  }

  if (*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController])
  {
    v40 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions;
    v41 = sub_24814A31C();
    (*(v12 + 16))(v21, v41, v11);
    v42 = v11;
    v43 = v1;
    v44 = sub_248382A80();
    v45 = sub_248383DC0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v181[0] = v47;
      *v46 = 136446210;
      v182 = *&v1[v40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38);
      v48 = sub_2483841D0();
      v50 = sub_24814A378(v48, v49, v181);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_248146000, v44, v45, "IntroViewController is showing. Delaying processing of proactive stack suggestions: %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C1CD5F0](v47, -1, -1);
      MEMORY[0x24C1CD5F0](v46, -1, -1);
    }

    return (*(v12 + 8))(v21, v42);
  }

  v163 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions;
  if (v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground] != 1)
  {
    v69 = sub_24814A31C();
    (*(v12 + 16))(v24, v69, v11);
    v70 = v1;
    v71 = sub_248382A80();
    v72 = sub_248383DC0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = v11;
      v75 = swift_slowAlloc();
      v181[0] = v75;
      *v73 = 136446210;
      v182 = *&v1[v163];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C28);
      sub_24822D648(&qword_27EE92C30, &qword_27EE92C38);
      v76 = sub_2483841D0();
      v78 = sub_24814A378(v76, v77, v181);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_248146000, v71, v72, "Not foregrounded. Delaying processing of proactive stack suggestions: %{public}s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x24C1CD5F0](v75, -1, -1);
      MEMORY[0x24C1CD5F0](v73, -1, -1);

      return (*(v12 + 8))(v24, v74);
    }

    v55 = *(v12 + 8);
    v56 = v24;
    return v55(v56, v11);
  }

  v57 = sub_24814A31C();
  (*(v12 + 16))(v26, v57, v11);

  v58 = sub_248382A80();
  v59 = sub_248383DC0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v181[0] = v174;
    *v60 = 136446210;
    v61 = sub_248383EF0();
    v62 = MEMORY[0x24C1CB100](v39._rawValue, v61);
    v175 = v11;
    v64 = sub_24814A378(v62, v63, v181);
    v173 = v58;
    v65 = v59;
    v66 = v64;

    *(v60 + 4) = v66;
    v67 = v173;
    _os_log_impl(&dword_248146000, v173, v65, "Processing proactive stack suggestions: %{public}s", v60, 0xCu);
    v68 = v174;
    __swift_destroy_boxed_opaque_existential_0(v174);
    MEMORY[0x24C1CD5F0](v68, -1, -1);
    MEMORY[0x24C1CD5F0](v60, -1, -1);

    (*(v12 + 8))(v26, v175);
  }

  else
  {

    (*(v12 + 8))(v26, v11);
  }

  v167 = v10;
  v169 = v8;
  v181[0] = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AA8, &qword_27EE92AA0);
  sub_24822D648(&qword_27EE92AB0, &qword_27EE92AB8);
  v79 = sub_248383AB0();
  v80 = v79;
  if (v79 >> 62)
  {
    goto LABEL_65;
  }

  v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v81)
  {
LABEL_66:

    goto LABEL_67;
  }

LABEL_22:
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v174 = v80 & 0xFFFFFFFFFFFFFF8;
  v175 = v80 & 0xC000000000000001;
  v160 = v80 + 32;
  v173 = v81;
  do
  {
    if (v175)
    {
      v85 = MEMORY[0x24C1CBA50](v82, v80);
    }

    else
    {
      if (v82 >= *(v174 + 16))
      {
        goto LABEL_64;
      }

      v85 = *(v80 + 8 * v82 + 32);
    }

    v86 = v85;
    v87 = (v82 + 1);
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v81 = sub_248384360();
      if (!v81)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

    LOBYTE(v88) = WidgetStack.updateWithSuggestions(_:)(v39)._0;
    v89 = v88;
    v90 = v88;

    v91 = v90 > 0xFF;
    v92 = v173;
    v93 = v91;
    v84 |= v89;
    v83 |= v93;
    ++v82;
  }

  while (v87 != v173);

  if ((v84 & 1) == 0)
  {
    if (v83)
    {
      goto LABEL_97;
    }

LABEL_67:

LABEL_98:
    *&v1[v163] = 0;
  }

  v94 = *&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state];
  if (!v94)
  {
LABEL_97:
    sub_248381B90();
    v152 = sub_248383BE0();
    v153 = v168;
    (*(*(v152 - 8) + 56))(v168, 1, 1, v152);
    sub_248383BB0();
    v154 = v1;
    v155 = sub_248383BA0();
    v156 = swift_allocObject();
    v157 = MEMORY[0x277D85700];
    *(v156 + 16) = v155;
    *(v156 + 24) = v157;
    *(v156 + 32) = v80;
    *(v156 + 40) = v154;
    *(v156 + 48) = 0;
    sub_2482E9E44(0, 0, v153, 0, 0, &unk_2483A0130, v156);

    sub_24822D578(v153, &qword_27EE90480);
    goto LABEL_98;
  }

  v165 = v80;
  v158 = v94;
  v95 = [v158 widgetStackRows];
  sub_248383E00();
  v96 = sub_248383B10();

  if (v96 >> 62)
  {
    v97 = sub_248384360();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v97)
  {
    v181[0] = MEMORY[0x277D84F90];
    sub_2482E665C(0, v97 & ~(v97 >> 63), 0);
    if (v97 < 0)
    {
      goto LABEL_100;
    }

    v98 = 0;
    v99 = v181[0];
    do
    {
      if ((v96 & 0xC000000000000001) != 0)
      {
        v100 = MEMORY[0x24C1CBA50](v98, v96);
      }

      else
      {
        v100 = *(v96 + 8 * v98 + 32);
      }

      v101 = v100;
      v102 = [v101 stacks];
      sub_248383DD0();
      v103 = sub_248383B10();

      v181[0] = v99;
      v105 = *(v99 + 16);
      v104 = *(v99 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_2482E665C((v104 > 1), v105 + 1, 1);
        v99 = v181[0];
      }

      ++v98;
      *(v99 + 16) = v105 + 1;
      *(v99 + 8 * v105 + 32) = v103;
    }

    while (v97 != v98);

    v92 = v173;
  }

  else
  {

    v99 = MEMORY[0x277D84F90];
  }

  v181[0] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C40);
  sub_24822D648(&unk_27EE93420, &unk_27EE92C40);
  sub_24822D648(&unk_27EE92C50, &qword_27EE93430);
  v106 = sub_248383AB0();

  v80 = v165;
  v159 = v1;
  if (v106 >> 62)
  {
    v107 = sub_248384360();
    v108 = MEMORY[0x277D84F90];
    if (!v107)
    {
      goto LABEL_70;
    }

LABEL_54:
    v109 = v106;
    v181[0] = v108;
    sub_2482E663C(0, v107 & ~(v107 >> 63), 0);
    if (v107 < 0)
    {
      goto LABEL_101;
    }

    v110 = 0;
    v111 = v181[0];
    v112 = v109;
    v166 = (v109 & 0xC000000000000001);
    v113 = (v176 + 1);
    v176 = v109;
    do
    {
      v114 = v107;
      if (v166)
      {
        v115 = MEMORY[0x24C1CBA50](v110, v112);
      }

      else
      {
        v115 = v112[v110 + 4];
      }

      v116 = v115;
      v117 = [v115 id];
      v118 = v167;
      sub_2483811F0();

      v119 = sub_2483811D0();
      v121 = v120;
      (*v113)(v118, v169);
      v181[0] = v111;
      v123 = *(v111 + 16);
      v122 = *(v111 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_2482E663C((v122 > 1), v123 + 1, 1);
        v111 = v181[0];
      }

      ++v110;
      *(v111 + 16) = v123 + 1;
      v124 = (v111 + 24 * v123);
      v124[4] = v119;
      v124[5] = v121;
      v124[6] = v116;
      v107 = v114;
      v80 = v165;
      v112 = v176;
    }

    while (v114 != v110);

    v92 = v173;
    v1 = v159;
  }

  else
  {
    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v108 = MEMORY[0x277D84F90];
    if (v107)
    {
      goto LABEL_54;
    }

LABEL_70:

    v111 = MEMORY[0x277D84F90];
  }

  if (*(v111 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C60);
    v125 = sub_2483845F0();
  }

  else
  {
    v125 = MEMORY[0x277D84F98];
  }

  v181[0] = v125;

  sub_2482E6F54(v126, 1, v181);

  v127 = 0;
  v128 = v181[0];
  v166 = (v177 + 8);
  v129 = v171;
  v176 = (v172 + 8);
  v177 = v172 + 16;
  v130 = v170;
  v131 = v160;
  v161 = v181[0];
  while (2)
  {
    if (v175)
    {
      v132 = MEMORY[0x24C1CBA50](v127, v80);
      v133 = __OFADD__(v127, 1);
      v134 = (&v127->isa + 1);
      if (v133)
      {
LABEL_95:
        __break(1u);
LABEL_96:

        v151 = v158;
        [*&v1[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider] setWidgetState:v158 initiatedBy:1];

        goto LABEL_97;
      }

LABEL_81:
      v167 = v134;
      v169 = v132;
      sub_248381900();
      sub_248381860();
      (*v166)(v130, v129);
      if (*(v128 + 16))
      {
        v135 = sub_24822B8A0(v181[0], v181[1]);
        v137 = v136;

        if (v137)
        {
          v164 = *(*(v128 + 56) + 8 * v135);
          v138 = sub_248381920();
          v182 = MEMORY[0x277D84F90];
          v139 = *(v138 + 16);
          if (v139)
          {
            sub_248384160();
            v140 = (*(v172 + 80) + 32) & ~*(v172 + 80);
            v162 = v138;
            v141 = v138 + v140;
            v142 = *(v172 + 72);
            v143 = *(v172 + 16);
            do
            {
              v144 = v178;
              v145 = v180;
              v143(v178, v141, v180);
              v146 = v179;
              v143(v179, v144, v145);
              v147 = sub_2482DE514(v146);
              v148 = (*v176)(v144, v145);
              if (v147)
              {
                MEMORY[0x24C1CB0D0](v148);
                if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_248383B50();
                }

                sub_248383B70();
              }

              v141 += v142;
              --v139;
            }

            while (v139);

            v1 = v159;
            v130 = v170;
            v129 = v171;
            v80 = v165;
            v92 = v173;
            v131 = v160;
          }

          else
          {
          }

          sub_248384160();
          v149 = sub_248383B00();

          v150 = v164;
          [v164 replacingWidgets_];

          v128 = v161;
LABEL_77:
          v127 = v167;
          if (v167 == v92)
          {
            goto LABEL_96;
          }

          continue;
        }
      }

      else
      {
      }

      goto LABEL_77;
    }

    break;
  }

  if (v127 < *(v174 + 16))
  {
    v132 = *(v131 + 8 * v127);
    v133 = __OFADD__(v127, 1);
    v134 = (&v127->isa + 1);
    if (v133)
    {
      goto LABEL_95;
    }

    goto LABEL_81;
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_24814BB68(uint64_t a1)
{
  v2 = sub_2483837A0();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2483837E0();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280);
  v8 = sub_248383E50();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24814A0E8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_100;
  v11 = _Block_copy(aBlock);

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2482E64FC(&qword_27EE91EB0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v7, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_24814BE8C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24814BEC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24814BF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24814BF50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24814BF98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24814C01C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DBDashboardSceneManager.sceneForApplicationEntity(_:)(void *a1)
{
  if (![a1 isApplicationEntity])
  {
    result = [a1 isProxiedApplicationEntity];
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__isInvalidated))
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 application];
    v7 = 0;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:

    return 0;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = a1;
  v6 = [v11 applicationToProxy];
  v13 = [v11 proxyEntity];
  v7 = [v13 application];

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v4 = sub_24814C858(v6, v9);

  if (v4)
  {

    return v4;
  }

  v52 = v8;
  v14 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  v15 = v14;
  if (!v14)
  {
    sub_248383960();
    v15 = sub_248383930();
  }

  v53 = sub_248383960();
  v17 = v16;
  v54 = *(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__sceneWorkspace);
  v18 = [v54 sceneWithIdentifier_];

  if (v18)
  {
    sub_248383DA0();
    v19 = *sub_24814FB80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24839C7F0;
    *(v20 + 56) = sub_24814FB28(0, &unk_27EE91E30);
    *(v20 + 64) = sub_248151298(&unk_27EE91600, &unk_27EE91E30);
    *(v20 + 32) = v18;
    v21 = v19;
    v22 = v18;
    sub_248382A40();

    [v22 invalidate];
  }

  if (v7)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CF9320]) init];
    v24 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839EA80;
    *(inited + 32) = sub_248383960();
    *(inited + 40) = v26;
    *(inited + 48) = sub_248383960();
    *(inited + 56) = v27;
    *(inited + 64) = sub_248383960();
    *(inited + 72) = v28;
    v29 = [v6 bundleIdentifier];
    v30 = sub_248383960();
    v32 = v31;

    aBlock = v30;
    v57 = v32;
    MEMORY[0x28223BE20](v33);
    v51[2] = &aBlock;
    LOBYTE(v29) = sub_24815503C(sub_2481614D0, v51, inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v29)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277CF91F8]) init];
      v24 = v6;
    }

    else
    {
      v34 = [objc_allocWithZone(MEMORY[0x277D751A0]) init];
      v24 = v6;
      v23 = v34;
    }
  }

  v35 = swift_allocObject();
  v35[2] = v53;
  v35[3] = v17;
  v35[4] = v24;
  v35[5] = v23;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2482B8B74;
  *(v36 + 24) = v35;
  v60 = sub_248282F14;
  v61 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_2482BB934;
  v59 = &block_descriptor_11;
  v37 = _Block_copy(&aBlock);
  v38 = v7;
  v39 = v24;

  v4 = [v54 createScene_];
  _Block_release(v37);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_32;
  }

  [v4 ui:1 setHitTestsAsOpaque:?];
  [v4 addObserver_];
  v41 = v52;
  swift_beginAccess();
  v42 = *(v1 + v41);
  if ((v42 & 0xC000000000000001) == 0)
  {
    v47 = v4;
    v48 = v6;
    v49 = v47;
    goto LABEL_29;
  }

  if (v42 < 0)
  {
    v43 = *(v1 + v41);
  }

  else
  {
    v43 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  v44 = v4;
  v45 = v6;
  v46 = v44;
  result = sub_248384360();
  if (!__OFADD__(result, 1))
  {
    *(v1 + v41) = sub_2482B6BB4(v43, result + 1);
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v1 + v41);
    sub_2482B71F4(v4, v6, isUniquelyReferenced_nonNull_native);
    *(v1 + v41) = v55;

    swift_endAccess();

    return v4;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_24814C7FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_24814C858(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_248384560();

    if (v4)
    {
      sub_24814FB28(0, &unk_27EE91E30);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24814C91C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_24814C91C(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_24814C960(a1, v2);
}

unint64_t sub_24814C960(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24814FB28(0, &qword_27EE91E40);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24814CB58()
{
  result = qword_27EE8FFC0;
  if (!qword_27EE8FFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE8FFC0);
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_24814D350(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  if (([v7 _invalidated] & 1) == 0)
  {
    v14 = [v7 _assertions];
    v15 = type metadata accessor for _DBFocusAssertion();
    v16 = sub_248383B10();

    v35 = a1;
    MEMORY[0x28223BE20](v17);
    v32[2] = &v35;
    v18 = sub_24814D65C(sub_24814D770, v32, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      v21 = sub_248383DC0();
      v22 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24839EA80;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = v23;
        v33 = v21;
        v34 = a2;
        v16 = MEMORY[0x277D83B88];
        v21 = MEMORY[0x277D83C10];
        *(v23 + 56) = MEMORY[0x277D83B88];
        *(v23 + 64) = v21;
        *(v23 + 32) = v18 + 1;
        v22 = v22;
        v24 = [v7 _assertions];
        v25 = sub_248383B10();

        if (!(v25 >> 62))
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }
      }

      v26 = sub_248384360();
LABEL_6:

      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v20[12] = v16;
        v20[13] = v21;
        v20[9] = v26 + 1;
        v20[17] = v15;
        v20[18] = sub_24814FBD0(&qword_27EE915D8, v27, type metadata accessor for _DBFocusAssertion);
        v20[14] = a1;
        v28 = a1;
        sub_248382A40();

        v29 = [v7 _assertions];
        v30 = sub_248383B10();

        v35 = v30;
        v31 = sub_248383B00();

        [v7 set:v31 assertions:?];

        sub_248150140(v34, a3, a4, a5, a6);
      }
    }
  }
}

unint64_t sub_24814D65C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v13 = a3;
    v14 = sub_248384360();
    a3 = v13;
    v5 = v14;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v15 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x24C1CBA50](v8 - 1, v15);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v17 = v9;
    v11 = a1(&v17);
  }

  while (!v3 && (v11 & 1) == 0);
  return v5;
}

uint64_t sub_24814D7C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24814D854(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24814D854(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_248384360();
  }

  return sub_248384480();
}

void sub_24814E20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DBLogForCategory(unint64_t a1)
{
  if (a1 >= 0x1E)
  {
    DBLogForCategory_cold_2();
  }

  if (DBLogForCategory_onceToken != -1)
  {
    DBLogForCategory_cold_1();
  }

  v2 = DBLogForCategory_logObjects[a1];

  return v2;
}

unint64_t sub_24814F470()
{
  v1 = [v0 _assertions];
  type metadata accessor for _DBFocusAssertion();
  v2 = sub_248383B10();

  v17 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_248384360();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while ((v2 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = v6 + 1;
      v7 = *(v2 + 32 + 8 * v6) + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target;
      if (!*(v7 + 16))
      {
        v11 = *v7;
        goto LABEL_15;
      }

LABEL_9:
      v6 = v4;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    result = MEMORY[0x24C1CBA50](v6, v2);
    v4 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_39;
    }

    v9 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target);
    v10 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16);
    v16 = *(result + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8);
    sub_24814F7DC(v9, v16, v10);
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_24815009C(v9, v16, v10);
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x24C1CB0D0](v11);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v5 = v17;
  }

  while (v4 != v3);
LABEL_24:

  if (v5 >> 62)
  {
    v12 = sub_248384360();
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_26:
    v13 = __OFSUB__(v12, 1);
    result = v12 - 1;
    if (v13)
    {
      __break(1u);
    }

    else if ((v5 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v5 + 8 * result + 32);
LABEL_31:
        v15 = v14;

        return v15;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v14 = MEMORY[0x24C1CBA50](result, v5);
    goto LABEL_31;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_33:

  return 0;
}

uint64_t sub_24814F6F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_24814F7DC(id result, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v5 = result;
    v4 = a2;
    result = v5;
  }

  return result;
}

void sub_24814F838(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_248384360())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650);
      v3 = sub_248384420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_248384360();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x24C1CBA50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_248384020();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_24814FB28(0, &unk_27EE91610);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_248384030();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_248384020();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_24814FB28(0, &unk_27EE91610);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_248384030();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_24814FB28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_24814FB80()
{
  if (qword_27EE95BF0 != -1)
  {
    swift_once();
  }

  return &qword_27EE98E88;
}

uint64_t sub_24814FBD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24814FD30()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = sub_248383930();

    v4 = sub_248383930();
    [v2 appendString:v4 withName:0];

    v5 = sub_248384210();
    v6 = sub_248383930();

    v8 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target);
    v7 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8);
    if (*(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16))
    {
      if (*(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16) == 1)
      {
        v9 = [v8 identity];
        v10 = sub_248383930();

        sub_24815009C(v8, v7, 1);
      }

      else
      {
        v14 = sub_248383930();
        [v2 appendString:v14 withName:0];
      }
    }

    else
    {
      v11 = v8;
      sub_24814F7DC(v8, v7, 0);
      v12 = sub_248383930();

      if (v7)
      {
        v19 = [v7 identity];
        sub_24814FB28(0, &unk_27EE92560);
        v13 = sub_248384670();
      }

      else
      {
        v13 = 0;
      }

      v15 = sub_248383930();
      v16 = [v2 appendObject:v13 withName:v15 skipIfNil:1];

      swift_unknownObjectRelease();
    }

    v17 = *(v0 + OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process);
    v18 = sub_248383930();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24815009C(void *a1, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

void sub_248150140(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_248383DC0();
  v12 = sub_24814FB80();
  v13 = *v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24839C7F0;
  v15 = v13;
  v16 = [v5 focusWindow];
  if (v16)
  {
    v17 = v16;
    v120 = sub_24814FB28(0, &qword_27EE91640);
    v121 = sub_248151298(&qword_27EE91648, &qword_27EE91640);
    *&v119 = v17;
    sub_24814F6F4(&v119, v14 + 32);
  }

  else
  {
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2482970D8();
    *(v14 + 32) = 0x296C6C756E28;
    *(v14 + 40) = 0xE600000000000000;
  }

  sub_248382A40();

  v18 = [v5 _lastAssertion];
  v19 = [v5 _assertions];
  v20 = type metadata accessor for _DBFocusAssertion();
  v21 = sub_248383B10();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_20:

    if (v18)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v22 = sub_248384360();
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_6:
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_79;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_79:
    v25 = MEMORY[0x24C1CBA50](v24, v21);
    goto LABEL_11;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v25 = *(v21 + 8 * v24 + 32);
LABEL_11:
  v26 = v25;

  if (v18)
  {
    if (v26)
    {
      v27 = sub_248384030();

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  v18 = v26;
  if (v26)
  {
    goto LABEL_21;
  }

LABEL_16:
  v28 = [v6 _lastAssertion];
  if (!v28)
  {
    return;
  }

  if ([v6 _focusDeferral])
  {
    swift_unknownObjectRelease();
    return;
  }

LABEL_22:
  v29 = [v6 _assertions];
  v18 = sub_248383B10();

  if (v18 >> 62)
  {
    v30 = sub_248384360();
    if (v30)
    {
LABEL_24:
      v23 = __OFSUB__(v30, 1);
      v24 = v30 - 1;
      if (!v23)
      {
        if ((v18 & 0xC000000000000001) == 0)
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v24 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v18 + 8 * v24 + 32);
LABEL_29:
            v32 = v31;
            goto LABEL_32;
          }

          __break(1u);
          return;
        }

LABEL_83:
        v31 = MEMORY[0x24C1CBA50](v24, v18);
        goto LABEL_29;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  else
  {
    v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_24;
    }
  }

  v32 = 0;
LABEL_32:

  [v6 set:v32 lastAssertion:?];

  sub_248383DC0();
  v33 = *v12;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_24839C7F0;
  v35 = v33;
  v36 = [v6 _lastAssertion];
  if (v36)
  {
    v38 = v36;
    v120 = v20;
    v121 = sub_24814FBD0(&qword_27EE915D8, v37, type metadata accessor for _DBFocusAssertion);
    *&v119 = v38;
    sub_24814F6F4(&v119, v34 + 32);
  }

  else
  {
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_2482970D8();
    *(v34 + 32) = 0x296C6C756E28;
    *(v34 + 40) = 0xE600000000000000;
  }

  sub_248382A40();

  v39 = [v6 _focusDeferral];
  if (v39)
  {
    [v39 invalidate];
    swift_unknownObjectRelease();
  }

  [v6 set:0 focusDeferral:?];
  v40 = [v6 _lastAssertion];
  if (v40)
  {
    v41 = v40;
    v42 = *&v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process];
    if (!v42)
    {
      sub_248383DC0();
      v47 = *v12;
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_24839C7F0;
      *(v48 + 56) = v20;
      *(v48 + 64) = sub_24814FBD0(&qword_27EE915D8, v49, type metadata accessor for _DBFocusAssertion);
      *(v48 + 32) = v41;
      v50 = v41;
      v51 = v47;
      sub_248382A40();

      goto LABEL_54;
    }

    v43 = &v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    v44 = *&v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    v45 = *&v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 8];
    if (v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16])
    {
      if (v40[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target + 16] == 1)
      {
        v46 = v42;
        sub_24814F7DC(v44, v45, 1);
LABEL_47:
        if ([v44 contentState] == 2)
        {
          v118 = v43;
          v54 = [objc_allocWithZone(MEMORY[0x277CF0730]) init];
          v55 = [v6 _display];
          v115 = v54;
          [v54 setDisplay_];

          v56 = [objc_allocWithZone(MEMORY[0x277CF0748]) init];
          v57 = *v118;
          v116 = v41;
          v117 = v42;
          if (v118[16])
          {
            if (v118[16] != 1)
            {
              v61 = 0;
              goto LABEL_58;
            }

            v58 = *(v118 + 1);
            v59 = [v57 identityToken];
            v60 = [v59 stringRepresentation];

            if (!v60)
            {
              sub_248383960();
              v60 = sub_248383930();
            }

            v61 = [objc_opt_self() tokenForString_];

            sub_24815009C(v57, v58, 1);
            v42 = v117;
          }

          else
          {
            v67 = v57;
            v61 = [objc_opt_self() tokenForIdentifierOfCAContext_];
          }

          v68 = v61;
LABEL_58:
          [v56 setToken_];
          v113 = v61;

          v114 = v56;
          [v56 setPid_];
          v69 = 512;
          if (a1 != 32)
          {
            v69 = a1;
          }

          if (a1 == 16)
          {
            v70 = 256;
          }

          else
          {
            v70 = v69;
          }

          v112 = [objc_opt_self() _movementWithHeading_isInitial_fallbackMovementOriginatingFrame_];
          v71 = [objc_allocWithZone(MEMORY[0x277D75510]) initWithFocusMovementInfo_];
          v72 = [v44 carPlaySession];
          if (v72)
          {
            [v72 setTouchpadFeedbackDelegate_];
            swift_unknownObjectRelease();
          }

          sub_248383DC0();
          v73 = *v12;
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_24839CCA0;
          *(v74 + 56) = sub_24814FB28(0, &qword_27EE915E8);
          *(v74 + 64) = sub_248151298(&unk_27EE915F0, &qword_27EE915E8);
          *(v74 + 32) = v71;
          *(v74 + 96) = sub_24814FB28(0, &unk_27EE91E30);
          *(v74 + 104) = sub_248151298(&unk_27EE91600, &unk_27EE91E30);
          *(v74 + 72) = v44;
          v75 = v73;
          v76 = v71;
          v77 = v44;
          sub_248382A40();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24839C700;
          *(inited + 32) = v76;
          v110 = v76;
          sub_24814F838(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_24814FB28(0, &unk_27EE91610);
          sub_248151298(&qword_27EE90E30, &unk_27EE91610);
          v79 = sub_248383C70();

          v111 = v77;
          [v77 sendActions_];

          if (v118[16])
          {
            v80 = v117;
            if (v118[16] == 1)
            {
              sub_248383DC0();
              v81 = *v12;
              v82 = swift_allocObject();
              *(v82 + 16) = xmmword_24839EA80;
              v83 = v81;
              v84 = [v6 _display];
              *(v82 + 56) = sub_24814FB28(0, &qword_27EE91620);
              *(v82 + 64) = sub_248151298(&qword_27EE91628, &qword_27EE91620);
              *(v82 + 32) = v84;
              v85 = [v117 pid];
              v86 = MEMORY[0x277D84A20];
              *(v82 + 96) = MEMORY[0x277D849A8];
              *(v82 + 104) = v86;
              *(v82 + 72) = v85;
              v87 = v113;
              if (v113)
              {
                v120 = sub_24814FB28(0, &qword_27EE91630);
                v121 = sub_248151298(&qword_27EE91638, &qword_27EE91630);
                *&v119 = v113;
                sub_24814F6F4(&v119, v82 + 112);
              }

              else
              {
                *(v82 + 136) = MEMORY[0x277D837D0];
                *(v82 + 144) = sub_2482970D8();
                *(v82 + 112) = 0x296C6C756E28;
                *(v82 + 120) = 0xE600000000000000;
              }

              v100 = v113;
              sub_248382A40();

              v99 = v115;
            }

            else
            {
              sub_248383DC0();
              v98 = *v12;
              sub_248382A40();

              v99 = v115;
              v87 = v113;
            }
          }

          else
          {
            v88 = *v118;
            sub_248383DC0();
            v89 = *v12;
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_24839EA90;
            v91 = v89;
            v92 = [v6 _display];
            *(v90 + 56) = sub_24814FB28(0, &qword_27EE91620);
            *(v90 + 64) = sub_248151298(&qword_27EE91628, &qword_27EE91620);
            *(v90 + 32) = v92;
            v93 = [v88 _contextId];
            v94 = MEMORY[0x277D84D30];
            *(v90 + 96) = MEMORY[0x277D84CC0];
            *(v90 + 104) = v94;
            *(v90 + 72) = v93;
            *(v90 + 136) = sub_24814FB28(0, &qword_27EE91640);
            *(v90 + 144) = sub_248151298(&qword_27EE91648, &qword_27EE91640);
            *(v90 + 112) = v88;
            v95 = v88;
            v80 = v117;
            v96 = [v117 pid];
            v97 = MEMORY[0x277D84A20];
            *(v90 + 176) = MEMORY[0x277D849A8];
            *(v90 + 184) = v97;
            *(v90 + 152) = v96;
            v87 = v113;
            if (v113)
            {
              v120 = sub_24814FB28(0, &qword_27EE91630);
              v121 = sub_248151298(&qword_27EE91638, &qword_27EE91630);
              *&v119 = v113;
              sub_24814F6F4(&v119, v90 + 192);
            }

            else
            {
              *(v90 + 216) = MEMORY[0x277D837D0];
              *(v90 + 224) = sub_2482970D8();
              *(v90 + 192) = 0x296C6C756E28;
              *(v90 + 200) = 0xE600000000000000;
            }

            v99 = v115;
            v101 = v113;
            sub_248382A40();
          }

          v102 = [objc_opt_self() sharedInstance];
          *&v119 = 0;
          *(&v119 + 1) = 0xE000000000000000;
          sub_248384440();

          *&v119 = 0xD000000000000017;
          *(&v119 + 1) = 0x80000002483AE260;
          v103 = [v6 _display];
          v104 = [v103 description];
          v105 = sub_248383960();
          v107 = v106;

          MEMORY[0x24C1CAFD0](v105, v107);

          v108 = sub_248383930();

          v109 = [v102 deferEventsMatchingPredicate:v99 toTarget:v114 withReason:v108];

          [v6 set:v109 focusDeferral:?];
          swift_unknownObjectRelease();

          return;
        }

        sub_248383DC0();
        v62 = *v12;
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_24839C7F0;
        *(v63 + 56) = v20;
        *(v63 + 64) = sub_24814FBD0(&qword_27EE915D8, v64, type metadata accessor for _DBFocusAssertion);
        *(v63 + 32) = v41;
        v65 = v62;
        v66 = v41;
        sub_248382A40();

LABEL_54:

        return;
      }

      v53 = v42;
    }

    else
    {
      v52 = v42;
      sub_24814F7DC(v44, v45, 0);

      if (v45)
      {
        v44 = v45;
        goto LABEL_47;
      }
    }

    v44 = [v6 _rootScene];
    goto LABEL_47;
  }
}

uint64_t sub_248151298(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24814FB28(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void DBDockController.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard16DBDockController_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockWindow) layer];
  [v4 setCornerRadius_];

  v5 = *(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__secondaryDockWindow);
  if (v5)
  {
    v6 = [v5 layer];
    [v6 setCornerRadius_];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2481542AC()
{
  v6 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews);
  v7 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C1CBA50](0, *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews));
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;
  [v0 bounds];
  Width = CGRectGetWidth(v47);
  v11 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x90);
  v48.origin.x = v4();
  v1 = &selRef_setDamping_;
  [v9 setFrame_];
  v44 = v9;
  if (v7)
  {
    v12 = MEMORY[0x24C1CBA50](1, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v12 = *(v6 + 40);
  }

  v13 = v12;
  v49.origin.x = v4();
  MinY = CGRectGetMinY(v49);
  v50.origin.x = v4();
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v4();
  [v13 setFrame_];
  if (v7)
  {
    v16 = MEMORY[0x24C1CBA50](2, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v16 = *(v6 + 48);
  }

  v17 = v16;
  v52.origin.x = v4();
  MaxY = CGRectGetMaxY(v52);
  [v0 bounds];
  v19 = CGRectGetWidth(v53);
  [v0 bounds];
  Height = CGRectGetHeight(v54);
  v55.origin.x = v4();
  v42 = v17;
  [v17 setFrame_];
  v43 = v13;
  if (v7)
  {
    v21 = MEMORY[0x24C1CBA50](3, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = *(v6 + 56);
  }

  v6 = v21;
  v56.origin.x = v4();
  MaxX = CGRectGetMaxX(v56);
  v57.origin.x = v4();
  v23 = CGRectGetMinY(v57);
  [v0 bounds];
  v24 = CGRectGetWidth(v58);
  v59.origin.x = v4();
  v25 = v24 - CGRectGetMaxX(v59);
  v60.origin.x = v4();
  v26 = [v6 setFrame_];
  v5 = (*((*v11 & *v0) + 0x78))(v26);
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews);
  v2 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v3 + 32);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  v27 = MEMORY[0x24C1CBA50](0, v3);
LABEL_19:
  v28 = v27;
  v29 = ceil(v5 * 1.528665);
  v61.origin.x = v4();
  v30 = CGRectGetMinX(v61);
  v62.origin.x = v4();
  [v28 v1[89]];
  if (v2)
  {
    v31 = MEMORY[0x24C1CBA50](1, v3);
    goto LABEL_23;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = *(v3 + 40);
LABEL_23:
  v32 = v31;
  v63.origin.x = v4();
  v33 = CGRectGetMaxX(v63) - v29;
  v64.origin.x = v4();
  [v32 v1[89]];
  v41 = v28;
  if (v2)
  {
    v34 = v6;
    v35 = v44;
    v36 = MEMORY[0x24C1CBA50](2, v3);
    goto LABEL_27;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = v6;
  v35 = v44;
  v36 = *(v3 + 48);
LABEL_27:
  v37 = v36;
  v65.origin.x = v4();
  v38 = CGRectGetMaxX(v65) - v29;
  v66.origin.x = v4();
  [v37 v1[89]];
  if (!v2)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v39 = *(v3 + 56);
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    return;
  }

  v39 = MEMORY[0x24C1CBA50](3, v3);
LABEL_31:
  v45 = v39;
  v67.origin.x = v4();
  v40 = CGRectGetMinX(v67);
  v68.origin.x = v4();
  [v45 v1[89]];
}

double DBDashboardDimmingView.contentFrame.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame;
  swift_beginAccess();
  return *v1;
}

double DBDashboardDimmingView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248154F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_248384780();
  sub_2483839E0();
  v6 = sub_2483847B0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_248384680() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24815503C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL DBFetchPreferencesBoolean(const __CFString *a1, const __CFString *a2)
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(a1, a2, &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

Swift::Void __swiftcall DBDockController.siriPresentedIntent(forBundleIdentifier:)(Swift::String_optional forBundleIdentifier)
{
  object = forBundleIdentifier.value._object;
  v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard16DBDockController__primaryDockViewController) appDockViewController];
  v7 = v3;
  if (object)
  {
    v4 = sub_248383930();
    [v7 setActiveBundleIdentifier:v4 animated:1];

    v5 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v6 = [v5 analytics];

    if (!v6)
    {
      return;
    }

    v7 = sub_248383930();
    [v6 siriDidStartHostingBundleIdentifier_];
  }

  else
  {
    [v3 setActiveBundleIdentifier:0 animated:1];
  }
}

void sub_2481557C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = [a1 definition];
  v19 = [v18 clientIdentity];

  LOBYTE(v18) = [v19 isLocal];
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = type metadata accessor for _DBFocusAssertion();
    v21 = objc_allocWithZone(v20);

    v22 = a1;
    swift_unknownObjectWeakInit();
    v23 = OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process;
    *&v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__process] = 0;
    v24 = &v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__name];
    *v24 = a3;
    *(v24 + 1) = a4;
    *&v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority] = a2;
    v25 = &v21[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__target];
    *v25 = v22;
    *(v25 + 1) = 0;
    v25[16] = 1;
    v26 = v22;
    v27 = [v26 clientHandle];
    v28 = [v27 processHandle];

    v29 = *&v21[v23];
    *&v21[v23] = v28;

    v31.receiver = v21;
    v31.super_class = v20;
    v30 = objc_msgSendSuper2(&v31, sel_init);
    [v26 addObserver_];

    swift_unknownObjectWeakAssign();
    sub_2481559B4(v30, a5, a6, a7, a8, a9);
  }
}

void sub_2481559B4(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ([v6 _invalidated])
  {
    return;
  }

  v12 = [v6 _assertions];
  v13 = type metadata accessor for _DBFocusAssertion();
  v14 = sub_248383B10();

  v37 = a2;
  v38 = v6;
  v39 = v13;
  v15 = (v14 & 0xFFFFFFFFFFFFFF8);
  if (v14 >> 62)
  {
LABEL_30:
    v16 = sub_248384360();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  p_cb = &OBJC_PROTOCOL___DBClimateOverlayDelegate.cb;
  v19 = OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority;
  while (v16 != v17)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C1CBA50](v17, v14);
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v20 = *(v14 + 8 * v17 + 32);
    }

    v21 = (v17 + 1);
    v22 = __OFADD__(v17, 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v23 = v16;
    v24 = *&v20[OBJC_IVAR____TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion__priority];

    ++v17;
    v25 = *&a1[v19] >= v24;
    v16 = v23;
    if (!v25)
    {

      v16 = v17 - 1;
      goto LABEL_19;
    }
  }

  v21 = (v16 + 1);
  v22 = __OFADD__(v16, 1);
LABEL_19:
  v26 = sub_248383DC0();
  v27 = *sub_24814FB80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24839EA80;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v17 = v28;
    p_cb = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v14;
    *(v28 + 32) = v21;
    v15 = v27;
    v27 = v38;
    v29 = [v38 _assertions];
    v30 = sub_248383B10();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }
  }

  v31 = sub_248384360();
LABEL_22:

  if (__OFADD__(v31, 1))
  {
    __break(1u);
LABEL_34:
    if (sub_248384360() >= v16)
    {
      goto LABEL_25;
    }

LABEL_35:
    __break(1u);
    return;
  }

  *(v17 + 96) = p_cb;
  *(v17 + 104) = v14;
  *(v17 + 72) = v31 + 1;
  *(v17 + 136) = v39;
  *(v17 + 144) = sub_24814FBD0(&qword_27EE915D8, v32, type metadata accessor for _DBFocusAssertion);
  *(v17 + 112) = a1;
  v26 = a1;
  sub_248382A40();

  v33 = [v27 _assertions];
  v34 = sub_248383B10();

  if (v34 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16)
  {
    goto LABEL_35;
  }

LABEL_25:
  v35 = v26;
  sub_248155DA8(v16, v16, v35);

  v36 = sub_248383B00();

  [v27 set:v36 assertions:?];

  sub_248150140(v37, a3, a4, a5, a6);
}

char *sub_248155DA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_248384360();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_248384360();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_248156154(result);

  return sub_2481561F4(v6, v5, 1, v3);
}

uint64_t sub_248156154(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_248384360();
LABEL_9:
  result = sub_248384480();
  *v1 = result;
  return result;
}

char *sub_2481561F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for _DBFocusAssertion();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_248384360();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_248384360();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

__CFString *NSStringFromLockoutState(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Locked";
  }

  if (a1 == 2)
  {
    return @"Unlocked";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromHomeScreenPageType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278F02E00[a1 - 1];
  }
}

void sub_248158FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_248159ED4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v2 = ceil(v1() * 1.528665);
  v3 = [v0 traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = v2 * v5;
  v7 = v1();
  v8 = [v0 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_overlayColor);
  v12 = [v0 traitCollection];
  v20 = [v11 resolvedColorWithTraitCollection_];

  v13 = DBGenerateUpperLeftCornerImage(v20, 0, v6, v7 * v10);
  v14 = *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews);
  if (v14 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C1CBA50](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 setImage_];

      ++v16;
      if (v19 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_24815A108(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = 0.15;
  if (v1 != 2)
  {
    v3 = 0.11;
  }

  return [v2 initWithWhite:0.0 alpha:v3];
}

id DBGenerateUpperLeftCornerImage(void *a1, int a2, CGFloat a3, double a4)
{
  v7 = *MEMORY[0x277CBF448];
  v8 = a1;
  v9 = CGColorSpaceCreateWithName(v7);
  v10 = a2 ^ 1;
  v11 = CGBitmapContextCreate(0, a3, a3, 8uLL, 0, v9, a2 ^ 1u);
  CGColorSpaceRelease(v9);
  CGContextTranslateCTM(v11, 0.0, a3);
  CGContextScaleCTM(v11, 1.0, -1.0);
  v12 = [v8 CGColor];

  CGContextSetFillColorWithColor(v11, v12);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a3;
  v20.size.height = a3;
  CGContextFillRect(v11, v20);
  if (a2)
  {
    v13 = kCGBlendModeSourceAtop;
  }

  else
  {
    v13 = kCGBlendModeDestinationOut;
  }

  CGContextSetBlendMode(v11, v13);
  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a3 * 4.0, a3 * 4.0, a4}];
  if (v10)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v15 = ;
  CGContextSetFillColorWithColor(v11, [v15 CGColor]);

  CGContextAddPath(v11, [v14 CGPath]);
  CGContextFillPath(v11);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  v17 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGImageRelease(Image);

  return v17;
}

id sub_24815A7A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void DBPowerChangeCallback(void *a1)
{
  v1 = a1;
  v2 = [v1 analyticsQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __DBPowerChangeCallback_block_invoke;
  v4[3] = &unk_278F01580;
  v5 = v1;
  v3 = v1;
  [v2 addOperationWithBlock:v4];
}

void sub_24815B6EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (v2)
  {
    v11 = v2;
    v3 = [v2 layer];
    [v11 setHighlighted_];
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = [v0 layer];
      [v6 setCornerCurve_];

      v7 = [v0 layer];
      [v7 setMasksToBounds_];

      v8 = [v0 layer];
      (*((*v1 & *v0) + 0x80))();
      [v8 setCornerRadius_];

      [v3 setCornerRadius_];
      [*(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView) setHidden_];
    }

    else
    {
      (*((*v1 & *v0) + 0x80))([*(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView) setHidden_]);
      [v3 setCornerRadius_];
      [v3 setCornerCurve_];
      v9 = [v0 layer];
      [v9 setCornerRadius_];

      v10 = [v0 layer];
      [v10 setMasksToBounds_];
    }
  }
}

void *sub_24815B9A0()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

char *DBDashboardPlatterView.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() blackColor];
  [v1 setBackgroundColor_];

  [v1 setAlpha_];
  v3 = [v1 layer];
  [v3 setCompositingFilter_];

  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_burnView] = v1;
  *&v0[OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius] = 0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for DBDashboardPlatterView();
  v4 = v1;
  v5 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 setAllowsGroupBlending_];

  if (qword_27EE97870 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = [v5 traitCollection];

  sub_24814FB28(0, &qword_27EE8FD88);
  sub_24815C150();
  v10 = sub_248383880();
  v11 = [objc_opt_self() materialViewWithRecipeNamesByTraitCollection:v10 inBundle:v8 options:0 initialWeighting:0 scaleAdjustment:v9 compatibleWithTraitCollection:1.0];

  if (v11)
  {
    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = sub_248383930();
    [v12 setGroupNameBase_];

    v14 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView;
    swift_beginAccess();
    v15 = *&v5[v14];
    *&v5[v14] = v11;
    v16 = v12;

    [v5 addSubview_];
    [v5 addSubview_];
    v47 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24839FA10;
    v18 = [v16 leadingAnchor];
    v19 = [v5 &selRef_length + 1];
    v20 = [v18 constraintEqualToAnchor_];

    *(v17 + 32) = v20;
    v21 = [v16 trailingAnchor];
    v22 = [v5 &selRef_systemImageNamed_withConfiguration_ + 4];
    v23 = [v21 constraintEqualToAnchor_];

    *(v17 + 40) = v23;
    v24 = [v16 topAnchor];
    v25 = [v5 topAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v17 + 48) = v26;
    v27 = [v16 bottomAnchor];

    v28 = [v5 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v17 + 56) = v29;
    v30 = [v4 leadingAnchor];
    v31 = [v5 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v17 + 64) = v32;
    v33 = [v4 trailingAnchor];
    v34 = [v5 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v17 + 72) = v35;
    v36 = [v4 topAnchor];
    v37 = [v5 topAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v17 + 80) = v38;
    v39 = [v4 bottomAnchor];
    v40 = [v5 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v17 + 88) = v41;
    sub_24814FB28(0, &qword_27EE8FE90);
    v42 = sub_248383B00();

    [v47 activateConstraints_];

    sub_24815B6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_24839C7F0;
    v44 = sub_248382C50();
    v45 = MEMORY[0x277D74BF0];
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    MEMORY[0x24C1CB580](v43, sel_updateMaterial);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v5;
}

unint64_t sub_24815C150()
{
  result = qword_27EE934D8;
  if (!qword_27EE934D8)
  {
    sub_24814FB28(255, &qword_27EE8FD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE934D8);
  }

  return result;
}

double DBDashboardPlatterView.platterCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24815C5E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_24815C68C(void *a1, uint64_t a2)
{
  v4 = sub_2483837A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2483837E0();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280);
  v11 = sub_248383E50();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24815CA2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_94;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24815C9C8();
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_24815C92C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24815C970()
{
  result = qword_27EE91EB0;
  if (!qword_27EE91EB0)
  {
    sub_2483837A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91EB0);
  }

  return result;
}

unint64_t sub_24815C9C8()
{
  result = qword_27EE91EC0;
  if (!qword_27EE91EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE90290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91EC0);
  }

  return result;
}

void sub_24815CA2C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 process];
    v5 = [v4 bundle];

    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [v5 identifier];

    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 sharedInstance];
    v10 = [v9 applicationWithBundleIdentifier_];

    if (v10)
    {
      v11 = [v1 state];
      if (v11)
      {
        v12 = v11;
        if ([v11 isRunning])
        {
          v13 = [v1 previousState];
          if (!v13)
          {
            v15 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
            swift_beginAccess();
            v16 = *&v3[v15];

            v17 = sub_24814C858(v10, v16);

            if (v17)
            {

              v10 = v17;
            }

            else
            {
              v18 = [*&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__iconProvider] isIconVisibleForIdentifier_];

              if (v18)
              {
                sub_2482B5E5C(v10);
              }
            }

            goto LABEL_13;
          }

          v14 = v13;
        }

        else
        {
        }

        v10 = v12;
      }

      else
      {
      }
    }

    else
    {
      v10 = v8;
    }

LABEL_13:

LABEL_14:
  }
}

void sub_24815E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24815F1F0(uint64_t *a1, uint64_t a2)
{
  v116 = a2;
  v138 = sub_2483812C0();
  v140 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v115 = &v114 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v114 - v7;
  v136 = sub_248381320();
  v9 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v114 - v12;
  v13 = sub_2483812F0();
  v141 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v121 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v114 - v16;
  MEMORY[0x28223BE20](v17);
  v129 = &v114 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v114 - v20;
  MEMORY[0x28223BE20](v21);
  v137 = &v114 - v22;
  MEMORY[0x28223BE20](v23);
  v130 = &v114 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v118 = &v114 - v27;
  v28 = *a1;
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  v133 = v28;
  v139 = v29;
  v117 = v9;
  if (v29)
  {
    v31 = 0;
    v126 = (v141 + 16);
    LODWORD(v125) = *MEMORY[0x277CB9600];
    v124 = (v9 + 104);
    v123 = (v9 + 8);
    v119 = (v141 + 8);
    v122 = v141 + 32;
    v32 = v118;
    v127 = v8;
    v33 = v134;
    while (v31 < *(v28 + 16))
    {
      v132 = ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v131 = *(v141 + 72);
      (*(v141 + 16))(v32, &v132[v28 + v131 * v31], v13, v26);
      v34 = v32;
      sub_2483812E0();
      v35 = v13;
      v37 = v135;
      v36 = v136;
      (*v124)(v135, v125, v136);
      v38 = sub_248381310();
      v39 = *v123;
      (*v123)(v37, v36);
      v39(v33, v36);
      if (v38)
      {
        v40 = *v122;
        (*v122)(v130, v34, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = v30;
        v13 = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v34;
        }

        else
        {
          sub_248160124(0, *(v30 + 16) + 1, 1);
          v32 = v118;
          v30 = v142;
        }

        v43 = v131;
        v42 = v132;
        v45 = *(v30 + 16);
        v44 = *(v30 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_248160124(v44 > 1, v45 + 1, 1);
          v32 = v118;
          v30 = v142;
        }

        *(v30 + 16) = v45 + 1;
        v40(&v42[v30 + v45 * v43], v130, v13);
      }

      else
      {
        (*v119)(v34, v35);
        v13 = v35;
        v32 = v34;
      }

      ++v31;
      v28 = v133;
      v8 = v127;
      if (v139 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_13:
  v46 = *(v30 + 16);
  if (v46)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v46, 0);
    v47 = v142;
    v132 = *(v141 + 16);
    v48 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v126 = v30;
    v49 = v30 + v48;
    v50 = *(v141 + 72);
    v51 = (v141 + 8);
    v130 = v140 + 32;
    v131 = v50;
    do
    {
      v52 = v137;
      (v132)(v137, v49, v13);
      sub_2483812D0();
      (*v51)(v52, v13);
      v142 = v47;
      v53 = v8;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      v56 = v47;
      if (v55 >= v54 >> 1)
      {
        sub_248160168(v54 > 1, v55 + 1, 1);
        v56 = v142;
      }

      *(v56 + 16) = v55 + 1;
      (*(v140 + 32))(v56 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v55, v53, v138);
      v49 += v131;
      --v46;
      v47 = v56;
      v8 = v53;
    }

    while (v46);
    v122 = v56;
  }

  else
  {

    v122 = MEMORY[0x277D84F90];
  }

  v57 = MEMORY[0x277D84F90];
  if (v139)
  {
    v58 = 0;
    v130 = v141 + 16;
    LODWORD(v127) = *MEMORY[0x277CB95F0];
    v126 = (v117 + 104);
    v59 = (v117 + 8);
    v123 = (v141 + 8);
    v125 = (v141 + 32);
    v124 = (v117 + 8);
    while (v58 < *(v28 + 16))
    {
      v60 = v57;
      v132 = ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v131 = *(v141 + 72);
      v61 = v128;
      (*(v141 + 16))(v128, &v132[v28 + v131 * v58], v13);
      v62 = v134;
      sub_2483812E0();
      v63 = v13;
      v65 = v135;
      v64 = v136;
      (*v126)(v135, v127, v136);
      v66 = sub_248381310();
      v67 = *v59;
      (*v59)(v65, v64);
      v67(v62, v64);
      if (v66)
      {
        v68 = *v125;
        (*v125)(v129, v61, v63);
        v57 = v60;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v142 = v60;
        v13 = v63;
        if ((v69 & 1) == 0)
        {
          sub_248160124(0, *(v60 + 2) + 1, 1);
          v57 = v142;
        }

        v70 = v132;
        v28 = v133;
        v71 = v131;
        v73 = *(v57 + 16);
        v72 = *(v57 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_248160124(v72 > 1, v73 + 1, 1);
          v57 = v142;
        }

        *(v57 + 16) = v73 + 1;
        (v68)(&v70[v57 + v73 * v71], v129, v13);
        v59 = v124;
      }

      else
      {
        (*v123)(v61, v63);
        v13 = v63;
        v28 = v133;
        v57 = v60;
      }

      if (v139 == ++v58)
      {
        goto LABEL_31;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

LABEL_31:
  v74 = *(v57 + 16);
  if (v74)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v74, 0);
    v75 = v142;
    v132 = *(v141 + 16);
    v76 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v129 = v57;
    v77 = (v57 + v76);
    v78 = *(v141 + 72);
    v79 = (v141 + 8);
    v130 = v140 + 32;
    v131 = v78;
    v80 = v115;
    do
    {
      v81 = v137;
      (v132)(v137, v77, v13);
      sub_2483812D0();
      (*v79)(v81, v13);
      v142 = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      v84 = v75;
      if (v83 >= v82 >> 1)
      {
        sub_248160168(v82 > 1, v83 + 1, 1);
        v84 = v142;
      }

      *(v84 + 16) = v83 + 1;
      (*(v140 + 32))(v84 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v83, v80, v138);
      v77 += v131;
      --v74;
      v75 = v84;
    }

    while (v74);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v85 = MEMORY[0x277D84F90];
  v124 = v75;
  if (v139)
  {
    v86 = 0;
    v128 = (v141 + 16);
    LODWORD(v127) = *MEMORY[0x277CB9610];
    v126 = (v117 + 104);
    v125 = (v117 + 8);
    v123 = (v141 + 8);
    v129 = (v141 + 32);
    v87 = v134;
    while (v86 < *(v28 + 16))
    {
      v131 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v132 = v85;
      v130 = *(v141 + 72);
      v88 = v120;
      (*(v141 + 16))(v120, v28 + v131 + v130 * v86, v13);
      sub_2483812E0();
      v89 = v13;
      v91 = v135;
      v90 = v136;
      (*v126)(v135, v127, v136);
      v92 = sub_248381310();
      v93 = *v125;
      (*v125)(v91, v90);
      v93(v87, v90);
      if (v92)
      {
        v94 = *v129;
        (*v129)(v121, v88, v89);
        v85 = v132;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v142 = v85;
        v13 = v89;
        if ((v95 & 1) == 0)
        {
          sub_248160124(0, *(v85 + 2) + 1, 1);
          v85 = v142;
        }

        v28 = v133;
        v97 = *(v85 + 2);
        v96 = *(v85 + 3);
        if (v97 >= v96 >> 1)
        {
          sub_248160124(v96 > 1, v97 + 1, 1);
          v85 = v142;
        }

        *(v85 + 2) = v97 + 1;
        v94(&v85[v131 + v97 * v130], v121, v89);
        v75 = v124;
      }

      else
      {
        (*v123)(v88, v89);
        v13 = v89;
        v85 = v132;
        v28 = v133;
      }

      if (v139 == ++v86)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_68;
  }

LABEL_49:
  v98 = *(v85 + 2);
  if (v98)
  {
    v142 = MEMORY[0x277D84F90];
    sub_248160168(0, v98, 0);
    v99 = v142;
    v139 = *(v141 + 16);
    v100 = &v85[(*(v141 + 80) + 32) & ~*(v141 + 80)];
    v101 = *(v141 + 72);
    v141 += 16;
    v102 = (v141 - 8);
    v135 = (v140 + 32);
    v136 = v101;
    v103 = v114;
    do
    {
      v104 = v137;
      v139(v137, v100, v13);
      sub_2483812D0();
      (*v102)(v104, v13);
      v142 = v99;
      v106 = *(v99 + 16);
      v105 = *(v99 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_248160168(v105 > 1, v106 + 1, 1);
        v99 = v142;
      }

      *(v99 + 16) = v106 + 1;
      (*(v140 + 32))(v99 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v106, v103, v138);
      v100 += v136;
      --v98;
    }

    while (v98);

    v75 = v124;
  }

  else
  {

    v99 = MEMORY[0x277D84F90];
  }

  v107 = v122;
  if (*(v122 + 16))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v109 = Strong;
      sub_2481601AC(v107);
    }
  }

  if (*(v75 + 16))
  {
    swift_beginAccess();
    v110 = swift_unknownObjectWeakLoadStrong();
    if (v110)
    {
      v111 = v110;
      sub_248309FC8(v75);
    }
  }

  if (*(v99 + 16))
  {
    swift_beginAccess();
    v112 = swift_unknownObjectWeakLoadStrong();
    if (v112)
    {
      v113 = v112;
      sub_248162194(v99);
    }
  }
}

size_t sub_248160124(size_t a1, int64_t a2, char a3)
{
  result = sub_248161FB4(a1, a2, a3, *v3, &qword_27EE93778, &unk_2483A10B0, MEMORY[0x277CB93B0]);
  *v3 = result;
  return result;
}

size_t sub_248160168(size_t a1, int64_t a2, char a3)
{
  result = sub_248161FB4(a1, a2, a3, *v3, &qword_27EE93760, &unk_2483A1098, MEMORY[0x277CB92E0]);
  *v3 = result;
  return result;
}

uint64_t sub_2481601AC(uint64_t a1)
{
  v59 = sub_2483812C0();
  v2 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_248160784();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_248382A80();
  v16 = sub_248383DC0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v9;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&dword_248146000, v15, v16, "Received active %ld activity descriptors", v18, 0xCu);
    v19 = v18;
    v9 = v17;
    MEMORY[0x24C1CD5F0](v19, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  v20 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  v21 = v57;
  swift_beginAccess();
  v56 = v20;
  v22 = *(v21 + v20);
  v23 = v59;
  v54 = *(a1 + 16);
  if (v54)
  {
    v25 = *(v2 + 16);
    v24 = v2 + 16;
    v55 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v53 = a1 + v55;
    v60 = *(v24 + 56);
    v61 = v25;
    v26 = (v24 - 8);
    v62 = v24;
    v50 = v22;
    v51 = (v24 + 16);

    v27 = 0;
    while (2)
    {
      v28 = v53 + v60 * v27;
      v58 = v27 + 1;
      v29 = v9;
      v61(v9, v28, v23);
      v30 = *(v57 + v56);
      v31 = *(v30 + 16);
      v32 = v30 + v55;

      v34 = -v31;
      v35 = -1;
      while (v34 + v35 != -1)
      {
        if (++v35 >= *(v30 + 16))
        {
          __break(1u);
          return result;
        }

        v61(v6, v32, v23);
        v38 = sub_2483812A0();
        v40 = v39;
        if (v38 == sub_2483812A0() && v40 == v41)
        {

          v37 = *v26;
          v23 = v59;
          (*v26)(v6, v59);
LABEL_6:

          v9 = v29;
          v27 = v58;
          v37(v9, v23);
          goto LABEL_7;
        }

        v32 += v60;
        v36 = sub_248384680();

        v37 = *v26;
        v23 = v59;
        result = (*v26)(v6, v59);
        if (v36)
        {
          goto LABEL_6;
        }
      }

      v9 = v29;
      v61(v52, v29, v23);
      v43 = v56;
      v42 = v57;
      swift_beginAccess();
      v44 = *(v42 + v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + v43) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_24830AA40(0, *(v44 + 2) + 1, 1, v44);
        *(v57 + v56) = v44;
      }

      v27 = v58;
      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v44 = sub_24830AA40(v46 > 1, v47 + 1, 1, v44);
      }

      *(v44 + 2) = v47 + 1;
      (*v51)(&v44[v55 + v47 * v60], v52, v23);
      *(v57 + v56) = v44;
      swift_endAccess();
      (*v26)(v9, v23);
LABEL_7:
      if (v27 != v54)
      {
        continue;
      }

      break;
    }

    v22 = v50;
  }

  else
  {
  }

  v49 = sub_24830A82C(v48, v22);

  if ((v49 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *v57) + 0x148))(result);
  }

  return result;
}

uint64_t sub_2481607A8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_2483812C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_248160B4C(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_24830ADC4(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_248160B4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_2483812C0() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_248160C38()
{
  v1 = v0;
  v76 = sub_2483813B0();
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2483812C0();
  v89 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v90 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v69 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v77 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled);
  v21 = sub_248160784();
  v22 = v12;
  v25 = *(v12 + 16);
  v24 = v12 + 16;
  v23 = v25;
  if (v20 == 1)
  {
    v86 = v24;
    v87 = v21;
    v85 = v23;
    (v23)(v19);
    v26 = sub_248382A80();
    v27 = sub_248383DC0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v8;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_248146000, v26, v27, "Updating active descriptor list", v29, 2u);
      v30 = v29;
      v8 = v28;
      MEMORY[0x24C1CD5F0](v30, -1, -1);
    }

    v31 = *(v22 + 8);
    v88 = v22 + 8;
    v84 = v31;
    v32 = (v31)(v19, v11);
    v33 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
    v69 = v1;
    v34 = v33(v32);
    v36 = v90;
    v37 = v77;
    v83 = *(v34 + 16);
    v91 = v3;
    if (v83)
    {
      v38 = 0;
      v81 = v89 + 16;
      v72 = v80 + 1;
      *&v35 = 136315394;
      v71 = v35;
      v80 = (v89 + 8);
      v79 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73 = v11;
      v82 = v10;
      v70 = v8;
      while (v38 < *(v34 + 16))
      {
        v40 = *(v89 + 16);
        v40(v10, v34 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v38, v3);
        v85(v37, v87, v11);
        v40(v8, v10, v3);
        v40(v36, v10, v3);
        v41 = sub_248382A80();
        v42 = v8;
        v43 = sub_248383DC0();
        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v92[0] = v78;
          *v44 = v71;
          v45 = v42;
          v46 = sub_2483812A0();
          v48 = v47;
          v39 = *v80;
          (*v80)(v45, v91);
          v49 = sub_24814A378(v46, v48, v92);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          v50 = v34;
          v51 = v75;
          sub_2483812B0();
          v52 = sub_2483813A0();
          v54 = v53;
          v55 = v51;
          v34 = v50;
          (*v72)(v55, v76);
          v39(v90, v91);
          v56 = sub_24814A378(v52, v54, v92);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_248146000, v41, v43, "Descriptor id: %s, requester: %s", v44, 0x16u);
          v57 = v78;
          swift_arrayDestroy();
          v3 = v91;
          v11 = v73;
          MEMORY[0x24C1CD5F0](v57, -1, -1);
          v58 = v44;
          v36 = v90;
          MEMORY[0x24C1CD5F0](v58, -1, -1);

          v37 = v77;
          v84(v77, v11);
          v8 = v70;
        }

        else
        {

          v8 = v42;
          v39 = *v80;
          (*v80)(v36, v3);
          v39(v8, v3);
          v84(v37, v11);
        }

        ++v38;
        v10 = v82;
        v39(v82, v3);
        if (v83 == v38)
        {
          goto LABEL_14;
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    else
    {
LABEL_14:
      v63 = [*(v69 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8);
      v37 = sub_248383B10();

      v74 = v34;
      if (!(v37 >> 62))
      {
        v64 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v64)
        {
LABEL_30:
        }

LABEL_16:
        v65 = 0;
        while (1)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x24C1CBA50](v65, v37);
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v65 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v66 = *(v37 + 8 * v65 + 32);
            swift_unknownObjectRetain();
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          if ([v66 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v68 = sub_248383B00();
            [v66 didUpdateLiveActivitiesWithActivityDescriptors_];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v65;
          if (v67 == v64)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v64 = sub_248384360();
    if (!v64)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v23(v15, v21, v11);
  v59 = sub_248382A80();
  v60 = sub_248383DC0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_248146000, v59, v60, "Live activities disabled, dismissing all", v61, 2u);
    MEMORY[0x24C1CD5F0](v61, -1, -1);
  }

  return (*(v22 + 8))(v15, v11);
}

uint64_t sub_2481614D0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_248384680() & 1;
  }
}

size_t sub_248161FB4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

int64_t sub_2481621C8(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v6 = v4;
  v8 = sub_2483812C0();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_248160784();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;

  v17 = sub_248382A80();
  v18 = sub_248383DC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a2;
    v20 = v19;
    *v19 = 134217984;
    *(v19 + 4) = *(v16 + 16);

    _os_log_impl(&dword_248146000, v17, v18, v37, v20, 0xCu);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  else
  {
  }

  v21 = (*(v12 + 8))(v14, v11);
  v22 = *(v16 + 16);
  if (!v22)
  {
    return (*((*MEMORY[0x277D85000] & *v6) + 0x148))(v21);
  }

  v23 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  v24 = *(v40 + 16);
  v36 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers;
  v37 = v24;
  v25 = v16 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v26 = *(v40 + 72);
  v40 += 16;
  v34 = (v40 - 8);
  v35 = v26;
  while (1)
  {
    v27 = (v37)(v10, v25, v8);
    MEMORY[0x28223BE20](v27);
    *(&v33 - 2) = v10;
    swift_beginAccess();
    result = sub_2481607A8(v39, (&v33 - 4));
    v29 = *(*(v6 + v23) + 16);
    if (v29 < result)
    {
      break;
    }

    sub_248162690(result, v29);
    swift_endAccess();
    v30 = [*(v6 + v36) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8);
    v31 = sub_248383B10();

    MEMORY[0x28223BE20](v32);
    *(&v33 - 2) = v10;
    sub_248162898(v38, (&v33 - 4), v31);

    v21 = (*v34)(v10, v8);
    v25 += v35;
    if (!--v22)
    {
      return (*((*MEMORY[0x277D85000] & *v6) + 0x148))(v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481625F8()
{
  v0 = sub_2483812A0();
  v2 = v1;
  if (v0 == sub_2483812A0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

unint64_t sub_248162690(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24830AA40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_248162750(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_248162750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_2483812C0();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_248162898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1CBA50](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_248384360();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2481629DC(id *a1)
{
  v1 = *a1;
  result = [*a1 respondsToSelector_];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_2483812A0();
    v3 = sub_248383930();
    [v1 didDismissLiveActivityWithActivityIdentifier_];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2481630A8(void *a1)
{
  v3 = sub_2483813B0();
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v86 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v80 - v10;
  v12 = sub_2483812C0();
  v93 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v91 = (&v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v80 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v23);
  if (a1)
  {
    v82 = v3;
    v85 = v11;
    v88 = &v80 - v26;
    v92 = v12;
    v27 = [a1 activityIdentifier];
    v28 = sub_248383960();
    v30 = v29;

    if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled) == 1)
    {
      v83 = v19;
      v84 = v5;
      v81 = v6;
      v31 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
      v80 = v1;
      result = v31();
      v32 = result;
      v33 = *(result + 16);
      v35 = v92;
      v34 = v93;
      if (v33)
      {
        v36 = 0;
        v37 = (v93 + 8);
        while (v36 < *(v32 + 16))
        {
          (*(v34 + 16))(v21, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, v35);
          if (sub_2483812A0() == v28 && v38 == v30)
          {

LABEL_16:

            v34 = v93;
            v44 = v88;
            (*(v93 + 32))(v88, v21, v35);
            v40 = 0;
            v42 = v83;
            v41 = v84;
            v43 = v81;
            goto LABEL_17;
          }

          v39 = sub_248384680();

          if (v39)
          {

            v35 = v92;
            goto LABEL_16;
          }

          ++v36;
          v35 = v92;
          result = (*v37)(v21, v92);
          v34 = v93;
          if (v33 == v36)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_10:

        v40 = 1;
        v42 = v83;
        v41 = v84;
        v43 = v81;
        v44 = v88;
LABEL_17:
        v50 = v90;
        v49 = v91;
        v51 = v89;
        (*(v34 + 56))(v44, v40, 1, v35);
        sub_248232C78(v44, v51, &qword_27EE936F0);
        if ((*(v34 + 48))(v51, 1, v35) == 1)
        {
          sub_24822D578(v44, &qword_27EE936F0);
          return sub_24822D578(v51, &qword_27EE936F0);
        }

        else
        {
          (*(v34 + 32))(v42, v51, v35);
          v52 = sub_248160784();
          v53 = v85;
          (*(v43 + 16))(v85, v52, v41);
          v54 = v34;
          v55 = *(v34 + 16);
          v55(v50, v42, v35);
          v55(v49, v42, v35);
          v56 = sub_248382A80();
          v57 = sub_248383DC0();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v94[0] = v93;
            *v58 = 136315394;
            LODWORD(v92) = v57;
            v59 = sub_2483812A0();
            v60 = v35;
            v61 = v49;
            v63 = v62;
            v91 = v56;
            v64 = *(v54 + 8);
            v64(v50, v60);
            v65 = sub_24814A378(v59, v63, v94);

            *(v58 + 4) = v65;
            *(v58 + 12) = 2080;
            v66 = v86;
            sub_2483812B0();
            v67 = sub_2483813A0();
            v69 = v68;
            (*(v87 + 8))(v66, v82);
            v70 = v61;
            v35 = v60;
            v64(v70, v60);
            v71 = v64;
            v72 = sub_24814A378(v67, v69, v94);

            *(v58 + 14) = v72;
            v73 = v91;
            _os_log_impl(&dword_248146000, v91, v92, "Alert descriptor id: %s, requester: %s", v58, 0x16u);
            v74 = v93;
            swift_arrayDestroy();
            MEMORY[0x24C1CD5F0](v74, -1, -1);
            MEMORY[0x24C1CD5F0](v58, -1, -1);

            (*(v43 + 8))(v85, v84);
          }

          else
          {

            v75 = *(v54 + 8);
            v75(v49, v35);
            v75(v50, v35);
            v71 = v75;
            (*(v43 + 8))(v53, v84);
          }

          v76 = [*(v80 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8);
          v77 = sub_248383B10();

          MEMORY[0x28223BE20](v78);
          v79 = v83;
          *(&v80 - 2) = v83;
          sub_248162898(sub_24830B258, (&v80 - 4), v77);

          sub_24822D578(v88, &qword_27EE936F0);
          return v71(v79, v35);
        }
      }
    }

    else
    {

      v45 = sub_248160784();
      (*(v6 + 16))(v9, v45, v5);
      v46 = sub_248382A80();
      v47 = sub_248383DC0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_248146000, v46, v47, "Live activities disabled, will not present alert", v48, 2u);
        MEMORY[0x24C1CD5F0](v48, -1, -1);
      }

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void *sub_248163A60(void *result)
{
  if (result)
  {
    v2 = [result activityIdentifier];
    v10 = sub_248383960();

    v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8);
    v4 = sub_248383B10();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x24C1CBA50](v6, v4);
          v7 = result;
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
            return result;
          }

LABEL_10:
          if ([v7 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v9 = sub_248383930();
            [v7 didDismissAlertingLiveActivityWithActivityIdentifier_];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v6;
          if (v8 == v5)
          {
            goto LABEL_18;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v5 = sub_248384360();
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v7 = *(v4 + 8 * v6 + 32);
      result = swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
  }

  return result;
}

void sub_248163D50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (([Strong _invalidated] & 1) == 0)
    {
      sub_248383DC0();
      v2 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_24839C7F0;
      *(v3 + 56) = type metadata accessor for _DBFocusAssertion();
      *(v3 + 64) = sub_24814FBD0(&qword_27EE915D8, v4, type metadata accessor for _DBFocusAssertion);
      *(v3 + 32) = v0;
      v5 = v2;
      v6 = v0;
      sub_248382A40();

      sub_248150140(0, 0.0, 0.0, 0.0, 0.0);
    }
  }
}

uint64_t sub_2481643FC()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164434()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24816446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FA00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_248164534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FA00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_248164600()
{
  sub_248383150();
  sub_248232288();
  return swift_getWitnessTable();
}

uint64_t sub_248164670()
{
  v1 = sub_2483830F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248164738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2481647A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24816481C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164854()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24816489C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2481648E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_248164974@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_248164990()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481649C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164A00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164A38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248164A70()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248164AC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164AFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164B34()
{
  v1 = sub_248381EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_248164C10()
{
  v1 = sub_2483824B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248164CD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164D14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248164D88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164DC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248164E00()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_248164E78()
{
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_248164EE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248164F34()
{
  v1 = sub_2483815D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_248164FF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248165084()
{
  v1 = sub_2483815D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24816510C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165144()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24816517C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481651C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816520C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816527C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481652B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248165358()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165390()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165400()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165438()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165478()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481654B0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481654EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165568()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481655A0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481655D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248165618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165650()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_248165728()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2481657EC()
{
  v1 = sub_248381DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  v5 = (v3 + 64) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2481658C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481658F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165934()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816596C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165A9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_248381170();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_248165BBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165C0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165C70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165CB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D08()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D5C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248165D94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165DCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165E3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248165E9C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248165EE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248165F24()
{
  v1 = sub_248381170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248166020()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24816616C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2481661C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481661FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166234()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816626C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481662A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2481662EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2481663EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166608()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166648()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166684()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481666CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166704()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816674C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816678C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481667C4()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481667FC()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166834()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166870()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481668AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166900()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248166940()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816698C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2481669CC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166A1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166A8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166ACC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_248166B34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248166BAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166BE4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248166C74()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166CAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166CEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166D24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166D64()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248166DB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166E18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166E50()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248166EA4()
{
  v1 = sub_2483820C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248166F2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166F64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248166F9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248166FD4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24816701C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24816705C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167094()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481670E4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167130()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167168()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_2481671BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2481671F0()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167270()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2481672CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167314()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167354()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24816738C()
{
  MEMORY[0x24C1CD720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481673E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167420()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481674A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481674E0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248167530()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248167570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2481675A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248167618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248167680()
{

  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481676F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167758()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248167790()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2481677F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248167864(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_248167874(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248167894(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2481678C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2481678E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_248167910(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_248168D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248168FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481691BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248169664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24816A138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24816A7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal = result;
  return result;
}

void __DBSaveScreenshotToLibrary_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD97D0] creationRequestForAssetFromScreenshotImage:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 placeholderForCreatedAsset];
    if (v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    }
  }

  else
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __DBSaveScreenshotToLibrary_block_invoke_cold_1(v5);
    }
  }
}

void __DBSaveScreenshotToLibrary_block_invoke_255(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DBLogForCategory(0);
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __DBSaveScreenshotToLibrary_block_invoke_255_cold_1(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Saved screenshot to photos library with identifiers %@", &v9, 0xCu);
  }
}

void *DBAirPlayCornerMaskImageData(int a1, double a2, double a3)
{
  if (a1)
  {
    v5 = @"ClusterCornerMaskOverrideImage";
  }

  else
  {
    v5 = @"CornerMaskOverrideImage";
  }

  v6 = CFPreferencesCopyAppValue(v5, @"com.apple.carplay.internal");
  CFPreferencesSetAppValue(v5, 0, @"com.apple.carplay.internal");
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v10];
    v12 = DBLogForCategory(0);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Using corner mask image specified by test app!", buf, 2u);
      }

      v14 = v10;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      DBAirPlayCornerMaskImageData_cold_1(v13);
    }
  }

  v15 = ceil(a2 * 1.528665);
  v16 = a2 * a3;
  v17 = v15 * a3;
  v18 = DBLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Generating corner mask image to send to accessory.", v23, 2u);
  }

  v19 = [MEMORY[0x277D75348] blackColor];
  v11 = DBGenerateUpperLeftCornerImage(v19, 1, v17, v16);

  v14 = UIImagePNGRepresentation(v11);
LABEL_20:
  v20 = v14;

  v21 = v20;
  return v20;
}

void sub_248174344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t DBSystemAppMain(int a1, char **a2)
{
  v4 = FBSystemShellInitialize();

  return UIApplicationMain(a1, a2, &cfstr_Dashboard_4.isa, &cfstr_Dashboard_4.isa);
}

void sub_24817AE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ResetCarPlayUSB()
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!ServiceWithPrimaryPort)
  {
    ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  }

  connect = 0;
  v1 = IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect);
  v2 = DBLogForCategory(0);
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ResetCarPlayUSB_cold_1(v1);
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "Request sent by DBDashboard to disable USB.", buf, 2u);
    }

    v4 = IOAccessoryManagerConfigureUSBMode();
    v5 = DBLogForCategory(0);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ResetCarPlayUSB_cold_2(v4);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "Configured USB Mode to disabled", v14, 2u);
      }

      v7 = IOAccessoryManagerConfigurePower();
      if (v7)
      {
        v8 = v7;
        v6 = DBLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          ResetCarPlayUSB_cold_3(v8);
        }
      }

      else
      {
        usleep(0x1312D0u);
        v9 = IOAccessoryManagerConfigurePower();
        if (v9)
        {
          v10 = v9;
          v6 = DBLogForCategory(0);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            ResetCarPlayUSB_cold_4(v10);
          }
        }

        else
        {
          v11 = IOAccessoryManagerConfigureUSBMode();
          v12 = DBLogForCategory(0);
          v6 = v12;
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              ResetCarPlayUSB_cold_5(v11);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "USB Mode has been reset to Device Mode type via DBDashboard", v13, 2u);
          }
        }
      }
    }

    IOServiceClose(connect);
  }
}

void sub_248181938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248182308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248182748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248186730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248186A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248186E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248187198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481879F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24818C3F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24818E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_248191CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 96));
  _Unwind_Resume(a1);
}

void sub_2481924B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_0()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_0 = result;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

__CFString *DBDescriptionForLaunchSource(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Default";
  }

  else
  {
    return off_278F026E0[a1 - 1];
  }
}

void sub_24819625C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481984B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24819A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24819BC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24819BEEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_24819C46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24819D8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24819DB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24819F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481A79E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2481AB4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481ADA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481AF4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCharacteristicState(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Initialization";
  }

  else
  {
    return off_278F02ED8[a1 - 1];
  }
}

void sub_2481B0AA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2481B1138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481B35F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SetupAssistantFinished(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SetupAssistantFinished_block_invoke;
  block[3] = &unk_278F01580;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void BezierCurveStructRelinquish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void PathPointStructRelinquish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void sub_2481B9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromStatusBarLayout(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Classic";
  }

  else
  {
    return off_278F03060[a1 - 1];
  }
}

uint64_t __DBLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.CarPlayApp", "Default");
  v1 = DBLogForCategory_logObjects[0];
  DBLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.CarPlayApp", "Applications");
  v3 = qword_28150E428;
  qword_28150E428 = v2;

  v4 = os_log_create("com.apple.CarPlayApp", "Dashboard");
  v5 = qword_28150E430;
  qword_28150E430 = v4;

  v6 = os_log_create("com.apple.CarPlayApp", "Siri");
  v7 = qword_28150E438;
  qword_28150E438 = v6;

  v8 = os_log_create("com.apple.CarPlayApp", "Dock");
  v9 = qword_28150E440;
  qword_28150E440 = v8;

  v10 = os_log_create("com.apple.CarPlayApp", "Focus");
  v11 = qword_28150E448;
  qword_28150E448 = v10;

  v12 = os_log_create("com.apple.CarPlayApp", "StatusBar");
  v13 = qword_28150E450;
  qword_28150E450 = v12;

  v14 = os_log_create("com.apple.CarPlayApp", "TemplateUIHostApp");
  v15 = qword_28150E458;
  qword_28150E458 = v14;

  v16 = os_log_create("com.apple.CarPlayApp", "Workspace");
  v17 = qword_28150E460;
  qword_28150E460 = v16;

  v18 = os_log_create("com.apple.CarPlayApp", "SmartWidget");
  v19 = qword_28150E468;
  qword_28150E468 = v18;

  v20 = os_log_create("com.apple.CarPlayApp", "InstrumentCluster");
  v21 = qword_28150E470;
  qword_28150E470 = v20;

  v22 = os_log_create("com.apple.CarPlayApp", "SplashScreen");
  v23 = qword_28150E478;
  qword_28150E478 = v22;

  v24 = os_log_create("com.apple.CarPlayApp", "MediaPlayer");
  v25 = qword_28150E480;
  qword_28150E480 = v24;

  v26 = os_log_create("com.apple.CarPlayApp", "Analytics");
  v27 = qword_28150E488;
  qword_28150E488 = v26;

  v28 = os_log_create("com.apple.CarPlayApp", "Diagnostics");
  v29 = qword_28150E490;
  qword_28150E490 = v28;

  v30 = os_log_create("com.apple.CarPlayApp", "TelemetrySignposts");
  v31 = qword_28150E498;
  qword_28150E498 = v30;

  v32 = os_log_create("com.apple.CarPlayApp", "IconBadging");
  v33 = qword_28150E4A0;
  qword_28150E4A0 = v32;

  v34 = os_log_create("com.apple.CarPlayApp", "Icons");
  v35 = qword_28150E4A8;
  qword_28150E4A8 = v34;

  v36 = os_log_create("com.apple.CarPlayApp", "SynchronizedAnimations");
  v37 = qword_28150E4B0;
  qword_28150E4B0 = v36;

  v38 = os_log_create("com.apple.CarPlayApp", "Appearance");
  v39 = qword_28150E4B8;
  qword_28150E4B8 = v38;

  v40 = os_log_create("com.apple.CarPlayApp", "Notification");
  v41 = qword_28150E4C0;
  qword_28150E4C0 = v40;

  v42 = os_log_create("com.apple.CarPlayApp", "UISync");
  v43 = qword_28150E4C8;
  qword_28150E4C8 = v42;

  v44 = os_log_create("com.apple.CarPlayApp", "LayerMetadataService");
  v45 = qword_28150E4F0;
  qword_28150E4F0 = v44;

  v46 = os_log_create("com.apple.CarPlayApp", "Navigation");
  v47 = qword_28150E4D0;
  qword_28150E4D0 = v46;

  v48 = os_log_create("com.apple.CarPlayApp", "PassengerDisplay");
  v49 = qword_28150E4D8;
  qword_28150E4D8 = v48;

  v50 = os_log_create("com.apple.CarPlayApp", "CarCamera");
  v51 = qword_28150E4E0;
  qword_28150E4E0 = v50;

  v52 = os_log_create("com.apple.CarPlayApp", "AppLink");
  v53 = qword_28150E500;
  qword_28150E500 = v52;

  v54 = os_log_create("com.apple.CarPlayApp", "Widgets");
  v55 = qword_28150E4E8;
  qword_28150E4E8 = v54;

  v56 = os_log_create("com.apple.CarPlayApp", "DisplayScale");
  v57 = qword_28150E4F8;
  qword_28150E4F8 = v56;

  v58 = os_log_create("com.apple.CarPlayApp", "Session");
  v59 = qword_28150E508;
  qword_28150E508 = v58;

  return MEMORY[0x2821F96F8](v58, v59);
}

void _showDisclaimerCallback(uint64_t a1, void *a2)
{
  v3 = DBLogForCategory(0xAuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Request made to show disclaimer label", v5, 2u);
  }

  v4 = a2;
  if (v4 && CRIsInternalInstall())
  {
    [v4 _createDisclaimerLabel];
  }
}

uint64_t __DBIsInternalInstall_block_invoke_1()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_1 = result;
  return result;
}

uint64_t _pressesContainEvent(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] == 4)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_2481C0964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C29D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_2481C2FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C32F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C3A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C4708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C53E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481C5D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481C95AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481CAA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DBStringFromDashboardViewState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"--";
  }

  else
  {
    return off_278F03720[a1];
  }
}

void sub_2481D55C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481D7768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481D7D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _appDockRefreshAppsCallBack(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _refreshAppDock];
  }

  return result;
}

void sub_2481DC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DC948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481DF3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E40F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E48B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481E5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_2()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_2 = result;
  return result;
}

void sub_2481E9C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 176));
  _Unwind_Resume(a1);
}

void sub_2481EA7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 208));
  _Unwind_Resume(a1);
}

uint64_t _appLibraryRefreshCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _handleAppLibraryRefresh];
  }

  return result;
}

void sub_2481F0028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481F483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromDoorState(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        v2 = @"SMARTWIDGET_GARGAGEDOOR_CLOSED";
      }

      else
      {
        v2 = @"SMARTWIDGET_GARGAGEDOOR_OPENING";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_CLOSING";
          break;
        case 4:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_STOPPED";
          break;
        case 100:
          v2 = @"SMARTWIDGET_GARGAGEDOOR_OBSTRUCTED";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= -3)
  {
    if (a1 == -4)
    {
      v2 = @"SMARTWIDGET_GARGAGEDOOR_UPDATEREQUIRED";
    }

    else
    {
      if (a1 != -3)
      {
        goto LABEL_23;
      }

      v2 = @"SMARTWIDGET_GARGAGEDOOR_ERROR";
    }
  }

  else if (a1 == -2)
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_UNREACHABLE";
  }

  else if (a1 == -1)
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_UNKNOWN";
  }

  else
  {
    v2 = @"SMARTWIDGET_GARGAGEDOOR_OPEN";
  }

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v1 = [v3 localizedStringForKey:v2 value:&stru_285A57218 table:@"CarPlayApp"];

LABEL_23:

  return v1;
}

void sub_2481F8710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2481FD808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2481FDDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DBWiFiManagerClientServerRestartedCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 analyticsQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __DBWiFiManagerClientServerRestartedCallback_block_invoke;
  v5[3] = &unk_278F01580;
  v6 = v2;
  v4 = v2;
  [v3 addOperationWithBlock:v5];
}

void sub_248202518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24820C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24820D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_24820E0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DBDescriptionForLockOutMode(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_278F04218[a1];
  }

  return v2;
}

void sub_248210280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24821253C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromDBThermalLevel(uint64_t a1)
{
  if ((a1 + 2) >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", a1];
  }

  else
  {
    v2 = off_278F04550[a1 + 2];
  }

  return v2;
}

void sub_248217DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24821D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24821E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DBIsInternalInstall_block_invoke_3()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_3 = result;
  return result;
}

void sub_248224B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248227FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DBAssetLibrary.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBAssetLibrary.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

void sub_2482284FC(void **a1, char a2)
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

id sub_24822857C()
{
  result = [objc_allocWithZone(type metadata accessor for DBAssetLibrary()) init];
  static DBAssetLibrary.shared = result;
  return result;
}

uint64_t *DBAssetLibrary.shared.unsafeMutableAddressor()
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  return &static DBAssetLibrary.shared;
}

id static DBAssetLibrary.shared.getter()
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DBAssetLibrary.shared;

  return v0;
}

void static DBAssetLibrary.shared.setter(uint64_t a1)
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DBAssetLibrary.shared;
  static DBAssetLibrary.shared = a1;
}

uint64_t (*static DBAssetLibrary.shared.modify())()
{
  if (qword_27EE948D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *DBAssetLibrary.session.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAssetLibrary.session.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_248228A0C();
}

void *sub_248228A0C()
{
  v1 = v0;
  v183 = sub_2483815A0();
  v179 = *(v183 - 8);
  v2 = MEMORY[0x28223BE20](v183);
  v181 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v174 = &v153 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8B0);
  MEMORY[0x28223BE20](v10 - 8);
  v176 = (&v153 - v11);
  v164 = sub_248381570();
  v167 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_248381590();
  v165 = *(v166 - 8);
  v13 = MEMORY[0x28223BE20](v166);
  v15 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v168 = &v153 - v17;
  v18 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))(v16);
  if (!result)
  {
    return result;
  }

  result = sub_248381510();
  if (!result)
  {
    return result;
  }

  v20 = result;
  sub_248381480();

  v21 = (*(v165 + 32))(v168, v15, v166);
  v22 = *((*v18 & *v1) + 0xD0);
  v158 = v1;
  v23 = v22(v21);
  if (!v23)
  {
    return (*(v165 + 8))(v168, v166);
  }

  v24 = v23;
  v25 = [v23 configuration];

  v26 = [v25 displays];
  sub_24814FB28(0, &qword_27EE8F8F0);
  v27 = sub_248383B10();

  if (v27 >> 62)
  {
    goto LABEL_39;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v8; v28; i = v8)
  {
    v29 = 0;
    v172 = v27 & 0xFFFFFFFFFFFFFF8;
    v173 = v27 & 0xC000000000000001;
    v171 = (v27 + 32);
    v30 = MEMORY[0x277D84F90];
    v170 = v27;
    v169 = v28;
    while (1)
    {
      if (v173)
      {
        v31 = MEMORY[0x24C1CBA50](v29, v27);
      }

      else
      {
        if (v29 >= *(v172 + 16))
        {
          goto LABEL_38;
        }

        v31 = *&v171[8 * v29];
      }

      v8 = v31;
      v32 = __OFADD__(v29, 1);
      v33 = (v29 + 1);
      if (v32)
      {
        break;
      }

      v34 = [v31 oemPunchThroughs];
      sub_24814FB28(0, &qword_27EE8F8F8);
      v35 = sub_248383B10();

      if (v35 >> 62)
      {
        v36 = sub_248384360();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v175 = v8;
      v178 = v33;
      v180 = v30;
      if (v36)
      {
        v184 = v35 & 0xC000000000000001;
        v37 = v35 & 0xFFFFFFFFFFFFFF8;
        v8 = 4;
        v38 = MEMORY[0x277D84F90];
        while (1)
        {
          v39 = v8 - 4;
          if (v184)
          {
            v40 = MEMORY[0x24C1CBA50](v8 - 4, v35);
          }

          else
          {
            if (v39 >= *(v37 + 16))
            {
              goto LABEL_36;
            }

            v40 = *(v35 + 8 * v8);
          }

          v41 = v40;
          v27 = v8 - 3;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v42 = v35;
          v43 = [v40 identifier];
          v44 = sub_248383960();
          v46 = v45;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_24822B3C4(0, *(v38 + 2) + 1, 1, v38);
          }

          v48 = *(v38 + 2);
          v47 = *(v38 + 3);
          if (v48 >= v47 >> 1)
          {
            v38 = sub_24822B3C4((v47 > 1), v48 + 1, 1, v38);
          }

          *(v38 + 2) = v48 + 1;
          v49 = &v38[16 * v48];
          *(v49 + 4) = v44;
          *(v49 + 5) = v46;
          ++v8;
          v35 = v42;
          if (v27 == v36)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        break;
      }

      v38 = MEMORY[0x277D84F90];
LABEL_27:

      v30 = v180;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_24822B290(0, v30[2] + 1, 1, v30);
      }

      v51 = v30[2];
      v50 = v30[3];
      if (v51 >= v50 >> 1)
      {
        v30 = sub_24822B290((v50 > 1), v51 + 1, 1, v30);
      }

      v30[2] = v51 + 1;
      v30[v51 + 4] = v38;
      v29 = v178;
      v27 = v170;
      if (v178 == v169)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v28 = sub_248384360();
  }

  v30 = MEMORY[0x277D84F90];
LABEL_41:

  v185[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390);
  sub_24822D648(&qword_27EE8F900, &qword_27EE94390);
  sub_24822D648(&qword_27EE8F868, &unk_27EE93AB0);
  v52 = sub_248383AB0();

  if (!v52)
  {
    return (*(v165 + 8))(v168, v166);
  }

  v154 = v52;
  sub_248383DC0();
  v53 = sub_24814FB80();
  v54 = *v53;
  v55 = MEMORY[0x277D84F90];
  sub_248382A40();

  v56 = sub_24822CB74(v55);
  v57 = sub_24822CC78(v55);
  v58 = sub_248381560();
  v59 = v58;
  v60 = *(v58 + 16);
  if (!v60)
  {

    v62 = v158;
    goto LABEL_103;
  }

  v162 = v57;
  v153 = v53;
  v61 = 0;
  v161 = v58 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v160 = v167 + 16;
  v178 = (v179 + 16);
  v172 = v179 + 40;
  v173 = v179 + 32;
  v159 = (v167 + 8);
  v62 = v158;
  v63 = v164;
  v64 = v163;
  v156 = v58;
  v155 = v60;
  while (1)
  {
    if (v61 >= *(v59 + 16))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    (*(v167 + 16))(v64, v161 + *(v167 + 72) * v61, v63);
    v65 = sub_248338A8C();
    if (v66)
    {
      break;
    }

    (*v159)(v64, v63);
LABEL_45:
    if (++v61 == v60)
    {
      goto LABEL_102;
    }
  }

  v67 = v65;
  v68 = v66;
  v69 = sub_248381580();
  if (!v69)
  {
    (*v159)(v64, v63);

    goto LABEL_45;
  }

  v70 = *(v69 + 2);
  v175 = v69;
  if (v70)
  {
    v71 = v69;
    v169 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
    v72 = swift_allocObject();
    v73 = _swift_stdlib_malloc_size(v72);
    v74 = v73 - 32;
    if (v73 < 32)
    {
      v74 = v73 - 17;
    }

    v72[2] = v70;
    v72[3] = 2 * (v74 >> 4);
    v75 = v72;
    v184 = sub_24822CA1C(v185, v72 + 4, v70, v71);
    v180 = v185[3];

    sub_248167908();
    if (v184 == v70)
    {
      v56 = v169;
      goto LABEL_56;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

  v75 = MEMORY[0x277D84F90];
LABEL_56:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v185[0] = v56;
  v77 = sub_24822B8A0(v67, v68);
  v79 = v56[2];
  v80 = (v78 & 1) == 0;
  v32 = __OFADD__(v79, v80);
  v81 = v79 + v80;
  if (v32)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v82 = v78;
  if (v56[3] >= v81)
  {
    v56 = &qword_27EE8F8D0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v139 = v77;
      sub_24822C780();
      v77 = v139;
    }
  }

  else
  {
    sub_24822BC98(v81, isUniquelyReferenced_nonNull_native);
    v77 = sub_24822B8A0(v67, v68);
    v56 = &qword_27EE8F8D0;
    if ((v82 & 1) != (v83 & 1))
    {
      goto LABEL_114;
    }
  }

  v84 = v185[0];
  v169 = v185[0];
  v157 = v61;
  if (v82)
  {
    *(*(v185[0] + 56) + 8 * v77) = v75;
  }

  else
  {
    *(v185[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
    v85 = (v84[6] + 16 * v77);
    *v85 = v67;
    v85[1] = v68;
    *(v84[7] + 8 * v77) = v75;
    v86 = v84[2];
    v32 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v32)
    {
      goto LABEL_113;
    }

    v84[2] = v87;
  }

  v88 = v162;

  v62 = swift_isUniquelyReferenced_nonNull_native();
  v185[0] = v88;
  v89 = *(v175 + 8);
  v171 = v175 + 64;
  v90 = 1 << v175[32];
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & v89;
  v170 = (v90 + 63) >> 6;

  v93 = 0;
  v94 = v173;
  while (2)
  {
    v184 = v88;
    LODWORD(v180) = v62;
    if (v92)
    {
      v95 = v93;
LABEL_81:
      v98 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v99 = v98 | (v95 << 6);
      v100 = v174;
      v101 = (*(v175 + 6) + 16 * v99);
      v103 = *v101;
      v102 = v101[1];
      v104 = v179;
      v105 = v183;
      (*(v179 + 16))(v174, *(v175 + 7) + *(v179 + 72) * v99, v183);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0);
      v107 = *(v106 + 48);
      v108 = v177;
      *v177 = v103;
      *(v108 + 1) = v102;
      v109 = v100;
      v94 = v173;
      (*(v104 + 32))(&v108[v107], v109, v105);
      (*(*(v106 - 8) + 56))(v108, 0, 1, v106);

      v97 = v95;
      v110 = v108;
      v56 = &qword_27EE8F8D0;
LABEL_82:
      v111 = i;
      sub_24822D508(v110, i);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0);
      if ((*(*(v112 - 8) + 48))(v111, 1, v112) == 1)
      {
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8);
        v114 = v176;
        (*(*(v113 - 8) + 56))(v176, 1, 1, v113);
      }

      else
      {
        v115 = *(v112 + 48);
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8);
        v117 = *i;
        v118 = i[1];
        v119 = v176;
        (*v178)(v176 + *(v116 + 48), i + v115, v183);
        *v119 = v117;
        v119[1] = v118;
        v114 = v119;

        sub_24822D578(i, &qword_27EE8F8D0);
        (*(*(v116 - 8) + 56))(v119, 0, 1, v116);
      }

      v120 = v184;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D8);
      if ((*(*(v121 - 8) + 48))(v114, 1, v121) == 1)
      {

        v64 = v163;
        v63 = v164;
        (*v159)(v163, v164);

        v162 = v120;
        v62 = v158;
        v56 = v169;
        v59 = v156;
        v60 = v155;
        v61 = v157;
        goto LABEL_45;
      }

      v122 = *(v121 + 48);
      v123 = *v114;
      v124 = v114[1];
      v125 = *v94;
      (*v94)(v181, v114 + v122, v183);
      v127 = sub_24822B8A0(v123, v124);
      v128 = *(v120 + 16);
      v129 = (v126 & 1) == 0;
      v130 = v128 + v129;
      if (__OFADD__(v128, v129))
      {
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v131 = v126;
      if (*(v120 + 24) >= v130)
      {
        if (v180)
        {
          v88 = v185[0];
          if ((v126 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          sub_24822C500();
          v88 = v185[0];
          if ((v131 & 1) == 0)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        sub_24822B918(v130, v180 & 1);
        v132 = sub_24822B8A0(v123, v124);
        if ((v131 & 1) != (v133 & 1))
        {
          goto LABEL_114;
        }

        v127 = v132;
        v88 = v185[0];
        if ((v131 & 1) == 0)
        {
LABEL_93:
          v88[(v127 >> 6) + 8] |= 1 << v127;
          v134 = (v88[6] + 16 * v127);
          *v134 = v123;
          v134[1] = v124;
          v125((v88[7] + *(v179 + 72) * v127), v181, v183);
          v135 = v88[2];
          v32 = __OFADD__(v135, 1);
          v136 = v135 + 1;
          if (v32)
          {
            goto LABEL_109;
          }

          v88[2] = v136;
          goto LABEL_71;
        }
      }

      (*(v179 + 40))(v88[7] + *(v179 + 72) * v127, v181, v183);
LABEL_71:
      v62 = 1;
      v93 = v97;
      continue;
    }

    break;
  }

  if (v170 <= v93 + 1)
  {
    v96 = v93 + 1;
  }

  else
  {
    v96 = v170;
  }

  v97 = v96 - 1;
  while (1)
  {
    v95 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v95 >= v170)
    {
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8D0);
      v138 = v177;
      (*(*(v137 - 8) + 56))(v177, 1, 1, v137);
      v110 = v138;
      v92 = 0;
      goto LABEL_82;
    }

    v92 = *&v171[8 * v95];
    ++v93;
    if (v92)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_102:

  v53 = v153;
  v57 = v162;
LABEL_103:
  v140 = v62;
  *(v62 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions) = v57;

  v141 = v154;

  v142 = sub_24822CE54(v56, v141);
  swift_bridgeObjectRelease_n();
  v143 = sub_24822BF40(v142);

  v144 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers;
  *(v140 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers) = v143;

  v145 = sub_248383DC0();
  v146 = *v53;
  if (os_log_type_enabled(*v53, v145))
  {
    v147 = v146;
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v185[0] = v149;
    *v148 = 136315138;
    v185[5] = *(v140 + v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F8B8);
    sub_24822D648(&qword_27EE8F8C0, &qword_27EE8F8C8);
    v150 = sub_2483841D0();
    v152 = sub_24814A378(v150, v151, v185);

    *(v148 + 4) = v152;
    _os_log_impl(&dword_248146000, v147, v145, "DBAssetLibrary match between assets and infoResponse: %s", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v149);
    MEMORY[0x24C1CD5F0](v149, -1, -1);
    MEMORY[0x24C1CD5F0](v148, -1, -1);
  }

  else
  {
  }

  (*(v165 + 8))(v168, v166);
}

void *(*DBAssetLibrary.session.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248229DC0;
}

void *sub_248229DC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_248228A0C();
  }

  return result;
}

uint64_t variable initialization expression of DBAssetLibrary.assetManager()
{
  sub_248381550();
  swift_allocObject();
  return sub_248381540();
}

unint64_t variable initialization expression of DBAssetLibrary.cancellables()
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_248384360())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = MEMORY[0x277D84F90];

  return sub_24822D018(v2);
}

char *variable initialization expression of DBAssetLibrary.supportedAppIdentifiers()
{
  v0 = sub_248381570();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248381560();
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = *(v6 + 64);
    v18[0] = v4;
    v9 = v4 + ((v8 + 32) & ~v8);
    v19 = *(v6 + 56);
    v20 = v7;
    v10 = MEMORY[0x277D84F90];
    v18[1] = v6;
    v7(v3, v9, v0);
    while (1)
    {
      v12 = sub_248338A8C();
      v14 = v13;
      (*(v6 - 8))(v3, v0);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24822B3C4(0, *(v10 + 2) + 1, 1, v10);
        }

        v16 = *(v10 + 2);
        v15 = *(v10 + 3);
        if (v16 >= v15 >> 1)
        {
          v10 = sub_24822B3C4((v15 > 1), v16 + 1, 1, v10);
        }

        *(v10 + 2) = v16 + 1;
        v11 = &v10[16 * v16];
        *(v11 + 4) = v12;
        *(v11 + 5) = v14;
      }

      v9 += v19;
      if (!--v5)
      {
        break;
      }

      v20(v3, v9, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

id sub_24822A05C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94210);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v36 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F870);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F878);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = v36 - v6;
  v7 = sub_248381570();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_session] = 0;
  v11 = OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetManager;
  sub_248381550();
  swift_allocObject();
  *&v0[v11] = sub_248381540();
  if (MEMORY[0x277D84F90] >> 62 && sub_248384360())
  {
    v12 = sub_24822D018(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_cancellables] = v12;
  v13 = sub_248381560();
  v14 = *(v13 + 16);
  if (v14)
  {
    v37 = v0;
    v38 = v5;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = *(v15 + 64);
    v36[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v45 = *(v15 + 56);
    v46 = v16;
    v47 = v15;
    v19 = (v15 - 8);
    v20 = MEMORY[0x277D84F90];
    v16(v10, v18, v7);
    while (1)
    {
      v22 = sub_248338A8C();
      v24 = v23;
      (*v19)(v10, v7);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_24822B3C4(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_24822B3C4((v25 > 1), v26 + 1, 1, v20);
        }

        *(v20 + 2) = v26 + 1;
        v21 = &v20[16 * v26];
        *(v21 + 4) = v22;
        *(v21 + 5) = v24;
      }

      v18 += v45;
      if (!--v14)
      {
        break;
      }

      v46(v10, v18, v7);
    }

    v1 = v37;
    v5 = v38;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_supportedAppIdentifiers] = v20;
  v27 = type metadata accessor for DBAssetLibrary();
  v49.receiver = v1;
  v49.super_class = v27;
  v28 = objc_msgSendSuper2(&v49, sel_init);

  v29 = v39;
  sub_248381520();

  v30 = [objc_opt_self() mainRunLoop];
  v48 = v30;
  v31 = sub_248384170();
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_24814FB28(0, &qword_27EE903F0);
  sub_24822D648(&qword_27EE8F880, &qword_27EE8F870);
  sub_24822D338();
  v34 = v42;
  v33 = v43;
  sub_248382FA0();
  sub_24822D578(v32, &qword_27EE94210);

  (*(v40 + 8))(v29, v34);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24822D648(&qword_27EE8F888, &qword_27EE8F878);
  sub_248383000();

  (*(v44 + 8))(v33, v5);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  sub_248228A0C();

  return v28;
}

id DBAssetLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAssetLibrary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24822A790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = a3;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v22 = a2;
  result = swift_bridgeObjectRetain_n();
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 40;
    v18 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v19 = v3 + 40;
    do
    {
      v21 = v8;
      v9 = (v7 + 16 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        v6 = v10 + 1;
        v23[0] = v11;
        v23[1] = v12;
        MEMORY[0x28223BE20](result);
        v17[2] = v23;

        if (sub_24815503C(sub_2481614D0, v17, v22))
        {
          break;
        }

        v9 += 2;
        ++v10;
        if (v4 == v6)
        {
          v8 = v21;
          goto LABEL_15;
        }
      }

      v8 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v8;
      if ((result & 1) == 0)
      {
        result = sub_24822C8F0(0, *(v8 + 16) + 1, 1);
        v8 = v24;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v21 = v14 + 1;
        result = sub_24822C8F0((v13 > 1), v14 + 1, 1);
        v15 = v21;
        v8 = v24;
      }

      *(v8 + 16) = v15;
      v16 = v8 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v7 = v19;
    }

    while (v18 != v10);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_15:
  result = swift_bridgeObjectRelease_n();
  *v20 = v8;
  return result;
}

Swift::OpaquePointer_optional __swiftcall DBAssetLibrary.verifiedPunchThroughs(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_supportedAppIdentifiers);
  v5 = (v4 + 40);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      goto LABEL_14;
    }

    if (*(v5 - 1) == countAndFlagsBits && *v5 == object)
    {
      break;
    }

    v5 += 2;
  }

  while ((sub_248384680() & 1) == 0);
  v8 = *(v1 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers);
  if (!v8)
  {
    v12 = sub_248383DC0();
    v13 = *sub_24814FB80();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24814A378(countAndFlagsBits, object, &v25);
      _os_log_impl(&dword_248146000, v14, v12, "DBAssetLibrary handshake PT not performed yet: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1CD5F0](v16, -1, -1);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

LABEL_14:
    bundleIdentifier._countAndFlagsBits = 0;
    return *&bundleIdentifier._countAndFlagsBits;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_16;
  }

  v9 = sub_24822B8A0(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

LABEL_17:
  v17 = sub_248383DC0();
  v18 = *sub_24814FB80();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_24814A378(countAndFlagsBits, object, &v25);
    *(v20 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F848);
    sub_24822D648(&qword_27EE8F850, &unk_27EE93AB0);
    v22 = sub_2483841D0();
    v24 = sub_24814A378(v22, v23, &v25);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_248146000, v19, v17, "DBAssetLibrary verifier PT for bundleIdentifier: %s, %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  if (v11)
  {
    bundleIdentifier._countAndFlagsBits = v11;
  }

  else
  {
    bundleIdentifier._countAndFlagsBits = MEMORY[0x277D84F90];
  }

  return *&bundleIdentifier._countAndFlagsBits;
}

uint64_t sub_24822AD70(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), const char *a4, const char *a5)
{
  v46 = a5;
  v10 = sub_2483815A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = *(v5 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_assetPunchThroughsOptions);
  if (!v17 || !*(v17 + 16))
  {
    goto LABEL_17;
  }

  v45 = a4;
  v18 = v5;

  v19 = sub_24822B8A0(a1, a2);
  if ((v20 & 1) == 0)
  {

LABEL_17:
    v35 = sub_248383DC0();
    v36 = *sub_24814FB80();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = v36;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_24814A378(a1, a2, &v47);
      _os_log_impl(&dword_248146000, v37, v35, v46, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x24C1CD5F0](v39, -1, -1);
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    v40 = 0;
    return v40 & 1;
  }

  v44 = a3;
  v21 = *(v11 + 16);
  v21(v16, *(v17 + 56) + *(v11 + 72) * v19, v10);

  v22 = *(v18 + OBJC_IVAR____TtC9DashBoard14DBAssetLibrary_verifiedAppPunchThroughIdentifiers);
  if (!v22)
  {
LABEL_16:
    (*(v11 + 8))(v16, v10);
    goto LABEL_17;
  }

  v43 = v21;
  v47 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F858);
  sub_24822D648(&qword_27EE8F860, &qword_27EE8F858);
  sub_24822D648(&qword_27EE8F868, &unk_27EE93AB0);
  v23 = sub_248383AB0();
  v24 = (v23 + 40);
  v25 = *(v23 + 16) + 1;
  do
  {
    if (!--v25)
    {

      goto LABEL_16;
    }

    if (*(v24 - 1) == a1 && *v24 == a2)
    {
      break;
    }

    v24 += 2;
  }

  while ((sub_248384680() & 1) == 0);

  v27 = sub_248383DC0();
  v28 = *sub_24814FB80();
  v43(v14, v16, v10);
  if (os_log_type_enabled(v28, v27))
  {
    v46 = v28;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_24814A378(a1, a2, &v47);
    *(v29 + 12) = 1024;
    LODWORD(v43) = v27;
    v31 = v44;
    v32 = v44() & 1;
    v33 = *(v11 + 8);
    v33(v14, v10);
    *(v29 + 14) = v32;
    v34 = v46;
    _os_log_impl(&dword_248146000, v46, v43, v45, v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C1CD5F0](v30, -1, -1);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
  }

  else
  {
    v33 = *(v11 + 8);
    v33(v14, v10);
    v31 = v44;
  }

  v40 = v31();
  v33(v16, v10);
  return v40 & 1;
}

uint64_t sub_24822B228(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_248383960();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

void *sub_24822B290(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8F908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}