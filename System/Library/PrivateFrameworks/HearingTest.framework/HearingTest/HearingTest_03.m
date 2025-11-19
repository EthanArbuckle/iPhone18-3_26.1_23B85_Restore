void sub_2520C172C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDE68);

  sub_2520A8DDC(a3, v17);
  v7 = sub_25214196C();
  v8 = sub_252141FBC();

  sub_2520CB568(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446722;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2520A5448(a1, a2, v17);
    *(v9 + 22) = 2080;
    v14 = sub_2520B052C();
    v16 = sub_2520A5448(v14, v15, v17);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] [Noise Tuning] %s %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }
}

id sub_2520C1908(id result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = result;
    [result open];
    [v6 setDispatchQueue_];
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = a5;
    aBlock[4] = sub_2520CC178;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2520C737C;
    aBlock[3] = &block_descriptor_436;
    v11 = _Block_copy(aBlock);
    v12 = v6;

    [v12 setInputReportHandler_];
    _Block_release(v11);
    return [v12 activate];
  }

  return result;
}

void sub_2520C1A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a9;
  v15 = sub_252141A4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v214 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_252141A8C();
  v213 = *(v215 - 8);
  v19 = *(v213 + 64);
  MEMORY[0x28223BE20](v215);
  v212 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_252141ABC();
  v211 = *(v216 - 8);
  v21 = *(v211 + 64);
  MEMORY[0x28223BE20](v216);
  v217 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v210 = &v200 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v36 = sub_25214198C();
    __swift_project_value_buffer(v36, qword_27F4CDE68);
    v37 = sub_25214196C();
    v38 = sub_252141FAC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v224 = v40;
      *v39 = 136446210;
      v41 = sub_2521425DC();
      v43 = sub_2520A5448(v41, v42, &v224);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] ReqMgr not setup for HID device handler", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x253099FD0](v40, -1, -1);
      MEMORY[0x253099FD0](v39, -1, -1);
    }

    return;
  }

  v26 = Strong;
  if (Strong[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening] != 1)
  {

    return;
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  v207 = v16;
  if (byte_27F4D3492 == 1)
  {
    v209 = a9;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v27 = sub_25214198C();
    __swift_project_value_buffer(v27, qword_27F4CDE68);
    sub_2520CBC7C(a5, a6);
    sub_2520CBC7C(a5, a6);
    v28 = sub_25214196C();
    v29 = sub_252141FBC();
    if (!os_log_type_enabled(v28, v29))
    {
      sub_2520CB598(a5, a6);
      sub_2520CB598(a5, a6);

      v14 = v209;
      goto LABEL_27;
    }

    v206 = v15;
    v208 = v26;
    v30 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    *&aBlock = v204;
    *v30 = 136447234;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, &aBlock);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2048;
    *(v30 + 14) = a2;
    *(v30 + 22) = 2048;
    *(v30 + 24) = a4;
    v34 = a6 >> 62;
    *(v30 + 32) = 2048;
    LODWORD(v205) = v29;
    if ((a6 >> 62) > 1)
    {
      if (v34 != 2)
      {
        sub_2520CB598(a5, a6);
        v35 = 0;
        goto LABEL_26;
      }

      v45 = *(a5 + 16);
      v44 = *(a5 + 24);
      sub_2520CB598(a5, a6);
      v35 = v44 - v45;
      if (!__OFSUB__(v44, v45))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v34)
    {
      sub_2520CB598(a5, a6);
      v35 = BYTE6(a6);
LABEL_26:
      *(v30 + 34) = v35;
      sub_2520CB598(a5, a6);
      *(v30 + 42) = 2080;
      *&v224 = sub_2520F79EC(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530);
      v46 = sub_252141B3C();
      v48 = v47;

      *&v224 = 30768;
      *(&v224 + 1) = 0xE200000000000000;
      MEMORY[0x253098DA0](v46, v48);

      v49 = sub_2520A5448(v224, *(&v224 + 1), &aBlock);

      *(v30 + 44) = v49;
      _os_log_impl(&dword_25207E000, v28, v205, "[%{public}s] HID Report %llu, %ld, %ld, %s", v30, 0x34u);
      v50 = v204;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v50, -1, -1);
      MEMORY[0x253099FD0](v30, -1, -1);

      v26 = v208;
      v14 = v209;
      v15 = v206;
      goto LABEL_27;
    }

    sub_2520CB598(a5, a6);
    LODWORD(v35) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      __break(1u);
LABEL_97:
      swift_once();
      goto LABEL_38;
    }

    v35 = v35;
    goto LABEL_26;
  }

LABEL_27:
  v51 = sub_252141B6C();
  v52 = [a8 propertyForKey_];

  if (v52)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v219 = 0u;
    aBlock = 0u;
  }

  v224 = aBlock;
  v225 = v219;
  if (!*(&v219 + 1))
  {
    sub_2520A2584(&v224, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v74 = sub_25214198C();
    __swift_project_value_buffer(v74, qword_27F4CDE68);
    v75 = sub_25214196C();
    v76 = sub_252141FAC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_47;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v224 = v78;
    *v77 = 136446210;
    v79 = sub_2521425DC();
    v81 = sub_2520A5448(v79, v80, &v224);

    *(v77 + 4) = v81;
    v82 = "[%{public}s] HID payload size not available";
    goto LABEL_46;
  }

  if (v223[0] != 57)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v83 = sub_25214198C();
    __swift_project_value_buffer(v83, qword_27F4CDE68);
    v75 = sub_25214196C();
    v76 = sub_252141FAC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_47;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v224 = v78;
    *v77 = 136446210;
    v84 = sub_2521425DC();
    v86 = sub_2520A5448(v84, v85, &v224);

    *(v77 + 4) = v86;
    v82 = "[%{public}s] HID payload size unexpected";
LABEL_46:
    _os_log_impl(&dword_25207E000, v75, v76, v82, v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x253099FD0](v78, -1, -1);
    MEMORY[0x253099FD0](v77, -1, -1);
LABEL_47:

    return;
  }

  v206 = v15;
  v209 = v14;
  v208 = v26;
  v53 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock;
  v54 = 0x2796F5000uLL;
  [*&v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock] lock];
  v55 = sub_25210B148(&unk_28644DF88);
  v57 = v56;
  *&aBlock = v55;
  *(&aBlock + 1) = v56;
  *(&v225 + 1) = MEMORY[0x277CC9318];
  v226 = MEMORY[0x277CC9300];
  *&v224 = a5;
  *(&v224 + 1) = a6;
  v58 = __swift_project_boxed_opaque_existential_1(&v224, MEMORY[0x277CC9318]);
  v59 = *v58;
  v60 = v58[1];
  sub_2520CBC7C(a5, a6);
  sub_2520CBC7C(v55, v57);
  sub_2520CB22C(v59, v60);
  v205 = 0;
  sub_2520CB598(v55, v57);
  __swift_destroy_boxed_opaque_existential_0(&v224);
  v28 = &v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
  v61 = *&v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
  v62 = *&v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData + 8];
  *&v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData] = aBlock;
  sub_2520CB598(v61, v62);
  v63 = *&v208[v53];
  v30 = v208;
  a8 = 0x2796F5000uLL;
  [v63 unlock];
  if (qword_27F4CD7B8 != -1)
  {
    swift_once();
  }

  a4 = 0x27F4CD000uLL;
  if ((byte_27F4D3493 & 1) == 0)
  {
    goto LABEL_58;
  }

  v64 = v30 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response;
  if (*(v30 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response + 16) != 2)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v87 = sub_25214198C();
    __swift_project_value_buffer(v87, qword_27F4CDE68);
    v88 = v30;
    v89 = sub_25214196C();
    v90 = sub_252141FBC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      a8 = swift_slowAlloc();
      *&v224 = a8;
      *v91 = 136446466;
      v92 = sub_2521425DC();
      v94 = sub_2520A5448(v92, v93, &v224);

      *(v91 + 4) = v94;
      *(v91 + 12) = 1024;
      if (*(v64 + 16) == 2)
      {

        __break(1u);
        goto LABEL_102;
      }

      v95 = *(v64 + 32);

      *(v91 + 14) = v95 & 1;
      _os_log_impl(&dword_25207E000, v89, v90, "[%{public}s] User response is %{BOOL}d", v91, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(a8);
      MEMORY[0x253099FD0](a8, -1, -1);
      MEMORY[0x253099FD0](v91, -1, -1);

      v30 = v208;
      v54 = 0x2796F5000;
      a8 = 0x2796F5000;
    }

    else
    {

      v54 = 0x2796F5000uLL;
    }

    goto LABEL_58;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_97;
  }

LABEL_38:
  v65 = sub_25214198C();
  __swift_project_value_buffer(v65, qword_27F4CDE68);
  v66 = sub_25214196C();
  v67 = sub_252141FBC();
  v54 = 0x2796F5000;
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v224 = v69;
    *v68 = 136446210;
    v70 = sub_2521425DC();
    v72 = a8;
    v73 = sub_2520A5448(v70, v71, &v224);

    *(v68 + 4) = v73;
    a8 = v72;
    a4 = 0x27F4CD000;
    _os_log_impl(&dword_25207E000, v66, v67, "[%{public}s] User response is nil", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x253099FD0](v69, -1, -1);
    MEMORY[0x253099FD0](v68, -1, -1);
  }

LABEL_58:
  if (qword_27F4CD780 != -1)
  {
    swift_once();
  }

  v96 = qword_27F4CE108;
  v97 = qword_27F4CE110;
  v98 = *(v30 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager);
  if (v98 && (v99 = *(v30 + *(a4 + 3528) + 16), v99 != 2))
  {
    LOBYTE(aBlock) = v99 & 1;
    v100 = v98;
    sub_2520F8EAC(&aBlock, &v224);

    v97 = *(&v224 + 1);
    v96 = v224;
  }

  else
  {
  }

  isa = v28->isa;
  v102 = v28[1].isa;
  v223[0] = v96;
  v223[1] = v97;
  v103 = *(a4 + 3528);
  v104 = v30;
  v105 = (v30 + v103);
  LOBYTE(v103) = *(v105 + 32);
  aBlock = *v105;
  v219 = v105[1];
  LOBYTE(v220) = v103;
  sub_2520CBC7C(isa, v102);

  sub_2520CB808(isa, v102, v223, &aBlock, &v224);
  if (*(v104 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData))
  {
    v106 = v227;
    v107 = *(v104 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData);

    sub_2520ACB18(v106);
    sub_2520ABE70(v106, v228);
  }

  v108 = &unk_27F4D3000;
  v109 = v209;
  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v110 = sub_25214198C();
    __swift_project_value_buffer(v110, qword_27F4CDE68);
    sub_2520CBE7C(&v224, &aBlock);
    v111 = sub_25214196C();
    v112 = sub_252141FBC();
    sub_2520CBCE8(&v224);
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v204 = v97;
      v114 = v113;
      v115 = swift_slowAlloc();
      *&aBlock = v115;
      *v114 = 136447234;
      v116 = sub_2521425DC();
      v118 = a8;
      v119 = sub_2520A5448(v116, v117, &aBlock);

      *(v114 + 4) = v119;
      *(v114 + 12) = 2080;
      v120 = v224;
      [v224 *(v54 + 3640)];
      v121 = *(&v224 + 1);
      v223[0] = *(&v224 + 1);

      [v120 (v118 + 376)];
      v122 = MEMORY[0x253098E80](v121, MEMORY[0x277D839F8]);
      v124 = v123;
      sub_2520A2584(v223, &qword_27F4CDE58, &qword_252144528);
      v125 = sub_2520A5448(v122, v124, &aBlock);
      a8 = v118;
      v109 = v209;

      *(v114 + 14) = v125;
      *(v114 + 22) = 2048;
      *(v114 + 24) = v225;
      *(v114 + 32) = 2048;
      v126 = v227;
      *(v114 + 34) = v228;
      *(v114 + 42) = 2048;
      *(v114 + 44) = v126;
      _os_log_impl(&dword_25207E000, v111, v112, "[%{public}s] drumOctBand %s, drumAuditoryBand %f, drumdBA %f, drumdBAInst %f", v114, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v115, -1, -1);
      v127 = v114;
      v97 = v204;
      MEMORY[0x253099FD0](v127, -1, -1);
    }
  }

  v128 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock;
  v129 = v208;
  [*&v208[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock] *(v54 + 3640)];
  *v105 = 0;
  *(v105 + 1) = 0;
  v105[1] = xmmword_252143B10;
  *(v105 + 32) = 0;
  v130 = v129;
  [*&v129[v128] *(a8 + 3648)];
  if ((sub_2520C3578(&v224) & 1) == 0)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v163 = sub_25214198C();
    __swift_project_value_buffer(v163, qword_27F4CDE68);
    v164 = sub_25214196C();
    v165 = sub_252141FAC();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&aBlock = v167;
      *v166 = 136446210;
      v168 = sub_2521425DC();
      v170 = sub_2520A5448(v168, v169, &aBlock);

      *(v166 + 4) = v170;
      _os_log_impl(&dword_25207E000, v164, v165, "[%{public}s] Invalid Buffer, return without anaylsis", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v167);
      MEMORY[0x253099FD0](v167, -1, -1);
      MEMORY[0x253099FD0](v166, -1, -1);
    }

    sub_2520CBCE8(&v224);
    return;
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v131 = sub_25214198C();
    __swift_project_value_buffer(v131, qword_27F4CDE68);
    v132 = v129;
    v133 = sub_25214196C();
    v134 = sub_252141FBC();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      *&aBlock = v203;
      *v135 = 136447234;
      v136 = sub_2521425DC();
      v202 = v134;
      v138 = sub_2520A5448(v136, v137, &aBlock);
      v201 = v133;
      v139 = v138;

      *(v135 + 4) = v139;
      *(v135 + 12) = 2048;
      v141 = v54;
      v142 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output;
      v143 = *(*&v132[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output] + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
      MEMORY[0x28223BE20](v140);
      *(&v200 - 2) = v144;
      v145 = v144;
      v204 = v97;
      v146 = v145;
      v147 = v205;
      sub_25214200C();

      *(v135 + 14) = v222;
      *(v135 + 22) = 2080;
      v148 = *&v132[v142];
      v54 = v141;
      v149 = *(v148 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
      MEMORY[0x28223BE20](v150);
      *(&v200 - 2) = v151;
      v152 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
      sub_25214200C();

      v153 = MEMORY[0x253098E80](v222, MEMORY[0x277D839F8]);
      v155 = v154;

      v156 = sub_2520A5448(v153, v155, &aBlock);
      v130 = v208;

      *(v135 + 24) = v156;
      *(v135 + 32) = 2048;
      v157 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer;
      v158 = *(*&v132[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer] + 16);

      sub_25214200C();

      *(v135 + 34) = v222;
      *(v135 + 42) = 2048;
      v159 = *&v132[v157];
      a8 = 0x2796F5000;
      v109 = v209;
      v160 = *(v159 + 16);

      v97 = v204;
      sub_25214200C();
      v205 = v147;
      v108 = &unk_27F4D3000;

      *(v135 + 44) = v222;
      v161 = v201;
      _os_log_impl(&dword_25207E000, v201, v202, "[%{public}s] NoiseInterruption %ld, drumOctBandSm %s , dBAStationaryNoiseHighPct %f, dBAInstantNoiseHighPct %f", v135, 0x34u);
      v162 = v203;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v162, -1, -1);
      MEMORY[0x253099FD0](v135, -1, -1);
    }

    else
    {

      v109 = v209;
    }
  }

  if (v130[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted])
  {

    goto LABEL_94;
  }

  v130[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted] = 1;
  if (v108[1170] != 1)
  {
    goto LABEL_91;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v171 = sub_25214198C();
    __swift_project_value_buffer(v171, qword_27F4CDE68);
    v172 = sub_25214196C();
    v173 = sub_252141FBC();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = v97;
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&aBlock = v176;
      *v175 = 136446210;
      v177 = sub_2521425DC();
      v179 = sub_2520A5448(v177, v178, &aBlock);

      *(v175 + 4) = v179;
      _os_log_impl(&dword_25207E000, v172, v173, "[%{public}s] Starting noise classification timer", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v176);
      MEMORY[0x253099FD0](v176, -1, -1);
      v180 = v175;
      v97 = v174;
      MEMORY[0x253099FD0](v180, -1, -1);
    }

