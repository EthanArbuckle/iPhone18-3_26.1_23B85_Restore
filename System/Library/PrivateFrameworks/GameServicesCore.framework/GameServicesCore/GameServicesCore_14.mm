uint64_t sub_227C544B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E0, &qword_227D5E8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C54528(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);

  return sub_227D4A688();
}

uint64_t sub_227C545CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E0, &qword_227D5E8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227C54654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227D4A678();
  v6 = v5;
  v7 = sub_227D4A6A8();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_14_0(v10);
  result = (*(v11 + 8))(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
  return result;
}

GameServicesCore::GameIdentifier __swiftcall GameIdentifier.init(adamID:bundleID:)(Swift::String_optional adamID, Swift::String_optional bundleID)
{
  *v2 = adamID;
  v2[1] = bundleID;
  result.bundleID = bundleID;
  result.adamID = adamID;
  return result;
}

uint64_t static GameIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_227D4DA78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_227D4DA78() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t Array<A>.queryableIDs(installMetadata:installedOnly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, size_t *a4@<X8>)
{
  v173 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  result = MEMORY[0x28223BE20](v15);
  v18 = v167 - v17;
  v19 = 0;
  v20 = *(a3 + 16);
  v187 = (v10 + 16);
  v172 = (v10 + 32);
  v177 = MEMORY[0x277D84F90];
  v176 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v175 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F90];
  v180 = v167 - v17;
  v181 = v10 + 8;
  for (i = v20; ; v20 = i)
  {
    if (v20 == v19)
    {
      v162 = v173;
      v163 = v179;
      *v173 = v178;
      v162[1] = v163;
      v164 = v177;
      v162[2] = v176;
      v162[3] = v164;
      v162[4] = v175;
      return result;
    }

    if (v19 >= v20)
    {
      break;
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_78;
    }

    v184 = v19 + 1;
    v21 = *(v10 + 72);
    v183 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v182 = v21;
    v186 = *v187;
    v186(v18, a3 + v183 + v21 * v19, v7);
    v22 = v190;
    v188 = sub_227D4A6A8();
    v190 = v22;
    if (v22)
    {
      v165 = OUTLINED_FUNCTION_30_9();
      v166(v165);
    }

    v24 = *(a1 + 16);
    v189 = v23;
    if (v24 && (v25 = sub_227B2664C(v188, v23), (v26 & 1) != 0))
    {
      sub_227C19454(*(a1 + 56) + 40 * v25, &v196);
      v27 = *(&v197 + 1) == 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v198 = 0;
      v27 = 1;
      v196 = 0u;
      v197 = 0u;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v27)
    {
      goto LABEL_15;
    }

LABEL_12:
    sub_227C579D8(&v196, &v193);
    v28 = v194;
    if (v194)
    {
      v29 = v10;
      v30 = v7;
      v31 = a1;
      v32 = a2;
      v33 = a3;
      v34 = v195;
      OUTLINED_FUNCTION_49_4();
      v35 = *(v34 + 48);
      v36 = v34;
      a3 = v33;
      a2 = v32;
      a1 = v31;
      v7 = v30;
      v10 = v29;
      v18 = v180;
      v37 = v35(v28, v36);
      __swift_destroy_boxed_opaque_existential_0(&v193);
      if (v37)
      {
        OUTLINED_FUNCTION_40_3();
LABEL_15:
        v38 = OUTLINED_FUNCTION_30_9();
        v39(v38);

        result = sub_227B4DB00(&v196, &qword_27D7E97F0, &qword_227D5EEF0);
        ++v19;
        continue;
      }
    }

    else
    {
      sub_227B4DB00(&v193, &qword_27D7E97F0, &qword_227D5EEF0);
    }

    if (!*(a1 + 16) || (v40 = sub_227B2664C(v188, v189), (v41 & 1) == 0))
    {
      v53 = v18;
      v54 = v190;
      v55 = sub_227D4A678();
      if (v54)
      {

        v169 = 0;
        v168 = 0;
      }

      else
      {
        v168 = v56;
        v169 = v55;
      }

      v190 = 0;
      v57 = v176;
      sub_227D4CE58();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v58 = v177;
      }

      else
      {
        v125 = OUTLINED_FUNCTION_3_20(v200);
        v58 = sub_227C576DC(v125, v126, v127, v128);
      }

      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      OUTLINED_FUNCTION_24_7();
      if (v63)
      {
        v129 = OUTLINED_FUNCTION_55(v62);
        v61 = sub_227C576DC(v129, v130, v131, v132);
      }

      *(v61 + 2) = v18;
      v177 = v61;
      v64 = &v61[32 * v60];
      v65 = v168;
      *(v64 + 4) = v169;
      *(v64 + 5) = v65;
      v66 = v189;
      *(v64 + 6) = v188;
      *(v64 + 7) = v66;
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = *(v57 + 2);
        v134 = OUTLINED_FUNCTION_21();
        v57 = sub_227B25F88(v134, v135, v136, v57);
      }

      v68 = *(v57 + 2);
      v67 = *(v57 + 3);
      OUTLINED_FUNCTION_24_7();
      if (v63)
      {
        v137 = OUTLINED_FUNCTION_55(v69);
        v57 = sub_227B25F88(v137, v138, v139, v57);
      }

      OUTLINED_FUNCTION_38_8();
      goto LABEL_63;
    }

    v169 = a3;
    sub_227C19454(*(a1 + 56) + 40 * v40, v192);
    sub_227B132F0(v192, &v193);
    v42 = v194;
    OUTLINED_FUNCTION_49_4();
    v43 = OUTLINED_FUNCTION_8_12();
    v44(v43);
    v45 = sub_227B6DCA4();
    OUTLINED_FUNCTION_27_8(v45);
    v46 = sub_227B6E22C();
    v47 = sub_227D4D578();
    v168 = v46;
    if (v47)
    {
      v48 = v171;
      OUTLINED_FUNCTION_32_5();
      v49();
      v50 = v190;
      v51 = sub_227D4A678();
      if (v50)
      {

        OUTLINED_FUNCTION_33_6();
      }

      else
      {
        OUTLINED_FUNCTION_43_6(v51, v52);
      }

      v78 = v175;
      OUTLINED_FUNCTION_40_3();
      v79 = sub_227D4A6A8();
      if (v50)
      {

        OUTLINED_FUNCTION_36_7();
      }

      else
      {
        OUTLINED_FUNCTION_35_5(v79);
      }

      (*v42)(v48, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = *(v78 + 2);
        v141 = OUTLINED_FUNCTION_21();
        v78 = sub_227C576DC(v141, v142, v143, v78);
      }

      v81 = *(v78 + 2);
      v80 = *(v78 + 3);
      OUTLINED_FUNCTION_24_7();
      if (v63)
      {
        v144 = OUTLINED_FUNCTION_55(v83);
        v84 = sub_227C576DC(v144, v145, v146, v78);
        v82 = v177;
        v78 = v84;
      }

      else
      {
        v84 = v78;
      }

LABEL_54:
      v177 = v82;
      v175 = v78;
      *(v84 + 2) = v48;
      v88 = &v84[32 * v81];
      v89 = v167[3];
      *(v88 + 4) = v167[2];
      *(v88 + 5) = v89;
      *(v88 + 6) = v167[1];
      *(v88 + 7) = v46;
      goto LABEL_55;
    }

    v70 = v194;
    OUTLINED_FUNCTION_49_4();
    v71 = OUTLINED_FUNCTION_8_12();
    v72(v71);
    v73 = sub_227B6DC90();
    OUTLINED_FUNCTION_27_8(v73);
    if (sub_227D4D578())
    {
      v48 = v170;
      OUTLINED_FUNCTION_32_5();
      v74();
      v75 = v190;
      sub_227D4A678();
      OUTLINED_FUNCTION_40_3();
      if (v75)
      {

        OUTLINED_FUNCTION_33_6();
      }

      else
      {
        OUTLINED_FUNCTION_43_6(v76, v77);
      }

      v78 = v175;
      v85 = sub_227D4A6A8();
      if (v75)
      {

        OUTLINED_FUNCTION_36_7();
      }

      else
      {
        OUTLINED_FUNCTION_35_5(v85);
      }

      (*v70)(v48, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = OUTLINED_FUNCTION_3_20(v200);
        v177 = sub_227C576DC(v154, v155, v156, v157);
      }

      v81 = *(v177 + 2);
      v86 = *(v177 + 3);
      OUTLINED_FUNCTION_24_7();
      if (v63)
      {
        v158 = OUTLINED_FUNCTION_55(v87);
        v84 = sub_227C576DC(v158, v159, v160, v161);
        v82 = v84;
      }

      else
      {
        v84 = v82;
      }

      goto LABEL_54;
    }

LABEL_55:
    OUTLINED_FUNCTION_49_4();
    v90 = OUTLINED_FUNCTION_8_12();
    v91(v90);
    v92 = sub_227B6DCB8();
    OUTLINED_FUNCTION_27_8(v92);
    v53 = &v191;
    if (sub_227D4D578())
    {
      sub_227D4CE58();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a3 = v169;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v147 = OUTLINED_FUNCTION_3_20(&v199);
        v176 = sub_227B25F88(v147, v148, v149, v150);
      }

      v57 = v176;
      v95 = *(v176 + 2);
      v94 = *(v176 + 3);
      OUTLINED_FUNCTION_24_7();
      if (v63)
      {
        v151 = OUTLINED_FUNCTION_55(v96);
        v57 = sub_227B25F88(v151, v152, v153, v57);
      }

      OUTLINED_FUNCTION_38_8();
    }

    else
    {
      a3 = v169;
      v57 = v176;
    }

    __swift_destroy_boxed_opaque_existential_0(&v193);
LABEL_63:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_3_20(&v202);
      v179 = sub_227B25F88(v110, v111, v112, v113);
    }

    v98 = *(v179 + 2);
    v97 = *(v179 + 3);
    OUTLINED_FUNCTION_24_7();
    v100 = v189;
    if (v63)
    {
      v114 = OUTLINED_FUNCTION_55(v99);
      v117 = sub_227B25F88(v114, v115, v116, v179);
      v100 = v189;
      v179 = v117;
    }

    v101 = v179;
    *(v179 + 2) = v53;
    v102 = &v101[16 * v98];
    *(v102 + 4) = v188;
    *(v102 + 5) = v100;
    OUTLINED_FUNCTION_32_5();
    v103();
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v57;
    if ((v104 & 1) == 0)
    {
      v118 = OUTLINED_FUNCTION_3_20(&v201);
      v178 = sub_227C575E4(v118, v119, v120, v121);
    }

    v106 = *(v178 + 16);
    v105 = *(v178 + 24);
    if (v106 >= v105 >> 1)
    {
      v122 = OUTLINED_FUNCTION_55(v105);
      v178 = sub_227C575E4(v122, v123, v124, v178);
    }

    OUTLINED_FUNCTION_40_3();
    v107 = OUTLINED_FUNCTION_30_9();
    v108(v107);
    v109 = v178;
    *(v178 + 16) = v106 + 1;
    (*v172)(v109 + v183 + v106 * v182, v174, v7);
    result = sub_227B4DB00(&v196, &qword_27D7E97F0, &qword_227D5EEF0);
    v19 = v184;
  }

  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_227C551F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v12 = *(a4 + 224) + **(a4 + 224);
    v5 = *(*(a4 + 224) + 4);
    v6 = swift_task_alloc();
    *(v4 + 96) = v6;
    *v6 = v4;
    v7 = OUTLINED_FUNCTION_0_32(v6);
  }

  else
  {
    v13 = *(a4 + 208) + **(a4 + 208);
    v9 = *(*(a4 + 208) + 4);
    v10 = swift_task_alloc();
    *(v4 + 120) = v10;
    *v10 = v4;
    v7 = OUTLINED_FUNCTION_0_32(v10);
  }

  return v8(v7);
}

uint64_t sub_227C553E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  *(v4 + 104) = v1;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 112) = v0;

    return MEMORY[0x2822009F8](sub_227C5551C, 0, 0);
  }
}

uint64_t sub_227C5551C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 104);
  sub_227C57D08(*(v0 + 112));

  v2 = OUTLINED_FUNCTION_15_10();

  return v3(v2);
}

uint64_t sub_227C55590()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  *(v3 + 128) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C556B8, 0, 0);
  }
}

void sub_227C556B8()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = MEMORY[0x277D84F98];
  v31 = *(v1 + 16);
  v32 = *(v0 + 128);
  while (v3 < *(v1 + 16))
  {
    sub_227C19454(v4, v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    if (sub_227C55944(v6, v7))
    {
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v9 = *(v8 + 16);
      v10 = OUTLINED_FUNCTION_17_12();
      v12 = v11(v10);
      v14 = v13;
      sub_227C19454(v0 + 16, v0 + 56);
      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_227B2664C(v12, v14);
      if (__OFADD__(v5[2], (v16 & 1) == 0))
      {
        goto LABEL_23;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97F8, &qword_227D5E978);
      if (sub_227D4D7C8())
      {
        v19 = sub_227B2664C(v12, v14);
        if ((v18 & 1) != (v20 & 1))
        {
          OUTLINED_FUNCTION_16_0();

          sub_227D4DAE8();
          return;
        }

        v17 = v19;
      }

      if (v18)
      {

        v21 = (v5[7] + 40 * v17);
        __swift_destroy_boxed_opaque_existential_0(v21);
        sub_227B132F0((v0 + 56), v21);
      }

      else
      {
        v5[(v17 >> 6) + 8] |= 1 << v17;
        v22 = (v5[6] + 16 * v17);
        *v22 = v12;
        v22[1] = v14;
        sub_227B132F0((v0 + 56), v5[7] + 40 * v17);
        v23 = v5[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_24;
        }

        v5[2] = v25;
      }

      v2 = v31;
      v1 = v32;
    }

    ++v3;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 += 40;
    if (v2 == v3)
    {
      v26 = *(v0 + 128);
LABEL_16:

      v27 = *(v0 + 8);
      OUTLINED_FUNCTION_16_0();

      __asm { BRAA            X2, X16 }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

BOOL sub_227C55944(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_9(a1);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = sub_227D4CAB8();
  v14 = OUTLINED_FUNCTION_9(v13);
  v33 = v15;
  v34 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = (*(a2 + 8))(a1, a2);
  sub_227C58D0C();
  v22 = sub_227D4D4B8();
  OUTLINED_FUNCTION_113();
  v23 = sub_227D4D4C8();

  if (v23)
  {
    sub_227D4AA58();
    (*(v7 + 16))(v12, v2, a1);
    v24 = sub_227D4CA98();
    v25 = sub_227D4D438();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v26 = 136315138;
      v27 = (*(a2 + 16))(a1, a2);
      v29 = v28;
      (*(v7 + 8))(v12, a1);
      v30 = sub_227B1B1A4(v27, v29, &v35);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_227B0D000, v24, v25, "Invalid data for Game Center data with bundleID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAA7130](v32, -1, -1);
      MEMORY[0x22AAA7130](v26, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, a1);
    }

    (*(v33 + 8))(v20, v34);
  }

  return (v23 & 1) == 0;
}

uint64_t sub_227C55C0C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v5 = v4;
  *(v1 + 1776) = v0;
  *(v1 + 1768) = v6;
  *(v1 + 1720) = v7;
  *(v1 + 1864) = v8;
  *(v1 + 1672) = v4;
  v9 = *(v7 - 8);
  *(v1 + 1784) = v9;
  *(v1 + 1792) = *(v9 + 64);
  *(v1 + 1800) = swift_task_alloc();
  *(v1 + 1808) = swift_task_alloc();
  v10 = *(v5 + 16);
  *(v1 + 1336) = *v5;
  *(v1 + 1352) = v10;
  *(v1 + 1368) = *(v5 + 32);
  *(v1 + 1865) = *v3;

  return MEMORY[0x2822009F8](sub_227C55D08, 0, 0);
}

uint64_t sub_227C55D08()
{
  v25 = *(v0 + 1865);
  v18 = *(v0 + 1808);
  v23 = *(v0 + 1800);
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v21 = *(v0 + 1776);
  v3 = *(v0 + 1768);
  v20 = v3;
  v4 = *(v0 + 1720);
  v24 = *(v0 + 1864);
  v5 = *(v0 + 1672);
  v22 = *(v2 + 16);
  v22();
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = (v1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v19 = *(v2 + 32);
  v19(v8 + v6, v18, v4);
  v9 = v8 + v7;
  v10 = *(v5 + 32);
  v11 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  *(v8 + v7 + 40) = v25;
  *(v8 + v7 + 41) = v24;
  v12 = swift_allocObject();
  *(v0 + 1816) = v12;
  *(v12 + 16) = &unk_227D5E990;
  *(v12 + 24) = v8;
  sub_227C58420(v0 + 1336, v0 + 1416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
  swift_asyncLet_begin();
  (v22)(v23, v21, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v20;
  v19(v13 + v6, v23, v4);
  v14 = v13 + v7;
  v15 = *(v0 + 1352);
  *v14 = *(v0 + 1336);
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v0 + 1368);
  *(v13 + v7 + 40) = v25;
  *(v13 + v7 + 41) = v24;
  v16 = swift_allocObject();
  *(v0 + 1824) = v16;
  *(v16 + 16) = &unk_227D5E9B8;
  *(v16 + 24) = v13;
  sub_227C58420(v0 + 1336, v0 + 1496);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_227C55FE4()
{
  OUTLINED_FUNCTION_6();
  v1[229] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 203, sub_227C5620C, v1 + 172);
  }

  else
  {
    v1[230] = v1[197];
    sub_227D4CE58();
    v2 = OUTLINED_FUNCTION_31_4();

    return MEMORY[0x282200930](v2);
  }
}

uint64_t sub_227C5608C()
{
  *(v1 + 1848) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_22(sub_227C562CC);
  }

  else
  {
    return OUTLINED_FUNCTION_22(sub_227C560B8);
  }
}

uint64_t sub_227C560B8()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[231];
  v2 = v0[230];
  v3 = v0[203];
  v4 = sub_227D4CE58();
  v0[232] = sub_227C56E48(v4, v2);
  v5 = OUTLINED_FUNCTION_31_4();

  return MEMORY[0x282200920](v5, v6, v7, v0 + 210);
}