LABEL_91:
    sub_25209D56C();
    v181 = sub_252141FFC();
    sub_252141AAC();
    v183 = *&v130[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
    v182 = *&v130[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
    v184 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
    swift_beginAccess();
    v185 = *&v130[v184];
    if (!*(v185 + 16))
    {
      __break(1u);
      goto LABEL_99;
    }

    v204 = v181;

    v186 = sub_25213E648(v183, v182);
    if (v187)
    {
      break;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  v188 = *(*(v185 + 56) + 232 * v186 + 160);
  swift_endAccess();

  v189 = v210;
  v190 = v217;
  sub_252141AEC();
  v211 = *(v211 + 8);
  (v211)(v190, v216);
  v191 = swift_allocObject();
  v192 = v208;
  *(v191 + 16) = v208;
  *(v191 + 24) = v109;
  v220 = sub_2520CC1E8;
  v221 = v191;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v219 = sub_2520A3B78;
  *(&v219 + 1) = &block_descriptor_443_0;
  v193 = _Block_copy(&aBlock);
  v194 = v192;

  v195 = v212;
  sub_252141A6C();
  *&aBlock = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  v196 = v214;
  v197 = v206;
  sub_25214218C();
  v198 = v204;
  MEMORY[0x253099170](v189, v195, v196, v193);
  _Block_release(v193);

  (*(v207 + 8))(v196, v197);
  v199 = v195;
  v109 = v209;
  (*(v213 + 8))(v199, v215);
  (v211)(v189, v216);
  v130 = v192;
  v54 = 0x2796F5000uLL;
  a8 = 0x2796F5000uLL;
LABEL_94:
  v89 = *&v130[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock];
  [v89 *(v54 + 3640)];
  a4 = v205;
  sub_2520C6CD8(v130, v109);
  if (!a4)
  {
    [v89 *(a8 + 3648)];

    sub_2520CBCE8(&v224);
    return;
  }

LABEL_102:

  [v89 *(a8 + 3648)];
  __break(1u);
}

uint64_t sub_2520C3578(uint64_t a1)
{
  v7 = v1;
  swift_getObjectType();
  v9 = MEMORY[0x277D84F90];
  v10 = 16;
  v11 = sub_252099194(0, 16, 0, MEMORY[0x277D84F90]);
  v12 = *(v11 + 2);
  do
  {
    v13 = *(v11 + 3);
    if (v12 >= v13 >> 1)
    {
      v11 = sub_252099194((v13 > 1), v12 + 1, 1, v11);
    }

    *(v11 + 2) = v12 + 1;
    *&v11[8 * v12++ + 32] = 0;
    --v10;
  }

  while (v10);
  v14 = *a1;
  [*a1 lock];
  v405 = a1;
  v15 = *(a1 + 8);
  [v14 unlock];
  v16 = *(v15 + 16);
  if (v16)
  {
    *&v410 = v9;
    sub_2520A3448(0, v16, 0);
    v17 = (v15 + 32);
    v18 = *(v9 + 16);
    v3 = 10.0;
    do
    {
      v19 = log10(*v17);
      *&v410 = v9;
      v20 = *(v9 + 24);
      v21 = v18 + 1;
      if (v18 >= v20 >> 1)
      {
        v4 = v19;
        sub_2520A3448(v20 > 1, v18 + 1, 1);
        v19 = v4;
        v9 = v410;
      }

      *(v9 + 16) = v21;
      *(v9 + 8 * v18 + 32) = v19 * 10.0;
      ++v17;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v21 = *(v9 + 16);
  }

  for (i = 0; i != 16; ++i)
  {
    v23 = vcvtd_n_f64_u64(i, 1uLL);
    v24 = floor(v23);
    if (v24 <= -9.22337204e18)
    {
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      v230 = MEMORY[0x277D84F90];
      goto LABEL_213;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_328;
    }

    if (v24 == INFINITY)
    {
      goto LABEL_329;
    }

    v25 = ceil(v23);
    if (v25 == INFINITY)
    {
      goto LABEL_329;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_330;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_331;
    }

    v26 = v24;
    if (v25 >= 7)
    {
      v27 = 7;
    }

    else
    {
      v27 = v25;
    }

    if (v21 <= v26)
    {
      goto LABEL_332;
    }

    if (v25 < 0 || v27 >= v21)
    {
      goto LABEL_333;
    }

    if (i >= *(v11 + 2))
    {
      goto LABEL_334;
    }

    *&v11[8 * i + 32] = (*(v9 + 32 + 8 * v26) + *(v9 + 32 + 8 * v27)) * 0.5;
  }

  v28 = &v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v30 = *&v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v29 = *&v7[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
  v31 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v32 = *&v7[v31];
  if (!*(v32 + 16) || (, v33 = sub_25213E648(v30, v29), v35 = v34, , (v35 & 1) == 0))
  {
    swift_endAccess();

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v74 = sub_25214198C();
    __swift_project_value_buffer(v74, qword_27F4CDE68);
    v75 = sub_25214196C();
    v76 = sub_252141FAC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_44;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v410 = v78;
    *v77 = 136446210;
    v79 = sub_2521425DC();
    v81 = sub_2520A5448(v79, v80, &v410);

    *(v77 + 4) = v81;
    v82 = "[%{public}s] Tuning unknown, returning false";
    goto LABEL_43;
  }

  v36 = *(v32 + 56) + 232 * v33;
  v38 = *(v36 + 16);
  v37 = *(v36 + 32);
  v410 = *v36;
  v411 = v38;
  v412 = v37;
  v39 = *(v36 + 48);
  v40 = *(v36 + 64);
  v41 = *(v36 + 96);
  v415 = *(v36 + 80);
  v416 = v41;
  v413 = v39;
  v414 = v40;
  v42 = *(v36 + 112);
  v43 = *(v36 + 128);
  v44 = *(v36 + 160);
  v419 = *(v36 + 144);
  v420 = v44;
  v417 = v42;
  v418 = v43;
  v45 = *(v36 + 176);
  v46 = *(v36 + 192);
  v47 = *(v36 + 208);
  v424 = *(v36 + 224);
  v422 = v46;
  v423 = v47;
  v421 = v45;
  swift_endAccess();
  sub_2520A8DDC(&v410, v409);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v48 = sub_25214198C();
  __swift_project_value_buffer(v48, qword_27F4CDE68);
  sub_2520A8DDC(&v410, v409);
  v49 = v7;
  v50 = sub_25214196C();
  v51 = sub_252141FBC();
  v408 = v49;

  sub_2520CB568(&v410);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v409[0] = v53;
    *v52 = 136446722;
    v54 = sub_2521425DC();
    v56 = sub_2520A5448(v54, v55, v409);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = *v28;
    v58 = v28[1];

    v59 = sub_2520A5448(v57, v58, v409);

    *(v52 + 14) = v59;
    *(v52 + 22) = 2080;
    v60 = sub_2520B052C();
    v62 = sub_2520A5448(v60, v61, v409);

    *(v52 + 24) = v62;
    _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] NoiseAnalysis tuning currently loading %s: %s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v53, -1, -1);
    MEMORY[0x253099FD0](v52, -1, -1);
  }

  v63 = MEMORY[0x277D84F90];
  v399 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output;
  v64 = *(*&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output] + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
  MEMORY[0x28223BE20](v65);
  v67 = v66;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  sub_25214200C();

  v68 = v409[0];
  v69 = *(v409[0] + 16);
  if (v69)
  {
    v409[0] = v63;
    sub_2520A3448(0, v69, 0);
    v63 = v409[0];
    v3 = *&v419;
    v70 = *(v409[0] + 16);
    v71 = 32;
    do
    {
      v72 = *(v68 + v71);
      v409[0] = v63;
      v73 = *(v63 + 24);
      if (v70 >= v73 >> 1)
      {
        sub_2520A3448(v73 > 1, v70 + 1, 1);
        v63 = v409[0];
      }

      *(v63 + 16) = v70 + 1;
      *(v63 + 8 * v70 + 32) = v3 * v72;
      v71 += 8;
      ++v70;
      --v69;
    }

    while (v69);
  }

  v84 = *(v11 + 2);
  v85 = MEMORY[0x277D84F90];
  if (v84)
  {
    v409[0] = MEMORY[0x277D84F90];

    sub_2520A3448(0, v84, 0);
    v85 = v409[0];
    v3 = 1.0 - *&v419;
    v86 = *(v409[0] + 16);
    v87 = 32;
    do
    {
      v88 = *&v11[v87];
      v409[0] = v85;
      v89 = *(v85 + 24);
      if (v86 >= v89 >> 1)
      {
        sub_2520A3448(v89 > 1, v86 + 1, 1);
        v85 = v409[0];
      }

      *(v85 + 16) = v86 + 1;
      *(v85 + 8 * v86 + 32) = v3 * v88;
      v87 += 8;
      ++v86;
      --v84;
    }

    while (v84);
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492)
  {

    v90 = sub_25214196C();
    v91 = sub_252141FBC();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      v409[0] = v396;
      *v92 = 136446722;
      v93 = sub_2521425DC();
      v95 = sub_2520A5448(v93, v94, v409);

      *(v92 + 4) = v95;
      *(v92 + 12) = 2080;
      v96 = MEMORY[0x253098E80](v9, MEMORY[0x277D839F8]);
      v98 = v97;

      v99 = sub_2520A5448(v96, v98, v409);

      *(v92 + 14) = v99;
      *(v92 + 22) = 2080;

      v101 = MEMORY[0x253098E80](v100, MEMORY[0x277D839F8]);
      v103 = v102;

      v104 = sub_2520A5448(v101, v103, v409);

      *(v92 + 24) = v104;
      _os_log_impl(&dword_25207E000, v90, v91, "[%{public}s] NoiseAnalysis octBanddB %s, octBand16 %s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v396, -1, -1);
      MEMORY[0x253099FD0](v92, -1, -1);
    }

    else
    {
    }

    v105 = sub_25214196C();
    v106 = sub_252141FBC();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v409[0] = v108;
      *v107 = 136446722;
      v109 = sub_2521425DC();
      v111 = sub_2520A5448(v109, v110, v409);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      v112 = MEMORY[0x253098E80](v63, MEMORY[0x277D839F8]);
      v114 = sub_2520A5448(v112, v113, v409);

      *(v107 + 14) = v114;
      *(v107 + 22) = 2080;
      v115 = MEMORY[0x253098E80](v85, MEMORY[0x277D839F8]);
      v117 = sub_2520A5448(v115, v116, v409);

      *(v107 + 24) = v117;
      _os_log_impl(&dword_25207E000, v105, v106, "[%{public}s] NoiseAnalysis tmp1 %s, tmp2 %s", v107, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v108, -1, -1);
      MEMORY[0x253099FD0](v107, -1, -1);
    }
  }

  else
  {
  }

  v118 = v408;
  v119 = *&v408[v399];
  v120 = 0;
  v121 = sub_2520ADD14(v63, v85);

  sub_2520AFAC4(v121);

  v122 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer;
  v123 = *(*&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer] + 16);

  sub_25214200C();

  v124 = *(v409[0] + 16);

  if (!v124)
  {
    sub_2520CB568(&v410);
    v75 = sub_25214196C();
    v76 = sub_252141FAC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_44;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v409[0] = v78;
    *v77 = 136446210;
    v135 = sub_2521425DC();
    v137 = sub_2520A5448(v135, v136, v409);

    *(v77 + 4) = v137;
    v82 = "[%{public}s] Buffer is empty #1";
LABEL_43:
    _os_log_impl(&dword_25207E000, v75, v76, v82, v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x253099FD0](v78, -1, -1);
    MEMORY[0x253099FD0](v77, -1, -1);
LABEL_44:

    return 0;
  }

  v125 = *&v408[v122];
  v126 = *(v125 + 16);

  sub_25214200C();
  if (*(v409[0] + 16))
  {
    sub_2521388EC(0, 1);
    sub_2520AE19C(v409[0]);

    v125 = *&v408[v122];
    v127 = *(v125 + 16);

    sub_25214200C();
    v126 = v409[0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_64;
    }
  }

  else
  {
    __break(1u);
  }

  v126 = sub_252099194(0, *(v126 + 2) + 1, 1, v126);
LABEL_64:
  v129 = *(v126 + 2);
  v128 = *(v126 + 3);
  v2 = v129 + 1;
  if (v129 >= v128 >> 1)
  {
    v126 = sub_252099194((v128 > 1), v129 + 1, 1, v126);
  }

  v130 = *(v405 + 16);
  *(v126 + 2) = v2;
  *&v126[8 * v129 + 32] = v130;
  v131 = v126;
  v132 = v125;
  sub_2520AE19C(v131);

  v133 = *(v405 + 48);
  v398 = v122;
  v388 = v133;
  if (!v133)
  {
    v5 = 0.0;
    goto LABEL_173;
  }

  v134 = v401;
  if (v133 == -1)
  {
    v3 = *&v413;
  }

  else
  {
    v3 = 0.0;
    if (v133 == 1)
    {
      v3 = *(&v412 + 1);
    }
  }

  v4 = *(v405 + 40);
  v138 = round(v4 / 100.0);
  if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_339;
  }

  if (v138 <= -9.22337204e18)
  {
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  if (v138 >= 9.22337204e18)
  {
LABEL_340:
    __break(1u);
    goto LABEL_341;
  }

  if (__OFSUB__(v138, 1))
  {
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
    goto LABEL_343;
  }

  v139 = *(v411 + 16);
  if (v139 - 1 >= ((v138 - 1) & ~((v138 - 1) >> 63)))
  {
    v140 = (v138 - 1) & ~((v138 - 1) >> 63);
  }

  else
  {
    v140 = v139 - 1;
  }

  if (!v139)
  {
    goto LABEL_342;
  }

  v5 = *(v405 + 24);
  v385 = v411 + 32;
  v386 = v411;
  v141 = *(v411 + 32 + 8 * v140);
  v132 = *(*&v408[v122] + 16);

  sub_25214200C();

  if ((v412 & 0x8000000000000000) != 0)
  {
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v384 = v140;
  v142 = v5 + v141;
  v143 = v409[0];
  if (*(v409[0] + 16) >= v412)
  {
    v144 = v412;
  }

  else
  {
    v144 = *(v409[0] + 16);
  }

  v387 = v412;
  if (v412 && v144)
  {
    v409[0] = MEMORY[0x277D84F90];
    sub_2520A3448(0, v144, 0);
    v145 = 32;
    v132 = v409[0];
    do
    {
      v146 = *(v143 + v145);
      v409[0] = v132;
      v2 = *(v132 + 16);
      v147 = *(v132 + 24);
      if (v2 >= v147 >> 1)
      {
        sub_2520A3448(v147 > 1, v2 + 1, 1);
        v132 = v409[0];
      }

      *(v132 + 16) = v2 + 1;
      *(v132 + 8 * v2 + 32) = v142 - v146;
      v145 += 8;
      --v144;
    }

    while (v144);
    swift_unknownObjectRelease();
    v122 = v398;
  }

  else
  {
    swift_unknownObjectRelease();
    v132 = MEMORY[0x277D84F90];
  }

  v148 = *(v132 + 16);
  v149 = MEMORY[0x277D84F90];
  v396 = v132;
  if (!v148)
  {
    v155 = *(MEMORY[0x277D84F90] + 16);
    if (v155)
    {
      v150 = MEMORY[0x277D84F90];
      goto LABEL_102;
    }

    v118 = MEMORY[0x277D84F90];

    v159 = *(v118 + 16);
    if (!v159)
    {
      goto LABEL_116;
    }

LABEL_107:
    if (v159 > 3)
    {
      v160 = v159 & 0x7FFFFFFFFFFFFFFCLL;
      v161 = v118 + 48;
      v3 = 0.0;
      v162 = v159 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v163 = *v161;
        v3 = v3 + *(v161 - 16) + *(v161 - 8) + *v161 + *(v161 + 8);
        v161 += 32;
        v162 -= 4;
      }

      while (v162);
      if (v159 == v160)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v160 = 0;
      v3 = 0.0;
    }

    v164 = v159 - v160;
    v165 = (v118 + 8 * v160 + 32);
    do
    {
      v166 = *v165++;
      v3 = v3 + v166;
      --v164;
    }

    while (v164);
    goto LABEL_117;
  }

  v409[0] = MEMORY[0x277D84F90];
  sub_25209B234(0, v148, 0);
  v150 = v409[0];
  v151 = (v132 + 32);
  v152 = *(v409[0] + 16);
  do
  {
    v153 = *v151;
    v409[0] = v150;
    v154 = *(v150 + 24);
    v155 = v152 + 1;
    if (v152 >= v154 >> 1)
    {
      sub_25209B234((v154 > 1), v152 + 1, 1);
      v150 = v409[0];
    }

    *(v150 + 16) = v155;
    *(v150 + v152 + 32) = v153 < v3;
    ++v151;
    ++v152;
    --v148;
  }

  while (v148);
  v149 = MEMORY[0x277D84F90];
LABEL_102:
  v409[0] = v149;
  sub_2520A3448(0, v155, 0);
  v118 = v409[0];
  v148 = *(v409[0] + 16);
  v156 = 32;
  do
  {
    v157 = *(v150 + v156);
    v409[0] = v118;
    v158 = *(v118 + 24);
    v2 = v148 + 1;
    if (v148 >= v158 >> 1)
    {
      sub_2520A3448(v158 > 1, v148 + 1, 1);
      v118 = v409[0];
    }

    *(v118 + 16) = v2;
    *(v118 + 8 * v148 + 32) = v157;
    ++v156;
    ++v148;
    --v155;
  }

  while (v155);

  v122 = v398;
  v134 = v401;
  v120 = 0;
  v159 = *(v118 + 16);
  if (v159)
  {
    goto LABEL_107;
  }

LABEL_116:
  v3 = 0.0;
LABEL_117:
  if (byte_27F4D3492)
  {
    sub_2520A8DDC(&v410, v409);
    sub_2520CBE7C(v405, v409);

    v148 = v132;
    v132 = sub_25214196C();
    v2 = sub_252141FBC();
    sub_2520CBCE8(v405);
    sub_2520CB568(&v410);

    if (os_log_type_enabled(v132, v2))
    {
      v383 = v2;
      v167 = swift_slowAlloc();
      v382 = swift_slowAlloc();
      v409[0] = v382;
      *v167 = 136448002;
      v168 = sub_2521425DC();
      v170 = sub_2520A5448(v168, v169, v409);

      *(v167 + 4) = v170;
      *(v167 + 12) = 2048;
      *(v167 + 14) = v5;
      *(v167 + 22) = 2048;
      *(v167 + 24) = v142;
      *(v167 + 32) = 2048;
      *(v167 + 34) = v4;
      *(v167 + 42) = 2048;
      *(v167 + 44) = v384;
      *(v167 + 52) = 2048;
      if (v384 >= *(v386 + 16))
      {
        goto LABEL_421;
      }

      *(v167 + 54) = *(v385 + 8 * v384);
      *(v167 + 62) = 2080;
      v171 = MEMORY[0x277D839F8];
      v172 = MEMORY[0x253098E80](v396, MEMORY[0x277D839F8]);
      v2 = v173;

      v174 = sub_2520A5448(v172, v2, v409);

      *(v167 + 64) = v174;
      *(v167 + 72) = 2080;
      v175 = MEMORY[0x253098E80](v118, v171);
      v148 = v176;
      v177 = sub_2520A5448(v175, v176, v409);

      *(v167 + 74) = v177;
      _os_log_impl(&dword_25207E000, v132, v383, "[%{public}s] AuditoryBand toneLevel in dBFS %f, toneLevelCorr %f, toneFreq %f, auditoryBandSnrLevelCorrection[%ld] %f, SNR %s, SnrFlags %s", v167, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v382, -1, -1);
      MEMORY[0x253099FD0](v167, -1, -1);

      v122 = v398;
      v134 = v401;
      v120 = 0;
      v178 = *(v118 + 16);
      if (!v178)
      {
LABEL_185:
        __break(1u);
LABEL_186:
        v211 = *&v422;
        v148 = v401;
        goto LABEL_187;
      }
    }

    else
    {

      v178 = *(v118 + 16);
      if (!v178)
      {
        goto LABEL_185;
      }
    }
  }

  else
  {

    v178 = *(v118 + 16);
    if (!v178)
    {
      goto LABEL_185;
    }
  }

  v179 = *(v118 + 32);
  if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_344;
  }

  if (v179 <= -9.22337204e18)
  {
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  if (v179 >= 9.22337204e18)
  {
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  v132 = &v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics];
  v180 = *&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 32];
  v181 = __OFADD__(v180, v179);
  v182 = (v180 + v179);
  if (v181)
  {
LABEL_347:
    __break(1u);
    goto LABEL_348;
  }

  *(v132 + 32) = v182;
  if (v178 == 1)
  {
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  v183 = *(v118 + 40);
  if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  if (v183 <= -9.22337204e18)
  {
LABEL_350:
    __break(1u);
    goto LABEL_351;
  }

  if (v183 >= 9.22337204e18)
  {
LABEL_351:
    __break(1u);
    goto LABEL_352;
  }

  v184 = *(v132 + 40);
  v181 = __OFADD__(v184, v183);
  v185 = (v184 + v183);
  if (v181)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  *(v132 + 40) = v185;
  if (v178 < 3)
  {
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  v186 = *(v118 + 48);
  if ((*&v186 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  if (v186 <= -9.22337204e18)
  {
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  if (v186 >= 9.22337204e18)
  {
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v187 = *(v132 + 48);
  v181 = __OFADD__(v187, v186);
  v188 = (v187 + v186);
  if (v181)
  {
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  *(v132 + 48) = v188;
  if (v178 == 3)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v189 = *(v118 + 56);
  if ((*&v189 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  if (v189 <= -9.22337204e18)
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  if (v189 >= 9.22337204e18)
  {
LABEL_361:
    __break(1u);
    goto LABEL_362;
  }

  v190 = *(v132 + 56);
  v181 = __OFADD__(v190, v189);
  v191 = (v190 + v189);
  if (v181)
  {
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  *(v132 + 56) = v191;
  if (v178 < 5)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  v192 = *(v118 + 64);
  if ((*&v192 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  if (v192 <= -9.22337204e18)
  {
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  if (v192 >= 9.22337204e18)
  {
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  v193 = *(v132 + 64);
  v181 = __OFADD__(v193, v192);
  v194 = (v193 + v192);
  if (v181)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  *(v132 + 64) = v194;
  if (v178 == 5)
  {
LABEL_368:
    __break(1u);
    goto LABEL_369;
  }

  v195 = *(v118 + 72);
  if ((*&v195 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_369:
    __break(1u);
    goto LABEL_370;
  }

  if (v195 <= -9.22337204e18)
  {
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  if (v195 >= 9.22337204e18)
  {
LABEL_371:
    __break(1u);
    goto LABEL_372;
  }

  v196 = *(v132 + 72);
  v181 = __OFADD__(v196, v195);
  v197 = (v196 + v195);
  if (v181)
  {
    goto LABEL_373;
  }

  *(v132 + 72) = v197;
  if (v178 < 7)
  {
    __break(1u);
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v198 = *(v118 + 80);
  if ((*&v198 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_377:
    __break(1u);
    goto LABEL_378;
  }

  if (v198 <= -9.22337204e18)
  {
LABEL_378:
    __break(1u);
    goto LABEL_379;
  }

  if (v198 >= 9.22337204e18)
  {
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  v199 = *(v132 + 80);
  v181 = __OFADD__(v199, v198);
  v200 = (v199 + v198);
  if (v181)
  {
    goto LABEL_381;
  }

  *(v132 + 80) = v200;
  if (v178 == 7)
  {
    goto LABEL_382;
  }

  v201 = *(v118 + 88);
  if ((*&v201 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_383;
  }

  if (v201 <= -9.22337204e18)
  {
    goto LABEL_384;
  }

  if (v201 >= 9.22337204e18)
  {
    goto LABEL_385;
  }

  v202 = *(v132 + 88);
  v181 = __OFADD__(v202, v201);
  v203 = (v202 + v201);
  if (v181)
  {
    goto LABEL_386;
  }

  *(v132 + 88) = v203;
  if (v178 < 9)
  {
    goto LABEL_387;
  }

  v204 = *(v118 + 96);
  if ((*&v204 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_389;
  }

  if (v204 <= -9.22337204e18)
  {
    goto LABEL_390;
  }

  if (v204 >= 9.22337204e18)
  {
    goto LABEL_391;
  }

  v205 = *(v132 + 96);
  v181 = __OFADD__(v205, v204);
  v206 = (v205 + v204);
  if (v181)
  {
    goto LABEL_392;
  }

  *(v132 + 96) = v206;
  if (v178 == 9)
  {
    goto LABEL_393;
  }

  v148 = *(v132 + 104);
  v4 = *(v118 + 104);

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_394;
  }

  v118 = v408;
  if (v4 <= -9.22337204e18)
  {
    goto LABEL_395;
  }

  if (v4 >= 9.22337204e18)
  {
    goto LABEL_396;
  }

  if (__OFADD__(v148, v4))
  {
    goto LABEL_397;
  }

  v5 = v3 / v387;
  *(v132 + 104) = v148 + v4;
LABEL_173:
  v207 = *(*(v118 + v122) + 16);

  sub_25214200C();

  v208 = *(v409[0] + 16);

  if (!v208)
  {
    sub_2520CB568(&v410);
    v75 = sub_25214196C();
    v76 = sub_252141FAC();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_44;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v409[0] = v78;
    *v77 = 136446210;
    v212 = sub_2521425DC();
    v214 = sub_2520A5448(v212, v213, v409);

    *(v77 + 4) = v214;
    v82 = "[%{public}s] Buffer is empty #2";
    goto LABEL_43;
  }

  v132 = *(*(v118 + v122) + 16);

  sub_25214200C();
  if (*(v409[0] + 16))
  {
    sub_2521388EC(0, 1);
    sub_2520AF6B8(v409[0]);

    v209 = *(*(v118 + v122) + 16);

    sub_25214200C();
    v132 = v409[0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_176;
    }

    goto LABEL_374;
  }

LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  v132 = sub_252099194(0, *(v132 + 16) + 1, 1, v132);
LABEL_176:
  v134 = *(v132 + 16);
  v210 = *(v132 + 24);
  if (v134 >= v210 >> 1)
  {
    v132 = sub_252099194((v210 > 1), v134 + 1, 1, v132);
  }

  v4 = *(v405 + 56);
  *(v132 + 16) = v134 + 1;
  *(v132 + 8 * v134 + 32) = v4;
  sub_2520AF6B8(v132);

  if (!v388)
  {
    goto LABEL_238;
  }

  if (v388 == -1)
  {
    goto LABEL_186;
  }

  v211 = 0.0;
  v148 = v401;
  if (v388 == 1)
  {
    v211 = *(&v421 + 1);
  }

LABEL_187:
  v3 = *(v405 + 32);
  v215 = v424;
  v132 = *(*(v118 + v122) + 16);

  sub_25214200C();

  if ((v421 & 0x8000000000000000) != 0)
  {
    goto LABEL_398;
  }

  v390 = 0;
  v6 = v3 * v215;
  v216 = v409[0];
  if (*(v409[0] + 16) >= v421)
  {
    v217 = v421;
  }

  else
  {
    v217 = *(v409[0] + 16);
  }

  v400 = v421;
  if (v421 && v217)
  {
    v409[0] = MEMORY[0x277D84F90];
    sub_2520A3448(0, v217, 0);
    v218 = 32;
    v219 = v409[0];
    do
    {
      v220 = *(v216 + v218);
      v409[0] = v219;
      v2 = *(v219 + 16);
      v221 = *(v219 + 24);
      if (v2 >= v221 >> 1)
      {
        sub_2520A3448(v221 > 1, v2 + 1, 1);
        v219 = v409[0];
      }

      *(v219 + 16) = v2 + 1;
      *(v219 + 8 * v2 + 32) = v6 - v220;
      v218 += 8;
      --v217;
    }

    while (v217);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v219 = MEMORY[0x277D84F90];
  }

  v222 = *(v219 + 16);
  v223 = MEMORY[0x277D84F90];
  v396 = v219;
  if (!v222)
  {
    v228 = *(MEMORY[0x277D84F90] + 16);
    if (v228)
    {
      v2 = MEMORY[0x277D84F90];
      goto LABEL_207;
    }

    goto LABEL_335;
  }

  v409[0] = MEMORY[0x277D84F90];
  sub_25209B234(0, v222, 0);
  v2 = v409[0];
  v224 = (v219 + 32);
  v225 = *(v409[0] + 16);
  do
  {
    v226 = *v224;
    v409[0] = v2;
    v227 = *(v2 + 24);
    v228 = v225 + 1;
    if (v225 >= v227 >> 1)
    {
      sub_25209B234((v227 > 1), v225 + 1, 1);
      v2 = v409[0];
    }

    *(v2 + 16) = v228;
    *(v2 + v225 + 32) = v226 < v211;
    ++v224;
    ++v225;
    --v222;
  }

  while (v222);
  v223 = MEMORY[0x277D84F90];
LABEL_207:
  v409[0] = v223;
  sub_2520DD944(v228);
  v229 = 32;
  v230 = v409[0];
  do
  {
    v231 = *(v2 + v229);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2520A3448(0, *(v230 + 16) + 1, 1);
      v230 = v409[0];
    }

    v233 = *(v230 + 16);
    v232 = *(v230 + 24);
    if (v233 >= v232 >> 1)
    {
      sub_2520A3448(v232 > 1, v233 + 1, 1);
      v230 = v409[0];
    }

    *(v230 + 16) = v233 + 1;
    *(v230 + 8 * v233 + 32) = v231;
    ++v229;
    --v228;
  }

  while (v228);
LABEL_213:

  v234 = *(v230 + 16);
  v118 = v408;
  if (v234)
  {
    if (v234 <= 3)
    {
      v235 = 0;
      v236 = 0.0;
      goto LABEL_220;
    }

    v235 = v234 & 0x7FFFFFFFFFFFFFFCLL;
    v237 = v230 + 48;
    v236 = 0.0;
    v238 = v234 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v239 = *v237;
      v236 = v236 + *(v237 - 16) + *(v237 - 8) + *v237 + *(v237 + 8);
      v237 += 32;
      v238 -= 4;
    }

    while (v238);
    if (v234 != v235)
    {
LABEL_220:
      v240 = v234 - v235;
      v241 = (v230 + 8 * v235 + 32);
      do
      {
        v242 = *v241++;
        v236 = v236 + v242;
        --v240;
      }

      while (v240);
    }
  }

  else
  {
    v236 = 0.0;
  }

  v243 = v236 / v400;
  if (*(&v413 + 1) < v5)
  {
    v244 = *&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16];
    v181 = __OFADD__(v244, 1);
    v245 = v244 + 1;
    if (v181)
    {
      goto LABEL_419;
    }

    *&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 16] = v245;
    if (*(&v422 + 1) >= v243)
    {
      goto LABEL_229;
    }

    goto LABEL_227;
  }

  if (*(&v422 + 1) >= v243)
  {
    v248 = 0;
  }

  else
  {
LABEL_227:
    v246 = *&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 24];
    v181 = __OFADD__(v246, 1);
    v247 = v246 + 1;
    if (v181)
    {
      goto LABEL_420;
    }

    *&v408[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics + 24] = v247;
LABEL_229:
    v248 = 1;
  }

  v249 = *&v408[v399];
  sub_2520AFCA4(v248);

  v250 = *(*&v408[v399] + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
  MEMORY[0x28223BE20](v251);
  v253 = v252;
  v120 = v390;
  sub_25214200C();

  if (byte_27F4D3492 == 1)
  {
    v254 = v409[0];

    v2 = v396;

    v255 = sub_25214196C();
    v256 = sub_252141FBC();

    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v409[0] = v402;
      *v257 = 136447490;
      v258 = sub_2521425DC();
      v391 = v256;
      v260 = sub_2520A5448(v258, v259, v409);

      *(v257 + 4) = v260;
      *(v257 + 12) = 2048;
      *(v257 + 14) = v254;
      *(v257 + 22) = 2080;
      v261 = MEMORY[0x253098E80](v230, MEMORY[0x277D839F8]);
      v263 = v262;

      v264 = sub_2520A5448(v261, v263, v409);

      *(v257 + 24) = v264;
      *(v257 + 32) = 2048;
      *(v257 + 34) = v3;
      *(v257 + 42) = 2048;
      *(v257 + 44) = v6;
      *(v257 + 52) = 2080;
      v265 = MEMORY[0x253098E80](v396, MEMORY[0x277D839F8]);
      v267 = v266;

      v268 = sub_2520A5448(v265, v267, v409);

      *(v257 + 54) = v268;
      _os_log_impl(&dword_25207E000, v255, v391, "[%{public}s] toneInterferenceFlag %ld, dBAInstantSnrFlags %s. InstSPL toneLevelCorr in dBHL %f, weightedToneLevelCorr %f, dBAInstantSnr %s", v257, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v402, -1, -1);
      v269 = v257;
      v118 = v408;
      MEMORY[0x253099FD0](v269, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v122 = v398;
LABEL_238:
  v5 = *(v405 + 64);
  v270 = *&v414;
  v271 = *(*(v118 + v122) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE40, &unk_2521444F0);
  sub_25214200C();
  v134 = v409[0];
  v148 = *(v118 + v122);
  v132 = *(v148 + 16);

  sub_25214200C();

  v401 = v415;
  if ((v415 & 0x8000000000000000) != 0)
  {
    goto LABEL_376;
  }

  v2 = v409[0];
  v148 = *(v118 + v122);
  v272 = *(v148 + 16);

  sub_25214200C();

  v3 = *v409;
  v132 = v270 < v5;
  if (v2 >= *(v134 + 16))
  {
    v273 = sub_25214196C();
    v274 = sub_252141FAC();
    if (os_log_type_enabled(v273, v274))
    {
      v392 = swift_slowAlloc();
      v397 = swift_slowAlloc();
      v409[0] = v397;
      *v392 = 136446210;
      v275 = sub_2521425DC();
      v277 = v120;
      v278 = sub_2520A5448(v275, v276, v409);
      v122 = v398;

      *(v392 + 4) = v278;
      v120 = v277;
      _os_log_impl(&dword_25207E000, v273, v274, "[%{public}s] Flags count index out of range", v392, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v397);
      MEMORY[0x253099FD0](v397, -1, -1);
      MEMORY[0x253099FD0](v392, -1, -1);
    }

    v118 = v408;
    goto LABEL_252;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_399;
  }

  v148 = v120;
  v120 = *(v134 + 8 * v2 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_400;
  }

  while (2)
  {
    if (v2 >= *(v134 + 16))
    {
      __break(1u);
      goto LABEL_402;
    }

    *(v134 + 8 * v2 + 32) = v132;
    if (!v401)
    {
LABEL_402:
      __break(1u);
      goto LABEL_403;
    }

    if (__OFSUB__(v132, v120))
    {
      goto LABEL_404;
    }

    if (v401 - 1 > v2)
    {
      ++v2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v3 + (v132 - v120) / v401;
    v120 = v148;
LABEL_252:
    sub_2520AE67C(v3);
    sub_2520AE360(v134);
    sub_2520AE524(v2);

    v279 = *&v417;
    v280 = *(*(v118 + v122) + 16);

    sub_25214200C();
    v134 = v409[0];
    v148 = *(v118 + v122);
    v132 = *(v148 + 16);

    sub_25214200C();

    v396 = *(&v416 + 1);
    if ((*(&v416 + 1) & 0x8000000000000000) != 0)
    {
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      v134 = sub_2520A59C8(v134);
      continue;
    }

    break;
  }

  v2 = v409[0];
  v148 = *(v118 + v122);
  v281 = *(v148 + 16);

  sub_25214200C();

  v3 = *v409;
  v132 = v279 < v4;
  if (v2 >= *(v134 + 16))
  {
    v282 = sub_25214196C();
    v283 = sub_252141FAC();
    if (os_log_type_enabled(v282, v283))
    {
      v389 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      v409[0] = v393;
      *v389 = 136446210;
      v284 = sub_2521425DC();
      v286 = v120;
      v287 = sub_2520A5448(v284, v285, v409);
      v122 = v398;

      *(v389 + 4) = v287;
      v120 = v286;
      _os_log_impl(&dword_25207E000, v282, v283, "[%{public}s] Flags count index out of range", v389, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v393);
      MEMORY[0x253099FD0](v393, -1, -1);
      MEMORY[0x253099FD0](v389, -1, -1);
    }

    v118 = v408;
LABEL_266:
    sub_2520AEF7C(v3);
    sub_2520AEC60(v134);
    sub_2520AEE24(v2);

    v288 = *(&v414 + 1);
    v289 = *(*(v118 + v122) + 16);

    sub_25214200C();
    v134 = v409[0];
    v290 = *(*(v118 + v122) + 16);

    sub_25214200C();

    v2 = v409[0];
    v148 = *(v118 + v122);
    v291 = *(v148 + 16);

    sub_25214200C();

    v3 = *v409;
    v132 = v288 < v5;
    if (v2 >= *(v134 + 16))
    {
      v292 = sub_25214196C();
      v293 = sub_252141FAC();
      if (os_log_type_enabled(v292, v293))
      {
        v394 = swift_slowAlloc();
        v403 = swift_slowAlloc();
        v409[0] = v403;
        *v394 = 136446210;
        v294 = sub_2521425DC();
        v296 = v120;
        v297 = sub_2520A5448(v294, v295, v409);
        v122 = v398;

        *(v394 + 4) = v297;
        v120 = v296;
        _os_log_impl(&dword_25207E000, v292, v293, "[%{public}s] Flags count index out of range", v394, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v403);
        MEMORY[0x253099FD0](v403, -1, -1);
        MEMORY[0x253099FD0](v394, -1, -1);
      }

      v118 = v408;
LABEL_279:
      sub_2520AEAFC(v3);
      sub_2520AE7E0(v134);
      sub_2520AE9A4(v2);

      v298 = *(&v417 + 1);
      v299 = *(*(v118 + v122) + 16);

      sub_25214200C();
      v134 = v409[0];
      v300 = *(*(v118 + v122) + 16);

      sub_25214200C();

      v2 = v409[0];
      v148 = *(v118 + v122);
      v301 = *(v148 + 16);

      sub_25214200C();

      v3 = *v409;
      v132 = v298 < v4;
      if (v2 < *(v134 + 16))
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_412;
        }

        v148 = v120;
        v120 = *(v134 + 8 * v2 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_414;
        }

        goto LABEL_282;
      }

      v302 = sub_25214196C();
      v303 = sub_252141FAC();
      if (os_log_type_enabled(v302, v303))
      {
        v396 = swift_slowAlloc();
        v404 = swift_slowAlloc();
        v409[0] = v404;
        *v396 = 136446210;
        v304 = sub_2521425DC();
        v306 = v120;
        v307 = sub_2520A5448(v304, v305, v409);
        v122 = v398;

        *(v396 + 4) = v307;
        v120 = v306;
        _os_log_impl(&dword_25207E000, v302, v303, "[%{public}s] Flags count index out of range", v396, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v404);
        MEMORY[0x253099FD0](v404, -1, -1);
        MEMORY[0x253099FD0](v396, -1, -1);
      }

      v118 = v408;
LABEL_292:
      sub_2520AF3FC(v3);
      sub_2520AF0E0(v134);
      sub_2520AF2A4(v2);

      v308 = *(*(v118 + v122) + 16);

      sub_25214200C();

      v309 = v409[0];
      v310 = *(*&v408[v122] + 16);

      sub_25214200C();

      v311 = v409[0];
      v312 = *(*&v408[v122] + 16);

      sub_25214200C();

      v313 = v409[0];
      v314 = *(*&v408[v122] + 16);

      sub_25214200C();

      v401 = v409[0];
      v315 = *(*&v408[v122] + 16);

      sub_25214200C();

      v316 = v409[0];
      v317 = *(*&v408[v122] + 16);

      sub_25214200C();

      v318 = v409[0];
      v319 = *(*&v408[v122] + 16);

      v118 = v408;
      sub_25214200C();

      v320 = v409[0];
      v321 = *(*&v408[v122] + 16);

      sub_25214200C();

      v322 = v409[0];
      if (byte_27F4D3492)
      {

        v323 = sub_25214196C();
        v324 = sub_252141FBC();

        if (os_log_type_enabled(v323, v324))
        {
          v325 = swift_slowAlloc();
          v406 = swift_slowAlloc();
          v409[0] = v406;
          *v325 = 136448258;
          v326 = sub_2521425DC();
          LODWORD(v396) = v324;
          v328 = sub_2520A5448(v326, v327, v409);

          *(v325 + 4) = v328;
          *(v325 + 12) = 2048;
          *(v325 + 14) = v309;
          *(v325 + 22) = 2080;
          v329 = MEMORY[0x277D83B88];
          v395 = v120;
          v330 = MEMORY[0x253098E80](v311, MEMORY[0x277D83B88]);
          v332 = v331;

          v333 = sub_2520A5448(v330, v332, v409);

          *(v325 + 24) = v333;
          *(v325 + 32) = 2048;
          *(v325 + 34) = v313;
          *(v325 + 42) = 2080;
          v334 = MEMORY[0x253098E80](v401, v329);
          v336 = v335;

          v337 = sub_2520A5448(v334, v336, v409);

          *(v325 + 44) = v337;
          *(v325 + 52) = 2048;
          *(v325 + 54) = v316;
          *(v325 + 62) = 2080;
          v338 = MEMORY[0x253098E80](v318, v329);
          v340 = v339;

          v341 = sub_2520A5448(v338, v340, v409);

          *(v325 + 64) = v341;
          *(v325 + 72) = 2048;
          *(v325 + 74) = v320;
          *(v325 + 82) = 2080;
          v120 = v395;
          v342 = MEMORY[0x253098E80](v322, v329);
          v344 = v343;

          v345 = sub_2520A5448(v342, v344, v409);

          *(v325 + 84) = v345;
          _os_log_impl(&dword_25207E000, v323, v396, "[%{public}s] dBAStationaryNoiseHighPct %f, dBAStationaryFlags %s, dBAInstantNoiseHighPct %f, dBAInstantFlags %s, dBAStationaryNoiseHighPct2 %f, dBAStationaryFlags2 %s, dBAInstantNoiseHighPct2 %f, dBAInstantFlags2 %s", v325, 0x5Cu);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v406, -1, -1);
          v346 = v325;
          v118 = v408;
          MEMORY[0x253099FD0](v346, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v348 = *(*(v118 + v399) + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
      MEMORY[0x28223BE20](v347);
      v350 = v349;
      sub_25214200C();

      if (v409[0] == 1)
      {
        v3 = *(&v415 + 1);
        v4 = *&v418;
      }

      else
      {
        v352 = *(*(v118 + v399) + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
        MEMORY[0x28223BE20](v351);
        v354 = v353;
        sub_25214200C();

        if (v409[0] != 3)
        {
          v355 = *(&v415 + 1);
          v3 = *&v416;
          v4 = *(&v418 + 1);
          v5 = *&v418;
LABEL_304:
          v122 = v398;
          v356 = *(*(v118 + v398) + 16);

          sub_25214200C();

          v357 = *v409;
          v407 = v355 < *v409;
          v358 = *(*(v118 + v398) + 16);

          sub_25214200C();

          v359 = *v409;
          v134 = v5 < *v409;
          v360 = *(*(v118 + v398) + 16);

          sub_25214200C();

          v361 = *v409;
          v2 = v3 < *v409;
          v362 = *(*(v118 + v398) + 16);

          sub_25214200C();

          v363 = *v409;
          v364 = v4 < *v409;
          *(v118 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A) = v407;
          *(v118 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B) = v134;
          *(v118 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A) = v2;
          *(v118 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B) = v364;
          if (byte_27F4D3492 == 1)
          {
            v365 = sub_25214196C();
            v366 = sub_252141FBC();
            if (os_log_type_enabled(v365, v366))
            {
              LODWORD(v401) = v5 < v359;
              v367 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              v409[0] = v134;
              *v367 = 136447234;
              v368 = sub_2521425DC();
              v122 = v369;
              v2 = sub_2520A5448(v368, v369, v409);

              *(v367 + 4) = v2;
              *(v367 + 12) = 1024;
              *(v367 + 14) = v355 < v357;
              v118 = v408;
              *(v367 + 18) = 1024;
              *(v367 + 20) = v401;
              *(v367 + 24) = 1024;
              *(v367 + 26) = v3 < v361;
              *(v367 + 30) = 1024;
              *(v367 + 32) = v4 < v363;
              _os_log_impl(&dword_25207E000, v365, v366, "[%{public}s] check 1A %{BOOL}d, 1B %{BOOL}d, 2A %{BOOL}d, 2B %{BOOL}d", v367, 0x24u);
              __swift_destroy_boxed_opaque_existential_0(v134);
              MEMORY[0x253099FD0](v134, -1, -1);
              MEMORY[0x253099FD0](v367, -1, -1);
            }
          }

          v370 = v355 < v357;
          if (v5 < v359)
          {
            v370 = 1;
          }

          v371 = v3 < v361 || v370;
          if (v4 < v363)
          {
            v371 = 1;
          }

          v372 = !v370;
          v373 = 2;
          if (!v372)
          {
            v373 = 3;
          }

          if (v371)
          {
            v374 = v373;
          }

          else
          {
            v374 = 1;
          }

          v148 = *(v118 + v398);
          v132 = *(v148 + 16);

          sub_25214200C();
          if (!__OFADD__(v409[0], 1))
          {
            sub_2520AF560(v409[0] + 1);

            v376 = *(*(v118 + v399) + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
            MEMORY[0x28223BE20](v375);
            v378 = v377;
            sub_25214200C();

            if (v374 == v409[0])
            {
              sub_2520CB568(&v410);
              goto LABEL_324;
            }

            v379 = *(*(v118 + v398) + 16);

            sub_25214200C();

            sub_2520CB568(&v410);
            if (v409[0] >= *(&v419 + 1))
            {
              v380 = *(v118 + v399);
              sub_2520AF944(v374);

              v381 = *(v118 + v398);

              sub_2520AF560(0);
            }

            else
            {
LABEL_324:
            }

            return 1;
          }

          goto LABEL_388;
        }

        v3 = *&v416;
        v4 = *(&v418 + 1);
      }

      v5 = v4;
      v355 = v3;
      goto LABEL_304;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v148 = v120;
      v120 = *(v134 + 8 * v2 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_269:
        if (v2 >= *(v134 + 16))
        {
          __break(1u);
          goto LABEL_411;
        }

        *(v134 + 8 * v2 + 32) = v132;
        if (!v401)
        {
          goto LABEL_413;
        }

        if (__OFSUB__(v132, v120))
        {
          goto LABEL_416;
        }

        if (v401 - 1 > v2)
        {
          ++v2;
        }

        else
        {
          v2 = 0;
        }

        v3 = v3 + (v132 - v120) / v401;
        v120 = v148;
        goto LABEL_279;
      }

LABEL_409:
      result = sub_2520A59C8(v134);
      v134 = result;
      goto LABEL_269;
    }

    goto LABEL_407;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v148 = v120;
    v120 = *(v134 + 8 * v2 + 32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_256;
    }

    goto LABEL_405;
  }

LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  v134 = sub_2520A59C8(v134);
LABEL_256:
  if (v2 >= *(v134 + 16))
  {
    __break(1u);
LABEL_407:
    __break(1u);
    goto LABEL_408;
  }

  *(v134 + 8 * v2 + 32) = v132;
  if (!v396)
  {
LABEL_408:
    __break(1u);
    goto LABEL_409;
  }

  if (!__OFSUB__(v132, v120))
  {
    if (v396 - 1 > v2)
    {
      ++v2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v3 + (v132 - v120) / v396;
    v120 = v148;
    goto LABEL_266;
  }

LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  result = sub_2520A59C8(v134);
  v134 = result;
LABEL_282:
  if (v2 < *(v134 + 16))
  {
    *(v134 + 8 * v2 + 32) = v132;
    if (!v396)
    {
      goto LABEL_417;
    }

    if (__OFSUB__(v132, v120))
    {
      goto LABEL_418;
    }

    if (v396 - 1 > v2)
    {
      ++v2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v3 + (v132 - v120) / v396;
    v120 = v148;
    goto LABEL_292;
  }

  __break(1u);
LABEL_416:
  __break(1u);
LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
  return result;
}

void sub_2520C6A60(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerDone] = 1;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = a1;
    oslog = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136446466;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v18);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      v11 = *&v3[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
      v10 = *&v3[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
      v12 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
      swift_beginAccess();
      v13 = *&v3[v12];
      if (*(v13 + 16))
      {

        v14 = sub_25213E648(v11, v10);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 232 * v14 + 160);
          swift_endAccess();

          *(v5 + 14) = v16;
          _os_log_impl(&dword_25207E000, oslog, v4, "[%{public}s] Noise classification timer of %f seconds completed", v5, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v6);
          MEMORY[0x253099FD0](v6, -1, -1);
          MEMORY[0x253099FD0](v5, -1, -1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_2520C6CD8(char *a1, uint64_t a2)
{
  v38 = a2;
  v48 = sub_252141A4C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_252141A8C();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v47 = a1;
  v10 = *&a1[v9];
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v41 = v53;
  v40 = (v3 + 8);
  v39 = (v6 + 8);
  v49 = v10;

  v17 = 0;
  *&v18 = 136446210;
  v37 = v18;
  v43 = v11;
  v42 = v15;
  while (v14)
  {
LABEL_10:
    sub_2520CB768(*(v49 + 48) + 40 * (__clz(__rbit64(v14)) | (v17 << 6)), v57);
    sub_2520CB7A0(v57, v55);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v28 = sub_25214198C();
    __swift_project_value_buffer(v28, qword_27F4CDE68);
    v29 = sub_25214196C();
    v30 = sub_252141FBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = v37;
      v33 = sub_2521425DC();
      v35 = sub_2520A5448(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] notifying noise analyzer observers", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }

    v14 &= v14 - 1;
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 16) = v47;
    v50 = v56;
    sub_2520CB768(v55, v54);
    v21 = swift_allocObject();
    sub_2520CB7A0(v54, v21 + 16);
    *(v21 + 56) = sub_2520CC228;
    *(v21 + 64) = v19;
    v53[2] = sub_2520CC280;
    v53[3] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v53[0] = sub_2520A3B78;
    v53[1] = &block_descriptor_456;
    v22 = _Block_copy(aBlock);
    v23 = v20;

    v24 = v44;
    sub_252141A6C();
    v51 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
    v25 = v46;
    v26 = v48;
    sub_25214218C();
    MEMORY[0x2530991B0](0, v24, v25, v22);
    _Block_release(v22);

    (*v40)(v25, v26);
    (*v39)(v24, v45);

    result = sub_2520CB7D8(v55);
    v11 = v43;
    v15 = v42;
  }

  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v15)
    {
    }

    v14 = *(v11 + 8 * v27);
    ++v17;
    if (v14)
    {
      v17 = v27;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_2520C72E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = *(a3 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output);
  v6 = *(a3 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerDone);
  v7 = *(a2 + 16);
  v8 = v5;
  v7();
}

uint64_t sub_2520C737C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = a2;
  v14 = a6;
  v15 = sub_25214184C();
  v17 = v16;

  v12(v13, a3, a4, a5, v15, v17);
  sub_2520CB598(v15, v17);
}

void sub_2520C7444(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2520C74B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating] = 1;
  }
}

void sub_2520C7514(unsigned int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_25209CDF8(&unk_28644E078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE20, &unk_2521444C0);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_25213E70C(a1), (v6 & 1) != 0))
  {
    v7 = (v4[7] + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
  }

  else
  {
    v10 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  v11 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v12 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
  *v11 = v9;
  v11[1] = v10;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v13 = sub_25214198C();
  __swift_project_value_buffer(v13, qword_27F4CDE68);
  v14 = v2;
  v15 = sub_25214196C();
  v16 = sub_252141FBC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v109 = v18;
    *v17 = 136446466;
    v19 = sub_2521425DC();
    v20 = v11;
    v22 = sub_2520A5448(v19, v21, &v109);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = *v11;
    v24 = v20[1];

    v25 = sub_2520A5448(v23, v24, &v109);

    *(v17 + 14) = v25;
    v11 = v20;
    _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Updating current tuning based on product ID %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v18, -1, -1);
    MEMORY[0x253099FD0](v17, -1, -1);
  }

  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_252141B6C();
  v28 = [v26 initWithSuiteName_];

  if (!v28)
  {
    __break(1u);
    goto LABEL_34;
  }

  v29 = sub_252141B6C();
  v30 = [v28 objectForKey_];

  if (v30)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
  }

  v109 = v105;
  v110 = v106;
  if (*(&v106 + 1))
  {
    if (swift_dynamicCast())
    {
      v32 = v107;
      v31 = v108;
      if (v107 == *v11 && v108 == v11[1] || (sub_25214247C() & 1) != 0)
      {

        v33 = v14;
        v34 = sub_25214196C();
        v35 = sub_252141FBC();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v109 = v37;
          *v36 = 136446466;
          v38 = sub_2521425DC();
          v40 = sub_2520A5448(v38, v39, &v109);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2080;
          v41 = *v11;
          v42 = v11[1];

          v43 = sub_2520A5448(v41, v42, &v109);

          *(v36 + 14) = v43;
          _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] Connected device product ID %s matches stored user default, already applied cached tunings, no-op", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v37, -1, -1);
          MEMORY[0x253099FD0](v36, -1, -1);
        }

        return;
      }

      v57 = v14;

      v58 = sub_25214196C();
      v59 = sub_252141FAC();

      v104 = v57;

      if (os_log_type_enabled(v58, v59))
      {
        v60 = v11;
        v61 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v109 = v103;
        *v61 = 136446978;
        v62 = sub_2521425DC();
        v64 = sub_2520A5448(v62, v63, &v109);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2080;
        v65 = *v60;
        v66 = v60[1];

        v67 = sub_2520A5448(v65, v66, &v109);

        *(v61 + 14) = v67;
        *(v61 + 22) = 2080;
        *(v61 + 24) = sub_2520A5448(v32, v31, &v109);
        *(v61 + 32) = 2080;
        *(v61 + 34) = sub_2520A5448(v32, v31, &v109);
        _os_log_impl(&dword_25207E000, v58, v59, "[%{public}s] Connected device product ID %s does not match stored user default %s, not overriding cached tuning for %s", v61, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v103, -1, -1);
        v68 = v61;
        v11 = v60;
        MEMORY[0x253099FD0](v68, -1, -1);
      }

      v70 = *v11;
      v69 = v11[1];
      v71 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
      swift_beginAccess();
      v72 = *&v104[v71];
      if (*(v72 + 16))
      {

        v73 = sub_25213E648(v70, v69);
        v75 = v74;

        if (v75)
        {
          v76 = *(v72 + 56) + 232 * v73;
          v78 = *(v76 + 16);
          v77 = *(v76 + 32);
          v109 = *v76;
          v110 = v78;
          v111 = v77;
          v79 = *(v76 + 48);
          v80 = *(v76 + 64);
          v81 = *(v76 + 96);
          v114 = *(v76 + 80);
          v115 = v81;
          v112 = v79;
          v113 = v80;
          v82 = *(v76 + 112);
          v83 = *(v76 + 128);
          v84 = *(v76 + 160);
          v118 = *(v76 + 144);
          v119 = v84;
          v116 = v82;
          v117 = v83;
          v85 = *(v76 + 176);
          v86 = *(v76 + 192);
          v87 = *(v76 + 208);
          v123 = *(v76 + 224);
          v121 = v86;
          v122 = v87;
          v120 = v85;
          swift_endAccess();
          sub_2520A8DDC(&v109, &v105);

          v88 = v104;
          sub_2520A8DDC(&v109, &v105);
          v89 = sub_25214196C();
          v90 = sub_252141FBC();

          sub_2520CB568(&v109);
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v105 = v92;
            *v91 = 136446722;
            v93 = sub_2521425DC();
            v95 = sub_2520A5448(v93, v94, &v105);

            *(v91 + 4) = v95;
            *(v91 + 12) = 2080;
            v96 = *v11;
            v97 = v11[1];

            v98 = sub_2520A5448(v96, v97, &v105);

            *(v91 + 14) = v98;
            *(v91 + 22) = 2080;
            v99 = sub_2520B052C();
            v101 = v100;
            sub_2520CB568(&v109);
            v102 = sub_2520A5448(v99, v101, &v105);

            *(v91 + 24) = v102;
            _os_log_impl(&dword_25207E000, v89, v90, "[%{public}s] %s Tuning %s", v91, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253099FD0](v92, -1, -1);
            MEMORY[0x253099FD0](v91, -1, -1);
          }

          else
          {

            sub_2520CB568(&v109);
          }

          return;
        }
      }

LABEL_34:
      swift_endAccess();
      __break(1u);
      return;
    }
  }

  else
  {

    sub_2520A2584(&v109, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v44 = v14;
  v45 = sub_25214196C();
  v46 = sub_252141FBC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v109 = v48;
    *v47 = 136446466;
    v49 = sub_2521425DC();
    v51 = sub_2520A5448(v49, v50, &v109);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = *v11;
    v53 = v11[1];

    v54 = sub_2520A5448(v52, v53, &v109);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_25207E000, v45, v46, "[%{public}s] No stored user default for tuning target product ID, updating cached tuning for connected device %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v48, -1, -1);
    MEMORY[0x253099FD0](v47, -1, -1);
  }

  v55 = *v11;
  v56 = v11[1];

  sub_2520B6E28(v55);
}

void sub_2520C7F08()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock);
  [v1 lock];
  *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening) = 1;
  [v1 unlock];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  oslog = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, oslog, v3, "[%{public}s] Enabled hidListening", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }
}

void sub_2520C80A4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  [v1 unlock];
  if (v3)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v4 = sub_25214198C();
    __swift_project_value_buffer(v4, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v18);

      *(v7 + 4) = v11;
      v12 = "[%{public}s] Noise queue not empty, won't disable HID listening.";
LABEL_10:
      _os_log_impl(&dword_25207E000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock);
    [v13 lock];
    *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening) = 0;
    [v13 unlock];
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    v5 = sub_25214196C();
    v6 = sub_252141FBC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, &v18);

      *(v7 + 4) = v17;
      v12 = "[%{public}s] Disabled hidListening";
      goto LABEL_10;
    }
  }
}

void sub_2520C834C()
{
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31 = v5;
    *v4 = 136446210;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v31);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Activating HID Manager.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated;
    v11 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated);
    v12 = v9;
    oslog = v12;
    if (v11)
    {
      v13 = sub_25214196C();
      v14 = sub_252141FBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136446210;
        v17 = sub_2521425DC();
        v19 = sub_2520A5448(v17, v18, &v31);

        *(v15 + 4) = v19;
        v20 = "[%{public}s] hidActivated is already true.";
LABEL_13:
        _os_log_impl(&dword_25207E000, v13, v14, v20, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x253099FD0](v16, -1, -1);
        MEMORY[0x253099FD0](v15, -1, -1);

        goto LABEL_14;
      }
    }

    else
    {
      [v12 activate];
      *(v0 + v10) = 1;
      v13 = sub_25214196C();
      v14 = sub_252141FBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136446210;
        v27 = sub_2521425DC();
        v29 = sub_2520A5448(v27, v28, &v31);

        *(v15 + 4) = v29;
        v20 = "[%{public}s] HID Manager activated.";
        goto LABEL_13;
      }
    }
  }

  else
  {
    oslog = sub_25214196C();
    v21 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136446210;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25207E000, oslog, v21, "[%{public}s] HID Manager cannot be activated.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
      goto LABEL_14;
    }
  }

LABEL_14:
}

void sub_2520C8748()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock);
    v4 = v2;
    [v3 lock];
    v5 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
    swift_beginAccess();
    v6 = *(*(v1 + v5) + 16);
    [v3 unlock];
    if (v6)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v7 = sub_25214198C();
      __swift_project_value_buffer(v7, qword_27F4CDE68);
      v8 = sub_25214196C();
      v9 = sub_252141FAC();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, &v36);

      *(v10 + 4) = v14;
      v15 = "[%{public}s] Noise queue not empty, won't cancel HID Manager.";