uint64_t sub_227C5617C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[228];
  v2 = v0[227];
  v3 = v0[226];
  v4 = v0[225];

  v5 = v0[1];
  v6 = v0[232];

  return v5(v6);
}

uint64_t sub_227C56254()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 1832);
  OUTLINED_FUNCTION_47_6();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C562CC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 1840);

  v2 = OUTLINED_FUNCTION_31_4();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 1584);
}

uint64_t sub_227C56374()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 1848);
  OUTLINED_FUNCTION_47_6();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C563EC()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_41_6();
  *(v0 + 32) = v1 & 1;
  v3 = *(v2 + 24);
  *(v0 + 33) = 0;
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_227C564A4;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_163();

  return sub_227C565C0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227C564A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C58D50, 0, 0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_10();

    return v10(v9);
  }
}

uint64_t sub_227C565C0(uint64_t a1, _BYTE *a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 82) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  *(v7 + 83) = *a2;
  *(v7 + 84) = *a3;
  return OUTLINED_FUNCTION_22(sub_227C565F0);
}

void sub_227C565F0()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  *(v0 + 48) = v5;
LABEL_3:
  *(v0 + 56) = v6;
  v7 = (v4 + 32 * v1);
  v8 = v1;
  while (1)
  {
    if (v3 == v8)
    {
      v28 = *(v0 + 84);
      *(v0 + 80) = *(v0 + 83);
      *(v0 + 81) = v28;
      v37 = (*(v0 + 32) + 232);
      v39 = *v37 + **v37;
      v29 = (*v37)[1];
      v30 = swift_task_alloc();
      *(v0 + 64) = v30;
      *v30 = v0;
      v30[1] = sub_227C568B8;
      v31 = *(v0 + 32);
      v32 = *(v0 + 40);
      v33 = *(v0 + 24);
      v34 = *(v0 + 82);
      OUTLINED_FUNCTION_16_0();

      __asm { BRAA            X7, X16 }
    }

    if (v8 >= v3)
    {
      break;
    }

    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_24;
    }

    v9 = v7[3];
    v10 = v7[1];
    if (v10)
    {
      v38 = v4;
      v11 = *v7;
      sub_227D4CE58();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v6 + 2);
        v16 = OUTLINED_FUNCTION_21();
        v6 = sub_227B25F88(v16, v17, v18, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_227B25F88((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;

      v4 = v38;
      goto LABEL_3;
    }

    ++v8;
    v7 += 4;
    if (v9)
    {
      v19 = *(v7 - 2);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v5 + 2);
        v25 = OUTLINED_FUNCTION_21();
        v5 = sub_227B25F88(v25, v26, v27, v5);
      }

      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = sub_227B25F88((v21 > 1), v22 + 1, 1, v5);
      }

      *(v5 + 2) = v22 + 1;
      v23 = &v5[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v9;

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_227C568B8()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C56A04, 0, 0);
  }

  else
  {
    v11 = v4[6];
    v10 = v4[7];

    v12 = v8[1];

    return v12(v3);
  }
}

uint64_t sub_227C56A04()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_18();
  v4 = v0[9];

  return v3();
}

uint64_t sub_227C56A68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227C56B54;

  return v6();
}

uint64_t sub_227C56B54()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_227C56C4C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_41_6();
  v2 = *(v1 + 32);
  *(v0 + 32) = v3 & 1;
  *(v0 + 33) = 1;
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_227C56D08;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_163();

  return sub_227C565C0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227C56D08()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C56E24, 0, 0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_10();

    return v10(v9);
  }
}