LABEL_24:
      _os_log_impl(&dword_25207E000, v8, v9, v15, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
LABEL_25:

      return;
    }

    if (*(v1 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating) != 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v31 = sub_25214198C();
      __swift_project_value_buffer(v31, qword_27F4CDE68);
      v8 = sub_25214196C();
      v9 = sub_252141FAC();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v32 = sub_2521425DC();
      v34 = sub_2520A5448(v32, v33, &v36);

      *(v10 + 4) = v34;
      v15 = "[%{public}s] Not terminating, won't cancel HID Manager";
      goto LABEL_24;
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    v24 = sub_25214196C();
    v25 = sub_252141FBC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] Cancelling HID Manager", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }

    [v4 cancel];
    *(v1 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated) = 0;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    oslog = sub_25214196C();
    v17 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136446210;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_25207E000, oslog, v17, "[%{public}s] HID Manager cannot be cancelled.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2520C8C70(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v9 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID + 8];
  v101 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  v11 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v102 = v11;
  v12 = *&v2[v11];
  if (*(v12 + 16) && (, v13 = sub_25213E648(v10, v9), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = (*(v12 + 56) + 232 * v13);
    v18 = v16[1];
    v17 = v16[2];
    v110 = *v16;
    v111 = v18;
    v112 = v17;
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[6];
    v115 = v16[5];
    v116 = v21;
    v113 = v19;
    v114 = v20;
    v22 = v16[7];
    v23 = v16[8];
    v24 = v16[10];
    v119 = v16[9];
    v120 = v24;
    v117 = v22;
    v118 = v23;
    v25 = v16[11];
    v26 = v16[12];
    v27 = v16[13];
    v124 = *(v16 + 28);
    v122 = v26;
    v123 = v27;
    v121 = v25;
    memmove(&v125, v16, 0xE8uLL);
    nullsub_1(&v125);
    sub_2520A8DDC(&v110, v108);
  }

  else
  {
    sub_2520CB6D4(&v110);
    v137 = v122;
    v138 = v123;
    v139 = v124;
    v133 = v118;
    v134 = v119;
    v135 = v120;
    v136 = v121;
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v132 = v117;
    v125 = v110;
    v126 = v111;
    v127 = v112;
    v128 = v113;
  }

  v122 = v137;
  v123 = v138;
  v124 = v139;
  v118 = v133;
  v119 = v134;
  v120 = v135;
  v121 = v136;
  v114 = v129;
  v115 = v130;
  v116 = v131;
  v117 = v132;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  if (sub_2520CB6FC(&v110) == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v104 = v138;
  v108[12] = v137;
  v108[13] = v138;
  v109 = v139;
  v108[8] = v133;
  v108[9] = v134;
  v108[10] = v135;
  v108[11] = v136;
  v108[4] = v129;
  v108[5] = v130;
  v108[6] = v131;
  v108[7] = v132;
  v108[0] = v125;
  v108[1] = v126;
  v108[2] = v127;
  v108[3] = v128;
  swift_endAccess();
  sub_2520CB568(v108);
  v28 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock];
  [v28 lock];
  v29 = &v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response];
  *v29 = v4;
  v29[1] = v5;
  *(v29 + 2) = v6;
  *(v29 + 3) = v7;
  *(v29 + 32) = v8;
  [v28 unlock];
  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_252141B6C();
  v32 = [v30 initWithSuiteName_];

  if (!v32)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v33 = sub_252141B6C();
  v34 = [v32 BOOLForKey_];

  if (v34)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v35 = sub_25214198C();
    __swift_project_value_buffer(v35, qword_27F4CDE68);
    v36 = sub_25214196C();
    v37 = sub_252141FBC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v140[0] = v39;
      *v38 = 136446210;
      v40 = sub_2521425DC();
      v42 = sub_2520A5448(v40, v41, v140);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] InterferenceFlag is disabled by UserDefaults", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x253099FD0](v39, -1, -1);
      MEMORY[0x253099FD0](v38, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD780 != -1)
    {
      swift_once();
    }

    v43 = qword_27F4CE108;
    v44 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager];
    if (v44 && (v45 = *(v29 + 16), v45 != 2))
    {
      LOBYTE(v105[0]) = v45 & 1;
      v47 = v44;
      sub_2520F8EAC(v105, v140);

      v43 = v140[0];
      v46 = v140[1];
    }

    else
    {
    }

    v48 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData];
    v49 = *&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData + 8];
    v107[0] = v43;
    v107[1] = v46;
    v105[0] = v4;
    *&v105[1] = v5;
    v105[2] = v6;
    v105[3] = v7;
    v106 = v8;
    sub_2520CBC7C(v48, v49);
    sub_2520CB808(v48, v49, v107, v105, v140);
    v50 = sub_2520C3578(v140);
    if ((v50 & 1) == 0)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v51 = sub_25214198C();
      __swift_project_value_buffer(v51, qword_27F4CDE68);
      v52 = sub_25214196C();
      v53 = sub_252141FAC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v105[0] = v55;
        *v54 = 136446210;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, v105);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] Invalid Buffer for noise analysis", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x253099FD0](v55, -1, -1);
        MEMORY[0x253099FD0](v54, -1, -1);
      }
    }

    v59 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output;
    v60 = *(*&v2[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output] + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
    MEMORY[0x28223BE20](v50);
    v62 = v61;
    sub_25214200C();

    v63 = v105[0] == 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v64 = sub_25214198C();
    v65 = __swift_project_value_buffer(v64, qword_27F4CDE68);
    v66 = v2;
    v67 = sub_25214196C();
    v68 = sub_252141FBC();
    v100 = v66;
    if (os_log_type_enabled(v67, v68))
    {
      v98 = v65;
      v69 = v66;
      v70 = swift_slowAlloc();
      v99 = v63;
      v97 = swift_slowAlloc();
      v105[0] = v97;
      *v70 = 136446722;
      v71 = sub_2521425DC();
      v73 = v59;
      v74 = sub_2520A5448(v71, v72, v105);

      v96[1] = v96;
      *(v70 + 4) = v74;
      *(v70 + 12) = 2048;
      v76 = *(*&v2[v73] + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
      MEMORY[0x28223BE20](v75);
      v78 = v77;
      sub_25214200C();

      *(v70 + 14) = v107[0];
      *(v70 + 22) = 2048;
      *(v70 + 24) = v104;
      _os_log_impl(&dword_25207E000, v67, v68, "[%{public}s] InterferenceFlag from response is %ld, repeat the previous tone for up to %ld times", v70, 0x20u);
      v79 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x253099FD0](v79, -1, -1);
      MEMORY[0x253099FD0](v70, -1, -1);
    }

    else
    {
    }

    v80 = v102;
    v82 = *v101;
    v81 = v101[1];
    swift_beginAccess();
    v83 = *&v2[v80];
    if (*(v83 + 16) && (, v84 = sub_25213E648(v82, v81), v86 = v85, , (v86 & 1) != 0))
    {
      v87 = *(*(v83 + 56) + 232 * v84 + 216);
      swift_endAccess();
      sub_2520CBCE8(v140);
    }

    else
    {
      swift_endAccess();
      v88 = sub_25214196C();
      v89 = sub_252141FAC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v105[0] = v91;
        *v90 = 136446210;
        v92 = sub_2521425DC();
        v94 = sub_2520A5448(v92, v93, v105);

        *(v90 + 4) = v94;
        _os_log_impl(&dword_25207E000, v88, v89, "[%{public}s] Tuning unknown, use cached tuning", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x253099FD0](v91, -1, -1);
        MEMORY[0x253099FD0](v90, -1, -1);
      }

      sub_2520CBCE8(v140);

      v95 = v5 < *&v100[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 216];
    }
  }
}

void sub_2520C96A4(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v8 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v9 = *&a2[v8];

  v11 = sub_2520ADAD8(v10);

  swift_beginAccess();
  v12 = *a1;
  *a1 = v11;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v13 = sub_25214198C();
  __swift_project_value_buffer(v13, qword_27F4CDE68);
  v14 = sub_25214196C();
  v15 = sub_252141FBC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v61[0] = v17;
    *v16 = 136446466;
    v18 = sub_2521425DC();
    v58 = a3;
    v20 = v8;
    v21 = sub_2520A5448(v18, v19, v61);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    swift_beginAccess();
    v22 = *a1;

    v24 = MEMORY[0x253098E80](v23, MEMORY[0x277D837D0]);
    v26 = v25;

    v27 = v24;
    v8 = v20;
    v28 = sub_2520A5448(v27, v26, v61);

    *(v16 + 14) = v28;
    a3 = v58;
    _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] observers before add are %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v17, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  v29 = *&a2[v8];

  v30 = sub_252112D14(a3, v29);

  if (v30)
  {
    swift_unknownObjectRetain();
    v31 = sub_25214196C();
    v32 = sub_252141FAC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136446466;
      v35 = sub_2521425DC();
      v37 = a3;
      v38 = sub_2520A5448(v35, v36, v61);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v40 = (*(a5 + 8))(ObjectType);
      v42 = sub_2520A5448(v40, v41, v61);

      *(v33 + 14) = v42;
      a3 = v37;
      _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] Replacing old observer %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v33, -1, -1);
    }

    swift_beginAccess();
    sub_25212B2D0(a3, v61);
    swift_endAccess();
    sub_2520A2584(v61, &qword_27F4CDE38, &unk_2521444E0);
  }

  sub_2520CB768(a3, v60);
  swift_beginAccess();
  sub_25213EB80(v61, v60);
  swift_endAccess();
  sub_2520CB7D8(v61);
  v43 = a2;
  swift_unknownObjectRetain();
  v44 = v43;
  v45 = sub_25214196C();
  v46 = v8;
  v47 = sub_252141FBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61[0] = v49;
    *v48 = 136446722;
    v50 = sub_2521425DC();
    v62 = v46;
    v52 = sub_2520A5448(v50, v51, v61);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v53 = swift_getObjectType();
    v54 = (*(a5 + 8))(v53);
    v56 = sub_2520A5448(v54, v55, v61);

    *(v48 + 14) = v56;
    *(v48 + 22) = 2048;
    v57 = *(*&a2[v62] + 16);

    *(v48 + 24) = v57;
    _os_log_impl(&dword_25207E000, v45, v47, "[%{public}s] Added observer %s, number of observers in queue is %ld", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v49, -1, -1);
    MEMORY[0x253099FD0](v48, -1, -1);
  }

  else
  {
  }
}

void sub_2520C9C88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests;
  swift_beginAccess();
  v67 = v5;
  v68 = a1;
  v6 = *(a1 + v5);

  v8 = sub_2520ADAD8(v7);

  v78 = v8;
  if (qword_27F4CD708 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v9 = sub_25214198C();
    __swift_project_value_buffer(v9, qword_27F4CDE68);
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v77[0] = v13;
      *v12 = 136446466;
      v14 = sub_2521425DC();
      v65 = a3;
      v16 = sub_2520A5448(v14, v15, v77);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;

      v18 = MEMORY[0x253098E80](v17, MEMORY[0x277D837D0]);
      v20 = v19;

      v21 = sub_2520A5448(v18, v20, v77);
      a3 = v65;

      *(v12 + 14) = v21;
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] observers before remove are %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v23 = (*(a3 + 8))(ObjectType, a3);
    v25 = v24;
    v26 = *(v68 + v67);
    v27 = 1 << *(v26 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    a3 = v28 & *(v26 + 56);
    v29 = (v27 + 63) >> 6;
    v30 = *(v68 + v67);
    swift_bridgeObjectRetain_n();
    v31 = 0;
    if (a3)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

        v73 = xmmword_252143AF0;
        v75 = 0;
        v76 = 0;
        v74 = 0;
        goto LABEL_18;
      }

      a3 = *(v26 + 56 + 8 * v32);
      ++v31;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v32 = v31;
LABEL_11:
    sub_2520CB768(*(v26 + 48) + 40 * (__clz(__rbit64(a3)) | (v32 << 6)), v72);
    sub_2520CB7A0(v72, v69);
    if (v70 == v23 && v71 == v25)
    {
      break;
    }

    if (sub_25214247C())
    {
      break;
    }

    a3 &= a3 - 1;
    sub_2520CB7D8(v69);
    v31 = v32;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  sub_2520CB7A0(v69, &v73);
LABEL_18:

  if (v73 == __PAIR128__(1, 0))
  {
    sub_2520A2584(&v73, &qword_27F4CDE38, &unk_2521444E0);

    v33 = sub_25214196C();
    v34 = sub_252141FAC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136446466;
      v37 = sub_2521425DC();
      v39 = sub_2520A5448(v37, v38, v77);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_2520A5448(v23, v25, v77);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] Cannot remove observer %s because it was not in queue.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v36, -1, -1);
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2520CB7A0(&v73, v77);
    swift_beginAccess();
    sub_25212B2D0(v77, &v73);
    swift_endAccess();
    sub_2520A2584(&v73, &qword_27F4CDE38, &unk_2521444E0);
    v41 = *(*(v68 + v67) + 16);

    v42 = sub_25214196C();
    v43 = sub_252141FBC();

    if (os_log_type_enabled(v42, v43))
    {
      v66 = v41;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v73 = v45;
      *v44 = 136446722;
      v46 = sub_2521425DC();
      v48 = sub_2520A5448(v46, v47, &v73);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_2520A5448(v23, v25, &v73);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v66;
      _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] Removed observer %s; number of observers remaining in queue is %ld.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v45, -1, -1);
      MEMORY[0x253099FD0](v44, -1, -1);
    }

    else
    {
    }

    v50 = *(v68 + v67);

    v52 = sub_2520ADAD8(v51);

    swift_beginAccess();
    v78 = v52;

    v53 = sub_25214196C();
    v54 = sub_252141FBC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72[0] = v56;
      *v55 = 136446466;
      v57 = sub_2521425DC();
      v59 = sub_2520A5448(v57, v58, v72);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;

      v61 = MEMORY[0x253098E80](v60, MEMORY[0x277D837D0]);
      v63 = v62;

      v64 = sub_2520A5448(v61, v63, v72);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] observers after remove are %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v56, -1, -1);
      MEMORY[0x253099FD0](v55, -1, -1);
    }

    sub_2520CB7D8(v77);
  }
}

id sub_2520CA47C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager;
  v4 = *&v0[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager];
  if (v4)
  {
    [v4 close];
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] HID Manager cannot be closed", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }
  }

  v13 = *&v1[v3];
  *&v1[v3] = 0;

  v14 = *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager];
  *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager] = 0;

  v15 = *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue];
  *&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue] = 0;

  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_2520CA83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520CA888(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2520CA930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520CA978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2520CAA04()
{
  result = qword_27F4CDE18;
  if (!qword_27F4CDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDE18);
  }

  return result;
}

uint64_t sub_2520CAA58()
{
  v0 = objc_allocWithZone(type metadata accessor for HTNoiseAnalyzer());
  result = sub_2520B16A4(0);
  qword_27F4D3430 = result;
  return result;
}

uint64_t sub_2520CAA90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_2520CAB3C(uint64_t a1, char a2, uint64_t *a3)
{
  v102 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v53 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_2520CC300(&v70);
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v90 = v74;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v86 = v70;
  v87 = v71;
  v4 = v5;
  v88 = v72;
  v89 = v73;
  while (1)
  {
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v85 = v101;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v73 = v89;
    if (sub_2520CC2E8(&v70) == 1)
    {

      return;
    }

    v22 = v5;
    v23 = v86;
    v67 = v99;
    v68 = v100;
    v69 = v101;
    v63 = v95;
    v64 = v96;
    v65 = v97;
    v66 = v98;
    v59 = v91;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v55 = v87;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v24 = *v102;
    v26 = sub_25213E648(v86, *(&v86 + 1));
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_2521424CC();
      __break(1u);
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      break;
    }

    if (a2)
    {
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_2520A7134();
      if (v30)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v35 = *v102;
    v35[(v26 >> 6) + 8] |= 1 << v26;
    *(v35[6] + 16 * v26) = v23;
    v36 = v35[7] + 232 * v26;
    v37 = v55;
    v38 = v57;
    *(v36 + 16) = v56;
    *(v36 + 32) = v38;
    *v36 = v37;
    v39 = v58;
    v40 = v59;
    v41 = v61;
    *(v36 + 80) = v60;
    *(v36 + 96) = v41;
    *(v36 + 48) = v39;
    *(v36 + 64) = v40;
    v42 = v62;
    v43 = v63;
    v44 = v65;
    *(v36 + 144) = v64;
    *(v36 + 160) = v44;
    *(v36 + 112) = v42;
    *(v36 + 128) = v43;
    v45 = v66;
    v46 = v67;
    v47 = v68;
    *(v36 + 224) = v69;
    *(v36 + 192) = v46;
    *(v36 + 208) = v47;
    *(v36 + 176) = v45;
    v48 = v35[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_22;
    }

    v35[2] = v50;
    a2 = 1;
    v5 = v22;
    if (v4 == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v53 + 248 * v4);
    v7 = v6[13];
    v8 = v6[11];
    v82 = v6[12];
    v83 = v7;
    v9 = v6[13];
    v84 = v6[14];
    v10 = v6[9];
    v11 = v6[7];
    v78 = v6[8];
    v79 = v10;
    v12 = v6[9];
    v13 = v6[11];
    v80 = v6[10];
    v81 = v13;
    v14 = v6[5];
    v15 = v6[3];
    v74 = v6[4];
    v75 = v14;
    v16 = v6[5];
    v17 = v6[7];
    v76 = v6[6];
    v77 = v17;
    v18 = v6[1];
    v70 = *v6;
    v71 = v18;
    v19 = v6[3];
    v21 = *v6;
    v20 = v6[1];
    v72 = v6[2];
    v73 = v19;
    v98 = v82;
    v99 = v9;
    v100 = v6[14];
    v94 = v78;
    v95 = v12;
    v96 = v80;
    v97 = v8;
    v90 = v74;
    v91 = v16;
    v92 = v76;
    v93 = v11;
    v86 = v21;
    v87 = v20;
    v85 = *(v6 + 30);
    v101 = *(v6 + 30);
    ++v4;
    v88 = v72;
    v89 = v15;
    nullsub_1(&v86);
    sub_2520A2D9C(&v70, &v55, &qword_27F4CDB48, &qword_252143CF8);
  }

  v31 = v102;
  sub_2520A7F0C(v29, a2 & 1);
  v32 = *v31;
  v33 = sub_25213E648(v23, *(&v23 + 1));
  if ((v30 & 1) != (v34 & 1))
  {
    goto LABEL_25;
  }

  v26 = v33;
  if ((v30 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v51 = swift_allocError();
  swift_willThrow();
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2520CB568(&v55);

    return;
  }

LABEL_26:
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252148C50);
  sub_25214230C();
  MEMORY[0x253098DA0](39, 0xE100000000000000);
  sub_25214231C();
  __break(1u);
}