uint64_t sub_227C56E24()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t sub_227C56E48(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227C587CC(a1, sub_227C58794, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227C56ECC(void *a1)
{
  v3 = sub_227D49BA8();
  v94 = OUTLINED_FUNCTION_9(v3);
  v95 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_3();
  v93 = v8 - v7;
  v9 = sub_227D49588();
  v10 = OUTLINED_FUNCTION_9(v9);
  v96 = v11;
  v97 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = sub_227D4AA88();
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54_0();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v91[-v28];
  OUTLINED_FUNCTION_20_9();
  v30 = v1[4];
  v31 = OUTLINED_FUNCTION_17_12();
  if (v32(v31))
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_20_9();
  v33 = v1[9];
  v34 = OUTLINED_FUNCTION_17_12();
  if ((v35(v34) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (sub_227D49BC8())
  {
    OUTLINED_FUNCTION_20_9();
    v36 = v1[3];
    v37 = OUTLINED_FUNCTION_39_6();
    if ((v38(v37) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49BB8())
  {
    OUTLINED_FUNCTION_20_9();
    v39 = v1[6];
    v40 = OUTLINED_FUNCTION_17_12();
    v41(v40);
    sub_227D4AA78();
    sub_227C58B74(&qword_27D7E6810, MEMORY[0x277D0D550]);
    v42 = sub_227D4D578();
    v43 = *(v21 + 8);
    v43(v26, v18);
    v43(v29, v18);
    if ((v42 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v44 = sub_227D49BE8();
  v45 = v96;
  v46 = v97;
  if (v44)
  {
    v47 = OUTLINED_FUNCTION_4_21();
    v48(v47);
    sub_227D49548();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v49, v50);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v51 = OUTLINED_FUNCTION_9_10();
    v26(v51);
    v52 = OUTLINED_FUNCTION_113();
    v26(v52);
    if ((v29 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49C28())
  {
    v53 = OUTLINED_FUNCTION_4_21();
    v54(v53);
    sub_227D49578();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v55, v56);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v57 = OUTLINED_FUNCTION_9_10();
    v26(v57);
    v58 = OUTLINED_FUNCTION_113();
    v26(v58);
    if ((v29 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49BF8())
  {
    v59 = OUTLINED_FUNCTION_4_21();
    v60(v59);
    sub_227D49558();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v61, v62);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v63 = OUTLINED_FUNCTION_9_10();
    v26(v63);
    v64 = OUTLINED_FUNCTION_113();
    v26(v64);
    if ((v29 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v65 = OUTLINED_FUNCTION_4_21();
  v66(v65);
  sub_227D49538();
  OUTLINED_FUNCTION_1_24();
  sub_227C58B74(v67, v68);
  OUTLINED_FUNCTION_10_15();
  v92 = sub_227D4D578();
  v69 = *(v45 + 8);
  v69(v16, v46);
  v70 = OUTLINED_FUNCTION_113();
  (v69)(v70);
  OUTLINED_FUNCTION_20_9();
  v71 = *(v45 + 64);
  v72 = OUTLINED_FUNCTION_39_6();
  v73(v72);
  sub_227D49568();
  OUTLINED_FUNCTION_10_15();
  v74 = sub_227D4D578();
  v69(v16, v46);
  v75 = OUTLINED_FUNCTION_113();
  (v69)(v75);
  if (sub_227D49C18() & 1) != 0 && (sub_227D49C08())
  {
    v76 = v74 | v92;
    return v76 & 1;
  }

  if (!(v74 & 1 | ((sub_227D49C18() & 1) == 0)) || !(v92 & 1 | ((sub_227D49C08() & 1) == 0)) || (sub_227D49BD8() & 1) != 0 && (v77 = a1[3], v78 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v77), ((*(v78 + 40))(v77, v78) & 1) != 0))
  {
LABEL_30:
    v76 = 0;
    return v76 & 1;
  }

  v79 = sub_227D49C38();
  if (!v79)
  {
LABEL_28:
    v76 = 1;
    return v76 & 1;
  }

  if (!*(v79 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v98 = v79;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  result = (*(v81 + 80))(v80, v81);
  v83 = result;
  v84 = 0;
  v85 = *(result + 16);
  v86 = v94;
  v96 = v95 + 8;
  v97 = v95 + 16;
  while (1)
  {
    if (v85 == v84)
    {

      goto LABEL_30;
    }

    if (v84 >= *(v83 + 16))
    {
      break;
    }

    v87 = v95;
    v88 = v93;
    (*(v95 + 16))(v93, v83 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v84++, v86);
    v99[0] = sub_227D49B98();
    v99[1] = v89;
    MEMORY[0x28223BE20](v99[0]);
    *&v91[-16] = v99;
    v90 = sub_227BB7050(sub_227BB7AF0, &v91[-32], v98);
    (*(v87 + 8))(v88, v86);

    if (v90)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

size_t sub_227C575E4(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227C577E4(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227C578EC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_227C576DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9830, &unk_227D5EAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_227C577E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF0, &qword_227D5BA40);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
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

uint64_t sub_227C578EC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C579D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97F0, &qword_227D5EEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C57A48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9818, &qword_227D5EAA8);
  v36 = a2;
  result = sub_227D4D828();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_227B26E40(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 40 * v19);
    if (v36)
    {
      sub_227B132F0(v23, v37);
    }

    else
    {
      sub_227C19454(v23, v37);
      sub_227D4CE58();
    }

    v24 = *(v8 + 40);
    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_227B132F0(v37, *(v8 + 56) + 40 * v28);
    ++*(v8 + 16);
    if (!v13)
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
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_227C57D08(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_227C57FEC(v9, v4, v2);
      MEMORY[0x22AAA7130](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_227B26E40(0, v4, v5);
  v6 = sub_227C57E6C(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_227C57E6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 16 * v13 + 8);
    sub_227C19454(*(a3 + 56) + 40 * v13, v20);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_227D4CE58();
    LOBYTE(v15) = sub_227C55944(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(v20);

    if (v15)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_227C58064(v19, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_227C58064(v19, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_227C57FEC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_227C57E6C(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_227C58064(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9828, &unk_227D5EAC0);
  result = sub_227D4D838();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_227C19454(v17 + 40 * v16, v34);
    sub_227B132F0(v34, v33);
    v21 = *(v9 + 40);
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_227B132F0(v33, *(v9 + 56) + 40 * v25);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227C582B8()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  OUTLINED_FUNCTION_14_11();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_22_8(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_163();

  return sub_227C563EC();
}

uint64_t sub_227C5838C()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_14_0(*(v0 + 16));
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v4 + 16);

  v8 = *(v0 + v4 + 24);

  v9 = *(v0 + v4 + 32);

  return MEMORY[0x2821FE8E8](v0, v4 + 42, v2 | 7);
}

uint64_t sub_227C5850C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  OUTLINED_FUNCTION_14_11();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_22_8(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_163();

  return sub_227C56C4C();
}

uint64_t sub_227C585E0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_10();

  return v6(v5);
}

uint64_t sub_227C586C0()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

uint64_t sub_227C58754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227C19454(a4, a1);
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227C58794@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227C58754((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227C587CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_227B3D8D4(a1, a2, a3, v32);
  *&v31[5] = v32[0];
  *&v31[7] = v32[1];
  *&v31[9] = v32[2];
  v31[11] = v33;
  sub_227D4CE58();

  while (1)
  {
    sub_227C58A0C(&v29);
    v7 = v30;
    if (!v30)
    {
      sub_227B223D4();
    }

    v8 = v29;
    sub_227B132F0(v31, v28);
    v9 = *a5;
    v11 = sub_227B2664C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9810, &qword_227D5EAA0);
        sub_227D4D7D8();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_227C57A48(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_227B2664C(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_227C19454(*(*a5 + 56) + 40 * v11, v27);
        __swift_destroy_boxed_opaque_existential_0(v28);

        v20 = (*(v19 + 56) + 40 * v11);
        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_227B132F0(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_227B132F0(v28, v21[7] + 40 * v11);
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227C58A0C@<X0>(uint64_t a1@<X8>)
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
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_227C19454(*(v3 + 56) + 40 * v10, v19);
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_227B132F0(v19, &v22);
    result = sub_227D4CE58();
    v15 = *(&v21 + 1);
    v16 = v21;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v22;
      v19[2] = v23;
      v20 = v24;
      v18(v19);
      return sub_227B4DB00(v19, &qword_27D7E9820, &qword_227D5EAB0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
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
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
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

uint64_t sub_227C58B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227C58BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_227C58C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_227C58C74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_227C58CB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_227C58D0C()
{
  result = qword_27D7E8568;
  if (!qword_27D7E8568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E8568);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 56);
  return v1;
}

void OUTLINED_FUNCTION_22_8(uint64_t a1@<X8>)
{
  v3 = v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v3 + 40);
  v5 = *(v3 + 41);
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t result, uint64_t a2)
{
  *(v2 - 416) = result;
  *(v2 - 408) = a2;
  return result;
}

void *OUTLINED_FUNCTION_49_4()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 168), v0);
}

uint64_t sub_227C58E34@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppPurchaseHistoryProvider();
  v3 = sub_227BD63E8();
  result = AppPurchaseHistoryProvider.__allocating_init(purchaseHistoryStore:)(v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for AppPurchaseHistoryProvider;
  *a1 = result;
  return result;
}

uint64_t sub_227C58E78@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  sub_227B11EE8(a1, v13);
  GamePolicyProvider.init(support:)(v13, (a4 + 15));
  sub_227B11EE8(a1, v13);
  sub_227B11EE8(a3, v12);
  sub_227B11EE8(a2, v11);
  sub_227C58FCC((a4 + 15), v10);
  a4[8] = &type metadata for GameListMetadataProvider;
  a4[9] = &protocol witness table for GameListMetadataProvider;
  v8 = swift_allocObject();
  a4[5] = v8;
  GameListMetadataProvider.init(support:restrictionsProvider:purchaseHistoryProvider:policyProvider:)(v13, v12, v11, v10, v8 + 16);
  sub_227B11EE8(a1, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B132F0(a2, (a4 + 10));
}

__n128 GameLibraryAggregateService.init(support:gameListDataProvider:purchaseHistoryProvider:policyProvider:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_227B132F0(a1, a5);
  sub_227B132F0(a2, a5 + 40);
  sub_227B132F0(a3, a5 + 80);
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 120) = *a4;
  *(a5 + 136) = v10;
  *(a5 + 152) = *(a4 + 32);
  return result;
}

uint64_t GameLibraryAggregateService.describe(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C590CC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  v2 = v0[2];
  sub_227D4CE58();
  sub_227D4A438();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_59_6(v3);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C59164()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = v2[7];
  *v4 = *v1;
  *(v3 + 64) = v0;

  v6 = v2[6];
  v7 = v2[4];
  v8 = OUTLINED_FUNCTION_537(v2[5]);
  v9(v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_164();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t GameLibraryAggregateService.describe(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[262] = v0;
  v1[261] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[263] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[264] = v4;
  v6 = *(v5 + 64);
  v1[265] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227C593A0()
{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = sub_227D4A448();
  *(v0 + 2128) = v3;
  *(v0 + 2224) = sub_227D4A428() & 1;
  sub_227B11EE8(v1, v0 + 1736);
  v4 = *(v0 + 1760);
  v5 = *(v0 + 1768);
  OUTLINED_FUNCTION_85_5((v0 + 1736));
  v6 = *(v3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v32 = v2;
    v33 = v5;
    v34 = v4;
    v8 = *(v0 + 2112);
    v40 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v6, 0);
    v9 = 0;
    v7 = v40;
    v10 = *(v8 + 80);
    OUTLINED_FUNCTION_19();
    v36 = v3 + v11;
    v37 = v8;
    v35 = v8 + 16;
    v38 = (v8 + 8);
    while (v9 < *(v3 + 16))
    {
      (*(v37 + 16))(*(v0 + 2120), v36 + *(v37 + 72) * v9, *(v0 + 2104));
      v12 = sub_227D4A6A8();
      v14 = v13;
      v15 = v3;
      v22 = OUTLINED_FUNCTION_63_4(v12, v13, v16, v17, v18, v19, v20, v21, v32, v33, v34, v35, v36, v37, v38);
      v23(v22);
      v25 = *(v40 + 16);
      v24 = *(v40 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_227B3CA88((v24 > 1), v25 + 1, 1);
      }

      ++v9;
      *(v40 + 16) = v25 + 1;
      v26 = v40 + 16 * v25;
      *(v26 + 32) = v12;
      *(v26 + 40) = v14;
      v3 = v15;
      if (v6 == v9)
      {
        v5 = v33;
        v4 = v34;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *(v0 + 2136) = v7;
    v27 = *(v5 + 256);
    OUTLINED_FUNCTION_36_0();
    v39 = (v28 + *v28);
    v30 = *(v29 + 4);
    v31 = swift_task_alloc();
    *(v0 + 2144) = v31;
    *v31 = v0;
    v31[1] = sub_227C59694;

    (v39)(v7, 0, v4, v5);
  }
}

uint64_t sub_227C59694()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = v2[268];
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v3[269] = v8;
  v3[270] = v0;

  v9 = v2[267];
  if (v0)
  {
    v10 = v3[266];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C597CC()
{
  v20 = v0;
  v1 = *(v0 + 2160);
  v2 = *(v0 + 2152);
  v3 = *(v0 + 2128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1736));
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v2, 0, v3, v18);
  if (v1)
  {
    v4 = *(v0 + 2152);
    v5 = *(v0 + 2128);

    v6 = *(v0 + 2120);

    OUTLINED_FUNCTION_19_0();

    return v7();
  }

  else
  {
    v9 = *(v0 + 2224);
    v10 = *(v0 + 2096);
    v11 = v18[1];
    *(v0 + 1656) = v18[0];
    *(v0 + 1672) = v11;
    *(v0 + 1688) = v19;
    sub_227C5FB5C(v10, v0 + 1336);
    v12 = swift_allocObject();
    memcpy((v12 + 16), (v0 + 1336), 0xA0uLL);
    v13 = *(v0 + 1672);
    *(v12 + 176) = *(v0 + 1656);
    *(v12 + 192) = v13;
    *(v12 + 208) = *(v0 + 1688);
    *(v12 + 216) = v9;
    v14 = swift_allocObject();
    *(v0 + 2168) = v14;
    *(v14 + 16) = &unk_227D5EB00;
    *(v14 + 24) = v12;
    sub_227C58420(v0 + 1656, v0 + 1816);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
    swift_asyncLet_begin();
    sub_227C5FB5C(v10, v0 + 1496);
    v15 = swift_allocObject();
    memcpy((v15 + 16), (v0 + 1496), 0xA0uLL);
    v16 = *(v0 + 1672);
    *(v15 + 176) = *(v0 + 1656);
    *(v15 + 192) = v16;
    *(v15 + 208) = *(v0 + 1688);
    *(v15 + 216) = v9;
    v17 = swift_allocObject();
    *(v0 + 2176) = v17;
    *(v17 + 16) = &unk_227D5EB28;
    *(v17 + 24) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9838, &qword_227D5EB40);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 16);
  }
}

uint64_t sub_227C59A58()
{
  OUTLINED_FUNCTION_6();
  v1[273] = v0;
  if (v0)
  {
    v2 = v1[269];
    v3 = v1[266];

    v4 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200920](v4, v5, v6, v1 + 212);
  }

  else
  {
    v1[274] = v1[249];
    sub_227D4CE58();
    v7 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200930](v7);
  }
}

uint64_t sub_227C59B0C()
{
  OUTLINED_FUNCTION_6();
  v1[275] = v0;
  if (v0)
  {
    v2 = v1[274];
    v3 = v1[269];
    v4 = v1[266];

    v5 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200920](v5, v6, v7, v1 + 238);
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_227C59BC0()
{
  v1 = v0[275];
  v2 = v0[269];
  v3 = v0[266];
  v4 = v0[255];
  v0[237] = v0[274];
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 237;
  v6 = sub_227D4CE58();
  v7 = sub_227C5F78C(v6, sub_227C5FE20, v5);
  v0[276] = v7;

  v0[243] = v7;
  sub_227D4CE58();
  v8 = OUTLINED_FUNCTION_57_0();
  v0[277] = sub_227C5A244(v8, v9, v2, v10);

  v11 = OUTLINED_FUNCTION_31_5();

  return MEMORY[0x282200920](v11, v12, v13, v0 + 250);
}

uint64_t sub_227C59D14()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[276];
  v2 = v0[272];
  v3 = v0[271];
  v4 = v0[265];

  v5 = v0[237];

  OUTLINED_FUNCTION_115();
  v7 = v0[277];

  return v6(v7);
}

uint64_t sub_227C59DAC()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 217);
  v1 = v0[270];
  v2 = v0[265];

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227C59E58()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[272];
  v2 = v0[271];

  v3 = v0[273];
  v4 = v0[265];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227C59F10()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[272];
  v2 = v0[271];

  v3 = v0[275];
  v4 = v0[265];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t GameLibraryAggregateService.describe2(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C5A024()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  v2 = v0[2];
  sub_227D4CE58();
  sub_227D4A438();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_59_6(v3);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C5A0BC()
{
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = v2[7];
  *v4 = *v1;
  *(v3 + 64) = v0;

  v6 = v2[6];
  v7 = v2[4];
  v8 = OUTLINED_FUNCTION_537(v2[5]);
  v9(v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_164();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C5A244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v61 = a4;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v57 - v13;
  v64 = sub_227D4CAB8();
  v14 = *(v64 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v64);
  v68 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GameLibraryMetadata(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v58 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9940, &unk_227D5EDF0);
  v67 = *(v20 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v57 - v22;
  v24 = *(a1 + 16);
  if (!v24)
  {

    return MEMORY[0x277D84F90];
  }

  v62 = a3;
  v77 = MEMORY[0x277D84F90];
  sub_227C5FB1C();
  v25 = v77;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v27 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v63 = (v14 + 8);
  v66 = *(v26 + 72);
  *&v28 = 138412290;
  v57 = v28;
  do
  {
    v29 = sub_227D4A6A8();
    if (v5)
    {
      sub_227D4AA58();
      v31 = v5;
      v32 = sub_227D4CA98();
      v33 = sub_227D4D438();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = v57;
        v36 = v5;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_227B0D000, v32, v33, "Game is missing bundleID: %@", v34, 0xCu);
        sub_227B1DE58(v35, &qword_27D7E68C8, &qword_227D4F740);
        MEMORY[0x22AAA7130](v35, -1, -1);
        MEMORY[0x22AAA7130](v34, -1, -1);
      }

      else
      {
      }

      (*v63)(v68, v64);
      v44 = sub_227D49618();
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v44);
      v5 = 0;
      goto LABEL_27;
    }

    v38 = v29;
    v39 = v30;
    v76 = 0;
    v40 = 0uLL;
    memset(v75, 0, sizeof(v75));
    v41 = *v60;
    if (!*v60 || !*(v41 + 16))
    {
      v74 = 0;
LABEL_14:
      v73[0] = v40;
      v73[1] = v40;
      goto LABEL_15;
    }

    v42 = sub_227B2664C(v29, v30);
    if ((v43 & 1) == 0)
    {
      v74 = 0;
      v40 = 0uLL;
      goto LABEL_14;
    }

    sub_227B11EE8(*(v41 + 56) + 40 * v42, v73);
LABEL_15:
    v45 = type metadata accessor for PurchaseHistoryGame();
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v45);
    v46 = v62;
    if (*(v62 + 16) && (v47 = sub_227B2664C(v38, v39), (v48 & 1) != 0))
    {
      sub_227B11EE8(*(v46 + 56) + 40 * v47, v71);
      v49 = 0uLL;
    }

    else
    {
      v72 = 0;
      v49 = 0uLL;
      memset(v71, 0, sizeof(v71));
    }

    v50 = *v61;
    if (!*v61 || !*(v50 + 16))
    {
      v70 = 0;
LABEL_25:
      v69[1] = v49;
      v69[0] = v49;
      goto LABEL_26;
    }

    v51 = sub_227B2664C(v38, v39);
    if ((v52 & 1) == 0)
    {
      v70 = 0;
      v49 = 0uLL;
      goto LABEL_25;
    }

    sub_227B11EE8(*(v50 + 56) + 40 * v51, v69);
LABEL_26:
    v53 = sub_227D492A8();
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v53);
    v54 = v58;
    sub_227C683B8(v38, v39, v75, v73, v71, v69, v58, 0);
    sub_227C6D028();
    sub_227C608D8(v54, type metadata accessor for GameLibraryMetadata);
LABEL_27:
    v77 = v25;
    v55 = *(v25 + 16);
    if (v55 >= *(v25 + 24) >> 1)
    {
      sub_227C5FB1C();
      v25 = v77;
    }

    *(v25 + 16) = v55 + 1;
    sub_227C63524(v23, v25 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v55, &qword_27D7E9940, &unk_227D5EDF0);
    v27 += v66;
    --v24;
  }

  while (v24);

  return v25;
}

uint64_t sub_227C5A914(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, unint64_t, uint64_t))
{
  v8 = v6;
  v30 = a1;
  v31 = a2;
  v28 = a4;
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = OUTLINED_FUNCTION_10_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
    return v19;
  }

  v32 = MEMORY[0x277D84F90];
  v27 = a6;
  a6(0, v18, 0);
  v19 = v32;
  for (i = a3 + 32; ; i += 40)
  {
    v30(i);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v32 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      v27(v21 > 1, v22 + 1, 1);
      v19 = v32;
    }

    *(v19 + 16) = v22 + 1;
    v23 = *(v13 + 80);
    OUTLINED_FUNCTION_19();
    sub_227C63524(v17, v19 + v24 + *(v13 + 72) * v22, v28, v29);
    if (!--v18)
    {
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227C5AAB0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 89) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return OUTLINED_FUNCTION_22(sub_227C5AACC);
}

uint64_t sub_227C5AACC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 88) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_227C5ABA4;
  v8 = *(v0 + 89);

  return sub_227C55C0C();
}

uint64_t sub_227C5ABA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 80) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v13(v0);
  }
}

uint64_t sub_227C5ACBC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t sub_227C5ACE0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return OUTLINED_FUNCTION_22(sub_227C5ACFC);
}

uint64_t sub_227C5ACFC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_227BD04A4;
  v7 = *(v0 + 40);

  return sub_227C551F8(v5, v7, v4, v3);
}

uint64_t sub_227C5ADBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227C5AEA8;

  return v6();
}

uint64_t sub_227C5AEA8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_227C5AF9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 1;
  }

  if (!*(v3 + 16) || (v4 = sub_227B2664C(a1, a2), (v5 & 1) == 0))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_8;
  }

  sub_227B11EE8(*(v3 + 56) + 40 * v4, &v19);
  if (!*(&v20 + 1))
  {
LABEL_8:
    sub_227B1DE58(&v19, &qword_27D7E9950, &qword_227D5EE10);
    return 1;
  }

  v6 = *(&v20 + 1);
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  OUTLINED_FUNCTION_6_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  (*(v9 + 16))(v14 - v13);
  sub_227B1DE58(&v19, &qword_27D7E9950, &qword_227D5EE10);
  v16 = (*(v7 + 64))(v6, v7);
  (*(v9 + 8))(v15, v6);
  if (!v16)
  {
    return 1;
  }

  v17 = [v16 BOOLValue];

  return v17;
}

uint64_t GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_55_6(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v14 = sub_227D49698();
  v0[11] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_121();
  v0[14] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v21 = sub_227D49C48();
  v0[16] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[17] = v22;
  v24 = *(v23 + 64);
  v0[18] = OUTLINED_FUNCTION_121();
  v0[19] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[21] = v26;
  v28 = *(v27 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v29 = sub_227D4A1F8();
  v0[23] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[24] = v30;
  v32 = *(v31 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227C5B370()
{
  OUTLINED_FUNCTION_51_0();
  v4 = OUTLINED_FUNCTION_37_3();
  v5(v4);
  sub_227D4A1C8();
  sub_227C60738(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_227B1DE58(v1[15], &qword_27D7E9848, &unk_227D5EB68);
  }

  else
  {
    v6 = v1[25];
    v8 = v1[18];
    v7 = v1[19];
    v9 = v1[16];
    v10 = v1[17];
    v11 = v1[15];
    v12 = OUTLINED_FUNCTION_12_11();
    v13(v12);
    v14 = OUTLINED_FUNCTION_6_14();
    v15(v14);
    sub_227D4A1E8();
    v16 = OUTLINED_FUNCTION_33_7();
    v17(v16);
  }

  v18 = v1[10];
  v19 = v1[11];
  sub_227C60738(v1[4], v18, &qword_27D7E9840, &qword_227D5EB60);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_227B1DE58(v1[10], &qword_27D7E9840, &qword_227D5EB60);
  }

  else
  {
    v20 = v1[25];
    v21 = v1[13];
    v18 = v1[14];
    v22 = v1[11];
    v23 = v1[12];
    v24 = v1[10];
    v25 = OUTLINED_FUNCTION_12_11();
    v26(v25);
    v27 = OUTLINED_FUNCTION_6_14();
    v28(v27);
    sub_227D4A178();
    v29 = OUTLINED_FUNCTION_33_7();
    v30(v29);
  }

  v31 = OUTLINED_FUNCTION_62_6();
  sub_227C60738(v31, v18, &qword_27D7E6908, &unk_227D4E690);
  sub_227D4A1A8();
  sub_227D4A198();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[26] = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_58_7(v32);
  OUTLINED_FUNCTION_164();

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227C5B580()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C5B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  v12 = OUTLINED_FUNCTION_38_9();
  v13(v12);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227C5B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  v13 = OUTLINED_FUNCTION_38_9();
  v14(v13);

  OUTLINED_FUNCTION_18();
  v15 = *(v12 + 216);
  OUTLINED_FUNCTION_135_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t GameLibraryAggregateService.listGameHistories(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9850, &qword_227D5EB80);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49CB8();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9858, &qword_227D5EB88);
  v1[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v19 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[19] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[20] = v23;
  v25 = *(v24 + 64);
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v26 = sub_227D49678();
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  v1[23] = OUTLINED_FUNCTION_30();
  v29 = sub_227D49698();
  v1[24] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[25] = v30;
  v32 = *(v31 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v33 = sub_227D49C48();
  v1[27] = v33;
  OUTLINED_FUNCTION_10_0(v33);
  v1[28] = v34;
  v36 = *(v35 + 64);
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_227C5BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  v19 = v18[29];
  v20 = v18[30];
  v21 = v18[27];
  v22 = v18[28];
  v23 = v18[26];
  v24 = v18[23];
  v25 = v18[6];
  sub_227D4A1D8();
  sub_227D4A168();
  (*(v22 + 16))(v19, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9860, &qword_227D5EB90);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_227D4E520;
  v27 = *sub_227C73008();
  v18[3] = v26;
  *(v26 + 32) = v27;
  sub_227C5FE28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9870, &qword_227D5EB98);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v28, v29, &qword_227D5EB98);
  sub_227D4D5B8();
  v63 = v18[2];
  LOBYTE(a14) = 0;
  sub_227D49688();
  sub_227C730A8();
  v30 = v18[30];
  v32 = v18[21];
  v31 = v18[22];
  v33 = v18[19];
  v34 = v18[20];
  v61 = v18[18];
  v35 = v18[6];
  v36 = v18[7];
  v37 = a12;
  sub_227D4A1B8();
  sub_227D4A158();
  v38 = *(v34 + 16);
  v39 = OUTLINED_FUNCTION_52_6();
  v40(v39);
  LOBYTE(a12) = 0;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v32, v41, v42, v43, v44, v61);
  v45 = v36[8];
  v46 = v36[9];
  OUTLINED_FUNCTION_85_5(v36 + 5);
  v47 = *(v46 + 8);
  OUTLINED_FUNCTION_36_0();
  v62 = v48 + *v48;
  v50 = *(v49 + 4);
  v51 = swift_task_alloc();
  v18[31] = v51;
  *v51 = v18;
  v51[1] = sub_227C5BE08;
  OUTLINED_FUNCTION_18_11(v18[18]);
  OUTLINED_FUNCTION_90();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, v46 + 8, v62, a12, v37, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5BE08()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C5BF10()
{
  v1 = v0;
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v66 = v1[16];
  v61 = v1[17];
  v63 = v1[15];
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  v11 = sub_227C5DEDC(sub_227C5FE7C, v10, v3);

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  *(v13 + 16) = v5;
  v14 = sub_227C5A914(sub_227C5FEA8, v13, v11, &qword_27D7E9850, &qword_227D5EB80, sub_227C5FF2C);

  v1[4] = v14;
  v15 = (v1 + 4);
  swift_getKeyPath();
  sub_227D49668();
  OUTLINED_FUNCTION_26_7();
  sub_227C634DC(v16, v17);
  sub_227D48ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9888, &qword_227D5EBC0);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v18, v19, &qword_227D5EBC0);
  OUTLINED_FUNCTION_32_6(&qword_27D7E9898, &qword_27D7E9858, &qword_227D5EB88);
  OUTLINED_FUNCTION_278();
  v20 = sub_227D4D108();
  (*(v66 + 8))(v61, v63);

  v21 = *(v20 + 16);
  if (v21)
  {
    v15 = v1[13];
    v22 = v1[10];
    v67 = v1[9];
    v69 = MEMORY[0x277D84F90];
    sub_227C5FED4();
    v23 = v69;
    v24 = *(v22 + 80);
    OUTLINED_FUNCTION_19();
    v26 = v20 + v25;
    v64 = *(v22 + 72);
    v27 = v1;
    do
    {
      v28 = v1[14];
      v29 = v1[11];
      sub_227C60738(v26, v29, &qword_27D7E9850, &qword_227D5EB80);
      v30 = *(v67 + 44);
      v31 = OUTLINED_FUNCTION_74_6();
      v32(v31);
      sub_227B1DE58(v29, &qword_27D7E9850, &qword_227D5EB80);
      v33 = *(v69 + 16);
      if (v33 >= *(v69 + 24) >> 1)
      {
        sub_227C5FED4();
      }

      v34 = v1[14];
      v35 = v1[12];
      *(v69 + 16) = v33 + 1;
      OUTLINED_FUNCTION_17_13();
      (*(v15 + 32))(v36 + v37 * v33);
      v26 += v64;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v27 = v1;
  }

  v38 = v27[6];
  v39 = sub_227D4A188();
  if ((v40 & 1) == 0)
  {
    if (v39 < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_227C5C824(v39, v23, sub_227C6303C);
      OUTLINED_FUNCTION_72_4();
    }

    v41 = OUTLINED_FUNCTION_57_0();
    sub_227C60608(v41, v42, v15, 0);
    swift_unknownObjectRelease();
  }

  v43 = v27[30];
  v44 = v27[28];
  v45 = v27[25];
  v55 = v27[26];
  v56 = v27[29];
  v53 = v27[27];
  v54 = v27[24];
  v57 = v27[23];
  v58 = v27[22];
  v59 = v27[21];
  v60 = v27[18];
  v62 = v27[17];
  v65 = v27[14];
  v46 = v27[12];
  v68 = v27[11];
  v47 = v27[8];
  v48 = v27[5];
  v49 = sub_227D4A958();
  OUTLINED_FUNCTION_81_5(v49);
  OUTLINED_FUNCTION_27_9();
  sub_227C634DC(v50, 0);
  OUTLINED_FUNCTION_30_10(&qword_27D7E98A8);
  OUTLINED_FUNCTION_64_3();
  sub_227D4A948();
  (*(v44 + 8))(v43, v53);
  (*(v45 + 8))(v55, v54);

  OUTLINED_FUNCTION_18();

  return v51();
}

uint64_t sub_227C5C4B0()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v8, v9);
  v10 = OUTLINED_FUNCTION_42();
  v11(v10);
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_57_0();
  v14(v13);
  v15 = v0[32];
  v17 = v0[29];
  v16 = v0[30];
  OUTLINED_FUNCTION_61_7();
  v18 = v0[14];
  v24 = v0[11];
  v25 = v0[8];
  v20 = OUTLINED_FUNCTION_71_5(v19);
  v21(v20);

  OUTLINED_FUNCTION_18();

  return v22();
}