char *sub_2520CB018(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2521421AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25214255C();

      sub_252141BEC();
      v13 = sub_25214258C();

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
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 232 * v3);
        v19 = (v18 + 232 * v6);
        if (v3 != v6 || result >= v19 + 232)
        {
          result = memmove(result, v19, 0xE8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2520CB1CC(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_2520A7134();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_2520A7F0C(v4, v5);
  return 1;
}

uint64_t sub_2520CB22C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_25214181C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2520CB364(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2520CB364(uint64_t a1, uint64_t a2)
{
  result = sub_25214173C();
  if (!result || (result = sub_25214175C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25214174C();
      return sub_25214181C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2520CB3F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(a2 + 24);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if ((sub_2520AD354(*(result + 32), *(a2 + 32)) & 1) != 0 && *(v6 + 40) == *(a2 + 40) && *(v6 + 48) == *(a2 + 48) && (sub_2520AD354(*(v6 + 56), *(a2 + 56)) & 1) != 0 && *(v6 + 64) == *(a2 + 64) && *(v6 + 72) == *(a2 + 72) && (sub_2520AD354(*(v6 + 80), *(a2 + 80)) & 1) != 0 && *(v6 + 88) == *(a2 + 88) && *(v6 + 96) == *(a2 + 96) && (sub_2520AD354(*(v6 + 104), *(a2 + 104)) & 1) != 0 && *(v6 + 112) == *(a2 + 112) && *(v6 + 120) == *(a2 + 120) && *(v6 + 128) == *(a2 + 128))
    {
      v10 = *(v6 + 136);
      v11 = *(a2 + 136);

      return sub_2520AE140(v10, v11);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520CB598(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2520CB604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520CB63C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2520CB684()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2520CB6D4(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2520CB6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2520CB808@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = sub_252141D3C();
  *(v13 + 16) = 8;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  if (v10 == 2)
  {

    v14 = 0;
    v15 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v60 = v6;
    v61 = v7;
    v15 = HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(v9, v8);

    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_39;
    }

    v19 = *(a1 + 16);
    v20 = sub_25214173C();
    if (v20)
    {
      v21 = v20;
      v22 = sub_25214175C();
      if (__OFSUB__(v19, v22))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v18 = (v19 - v22 + v21);
      sub_25214174C();
      if (v18)
      {
        v24 = *(a1 + 16);
        v23 = *(a1 + 24);
        v17 = v23 - v24;
        if (__OFSUB__(v23, v24))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
        }

        if (v17 <= 59)
        {
LABEL_39:
          sub_2520CB598(a1, a2);
          v38 = 0.0;
          v39 = 0.0;
          v41 = 0.0;
          goto LABEL_40;
        }

LABEL_16:
        v50 = v14;
        v25 = sub_252099F10(v17 >> 2, 0);
        memcpy(v25 + 8, v18, v17 & 0x7FFFFFFFFFFFFFFCLL);
        if (*(v25 + 2) < 4uLL)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
        }

        else
        {
          v26 = 0;
          while (1)
          {
            v27 = v25[v26 + 11];
            [v12 lock];

            [v12 unlock];
            v28 = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_2520A598C(v13);
            }

            if (v26 >= *(v28 + 2))
            {
              goto LABEL_42;
            }

            *&v28[8 * v26 + 32] = v27;
            [v12 lock];
            if (*(v28 + 2) <= 8uLL)
            {

              v13 = v28;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
              v29 = swift_allocObject();
              v30 = _swift_stdlib_malloc_size(v29);
              v31 = v30 - 32;
              if (v30 < 32)
              {
                v31 = v30 - 25;
              }

              *(v29 + 16) = 8;
              *(v29 + 24) = 2 * (v31 >> 3);
              v32 = *(v28 + 5);
              v34 = *(v28 + 2);
              v33 = *(v28 + 3);
              *(v29 + 64) = *(v28 + 4);
              *(v29 + 80) = v32;
              *(v29 + 32) = v34;
              *(v29 + 48) = v33;

              v13 = v29;
            }

            v35 = v26 + 3;
            [v12 unlock];
            if (v35 == 10)
            {
              break;
            }

            v36 = v35 + 1;
            v26 = v35 - 2;
            if (v36 >= *(v25 + 2))
            {
              goto LABEL_41;
            }
          }

          v37 = *(v25 + 2);
          if (v37 >= 0xC)
          {
            if (v37 != 12)
            {
              if (v37 >= 0xE)
              {
                v38 = v25[19];
                v39 = v25[20];
                v40 = v25[21];
                sub_2520CB598(a1, a2);

                v41 = v40;
                v14 = v50;
LABEL_40:
                *&v55 = v12;
                *(&v55 + 1) = v13;
                *&v56 = v38;
                *(&v56 + 1) = v15;
                *&v57 = v9;
                *(&v57 + 1) = v8;
                *&v58 = v14;
                *(&v58 + 1) = v39;
                v59 = v41;
                v60 = v12;
                v61 = v13;
                v62 = v38;
                v63 = v15;
                v64 = v9;
                v65 = v8;
                v66 = v14;
                v67 = v39;
                v68 = v41;
                sub_2520CBE7C(&v55, v54);
                result = sub_2520CBCE8(&v60);
                v47 = v56;
                v48 = v58;
                *(a5 + 32) = v57;
                *(a5 + 48) = v48;
                *(a5 + 64) = v59;
                *a5 = v55;
                *(a5 + 16) = v47;
                v49 = *MEMORY[0x277D85DE8];
                return result;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      sub_25214174C();
    }

    __break(1u);
    goto LABEL_53;
  }

  if (!v16)
  {
    v17 = BYTE6(a2);
    v18 = &v53;
    if (BYTE6(a2) <= 0x3BuLL)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  if (a1 > a1 >> 32)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v42 = sub_25214173C();
  if (!v42)
  {
LABEL_53:
    result = sub_25214174C();
    goto LABEL_54;
  }

  v43 = v42;
  v44 = sub_25214175C();
  if (__OFSUB__(a1, v44))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v18 = (a1 - v44 + v43);
  result = sub_25214174C();
  if (v18)
  {
    v46 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_50;
    }

    v17 = v46;
    if (v46 <= 59)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_2520CBC7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_2520CBDB0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double sub_2520CBDE8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = result;
  return result;
}

double sub_2520CBE4C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520CBF10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2520CBF48()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

double sub_2520CBF84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 96) = result;
  return result;
}

double sub_2520CBFA8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

uint64_t sub_2520CBFB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_99Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520CC078()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520CC0E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25214247C() & 1;
  }
}

uint64_t sub_2520CC138()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2520CC1F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520CC230()
{
  MEMORY[0x25309A090](v0 + 16);

  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_239Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2520CC2E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_2520CC300(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2520CC350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2520CC398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2520CCAA8()
{
  v0 = sub_25214198C();
  __swift_allocate_value_buffer(v0, qword_27F4CDF10);
  __swift_project_value_buffer(v0, qword_27F4CDF10);
  return sub_25214197C();
}

uint64_t sub_2520CCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2520CD084();
  result = sub_25214211C();
  *a4 = result;
  return result;
}

id sub_2520CCCA8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_2520CCD34(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_25214195C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_25214194C();
}

uint64_t sub_2520CCDF8()
{
  v0 = sub_25214198C();
  __swift_allocate_value_buffer(v0, qword_27F4CDF68);
  __swift_project_value_buffer(v0, qword_27F4CDF68);
  return sub_25214197C();
}

uint64_t sub_2520CCECC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25214198C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25214197C();
}

uint64_t sub_2520CCF7C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_2520CD084()
{
  result = qword_27F4CDF98;
  if (!qword_27F4CDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4CDF98);
  }

  return result;
}

uint64_t sub_2520CD0D0()
{
  v0 = sub_252141A4C();
  v1 = *(v0 - 8);
  v43 = v0;
  v44 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_252141A1C();
  v36 = *(v38 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_252141ABC();
  v45 = *(v37 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v32 - v10;
  v33 = sub_252141FEC();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252141FCC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_252141A8C();
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25209D56C();
  sub_252141A7C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520CEEB8(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v11 + 104))(v14, *MEMORY[0x277D85260], v33);
  v33 = sub_25214202C();
  v21 = v34;
  sub_252141AAC();
  *v6 = 25;
  v22 = v36;
  v23 = v38;
  (*(v36 + 104))(v6, *MEMORY[0x277D85178], v38);
  v24 = v35;
  MEMORY[0x253098C70](v21, v6);
  (*(v22 + 8))(v6, v23);
  v25 = *(v45 + 8);
  v45 += 8;
  v26 = v37;
  v25(v21, v37);
  aBlock[4] = sub_2520CEE6C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_3;
  v27 = _Block_copy(aBlock);

  sub_252141A6C();
  v46 = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  v29 = v42;
  v28 = v43;
  sub_25214218C();
  v30 = v33;
  MEMORY[0x253099170](v24, v20, v29, v27);
  _Block_release(v27);

  (*(v44 + 8))(v29, v28);
  (*(v39 + 8))(v20, v40);
  v25(v24, v26);
}

void *sub_2520CD70C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214198C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger, v3, v6);
  v10 = sub_25214196C();
  v11 = sub_252141FBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v9;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] dealloc", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253099FD0](v14, -1, -1);
    v18 = v13;
    v9 = v23;
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v19(v8, v3);
  *(v1 + 160) = 1;
  v20 = v1[3];

  v21 = v1[19];
  sub_2520A1FE4(v1[18]);

  v19(v1 + v9, v3);
  return v1;
}

uint64_t sub_2520CD93C()
{
  sub_2520CD70C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HTToneGenerator()
{
  result = qword_27F4CDFA8;
  if (!qword_27F4CDFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2520CD9E8()
{
  result = sub_25214198C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2520CDADC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_252141A8C();
  v73 = *(v75 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_252141ABC();
  v83 = *(v80 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v71 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = v66 - v11;
  v12 = sub_252141A1C();
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v0[2];
  v17 = v0[3];
  v18 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  swift_bridgeObjectRetain_n();
  v19 = sub_25214196C();
  v20 = sub_252141F9C();

  v84 = v19;
  v21 = os_log_type_enabled(v19, v20);
  v81 = v12;
  v82 = v15;
  v77 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v22 = 136446466;
    v23 = sub_2521425DC();
    v25 = v2;
    v26 = sub_2520A5448(v23, v24, aBlock);

    *(v22 + 4) = v26;
    v2 = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2520A5448(v16, v17, aBlock);
    v27 = v84;
    _os_log_impl(&dword_25207E000, v84, v20, "[%{public}s] Waiting: %s", v22, 0x16u);
    v28 = v70;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v28, -1, -1);
    v29 = v22;
    v12 = v81;
    v15 = v82;
    MEMORY[0x253099FD0](v29, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 161) == 1 && (v1[24] & 1) == 0)
  {
    v30 = sub_25214196C();
    v31 = sub_252141F9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v84 = v18;
      v34 = v33;
      aBlock[0] = v33;
      *v32 = 136446210;
      v35 = sub_2521425DC();
      v37 = v3;
      v38 = sub_2520A5448(v35, v36, aBlock);

      *(v32 + 4) = v38;
      v3 = v37;
      _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] User requested to stop", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x253099FD0](v34, -1, -1);
      v39 = v32;
      v12 = v81;
      v15 = v82;
      MEMORY[0x253099FD0](v39, -1, -1);
    }

    *(v1 + 192) = 1;
  }

  v40 = *(v1 + 160);
  if (v40 == 1)
  {
    LODWORD(v84) = 1;

    v41 = sub_25214196C();
    v42 = sub_252141F9C();

    v43 = os_log_type_enabled(v41, v42);
    v69 = v3;
    v68 = v2;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136446466;
      v46 = sub_2521425DC();
      v48 = sub_2520A5448(v46, v47, aBlock);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = v77;
      *(v44 + 14) = sub_2520A5448(v77, v17, aBlock);
      _os_log_impl(&dword_25207E000, v41, v42, "[%{public}s] Signaled: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v45, -1, -1);
      MEMORY[0x253099FD0](v44, -1, -1);
    }

    else
    {

      v49 = v77;
    }

    *v15 = 250;
    v50 = v78;
    (*(v78 + 104))(v15, *MEMORY[0x277D85178], v12);
    v51 = v1[18];
    if (v51)
    {
      v52 = v1[19];
      v66[1] = v1[23];
      v70 = v1 + 18;

      v53 = v71;
      sub_252141AAC();
      MEMORY[0x253098C70](v53, v15);
      v54 = *(v83 + 8);
      v83 += 8;
      v67 = v54;
      v54(v53, v80);
      v55 = swift_allocObject();
      v55[2] = v1;
      v55[3] = v49;
      v55[4] = v17;
      v55[5] = v51;
      v66[0] = v52;
      v56 = v68;
      v55[6] = v52;
      v55[7] = v56;
      aBlock[4] = sub_2520CEF54;
      aBlock[5] = v55;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520A3B78;
      aBlock[3] = &block_descriptor_5;
      v57 = _Block_copy(aBlock);
      sub_2520A283C(v51);

      v58 = v72;
      sub_252141A6C();
      v85 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v59 = v74;
      v60 = v69;
      sub_25214218C();
      v61 = v79;
      MEMORY[0x253099170](v79, v58, v59, v57);
      _Block_release(v57);
      sub_2520A1FE4(v51);
      (*(v76 + 8))(v59, v60);
      (*(v73 + 8))(v58, v75);
      v67(v61, v80);
      (*(v50 + 8))(v82, v81);

      v62 = v1[18];
      v63 = v1[19];
      v64 = v70;
      *v70 = 0;
      v64[1] = 0;
      sub_2520A1FE4(v62);
    }

    else
    {
      (*(v50 + 8))(v15, v12);
    }

    return v84;
  }

  else
  {
  }

  return v40;
}

uint64_t sub_2520CE400(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, void))
{
  swift_retain_n();

  v8 = sub_25214196C();
  v9 = sub_252141FBC();

  if (os_log_type_enabled(v8, v9))
  {
    v17 = a4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446978;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2520A5448(a2, a3, &v18);
    *(v10 + 22) = 1024;
    LODWORD(v14) = *(a1 + 56);

    *(v10 + 24) = v14;

    *(v10 + 28) = 2048;
    v15 = *(a1 + 136);

    *(v10 + 30) = v15;

    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] was stopped - calling completion: %s at frame count: %d with %lu silent buffers", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);

    return v17(*(a1 + 16), *(a1 + 24));
  }

  else
  {

    return a4(*(a1 + 16), *(a1 + 24));
  }
}

uint64_t sub_2520CE5E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = v12;
  v87 = *v12;
  v26 = sub_2521418EC();
  v89 = *(v26 - 8);
  v90 = v26;
  v27 = *(v89 + 64);
  MEMORY[0x28223BE20](v26);
  v88 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25214198C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 14) = 0;
  *(v13 + 128) = 0;
  *(v13 + 192) = 0;
  v13[18] = 0;
  v13[19] = 0;
  v13[17] = 0;
  *(v13 + 80) = 0;
  v34 = OBJC_IVAR____TtC11HearingTest15HTToneGenerator_logger;
  if (qword_27F4CD728 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v35 = __swift_project_value_buffer(v29, qword_27F4CDEC8);
    v86 = v30;
    v36 = *(v30 + 16);
    v30 += 16;
    v84 = v36;
    v36(v13 + v34, v35, v29);
    v13[23] = a2;
    *(v13 + 5) = a5;
    v85 = v34;
    if (a8 <= 1.0)
    {
      a8 = 1.0;
      if (a10 <= 1.0)
      {
        goto LABEL_10;
      }
    }

    else if (a10 <= a8)
    {
      goto LABEL_10;
    }

    if (*&a8 >> 52 > 0x7FEuLL)
    {
      if ((*&a8 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        a10 = a8;
      }
    }

    else
    {
      a10 = a8;
    }

LABEL_10:
    *(v13 + 4) = a6;
    *(v13 + 176) = a6 == 0.0;
    *(v13 + 14) = 0;
    *(v13 + 128) = 0;
    v34 = v13[18];
    v37 = v13[19];
    v13[18] = a3;
    v13[19] = a4;
    v38 = a2;

    result = sub_2520A1FE4(v34);
    if (a10 == 0.0)
    {
      v40 = 0;
    }

    else
    {
      v41 = ceil(a10 / 1000.0 * a5);
      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_72;
      }

      if (v41 <= -9.22337204e18)
      {
        goto LABEL_73;
      }

      if (v41 >= 9.22337204e18)
      {
        goto LABEL_74;
      }

      v40 = v41;
    }

    v13[13] = v40;
    if (a1)
    {
      v42 = a1;
    }

    else
    {
      v42 = -1;
    }

    v13[10] = v42;
    v43 = ceil(a8 / 1000.0 * a5);
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v43 <= -9.22337204e18)
    {
      goto LABEL_61;
    }

    if (v43 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v44 = v43;
    v13[11] = v43;
    if (a9 == 0.0)
    {
      v45 = 0;
    }

    else
    {
      v46 = ceil(a9 / 1000.0 * a5);
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_75;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_76;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_78;
      }

      v45 = v46;
    }

    v47 = fmax(a11, 0.0);
    v13[12] = v45;
    if (v47 == 0.0)
    {
      v48 = 0;
    }

    else
    {
      v49 = ceil(v47 / 1000.0 * a5);
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      if (v49 <= -9.22337204e18)
      {
        goto LABEL_79;
      }

      if (v49 >= 9.22337204e18)
      {
        goto LABEL_81;
      }

      v48 = v49;
    }

    v50 = fmax(a12, 0.0);
    if (v50 == 0.0)
    {
      v51 = 0;
      v52 = -v48;
      if (!__OFSUB__(0, v48))
      {
        break;
      }

      goto LABEL_58;
    }

    v83 = ceil(v50 / 1000.0 * a5);
    if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_80;
    }

    if (v83 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v83 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    v51 = v83;
    v52 = -v48;
    if (!__OFSUB__(0, v48))
    {
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v13[9] = v52;
  v53 = __OFADD__(v44, v40);
  v54 = v44 + v40;
  if (v53)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13[14] = v54;
  v53 = __OFSUB__(v45, v40);
  v55 = v45 - v40;
  if (v53)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFSUB__(0, v55))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13[15] = -v55;
  v56 = v54 * a1;
  if ((v54 * a1) >> 64 != (v54 * a1) >> 63)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v57 = v48 + v56;
  if (__OFADD__(v48, v56))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v58 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v59 = v55 * v58;
  if ((v55 * v58) >> 64 != (v55 * v58) >> 63)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v60 = v57 + v59;
  if (__OFADD__(v57, v59))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v53 = __OFADD__(v60, v51);
  v61 = v60 + v51;
  if (v53)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
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
    return result;
  }

  v13[21] = v61;
  v62 = __exp10(a7 * 0.05);
  if (v62 > 1.0)
  {
    v84(v33, v13 + v85, v29);
    v63 = sub_25214196C();
    v64 = sub_252141FAC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v91 = v66;
      *v65 = 136446722;
      v67 = sub_2521425DC();
      v69 = sub_2520A5448(v67, v68, &v91);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2048;
      *(v65 + 14) = a7;
      *(v65 + 22) = 2048;
      *(v65 + 24) = v62;
      _os_log_impl(&dword_25207E000, v63, v64, "[%{public}s] Playing a tone above amplitude 1.0 (dBFS: %f amplitude: %f).", v65, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x253099FD0](v66, -1, -1);
      MEMORY[0x253099FD0](v65, -1, -1);
    }

    (*(v86 + 8))(v33, v29);
  }

  *(v13 + 6) = v62;
  v70 = v88;
  sub_2521418DC();
  v71 = sub_2521418AC();
  v73 = v72;
  (*(v89 + 8))(v70, v90);
  v13[2] = v71;
  v13[3] = v73;
  *(v13 + 8) = a6 / a5;
  swift_retain_n();

  v74 = sub_25214196C();
  v75 = sub_252141F9C();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91 = v77;
    *v76 = 136446978;
    v78 = sub_2521425DC();
    v80 = sub_2520A5448(v78, v79, &v91);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2048;
    *(v76 + 14) = 0x4003333333333333;
    *(v76 + 22) = 2080;
    v81 = sub_2520A5448(v71, v73, &v91);

    *(v76 + 24) = v81;
    *(v76 + 32) = 2048;
    v82 = v13[21];

    *(v76 + 34) = v82;

    _os_log_impl(&dword_25207E000, v74, v75, "[%{public}s] Version: %f  Created: %s - duration: %ld", v76, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v77, -1, -1);
    MEMORY[0x253099FD0](v76, -1, -1);
  }

  else
  {
  }

  sub_2520CD0D0();
  return v13;
}

uint64_t sub_2520CEE6C()
{
  result = sub_2520CDADC();
  if ((result & 1) == 0)
  {

    return sub_2520CD0D0();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520CEEB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2520CEF0C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520CEF54()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return sub_2520CE400(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_2520CEF6C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for ContinuationItem(0) - 8);
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

uint64_t HTANCFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTTonePlayerError.hashValue.getter()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

uint64_t sub_2520CF160()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

uint64_t sub_2520CF1CC()
{
  sub_25214255C();
  MEMORY[0x253099700](0);
  return sub_25214258C();
}

id sub_2520CF20C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27F4CDFC0 = -1;
  qword_27F4CDFC8 = result;
  return result;
}

uint64_t sub_2520CF27C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t HTTonePlayer.__allocating_init(_:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  sub_2520D7D60(a1);
  v6 = v5;

  return v6;
}

uint64_t HTTonePlayer.init(_:)(void *a1)
{
  sub_2520D7D60(a1);
  v3 = v2;

  return v3;
}

uint64_t sub_2520CF3F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D7558();
  }

  return result;
}

uint64_t sub_2520CF448()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D8D7C();
  }

  return result;
}

uint64_t **HTTonePlayer.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214198C();
  v4 = *(v3 - 8);
  isa = v4[8].isa;
  MEMORY[0x28223BE20](v3);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = v4[2].isa;
  v58 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
  v53 = v11;
  (v11)(&v52 - v9, v1 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger, v3, v8);
  v12 = sub_25214196C();
  LOBYTE(v13) = sub_252141FBC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = 0x27F4CD000uLL;
  v52 = v2;
  if (!v14)
  {

    v57 = v4[1].isa;
    v57(v10, v3);
    v13 = v3;
    v12 = v4;
    goto LABEL_5;
  }

  v55 = v3;
  v56 = v4;
  v16 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v60 = v2;
  *v16 = 136446466;
  v17 = sub_2521425DC();
  v19 = sub_2520A5448(v17, v18, &v60);

  *(v16 + 4) = v19;
  *(v16 + 12) = 2048;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    swift_beginAccess();
    v20 = qword_27F4CDFC0;
    v21 = qword_27F4CDFC8;
    [v21 lock];
    [v21 unlock];

    *(v16 + 14) = v20;
    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] Deinit tone player (%ld)", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v2);
    MEMORY[0x253099FD0](v2, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);

    v13 = v55;
    v12 = v56;
    v57 = v56[1].isa;
    v57(v10, v55);
    v15 = 0x27F4CD000;
LABEL_5:
    if (*(v15 + 1912) != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = qword_27F4CDFC0;
    v10 = qword_27F4CDFC8;
    v16 = 0x2796F5000uLL;
    [v10 lock];
    [v10 unlock];

    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (!v23)
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_27F4CDFC8;
  [qword_27F4CDFC8 lock];
  qword_27F4CDFC0 = v24;
  [v25 unlock];
  swift_endAccess();
  v26 = objc_opt_self();
  v27 = [v26 defaultCenter];
  [v27 removeObserver:v1 name:*MEMORY[0x277D76E48] object:0];

  v28 = [v26 defaultCenter];
  [v28 removeObserver:v1 name:*MEMORY[0x277D76E80] object:0];

  if (v1[5])
  {
    v29 = v1[5];
    if (v1[7])
    {
      swift_unknownObjectRetain();
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25214209C();
    }

    v42 = v57;
    swift_getObjectType();
    sub_25214208C();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = v12;
    v30 = v54;
    v53(v54, v1 + v58, v13);
    v31 = sub_25214196C();
    v32 = sub_252141FAC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v13;
      v35 = v34;
      v59[0] = v34;
      *v33 = 136446466;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, v59);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2048;
      v39 = qword_27F4CDFC0;
      v40 = qword_27F4CDFC8;
      [v40 lock];
      [v40 unlock];

      *(v33 + 14) = v39;
      _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] Deinit HT_HEARTBEAT not setup (%ld)", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v41 = v35;
      v13 = v55;
      MEMORY[0x253099FD0](v41, -1, -1);
      MEMORY[0x253099FD0](v33, -1, -1);
    }

    v42 = v57;
    v57(v30, v13);
  }

  sub_2520D737C();
  v43 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  swift_beginAccess();
  v44 = *(v1 + v43);
  *(v1 + v43) = 0;

  v45 = v1[5];
  v1[5] = 0;
  swift_unknownObjectRelease();
  v46 = v1[6];
  v1[6] = 0;

  v47 = v1[5];
  swift_unknownObjectRelease();

  v48 = v1[9];

  v49 = v1[13];

  v42(v1 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_logger, v13);
  v42(v1 + v58, v13);
  v50 = *(v1 + v43);

  return v1;
}

uint64_t HTTonePlayer.__deallocating_deinit()
{
  HTTonePlayer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2520CFBA8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = *v1;
  return MEMORY[0x2822009F8](sub_2520CFBF0, 0, 0);
}

uint64_t sub_2520CFBF0()
{
  v36 = v0;
  v1 = v0[27];
  if (sub_2520D34B0())
  {
    v2 = v0[27];
    v0[29] = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
    v3 = sub_25214196C();
    isEscapingClosureAtFileLocation = sub_252141FBC();
    v5 = &loc_252143000;
    if (!os_log_type_enabled(v3, isEscapingClosureAtFileLocation))
    {

      goto LABEL_9;
    }

    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136446466;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v35);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      swift_beginAccess();
      v12 = qword_27F4CDFC0;
      v13 = qword_27F4CDFC8;
      [v13 lock];
      [v13 unlock];

      *(v7 + 14) = v12;
      _os_log_impl(&dword_25207E000, v3, isEscapingClosureAtFileLocation, "[%{public}s] enableANCHearingTestModeWithReason enable arbitration blocking mode (%ld).", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);

      v5 = &loc_252143000;
LABEL_9:
      v16 = *(v0[27] + 32) + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
      v17 = *v16;
      if (*v16)
      {
        v18 = *(v16 + 8);

        v17(1);
        sub_2520A1FE4(v17);
      }

      v19 = sub_25214196C();
      v20 = sub_252141FBC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = v5;
        v22 = v0[28];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = v21[327];
        v25 = sub_2521425DC();
        v27 = sub_2520A5448(v25, v26, &v35);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v28 = qword_27F4CDFC0;
        v29 = qword_27F4CDFC8;
        [v29 lock];
        [v29 unlock];

        *(v23 + 14) = v28;
        _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] Sending enable ANC hearing test mode message (%ld).", v23, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x253099FD0](v24, -1, -1);
        MEMORY[0x253099FD0](v23, -1, -1);
      }

      v30 = *(v0[27] + 24);
      v0[30] = v30;
      v7 = *&v30[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v3 = swift_allocObject();
      *(v3 + 16) = v30;
      *(v3 + 24) = 0;
      v8 = swift_allocObject();
      v8[2] = sub_2520D8CD8;
      v8[3] = v3;
      v0[6] = sub_2520AD484;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_252083924;
      v0[5] = &block_descriptor_4;
      v31 = _Block_copy(v0 + 2);
      v32 = v0[7];
      v30;

      dispatch_sync(v7, v31);
      _Block_release(v31);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

    v33 = swift_task_alloc();
    v0[31] = v33;
    *v33 = v0;
    v33[1] = sub_2520D0148;
    v34 = v0[26];

    return sub_2521085B4(1, &unk_28644E0F8, &unk_28644E120, v34, 3);
  }

  else
  {
    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_2520D0148(char a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_2520D0248, 0, 0);
}