void sub_227C5C5F0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v37 = v2;
  v36 = sub_227D49CB8();
  v3 = OUTLINED_FUNCTION_62_0(v36);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = sub_227D49678();
  OUTLINED_FUNCTION_6_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for AnySortableKey();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = *(v1 + 3);
  v26 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(v1, v25);
  sub_227D49688();
  (*(v26 + 88))(v17, v25, v26);
  (*(v11 + 8))(v17, v9);
  v27 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
  v28 = *(v27 + 64);
  v29 = OUTLINED_FUNCTION_278();
  v30(v29);
  v31 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
  v32 = *(v31 + 16);
  v33 = OUTLINED_FUNCTION_278();
  v34(v33);
  OUTLINED_FUNCTION_27_9();
  sub_227C634DC(v35, v1);
  OUTLINED_FUNCTION_30_10(&qword_27D7E98A8);
  sub_227C7280C(v24, v8, v36, v37);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C5C824(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_227C63198(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3(0);

      return v7;
    }
  }

  __break(1u);
  return result;
}

size_t sub_227C5C8C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C5F5E4(*(a1 + 16), 0, &qword_27D7E98F0, &qword_227D5EDB0, MEMORY[0x277D0CDA0]);
  v4 = *(sub_227D49BA8() - 8);
  v5 = sub_227C631E4(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_227B223D4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_55_6(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v14 = sub_227D49698();
  v0[11] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[12] = v15;
  v17 = *(v16 + 64);
  v0[13] = OUTLINED_FUNCTION_121();
  v0[14] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v21 = sub_227D49C48();
  v0[16] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v0[17] = v22;
  v24 = *(v23 + 64);
  v0[18] = OUTLINED_FUNCTION_121();
  v0[19] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[21] = v26;
  v28 = *(v27 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v29 = sub_227D4A1F8();
  v0[23] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v0[24] = v30;
  v32 = *(v31 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227C5CBDC()
{
  OUTLINED_FUNCTION_51_0();
  v4 = OUTLINED_FUNCTION_37_3();
  v5(v4);
  sub_227D4A1C8();
  sub_227C60738(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_227B1DE58(v1[15], &qword_27D7E9848, &unk_227D5EB68);
  }

  else
  {
    v6 = v1[25];
    v8 = v1[18];
    v7 = v1[19];
    v9 = v1[16];
    v10 = v1[17];
    v11 = v1[15];
    v12 = OUTLINED_FUNCTION_12_11();
    v13(v12);
    v14 = OUTLINED_FUNCTION_6_14();
    v15(v14);
    sub_227D4A1E8();
    v16 = OUTLINED_FUNCTION_33_7();
    v17(v16);
  }

  v18 = v1[10];
  v19 = v1[11];
  sub_227C60738(v1[4], v18, &qword_27D7E9840, &qword_227D5EB60);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_227B1DE58(v1[10], &qword_27D7E9840, &qword_227D5EB60);
  }

  else
  {
    v20 = v1[25];
    v21 = v1[13];
    v18 = v1[14];
    v22 = v1[11];
    v23 = v1[12];
    v24 = v1[10];
    v25 = OUTLINED_FUNCTION_12_11();
    v26(v25);
    v27 = OUTLINED_FUNCTION_6_14();
    v28(v27);
    sub_227D4A178();
    v29 = OUTLINED_FUNCTION_33_7();
    v30(v29);
  }

  v31 = OUTLINED_FUNCTION_62_6();
  sub_227C60738(v31, v18, &qword_27D7E6908, &unk_227D4E690);
  sub_227D4A1A8();
  sub_227D4A198();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[26] = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_58_7(v32);
  OUTLINED_FUNCTION_164();

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227C5CDEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t GameLibraryAggregateService.listGames(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98B0, &qword_227D5EBD8);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98B8, &qword_227D5EBE0);
  v1[13] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v19 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[17] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[18] = v23;
  v25 = *(v24 + 64);
  v1[19] = OUTLINED_FUNCTION_121();
  v1[20] = swift_task_alloc();
  v26 = sub_227D49678();
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v29 = sub_227D49698();
  v1[22] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[23] = v30;
  v32 = *(v31 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v33 = sub_227D49C48();
  v1[25] = v33;
  OUTLINED_FUNCTION_10_0(v33);
  v1[26] = v34;
  v36 = *(v35 + 64);
  v1[27] = OUTLINED_FUNCTION_121();
  v1[28] = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_227C5D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  v20 = v18[27];
  v19 = v18[28];
  v21 = v18[25];
  v22 = v18[26];
  v23 = v18[24];
  v24 = v18[21];
  v25 = v18[4];
  sub_227D4A1D8();
  sub_227D4A168();
  v26 = OUTLINED_FUNCTION_65_4();
  v27(v26);
  LOBYTE(a14) = 1;
  sub_227D49688();
  sub_227C730A8();
  v28 = v18[28];
  v30 = v18[19];
  v29 = v18[20];
  v31 = v18[17];
  v32 = v18[18];
  v33 = v18[4];
  v34 = v18[5];
  v59 = a12;
  v60 = v18[16];
  sub_227D4A1B8();
  sub_227D4A158();
  v35 = *(v32 + 16);
  v36 = OUTLINED_FUNCTION_52_6();
  v37(v36);
  LOBYTE(a12) = 1;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v30, v38, v39, v40, v41, v42);
  v43 = v34[8];
  v44 = v34[9];
  OUTLINED_FUNCTION_85_5(v34 + 5);
  v45 = *(v44 + 8);
  OUTLINED_FUNCTION_36_0();
  v61 = v46 + *v46;
  v48 = *(v47 + 4);
  v49 = swift_task_alloc();
  v18[29] = v49;
  *v49 = v18;
  v49[1] = sub_227C5D45C;
  OUTLINED_FUNCTION_18_11(v18[16]);
  OUTLINED_FUNCTION_90();

  return v53(v50, v51, v52, v53, v54, v55, v56, v57, a9, v44 + 8, v61, a12, v59, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5D45C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C5D564()
{
  v1 = v0;
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[24];
  v6 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v67 = v1[14];
  v62 = v1[15];
  v64 = v1[13];
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  v11 = sub_227C5DEDC(sub_227C63574, v10, v3);

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = swift_task_alloc();
  *(v13 + 16) = v5;
  v14 = sub_227C5A914(sub_227C6070C, v13, v11, &qword_27D7E98B0, &qword_227D5EBD8, sub_227C5FF6C);

  v1[2] = v14;
  v15 = (v1 + 2);
  swift_getKeyPath();
  sub_227D49668();
  OUTLINED_FUNCTION_26_7();
  sub_227C634DC(v16, v17);
  sub_227D48ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98C0, &qword_227D5EC08);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v18, v19, &qword_227D5EC08);
  OUTLINED_FUNCTION_32_6(&qword_27D7E98D0, &qword_27D7E98B8, &qword_227D5EBE0);
  OUTLINED_FUNCTION_278();
  v20 = sub_227D4D108();
  (*(v67 + 8))(v62, v64);

  v21 = *(v20 + 16);
  if (v21)
  {
    v15 = v1[11];
    v22 = v1[8];
    v68 = v1[7];
    v70 = MEMORY[0x277D84F90];
    sub_227C11484();
    v23 = v70;
    v24 = *(v22 + 80);
    OUTLINED_FUNCTION_19();
    v26 = v20 + v25;
    v65 = *(v22 + 72);
    v27 = v1;
    do
    {
      v28 = v1[12];
      v29 = v1[9];
      sub_227C60738(v26, v29, &qword_27D7E98B0, &qword_227D5EBD8);
      v30 = *(v68 + 44);
      v31 = OUTLINED_FUNCTION_74_6();
      v32(v31);
      sub_227B1DE58(v29, &qword_27D7E98B0, &qword_227D5EBD8);
      v33 = *(v70 + 16);
      if (v33 >= *(v70 + 24) >> 1)
      {
        sub_227C11484();
      }

      v34 = v1[12];
      v35 = v1[10];
      *(v70 + 16) = v33 + 1;
      OUTLINED_FUNCTION_17_13();
      (*(v15 + 32))(v36 + v37 * v33);
      v26 += v65;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v27 = v1;
  }

  v38 = v27[4];
  v39 = sub_227D4A188();
  if ((v40 & 1) == 0)
  {
    if (v39 < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_227C5C824(v39, v23, sub_227C630E4);
      OUTLINED_FUNCTION_72_4();
    }

    v41 = OUTLINED_FUNCTION_57_0();
    sub_227C60788(v41, v42, v15, 0);
    swift_unknownObjectRelease();
  }

  v43 = v27[28];
  v44 = v27[26];
  v45 = v27[23];
  v56 = v27[24];
  v57 = v27[27];
  v54 = v27[25];
  v55 = v27[22];
  v58 = v27[21];
  v59 = v27[20];
  v60 = v27[19];
  v61 = v27[16];
  v63 = v27[15];
  v66 = v27[12];
  v53 = v27[10];
  v69 = v27[9];
  v46 = v27[6];
  v47 = v27[3];
  v48 = sub_227D4A958();
  OUTLINED_FUNCTION_81_5(v48);
  OUTLINED_FUNCTION_14_4();
  sub_227B15A74(v49, &qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_13_4();
  sub_227B15A74(v50, &qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_64_3();
  sub_227D4A948();
  (*(v44 + 8))(v43, v54);
  (*(v45 + 8))(v56, v55);

  OUTLINED_FUNCTION_18();

  return v51();
}

uint64_t sub_227C5DB14()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v8, v9);
  v10 = OUTLINED_FUNCTION_42();
  v11(v10);
  v12 = *(v3 + 8);
  v13 = OUTLINED_FUNCTION_57_0();
  v14(v13);
  v15 = v0[30];
  v17 = v0[27];
  v16 = v0[28];
  OUTLINED_FUNCTION_68_6();
  v18 = v0[12];
  v24 = v0[9];
  v25 = v0[6];
  v20 = OUTLINED_FUNCTION_71_5(v19);
  v21(v20);

  OUTLINED_FUNCTION_18();

  return v22();
}

void sub_227C5DC54()
{
  OUTLINED_FUNCTION_11();
  v27 = v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v3 = OUTLINED_FUNCTION_62_0(v26);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_227D49678();
  OUTLINED_FUNCTION_6_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for AnySortableKey();
  v18 = OUTLINED_FUNCTION_5(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_60_6();
  sub_227D49688();
  (*(v1 + 88))(v16, v0, v1);
  (*(v10 + 8))(v16, v8);
  OUTLINED_FUNCTION_60_6();
  (*(v1 + 8))(v0, v1);
  OUTLINED_FUNCTION_60_6();
  (*(v1 + 16))(v0, v1);
  OUTLINED_FUNCTION_14_4();
  sub_227B15A74(v24, &qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_13_4();
  sub_227B15A74(v25, &qword_27D7E6888, &unk_227D4E630);
  sub_227C7280C(v23, v7, v26, v27);
  OUTLINED_FUNCTION_8_1();
}

double sub_227C5DE88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_227C56ECC(a1))
  {
    sub_227B11EE8(a1, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_227C5DEDC(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  result = sub_227D4CE58();
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v22 = v4;
  v17 = a1;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      sub_227B11EE8(*(v4 + 56) + 40 * (__clz(__rbit64(v9)) | (v12 << 6)), v21);
      a1(&v18, v21);
      if (v3)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
      if (v19)
      {
        sub_227B132F0(&v18, v20);
        sub_227B132F0(v20, &v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_227C5F3B0(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_227C5F3B0((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        result = sub_227B132F0(&v18, &v13[5 * v16 + 4]);
        v4 = v22;
        a1 = v17;
      }

      else
      {
        result = sub_227B1DE58(&v18, &qword_27D7E9928, &qword_227D5EDE0);
      }

      v9 &= v9 - 1;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v21);

LABEL_19:

    return v13;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t GameLibraryAggregateService.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98D8, &qword_227D5EC18);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v6 = type metadata accessor for GameLibraryMetadata(0);
  v1[15] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v10 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[21] = v14;
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_121();
  v1[23] = swift_task_alloc();
  v17 = sub_227D49678();
  v1[24] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[25] = v18;
  v20 = *(v19 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v21 = sub_227D49C48();
  v1[27] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[28] = v22;
  v24 = *(v23 + 64);
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227C5E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  v20 = v18[29];
  v19 = v18[30];
  v21 = v18[27];
  v22 = v18[28];
  v24 = v18[25];
  v23 = v18[26];
  v25 = v18[24];
  v26 = v18[12];
  sub_227D494F8();
  v27 = OUTLINED_FUNCTION_65_4();
  v28(v27);
  LOBYTE(a14) = 1;
  (*(v24 + 104))(v23, *MEMORY[0x277D0CAD0], v25);
  sub_227C730A8();
  v29 = v18[30];
  v31 = v18[22];
  v30 = v18[23];
  v32 = v18[20];
  v33 = v18[21];
  v60 = v18[19];
  v34 = v18[12];
  v35 = v18[13];
  v36 = a12;
  sub_227D494E8();
  sub_227D494D8();
  v37 = *(v33 + 16);
  v38 = OUTLINED_FUNCTION_52_6();
  v39(v38);
  LOBYTE(a12) = 0;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v31, v40, v41, v42, v43, v60);
  v44 = v35[8];
  v45 = v35[9];
  OUTLINED_FUNCTION_85_5(v35 + 5);
  v46 = *(v45 + 8);
  OUTLINED_FUNCTION_36_0();
  v61 = v47 + *v47;
  v49 = *(v48 + 4);
  v50 = swift_task_alloc();
  v18[31] = v50;
  *v50 = v18;
  v50[1] = sub_227C5E548;
  OUTLINED_FUNCTION_18_11(v18[19]);
  OUTLINED_FUNCTION_90();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, v45 + 8, v61, a12, v36, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5E548()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C5E650()
{
  v63 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  v9 = sub_227C5DEDC(sub_227C63574, v8, v1);
  v60 = v2;

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v7, v10);
  (*(v6 + 8))(v4, v5);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = v9 + 32;
    v14 = *(v0 + 128);
    do
    {
      v15 = *(v0 + 112);
      v16 = *(v0 + 120);
      sub_227B11EE8(v13, v0 + 16);
      sub_227B132F0((v0 + 16), v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
      v17 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v15, v17 ^ 1u, 1, v16);
      if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
      {
        sub_227B1DE58(*(v0 + 112), &qword_27D7E98D8, &qword_227D5EC18);
      }

      else
      {
        sub_227C60930(*(v0 + 112), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_227C5F4E8(0, *(v12 + 16) + 1, 1, v12, &qword_27D7E98E8, &unk_227D5EDA0, type metadata accessor for GameLibraryMetadata, type metadata accessor for GameLibraryMetadata);
          v12 = v24;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_227C5F4E8(v18 > 1, v19 + 1, 1, v12, &qword_27D7E98E8, &unk_227D5EDA0, type metadata accessor for GameLibraryMetadata, type metadata accessor for GameLibraryMetadata);
          v12 = v25;
        }

        v20 = *(v0 + 136);
        *(v12 + 16) = v19 + 1;
        OUTLINED_FUNCTION_17_13();
        sub_227C60930(v23, v21 + v22 * v19);
      }

      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v26 = *(v12 + 16);
  if (v26)
  {
    v27 = *(v0 + 128);
    v28 = v12 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v27 + 72);
    v30 = MEMORY[0x277D84F90];
    while (1)
    {
      v31 = *(v0 + 144);
      sub_227C60874(v28, v31);
      v32 = sub_227C6CEA0();
      result = sub_227C608D8(v31, type metadata accessor for GameLibraryMetadata);
      v34 = *(v32 + 16);
      v35 = *(v30 + 16);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > *(v30 + 24) >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        sub_227C5F4E8(isUniquelyReferenced_nonNull_native, v38, 1, v30, &qword_27D7E98F0, &qword_227D5EDB0, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDA0]);
        v30 = v39;
      }

      if (*(v32 + 16))
      {
        v40 = (*(v30 + 24) >> 1) - *(v30 + 16);
        result = sub_227D49BA8();
        v41 = *(result - 8);
        if (v40 < v34)
        {
          goto LABEL_40;
        }

        v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v43 = *(v41 + 72);
        swift_arrayInitWithCopy();

        if (v34)
        {
          v44 = *(v30 + 16);
          v45 = __OFADD__(v44, v34);
          v46 = v44 + v34;
          if (v45)
          {
            goto LABEL_41;
          }

          *(v30 + 16) = v46;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_39;
        }
      }

      v28 += v29;
      if (!--v26)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
LABEL_31:
    v47 = sub_227C5ECA4(v30);
    v62[0] = sub_227C5C8C0(v47);
    sub_227D4CE58();
    sub_227C60560(v62);
    if (v60)
    {
    }

    else
    {
      v49 = *(v0 + 232);
      v48 = *(v0 + 240);
      v50 = *(v0 + 216);
      v51 = *(v0 + 224);
      v52 = *(v0 + 208);
      v54 = *(v0 + 176);
      v53 = *(v0 + 184);
      v55 = *(v0 + 152);
      v58 = *(v0 + 144);
      v59 = *(v0 + 136);
      v61 = *(v0 + 112);

      v56 = v62[0];
      (*(v51 + 8))(v48, v50);

      OUTLINED_FUNCTION_115();

      return v57(v56);
    }
  }

  return result;
}

uint64_t sub_227C5EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  v13 = v12[30];
  v14 = v12[27];
  v15 = v12[28];
  v16 = v12[23];
  v17 = v12[20];
  v18 = v12[21];
  v19 = v12[19];
  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v20, v21);
  v22 = OUTLINED_FUNCTION_42();
  v23(v22);
  v24 = *(v15 + 8);
  v25 = OUTLINED_FUNCTION_57_0();
  v26(v25);
  v27 = v12[32];
  v29 = v12[29];
  v28 = v12[30];
  v30 = v12[26];
  OUTLINED_FUNCTION_83_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_227C5ECA4(uint64_t a1)
{
  v2 = sub_227D49BA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0]);
  v12 = MEMORY[0x22AAA60B0](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_227C60298(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

uint64_t sub_227C5EE64()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe(games:)();
}

uint64_t sub_227C5EEE8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe2(games:)();
}

uint64_t sub_227C5EF6C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C5EFF0()
{
  OUTLINED_FUNCTION_150_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227C5F094()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227C5F124()
{
  OUTLINED_FUNCTION_150_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227C5F1C8()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227C5F258()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryAggregateService.getAvailableGameGenres(with:)();
}

uint64_t GameLibraryAggregateService.purchaseHistory()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_22(sub_227C5F2F4);
}

uint64_t sub_227C5F2F4()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[4] = v3;
  *v3 = v4;
  v3[1] = sub_227B2F79C;
  v5 = v0[2];

  return PurchaseHistoryProviderProtocol.purchaseHistory()();
}

void *sub_227C5F3B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9930, &qword_227D5EDE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_227C5F4E8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_227C5F5E4(v15, v12, a5, a6, a7);
  v17 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (a1)
  {
    sub_227C5F6D8(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_227C5F5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_10_0(v8);
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

uint64_t sub_227C5F6D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_186_1();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_62_0(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_49();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_49();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_227C5F78C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *), uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a3 = sub_227C5FA8C(v13, v8, v6, a2);
      MEMORY[0x22AAA7130](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_227B26E40(0, v8, v9);
  v10 = sub_227C5F910(v9, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_227C5F910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_227B11EE8(*(a3 + 56) + 40 * v14, v22);
    sub_227D4CE58();
    LOBYTE(v16) = v23(v16, v17, v22);
    __swift_destroy_boxed_opaque_existential_0(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_227C58064(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_227C58064(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_227C5FA8C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_227C5F910(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_227C5FB1C()
{
  v1 = *v0;
  sub_227C5FFAC();
  *v0 = v2;
}

uint64_t sub_227C5FB94()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_57_7(v3);

  return sub_227C5AAB0(v5, v6, v7);
}

uint64_t sub_227C5FC18()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_66_6();
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];

  v4 = v0[25];

  v5 = v0[26];

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_227C5FD08()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 216);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_57_7(v3);

  return sub_227C5ACE0(v5, v6, v7);
}

uint64_t sub_227C5FD8C()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_31(v4);

  return v7(v6);
}

unint64_t sub_227C5FE28()
{
  result = qword_27D7E9868;
  if (!qword_27D7E9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9868);
  }

  return result;
}

void sub_227C5FED4()
{
  v1 = *v0;
  sub_227C60124();
  *v0 = v2;
}

void sub_227C5FF2C()
{
  v1 = *v0;
  sub_227C5FFAC();
  *v0 = v2;
}

void sub_227C5FF6C()
{
  v1 = *v0;
  sub_227C5FFAC();
  *v0 = v2;
}

void sub_227C5FFAC()
{
  OUTLINED_FUNCTION_11();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_154();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_10_0(v18);
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_158();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227B638F8(v9 + v25, v16, v21 + v25, v7, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

void sub_227C60124()
{
  OUTLINED_FUNCTION_11();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_154();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = v7(0);
  OUTLINED_FUNCTION_10_0(v18);
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_158();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227C5F6D8(v9 + v25, v16, v21 + v25, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

BOOL sub_227C60298(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_227D49BA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0]);
  v30 = a2;
  v11 = sub_227D4CE98();
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
      sub_227C62864(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_227C634DC(&qword_27D7E9900, MEMORY[0x277D0CDA0]);
    v17 = sub_227D4CF38();
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

uint64_t sub_227C60560(uint64_t *a1)
{
  v2 = *(sub_227D49BA8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227C6347C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_227C60D74(v7);
  *a1 = v3;
  return result;
}

void sub_227C60608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_227C5F5E4(v5, 0, &qword_27D7E9918, &qword_227D5EDD0, MEMORY[0x277D0CE08]);
    if (v4 != a3)
    {
      v7 = *(sub_227D49CB8() - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_227C60738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_227C60788(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_227C577E4((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_227C60874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C608D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_62_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227C60930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of GameRestrictionsProviderProtocol.restrictedAppsIDs(from:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_36_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50(v10);
  *v11 = v12;
  v11[1] = sub_227C60AB0;

  return v14(v5, v3, v1);
}

uint64_t sub_227C60AB0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();

  return v7(v2);
}

uint64_t dispatch thunk of PurchaseHistoryProviderProtocol.fetch()()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_36_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  v11[1] = sub_227B355D0;

  return v14(v5, v3, v1);
}

uint64_t sub_227C60CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_227C60CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227C60D74(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
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
        sub_227D49BA8();
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227D49BA8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_227C611C4(v8, v9, a1, v4);
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
    return sub_227C60EA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227C60EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227D49BA8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_227D49B98();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_227D49B98() && v32 == v33)
        {
          break;
        }

        v35 = sub_227D4DA78();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227C611C4(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v8 = sub_227D49BA8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v149 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v149 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v149 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v167 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v150 = &v149 - v24;
  result = MEMORY[0x28223BE20](v23);
  v155 = &v149 - v28;
  v165 = a3;
  v29 = a3[1];
  v163 = v26;
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_116:
    v176 = *v153;
    if (!v176)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

  v168 = result;
  v172 = v27;
  v149 = a4;
  v30 = 0;
  v176 = v26 + 16;
  v174 = (v26 + 32);
  v175 = (v26 + 8);
  v31 = MEMORY[0x277D84F90];
  v156 = v16;
  v166 = v20;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v30 + 1 < v29)
    {
      v160 = v29;
      v34 = v30;
      v35 = *v165;
      v36 = *(v26 + 72);
      v162 = v30 + 1;
      v37 = &v35[v36 * v33];
      v38 = *(v26 + 16);
      v39 = v168;
      (v38)(v155, v37, v168);
      v154 = v34;
      v164 = v36;
      v173 = v35;
      v40 = &v35[v36 * v34];
      v41 = v150;
      v159 = v38;
      (v38)(v150, v40, v39);
      v42 = sub_227D49B98();
      v44 = v43;
      if (v42 == sub_227D49B98() && v44 == v45)
      {
        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_227D4DA78();
      }

      if (v5)
      {
        v147 = *v175;
        v148 = v168;
        (*v175)(v41, v168);
        v147(v155, v148);
      }

      v151 = v31;
      v152 = 0;
      v47 = *v175;
      v48 = v168;
      (*v175)(v41, v168);
      v158 = v47;
      result = (v47)(v155, v48);
      v49 = (v154 + 2);
      v50 = v164 * (v154 + 2);
      v51 = v173 + v50;
      v52 = v164 * v162;
      v53 = v173 + v164 * v162;
      v54 = v162;
      do
      {
        v55 = v49;
        v5 = v54;
        v31 = v52;
        v56 = v50;
        if (v49 >= v160)
        {
          break;
        }

        v170 = v54;
        v173 = v50;
        v57 = v168;
        v58 = v159;
        (v159)(v167, v51, v168);
        (v58)(v166, v53, v57);
        v59 = sub_227D49B98();
        v61 = v60;
        v63 = v59 == sub_227D49B98() && v61 == v62;
        v169 = v31;
        v64 = v63 ? 0 : sub_227D4DA78();
        v56 = v173;
        v5 = v170;

        v65 = v168;
        v66 = v158;
        v158(v166, v168);
        result = v66(v167, v65);
        v49 = v55 + 1;
        v51 = &v164[v51];
        v53 = &v164[v53];
        v54 = v5 + 1;
        v31 = v169;
        v52 = &v164[v169];
        v50 = &v164[v56];
      }

      while (((v161 ^ v64) & 1) == 0);
      if (v161)
      {
        v67 = v154;
        v16 = v156;
        if (v55 < v154)
        {
          goto LABEL_152;
        }

        if (v154 >= v55)
        {
          v33 = v55;
          v5 = v152;
          v31 = v151;
          v32 = v154;
          goto LABEL_40;
        }

        v173 = v55;
        v68 = v154 * v164;
        do
        {
          if (v67 != v5)
          {
            v69 = *v165;
            if (!*v165)
            {
              goto LABEL_157;
            }

            v70 = *v174;
            v71 = v168;
            (*v174)(v157, &v69[v68], v168);
            v72 = v68 < v31 || &v69[v68] >= &v69[v56];
            if (v72)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v70)(&v69[v31], v157, v71);
            v16 = v156;
          }

          ++v67;
          v31 -= v164;
          v56 -= v164;
          v68 += v164;
          v73 = v67 < v5--;
        }

        while (v73);
        v33 = v173;
        v5 = v152;
        v31 = v151;
      }

      else
      {
        v33 = v55;
        v5 = v152;
        v31 = v151;
        v16 = v156;
      }

      v32 = v154;
    }

LABEL_40:
    v74 = v165[1];
    if (v33 < v74)
    {
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_149;
      }

      if (v33 - v32 < v149)
      {
        break;
      }
    }

LABEL_63:
    if (v33 < v32)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v162 = v33;
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v97 = *(v31 + 16);
    v96 = *(v31 + 24);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      result = sub_227B63228((v96 > 1), v97 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 16) = v98;
    v99 = v31 + 32;
    v100 = (v31 + 32 + 16 * v97);
    v101 = v162;
    *v100 = v32;
    v100[1] = v101;
    v173 = *v153;
    if (!v173)
    {
      goto LABEL_158;
    }

    if (v97)
    {
      while (1)
      {
        v102 = v98 - 1;
        v103 = (v99 + 16 * (v98 - 1));
        v104 = (v31 + 16 * v98);
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v105 = *(v31 + 32);
          v106 = *(v31 + 40);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_83:
          if (v108)
          {
            goto LABEL_135;
          }

          v120 = *v104;
          v119 = v104[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_138;
          }

          v124 = v103[1];
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_143;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v98 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v98 < 2)
        {
          goto LABEL_137;
        }

        v127 = *v104;
        v126 = v104[1];
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_98:
        if (v123)
        {
          goto LABEL_140;
        }

        v129 = *v103;
        v128 = v103[1];
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_142;
        }

        if (v130 < v122)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v102 - 1 >= v98)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v165)
        {
          goto LABEL_155;
        }

        v134 = v31;
        v135 = (v99 + 16 * (v102 - 1));
        v31 = *v135;
        v136 = v99;
        v137 = v102;
        v138 = (v99 + 16 * v102);
        v139 = v138[1];
        sub_227C61E08(&(*v165)[*(v163 + 72) * *v135], &(*v165)[*(v163 + 72) * *v138], &(*v165)[*(v163 + 72) * v139], v173);
        if (v5)
        {
        }

        if (v139 < v31)
        {
          goto LABEL_130;
        }

        v5 = *(v134 + 16);
        if (v137 > v5)
        {
          goto LABEL_131;
        }

        *v135 = v31;
        v135[1] = v139;
        if (v137 >= v5)
        {
          goto LABEL_132;
        }

        v98 = v5 - 1;
        result = memmove(v138, v138 + 2, 16 * (v5 - 1 - v137));
        v31 = v134;
        *(v134 + 16) = v5 - 1;
        v73 = v5 > 2;
        v5 = 0;
        v99 = v136;
        if (!v73)
        {
          goto LABEL_112;
        }
      }

      v109 = v99 + 16 * v98;
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_133;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_134;
      }

      v116 = v104[1];
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_136;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_139;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = v103[1];
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_147;
        }

        if (v107 < v133)
        {
          v102 = v98 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v29 = v165[1];
    v30 = v162;
    v26 = v163;
    v16 = v156;
    if (v162 >= v29)
    {
      goto LABEL_116;
    }
  }

  v75 = (v32 + v149);
  if (__OFADD__(v32, v149))
  {
    goto LABEL_150;
  }

  if (v75 >= v74)
  {
    v75 = v165[1];
  }

  if (v75 < v32)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    result = sub_227B65968(v31);
    v31 = result;
LABEL_118:
    v140 = (v31 + 16);
    v141 = *(v31 + 16);
    while (v141 >= 2)
    {
      if (!*v165)
      {
        goto LABEL_156;
      }

      v142 = v31;
      v31 += 16 * v141;
      v143 = *v31;
      v144 = &v140[2 * v141];
      v145 = v144[1];
      sub_227C61E08(&(*v165)[*(v163 + 72) * *v31], &(*v165)[*(v163 + 72) * *v144], &(*v165)[*(v163 + 72) * v145], v176);
      if (v5)
      {
        break;
      }

      if (v145 < v143)
      {
        goto LABEL_144;
      }

      if (v141 - 2 >= *v140)
      {
        goto LABEL_145;
      }

      *v31 = v143;
      *(v31 + 8) = v145;
      v146 = *v140 - v141;
      if (*v140 < v141)
      {
        goto LABEL_146;
      }

      v141 = *v140 - 1;
      result = memmove(v144, v144 + 2, 16 * v146);
      *v140 = v141;
      v31 = v142;
    }
  }

  if (v33 == v75)
  {
    goto LABEL_63;
  }

  v151 = v31;
  v152 = v5;
  v76 = *v165;
  v77 = *(v163 + 72);
  v173 = *(v163 + 16);
  v78 = &v76[v77 * (v33 - 1)];
  v169 = -v77;
  v154 = v32;
  v79 = v32 - v33;
  v170 = v76;
  v158 = v77;
  v159 = v75;
  v80 = &v76[v33 * v77];
  v81 = v172;
  v82 = v168;
LABEL_49:
  v161 = v79;
  v162 = v33;
  v160 = v80;
  v164 = v78;
  while (1)
  {
    v83 = v173;
    v173(v81, v80, v82);
    v83(v16, v78, v82);
    v84 = sub_227D49B98();
    v85 = v81;
    v86 = v16;
    v88 = v87;
    if (v84 == sub_227D49B98() && v88 == v89)
    {

      v95 = *v175;
      (*v175)(v86, v82);
      v95(v81, v82);
      v16 = v86;
      goto LABEL_61;
    }

    v91 = sub_227D4DA78();

    v92 = *v175;
    (*v175)(v86, v82);
    result = (v92)(v85, v82);
    v16 = v86;
    if ((v91 & 1) == 0)
    {
      v81 = v172;
LABEL_61:
      v33 = v162 + 1;
      v78 = v158 + v164;
      v79 = v161 - 1;
      v80 = v158 + v160;
      if ((v162 + 1) == v159)
      {
        v33 = v159;
        v5 = v152;
        v31 = v151;
        v32 = v154;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if (!v170)
    {
      break;
    }

    v93 = *v174;
    v94 = v171;
    (*v174)(v171, v80, v82);
    swift_arrayInitWithTakeFrontToBack();
    v93(v78, v94, v82);
    v78 += v169;
    v80 += v169;
    v72 = __CFADD__(v79++, 1);
    v81 = v172;
    if (v72)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_227C61E08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_227D49BA8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v63 - v15;
  result = MEMORY[0x28223BE20](v14);
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

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v69 = &v63 - v18;
  v24 = (a2 - a1) / v20;
  v76 = a1;
  v75 = a4;
  v71 = (v17 + 8);
  v72 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    sub_227C5F6D8(a1, (a2 - a1) / v20, a4, MEMORY[0x277D0CDA0]);
    v68 = (a4 + v24 * v20);
    v74 = v68;
    v66 = a3;
    while (1)
    {
      if (a4 >= v68 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v27 = a1;
      v28 = v20;
      v29 = *v72;
      v30 = v69;
      v31 = a2;
      (*v72)(v69, a2, v8);
      v73 = a4;
      v32 = v70;
      v29();
      v33 = sub_227D49B98();
      v35 = v34;
      if (v33 == sub_227D49B98() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
        v20 = v28;
      }

      else
      {
        v38 = sub_227D4DA78();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        v20 = v28;
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v28;
          v41 = v27;
          if (v27 < v31 || v27 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v66;
          }

          else
          {
            a3 = v66;
            if (v27 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a4 = v73;
          goto LABEL_40;
        }
      }

      a4 = v73 + v20;
      v41 = v27;
      v44 = v27 < v73 || v27 >= a4;
      a2 = v31;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v66;
      }

      else
      {
        a3 = v66;
        if (v27 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = a4;
LABEL_40:
      a1 = v41 + v20;
      v76 = a1;
    }
  }

  sub_227C5F6D8(a2, v22 / v20, a4, MEMORY[0x277D0CDA0]);
  v73 = a4;
  v45 = a4 + v25 * v20;
  v46 = -v20;
  v47 = v45;
  v70 = -v20;
LABEL_42:
  v69 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v69;
      v74 = v47;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v67, v45 + v46, v8);
    (v50)(v68, v66, v8);
    v51 = sub_227D49B98();
    v53 = v52;
    if (v51 == sub_227D49B98() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_227D4DA78();
    }

    v57 = (v48 + v70);
    v58 = *v71;
    (*v71)(v68, v8);
    v58(v67, v8);
    if (v56)
    {
      v60 = v48 < v69 || v57 >= v69;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v70;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v21 = v48 == v69;
        a2 = v66;
        v46 = v70;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v70;
    }

    else
    {
      v47 = v49;
      v21 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v70;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v69;
  v74 = v64;
LABEL_70:
  sub_227C6242C(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_227C6242C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D49BA8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C6250C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227D49BA8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  result = sub_227D4D638();
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
      sub_227B26E40(0, (v33 + 63) >> 6, v12);
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
    sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0]);
    result = sub_227D4CE98();
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

uint64_t sub_227C62864(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_227D49BA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227C6250C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_227C62D24(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0]);
      v15 = sub_227D4CE98();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_227C634DC(&qword_27D7E9900, MEMORY[0x277D0CDA0]);
        v17 = sub_227D4CF38();
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

    sub_227C62AF0();
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
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_227C62AF0()
{
  v1 = v0;
  v2 = sub_227D49BA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  v7 = *v0;
  v8 = sub_227D4D628();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_227C62D24(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227D49BA8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9908, &unk_227D5EDB8);
  v10 = sub_227D4D638();
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
        sub_227C634DC(&qword_27D7E98F8, MEMORY[0x277D0CDA0]);
        result = sub_227D4CE98();
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

unint64_t sub_227C6303C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_227D49CB8() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    return sub_227D4CE58();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_227C630E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    return sub_227D4CE58();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_227C63198(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_227C631E4(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_227D49BA8();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227C634DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227C63524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_186_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_62_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 224) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = result;
  return result;
}

void *OUTLINED_FUNCTION_60_6()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_62_6()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 72);
  v3 = *(v0 + 224);
  v5 = *(v0 + 40);
  return *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  result = *(v15 + 2120);
  v17 = *(v15 + 2104);
  v18 = *a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t GameListMetadataRequest.player.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_58();

  return v4(v3);
}

uint64_t GameListMetadataRequest.ttlOption.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  result = type metadata accessor for GameListMetadataRequest(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t GameListMetadataRequest.fetchingRequirements.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  result = type metadata accessor for GameListMetadataRequest(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

int *GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v12);
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for GameListMetadataRequest(0);
  *(a6 + result[5]) = v10;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = v11;
  *(a6 + result[8]) = a5;
  return result;
}

__n128 GameListMetadataProvider.init(support:restrictionsProvider:purchaseHistoryProvider:policyProvider:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_227B132F0(a1, a5);
  sub_227B132F0(a2, a5 + 40);
  sub_227B132F0(a3, a5 + 80);
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 120) = *a4;
  *(a5 + 136) = v10;
  *(a5 + 152) = *(a4 + 32);
  return result;
}

uint64_t GameListMetadataProvider.fetchListData(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[559] = v0;
  v1[553] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[565] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[571] = v4;
  v1[577] = *(v5 + 64);
  v1[583] = swift_task_alloc();
  v1[589] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C639BC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[589];
  v2 = v0[571];
  v3 = v0[565];
  v4 = v0[559];
  v5 = v0[553];
  v6 = *(v2 + 16);
  v0[595] = v6;
  v0[601] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v8 = *(OUTLINED_FUNCTION_280() + 24);
  OUTLINED_FUNCTION_36_0();
  v15 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[607] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_35(v12);
  v13 = OUTLINED_FUNCTION_9_2();

  return v15(v13);
}

uint64_t sub_227C63B00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 4856);
  *v2 = *v0;
  *(v1 + 4904) = v5;
  *(v1 + 4952) = v6;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C63BEC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[589];
  v2 = sub_227D4A898();
  v4 = v0[619];
  if (v4)
  {
    if (v0[613] == v2 && v4 == v3)
    {

LABEL_13:
      v12 = v0[559];
      sub_227C6D988(v12, (v0 + 427));
      v13 = swift_allocObject();
      v0[625] = v13;
      memcpy((v13 + 16), v0 + 427, 0xA0uLL);
      swift_asyncLet_begin();
      sub_227C6D988(v12, (v0 + 467));
      v14 = swift_allocObject();
      v0[631] = v14;
      memcpy((v14 + 16), v0 + 467, 0xA0uLL);
      swift_asyncLet_begin();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282200930](v15);
    }

    v6 = v0[619];
    v7 = sub_227D4DA78();

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[729] = v8;
  *v8 = v0;
  v8[1] = sub_227C64FA4;
  v9 = v0[559];
  OUTLINED_FUNCTION_53(v0[553]);
  OUTLINED_FUNCTION_164();

  return sub_227C659E8();
}

uint64_t sub_227C63E90()
{
  OUTLINED_FUNCTION_6();
  v1[637] = v0;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_77_5();

    return MEMORY[0x282200920](v2, v3, v4, v1 + v5);
  }

  else
  {
    v1[643] = v1[527];
    sub_227D4CE58();
    v6 = OUTLINED_FUNCTION_77_5();

    return MEMORY[0x282200930](v6);
  }
}

uint64_t sub_227C63F3C()
{
  *(v1 + 5192) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_22(sub_227C65274);
  }

  else
  {
    return OUTLINED_FUNCTION_22(sub_227C63F68);
  }
}

uint64_t sub_227C63F68()
{
  v1 = *(v0 + 5192);
  v2 = *(v0 + 5144);
  v3 = *(v0 + 4472);
  v4 = *(v0 + 4424);
  v5 = *(v0 + 4232);
  *(v0 + 5240) = v5;
  v6 = *(v0 + 4240);
  *(v0 + 5288) = v6;
  swift_bridgeObjectRetain_n();
  sub_227D4CE58();
  v7 = sub_227C6720C(v2, v5);
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  *(v0 + 5336) = sub_227C6E35C(v7, sub_227C6DB0C, v8);

  v9 = type metadata accessor for GameListMetadataRequest(0);
  *(v0 + 5384) = v9;
  *(v0 + 5432) = *(v4 + v9[7]);
  *(v0 + 5856) = *(v4 + v9[5]);
  *(v0 + 5857) = *(v4 + v9[8]);
  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  OUTLINED_FUNCTION_280();

  v13 = sub_227C67484(v12);
  *(v0 + 5480) = v13;
  v14 = *(v11 + 256);
  OUTLINED_FUNCTION_36_0();
  v20 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  *(v0 + 5528) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_35(v18);

  return (v20)(v13, 1, v10, v11);
}

uint64_t sub_227C64170()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 5528);
  *v4 = *v1;
  v3[697] = v7;
  v3[703] = v0;

  if (v0)
  {
    v8 = v3[685];
    v9 = v3[667];
    v10 = v3[661];
    v11 = v3[655];

    return MEMORY[0x282200920](v3 + 162, v3 + 529, sub_227C653B4, v3 + 536);
  }

  else
  {
    v12 = v3[685];

    v13 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_227C642F0()
{
  v40 = v0;
  v1 = *(v0 + 5624);
  v2 = *(v0 + 5576);
  v3 = *(v0 + 5384);
  v4 = *(v0 + 5336);
  v5 = *(v0 + 4424);

  v7 = sub_227C67514(v6);
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v2, *(v5 + *(v3 + 24)), v7, v38);
  *(v0 + 5672) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_105_4();

    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200920](v8, v9, v10, v11);
  }

  else
  {
    v33 = *(v0 + 5857);
    v13 = *(v0 + 5856);
    v14 = *(v0 + 5432);
    v35 = *(v0 + 4760);
    v36 = *(v0 + 4808);
    v34 = *(v0 + 4712);
    v15 = *(v0 + 4664);
    v37 = *(v0 + 4616);
    v16 = *(v0 + 4568);
    v17 = *(v0 + 4520);
    v18 = *(v0 + 4472);

    v19 = v38[1];
    *(v0 + 4136) = v38[0];
    *(v0 + 4152) = v19;
    *(v0 + 4168) = v39;
    sub_227C6D988(v18, v0 + 3256);
    v20 = swift_allocObject();
    memcpy((v20 + 16), (v0 + 3256), 0xA0uLL);
    v21 = *(v0 + 4152);
    *(v20 + 176) = *(v0 + 4136);
    *(v20 + 192) = v21;
    *(v20 + 208) = *(v0 + 4168);
    *(v20 + 216) = v14;
    OUTLINED_FUNCTION_94_4();
    v22 = swift_allocObject();
    *(v0 + 5720) = v22;
    *(v22 + 16) = &unk_227D5EE50;
    *(v22 + 24) = v20;
    sub_227C58420(v0 + 4136, v0 + 4056);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9958, &qword_227D5EE68);
    swift_asyncLet_begin();
    sub_227C6D988(v18, v0 + 3896);
    v23 = swift_allocObject();
    memcpy((v23 + 16), (v0 + 3896), 0xA0uLL);
    v24 = *(v0 + 4152);
    *(v23 + 176) = *(v0 + 4136);
    *(v23 + 192) = v24;
    *(v23 + 208) = *(v0 + 4168);
    *(v23 + 216) = v13;
    *(v23 + 217) = v33;
    OUTLINED_FUNCTION_94_4();
    v25 = swift_allocObject();
    *(v0 + 5728) = v25;
    *(v25 + 16) = &unk_227D5EE78;
    *(v25 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
    swift_asyncLet_begin();
    sub_227C6D988(v18, v0 + 3576);
    v35(v15, v34, v17);
    v26 = (*(v16 + 80) + 176) & ~*(v16 + 80);
    v27 = swift_allocObject();
    memcpy((v27 + 16), (v0 + 3576), 0xA0uLL);
    (*(v16 + 32))(v27 + v26, v15, v17);
    v28 = v27 + ((v37 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v28 = v14;
    *(v28 + 8) = v33;
    OUTLINED_FUNCTION_94_4();
    v29 = swift_allocObject();
    *(v0 + 5736) = v29;
    *(v29 + 16) = &unk_227D5EEA0;
    *(v29 + 24) = v27;
    swift_asyncLet_begin();
    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200930](v30);
  }
}

uint64_t sub_227C646E0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1[718] = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_105_4();

    OUTLINED_FUNCTION_82_6();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282200920](v2, v3, v4, v5);
  }

  else
  {
    v1[719] = v1[533];
    v1[720] = v1[534];
    sub_227D4CE58();
    sub_227D4CE58();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282200930](v7);
  }
}