uint64_t sub_2520D0248()
{
  v49 = v0;
  if (*(v0 + 264))
  {
    v1 = *(v0 + 216);
    if (*(v1 + 56))
    {
      v2 = v1 + *(v0 + 232);
      v3 = sub_25214196C();
      v4 = sub_252141FAC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 224);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v48 = v7;
        *v6 = 136446466;
        v8 = sub_2521425DC();
        v10 = sub_2520A5448(v8, v9, &v48);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = qword_27F4CDFC0;
        v12 = qword_27F4CDFC8;
        [v12 lock];
        [v12 unlock];

        *(v6 + 14) = v11;
        v13 = "[%{public}s] HT_HEARTBEAT timer already resumed, no-op (%ld)";
LABEL_24:
        _os_log_impl(&dword_25207E000, v3, v4, v13, v6, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x253099FD0](v7, -1, -1);
        MEMORY[0x253099FD0](v6, -1, -1);
      }
    }

    else
    {
      v29 = *(v0 + 232);
      if (*(v1 + 40))
      {
        v30 = *(v1 + 40);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_25214209C();
        *(v1 + 56) = 1;
        v31 = sub_25214196C();
        v32 = sub_252141FBC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = *(v0 + 224);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v48 = v35;
          *v34 = 136446466;
          v36 = sub_2521425DC();
          v38 = sub_2520A5448(v36, v37, &v48);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2048;
          if (qword_27F4CD778 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v39 = qword_27F4CDFC0;
          v40 = qword_27F4CDFC8;
          [v40 lock];
          [v40 unlock];

          *(v34 + 14) = v39;
          _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] HT_HEARTBEAT timer resumed (%ld)", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x253099FD0](v35, -1, -1);
          MEMORY[0x253099FD0](v34, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      v3 = sub_25214196C();
      v4 = sub_252141FAC();
      if (os_log_type_enabled(v3, v4))
      {
        v41 = *(v0 + 224);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v48 = v7;
        *v6 = 136446466;
        v42 = sub_2521425DC();
        v44 = sub_2520A5448(v42, v43, &v48);

        *(v6 + 4) = v44;
        *(v6 + 12) = 2048;
        if (qword_27F4CD778 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v45 = qword_27F4CDFC0;
        v46 = qword_27F4CDFC8;
        [v46 lock];
        [v46 unlock];

        *(v6 + 14) = v45;
        v13 = "[%{public}s] HT_HEARTBEAT timer not setup (%ld)";
        goto LABEL_24;
      }
    }

LABEL_26:
    v47 = *(v0 + 8);

    return v47(1);
  }

  v14 = *(v0 + 216) + *(v0 + 232);
  v15 = sub_25214196C();
  v16 = sub_252141FAC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 224);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48 = v19;
    *v18 = 136446466;
    v20 = sub_2521425DC();
    v22 = sub_2520A5448(v20, v21, &v48);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = qword_27F4CDFC0;
    v24 = qword_27F4CDFC8;
    [v24 lock];
    [v24 unlock];

    *(v18 + 14) = v23;
    _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Failed to send HT_START Command (%ld).", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x253099FD0](v19, -1, -1);
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  v25 = swift_task_alloc();
  *(v0 + 256) = v25;
  *v25 = v0;
  v25[1] = sub_2520D08C0;
  v26 = *(v0 + 240);
  v27 = *(v0 + 208);

  return sub_2521085B4(1, &unk_28644E148, &unk_28644E170, v27, 3);
}

uint64_t sub_2520D08C0(uint64_t a1)
{
  v3 = *(*v1 + 256);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2520D09BC()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2520D0A50;

  return sub_2520CFBA8(5);
}

uint64_t sub_2520D0A50(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 33) = a1;

  return MEMORY[0x2822009F8](sub_2520D0B50, 0, 0);
}

uint64_t sub_2520D0B50()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    v2 = *(*(v0 + 16) + 24);
    v3 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    *(swift_task_alloc() + 16) = v2;
    sub_25214200C();

    v4 = *(v0 + 32);
    sub_2520D8D18();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2520D0C50()
{
  v1 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  isEscapingClosureAtFileLocation = sub_25214196C();
  LOBYTE(v4) = sub_252141FBC();
  if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v4))
  {
    goto LABEL_4;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  aBlock = v6;
  *v5 = 136446466;
  v7 = sub_2521425DC();
  v9 = sub_2520A5448(v7, v8, &aBlock);

  *(v5 + 4) = v9;
  *(v5 + 6) = 2048;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    swift_beginAccess();
    v10 = qword_27F4CDFC0;
    v11 = qword_27F4CDFC8;
    [v11 lock];
    [v11 unlock];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_25207E000, isEscapingClosureAtFileLocation, v4, "[%{public}s] disableANCHearingTestMode (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
LABEL_4:

    if (*(v1 + 56) != 1)
    {
      v13 = sub_25214196C();
      v22 = sub_252141FAC();
      if (!os_log_type_enabled(v13, v22))
      {
        goto LABEL_20;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446466;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, &aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v28 = qword_27F4CDFC0;
      v29 = qword_27F4CDFC8;
      [v29 lock];
      [v29 unlock];

      *(v23 + 14) = v28;
      v30 = "[%{public}s] disableANCHearingTestMode HT_HEARTBEAT timer already suspended, no-op (%ld)";
LABEL_19:
      _os_log_impl(&dword_25207E000, v13, v22, v30, v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x253099FD0](v24, -1, -1);
      MEMORY[0x253099FD0](v23, -1, -1);
      goto LABEL_20;
    }

    if (!*(v1 + 40))
    {
      v13 = sub_25214196C();
      v22 = sub_252141FAC();
      if (!os_log_type_enabled(v13, v22))
      {
        goto LABEL_20;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446466;
      v31 = sub_2521425DC();
      v33 = sub_2520A5448(v31, v32, &aBlock);

      *(v23 + 4) = v33;
      *(v23 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = qword_27F4CDFC0;
      v35 = qword_27F4CDFC8;
      [v35 lock];
      [v35 unlock];

      *(v23 + 14) = v34;
      v30 = "[%{public}s] disableANCHearingTestMode Accessory manager not setup (%ld)";
      goto LABEL_19;
    }

    v12 = *(v1 + 40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2521420AC();
    *(v1 + 56) = 0;
    v13 = sub_25214196C();
    v14 = sub_252141FBC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &aBlock);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = qword_27F4CDFC0;
      v21 = qword_27F4CDFC8;
      [v21 lock];
      [v21 unlock];

      *(v15 + 14) = v20;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] disableANCHearingTestMode HT_HEARTBEAT timer suspended (%ld)", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_20:

    v36 = sub_25214196C();
    v37 = sub_252141FBC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v38 = 136446466;
      v40 = sub_2521425DC();
      v42 = sub_2520A5448(v40, v41, &aBlock);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v43 = qword_27F4CDFC0;
      v44 = qword_27F4CDFC8;
      [v44 lock];
      [v44 unlock];

      *(v38 + 14) = v43;
      _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] disableANCHearingTestMode Sending disable hearing test mode message (%ld)", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x253099FD0](v39, -1, -1);
      MEMORY[0x253099FD0](v38, -1, -1);
    }

    v45 = *(v1 + 24);
    v46 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
    v4 = *&v45[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = v45;
    *(isEscapingClosureAtFileLocation + 24) = 1;
    v6 = swift_allocObject();
    v6[2] = sub_2520DB0B0;
    v6[3] = isEscapingClosureAtFileLocation;
    v68 = sub_2520ADA58;
    v69 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_252083924;
    v67 = &block_descriptor_21;
    v47 = _Block_copy(&aBlock);
    v5 = v45;

    dispatch_sync(v4, v47);
    _Block_release(v47);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  sub_252104450(0, 0x1000000000000uLL, 0xD000000000000024, 0x8000000252149ED0);
  v48 = sub_25214196C();
  v49 = sub_252141FBC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v50 = 136446466;
    v52 = sub_2521425DC();
    v54 = sub_2520A5448(v52, v53, &aBlock);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = qword_27F4CDFC0;
    v56 = qword_27F4CDFC8;
    [v56 lock];
    [v56 unlock];

    *(v50 + 14) = v55;
    _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] disableANCHearingTestMode disable arbitration blocking mode (%ld)", v50, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x253099FD0](v51, -1, -1);
    MEMORY[0x253099FD0](v50, -1, -1);
  }

  v57 = *(v1 + 32) + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
  v58 = *v57;
  if (*v57)
  {
    v59 = *(v57 + 8);

    v58(0);
    sub_2520A1FE4(v58);
  }

  sub_2520D8D7C();
  v60 = *&v45[v46];
  v1 = swift_allocObject();
  *(v1 + 16) = v5;
  *(v1 + 24) = 1;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_2520D9734;
  *(v61 + 24) = v1;
  v68 = sub_2520ADA58;
  v69 = v61;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_252083924;
  v67 = &block_descriptor_31;
  v4 = _Block_copy(&aBlock);
  v6 = v69;
  v5 = v5;

  dispatch_sync(v60, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_34;
  }

  result = sub_2520F85B8(0);
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2520D17C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v69 - v5;
  v7 = objc_opt_self();
  v8 = [v7 processInfo];
  v9 = [v8 processName];

  v10 = sub_252141B9C();
  v12 = v11;

  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v72 = "tat";
  v14 = sub_252141B6C();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    __break(1u);
    goto LABEL_34;
  }

  v71 = "HTLastSessionTimestamp";
  v16 = sub_252141B6C();
  v17 = [v15 stringForKey_];

  if (v17)
  {
    v70 = v7;
    v18 = sub_252141B9C();
    v20 = v19;

    if (v10 == v18 && v12 == v20)
    {

      goto LABEL_8;
    }

    v21 = sub_25214247C();

    if (v21)
    {
LABEL_8:
      v69 = 0xD000000000000014;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v22 = qword_27F4CDFC0;
      v23 = qword_27F4CDFC8;
      [v23 lock];
      [v23 unlock];

      if (v22 < 1)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v41 = sub_25214198C();
        __swift_project_value_buffer(v41, qword_27F4CDF10);
        v25 = sub_25214196C();
        v42 = sub_252141FBC();
        if (os_log_type_enabled(v25, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v73 = v44;
          *v43 = 136315138;
          v45 = [v70 processInfo];
          v46 = [v45 processName];

          v47 = sub_252141B9C();
          v49 = v48;

          v50 = sub_2520A5448(v47, v49, &v73);

          *(v43 + 4) = v50;
          _os_log_impl(&dword_25207E000, v25, v42, "Updating current session timestamp for %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x253099FD0](v44, -1, -1);
          v37 = v43;
          goto LABEL_24;
        }
      }

      else
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v24 = sub_25214198C();
        __swift_project_value_buffer(v24, qword_27F4CDF10);
        v25 = sub_25214196C();
        v26 = sub_252141FBC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v73 = v28;
          *v27 = 136315394;
          v29 = [v70 processInfo];
          v30 = [v29 processName];

          v31 = sub_252141B9C();
          v33 = v32;

          v34 = sub_2520A5448(v31, v33, &v73);

          *(v27 + 4) = v34;
          *(v27 + 12) = 2048;
          v35 = qword_27F4CDFC0;
          v36 = qword_27F4CDFC8;
          [v36 lock];
          [v36 unlock];

          *(v27 + 14) = v35;
          _os_log_impl(&dword_25207E000, v25, v26, "Updating current session timestamp for %s (%ld)", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x253099FD0](v28, -1, -1);
          v37 = v27;
LABEL_24:
          MEMORY[0x253099FD0](v37, -1, -1);
        }
      }

      v51 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v52 = sub_252141B6C();
      v53 = [v51 initWithSuiteName_];

      if (v53)
      {
        sub_25214187C();
        v54 = sub_25214188C();
        v55 = *(v54 - 8);
        (*(v55 + 56))(v6, 0, 1, v54);
        sub_2520AA46C(v6, v3);
        v56 = 0;
        if ((*(v55 + 48))(v3, 1, v54) != 1)
        {
          v56 = sub_25214185C();
          (*(v55 + 8))(v3, v54);
        }

        v57 = sub_252141B6C();
        [v53 setValue:v56 forKey:v57];

        swift_unknownObjectRelease();
        sub_2520A2584(v6, &qword_27F4CDD08, &unk_252144B00);
        v58 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v59 = sub_252141B6C();
        v60 = [v58 initWithSuiteName_];

        if (v60)
        {
          v61 = [v70 processInfo];
          v62 = [v61 processName];

          if (!v62)
          {
            sub_252141B9C();
            v62 = sub_252141B6C();
          }

          v63 = sub_252141B6C();
          [v60 setValue:v62 forKey:v63];

          v64 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v65 = sub_252141B6C();
          v66 = [v64 initWithSuiteName_];

          if (v66)
          {
            sub_2520DC654();
            v67 = sub_252141B6C();

            v68 = sub_252141B6C();
            [v66 setValue:v67 forKey:v68];

            return;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  v72 = sub_25214196C();
  v38 = sub_252141FAC();
  if (os_log_type_enabled(v72, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_25207E000, v72, v38, "This process should not update a different process timestamp!", v39, 2u);
    MEMORY[0x253099FD0](v39, -1, -1);
  }

  v40 = v72;
}

uint64_t sub_2520D20E4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_25214196C();
  v6 = sub_252141F9C();
  v7 = &loc_252143000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446466;
    v10 = v4;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, aBlock);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_27F4CDFC0;
    v15 = qword_27F4CDFC8;
    [v15 lock];
    [v15 unlock];

    *(v8 + 14) = v14;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Attempting to start audio session (%ld)", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);

    v4 = v10;
    v7 = &loc_252143000;
  }

  else
  {
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v16 = sub_25214198C();
  __swift_project_value_buffer(v16, qword_27F4CDE68);
  v17 = sub_25214196C();
  v18 = sub_252141FBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = v7[327];
    v21 = v4;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v25 = qword_27F4CDFC0;
    v26 = qword_27F4CDFC8;
    [v26 lock];
    [v26 unlock];

    *(v19 + 14) = v25;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] startAudioSession enable arbitration blocking mode (%ld)", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);

    v4 = v21;
  }

  else
  {
  }

  v27 = v3[4] + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode;
  v28 = *v27;
  if (*v27)
  {
    v29 = *(v27 + 8);

    v28(1);
    sub_2520A1FE4(v28);
  }

  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v30 = sub_25214196C();
    v31 = sub_252141FAC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25207E000, v30, v31, "Audio Session is in an interrupted state.", v32, 2u);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    LOBYTE(aBlock[0]) = 2;
    return a1(aBlock);
  }

  else
  {
    v34 = v3[13];
    swift_beginAccess();
    *(v34 + 24) = 1;
    v35 = swift_allocObject();
    v35[2] = v3;
    v35[3] = a1;
    v35[4] = a2;
    v35[5] = v4;

    sub_2520DE7F8(sub_2520D9748, v35, 0, 0);

    sub_2520D17C0();
    v36 = v3[3];
    v37 = *&v36[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_2520D9754;
    *(v39 + 24) = v38;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_44;
    v40 = _Block_copy(aBlock);
    v41 = v36;

    dispatch_sync(v37, v40);
    _Block_release(v40);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2520D270C(void *a1, uint64_t a2, void (*a3)(id *))
{
  if (a1)
  {
    *&v84 = a1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_2520A5A94(0, &unk_27F4CE0C0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v6 = v82[0];
      if ([v82[0] code] == -16)
      {
        swift_beginAccess();
        if (*(a2 + 16))
        {
LABEL_15:
          LOBYTE(v82[0]) = 2;
          v21 = v82;
LABEL_33:
          a3(v21);
LABEL_34:

          return;
        }

        *(a2 + 16) = 1;
        v7 = v6;
        v8 = sub_25214196C();
        v9 = sub_252141FBC();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          *(v10 + 4) = v7;
          *v11 = v7;
          v12 = v7;
          _os_log_impl(&dword_25207E000, v8, v9, "Audio session interruption began. { error=%@ }", v10, 0xCu);
          sub_2520A2584(v11, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v11, -1, -1);
          v13 = v10;
LABEL_13:
          MEMORY[0x253099FD0](v13, -1, -1);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if ([v82[0] code] == -17)
      {
        swift_beginAccess();
        *(a2 + 16) = 0;
        v6 = v6;
        v8 = sub_25214196C();
        v17 = sub_252141FBC();

        if (os_log_type_enabled(v8, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          *(v18 + 4) = v6;
          *v19 = v6;
          v20 = v6;
          _os_log_impl(&dword_25207E000, v8, v17, "Audio session interruption ended. { error=%@ }", v18, 0xCu);
          sub_2520A2584(v19, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v19, -1, -1);
          v13 = v18;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      if ([v82[0] code] == -1)
      {
        v6 = v82[0];
        v28 = sub_25214196C();
        v29 = sub_252141FAC();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v6;
          *v31 = v6;
          v32 = v6;
          _os_log_impl(&dword_25207E000, v28, v29, "Failed to start audio session. { error=%@ }", v30, 0xCu);
          sub_2520A2584(v31, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v31, -1, -1);
          MEMORY[0x253099FD0](v30, -1, -1);
        }

        LOBYTE(v84) = 0;
        goto LABEL_32;
      }

      if ([v82[0] code] == -2)
      {
        v6 = v82[0];
        v22 = sub_25214196C();
        v23 = sub_252141FAC();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v6;
          *v25 = v6;
          v26 = v6;
          v27 = "Audio session route was changed. { error=%@ }";
LABEL_29:
          _os_log_impl(&dword_25207E000, v22, v23, v27, v24, 0xCu);
          sub_2520A2584(v25, &unk_27F4CE080, &qword_252144E30);
          MEMORY[0x253099FD0](v25, -1, -1);
LABEL_30:
          MEMORY[0x253099FD0](v24, -1, -1);
          goto LABEL_31;
        }

        goto LABEL_31;
      }

      if ([v82[0] code] != -3)
      {
        v6 = v82[0];
        v22 = sub_25214196C();
        v23 = sub_252141FAC();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v6;
          *v25 = v6;
          v35 = v6;
          v27 = "Unknown audio session interruption. { error=%@ }";
          goto LABEL_29;
        }

LABEL_31:

        LOBYTE(v84) = 2;
LABEL_32:
        v21 = &v84;
        goto LABEL_33;
      }

      v33 = [objc_opt_self() sharedAVSystemController];
      if (!v33)
      {
        v22 = sub_25214196C();
        v36 = sub_252141FAC();
        if (!os_log_type_enabled(v22, v36))
        {
          goto LABEL_31;
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_25207E000, v22, v36, "Failed to access shared AVSystemController.", v24, 2u);
        goto LABEL_30;
      }

      v34 = v33;
      if ([v33 attributeForKey_])
      {
        sub_25214215C();
        swift_unknownObjectRelease();
      }

      else
      {
        *v82 = 0u;
        v83 = 0u;
      }

      v84 = *v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v80 == 1)
        {
          v37 = sub_25214196C();
          v38 = sub_252141F9C();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v82[0] = v40;
            *v39 = 136446466;
            v41 = sub_2521425DC();
            v43 = sub_2520A5448(v41, v42, v82);

            *(v39 + 4) = v43;
            *(v39 + 12) = 2048;
            if (qword_27F4CD778 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v44 = qword_27F4CDFC0;
            v45 = qword_27F4CDFC8;
            [v45 lock];
            [v45 unlock];

            *(v39 + 14) = v44;
            v46 = "[%{public}s] Detected interruption of phone call type. (%ld)";
            v47 = v38;
            v48 = v37;
            v49 = v39;
            v50 = 22;
            goto LABEL_64;
          }

          goto LABEL_65;
        }
      }

      else
      {
        sub_2520A2584(&v84, &unk_27F4CE0B0, &unk_252144AF0);
      }

      if ([v34 attributeForKey_])
      {
        sub_25214215C();
        swift_unknownObjectRelease();
      }

      else
      {
        *v82 = 0u;
        v83 = 0u;
      }

      v84 = *v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v80 == 0x794D646E6946 && v81 == 0xE600000000000000 || (sub_25214247C() & 1) != 0 || v80 == 0x636E656772656D45 && v81 == 0xEF737472656C4179 || (sub_25214247C() & 1) != 0)
          {

            v51 = sub_25214196C();
            v52 = sub_252141F9C();

            if (os_log_type_enabled(v51, v52))
            {
              v79 = v52;
              v53 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v82[0] = v77;
              *v53 = 136446722;
              v54 = sub_2521425DC();
              v56 = sub_2520A5448(v54, v55, v82);

              *(v53 + 4) = v56;
              *(v53 + 12) = 2080;
              v57 = sub_2520A5448(v80, v81, v82);

              *(v53 + 14) = v57;
              *(v53 + 22) = 2048;
              if (qword_27F4CD778 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v58 = qword_27F4CDFC0;
              v59 = qword_27F4CDFC8;
              [v59 lock];
              [v59 unlock];

              *(v53 + 24) = v58;
              _os_log_impl(&dword_25207E000, v51, v79, "[%{public}s] Detected active category change interruption that does not require checks. { activeCategory=%s } (%ld)", v53, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v77, -1, -1);
              MEMORY[0x253099FD0](v53, -1, -1);
            }

            else
            {
            }

            v64 = 3;
            goto LABEL_68;
          }

          v65 = sub_25214196C();
          v66 = sub_252141F9C();

          v78 = v66;
          if (os_log_type_enabled(v65, v66))
          {
            log = v65;
            v67 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v82[0] = v75;
            *v67 = 136446722;
            v68 = sub_2521425DC();
            v70 = sub_2520A5448(v68, v69, v82);

            *(v67 + 4) = v70;
            *(v67 + 12) = 2080;
            v71 = sub_2520A5448(v80, v81, v82);
            v72 = v67;

            *(v67 + 14) = v71;
            *(v67 + 22) = 2048;
            if (qword_27F4CD778 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v73 = qword_27F4CDFC0;
            v74 = qword_27F4CDFC8;
            [v74 lock];
            [v74 unlock];

            *(v72 + 24) = v73;
            v65 = log;
            _os_log_impl(&dword_25207E000, log, v78, "[%{public}s] Detected active category change interruption that requires checks. { activeCategory=%s } (%ld)", v72, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x253099FD0](v75, -1, -1);
            MEMORY[0x253099FD0](v72, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
        sub_2520A2584(&v84, &unk_27F4CE0B0, &unk_252144AF0);
      }

      v37 = sub_25214196C();
      v60 = sub_252141F9C();
      if (os_log_type_enabled(v37, v60))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v82[0] = v40;
        *v39 = 136446210;
        v61 = sub_2521425DC();
        v63 = sub_2520A5448(v61, v62, v82);

        *(v39 + 4) = v63;
        v46 = "[%{public}s] Detected interruption that requires checks.";
        v47 = v60;
        v48 = v37;
        v49 = v39;
        v50 = 12;
LABEL_64:
        _os_log_impl(&dword_25207E000, v48, v47, v46, v49, v50);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x253099FD0](v40, -1, -1);
        MEMORY[0x253099FD0](v39, -1, -1);
      }

LABEL_65:

      v64 = 2;
LABEL_68:
      LOBYTE(v82[0]) = v64;
      a3(v82);

      goto LABEL_34;
    }
  }

  v14 = sub_25214196C();
  v15 = sub_252141FAC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25207E000, v14, v15, "Failed to cast NSError.", v16, 2u);
    MEMORY[0x253099FD0](v16, -1, -1);
  }
}