uint64_t sub_227C647D4()
{
  v1[721] = v0;
  if (v0)
  {
    v2 = v1[720];
    v3 = v1[719];
    v4 = v1[697];
    v5 = v1[667];
    v6 = v1[661];
    v7 = v1[655];

    v8 = OUTLINED_FUNCTION_82_6();

    return MEMORY[0x282200920](v8, v1 + 533, v9, v1 + 662);
  }

  else
  {
    v1[722] = v1[535];
    sub_227D4CE58();

    return MEMORY[0x282200930](v1 + 322);
  }
}

uint64_t sub_227C648FC()
{
  v1[723] = v0;
  if (v0)
  {
    v2 = v1[722];
    v3 = v1[720];
    v4 = v1[719];
    v5 = v1[697];
    v6 = v1[667];
    v7 = v1[661];
    v8 = v1[655];

    v9 = OUTLINED_FUNCTION_82_6();

    return MEMORY[0x282200920](v9, v1 + 533, v10, v1 + 698);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C64A18, 0, 0);
  }
}

uint64_t sub_227C64A18()
{
  v1 = v0[722];
  v2 = v0[720];
  v3 = v0[719];
  v4 = v0[559];
  v0[724] = v0[541];
  v0[531] = v3;
  v0[532] = v2;
  v0[547] = v1;
  v5 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_227D4CE58();
  v6 = sub_227D4CE58();
  v0[725] = sub_227C673F4(v6);
  v7 = *(v5 + 8);
  OUTLINED_FUNCTION_36_0();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v0[726] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_35(v11);
  OUTLINED_FUNCTION_85_1();

  return v13();
}

uint64_t sub_227C64B80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 5808);
  v5 = *(v3 + 5800);
  v6 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v9 + 5816) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C64E2C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[722];
  v2 = v0[720];
  v3 = v0[719];

  return MEMORY[0x282200920](v0 + 162, v0 + 529, sub_227C64EBC, v0 + 560);
}

uint64_t sub_227C64F08()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[715];
  v2 = v0[631];
  v3 = v0[625];
  v4 = OUTLINED_FUNCTION_4_23();
  v5(v4);

  v6 = v0[728];
  OUTLINED_FUNCTION_2_28();

  v7 = OUTLINED_FUNCTION_8_0();

  return v8(v7);
}

uint64_t sub_227C64FA4()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v8 = *(v7 + 5832);
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v5 + 5840) = v0;

  if (!v0)
  {
    *(v5 + 5848) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C650AC()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_4_23();
  v2(v1);
  v3 = *(v0 + 5848);
  OUTLINED_FUNCTION_7_18();

  v4 = OUTLINED_FUNCTION_8_0();

  return v5(v4);
}

uint64_t sub_227C65124()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_4_23();
  v2(v1);
  v3 = *(v0 + 5840);
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227C651E4()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[631];
  v2 = v0[625];
  v3 = OUTLINED_FUNCTION_4_23();
  v4(v3);

  v5 = v0[637];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227C65274()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 5144);

  v2 = OUTLINED_FUNCTION_77_5();

  return MEMORY[0x282200920](v2, v3, v4, v0 + 5680);
}