uint64_t sub_2520D34B0()
{
  v47 = *v0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentRoute];

  v3 = [v2 outputs];
  v46 = sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v4 = sub_252141CDC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_27:

    v35 = sub_25214196C();
    v36 = sub_252141FAC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136446466;
      v39 = sub_2521425DC();
      v41 = sub_2520A5448(v39, v40, &v49);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = MEMORY[0x253098E80](v4, v46);
      v44 = v43;

      v45 = sub_2520A5448(v42, v44, &v49);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] audioPortValid no valid output found in %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v38, -1, -1);
      MEMORY[0x253099FD0](v37, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_26:
  v5 = sub_25214232C();
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = 0;
  v7 = *MEMORY[0x277CB8158];
  v48 = *MEMORY[0x277CB8168];
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530993D0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = [v8 portType];
    v12 = sub_252141B9C();
    v14 = v13;
    if (v12 == sub_252141B9C() && v14 == v15)
    {
      break;
    }

    v17 = sub_25214247C();

    if (v17)
    {
      goto LABEL_20;
    }

    v11 = [v9 portType];
    v18 = sub_252141B9C();
    v20 = v19;
    if (v18 == sub_252141B9C() && v20 == v21)
    {
      break;
    }

    v22 = sub_25214247C();

    if (v22)
    {
      goto LABEL_20;
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_27;
    }
  }

LABEL_20:

  v23 = sub_25214196C();
  v24 = sub_252141F9C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136446466;
    v27 = sub_2521425DC();
    v29 = sub_2520A5448(v27, v28, &v49);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = MEMORY[0x253098E80](v4, v46);
    v32 = v31;

    v33 = sub_2520A5448(v30, v32, &v49);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_25207E000, v23, v24, "[%{public}s] audioPortValid valid output found in %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v26, -1, -1);
    MEMORY[0x253099FD0](v25, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_2520D3A04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Handle interruption notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_2520D3B94(NSObject *a1, char *a2, char *a3, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = v4;
  v36 = *v4;
  v10 = sub_25214196C();
  LOBYTE(v11) = sub_252141FBC();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_4;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = qword_27F4CDFC0;
    v14 = qword_27F4CDFC8;
    [v14 lock];
    [v14 unlock];

    *(v12 + 4) = v13;
    _os_log_impl(&dword_25207E000, v10, v11, "Attempting to start audio session (%ld)", v12, 0xCu);
    MEMORY[0x253099FD0](v12, -1, -1);
LABEL_4:

    v15 = v5[13];
    swift_beginAccess();
    *(v15 + 24) = 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    v17 = sub_25214196C();
    v18 = sub_252141FBC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v19 = 136446210;
      v20 = sub_2521425DC();
      v22 = a2;
      v23 = isEscapingClosureAtFileLocation;
      v24 = a3;
      v25 = sub_2520A5448(v20, v21, aBlock);

      *(v19 + 4) = v25;
      a3 = v24;
      isEscapingClosureAtFileLocation = v23;
      a2 = v22;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] startHTAudioSession enable arbitration blocking mode ", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x253099FD0](v35, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    v26 = (v5[4] + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
    v12 = *v26;
    if (*v26)
    {
      v27 = v26[1];

      (v12)(1);
      sub_2520A1FE4(v12);
    }

    v28 = swift_allocObject();
    v28[2] = v5;
    v28[3] = a1;
    v28[4] = a2;
    v28[5] = v36;
    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = isEscapingClosureAtFileLocation;

    sub_2520DE7F8(sub_2520D9760, v28, sub_25209D474, v29);

    sub_2520D17C0();
    a3 = v5[3];
    v11 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
    v30 = *&a3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v5 = swift_allocObject();
    v5[2] = a3;
    *(v5 + 24) = 1;
    v10 = swift_allocObject();
    v10[2].isa = sub_2520DB0B4;
    v10[3].isa = v5;
    aBlock[4] = sub_2520ADA58;
    v38 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_61;
    v31 = _Block_copy(aBlock);
    a1 = v38;
    a2 = a3;

    dispatch_sync(v30, v31);
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v33 = *&a3[v11];
  MEMORY[0x28223BE20](v32);
  sub_25214200C();
  return LOBYTE(aBlock[0]);
}

void sub_2520D40E8(void *a1, uint64_t a2, void (*a3)(__int128 *))
{
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v72 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v72);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] HearingTest audio session status changed.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  v11 = [objc_opt_self() sharedAVSystemController];
  if (!v11)
  {
    v13 = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25207E000, v13, v14, "Failed to access shared AVSystemController.", v15, 2u);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    LOBYTE(v72) = 2;
    a3(&v72);
    return;
  }

  v12 = v11;
  if ([v11 attributeForKey_])
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v70 = 0u;
    v71 = 0u;
  }

  v72 = *v70;
  v73 = v71;
  if (*(&v71 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v68 == 1)
    {
      v16 = sub_25214196C();
      v17 = sub_252141F9C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v72 = v19;
        *v18 = 136446210;
        v20 = sub_2521425DC();
        v22 = sub_2520A5448(v20, v21, &v72);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] Detected interruption of phone call type.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x253099FD0](v19, -1, -1);
        MEMORY[0x253099FD0](v18, -1, -1);
      }

      LOBYTE(v72) = 2;
LABEL_42:
      a3(&v72);

      return;
    }
  }

  else
  {
    sub_2520A2584(&v72, &unk_27F4CE0B0, &unk_252144AF0);
  }

  if ([v12 attributeForKey_])
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v70 = 0u;
    v71 = 0u;
  }

  v72 = *v70;
  v73 = v71;
  if (!*(&v71 + 1))
  {
    sub_2520A2584(&v72, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (!a1 || (*&v72 = a1, v33 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40), sub_2520A5A94(0, &unk_27F4CE0C0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0))
    {
      v41 = sub_25214196C();
      v42 = sub_252141FAC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_25207E000, v41, v42, "Failed to cast NSError.", v43, 2u);
        MEMORY[0x253099FD0](v43, -1, -1);
      }

      return;
    }

    if ([v70[0] code] == -1)
    {
      v34 = v70[0];
      v44 = sub_25214196C();
      v45 = sub_252141FAC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v34;
        *v47 = v34;
        v48 = v34;
        _os_log_impl(&dword_25207E000, v44, v45, "Failed to start audio session. { error=%@ }", v46, 0xCu);
        sub_2520A2584(v47, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v47, -1, -1);
        MEMORY[0x253099FD0](v46, -1, -1);
      }

      LOBYTE(v72) = 0;
      goto LABEL_52;
    }

    if ([v70[0] code] == -2)
    {
      v34 = v70[0];
      v35 = sub_25214196C();
      v36 = sub_252141FAC();

      if (!os_log_type_enabled(v35, v36))
      {
LABEL_51:

        LOBYTE(v72) = 2;
LABEL_52:
        a3(&v72);

        return;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      v40 = "Audio session route was changed. { error=%@ }";
    }

    else
    {
      if ([v70[0] code] == -3)
      {

        return;
      }

      v34 = v70[0];
      v35 = sub_25214196C();
      v36 = sub_252141FAC();

      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_51;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v49 = v34;
      v40 = "Unknown audio session interruption. { error=%@ }";
    }

    _os_log_impl(&dword_25207E000, v35, v36, v40, v37, 0xCu);
    sub_2520A2584(v38, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v38, -1, -1);
    MEMORY[0x253099FD0](v37, -1, -1);
    goto LABEL_51;
  }

  if (v68 == 0x794D646E6946 && v69 == 0xE600000000000000 || (sub_25214247C() & 1) != 0 || v68 == 0x636E656772656D45 && v69 == 0xEF737472656C4179 || (sub_25214247C() & 1) != 0)
  {

    v23 = sub_25214196C();
    v24 = sub_252141F9C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = a3;
      v27 = swift_slowAlloc();
      *&v72 = v27;
      *v25 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, &v72);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_2520A5448(v68, v69, &v72);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_25207E000, v23, v24, "[%{public}s] Detected active category change interruption that does not require checks. { activeCategory=%s }", v25, 0x16u);
      swift_arrayDestroy();
      v32 = v27;
      a3 = v26;
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v25, -1, -1);
    }

    else
    {
    }

    LOBYTE(v72) = 3;
    goto LABEL_42;
  }

  v67 = a3;

  v50 = sub_25214196C();
  v51 = sub_252141F9C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v72 = v65;
    *v52 = 136446466;
    v53 = sub_2521425DC();
    log = v50;
    v55 = sub_2520A5448(v53, v54, &v72);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    v56 = sub_2520A5448(v68, v69, &v72);

    *(v52 + 14) = v56;
    v50 = log;
    _os_log_impl(&dword_25207E000, log, v51, "[%{public}s] Detected active category change interruption that requires checks. { activeCategory=%s }", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v65, -1, -1);
    MEMORY[0x253099FD0](v52, -1, -1);
  }

  else
  {
  }

  v57 = sub_25214196C();
  v58 = sub_252141F9C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v72 = v60;
    *v59 = 136446210;
    v61 = sub_2521425DC();
    v63 = sub_2520A5448(v61, v62, &v72);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_25207E000, v57, v58, "[%{public}s] Detected interruption that requires checks.", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x253099FD0](v60, -1, -1);
    MEMORY[0x253099FD0](v59, -1, -1);
  }

  LOBYTE(v72) = 2;
  v67(&v72);
}

uint64_t sub_2520D4C40(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v3 = v2;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_4;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (qword_27F4CD778 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = qword_27F4CDFC0;
    v10 = qword_27F4CDFC8;
    [v10 lock];
    [v10 unlock];

    *(v8 + 4) = v9;
    _os_log_impl(&dword_25207E000, v6, v7, "Attempting to stop audio session (%ld)", v8, 0xCu);
    MEMORY[0x253099FD0](v8, -1, -1);
LABEL_4:

    v11 = v3[13];
    swift_beginAccess();
    *(v11 + 24) = 1;
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = isEscapingClosureAtFileLocation;

    sub_2520DFFDC(sub_2520D9814, v12);

    v8 = v3[3];
    v13 = *(v8 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    v3 = swift_allocObject();
    v3[2] = v8;
    *(v3 + 24) = 0;
    v6 = swift_allocObject();
    v6[2].isa = sub_2520DB0B4;
    v6[3].isa = v3;
    aBlock[4] = sub_2520ADA58;
    v17 = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_75;
    a1 = _Block_copy(aBlock);
    v7 = v17;
    v14 = v8;

    dispatch_sync(v13, a1);
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

void sub_2520D4F20(void *a1, uint64_t a2, void (*a3)(char *))
{
  if (a1)
  {
    v6 = a1;
    v7 = sub_25214196C();
    v8 = sub_252141FAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_25207E000, v7, v8, "Failed to stop audio session. { error=%@ }", v9, 0xCu);
      sub_2520A2584(v10, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v10, -1, -1);
      MEMORY[0x253099FD0](v9, -1, -1);
    }

    if (*(*(a2 + 104) + 65) == 1)
    {
      v13 = sub_25214196C();
      v14 = sub_252141FAC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25207E000, v13, v14, "Audio session stop failed due to already inactivated", v15, 2u);
        MEMORY[0x253099FD0](v15, -1, -1);
      }

      swift_beginAccess();
      *(a2 + 16) = 0;
    }

    v17 = 1;
    a3(&v17);
  }

  else
  {
    v16 = *(a2 + 104);
    sub_2520E1D90();
  }
}

uint64_t sub_2520D5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_2521418EC();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  sub_2520D68F8(a2, a3, &v68 - v12);
  if (v14 >= 0.0)
  {
    sub_2521420CC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    v69 = v8;
    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v43 = sub_25214195C();
    __swift_project_value_buffer(v43, qword_27F4CDF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_252143AB0;
    v45 = MEMORY[0x277D839F8];
    v46 = MEMORY[0x277D83A80];
    *(v44 + 56) = MEMORY[0x277D839F8];
    *(v44 + 64) = v46;
    *(v44 + 32) = v14;
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 72) = v15;
    sub_25214193C();

    byte_27F4D34A0 = 0;
    v47 = sub_25214196C();
    v48 = sub_252141F9C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *&v50 = COERCE_DOUBLE(swift_slowAlloc());
      v70 = v10;
      v51 = v13;
      v52 = v50;
      v74 = *&v50;
      *v49 = 136447234;
      v53 = sub_2521425DC();
      v55 = sub_2520A5448(v53, v54, &v74);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2048;
      *(v49 + 14) = v14;
      *(v49 + 22) = 2048;
      *(v49 + 24) = v15;
      *(v49 + 32) = 2048;
      *(v49 + 34) = v17;
      *(v49 + 42) = 2048;
      *(v49 + 44) = v16;
      _os_log_impl(&dword_25207E000, v47, v48, "[%{public}s] Tone playback requested. { frequency=%f, level=%f, duration=%f, ch=%ld }", v49, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v56 = v52;
      v13 = v51;
      v10 = v70;
      MEMORY[0x253099FD0](v56, -1, -1);
      MEMORY[0x253099FD0](v49, -1, -1);
    }

    v74 = v14;
    v75 = v15;
    LOBYTE(v76) = v16;
    v77 = v17;
    sub_2520D7944(&v74);
    v70 = v57;
    v58 = v4[13];
    swift_beginAccess();
    *(v58 + 24) = 1;
    *(v4 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 1;
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = v71;
    v38 = v72;
    v39 = v73;
    (*(v72 + 16))(v71, v13, v73);
    v61 = *(v38 + 80);
    v68 = v4;
    v62 = (v61 + 24) & ~v61;
    v63 = v10 + v62 + 7;
    v18 = v13;
    v64 = v63 & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    (*(v38 + 32))(v65 + v62, v60, v39);
    *(v65 + v64) = v69;

    v66 = v70;
    sub_2520E0844(v70, sub_2520D9928, v65);

    sub_2520D17C0();
  }

  else
  {
    v70 = v10;
    v18 = v13;
    type metadata accessor for HTAudioDeviceCapturedVolume();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 18) = 0;
    *(inited + 24) = 0;
    v20 = type metadata accessor for AVSessionCategoryVolume();
    *(inited + 32) = [objc_allocWithZone(v20) init];
    *(inited + 40) = [objc_allocWithZone(v20) init];
    sub_2520E6A2C(0.8125);
    v21 = sub_25214196C();
    v22 = sub_252141F9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *&v24 = COERCE_DOUBLE(swift_slowAlloc());
      v74 = *&v24;
      *v23 = 136446466;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, &v74);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v28 = qword_27F4CDFC0;
      v29 = qword_27F4CDFC8;
      [v29 lock];
      [v29 unlock];

      *(v23 + 14) = v28;
      _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Ear completion tone playback requested (%ld)", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x253099FD0](v24, -1, -1);
      MEMORY[0x253099FD0](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE008, &unk_252144710);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_252143AB0;
    v31 = *MEMORY[0x277CBA648];
    v74 = COERCE_DOUBLE(sub_252141B9C());
    v75 = v32;
    sub_2521421DC();
    *(v30 + 96) = MEMORY[0x277D839B0];
    *(v30 + 72) = 1;
    v74 = *MEMORY[0x277CBA660];
    v33 = v74;
    type metadata accessor for CFString(0);
    sub_2520DAFF4(&qword_27F4CD810, type metadata accessor for CFString);
    v34 = *&v33;
    sub_2521421DC();
    *(v30 + 168) = MEMORY[0x277D839F8];
    *(v30 + 144) = 0x3FE0000000000000;
    sub_25209CF0C(v30);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB68, &qword_252143D18);
    swift_arrayDestroy();
    v35 = sub_252141B0C();

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = v71;
    v38 = v72;
    v39 = v73;
    (*(v72 + 16))(v71, v18, v73);
    v40 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    (*(v38 + 32))(v41 + v40, v37, v39);
    v78 = sub_2520D99D8;
    v79 = v41;
    v74 = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2520A3B78;
    v77 = &block_descriptor_88;
    v42 = _Block_copy(&v74);

    AudioServicesPlaySystemSoundWithOptions();
    _Block_release(v42);

    swift_setDeallocating();
    sub_2520E6788();
    swift_deallocClassInstance();
  }

  return (*(v38 + 8))(v18, v39);
}

uint64_t sub_2520D5A50(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v30 = a1;
  v32 = sub_252141A4C();
  v35 = *(v32 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252141A8C();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2521418EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_252141ABC();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  AudioServicesDisposeSystemSoundID(0x491u);
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v26 = sub_252141FFC();
  sub_252141AAC();
  sub_252141AEC();
  v28 = *(v12 + 8);
  v28(v15, v11);
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  (*(v9 + 32))(v20 + v19, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_2520DAF10;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_147_1;
  v21 = _Block_copy(aBlock);

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520DAFF4(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520CEEB8(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  v22 = v31;
  v23 = v32;
  sub_25214218C();
  v24 = v26;
  MEMORY[0x253099170](v18, v7, v22, v21);
  _Block_release(v21);

  (*(v35 + 8))(v22, v23);
  (*(v33 + 8))(v7, v34);
  return (v28)(v18, v29);
}

uint64_t sub_2520D5EF8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2520D6BD4(a2, 0);
  }

  return result;
}