uint64_t sub_227C65324()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[631];
  v2 = v0[625];
  v3 = OUTLINED_FUNCTION_4_23();
  v4(v3);

  v5 = v0[649];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227C653FC()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[631];
  v2 = v0[625];
  v3 = OUTLINED_FUNCTION_4_23();
  v4(v3);

  v5 = v0[703];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227C654D4()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[631];
  v2 = v0[625];
  v3 = OUTLINED_FUNCTION_4_23();
  v4(v3);

  v5 = v0[709];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227C65648()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[715];
  v2 = v0[631];
  v3 = v0[625];
  v4 = OUTLINED_FUNCTION_4_23();
  v5(v4);

  v6 = v0[718];
  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227C657C8()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[715];
  v2 = v0[631];
  v3 = v0[625];
  v4 = OUTLINED_FUNCTION_4_23();
  v5(v4);

  v6 = v0[721];
  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227C6594C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[715];
  v2 = v0[631];
  v3 = v0[625];
  v4 = OUTLINED_FUNCTION_4_23();
  v5(v4);

  v6 = v0[723];
  OUTLINED_FUNCTION_2_28();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227C659E8()
{
  OUTLINED_FUNCTION_6();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  v1[30] = OUTLINED_FUNCTION_30();
  v6 = type metadata accessor for GameLibraryMetadata(0);
  v1[31] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[32] = v7;
  v9 = *(v8 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 64);
  v1[35] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[36] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[37] = v14;
  v16 = *(v15 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227C65B64()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 224);
  v2 = type metadata accessor for GameListMetadataRequest(0);
  v3 = *(v1 + v2[7]);
  *(v0 + 449) = *(v1 + v2[5]);
  *(v0 + 450) = *(v1 + v2[8]);
  *(v0 + 216) = v3;
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_227C65C34;
  v5 = *(v0 + 232);
  OUTLINED_FUNCTION_53(*(v0 + 224));

  return sub_227C67D78();
}

uint64_t sub_227C65C34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 320);
  *v3 = *v1;
  v2[41] = v6;
  v2[42] = v7;
  v2[43] = v0;

  if (v0)
  {
    v8 = sub_227C66B7C;
  }

  else
  {
    v8 = sub_227C65D3C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227C65D3C()
{
  v68 = v0;
  v1 = *(v0 + 328);
  if (!v1)
  {
    v43 = *(v0 + 336);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E98E0, &qword_227D5EC20);
    sub_227D4CE28();
    OUTLINED_FUNCTION_47_7();

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X2, X16 }
  }

  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v59 = (*(v0 + 296) + 32);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v60 = v1 + 64;
  v61 = v1;
LABEL_5:
  v10 = v8;
  v62 = v9;
  while (1)
  {
    *(v0 + 352) = v9;
    if (!v5)
    {
      break;
    }

    v8 = v10;
LABEL_11:
    sub_227B11EE8(*(v1 + 56) + 40 * (__clz(__rbit64(v5)) | (v8 << 6)), v0 + 16);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_173();
    v14(v13);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
    v17 = (*(v16 + 24))(v15, v16);
    v18 = v17;
    if (v17)
    {
      v19 = [v17 stringValue];

      sub_227D4CFA8();
    }

    v5 &= v5 - 1;
    v20 = *(v0 + 280);
    v21 = *(v0 + 288);
    OUTLINED_FUNCTION_173();
    OUTLINED_FUNCTION_30_11();
    sub_227D4A688();
    v22 = OUTLINED_FUNCTION_37_4();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_318(v20, 1, v21);
    if (!v25)
    {
      v26 = *v59;
      (*v59)(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      v9 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_79_6();
        v9 = sub_227C575E4(v34, v35, v36, v37);
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        v9 = sub_227C575E4(v28 > 1, v29 + 1, 1, v9);
      }

      v30 = *(v0 + 312);
      v31 = *(v0 + 288);
      *(v9 + 16) = v29 + 1;
      OUTLINED_FUNCTION_81_6();
      result = v26(v32 + v33 * v29);
      v2 = v60;
      v1 = v61;
      goto LABEL_5;
    }

    result = sub_227B1DE58(*(v0 + 280), &qword_27D7E6CC8, &qword_227D5B810);
    v10 = v8;
    v1 = v61;
    v9 = v62;
    v2 = v60;
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v38 = *(v0 + 344);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E99E0, &qword_227D5F098);
  v39 = sub_227D4CE28();
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v39, 0, v9, v64);
  if (v38)
  {
    v40 = *(v0 + 336);

    OUTLINED_FUNCTION_106_3();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v46 = *(v0 + 449);
  v47 = *(v0 + 232);

  v48 = v64[0];
  v49 = v64[1];
  *(v0 + 360) = v64[0];
  *(v0 + 368) = v49;
  v50 = v65;
  v51 = v66;
  *(v0 + 376) = v65;
  *(v0 + 384) = v51;
  v52 = v67;
  *(v0 + 392) = v67;
  v53 = *(v47 + 24);
  v63 = *(v47 + 32);
  v54 = OUTLINED_FUNCTION_58();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  *(v0 + 56) = v48;
  *(v0 + 64) = v49;
  *(v0 + 72) = v50;
  *(v0 + 80) = v51;
  *(v0 + 88) = v52;
  *(v0 + 448) = v46;
  v56 = swift_task_alloc();
  *(v0 + 400) = v56;
  *v56 = v0;
  v56[1] = sub_227C6623C;
  v57 = *(v0 + 450);
  OUTLINED_FUNCTION_65();

  return sub_227C55C0C();
}

uint64_t sub_227C6623C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v0;

  if (v0)
  {
    v8 = v3[44];
    v11 = v3 + 41;
    v9 = v3[41];
    v10 = v11[1];
  }

  else
  {
    v13 = v3[48];
    v12 = v3[49];
    v15 = v3[46];
    v14 = v3[47];
    v16 = v3[45];
  }

  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227C66394()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[51];
  v2 = v0[29];
  v3 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v4 = sub_227D4CE58();
  v0[53] = sub_227C673F4(v4);
  v5 = *(v3 + 8);
  OUTLINED_FUNCTION_36_0();
  v11 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_35(v9);
  OUTLINED_FUNCTION_85_1();

  return v11();
}

uint64_t sub_227C664D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 432);
  v5 = *(v3 + 424);
  v6 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v9 + 440) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227C665D4()
{
  v1 = 0;
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v130 = *(v0 + 272);
  v131 = *(v0 + 328);
  v126 = *(v0 + 256);
  v129 = *(v0 + 248);
  v134 = *(v0 + 352);
  v135 = *(v134 + 16);
  v133 = (v3 + 16);
  v4 = MEMORY[0x277D84F98];
  v132 = (v3 + 8);
  v5 = *(v0 + 416);
  v136 = *(v0 + 408);
  for (i = v2; ; v2 = i)
  {
    if (v135 == v1)
    {
      v105 = *(v0 + 440);
      v106 = *(v0 + 408);
      v107 = *(v0 + 352);
      v108 = *(v0 + 328);

      sub_227C68EFC(v4);
      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_47_7();

      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_55_0();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >= *(v134 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    (*v133)(*(v0 + 304), *(v0 + 352) + ((*(*(v0 + 296) + 80) + 32) & ~*(*(v0 + 296) + 80)) + *(*(v0 + 296) + 72) * v1, *(v0 + 288));
    v6 = sub_227D4A6A8();
    if (v5)
    {
      v111 = *(v0 + 440);
      v112 = *(v0 + 408);
      v113 = *(v0 + 352);
      v114 = *(v0 + 328);
      v115 = *(v0 + 304);
      v116 = *(v0 + 288);

      v117 = *v132;
      v118 = OUTLINED_FUNCTION_173();
      v119(v118);

      OUTLINED_FUNCTION_106_3();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_55_0();

      __asm { BRAA            X1, X16 }
    }

    v8 = v6;
    v9 = v7;
    if (*(v131 + 16) && (v10 = *(v0 + 328), v11 = OUTLINED_FUNCTION_334(), v13 = sub_227B2664C(v11, v12), (v14 & 1) != 0))
    {
      sub_227B11EE8(*(*(v0 + 328) + 56) + 40 * v13, v0 + 96);
      v15 = 0uLL;
    }

    else
    {
      *(v0 + 128) = 0;
      v15 = 0uLL;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    if (!*(v136 + 16))
    {
      *(v0 + 168) = 0;
LABEL_14:
      *(v0 + 152) = v15;
      *(v0 + 136) = v15;
      goto LABEL_15;
    }

    v16 = *(v0 + 408);
    v17 = OUTLINED_FUNCTION_334();
    v19 = sub_227B2664C(v17, v18);
    if ((v20 & 1) == 0)
    {
      *(v0 + 168) = 0;
      v15 = 0uLL;
      goto LABEL_14;
    }

    sub_227B11EE8(*(v136 + 56) + 40 * v19, v0 + 136);
LABEL_15:
    v21 = *(v0 + 240);
    type metadata accessor for PurchaseHistoryGame();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v137 = v1;
    if (v2 && *(v2 + 16) && (v26 = OUTLINED_FUNCTION_334(), v28 = sub_227B2664C(v26, v27), (v29 & 1) != 0))
    {
      sub_227B11EE8(*(v2 + 56) + 40 * v28, v0 + 176);
    }

    else
    {
      *(v0 + 208) = 0;
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
    }

    v30 = *(v0 + 440);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 240);
    v34 = v129[10];
    sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_334();
    LOBYTE(v30) = sub_227B39740(v39, v40, v30);
    *v31 = v8;
    *(v130 + 8) = v9;
    v42 = *(v0 + 96);
    v41 = *(v0 + 112);
    *(v130 + 48) = *(v0 + 128);
    *(v130 + 16) = v42;
    *(v130 + 32) = v41;
    v43 = *(v0 + 152);
    v44 = *(v0 + 136);
    *(v130 + 88) = *(v0 + 168);
    *(v130 + 56) = v44;
    *(v130 + 72) = v43;
    v45 = v129[7];
    sub_227C70534();
    v46 = v31 + v129[8];
    *(v46 + 4) = 0;
    *v46 = 0u;
    *(v46 + 1) = 0u;
    v47 = v31 + v129[9];
    v48 = *(v0 + 208);
    v49 = *(v0 + 192);
    *v47 = *(v0 + 176);
    *(v47 + 1) = v49;
    *(v47 + 4) = v48;
    *(v31 + v129[11]) = v30 & 1;
    OUTLINED_FUNCTION_14_12();
    sub_227C6FBE4();
    sub_227D4CE58();
    swift_isUniquelyReferenced_nonNull_native();
    v50 = OUTLINED_FUNCTION_334();
    v52 = sub_227B2664C(v50, v51);
    if (__OFADD__(*(v4 + 16), (v53 & 1) == 0))
    {
      goto LABEL_39;
    }

    v54 = v52;
    v55 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A40, &qword_227D5F110);
    v56 = sub_227D4D7C8();
    if (v56)
    {
      break;
    }

LABEL_24:
    v66 = *(v0 + 304);
    v67 = *(v0 + 288);
    v68 = *(v0 + 264);
    v69 = *(v0 + 272);
    if (v55)
    {

      OUTLINED_FUNCTION_101_4(v70, v71, v72, v73, v74, v75, v76, v77, i, v126);
      sub_227C6FB80(v68, v78);
      OUTLINED_FUNCTION_5_17();
      v80 = sub_227C6EAB0(v69, v79);
      v88 = OUTLINED_FUNCTION_99_3(v80, v81, v82, v83, v84, v85, v86, v87, v124, v127, v129, v130, v131, v132);
      v89(v88);
    }

    else
    {
      *(v4 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v90 = (*(v4 + 48) + 16 * v54);
      *v90 = v8;
      v90[1] = v9;
      OUTLINED_FUNCTION_101_4(v56, v57, v58, v59, v60, v61, v62, v63, i, v126);
      OUTLINED_FUNCTION_14_12();
      sub_227C70180();
      OUTLINED_FUNCTION_5_17();
      v92 = sub_227C6EAB0(v69, v91);
      v100 = OUTLINED_FUNCTION_99_3(v92, v93, v94, v95, v96, v97, v98, v99, v125, v128, v129, v130, v131, v132);
      v101(v100);
      v102 = *(v4 + 16);
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (v103)
      {
        goto LABEL_40;
      }

      *(v4 + 16) = v104;
    }

    v5 = 0;
    v1 = v137 + 1;
  }

  v64 = OUTLINED_FUNCTION_334();
  v56 = sub_227B2664C(v64, v65);
  if ((v55 & 1) == (v57 & 1))
  {
    v54 = v56;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_55_0();

  sub_227D4DAE8();
}

uint64_t sub_227C66B7C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_47_7();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C66C0C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];

  v6 = v0[52];
  OUTLINED_FUNCTION_47_7();

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227C66CCC()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;
  v3 = OUTLINED_FUNCTION_60_7();

  return GamePolicyProvider.fetch()(v3);
}

uint64_t sub_227C66D60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_22(sub_227C66D78);
}

uint64_t sub_227C66D78()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_227B2F79C;
  v4 = v0[2];

  return PurchaseHistoryProviderProtocol.purchaseHistory()();
}

uint64_t PurchaseHistoryProviderProtocol.purchaseHistory()()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_227D4CAB8();
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4CA38();
  v1[7] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C66EFC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  sub_227D4AA48();
  sub_227D4CA18();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_227C6700C;
  v6 = *(v0 + 72);
  v7 = *(v0 + 16);

  return OSSignposter.perform<A>(intervalName:task:)(v7, "PurchaseHistory", 15, 2, &unk_227D5EEC8, v4);
}

uint64_t sub_227C6700C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *(v4 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 96) = v0;

  if (v0)
  {
    v10 = sub_227C67198;
  }

  else
  {
    v10 = sub_227C67124;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_227C67124()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_95_3();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C67198()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_95_3();
  v2(v1);

  OUTLINED_FUNCTION_18();
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_227C6720C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227C6F764(a1, sub_227C6DF64, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227C67290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PurchaseHistoryGame();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_51_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_226();
  if (!*(a4 + 16))
  {
    goto LABEL_5;
  }

  sub_227D4CE58();
  sub_227D4CE58();
  sub_227B2664C(a1, a2);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    v20 = 1;
    return v20 & 1;
  }

  v16 = *(a4 + 56);
  v17 = *(v11 + 72);
  sub_227C6FBE4();
  sub_227C70180();
  v18 = *(v4 + *(v8 + 24));
  OUTLINED_FUNCTION_15_11();
  sub_227C6EAB0(v4, v19);

  v20 = v18 ^ 1;
  return v20 & 1;
}

void *sub_227C673F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C6DC84(*(a1 + 16), 0);
  v4 = sub_227C6FC38(&v6, (v3 + 4), v2, a1);
  sub_227B223D4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_227C67484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_227B260E4(*(a1 + 16), 0);
  sub_227C70034();
  v4 = v3;
  sub_227B223D4();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

size_t sub_227C67514(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227C577E4(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v5 = sub_227C6FD90(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_227B223D4();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227C675E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = *(a2 + 8);
  return OUTLINED_FUNCTION_22(sub_227C67608);
}

uint64_t sub_227C67608()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[5];
  v2 = sub_227C73008();
  OUTLINED_FUNCTION_86_4(v2);
  if (sub_227D4D578())
  {
    v3 = v0[4];
    v4 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v5 = *(OUTLINED_FUNCTION_280() + 240);
    OUTLINED_FUNCTION_36_0();
    v12 = (v6 + *v6);
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_227BCD2C4;
    OUTLINED_FUNCTION_53(v0[6]);
    OUTLINED_FUNCTION_85_1();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v11(0);
  }
}

uint64_t sub_227C6777C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227C67868;

  return v6();
}

uint64_t sub_227C67868()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  OUTLINED_FUNCTION_76_5();

  return v10();
}

uint64_t sub_227C67954(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 90) = a4;
  *(v4 + 89) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  return OUTLINED_FUNCTION_22(sub_227C67974);
}

uint64_t sub_227C67974()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 89);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 88) = v1 & 1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_227C67A58;
  v8 = *(v0 + 90);
  OUTLINED_FUNCTION_164();

  return sub_227C55C0C();
}

uint64_t sub_227C67A58()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_227C5ACBC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v10(v0);
  }
}

uint64_t sub_227C67B74()
{
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_35(v2);

  return sub_227C67D78();
}

uint64_t sub_227C67C24()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C67D54, 0, 0);
  }

  else
  {
    v9 = *(v6 + 8);
    v10 = OUTLINED_FUNCTION_9_2();

    return v11(v10);
  }
}

uint64_t sub_227C67D54()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_227C67D78()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v5 = v4;
  *(v1 + 80) = v2;
  v7 = *v6;
  *(v1 + 32) = v0;
  *(v1 + 40) = v7;
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_35(v8);

  return sub_227C69284(v5, v3);
}

uint64_t sub_227C67E20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C67F40, 0, 0);
  }
}

uint64_t sub_227C67F40()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v1 + 40);
  v3 = sub_227C73020();
  OUTLINED_FUNCTION_86_4(v3);
  v4 = sub_227D4D578();
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = *(v1 + 32);
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = sub_227D4CE58();
    v10 = sub_227C67484(v9);
    *(v1 + 64) = v10;
    v11 = swift_task_alloc();
    *(v1 + 72) = v11;
    *v11 = v1;
    v11[1] = sub_227C68078;
    v12 = *(v1 + 80);

    return sub_227C551F8(v10, v12, v7, v8);
  }

  else
  {
    v14 = *(v1 + 8);

    return v14(v5, 0);
  }
}

uint64_t sub_227C68078()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = *(v2 + 72);
  v6 = *v1;
  *v4 = *v1;

  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = *(v3 + 56);

    OUTLINED_FUNCTION_76_5();
    OUTLINED_FUNCTION_164();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {

    v18 = *(v3 + 56);
    v19 = *(v6 + 8);
    OUTLINED_FUNCTION_164();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_227C681D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227C682BC;

  return v6();
}

uint64_t sub_227C682BC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);
  OUTLINED_FUNCTION_164();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_227C683B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, char a8)
{
  v11 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v11;
  v12 = *(a4 + 16);
  *(a7 + 56) = *a4;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 48) = *(a3 + 32);
  *(a7 + 72) = v12;
  *(a7 + 88) = *(a4 + 32);
  v13 = type metadata accessor for GameLibraryMetadata(0);
  v14 = v13[7];
  sub_227C70534();
  v15 = a7 + v13[8];
  v16 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a5 + 32);
  v17 = a7 + v13[9];
  v18 = *(a6 + 16);
  *v17 = *a6;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a6 + 32);
  v19 = v13[10];
  result = sub_227C70534();
  *(a7 + v13[11]) = a8;
  return result;
}

uint64_t sub_227C684B0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = a8;
  v123 = a7;
  v130 = a5;
  v120 = a4;
  v131 = a3;
  v121 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v119 = &v111[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v129 = &v111[-v17];
  v118 = type metadata accessor for GameLibraryMetadata(0);
  v114 = *(v118 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x28223BE20](v118);
  v128 = &v111[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v111[-v21];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A38, &qword_227D5F108);
  v23 = *(*(v117 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v117);
  v116 = &v111[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v126 = &v111[-v26];
  v27 = a2 + 64;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 64);
  v31 = (v28 + 63) >> 6;
  v124 = a2;
  sub_227D4CE58();
  v32 = 0;
  v127 = a6;
  v113 = v27;
  v112 = v31;
  for (i = v22; v30; v31 = v112)
  {
    v125 = a1;
LABEL_9:
    v34 = __clz(__rbit64(v30)) | (v32 << 6);
    v35 = *(v124 + 56);
    v36 = (*(v124 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    v40 = *(v39 - 8);
    v41 = v35 + *(v40 + 72) * v34;
    v42 = v117;
    v43 = v126;
    (*(v40 + 16))(&v126[*(v117 + 48)], v41, v39);
    *v43 = v38;
    v43[1] = v37;
    v44 = v116;
    sub_227C6F0A8();
    v45 = v44[1];
    v144 = *v44;
    v46 = *(v42 + 48);
    v47 = *(v40 + 8);
    sub_227D4CE58();
    sub_227D4CE58();
    v48 = v127;
    sub_227D4CE58();
    v47(v44 + v46, v39);
    v49 = *v131;
    if (*v131 >= 2)
    {
      v50 = v119;
      if (*(v49 + 16))
      {
        v51 = *v131;
        sub_227D4CE58();
        v52 = v144;
        v53 = v45;
        v54 = sub_227B2664C(v144, v45);
        if (v55)
        {
          sub_227B11EE8(*(v49 + 56) + 40 * v54, &v141);
        }

        else
        {
          v143 = 0;
          v141 = 0u;
          v142 = 0u;
        }

        v56 = i;
        goto LABEL_18;
      }

      v143 = 0;
      v141 = 0u;
      v142 = 0u;
    }

    else
    {
      v143 = 0;
      v141 = 0u;
      v142 = 0u;
      v50 = v119;
    }

    v53 = v45;
    v56 = i;
    v52 = v144;
LABEL_18:
    v57 = *v120;
    if (*(*v120 + 16) && (v58 = sub_227B2664C(v52, v53), (v59 & 1) != 0))
    {
      sub_227B11EE8(*(v57 + 56) + 40 * v58, &v138);
    }

    else
    {
      v140 = 0;
      v138 = 0u;
      v139 = 0u;
    }

    if (*(v48 + 16) && (v60 = sub_227B2664C(v52, v53), (v61 & 1) != 0))
    {
      v62 = v60;
      v63 = *(v48 + 56);
      v64 = type metadata accessor for PurchaseHistoryGame();
      v65 = v63 + *(*(v64 - 8) + 72) * v62;
      v52 = v144;
      v66 = v129;
      sub_227C6FBE4();
      v67 = v66;
      v68 = 0;
      v69 = v64;
    }

    else
    {
      v69 = type metadata accessor for PurchaseHistoryGame();
      v67 = v129;
      v68 = 1;
    }

    __swift_storeEnumTagSinglePayload(v67, v68, 1, v69);
    v70 = v123;
    if (*(v123 + 16) && (v71 = sub_227B2664C(v52, v53), (v72 & 1) != 0))
    {
      sub_227B11EE8(*(v70 + 56) + 40 * v71, &v135);
    }

    else
    {
      v137 = 0;
      v135 = 0u;
      v136 = 0u;
    }

    if (*v131 != 1 && (v73 = v131[1]) != 0 && *(v73 + 16))
    {
      v74 = v131[1];
      sub_227D4CE58();
      v75 = sub_227B2664C(v52, v53);
      if (v76)
      {
        sub_227B11EE8(*(v73 + 56) + 40 * v75, &v132);
      }

      else
      {
        v134 = 0;
        v133 = 0u;
        v132 = 0u;
      }
    }

    else
    {
      v134 = 0;
      v133 = 0u;
      v132 = 0u;
    }

    v77 = v122;
    if (v122 && *(v122 + 16) && (v78 = sub_227B2664C(v52, v53), (v79 & 1) != 0))
    {
      v80 = v78;
      v81 = *(v77 + 56);
      v82 = sub_227D492A8();
      v83 = *(v82 - 8);
      v84 = v81 + *(v83 + 72) * v80;
      v52 = v144;
      (*(v83 + 16))(v50, v84, v82);
      v85 = v50;
      v86 = 0;
      v87 = v82;
    }

    else
    {
      v87 = sub_227D492A8();
      v85 = v50;
      v86 = 1;
    }

    __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
    v88 = sub_227B39740(v52, v53, v121);
    v89 = v142;
    *(v56 + 16) = v141;
    *(v56 + 32) = v89;
    v90 = v139;
    *(v56 + 56) = v138;
    *v56 = v52;
    *(v56 + 8) = v53;
    *(v56 + 48) = v143;
    *(v56 + 72) = v90;
    *(v56 + 88) = v140;
    v91 = v118;
    v92 = v56 + *(v118 + 28);
    sub_227C70534();
    v93 = v56 + v91[8];
    v94 = v136;
    *v93 = v135;
    *(v93 + 16) = v94;
    *(v93 + 32) = v137;
    v95 = v56 + v91[9];
    v96 = v133;
    *v95 = v132;
    *(v95 + 16) = v96;
    *(v95 + 32) = v134;
    v97 = v91[10];
    sub_227C70534();
    *(v56 + v91[11]) = v88;
    sub_227C6FBE4();
    sub_227D4CE58();
    v98 = v125;
    swift_isUniquelyReferenced_nonNull_native();
    *&v141 = v98;
    v99 = sub_227B2664C(v52, v53);
    if (__OFADD__(v98[2], (v100 & 1) == 0))
    {
      goto LABEL_55;
    }

    v101 = v99;
    v102 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9A40, &qword_227D5F110);
    if (sub_227D4D7C8())
    {
      v103 = sub_227B2664C(v144, v53);
      if ((v102 & 1) != (v104 & 1))
      {
        goto LABEL_57;
      }

      v101 = v103;
    }

    a1 = v141;
    if (v102)
    {
      sub_227C6FB80(v128, *(v141 + 56) + *(v114 + 72) * v101);
    }

    else
    {
      *(v141 + 8 * (v101 >> 6) + 64) |= 1 << v101;
      v105 = (a1[6] + 16 * v101);
      *v105 = v144;
      v105[1] = v53;
      v106 = a1[7] + *(v114 + 72) * v101;
      sub_227C70180();
      v107 = a1[2];
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        goto LABEL_56;
      }

      a1[2] = v109;
    }

    v30 &= v30 - 1;
    sub_227C6EAB0(v56, type metadata accessor for GameLibraryMetadata);

    sub_227B1DE58(v126, &qword_27D7E9A38, &qword_227D5F108);
    v27 = v113;
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return a1;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v125 = a1;
      v32 = v33;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}