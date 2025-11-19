unint64_t sub_224CF3DF8()
{
  result = qword_281356190;
  if (!qword_281356190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281356190);
  }

  return result;
}

uint64_t sub_224CF3E4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v140 = a8;
  v148 = a6;
  v144 = a5;
  v150 = a4;
  v149 = sub_224DAC268();
  v146 = *(v149 - 8);
  v10 = *(v146 + 64);
  v11 = MEMORY[0x28223BE20](v149);
  v139 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v130 - v14;
  MEMORY[0x28223BE20](v13);
  v145 = &v130 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v143 = &v130 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v130 - v25;
  v27 = sub_224DACC88();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v151 = result;
  if (!result)
  {
    return result;
  }

  v136 = a7;
  v138 = v17;
  v137 = v16;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
  MEMORY[0x22AA5C290](v155);
  v34 = v155[0];
  v35 = sub_224DAF6A8();

  if ((v35 & 1) == 0)
  {
  }

  v36 = sub_224DADF08();
  v37 = sub_224D42328(v150, v36);

  if (!v37)
  {
  }

  v38 = *(v151 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

  MEMORY[0x22AA5C290](v155, v33);
  v39 = v155[0];
  v40 = sub_224DADF18();
  v135 = &v130;
  v41 = *(v38 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v42 = MEMORY[0x28223BE20](v40);
  *(&v130 - 2) = v38;
  *(&v130 - 1) = v39;
  MEMORY[0x28223BE20](v42);
  *(&v130 - 2) = sub_224CF7E98;
  *(&v130 - 1) = v43;
  os_unfair_lock_lock(v41 + 4);
  sub_224CF7EFC(v152);
  os_unfair_lock_unlock(v41 + 4);
  v44 = LOBYTE(v152[0]);

  v45 = v31;
  v46 = v151;
  (*(v28 + 8))(v45, v27);
  v47 = *(v46 + 176);
  v155[0] = a3;
  v48 = sub_224DAC088();
  v49 = v48;
  v50 = v138;
  v51 = *(v138 + 16);
  if (v44 == 1 && (v48 & 1) != 0)
  {
    v52 = v137;
    v51(v26, v46 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v137);
    v53 = a3;
    v54 = sub_224DAB228();
    v55 = sub_224DAF278();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&dword_224A2F000, v54, v55, "Reload completed but tasks remain; not releasing precache assertions for %{public}@", v56, 0xCu);
      sub_224A3311C(v57, &unk_27D6F69F0, &unk_224DB3900);
      v59 = v57;
      v50 = v138;
      MEMORY[0x22AA5EED0](v59, -1, -1);
      v60 = v56;
      v52 = v137;
      MEMORY[0x22AA5EED0](v60, -1, -1);
    }

    else
    {
    }

    return (*(v50 + 8))(v26, v52);
  }

  v61 = v44;
  v133 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v62 = v143;
  v63 = v137;
  v134 = v51;
  v132 = v138 + 16;
  v51(v143, v46 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v137);
  v64 = a3;
  v65 = sub_224DAB228();
  v66 = sub_224DAF278();
  v135 = v64;

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v155[0] = v69;
    *v67 = 136315650;
    if (v61)
    {
      v70 = 0x657474696D726570;
    }

    else
    {
      v70 = 0x6D72657020746F6ELL;
    }

    if (v61)
    {
      v71 = 0xE900000000000064;
    }

    else
    {
      v71 = 0xED00006465747469;
    }

    v72 = sub_224A33F74(v70, v71, v155);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    if (v49)
    {
      v73 = 0x657220736B736174;
    }

    else
    {
      v73 = 0x736B736174206F6ELL;
    }

    if (v49)
    {
      v74 = 0xEC0000006E69616DLL;
    }

    else
    {
      v74 = 0xEF6E69616D657220;
    }

    v75 = sub_224A33F74(v73, v74, v155);
    v63 = v137;

    *(v67 + 14) = v75;
    *(v67 + 22) = 2114;
    v76 = v135;
    *(v67 + 24) = v135;
    *v68 = v76;
    v77 = v76;
    _os_log_impl(&dword_224A2F000, v65, v66, "Reload completed (%s, %s); releasing precache assertions for %{public}@", v67, 0x20u);
    sub_224A3311C(v68, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v69, -1, -1);
    v78 = v67;
    v46 = v151;
    MEMORY[0x22AA5EED0](v78, -1, -1);

    v79 = v138;
  }

  else
  {

    v79 = v50;
  }

  v80 = *(v79 + 8);
  (v80)(v62, v63);
  v81 = v149;
  v82 = v146;
  v83 = v147;
  v84 = v145;
  v85 = v144;
  swift_beginAccess();
  if (*(v85 + 16))
  {
    v86 = *(v85 + 16);

    sub_224DAB328();
  }

  swift_beginAccess();
  v87 = *(v85 + 16);
  *(v85 + 16) = 0;

  v88 = v148;
  swift_beginAccess();
  v89 = *(v88 + 16);
  if (!*(v89 + 16) || (v90 = sub_224A61E5C(v150), (v91 & 1) == 0))
  {
    swift_endAccess();
  }

  v145 = v80;
  sub_224A3317C(*(v89 + 56) + 40 * v90, v152);
  sub_224A36F98(v152, v155);
  swift_endAccess();
  v134(v83, v46 + v133, v63);
  v92 = *(v82 + 16);
  v144 = v82 + 16;
  v143 = v92;
  (v92)(v84, v150, v81);
  v93 = v135;
  v94 = sub_224DAB228();
  v95 = sub_224DAF278();

  v96 = os_log_type_enabled(v94, v95);
  v131 = v93;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v152[0] = v99;
    *v97 = 138543618;
    *(v97 + 4) = v93;
    *v98 = v93;
    *(v97 + 12) = 2082;
    sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
    v100 = v63;
    v101 = v93;
    v102 = sub_224DAFD28();
    v104 = v103;
    v135 = *(v82 + 8);
    (v135)(v84, v149);
    v105 = sub_224A33F74(v102, v104, v152);

    *(v97 + 14) = v105;
    _os_log_impl(&dword_224A2F000, v94, v95, "Reload completed; releasing precache assertion for %{public}@::%{public}s", v97, 0x16u);
    sub_224A3311C(v98, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v98, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v106 = v99;
    v81 = v149;
    MEMORY[0x22AA5EED0](v106, -1, -1);
    v107 = v97;
    v46 = v151;
    MEMORY[0x22AA5EED0](v107, -1, -1);

    v108 = v147;
    v109 = v100;
  }

  else
  {

    v135 = *(v82 + 8);
    (v135)(v84, v81);
    v108 = v83;
    v109 = v63;
  }

  v110 = v145;
  (v145)(v108, v109);
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  sub_224DAE1F8();
  v111 = v142;
  v112 = v150;
  v113 = v143;
  (v143)(v142, v150, v81);
  v153 = 0;
  memset(v152, 0, sizeof(v152));
  v114 = v148;
  swift_beginAccess();
  sub_224B09920(v152, v111);
  swift_endAccess();
  swift_beginAccess();
  if (!*(*(v114 + 16) + 16))
  {
    v115 = v141;
    v134(v141, v46 + v133, v137);
    v116 = v139;
    v113(v139, v112, v81);
    v117 = v131;
    v118 = sub_224DAB228();
    v119 = sub_224DAF278();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = v116;
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v154 = v123;
      *v121 = 138543618;
      *(v121 + 4) = v117;
      *v122 = v117;
      *(v121 + 12) = 2082;
      sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
      v124 = v117;
      v125 = sub_224DAFD28();
      v127 = v126;
      (v135)(v120, v81);
      v128 = sub_224A33F74(v125, v127, &v154);

      *(v121 + 14) = v128;
      _os_log_impl(&dword_224A2F000, v118, v119, "Precaching complete for %{public}@::%{public}s", v121, 0x16u);
      sub_224A3311C(v122, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v122, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x22AA5EED0](v123, -1, -1);
      MEMORY[0x22AA5EED0](v121, -1, -1);

      v129 = (v145)(v141, v137);
    }

    else
    {

      (v135)(v116, v81);
      v129 = v110(v115, v137);
    }

    v136(v129);
  }

  return __swift_destroy_boxed_opaque_existential_1(v155);
}

uint64_t sub_224CF4DA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  v135 = v5;
  v136 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v127 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v134 = v109 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v128 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v109 - v14;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v132 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v131 = v109 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v109 - v24;
  v27 = *(a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);
  if (!v27)
  {
    (*(v17 + 16))(v109 - v24, a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v16);
    v43 = sub_224DAB228();
    v44 = sub_224DAF288();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "No active placeholders exist because no descriptors exist.", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    (*(v17 + 8))(v26, v16);
    sub_224CF6B30();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }

  v130 = v25;
  v133 = v17;
  v125 = v7;
  v28 = a2;
  v29 = v16;
  v126 = v15;
  v30 = a1[31];
  v31 = a1[32];
  __swift_project_boxed_opaque_existential_1(a1 + 28, v30);
  v32 = *(v31 + 32);

  v32(&aBlock, 768, v30, v31);
  if (!*(&v140 + 1))
  {

    sub_224A3311C(&aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    v47 = a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
    v48 = v131;
    (*(v133 + 16))(v131, v47, v29);
    v49 = sub_224DAB228();
    v50 = sub_224DAF288();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_224A2F000, v49, v50, "No active placeholders exist because no hosts exist", v51, 2u);
      MEMORY[0x22AA5EED0](v51, -1, -1);
    }

    (*(v133 + 8))(v48, v29);
    sub_224CF6B30();
    swift_allocError();
    *v52 = 1;
    return swift_willThrow();
  }

  v141[0] = aBlock;
  v141[1] = v139;
  v141[2] = v140;
  v33 = sub_224C160B0();
  v34 = v133;
  if (!v33)
  {
LABEL_6:

    v36 = v132;
    (*(v34 + 16))(v132, a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v29);
    v37 = sub_224DAB228();
    v38 = sub_224DAF288();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_224A2F000, v37, v38, "No active placeholders exist because no metrics specifications exist", v39, 2u);
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    (*(v34 + 8))(v36, v29);
    sub_224CF6B30();
    swift_allocError();
    v41 = 2;
LABEL_9:
    *v40 = v41;
    swift_willThrow();
    return sub_224A699F0(v141);
  }

  if (v33 >> 62)
  {
    v53 = sub_224DAF838();

    if (v53)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v35)
    {
      goto LABEL_6;
    }
  }

  v118 = sub_224A86CAC();
  if (!v118)
  {

    (*(v34 + 16))(v130, a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v29);
    v59 = sub_224DAB228();
    v60 = sub_224DAF288();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_224A2F000, v59, v60, "No active placeholders exist because no configurations exist", v61, 2u);
      MEMORY[0x22AA5EED0](v61, -1, -1);
    }

    (*(v34 + 8))(v130, v29);
    sub_224CF6B30();
    swift_allocError();
    v41 = 3;
    goto LABEL_9;
  }

  v54 = swift_allocObject();
  v123 = v54;
  *(v54 + 16) = MEMORY[0x277D84FA0];
  result = v54 + 16;
  v109[2] = result;
  v109[3] = v2;
  if ((v27 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224A3B758(&qword_2813509C8, &unk_2813509D0, 0x277CFA378);
    result = sub_224DAF1F8();
    v27 = v142;
    v55 = v143;
    v56 = v144;
    v57 = v145;
    v58 = v146;
  }

  else
  {
    v57 = 0;
    v62 = -1 << *(v27 + 32);
    v55 = v27 + 56;
    v63 = ~v62;
    v64 = -v62;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v58 = v65 & *(v27 + 56);
    v56 = v63;
  }

  v109[1] = v56;
  v66 = (v56 + 64) >> 6;
  v116 = v118 + 64;
  v129 = v136 + 16;
  v133 = v136 + 32;
  v121 = v125 + 7;
  v120 = &v139;
  v119 = v136 + 8;
  v122 = a1;
  v113 = v28;
  v112 = v27;
  v111 = v55;
  v110 = v66;
  while (v27 < 0)
  {
    v72 = sub_224DAF878();
    if (!v72 || (v137 = v72, sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378), swift_dynamicCast(), v71 = aBlock, v69 = v57, v70 = v58, !aBlock))
    {
LABEL_56:
      sub_224A699F0(v141);

      sub_224A3B7E4();
      swift_beginAccess();
      *v28 = *(v123 + 16);
    }

LABEL_39:
    v114 = v70;
    v115 = v69;
    v125 = v71;
    v124 = [v71 supportedFamilies];
    v73 = 1 << *(v118 + 32);
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v75 = v74 & *(v118 + 64);
    v117 = (v73 + 63) >> 6;

    v76 = 0;
    if (!v75)
    {
LABEL_44:
      if (v117 <= (v76 + 1))
      {
        v78 = (v76 + 1);
      }

      else
      {
        v78 = v117;
      }

      v79 = (v78 - 1);
      v80 = v128;
      while (1)
      {
        v77 = (v76 + 1);
        if (__OFADD__(v76, 1))
        {
          break;
        }

        if (v77 >= v117)
        {
          v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          (*(*(v108 - 8) + 56))(v80, 1, 1, v108);
          v75 = 0;
          goto LABEL_52;
        }

        v75 = *(v116 + 8 * v77);
        ++v76;
        if (v75)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

    while (1)
    {
      v77 = v76;
LABEL_51:
      v81 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v82 = v81 | (v77 << 6);
      v83 = v118;
      v85 = v135;
      v84 = v136;
      v86 = v134;
      (*(v136 + 16))(v134, *(v118 + 48) + *(v136 + 72) * v82, v135);
      v132 = *(*(v83 + 56) + 8 * v82);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v88 = *(v87 + 48);
      v80 = v128;
      (*(v84 + 32))(v128, v86, v85);
      v89 = v132;
      *(v80 + v88) = v132;
      (*(*(v87 - 8) + 56))(v80, 0, 1, v87);
      v90 = v89;
      v79 = v77;
LABEL_52:
      v91 = v126;
      sub_224A44E4C(v80, v126, &qword_27D6F4930, &unk_224DB8D00);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
      {
        break;
      }

      v131 = *(v91 + *(v92 + 48));
      v93 = v131;
      v94 = v136;
      v130 = *(v136 + 32);
      v95 = v134;
      v96 = v135;
      v132 = v79;
      v130(v134, v91, v135);
      v97 = [v93 metricsSpecification];
      v98 = v94;
      v99 = *(v94 + 16);
      v100 = v127;
      v99(v127, v95, v96);
      v101 = (*(v98 + 80) + 40) & ~*(v98 + 80);
      v102 = &v121[v101] & 0xFFFFFFFFFFFFFFF8;
      v103 = swift_allocObject();
      v104 = v125;
      *(v103 + 2) = v125;
      *(v103 + 3) = v97;
      *(v103 + 4) = v122;
      v130(&v103[v101], v100, v96);
      *&v103[v102] = v123;
      *&v140 = sub_224CF6B84;
      *(&v140 + 1) = v103;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v139 = sub_224CF1274;
      *(&v139 + 1) = &block_descriptor_48;
      v105 = _Block_copy(&aBlock);
      v106 = v104;
      v107 = v97;

      CHSWidgetFamilyMaskEnumerateFamilies();
      _Block_release(v105);

      result = (*(v136 + 8))(v134, v135);
      v76 = v132;
      if (!v75)
      {
        goto LABEL_44;
      }
    }

    v57 = v115;
    v58 = v114;
    v28 = v113;
    v27 = v112;
    v55 = v111;
    v66 = v110;
  }

  v67 = v57;
  v68 = v58;
  v69 = v57;
  if (v58)
  {
LABEL_35:
    v70 = (v68 - 1) & v68;
    v71 = *(*(v27 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v68)))));
    if (!v71)
    {
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v69 >= v66)
    {
      goto LABEL_56;
    }

    v68 = *(v55 + 8 * v69);
    ++v67;
    if (v68)
    {
      goto LABEL_35;
    }
  }

LABEL_58:
  __break(1u);
  return result;
}

void sub_224CF5C6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  v128 = a5;
  v135 = a4;
  v121 = sub_224DAB258();
  v138 = *(v121 - 8);
  v9 = *(v138 + 64);
  MEMORY[0x28223BE20](v121);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_224DA9688();
  v139 = *(v111 - 8);
  v12 = *(v139 + 64);
  v13 = MEMORY[0x28223BE20](v111);
  v110 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v109 = &v103 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v127 = &v103 - v18;
  MEMORY[0x28223BE20](v17);
  v108 = &v103 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v20 = *(v134 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v134);
  v115 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v126 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v133 = &v103 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v103 - v30;
  MEMORY[0x28223BE20](v29);
  v142 = &v103 - v32;
  v33 = sub_224DAC268();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v125 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v136 = &v103 - v38;
  v39 = [a2 extensionIdentity];
  v40 = [a2 kind];
  if (!v40)
  {
    sub_224DAEE18();
    v40 = sub_224DAEDE8();
  }

  v132 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:v39 kind:v40 family:a1 intent:0 activityIdentifier:0];

  v41 = [a3 allMetricsForFamily_];
  v42 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0);
  v43 = sub_224DAF1B8();

  v45 = v43;
  v113 = v42;
  if ((v43 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v45 = v144[4];
    v46 = v144[5];
    v47 = v144[6];
    v48 = v144[7];
    v49 = v144[8];
  }

  else
  {
    v48 = 0;
    v50 = -1 << *(v43 + 32);
    v46 = v43 + 56;
    v47 = ~v50;
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v49 = v52 & *(v43 + 56);
  }

  v54 = v133;
  v53 = v134;
  v141 = 0;
  v103 = v47;
  v119 = (v47 + 64) >> 6;
  v124 = (v20 + 16);
  v140 = (v20 + 56);
  v123 = (v20 + 48);
  v114 = (v20 + 32);
  v104 = (v20 + 8);
  v118 = (v138 + 16);
  v117 = (v34 + 16);
  v122 = (v34 + 8);
  v116 = (v138 + 8);
  v107 = (v139 + 8);
  v106 = (v139 + 16);
  *&v44 = 136446210;
  v105 = v44;
  v137 = v31;
  v139 = v33;
  v131 = v45;
  v130 = v46;
  v120 = v11;
  while (v45 < 0)
  {
    v67 = sub_224DAF878();
    v64 = v137;
    if (!v67 || (v143 = v67, swift_dynamicCast(), v66 = v144[0], v63 = v48, v65 = v49, !v144[0]))
    {
LABEL_34:
      sub_224A3B7E4();

      return;
    }

LABEL_21:
    v138 = v65;
    v68 = v142;
    (*v124)(v142, v128, v53);
    v69 = *v140;
    (*v140)(v68, 0, 1, v53);
    v70 = v132;
    v71 = [v132 intentReference];
    if (v71)
    {

      v72 = [v70 widgetByReplacingIntent_];
    }

    else
    {
      v72 = v70;
    }

    v73 = v72;
    v69(v64, 1, 1, v53);
    sub_224A3796C(v142, v54, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v123)(v54, 1, v53) == 1)
    {
      v74 = v73;
      sub_224A3311C(v54, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v75 = *v114;
      v76 = v115;
      (*v114)(v115, v54, v53);
      v77 = v73;
      sub_224DAA1F8();
      v78 = sub_224DAA048();

      if (v78)
      {
        v79 = v137;
        sub_224A3311C(v137, &qword_27D6F56C0, &unk_224DB3580);
        v80 = v76;
        v64 = v79;
        v75(v79, v80, v53);
        v69(v79, 0, 1, v53);
      }

      else
      {
        (*v104)(v76, v53);
        v64 = v137;
      }
    }

    sub_224A3796C(v64, v126, &qword_27D6F56C0, &unk_224DB3580);
    v81 = v66;
    v82 = v136;
    sub_224DAC228();

    sub_224A3311C(v64, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v142, &qword_27D6F56C0, &unk_224DB3580);
    v83 = *(v135 + 16);
    v84 = *(v135 + 24);
    swift_getObjectType();
    v85 = *(v84 + 8);
    v86 = v127;
    v87 = v141;
    sub_224DAC3F8();
    v88 = v125;
    if (v87)
    {
      v129 = v81;
      v89 = v120;
      v90 = v121;
      (*v118)(v120, v135 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v121);
      v91 = v139;
      (*v117)(v88, v82, v139);
      v92 = sub_224DAB228();
      v93 = sub_224DAF2A8();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v144[0] = v95;
        *v94 = v105;
        sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
        v96 = sub_224DAFD28();
        v98 = v97;
        v141 = v87;
        v99 = *v122;
        (*v122)(v88, v139);
        v100 = sub_224A33F74(v96, v98, v144);
        v101 = v120;

        *(v94 + 4) = v100;
        _os_log_impl(&dword_224A2F000, v92, v93, "Cannot protect key as it cannot be converted to a URL: %{public}s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x22AA5EED0](v95, -1, -1);
        MEMORY[0x22AA5EED0](v94, -1, -1);

        (*v116)(v101, v121);
        v99(v136, v139);
      }

      else
      {

        v102 = *v122;
        (*v122)(v88, v91);
        (*v116)(v89, v90);
        v102(v136, v91);
      }

      v141 = 0;
    }

    else
    {
      v141 = 0;
      v55 = v108;
      sub_224DA9548();
      v56 = *v107;
      v57 = v111;
      (*v107)(v86, v111);
      v58 = v110;
      (*v106)(v110, v55, v57);
      swift_beginAccess();
      v59 = v82;
      v60 = v109;
      sub_224ADB390(v109, v58);
      swift_endAccess();

      v56(v60, v57);
      v56(v55, v57);
      (*v122)(v59, v139);
    }

    v48 = v63;
    v49 = v138;
    v54 = v133;
    v53 = v134;
    v45 = v131;
    v46 = v130;
  }

  v61 = v48;
  v62 = v49;
  v63 = v48;
  v64 = v137;
  if (v49)
  {
LABEL_17:
    v65 = (v62 - 1) & v62;
    v66 = *(*(v45 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v62)))));
    if (!v66)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v63 >= v119)
    {
      goto LABEL_34;
    }

    v62 = *(v46 + 8 * v63);
    ++v61;
    if (v62)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224CF6A1C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6370, &unk_224DBF910);
  sub_224DAF3E8();
}

uint64_t sub_224CF6AB0()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6378, &qword_224DBF920);
  return sub_224DAEE28();
}

unint64_t sub_224CF6B30()
{
  result = qword_2813561A0[0];
  if (!qword_2813561A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813561A0);
  }

  return result;
}

uint64_t sub_224CF6B9C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_224CF6CFC(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_224CF7058(v9, v4, v2);
  result = MEMORY[0x22AA5EED0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CF6CFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v35 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v8 = *(*(v45 - 8) + 64);
  result = MEMORY[0x28223BE20](v45);
  v43 = &v35 - v11;
  v44 = v10;
  v12 = 0;
  v49 = a3;
  v13 = *(a3 + 64);
  v39 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v37 = 0;
  v38 = (v14 + 63) >> 6;
  v41 = v10 + 8;
  v42 = v10 + 16;
  v17 = v46;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v50 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v49;
    v24 = v43;
    v23 = v44;
    v25 = *(v44 + 16);
    v26 = v45;
    v25(v43, v49[6] + *(v44 + 72) * v21, v45);
    v27 = v22[7];
    v40 = v21;
    v28 = *(v27 + 8 * v21);
    v25(v17, v24, v26);
    v29 = v47;
    v30 = v48;
    *(v17 + *(v48 + 48)) = v28;
    sub_224A3796C(v17, v29, &qword_27D6F38A8, &unk_224DB4650);
    v31 = *(v29 + *(v30 + 48));
    v32 = v28;

    sub_224DAA1F8();
    v33 = *(v23 + 8);
    v33(v29, v26);
    LOBYTE(v28) = sub_224DAA048();

    sub_224A3311C(v17, &qword_27D6F38A8, &unk_224DB4650);

    result = (v33)(v24, v26);
    v16 = v50;
    if (v28)
    {
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_224B2E8E0(v36, v35, v37, v49);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v38)
    {
      return sub_224B2E8E0(v36, v35, v37, v49);
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224CF7058(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224CF6CFC(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224CF70D0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06FF8(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_224CF7160(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_224CF71F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_224CF7160(v16, v10, a2, a1, a4);

    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_224CF73D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v61 = result;
  v6 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_49;
  }

  v7 = 0;
  v59 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v62 = v9 & *(a4 + 56);
  v56 = (v8 + 63) >> 6;
  v66 = a3 + 56;
  do
  {
LABEL_6:
    if (v62)
    {
      v10 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
    }

    else
    {
      v11 = v7;
      do
      {
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_98;
        }

        if (v7 >= v56)
        {
LABEL_96:

          return sub_224B05890(v61, a2, v6, v5);
        }

        v12 = *(v59 + 8 * v7);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v62 = (v12 - 1) & v12;
    }

    v13 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    v14 = *(v5 + 40);
    sub_224DAFE68();
    sub_224DAEE78();

    result = sub_224DAFEA8();
    v15 = -1 << *(v5 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
  }

  while (((1 << v16) & *(v66 + 8 * (v16 >> 6))) == 0);
  v64 = v6;
  v19 = ~v15;
  while (1)
  {
    v20 = *(*(v5 + 48) + v16);
    v21 = 0xD000000000000012;
    v22 = 0xD000000000000014;
    if (v20 == 2)
    {
      v22 = 0x64657472617473;
    }

    v23 = 0x8000000224DC4690;
    if (v20 == 2)
    {
      v23 = 0xE700000000000000;
    }

    if (*(*(v5 + 48) + v16))
    {
      v21 = 0x437363697274656DLL;
    }

    v24 = 0x8000000224DC4660;
    if (*(*(v5 + 48) + v16))
    {
      v24 = 0xEE006465676E6168;
    }

    v25 = *(*(v5 + 48) + v16) <= 1u ? v21 : v22;
    v26 = *(*(v5 + 48) + v16) <= 1u ? v24 : v23;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v29 = 0x64657472617473;
      }

      else
      {
        v29 = 0xD000000000000014;
      }

      if (v13 == 2)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0x8000000224DC4690;
      }

      if (v25 != v29)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v27 = 0x437363697274656DLL;
      v28 = 0xEE006465676E6168;
      if (!v13)
      {
        v27 = 0xD000000000000012;
        v28 = 0x8000000224DC4660;
      }

      if (v25 != v27)
      {
        goto LABEL_42;
      }
    }

    if (v26 == v28)
    {
      break;
    }

LABEL_42:
    v30 = sub_224DAFD88();

    if (v30)
    {
      goto LABEL_46;
    }

    v16 = (v16 + 1) & v19;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    v5 = a3;
    if ((*(v66 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      v4 = a4;
      v6 = v64;
      goto LABEL_6;
    }
  }

LABEL_46:
  v61[v17] |= v18;
  v6 = v64 + 1;
  v4 = a4;
  v5 = a3;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_49:
  v31 = 0;
  v32 = v5 + 56;
  v33 = 1 << *(v5 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v63 = v34 & *(v5 + 56);
  v57 = (v33 + 63) >> 6;
  v67 = v4 + 56;
  while (2)
  {
    if (v63)
    {
      v35 = __clz(__rbit64(v63));
      v36 = (v63 - 1) & v63;
LABEL_60:
      v39 = v35 | (v31 << 6);
      v40 = *(*(v5 + 48) + v39);
      v41 = *(v4 + 40);
      sub_224DAFE68();
      v63 = v36;
      v60 = v39;
      sub_224DAEE78();

      result = sub_224DAFEA8();
      v42 = -1 << *(v4 + 32);
      v43 = result & ~v42;
      if (((*(v67 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        continue;
      }

      v65 = v6;
      v44 = ~v42;
LABEL_62:
      v45 = *(*(v4 + 48) + v43);
      v46 = 0xD000000000000014;
      if (v45 == 2)
      {
        v46 = 0x64657472617473;
      }

      v47 = 0x8000000224DC4690;
      if (v45 == 2)
      {
        v47 = 0xE700000000000000;
      }

      v48 = 0x437363697274656DLL;
      if (!*(*(v4 + 48) + v43))
      {
        v48 = 0xD000000000000012;
      }

      v49 = 0x8000000224DC4660;
      if (*(*(v4 + 48) + v43))
      {
        v49 = 0xEE006465676E6168;
      }

      if (*(*(v4 + 48) + v43) <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      if (*(*(v4 + 48) + v43) <= 1u)
      {
        v51 = v49;
      }

      else
      {
        v51 = v47;
      }

      if (v40 > 1)
      {
        if (v40 == 2)
        {
          v54 = 0x64657472617473;
        }

        else
        {
          v54 = 0xD000000000000014;
        }

        if (v40 == 2)
        {
          v53 = 0xE700000000000000;
        }

        else
        {
          v53 = 0x8000000224DC4690;
        }

        if (v50 != v54)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v52 = 0x437363697274656DLL;
        v53 = 0xEE006465676E6168;
        if (!v40)
        {
          v52 = 0xD000000000000012;
          v53 = 0x8000000224DC4660;
        }

        if (v50 != v52)
        {
LABEL_89:
          v55 = sub_224DAFD88();

          if (v55)
          {
            goto LABEL_93;
          }

          v43 = (v43 + 1) & v44;
          v4 = a4;
          if (((*(v67 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            v5 = a3;
            v6 = v65;
            continue;
          }

          goto LABEL_62;
        }
      }

      if (v51 == v53)
      {

LABEL_93:
        *(v61 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        v6 = v65 + 1;
        v4 = a4;
        v5 = a3;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_96;
        }

        continue;
      }

      goto LABEL_89;
    }

    break;
  }

  v37 = v31;
  while (1)
  {
    v31 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v31 >= v57)
    {
      goto LABEL_96;
    }

    v38 = *(v32 + 8 * v31);
    ++v37;
    if (v38)
    {
      v35 = __clz(__rbit64(v38));
      v36 = (v38 - 1) & v38;
      goto LABEL_60;
    }
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_224CF7A7C()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_224CF7AC8(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_224CF3E4C(a1, v9, v10, v1 + v4, v7, v8, v12, v13);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224CF7C90(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, &v2[v5], v9);
}

uint64_t sub_224CF7DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_224CEBA50(v2, v3, a1);
}

unint64_t sub_224CF7E2C()
{
  result = qword_27D6F6388;
  if (!qword_27D6F6388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6388);
  }

  return result;
}

uint64_t sub_224CF7F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_224DAE8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *MEMORY[0x277CE3D10];
  v18 = *(v5 + 104);
  v29 = a2;
  result = v18(a2, v17, v4);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v22 = *(v10 + 72);
    v23 = (v5 + 48);
    v27 = (v5 + 40);
    v28 = (v5 + 32);
    v26 = (v5 + 8);
    do
    {
      sub_224A415FC(v21, v16, type metadata accessor for ExtensionTask.SchedulingOption);
      sub_224A415FC(v16, v14, type metadata accessor for ExtensionTask.SchedulingOption);
      if ((*v23)(v14, 5, v4))
      {
        sub_224A42538(v16, type metadata accessor for ExtensionTask.SchedulingOption);
        result = sub_224A42538(v14, type metadata accessor for ExtensionTask.SchedulingOption);
      }

      else
      {
        (*v28)(v8, v14, v4);
        sub_224CF9E00(&qword_281350C40);
        v24 = v29;
        v25 = sub_224DAEDB8();
        sub_224A42538(v16, type metadata accessor for ExtensionTask.SchedulingOption);
        if (v25)
        {
          result = (*v26)(v8, v4);
        }

        else
        {
          result = (*v27)(v24, v8, v4);
        }
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

BOOL sub_224CF8218(uint64_t a1, uint64_t a2)
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

uint64_t sub_224CF8254()
{
  v1 = type metadata accessor for ExtensionTask.Identifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A415FC(v0, v4, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
        return 0x746E6F436576696CLL;
      }

      else
      {
        sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
        return 0x7470697263736564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x4377656976657270;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x6C6F686563616C70;
    }

    else
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x69737365736C7275;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x7974697669746361;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x636E6176656C6572;
    }

    else
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x7550746567646977;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
    return 0x736E6F6369;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
    return 0x746F687370616E73;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v8 = *&v4[*(v7 + 48)];

    v9 = *&v4[*(v7 + 64)];

    v10 = sub_224DABE18();
    (*(*(v10 - 8) + 8))(v4, v10);
    return 0x656E696C656D6974;
  }
}

id sub_224CF8638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionTask(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224CF8678()
{
  v0 = sub_224DAE918();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ExtensionTask.SchedulingConfiguration(319);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_224CF8870();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        v6 = type metadata accessor for ExtensionTask.Identifier(319);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          v8 = sub_224DA9908();
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = sub_224DA9878();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_224CF8870()
{
  if (!qword_281350D50)
  {
    sub_224DAC938();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281350D50);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExtensionTask.Cost(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExtensionTask.Cost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_224CF8928(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CF8944(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_224CF8980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CF89D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_224CF8A24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_224CF8A3C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_224CF8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_224CF8B4C()
{
  if (!qword_281351A20)
  {
    sub_224DA9878();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281351A20);
    }
  }
}

void sub_224CF8BB4()
{
  sub_224DAF538();
  if (v0 <= 0x3F)
  {
    sub_224CF8CA4();
    if (v1 <= 0x3F)
    {
      sub_224A3B79C(319, &qword_281350A50, 0x277CFA228);
      if (v2 <= 0x3F)
      {
        sub_224DABE18();
        if (v3 <= 0x3F)
        {
          sub_224CF8D30();
          if (v4 <= 0x3F)
          {
            sub_224DABCC8();
            if (v5 <= 0x3F)
            {
              sub_224CF8DD0();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_224CF8CA4()
{
  if (!qword_281350A48)
  {
    sub_224A3B79C(255, &qword_281350A50, 0x277CFA228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6390, &qword_224DBFDB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350A48);
    }
  }
}

void sub_224CF8D30()
{
  if (!qword_281350E60)
  {
    sub_224DABE18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6398, &qword_224DBFDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F63A0, qword_224DBFDC8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281350E60);
    }
  }
}

void sub_224CF8DD0()
{
  if (!qword_281350990)
  {
    sub_224DAF538();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350990);
    }
  }
}

uint64_t sub_224CF8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B0, &qword_224DBFEA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v24 - v16;
  v18 = *(v15 + 56);
  sub_224A415FC(a1, v24 - v16, type metadata accessor for ExtensionTask.SchedulingOption);
  sub_224A415FC(a2, &v17[v18], type metadata accessor for ExtensionTask.SchedulingOption);
  v19 = *(v5 + 48);
  v20 = v19(v17, 5, v4);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      if (v19(&v17[v18], 5, v4) == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v20 == 4)
      {
        if (v19(&v17[v18], 5, v4) != 4)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v19(&v17[v18], 5, v4) == 5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_224A3311C(v17, &qword_27D6F63B0, &qword_224DBFEA8);
    return 0;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 5, v4) != 1)
      {
        goto LABEL_17;
      }
    }

    else if (v19(&v17[v18], 5, v4) != 2)
    {
      goto LABEL_17;
    }

LABEL_13:
    sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
    return 1;
  }

  sub_224A415FC(v17, v12, type metadata accessor for ExtensionTask.SchedulingOption);
  if (v19(&v17[v18], 5, v4))
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_224CF9E00(&qword_281350C38);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v23 = v24[1] == v24[0];
  v22(v12, v4);
  sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
  return v23;
}

uint64_t sub_224CF9218(uint64_t a1, void **a2)
{
  v115 = a1;
  v116 = a2;
  v2 = sub_224DABCC8();
  v106 = *(v2 - 8);
  v107 = v2;
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v2);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DABE18();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v103 - v9;
  v10 = type metadata accessor for ExtensionTask.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v109 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v103 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v103 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v112 = &v103 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v103 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v103 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v103 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v103 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v103 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v103 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (&v103 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B8, &unk_224DBFEB0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v103 - v42;
  v44 = (&v103 + *(v41 + 56) - v42);
  sub_224A415FC(v115, &v103 - v42, type metadata accessor for ExtensionTask.Identifier);
  v45 = v116;
  v116 = v44;
  sub_224A415FC(v45, v44, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v55 = v116;
      if (EnumCaseMultiPayload == 2)
      {
        sub_224A415FC(v43, v33, type metadata accessor for ExtensionTask.Identifier);
        v56 = *v33;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_46;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_224A415FC(v43, v30, type metadata accessor for ExtensionTask.Identifier);
        v56 = *v30;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_224A415FC(v43, v27, type metadata accessor for ExtensionTask.Identifier);
        v56 = *v27;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_46;
        }
      }

      v73 = *v55;
LABEL_44:
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v53 = sub_224DAF6A8();

      goto LABEL_45;
    }

    v57 = v116;
    if (!EnumCaseMultiPayload)
    {
      sub_224A415FC(v43, v38, type metadata accessor for ExtensionTask.Identifier);
      v56 = *v38;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    v74 = v43;
    sub_224A415FC(v43, v36, type metadata accessor for ExtensionTask.Identifier);
    v76 = *v36;
    v75 = v36[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v43 = v74;
      goto LABEL_47;
    }

    v78 = *v57;
    v77 = v57[1];
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v79 = sub_224DAF6A8();

    if (v79)
    {
      if (v75)
      {
        if (v77)
        {

          v81 = sub_224C916A8(v80, v77);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if ((v81 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_62:
          v102 = v74;
          goto LABEL_63;
        }
      }

      else if (!v77)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

LABEL_68:
    sub_224A42538(v74, type metadata accessor for ExtensionTask.Identifier);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v67 = v111;
      sub_224A415FC(v43, v111, type metadata accessor for ExtensionTask.Identifier);
      v68 = v116;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v70 = v106;
        v69 = v107;
        v71 = v104;
        (*(v106 + 32))(v104, v68, v107);
        v53 = sub_224DABCB8();
        v72 = *(v70 + 8);
        v72(v71, v69);
        v72(v67, v69);
        goto LABEL_45;
      }

      (*(v106 + 8))(v67, v107);
      goto LABEL_47;
    }

    v57 = v116;
    if (EnumCaseMultiPayload == 9)
    {
      v58 = v108;
      sub_224A415FC(v43, v108, type metadata accessor for ExtensionTask.Identifier);
      v60 = *v58;
      v59 = *(v58 + 8);
      v61 = *(v58 + 16);
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_47;
      }

      v62 = v43;
      v64 = *v57;
      v63 = v57[1];
      v65 = v57[2];
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v66 = sub_224DAF6A8();

      if (v66)
      {
        if (v59 == v63 && v61 == v65)
        {

LABEL_60:
          v102 = v62;
LABEL_63:
          sub_224A42538(v102, type metadata accessor for ExtensionTask.Identifier);
          v53 = 1;
          return v53 & 1;
        }

        v101 = sub_224DAFD88();

        if (v101)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }

      sub_224A42538(v62, type metadata accessor for ExtensionTask.Identifier);
      goto LABEL_48;
    }

    v99 = v109;
    sub_224A415FC(v43, v109, type metadata accessor for ExtensionTask.Identifier);
    v56 = *v99;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
LABEL_43:
      v73 = *v57;
      goto LABEL_44;
    }

LABEL_46:

LABEL_47:
    sub_224A3311C(v43, &qword_27D6F63B8, &unk_224DBFEB0);
LABEL_48:
    v53 = 0;
    return v53 & 1;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_224A415FC(v43, v24, type metadata accessor for ExtensionTask.Identifier);
    v56 = *v24;
    v57 = v116;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v82 = v112;
    sub_224A415FC(v43, v112, type metadata accessor for ExtensionTask.Identifier);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v84 = *(v83 + 48);
    v85 = *(v82 + v84);
    v86 = *(v83 + 64);
    v87 = *(v82 + v86);
    v88 = v116;
    v89 = swift_getEnumCaseMultiPayload();
    v91 = v113;
    v90 = v114;
    if (v89 != 7)
    {

      (*(v91 + 8))(v82, v90);
      goto LABEL_47;
    }

    v115 = v43;
    v92 = *(v88 + v84);
    v93 = *(v88 + v86);
    v94 = v105;
    (*(v113 + 32))(v105, v88, v114);
    v95 = MEMORY[0x22AA5A130](v82, v94);
    v96 = *(v91 + 8);
    v96(v82, v90);
    if ((v95 & 1) == 0)
    {
      v96(v94, v90);

LABEL_72:
      sub_224A42538(v115, type metadata accessor for ExtensionTask.Identifier);
      goto LABEL_48;
    }

    if (v85)
    {
      if (!v92)
      {

LABEL_70:

        goto LABEL_71;
      }

      v98 = sub_224C916C0(v97, v92);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v98 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v92)
    {

LABEL_71:

      v96(v94, v90);
      goto LABEL_72;
    }

    v53 = sub_224C916D4(v87, v93);

    v96(v94, v90);
    sub_224A42538(v115, type metadata accessor for ExtensionTask.Identifier);
    return v53 & 1;
  }

  v47 = v110;
  sub_224A415FC(v43, v110, type metadata accessor for ExtensionTask.Identifier);
  v48 = v116;
  v49 = swift_getEnumCaseMultiPayload();
  v51 = v113;
  v50 = v114;
  if (v49 != 6)
  {
    (*(v113 + 8))(v47, v114);
    goto LABEL_47;
  }

  v52 = v103;
  (*(v113 + 32))(v103, v48, v114);
  v53 = MEMORY[0x22AA5A130](v47, v52);
  v54 = *(v51 + 8);
  v54(v52, v50);
  v54(v47, v50);
LABEL_45:
  sub_224A42538(v43, type metadata accessor for ExtensionTask.Identifier);
  return v53 & 1;
}

uint64_t sub_224CF9E00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_224DAE8B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224CF9E44(uint64_t a1)
{
  v67 = sub_224DA9878();
  v65 = *(v67 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAADC8();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_224DAAD78();
  v69 = *(v66 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v66);
  v68 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v52 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v52 - v12;
  v13 = sub_224DAAB88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DA9908();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAE08();
  v57 = sub_224DAEDE8();

  sub_224DAAD98();
  v56 = sub_224DA98B8();
  v23 = *(v19 + 8);
  v23(v22, v18);
  sub_224DAADF8();
  sub_224DA9898();
  v52 = v23;
  v53 = v18;
  v23(v22, v18);
  v63 = sub_224DAEDE8();

  sub_224DAADA8();
  v24 = sub_224DAAB68();
  v25 = *(v14 + 8);
  result = v25(v17, v13);
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_224DAADA8();
    v27 = sub_224DAAB78();
    result = v25(v17, v13);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v54 = v27;
      v55 = v24;
      v28 = *MEMORY[0x277D46720];
      v29 = v69;
      v30 = v58;
      v31 = v66;
      (*(v69 + 104))(v58, *MEMORY[0x277D46720], v66);
      v32 = v59;
      sub_224DAAD88();
      sub_224CFCAC4(qword_27D6F3F98, MEMORY[0x277D46738]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      v33 = *(v29 + 8);
      v33(v32, v31);
      v33(v30, v31);
      v34 = v70;
      v59 = v71;
      v35 = v60;
      sub_224DAADD8();
      v37 = v61;
      v36 = v62;
      v38 = (*(v61 + 88))(v35, v62);
      if (v38 == *MEMORY[0x277D46768])
      {
        (*(v37 + 96))(v35, v36);
        v52(v35, v53);
        v39 = 3;
      }

      else if (v38 == *MEMORY[0x277D46748])
      {
        v39 = 0;
      }

      else if (v38 == *MEMORY[0x277D46758])
      {
        v39 = 1;
      }

      else if (v38 == *MEMORY[0x277D46750])
      {
        v39 = 2;
      }

      else
      {
        (*(v37 + 8))(v35, v36);
        v39 = 4;
      }

      v40 = v64;
      sub_224DA9808();
      v41 = sub_224DA9778();
      (*(v65 + 8))(v40, v67);
      v42 = v68;
      sub_224DAAD88();
      v43 = (*(v69 + 88))(v42, v31);
      if (v43 == *MEMORY[0x277D46730])
      {
        v44 = 0;
      }

      else if (v43 == *MEMORY[0x277D46710])
      {
        v44 = 1;
      }

      else
      {
        if (v43 != v28)
        {
          v46 = v56;
          v45 = v57;
          if (v43 == *MEMORY[0x277D46718])
          {
            v44 = 3;
          }

          else if (v43 == *MEMORY[0x277D46728])
          {
            v44 = 4;
          }

          else if (v43 == *MEMORY[0x277D46708])
          {
            v44 = 5;
          }

          else
          {
            v33(v68, v31);
            v44 = 0;
          }

          goto LABEL_19;
        }

        v44 = 2;
      }

      v45 = v57;
      v46 = v56;
LABEL_19:
      v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v51 = v39;
      v48 = v63;
      v49 = [v47 initWithName:v45 relationshipID:v46 deviceID:v63 currentSupportedVersion:v55 minSupportedVersion:v54 isPossibleSource:v59 == v34 pairingState:v51 lastConnectionDate:v41 deviceType:v44];

      v50 = sub_224DAAE38();
      (*(*(v50 - 8) + 8))(a1, v50);
      return v49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CFA5B8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v5 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 152);
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_224CFA67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CFA7B0, 0, 0);
}

uint64_t sub_224CFA7B0()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_224DAAA48();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_224CFA8C8;
  v9 = v0[15];
  v10 = v0[13];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v10);
}

uint64_t sub_224CFA8C8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224CFA9C4, 0, 0);
}

uint64_t sub_224CFA9C4()
{
  if (v0[8])
  {
    v1 = v0[9];

    v2 = *(v1 + 136);

    sub_224A3D418(0);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_224CFCBD0;
    *(v3 + 24) = v1;
    v0[6] = sub_224BC4B74;
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_35_1;
    v4 = _Block_copy(v0 + 2);
    v5 = v0[7];

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v10 = *(MEMORY[0x277D85798] + 4);
      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_224CFAC04;
      v12 = v0[15];
      v9 = v0[13];
      v6 = (v0 + 8);
      v7 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822003E8](v6, v7, v8, v9);
  }

  else
  {
    v13 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_224A3D418(0);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_224CFAC04()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224CFAD00, 0, 0);
}

uint64_t sub_224CFAD00()
{
  if (v0[8])
  {
    v1 = v0[9];

    v2 = *(v1 + 136);

    sub_224A3D418(sub_224CFCBD0);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_224CFCBD0;
    *(v3 + 24) = v1;
    v0[6] = sub_224BC4B74;
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_35_1;
    v4 = _Block_copy(v0 + 2);
    v5 = v0[7];

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LODWORD(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      v10 = *(MEMORY[0x277D85798] + 4);
      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_224CFAC04;
      v12 = v0[15];
      v9 = v0[13];
      v6 = (v0 + 8);
      v7 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822003E8](v6, v7, v8, v9);
  }

  else
  {
    v13 = v0[9];
    v14 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_224A3D418(sub_224CFCBD0);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_224CFAF64(uint64_t a1)
{
  v1 = *(a1 + 144);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

uint64_t sub_224CFAFFC()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  v24 = MEMORY[0x277D84F90];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = sub_224DAAA88();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_224CFC9E0();
    v15 = *(v2 + 16);
    v14 = v2 + 16;
    v13 = v15;
    v16 = *(v14 + 64);
    v21[2] = v10;
    v17 = v10 + ((v16 + 32) & ~v16);
    v22 = *(v14 + 56);
    v23 = v12;
    do
    {
      v13(v8, v17, v1);
      v13(v6, v8, v1);
      v18 = sub_224CF9E44(v6);
      MEMORY[0x22AA5D350]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21[1] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();

      (*(v14 - 8))(v8, v1);
      v17 += v22;
      --v11;
    }

    while (v11);
    v19 = v24;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_224CFB21C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 136);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_224CFCB7C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_27_0;
  v15 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_224CFB4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v65 = a2;
  v66 = a3;
  v6 = sub_224DAB7B8();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAAE38();
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v67 = &v56 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v56 - v26;
  v28 = sub_224DA9908();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v64 = &v56 - v34;
  sub_224DA9888();
  v63 = v29;
  v35 = *(v29 + 48);
  v65 = v28;
  if (v35(v27, 1, v28) == 1)
  {
    sub_224A3311C(v27, &unk_27D6F5630, &unk_224DB34C0);
    v36 = v5[17];
    v37 = swift_allocObject();
    v38 = v68;
    *(v37 + 16) = v66;
    *(v37 + 24) = v38;
    v74 = sub_224CFCC64;
    v75 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_224A39F40;
    v73 = &block_descriptor_15;
    v39 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v69 = MEMORY[0x277D84F90];
    sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v13, v9, v39);
    _Block_release(v39);
    (*(v62 + 8))(v9, v6);
    (*(v60 + 8))(v13, v61);
  }

  else
  {
    v56 = v9;
    v41 = v64;
    (*(v63 + 32))(v64, v27, v65);
    v42 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
    v43 = sub_224DAAA88();
    MEMORY[0x28223BE20](v43);
    *(&v56 - 2) = v41;
    v44 = v67;
    sub_224AFD818(sub_224CFCC48, v43, v67);

    sub_224CFCA54(v44, v22);
    v45 = v58;
    if ((*(v59 + 48))(v22, 1, v58) == 1)
    {
      sub_224A3311C(v22, &qword_27D6F3320, &unk_224DBD6F0);
      v46 = v5[17];
      v47 = swift_allocObject();
      v48 = v68;
      *(v47 + 16) = v66;
      *(v47 + 24) = v48;
      v74 = sub_224CFCB0C;
      v75 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v72 = sub_224A39F40;
      v73 = &block_descriptor_21_0;
      v49 = _Block_copy(&aBlock);

      sub_224DAB7E8();
      v69 = MEMORY[0x277D84F90];
      sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v50 = v56;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v13, v50, v49);
      _Block_release(v49);
      (*(v62 + 8))(v50, v6);
      (*(v60 + 8))(v13, v61);
      sub_224A3311C(v67, &qword_27D6F3320, &unk_224DBD6F0);

      return (*(v63 + 8))(v64, v65);
    }

    else
    {
      v51 = v59;
      v52 = v57;
      (*(v59 + 32))(v57, v22, v45);
      v53 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
      sub_224DAAD98();
      sub_224DAAA68();
      v54 = *(v63 + 8);
      v55 = v65;
      v54(v33, v65);
      (*(v51 + 8))(v52, v45);
      sub_224A3311C(v67, &qword_27D6F3320, &unk_224DBD6F0);
      return (v54)(v64, v55);
    }
  }
}

void sub_224CFBD98(void (*a1)(void))
{
  sub_224CFCB28();
  v2 = swift_allocError();
  a1();
}

uint64_t sub_224CFBE00()
{
  v30 = sub_224DAAE38();
  v29 = *(v30 - 8);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  sub_224DA9888();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_224A3311C(v12, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v14 + 32))(v20, v12, v13);
  v22 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v27[5]);
  v23 = sub_224DAAA88();
  MEMORY[0x28223BE20](v23);
  *(&v26 - 2) = v20;
  sub_224AFD818(sub_224CFCA34, v23, v8);

  sub_224CFCA54(v8, v6);
  if ((*(v29 + 48))(v6, 1, v30) == 1)
  {
    sub_224A3311C(v8, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    v28 = v8;
    (*(v29 + 32))(v26, v6, v30);
    v24 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v27[5]);
    sub_224DAAD98();
    sub_224DAAA78();
    v25 = *(v14 + 8);
    v25(v18, v13);
    (*(v29 + 8))(v26, v30);
    sub_224A3311C(v28, &qword_27D6F3320, &unk_224DBD6F0);
    return (v25)(v20, v13);
  }
}

uint64_t sub_224CFC268()
{
  v0 = sub_224DA9908();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAADF8();
  v5 = sub_224DA98D8();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_224CFC354()
{
  v1 = sub_224DACB98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DABE18();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v46 - v14;
  v15 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v16 = *v15;
  v17 = *(*v15 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_224CFCA2C;
  *(v18 + 24) = v16;
  aBlock[4] = sub_224A8A838;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_49;
  v19 = _Block_copy(aBlock);

  dispatch_sync(v17, v19);
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v47 = v2;
    v48 = v5;
    v49 = v1;
    v21 = v0[15];
    v22 = v0[16];
    v50 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
    v23 = sub_224DAC798();
    v24 = *(v23 + 16);
    if (v24)
    {
      v63 = MEMORY[0x277D84F90];
      sub_224ADA64C(0, v24, 0);
      v25 = v63;
      v57 = *(v60 + 16);
      v26 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v46 = v23;
      v27 = v23 + v26;
      v28 = *(v60 + 72);
      v60 += 16;
      v55 = (v60 - 8);
      v56 = v28;
      v53 = v10 + 32;
      v54 = (v10 + 16);
      v30 = v51;
      v29 = v52;
      do
      {
        v31 = v58;
        v32 = v29;
        v33 = v59;
        v57(v58, v27, v59);
        v34 = sub_224DABDB8();
        (*v55)(v31, v33);
        v35 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v54)(v30, &v34[v35], v32);

        v63 = v25;
        v37 = *(v25 + 16);
        v36 = *(v25 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_224ADA64C(v36 > 1, v37 + 1, 1);
          v25 = v63;
        }

        *(v25 + 16) = v37 + 1;
        (*(v10 + 32))(v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v37, v30, v32);
        v27 += v56;
        --v24;
        v29 = v32;
      }

      while (v24);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
      v29 = v52;
    }

    v38 = *(v25 + 16);
    v39 = v61;
    if (v38)
    {
      v40 = *(v10 + 16);
      v53 = v25;
      v54 = (v10 + 16);
      v41 = v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v59 = *(v10 + 72);
      v60 = v40;
      LODWORD(v58) = *MEMORY[0x277CF9BE8];
      v56 = (v10 + 8);
      v57 = (v47 + 104);
      v55 = (v47 + 8);
      v43 = v49;
      v42 = v50;
      v44 = v48;
      do
      {
        (v60)(v39, v41, v29);
        v45 = v42[16];
        __swift_project_boxed_opaque_existential_1(v42 + 12, v42[15]);
        (*v57)(v44, v58, v43);
        sub_224DAC758();
        v39 = v61;
        (*v56)(v61, v29);
        (*v55)(v44, v43);
        v41 += v59;
        --v38;
      }

      while (v38);
    }
  }

  return result;
}

uint64_t sub_224CFC95C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  return swift_deallocClassInstance();
}

unint64_t sub_224CFC9E0()
{
  result = qword_27D6F40C0;
  if (!qword_27D6F40C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F40C0);
  }

  return result;
}

uint64_t sub_224CFCA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CFCAC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224CFCB28()
{
  result = qword_27D6F63C0;
  if (!qword_27D6F63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F63C0);
  }

  return result;
}

uint64_t sub_224CFCB7C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_224CFAFFC();
  v2();
}

unint64_t sub_224CFCBEC()
{
  result = qword_27D6F63C8;
  if (!qword_27D6F63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F63C8);
  }

  return result;
}

uint64_t sub_224CFCC70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB668();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_224CFCCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v44 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224CFEA04(&unk_2813509A0, MEMORY[0x277CFA140]);
    sub_224DAF1F8();
    a1 = v51;
    v8 = v52;
    v9 = v53;
    v10 = v54;
    v11 = v55;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v44[1] = v9;
  v15 = (v9 + 64) >> 6;
  v46 = v7;
  v47 = v15;
  v45 = a1;
  v48 = v8;
  while (a1 < 0)
  {
    v22 = sub_224DAF878();
    if (!v22 || (v56 = v22, sub_224DAF538(), swift_dynamicCast(), v21 = v50, v19 = v10, v20 = v11, !v50))
    {
LABEL_27:
      sub_224A3B7E4();
      return;
    }

LABEL_19:
    v49 = v20;
    v23 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
    swift_beginAccess();
    v24 = *(a2 + v23);
    v25 = sub_224A3E7EC(v21);
    if (v26)
    {
      v27 = v25;
      v28 = *(a2 + v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a2 + v23);
      v56 = v30;
      *(a2 + v23) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2993C();
        v30 = v56;
      }

      sub_224A58C3C(v27, v30);
      *(a2 + v23) = v30;
    }

    swift_endAccess();
    v31 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
    swift_beginAccess();
    v32 = *(a2 + v31);
    v33 = sub_224A3E7EC(v21);
    if (v34)
    {
      v35 = v33;
      v36 = *(a2 + v31);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(a2 + v31);
      v56 = v38;
      *(a2 + v31) = 0x8000000000000000;
      if (!v37)
      {
        sub_224B29914();
        v38 = v56;
      }

      v39 = *(v38 + 56);
      v40 = sub_224DAC378();
      v41 = *(v40 - 8);
      v42 = v39 + *(v41 + 72) * v35;
      v7 = v46;
      (*(v41 + 32))(v46, v42, v40);
      sub_224B1E1D8(v35, v38);
      v43 = *(a2 + v31);
      *(a2 + v31) = v38;

      (*(v41 + 56))(v7, 0, 1, v40);
      a1 = v45;
    }

    else
    {
      v16 = sub_224DAC378();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();

    v10 = v19;
    v8 = v48;
    v11 = v49;
    v15 = v47;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_27;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_224CFD134(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {
    v11 = *(a1 + v8);

    v12 = sub_224A3E7EC(a2);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 3;
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else if (v14 >= 1)
  {
    swift_beginAccess();
    v16 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a1 + v8);
    *(a1 + v8) = 0x8000000000000000;
    sub_224A8A0B0(v15 & ~(v15 >> 63), a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v8) = v27;
    result = swift_endAccess();
    if (v15 <= 0)
    {
      v18 = a2;
      v19 = sub_224DAB228();
      v20 = sub_224DAF288();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138543362;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_224A2F000, v19, v20, "%{public}@ Disallowing reloads due to extensive failures", v21, 0xCu);
        sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v22, -1, -1);
        MEMORY[0x22AA5EED0](v21, -1, -1);
      }

      v24 = v18;
      sub_224DAC338();
      v25 = sub_224DAC378();
      (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
      swift_beginAccess();
      sub_224A83A8C(v7, v24);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_224CFD3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_224A3E7EC(a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  v12 = v11 > 0;
LABEL_6:
  *a3 = v12;
  return result;
}

uint64_t sub_224CFD498(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v95 = a4;
  v9 = sub_224DACB08();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9878();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  v20 = sub_224DACB28();
  v91 = *(v20 - 8);
  v92 = v20;
  v21 = *(v91 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v90 = &v81 - v24;
  v97 = sub_224DACB98();
  v100 = *(v97 - 8);
  v25 = *(v100 + 64);
  v26 = MEMORY[0x28223BE20](v97);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v98 = &v81 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v81 - v32;
  MEMORY[0x28223BE20](v31);
  v96 = (&v81 - v34);
  v35 = sub_224DABD68();
  v101 = *(v35 - 8);
  v36 = *(v101 + 64);
  MEMORY[0x28223BE20](v35);
  v99 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 isRemote])
  {
    v38 = sub_224DACC88();
    (*(*(v38 - 8) + 56))(a1, 1, 1, v38);
    v39 = *MEMORY[0x277CF98A8];
    v40 = *(v101 + 104);

    return v40(a2, v39, v35);
  }

  else
  {
    v88 = v35;
    v42 = sub_224CFE6D0(a5);
    if (!v42)
    {
      sub_224DAE1E8();
      v65 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v16 + 16))(v19, &a3[v65], v15);
      sub_224DAE1C8();
      (*(v16 + 8))(v19, v15);
      v66 = sub_224DACC88();
      (*(*(v66 - 8) + 56))(a1, 1, 1, v66);
      return (*(v101 + 104))(a2, *MEMORY[0x277CF98B0], v88);
    }

    v82 = v16;
    v83 = a1;
    v84 = a2;
    v43 = v94;
    v44 = *&v94[OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock];
    v45 = MEMORY[0x28223BE20](v42);
    *(&v81 - 2) = v43;
    *(&v81 - 1) = a3;
    MEMORY[0x28223BE20](v45);
    *(&v81 - 2) = sub_224CFE9CC;
    *(&v81 - 1) = v46;
    os_unfair_lock_lock(v44 + 4);
    sub_224A7D63C();
    os_unfair_lock_unlock(v44 + 4);
    v48 = MEMORY[0x28223BE20](v47);
    *(&v81 - 2) = v43;
    *(&v81 - 1) = a3;
    MEMORY[0x28223BE20](v48);
    *(&v81 - 2) = sub_224CFE9E8;
    *(&v81 - 1) = v49;
    os_unfair_lock_lock(v44 + 4);
    sub_224CFEA4C(v102);
    os_unfair_lock_unlock(v44 + 4);
    if (v102[0])
    {
      v50 = v98;
      sub_224DACC68();
      v51 = v100;
      v52 = *(v100 + 104);
      v53 = v97;
      v52(v28, *MEMORY[0x277CF9BF0], v97);
      v54 = sub_224DACB88();
      v55 = *(v51 + 8);
      v55(v28, v53);
      v94 = v55;
      v55(v50, v53);
      v56 = v96;
      if (v54 & 1) != 0 || (v57 = v98, sub_224DACC68(), v52(v28, *MEMORY[0x277CF9B60], v53), v58 = sub_224DACB88(), v59 = v94, (v94)(v28, v53), v59(v57, v53), (v58))
      {
        v60 = swift_allocObject();
        *(v60 + 16) = 0xD000000000000019;
        *(v60 + 24) = 0x8000000224DC58C0;
        *v56 = v60;
        v52(v56, *MEMORY[0x277CF9B70], v53);
        v82 = sub_224DACBB8();
        v61 = MEMORY[0x277CF98B8];
        v62 = MEMORY[0x277CF9B50];
        v63 = v53;
        v64 = v56;
      }

      else
      {
        sub_224DACC68();
        result = sub_224DACBB8();
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          return result;
        }

        v82 = (result - 1) & ~((result - 1) >> 63);
        v61 = MEMORY[0x277CF98B8];
        v62 = MEMORY[0x277CF9B50];
        v64 = v96;
        v63 = v97;
      }

      v73 = v90;
    }

    else
    {
      sub_224DAE1E8();
      v67 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v68 = v82;
      (*(v82 + 16))(v19, &a3[v67], v15);
      sub_224DAE1C8();
      (*(v68 + 8))(v19, v15);
      sub_224DACC68();
      v69 = v100;
      v70 = v97;
      v71 = (*(v100 + 88))(v33, v97);
      v72 = *MEMORY[0x277CF9B80];
      v73 = v90;
      v74 = v96;
      if (v71 == v72)
      {
        v94 = *(v69 + 8);
        (v94)(v33, v70);
        sub_224DACC68();
      }

      else
      {
        v75 = swift_allocBox();
        sub_224DACC68();
        *v74 = v75;
        (*(v69 + 104))(v74, v72, v70);
        v94 = *(v69 + 8);
        (v94)(v33, v70);
      }

      v82 = sub_224DACBF8();
      v76 = v85;
      sub_224DA9868();
      sub_224DA9768();
      (*(v86 + 8))(v76, v87);
      v61 = MEMORY[0x277CF98B0];
      v62 = MEMORY[0x277CF9B58];
      v64 = v96;
      v63 = v97;
    }

    v78 = v91;
    v77 = v92;
    (*(v91 + 104))(v73, *v62, v92);
    (*(v101 + 104))(v99, *v61, v88);
    (*(v78 + 16))(v89, v73, v77);
    sub_224DACC08();
    (*(v100 + 16))(v98, v64, v63);
    sub_224DACBD8();
    sub_224DACC28();
    v79 = v83;
    sub_224DACC18();
    (*(v78 + 8))(v73, v77);
    (v94)(v64, v63);
    v80 = sub_224DACC88();
    (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
    return (*(v101 + 32))(v84, v99, v88);
  }
}

uint64_t sub_224CFDFB0()
{
  v1 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);

  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts);

  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderReloadConfigurationPolicy()
{
  result = qword_281352310;
  if (!qword_281352310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CFE0D0()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CFE1EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_224DA93E8();
    if (v10)
    {
      v11 = sub_224DA9408();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_224DA93F8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_224DA93E8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_224DA9408();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_224DA93F8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_224CFE41C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_224CFE618(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_224A78024(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_224CFE1EC(v14, a3, a4, &v13);
  v10 = v4;
  sub_224A78024(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *sub_224CFE5D4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_224CFE618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_224DA93E8();
  v11 = result;
  if (result)
  {
    result = sub_224DA9408();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_224DA93F8();
  sub_224CFE1EC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_224CFE6D0(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v16 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v16 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v17 == v10)
  {
  }

  else
  {
    v19 = sub_224DAFD88();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v20 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v20 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v22 == v10)
  {
  }

  else
  {
    v23 = sub_224DAFD88();

    if ((v23 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v24 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v24 != v11;
}

uint64_t sub_224CFEA04(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_224CFEA64(uint64_t a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7140, &unk_224DC00E0);
  result = sub_224DAFB88();
  v6 = result;
  v7 = 0;
  v37 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v31 = result + 64;
  v32 = v2 + 16;
  v33 = result;
  v34 = v2;
  v30 = v2 + 32;
  v15 = v36;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = v37;
      v21 = v34;
      v22 = v35;
      v23 = *(v34 + 72) * v19;
      (*(v34 + 16))(v35, *(v37 + 48) + v23, v15);
      v24 = *(*(v20 + 56) + 8 * v19);
      v25 = *(v24 + *(*v24 + 104));
      *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      v26 = *(v21 + 32);
      v6 = v33;
      result = v26(*(v33 + 6) + v23, v22, v15);
      *(*(v6 + 7) + 8 * v19) = v25;
      v27 = *(v6 + 2);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v6 + 2) = v29;
      result = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224CFECC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v56 - v13;
  v14 = sub_224DA20F8(MEMORY[0x277D84F90]);
  v15 = *(a1 + 64);
  v57 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v56 = (v16 + 63) >> 6;
  v63 = v3 + 16;
  v64 = v3;
  v65 = (v3 + 32);
  v60 = a1;
  v61 = (v3 + 8);

  v19 = 0;
  v58 = v12;
  while (v18)
  {
    v22 = v19;
LABEL_15:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = v26 | (v22 << 6);
    v28 = v60;
    v29 = v64;
    (*(v64 + 16))(v59, *(v60 + 48) + *(v64 + 72) * v27, v2);
    v30 = *(*(v28 + 56) + 8 * v27);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
    v32 = *(v31 + 48);
    v12 = v58;
    (*(v29 + 32))();
    *&v12[v32] = v30;
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);

    v24 = v22;
    v25 = v62;
LABEL_16:
    sub_224D00B28(v12, v25);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
    if ((*(*(v33 - 8) + 48))(v25, 1, v33) == 1)
    {

      return v14;
    }

    v34 = v24;
    v35 = *(v25 + *(v33 + 48));
    v36 = v66;
    v37 = v2;
    (*v65)(v66, v25, v2);
    v38 = [*(v35 + *(*v35 + 104)) controlItems];
    sub_224DAF5D8();
    v39 = sub_224DAF008();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v14;
    v42 = sub_224A683FC(v36);
    v43 = v14[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_31;
    }

    v46 = v41;
    if (v14[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v67;
        if (v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_224B28D44();
        v14 = v67;
        if (v46)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_224B16B90(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_224A683FC(v66);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_33;
      }

      v42 = v47;
      v14 = v67;
      if (v46)
      {
LABEL_4:
        v20 = v14[7];
        v21 = *(v20 + 8 * v42);
        *(v20 + 8 * v42) = v39;

        v2 = v37;
        (*v61)(v66, v37);
        goto LABEL_5;
      }
    }

    v14[(v42 >> 6) + 8] |= 1 << v42;
    v49 = v64;
    v50 = v66;
    (*(v64 + 16))(v14[6] + *(v64 + 72) * v42, v66, v37);
    *(v14[7] + 8 * v42) = v39;
    v2 = v37;

    (*(v49 + 8))(v50, v37);
    v51 = v14[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_32;
    }

    v14[2] = v53;
LABEL_5:
    v19 = v34;
  }

  if (v56 <= v19 + 1)
  {
    v23 = v19 + 1;
  }

  else
  {
    v23 = v56;
  }

  v24 = v23 - 1;
  v25 = v62;
  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v56)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
      (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
      v18 = 0;
      goto LABEL_16;
    }

    v18 = *(v57 + 8 * v22);
    ++v19;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CFF280(id *a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = [*a1 controlIdentity];
  v22 = [v21 extensionIdentity];

  v23 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v22 + v23, v20, &unk_27D6F5060, &qword_224DB5620);

  (*(v4 + 16))(v18, v33, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v24 = *(v8 + 56);
  sub_224A3796C(v20, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v18, &v11[v24], &unk_27D6F5060, &qword_224DB5620);
  v25 = *(v4 + 48);
  if (v25(v11, 1, v3) != 1)
  {
    sub_224A3796C(v11, v34, &unk_27D6F5060, &qword_224DB5620);
    if (v25(&v11[v24], 1, v3) != 1)
    {
      v27 = &v11[v24];
      v28 = v32;
      (*(v4 + 32))(v32, v27, v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      v29 = v34;
      v26 = sub_224DAEDD8();
      v30 = *(v4 + 8);
      v30(v28, v3);
      sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
      v30(v29, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v26 & 1;
    }

    sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v34, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  if (v25(&v11[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v26 = 0;
    return v26 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v26 = 1;
  return v26 & 1;
}

BOOL sub_224CFF76C(uint64_t a1)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v42 - v3;
  v4 = sub_224DAC2B8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = type metadata accessor for ControlHostDescriptorPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v48, v21, &qword_27D6F3380, &qword_224DB3598);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v27 = &qword_27D6F3380;
    v28 = &qword_224DB3598;
  }

  else
  {
    sub_224D00A68(v21, v26);
    sub_224A3796C(&v26[*(v22 + 28)], v10, &unk_27D6F6140, qword_224DBB6B0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v29 = v47;
      sub_224A3311C(v10, &unk_27D6F6140, qword_224DBB6B0);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v29 = v47;
      v30 = [v47 controlIdentity];
      v31 = [v30 extensionIdentity];

      v32 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v33 = v43;
      (*(v12 + 16))(v43, &v31[v32], v11);

      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0);
      LOBYTE(v32) = sub_224DAEDD8();
      v34 = *(v12 + 8);
      v34(v33, v11);
      v34(v17, v11);
      if ((v32 & 1) == 0)
      {
        sub_224D00ACC(v26);
        return 0;
      }
    }

    v21 = v44;
    sub_224A3796C(&v26[*(v22 + 32)], v44, &unk_27D6F63D0, &unk_224DC00D0);
    v36 = v45;
    v35 = v46;
    if ((*(v45 + 48))(v21, 1, v46) != 1)
    {
      v38 = v42;
      (*(v36 + 32))(v42, v21, v35);
      v39 = [v29 controlIdentity];
      v40 = sub_224DAC2A8();
      sub_224AB43D8();
      v41 = sub_224DAF6A8();
      (*(v36 + 8))(v38, v35);
      sub_224D00ACC(v26);

      return (v41 & 1) != 0;
    }

    sub_224D00ACC(v26);
    v27 = &unk_27D6F63D0;
    v28 = &unk_224DC00D0;
  }

  sub_224A3311C(v21, v27, v28);
  return 1;
}

uint64_t sub_224CFFD3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_224A683FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = [*(v5 + *(*v5 + 104)) controlItems];
  sub_224DAF5D8();
  v7 = sub_224DAF008();

  return v7;
}

BOOL sub_224CFFE0C(uint64_t a1)
{
  v101 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v92 = *(v100 - 8);
  v1 = *(v92 + 64);
  MEMORY[0x28223BE20](v100);
  v83 = &v83 - v2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  v3 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v91 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v83 - v14;
  v97 = sub_224DAC2B8();
  v99 = *(v97 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAA428();
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v17);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v93 = &v83 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v83 - v33;
  v35 = type metadata accessor for ControlHostDescriptorPredicate();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v101, v34, &qword_27D6F3380, &qword_224DB3598);
  v40 = *(v36 + 48);
  v101 = v35;
  if (v40(v34, 1, v35) == 1)
  {
    v41 = &qword_27D6F3380;
    v42 = &qword_224DB3598;
    v43 = v34;
LABEL_24:
    sub_224A3311C(v43, v41, v42);
    return 1;
  }

  sub_224D00A68(v34, v39);
  v85 = v39;
  sub_224A3796C(v39, v23, &qword_27D6F3390, &qword_224DB35B8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_224A3311C(v23, &qword_27D6F3390, &qword_224DB35B8);
    v45 = v97;
    v44 = v98;
    v46 = v96;
  }

  else
  {
    v47 = v93;
    (*(v25 + 32))(v93, v23, v24);
    v46 = v96;
    sub_224DAA238();
    sub_224A33088(&qword_27D6F52C0, &qword_27D6F30E0, &unk_224DB2AD0);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v45 = v97;
    if (v104 == v102 && v105 == v103)
    {
      v48 = *(v25 + 8);
      v48(v29, v24);
      v48(v47, v24);

      v44 = v98;
    }

    else
    {
      v49 = sub_224DAFD88();
      v50 = *(v25 + 8);
      v50(v29, v24);
      v50(v47, v24);

      v44 = v98;
      if ((v49 & 1) == 0)
      {
        v68 = v85;
        goto LABEL_34;
      }
    }
  }

  v51 = v100;
  v52 = v101;
  v53 = v85;
  v54 = v85[*(v101 + 24)];
  v55 = v99;
  if (v54 == 3)
  {
    goto LABEL_16;
  }

  sub_224DAA1F8();
  if (!v54)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v54 != 1)
  {
    if (!v56)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v56)
  {

LABEL_26:
    v68 = v53;
LABEL_34:
    sub_224D00ACC(v68);
    return 0;
  }

LABEL_16:
  if (*(v53 + *(v52 + 20)) > 1u)
  {
    if (*(v53 + *(v52 + 20)) != 2)
    {
      goto LABEL_22;
    }

    v59 = *(*v46 + 112);
    v58 = MEMORY[0x277CFA038];
  }

  else
  {
    if (!*(v53 + *(v52 + 20)))
    {
      goto LABEL_22;
    }

    v57 = *(*v46 + 112);
    v58 = MEMORY[0x277CFA040];
  }

  v60 = v88;
  v61 = v89;
  v62 = v45;
  v63 = v90;
  (*(v89 + 104))(v88, *v58, v90);
  sub_224C16D98();
  sub_224DAEFA8();
  sub_224DAEFA8();
  v64 = v60;
  v65 = v63;
  v45 = v62;
  v55 = v99;
  v51 = v100;
  (*(v61 + 8))(v64, v65);
  v52 = v101;
  if (v104 != v102)
  {
    goto LABEL_26;
  }

LABEL_22:
  v66 = v94;
  sub_224A3796C(v53 + *(v52 + 32), v94, &unk_27D6F63D0, &unk_224DC00D0);
  if ((*(v55 + 48))(v66, 1, v45) == 1)
  {
    sub_224D00ACC(v53);
    v41 = &unk_27D6F63D0;
    v42 = &unk_224DC00D0;
    v43 = v66;
    goto LABEL_24;
  }

  (*(v55 + 32))(v95, v66, v45);
  v69 = v91;
  sub_224DAC288();
  v70 = v92;
  (*(v92 + 16))(v44, v46 + qword_281365418, v51);
  (*(v70 + 56))(v44, 0, 1, v51);
  v71 = *(v86 + 48);
  v72 = v55;
  v73 = v45;
  v74 = v87;
  sub_224A3796C(v69, v87, &qword_27D6F56C0, &unk_224DB3580);
  v101 = v71;
  sub_224A3796C(v44, v74 + v71, &qword_27D6F56C0, &unk_224DB3580);
  v75 = v44;
  v76 = *(v70 + 48);
  if (v76(v74, 1, v51) == 1)
  {
    sub_224A3311C(v75, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v69, &qword_27D6F56C0, &unk_224DB3580);
    (*(v72 + 8))(v95, v73);
    sub_224D00ACC(v85);
    if (v76(v74 + v101, 1, v51) == 1)
    {
      v41 = &qword_27D6F56C0;
      v42 = &unk_224DB3580;
      v43 = v74;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v77 = v84;
  sub_224A3796C(v74, v84, &qword_27D6F56C0, &unk_224DB3580);
  v78 = v101;
  if (v76(v74 + v101, 1, v51) == 1)
  {
    sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
    (*(v72 + 8))(v95, v73);
    sub_224D00ACC(v85);
    (*(v92 + 8))(v77, v51);
LABEL_32:
    sub_224A3311C(v74, &qword_27D6F33C8, &qword_224DB3600);
    return 0;
  }

  v79 = v92;
  v80 = v83;
  (*(v92 + 32))(v83, v74 + v78, v51);
  sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
  v81 = sub_224DAEDD8();
  v82 = *(v79 + 8);
  v82(v80, v51);
  sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
  sub_224A3311C(v91, &qword_27D6F56C0, &unk_224DB3580);
  (*(v72 + 8))(v95, v73);
  sub_224D00ACC(v85);
  v82(v77, v51);
  sub_224A3311C(v74, &qword_27D6F56C0, &unk_224DB3580);
  return (v81 & 1) != 0;
}

uint64_t type metadata accessor for ControlHostDescriptorPredicate()
{
  result = qword_281353B08;
  if (!qword_281353B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D00A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlHostDescriptorPredicate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D00ACC(uint64_t a1)
{
  v2 = type metadata accessor for ControlHostDescriptorPredicate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D00B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224D00BC0()
{
  sub_224C16F84(319, &qword_281351988, &qword_27D6F30E0, &unk_224DB2AD0);
  if (v0 <= 0x3F)
  {
    sub_224C1702C(319, &qword_281359058);
    if (v1 <= 0x3F)
    {
      sub_224C1702C(319, &qword_28135C2E8);
      if (v2 <= 0x3F)
      {
        sub_224C16F84(319, &qword_2813518B8, &unk_27D6F3920, &qword_224DB35B0);
        if (v3 <= 0x3F)
        {
          sub_224D00CDC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_224D00CDC()
{
  if (!qword_281350DF8)
  {
    sub_224DAC2B8();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281350DF8);
    }
  }
}

uint64_t sub_224D00D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_224A3796C(a3, v24 - v10, &unk_27D6F4620, &qword_224DB34D0);
  v12 = sub_224DAF128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_224A3311C(v11, &unk_27D6F4620, &qword_224DB34D0);
  }

  else
  {
    sub_224DAF118();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_224DAF0C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_224DAEE48() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_224D00FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_224DAEFF8();
    if (a2)
    {
LABEL_3:
      v6 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t *sub_224D0107C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v1 = v0[52];

  return v0;
}

uint64_t sub_224D010EC()
{
  sub_224D0107C();

  return swift_deallocClassInstance();
}

uint64_t sub_224D01144(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v22.receiver = v1;
  v22.super_class = type metadata accessor for ControlsServer();
  v12 = objc_msgSendSuper2(&v22, sel_init);
  v20[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224D0F108;
  *(v13 + 24) = v20;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_159;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];

  _Block_release(v14);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v19 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener];
    *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener] = v17;

    return v16;
  }

  return result;
}

id sub_224D013C4(void *a1, uint64_t a2)
{
  sub_224DAA368();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA318();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224D01470()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ControlsServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_224D015B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365060);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v13 = 136446210;
    v15 = sub_224DAA318();
    v17 = sub_224A33F74(v15, v16, v36);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_224A2F000, v11, v12, "%{public}s begin listening for connections", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener) activate];
  v30 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__services);
  sub_224A3317C(v30 + 96, v36);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v18 = sub_224DAD178();
  v33 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue);
  v19 = v33;
  v34 = v18;
  v20 = sub_224DAF358();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030);
  v22 = v32;
  sub_224DAB488();

  (*(v31 + 8))(v9, v22);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v23 = v30;
  sub_224A3317C(v30 + 16, v36);
  v25 = v37;
  v24 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v35[0] = (*(*(v24 + 8) + 16))(v25);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v36);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v23 + 56, v36);
  v26 = v37;
  v27 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v35[0] = (*(v27 + 16))(v26, v27);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v36);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224D01C34()
{
  v0 = sub_224DAB728();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_224DAE4F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6 + 24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_224A3317C(*(result + OBJC_IVAR____TtC10ChronoCore14ControlsServer__services) + 96, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_224DAD168();
    sub_224DAE4D8();
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v10 = *&v9[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
    v11 = *(v10 + 16);

    os_unfair_lock_lock(v11);
    sub_224D020D0(v9, v7);
    os_unfair_lock_unlock(*(v10 + 16));

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_224D020D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v97[12] = *MEMORY[0x277D85DE8];
  v90 = sub_224DAB7B8();
  v6 = *(v90 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DAB848();
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v91 = v9;
  v92 = v6;
  v93 = a2;
  if ((v13 & 0xC000000000000001) == 0)
  {
    v34 = *(v13 + 32);
    v35 = v34 & 0x3F;
    v22 = ((1 << v34) + 63) >> 6;
    v18 = 8 * v22;

    if (v35 > 0xD)
    {
      goto LABEL_41;
    }

LABEL_23:
    MEMORY[0x28223BE20](v36);
    bzero(&v78 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
    v37 = 0;
    v38 = 0;
    v39 = 1 << *(v13 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v13 + 56);
    v42 = (v39 + 63) >> 6;
    v43 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment;
    while (1)
    {
      if (!v41)
      {
        v46 = v38;
        while (1)
        {
          v38 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_40;
          }

          if (v38 >= v42)
          {
            goto LABEL_37;
          }

          v47 = *(v13 + 56 + 8 * v38);
          ++v46;
          if (v47)
          {
            v41 = (v47 - 1) & v47;
            v45 = __clz(__rbit64(v47)) | (v38 << 6);
            goto LABEL_33;
          }
        }
      }

      v44 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v45 = v44 | (v38 << 6);
LABEL_33:
      if (*(*(*(v13 + 48) + 8 * v45) + v43) == 1)
      {
        *(&v78 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v45;
        if (__OFADD__(v37++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v14 = sub_224B05B34((&v78 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)), v22, v37, v13);
    v33 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v86 = v2;
  v14 = MEMORY[0x277D84FA0];
  aBlock[0] = MEMORY[0x277D84FA0];

  v13 = sub_224DAF7E8();
  v15 = sub_224DAF878();
  if (!v15)
  {
LABEL_20:

    v3 = v86;
    v33 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    if (!*(v14 + 16))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v16 = v15;
  type metadata accessor for ControlsClient();
  v17 = v16;
  v18 = MEMORY[0x277D84F68];
  v3 = &unk_27D6F6000;
  while (1)
  {
    v94 = v17;
    swift_dynamicCast();
    v19 = v95;
    if (v95[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment])
    {
      break;
    }

LABEL_5:
    v17 = sub_224DAF878();
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v20 = *(v14 + 16);
  if (*(v14 + 24) <= v20)
  {
    sub_224AE15E8(v20 + 1);
  }

  v14 = aBlock[0];
  v21 = *(aBlock[0] + 40);
  v22 = v19;
  v23 = sub_224DAF698();
  v24 = v14 + 56;
  v25 = -1 << *(v14 + 32);
  v26 = v23 & ~v25;
  v27 = v26 >> 6;
  if (((-1 << v26) & ~*(v14 + 56 + 8 * (v26 >> 6))) != 0)
  {
    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 56 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v14 + 48) + 8 * v28) = v19;
    ++*(v14 + 16);
    goto LABEL_5;
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
    v32 = *(v24 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v49 = swift_slowAlloc();
  v50 = sub_224D0A07C(v49, v22, v13, sub_224D02AF4, 0);
  if (v3)
  {

    result = MEMORY[0x22AA5EED0](v49, -1, -1);
    __break(1u);
  }

  else
  {
    v14 = v50;
    v3 = 0;

    MEMORY[0x22AA5EED0](v49, -1, -1);
    v33 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) == 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (!sub_224DAF838())
    {
LABEL_47:

      goto LABEL_66;
    }

LABEL_46:
    sub_224DAE4F8();
    sub_224D0EE58(&qword_281350C60, MEMORY[0x277CE3AB8]);
    v51 = sub_224DAED78();
    if (v3)
    {
      goto LABEL_47;
    }

    v84 = v52;
    v85 = v51;
    v86 = 0;
    if (v33)
    {
      sub_224DAF7E8();
      type metadata accessor for ControlsClient();
      sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient);
      sub_224DAF1F8();
      v14 = v97[7];
      v54 = v97[8];
      v55 = v97[9];
      v56 = v97[10];
      v57 = v97[11];
    }

    else
    {
      v56 = 0;
      v58 = -1 << *(v14 + 32);
      v54 = v14 + 56;
      v55 = ~v58;
      v59 = -v58;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v57 = v60 & *(v14 + 56);
    }

    v78 = v55;
    v61 = (v55 + 64) >> 6;
    v81 = v97;
    v80 = (v92 + 8);
    v79 = (v91 + 8);
    v83 = v54;
    v82 = v61;
    if (v14 < 0)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v62 = v56;
      v63 = v57;
      v64 = v56;
      if (!v57)
      {
        break;
      }

LABEL_59:
      v65 = (v63 - 1) & v63;
      v66 = *(*(v14 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v66)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v68 = swift_allocObject();
        v69 = v85;
        v70 = v84;
        *(v68 + 16) = v85;
        *(v68 + 24) = v70;
        v93 = *&v66[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v71 = swift_allocObject();
        v71[2] = v66;
        v71[3] = sub_224D0F048;
        v71[4] = v68;
        v97[2] = sub_224D0F24C;
        v97[3] = v71;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v97[0] = sub_224A39F40;
        v97[1] = &block_descriptor_153;
        v72 = _Block_copy(aBlock);
        sub_224A77FD0(v69, v70);
        v92 = v66;

        v73 = v87;
        sub_224DAB7E8();
        v95 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198]);
        v91 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v74 = v89;
        v75 = v90;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v73, v74, v72);
        v76 = v72;
        v61 = v82;
        _Block_release(v76);
        v54 = v83;

        (*v80)(v74, v75);
        (*v79)(v73, v88);

        v56 = v64;
        v57 = v91;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_61:
        v67 = sub_224DAF878();
        if (v67)
        {
          v95 = v67;
          type metadata accessor for ControlsClient();
          swift_dynamicCast();
          v66 = aBlock[0];
          v64 = v56;
          v65 = v57;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_65;
      }
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
      }

      if (v64 >= v61)
      {
        break;
      }

      v63 = *(v54 + 8 * v64);
      ++v62;
      if (v63)
      {
        goto LABEL_59;
      }
    }

LABEL_65:
    sub_224A3B7E4();
    result = sub_224A78024(v85, v84);
LABEL_66:
    v77 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_224D02B08(unint64_t *a1)
{
  v2 = sub_224DAB7B8();
  v56 = *(v2 - 8);
  v3 = *(v56 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v55 = *(v6 - 8);
  v7 = *(v55 + 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14 >> 62)
    {
      while (1)
      {
        if (!sub_224DAF838())
        {
          goto LABEL_24;
        }

LABEL_4:

        sub_224DAA458();
        sub_224D0EE58(&qword_281351818, MEMORY[0x277CFA068]);
        v17 = sub_224DAED78();
        v53 = v18;
        v54 = v17;
        (*(v10 + 8))(v13, v9);
        v19 = *(*&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock] + 16);
        v43 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];

        os_unfair_lock_lock(v19);
        v20 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
        swift_beginAccess();
        v21 = *&v16[v20];
        v52 = v2;
        v51 = v5;
        v44 = v16;
        if ((v21 & 0xC000000000000001) != 0)
        {

          sub_224DAF7E8();
          type metadata accessor for ControlsClient();
          sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient);
          sub_224DAF1F8();
          v21 = v60[11];
          v2 = v60[12];
          v13 = v60[13];
          v10 = v60[14];
          v9 = v60[15];
        }

        else
        {
          v22 = -1 << *(v21 + 32);
          v2 = v21 + 56;
          v13 = ~v22;
          v23 = -v22;
          v24 = v23 < 64 ? ~(-1 << v23) : -1;
          v9 = v24 & *(v21 + 56);

          v10 = 0;
        }

        v42 = v13;
        v25 = (v13 + 64) >> 6;
        v48 = v60;
        v47 = (v56 + 8);
        v46 = (v55 + 8);
        v50 = v21;
        v49 = v25;
        v45 = v2;
        if (v21 < 0)
        {
          break;
        }

LABEL_11:
        v26 = v10;
        v27 = v9;
        v28 = v10;
        if (v9)
        {
LABEL_15:
          v5 = ((v27 - 1) & v27);
          v29 = *(*(v21 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
          if (v29)
          {
            goto LABEL_19;
          }

LABEL_21:
          sub_224A3B7E4();
          os_unfair_lock_unlock(*(v43 + 16));

          sub_224A78024(v54, v53);

          return;
        }

        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            goto LABEL_21;
          }

          v27 = *(v2 + 8 * v28);
          ++v26;
          if (v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      while (1)
      {
        v30 = sub_224DAF878();
        if (!v30)
        {
          goto LABEL_21;
        }

        v58 = v30;
        type metadata accessor for ControlsClient();
        swift_dynamicCast();
        v29 = aBlock[0];
        v28 = v10;
        v5 = v9;
        if (!aBlock[0])
        {
          goto LABEL_21;
        }

LABEL_19:
        v31 = swift_allocObject();
        v32 = v54;
        v33 = v53;
        *(v31 + 16) = v54;
        *(v31 + 24) = v33;
        v56 = *&v29[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v34 = swift_allocObject();
        v34[2] = v29;
        v34[3] = sub_224D0F004;
        v34[4] = v31;
        v60[2] = sub_224D0F24C;
        v60[3] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v60[0] = sub_224A39F40;
        v60[1] = &block_descriptor_143;
        v35 = _Block_copy(aBlock);
        sub_224A77FD0(v32, v33);
        v55 = v29;

        v36 = v57;
        sub_224DAB7E8();
        v58 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v37 = v6;
        v38 = v51;
        v16 = v52;
        sub_224DAF788();
        v13 = v56;
        MEMORY[0x22AA5D760](0, v36, v38, v35);
        v39 = v35;
        v25 = v49;
        _Block_release(v39);

        v40 = v38;
        v6 = v37;
        v21 = v50;
        (*v47)(v40, v16);
        v41 = v36;
        v2 = v45;
        (*v46)(v41, v6);

        v10 = v28;
        v9 = v5;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:
  }
}

void sub_224D033F8(unint64_t *a1)
{
  v2 = sub_224DAB7B8();
  v56 = *(v2 - 8);
  v3 = *(v56 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v55 = *(v6 - 8);
  v7 = *(v55 + 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14 >> 62)
    {
      while (1)
      {
        if (!sub_224DAF838())
        {
          goto LABEL_24;
        }

LABEL_4:

        sub_224DAA458();
        sub_224D0EE58(&qword_281351818, MEMORY[0x277CFA068]);
        v17 = sub_224DAED78();
        v53 = v18;
        v54 = v17;
        (*(v10 + 8))(v13, v9);
        v19 = *(*&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock] + 16);
        v43 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];

        os_unfair_lock_lock(v19);
        v20 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
        swift_beginAccess();
        v21 = *&v16[v20];
        v52 = v2;
        v51 = v5;
        v44 = v16;
        if ((v21 & 0xC000000000000001) != 0)
        {

          sub_224DAF7E8();
          type metadata accessor for ControlsClient();
          sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient);
          sub_224DAF1F8();
          v21 = v60[11];
          v2 = v60[12];
          v13 = v60[13];
          v10 = v60[14];
          v9 = v60[15];
        }

        else
        {
          v22 = -1 << *(v21 + 32);
          v2 = v21 + 56;
          v13 = ~v22;
          v23 = -v22;
          v24 = v23 < 64 ? ~(-1 << v23) : -1;
          v9 = v24 & *(v21 + 56);

          v10 = 0;
        }

        v42 = v13;
        v25 = (v13 + 64) >> 6;
        v48 = v60;
        v47 = (v56 + 8);
        v46 = (v55 + 8);
        v50 = v21;
        v49 = v25;
        v45 = v2;
        if (v21 < 0)
        {
          break;
        }

LABEL_11:
        v26 = v10;
        v27 = v9;
        v28 = v10;
        if (v9)
        {
LABEL_15:
          v5 = ((v27 - 1) & v27);
          v29 = *(*(v21 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
          if (v29)
          {
            goto LABEL_19;
          }

LABEL_21:
          sub_224A3B7E4();
          os_unfair_lock_unlock(*(v43 + 16));

          sub_224A78024(v54, v53);

          return;
        }

        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            goto LABEL_21;
          }

          v27 = *(v2 + 8 * v28);
          ++v26;
          if (v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      while (1)
      {
        v30 = sub_224DAF878();
        if (!v30)
        {
          goto LABEL_21;
        }

        v58 = v30;
        type metadata accessor for ControlsClient();
        swift_dynamicCast();
        v29 = aBlock[0];
        v28 = v10;
        v5 = v9;
        if (!aBlock[0])
        {
          goto LABEL_21;
        }

LABEL_19:
        v31 = swift_allocObject();
        v32 = v54;
        v33 = v53;
        *(v31 + 16) = v54;
        *(v31 + 24) = v33;
        v56 = *&v29[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v34 = swift_allocObject();
        v34[2] = v29;
        v34[3] = sub_224D0EFEC;
        v34[4] = v31;
        v60[2] = sub_224D0EFF8;
        v60[3] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v60[0] = sub_224A39F40;
        v60[1] = &block_descriptor_133_0;
        v35 = _Block_copy(aBlock);
        sub_224A77FD0(v32, v33);
        v55 = v29;

        v36 = v57;
        sub_224DAB7E8();
        v58 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v37 = v6;
        v38 = v51;
        v16 = v52;
        sub_224DAF788();
        v13 = v56;
        MEMORY[0x22AA5D760](0, v36, v38, v35);
        v39 = v35;
        v25 = v49;
        _Block_release(v39);

        v40 = v38;
        v6 = v37;
        v21 = v50;
        (*v47)(v40, v16);
        v41 = v36;
        v2 = v45;
        (*v46)(v41, v6);

        v10 = v28;
        v9 = v5;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:
  }
}

void sub_224D03D60(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA318();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA328();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA338();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA358();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224D0EFBC;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_105_0;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D0EFC4;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_113_0;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D0EFCC;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_121;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

void sub_224D04184(void *a1)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365060);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v21);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono controls service connection from %{public}s activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue];
      BSDispatchQueueAssert();
      v20 = *&v18[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
      BSDispatchQueueAssert();

      v16 = v18;
    }
  }
}

void sub_224D043CC(void *a1)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365060);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono controls service connection from %{public}s interrupted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  [v3 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue];
      BSDispatchQueueAssert();
      sub_224D05080();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02F4C(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

void sub_224D04684(void *a1)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365060);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v8 = [v3 remoteProcess];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 description];

      v11 = sub_224DAEE18();
      v13 = v12;
    }

    else
    {
      v13 = 0x8000000224DC7B00;
      v11 = 0xD00000000000001ALL;
    }

    v14 = sub_224A33F74(v11, v13, &v23);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_224A2F000, v4, v5, "Chrono controls service connection from %{public}s invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue];
      BSDispatchQueueAssert();
      sub_224D05080();
      v20 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02F4C(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));

      v16 = v18;
    }
  }
}

uint64_t sub_224D049C0(char a1)
{
  v3 = sub_224DAB728();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = sub_224DAE4F8();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v29);
  result = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment) == 1 && (a1 & 1) == 0)
  {
    if (qword_281351658 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281365060);
    v12 = v1;
    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v10;
      v17 = v16;
      *v15 = 138543362;
      v18 = *&v12[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__processHandle];
      *(v15 + 4) = v18;
      *v16 = v18;
      v19 = v18;
      _os_log_impl(&dword_224A2F000, v13, v14, "Sending initial system environment to client: %{public}@", v15, 0xCu);
      sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
      v10 = v28;
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    sub_224A3317C(*&v12[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 96, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_224DAD168();
    sub_224DAE4D8();
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_224D0EE58(&qword_281350C60, MEMORY[0x277CE3AB8]);
    v20 = sub_224DAED78();
    v22 = v21;
    v23 = sub_224D04FA8();
    if (v23)
    {
      v24 = v23;
      v25 = v20;
      v26 = sub_224DA96B8();
      [v24 systemEnvironmentDidChange_];
      sub_224A78024(v25, v22);
      swift_unknownObjectRelease();

      return (*(v5 + 8))(v10, v29);
    }

    else
    {
      (*(v5 + 8))(v10, v29);
      return sub_224A78024(v20, v22);
    }
  }

  return result;
}

uint64_t sub_224D04FA8()
{
  if ([*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F65E0, &unk_224DC02C0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_224A3311C(v5, &qword_27D6F4760, &unk_224DB3680);
    return 0;
  }
}

uint64_t sub_224D05080()
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v1 = *(v66 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v66);
  v4 = v64 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlHostIdentities;
  swift_beginAccess();
  v68 = v0;
  v7 = *(v0 + v6);
  v8 = v7 + 56;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  v12 = (v9 + 63) >> 6;
  v64[1] = v1 + 16;
  v65 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services;
  v64[0] = v1 + 8;
  v67 = v7;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v66;
      (*(v1 + 16))(v4, *(v67 + 48) + *(v1 + 72) * (v16 | (v15 << 6)), v66);
      sub_224A3317C(*(v68 + v65) + 216, v72);
      v19 = v73;
      v18 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      (*(*(v18 + 8) + 72))(v4, v19);
      (*(v1 + 8))(v4, v17);
      result = __swift_destroy_boxed_opaque_existential_1(v72);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v67 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions;
  v20 = *(v68 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions);
  if ((v20 & 0xC000000000000001) != 0)
  {
    if (v20 < 0)
    {
      v21 = *(v68 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions);
    }

    v22 = *(v68 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions);

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D0EE58(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v24 = v72[0];
    v23 = v72[1];
    v25 = v72[2];
    v26 = v73;
    v27 = v74;
  }

  else
  {
    v28 = -1 << *(v20 + 32);
    v23 = v20 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v20 + 56);
    v31 = *(v68 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions);
    result = swift_bridgeObjectRetain_n();
    v26 = 0;
    v24 = v20;
  }

  if (v24 < 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v32 = v26;
    v33 = v27;
    v34 = v26;
    if (!v27)
    {
      break;
    }

LABEL_24:
    v35 = (v33 - 1) & v33;
    v36 = *(*(v24 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

    if (!v36)
    {
LABEL_30:
      sub_224A3B7E4();

      v38 = v68;
      v39 = *(v68 + v67);
      *(v68 + v67) = MEMORY[0x277D84FA0];

      v40 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
      swift_beginAccess();
      v67 = v40;
      v41 = *(v38 + v40);
      if ((v41 & 0xC000000000000001) != 0)
      {
        if (v41 < 0)
        {
          v42 = *(v38 + v40);
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v47 = -1 << *(v41 + 32);
        v44 = ~v47;
        v43 = v41 + 64;
        v48 = -v47;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v45 = v49 & *(v41 + 64);
        v46 = v41;
      }

      result = swift_bridgeObjectRetain_n();
      v50 = 0;
      v66 = v44;
      v51 = (v44 + 64) >> 6;
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v52 = v50;
        v53 = v45;
        v54 = v50;
        if (!v45)
        {
          break;
        }

LABEL_43:
        v55 = (v53 - 1) & v53;
        v56 = (v54 << 9) | (8 * __clz(__rbit64(v53)));
        v57 = *(*(v46 + 48) + v56);
        v58 = *(*(v46 + 56) + v56);

        if (!v57)
        {
LABEL_49:
          sub_224A3B7E4();

          v63 = *(v68 + v67);
          *(v68 + v67) = MEMORY[0x277D84F98];
        }

        while (1)
        {
          sub_224B35900();

          v50 = v54;
          v45 = v55;
          if ((v46 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_45:
          v59 = sub_224DAFB18();
          if (v59)
          {
            v61 = v60;
            v69 = v59;
            sub_224DAA0F8();
            swift_dynamicCast();
            v62 = v70;
            v69 = v61;
            type metadata accessor for ControlSession();
            swift_dynamicCast();
            v54 = v50;
            v55 = v45;
            if (v62)
            {
              continue;
            }
          }

          goto LABEL_49;
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_52;
        }

        if (v54 >= v51)
        {
          goto LABEL_49;
        }

        v53 = *(v43 + 8 * v54);
        ++v52;
        if (v53)
        {
          goto LABEL_43;
        }
      }
    }

    while (1)
    {
      sub_224DAB328();

      v26 = v34;
      v27 = v35;
      if ((v24 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_26:
      v37 = sub_224DAF878();
      if (v37)
      {
        v70 = v37;
        sub_224DAB338();
        swift_dynamicCast();
        v34 = v26;
        v35 = v27;
        if (v71)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= ((v25 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v33 = *(v23 + 8 * v34);
    ++v32;
    if (v33)
    {
      goto LABEL_24;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_224D0568C(uint64_t a1, void (*a2)())
{
  if ([*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    return sub_224A3311C(v6, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F65E0, &unk_224DC02C0);
  result = swift_dynamicCast();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_224D057B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224D058FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224D0591C, 0, 0);
}

uint64_t sub_224D0591C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0[2] + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 16), *(*(v0[2] + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 40));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_224D059D0;
  v3 = v0[3];

  return sub_224C7AB6C(v3);
}

uint64_t sub_224D059D0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_224D05BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v30 = a5;
  v35 = a4;
  v33 = a3;
  v36 = sub_224DACB98();
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v31 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v28 - v12;
  v14 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  v29 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services);
  sub_224A3317C(v29 + 376, v42);
  v37 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);

  sub_224DA9FF8();
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAA1D8();
  sub_224DAC6C8();
  (*(v10 + 8))(v13, v38);
  if (v41)
  {
    sub_224A36F98(&v40, v45);
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_224A3317C(v29 + 16, v42);
    v15 = __swift_project_boxed_opaque_existential_1(v42, v43);
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    v16 = sub_224DAE338();
    v17 = swift_allocObject();
    v18 = [objc_opt_self() currentContext];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 remoteProcess];
    }

    else
    {
      v20 = 0;
    }

    v22 = v30;
    v17[2] = v20;
    v17[3] = v22;
    v17[4] = v32;
    v23 = v31;
    *v31 = v17;
    v24 = v34;
    v25 = v36;
    (*(v34 + 104))(v23, *MEMORY[0x277CF9B90], v36);
    v26 = *v15;

    sub_224C80344(v16, v33, v35, v23);

    (*(v24 + 8))(v23, v25);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v21 = v45;
  }

  else
  {
    sub_224A3311C(&v40, &unk_27D6F4700, &unk_224DB3A10);
    v21 = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_224D06134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v72 = a4;
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = (&v66 - v7);
  v8 = sub_224DAA428();
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v66 - v28;
  v30 = *&v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  v31 = v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v31);

  sub_224DA9FF8();
  v80 = v20;
  v32 = *(v20 + 16);
  v32(v27, v29, v19);
  v76 = v18;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281365060);
  v32(v24, v29, v19);
  v34 = v4;
  v35 = sub_224DAB228();
  v36 = sub_224DAF2A8();

  v37 = os_log_type_enabled(v35, v36);
  v73 = v29;
  v74 = v19;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v82[0] = v39;
    *v38 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v40 = sub_224DAFD28();
    v67 = v8;
    v42 = v41;
    v43 = *(v80 + 8);
    v43(v24, v19);
    v44 = sub_224A33F74(v40, v42, v82);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2082;
    v45 = [*&v34[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v46 = [v45 description];

    v47 = sub_224DAEE18();
    v49 = v48;

    v50 = sub_224A33F74(v47, v49, v82);
    v8 = v67;

    *(v38 + 14) = v50;
    _os_log_impl(&dword_224A2F000, v35, v36, "Control configuration changed for control host with identifier %{public}s from process %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  else
  {

    v43 = *(v80 + 8);
    v43(v24, v19);
  }

  [v72 unsignedIntegerValue];
  v51 = v75;
  sub_224DAA418();
  v52 = v79;
  if ((*(v79 + 48))(v51, 1, v8) == 1)
  {
    (*(v77 + 8))(v76, v78);
    v43(v73, v74);
    return sub_224A3311C(v51, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v54 = v71;
    v55 = v34;
    v56 = v8;
    (*(v52 + 32))(v71, v51, v8);
    sub_224A3317C(*&v55[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v82);
    v57 = v83;
    v58 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v81 = v70;
    v59 = v76;
    (*(*(v58 + 8) + 56))(&v81, v54, v76, v57);
    __swift_destroy_boxed_opaque_existential_1(v82);
    v61 = v77;
    v60 = v78;
    v62 = *(v77 + 16);
    v75 = v43;
    v63 = v68;
    v62(v68, v59, v78);
    swift_beginAccess();
    v64 = v69;
    sub_224A67790(v69, v63);
    v65 = *(v61 + 8);
    v65(v64, v60);
    swift_endAccess();
    (*(v52 + 8))(v54, v56);
    v65(v59, v60);
    return v75(v73, v74);
  }
}

uint64_t sub_224D06938(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v55 - v6;
  v7 = sub_224DAA428();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v25 = *&v3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  v26 = v3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v26);

  sub_224DA9FF8();
  v65 = v15;
  v27 = *(v15 + 16);
  v27(v22, v24, v14);
  v59 = v13;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281365060);
  v27(v19, v24, v14);
  v29 = v3;
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();

  v32 = os_log_type_enabled(v30, v31);
  v56 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v66[0] = v55;
    *v33 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v34 = sub_224DAFD28();
    v36 = v35;
    v37 = *(v65 + 8);
    v37(v19, v14);
    v38 = sub_224A33F74(v34, v36, v66);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2082;
    v39 = [*&v29[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v40 = [v39 description];

    v41 = sub_224DAEE18();
    v43 = v42;

    v44 = sub_224A33F74(v41, v43, v66);

    *(v33 + 14) = v44;
    _os_log_impl(&dword_224A2F000, v30, v31, "Control activation state changed for control host with identifier %{public}s from process %{public}s", v33, 0x16u);
    v45 = v55;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v45, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {

    v37 = *(v65 + 8);
    v37(v19, v14);
  }

  v46 = v62;
  [v58 unsignedIntegerValue];
  sub_224DAA418();
  v48 = v63;
  v47 = v64;
  if ((*(v63 + 48))(v46, 1, v64) == 1)
  {
    (*(v60 + 8))(v59, v61);
    v37(v24, v14);
    return sub_224A3311C(v46, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v50 = v57;
    (*(v48 + 32))(v57, v46, v47);
    sub_224A3317C(*&v56[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v66);
    v51 = v67;
    v52 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v53 = *(*(v52 + 8) + 64);
    v54 = v59;
    v53(v50, v59, v51);
    (*(v48 + 8))(v50, v47);
    (*(v60 + 8))(v54, v61);
    v37(v24, v14);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }
}

uint64_t sub_224D0703C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v52 - v3;
  v58 = sub_224DAA428();
  v56 = *(v58 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  v22 = v0[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v0[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v22);

  sub_224DA9FF8();
  v23 = v11[2];
  v23(v18, v20, v10);
  v57 = v9;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281365060);
  v54 = v20;
  v23(v15, v20, v10);
  v25 = v0;
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v28 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v29 = sub_224DAFD28();
    v31 = v30;
    v53 = v10;
    v32 = v11[1];
    v32(v15, v53);
    v33 = sub_224A33F74(v29, v31, v63);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    v34 = [*&v25[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v35 = [v34 description];

    v36 = sub_224DAEE18();
    v38 = v37;

    v39 = sub_224A33F74(v36, v38, v63);
    v40 = v32;
    v10 = v53;

    *(v28 + 14) = v39;
    _os_log_impl(&dword_224A2F000, v26, v27, "Removing control host with identifier %{public}s for process %{public}s", v28, 0x16u);
    v41 = v52;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  else
  {

    v42 = v15;
    v40 = v11[1];
    v40(v42, v10);
  }

  sub_224A3317C(*&v25[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v63);
  v43 = v64;
  v44 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v62 = 0;
  v46 = v55;
  v45 = v56;
  v47 = v58;
  (*(v56 + 104))(v55, *MEMORY[0x277CFA038], v58);
  v48 = *(*(v44 + 8) + 56);
  v49 = v57;
  v48(&v62, v46, v57, v43);
  (*(v45 + 8))(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(v63);
  swift_beginAccess();
  v50 = v61;
  sub_224B024C8(v49, v61);
  sub_224A3311C(v50, &qword_27D6F56C0, &unk_224DB3580);
  swift_endAccess();
  (*(v59 + 8))(v49, v60);
  return (v40)(v54, v10);
}

uint64_t sub_224D07718()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8]);
  sub_224DAF198();
  v2 = v17[0];
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281365060);
  v4 = v0;

  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_224A33F74(*&v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v17);
    *(v7 + 12) = 2082;
    sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8]);
    v9 = sub_224DAFD28();
    v11 = sub_224A33F74(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_224A2F000, v5, v6, "[%{public}s] Unsubscribe from %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v8, -1, -1);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v13 = *&v4[v12];

  v14 = sub_224D24334(v2, v13);

  if (v14)
  {
    sub_224B35900();
  }

  swift_beginAccess();

  sub_224B0E4C4(v15);
  swift_endAccess();
}

uint64_t sub_224D07BC8(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v62 = a3;
  v60 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52[-v7];
  v9 = sub_224DA9F08();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v52[-v20];
  v22 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  v23 = sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8]);
  sub_224DAF198();
  v56 = v23;
  v57 = v22;
  v58 = v4;
  v59 = v13;
  v62 = v21;
  v55 = v16;
  v24 = v64[0];
  [v60 integerValue];
  sub_224DA9EE8();
  v25 = v61;
  if ((*(v61 + 48))(v8, 1, v9) == 1)
  {

    return sub_224A3311C(v8, &qword_27D6F6120, qword_224DBE860);
  }

  else
  {
    v27 = v9;
    v28 = v62;
    (*(v25 + 32))(v62, v8, v9);
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364EC8);
    v30 = v19;
    v60 = *(v25 + 16);
    (v60)(v19, v28, v9);

    v31 = sub_224DAB228();
    v32 = sub_224DAF278();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v64[0] = v54;
      *v33 = 136446466;
      v63 = v24;
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8]);
      v53 = v32;
      v34 = sub_224DAFD28();
      v36 = sub_224A33F74(v34, v35, v64);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      v37 = sub_224DA9EC8();
      v39 = v38;
      v40 = *(v25 + 8);
      v40(v30, v9);
      v41 = sub_224A33F74(v37, v39, v64);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_224A2F000, v31, v53, "Received setTaskPriority for %{public}s: %{public}s", v33, 0x16u);
      v42 = v54;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v42, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {

      v40 = *(v25 + 8);
      v40(v19, v9);
    }

    v43 = v58;
    BSDispatchQueueAssert();
    v44 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
    swift_beginAccess();
    v45 = *(v43 + v44);

    v46 = sub_224D24334(v24, v45);

    v47 = v59;
    if (v46)
    {
      v48 = v55;
      v49 = v62;
      v50 = v60;
      (v60)(v55, v62, v27);
      v51 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
      swift_beginAccess();
      v50(v47, v46 + v51, v27);
      swift_beginAccess();
      (*(v61 + 24))(v46 + v51, v48, v27);
      swift_endAccess();
      sub_224B33B84();

      v40(v47, v27);
      v40(v48, v27);
      return (v40)(v49, v27);
    }

    else
    {
      v40(v62, v9);
    }
  }
}

uint64_t sub_224D0832C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8]);
  sub_224DAF198();
  v5 = [a1 unsignedIntegerValue];
  BSDispatchQueueAssert();
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_224D24334(v11, v7);

  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility);
    *(v8 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = v5;
    sub_224B34624(v9);
  }
}

void sub_224D085C8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, uint64_t, unint64_t))
{
  v8 = a3;
  v9 = a4;
  v13 = a1;
  v10 = sub_224DA96D8();
  v12 = v11;

  a5(v8, v10, v12);
  sub_224A78024(v10, v12);
}

uint64_t sub_224D08670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v4 = sub_224DAD158();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8]);
  sub_224DAF198();
  v22 = v5;
  v13 = v24;
  sub_224D0EE58(&qword_281350CF0, MEMORY[0x277CF9C60]);
  sub_224DAF198();
  BSDispatchQueueAssert();
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v15 = *(v3 + v14);

  v16 = sub_224D24334(v13, v15);

  if (v16)
  {
    v17 = v22;
    (*(v22 + 16))(v9, v11, v4);
    v18 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    (*(v17 + 24))(v16 + v18, v9, v4);
    swift_endAccess();
    sub_224B33F84();

    v19 = *(v17 + 8);
    v19(v9, v4);
    return (v19)(v11, v4);
  }

  else
  {
    (*(v22 + 8))(v11, v4);
  }
}

uint64_t sub_224D08B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_224DAA928();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  sub_224D0EE58(&unk_281351750, MEMORY[0x277CFA500]);
  sub_224DAF198();
  v14 = sub_224DAA8F8();
  BSDispatchQueueAssert();
  v15 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v16 = *(v5 + v15);

  v17 = sub_224D24334(v14, v16);

  if (v17)
  {
    v18 = *(v17 + 16);
    v19 = sub_224DAA0E8();
    v20 = [v19 contentType];

    if (!v20)
    {
      v21 = *__swift_project_boxed_opaque_existential_1((*(v17 + 24) + 16), *(*(v17 + 24) + 40));
      sub_224C7D04C(v12, a3, a4);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_224D08FD8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = sub_224DA96D8();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_224A78024(v10, v12);
}

uint64_t sub_224D09098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[1] = a4;
  v19[2] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = *(v7 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  sub_224A3317C(*(v7 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 336, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  [a3 BOOLValue];
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_224DACAB8();

  (*(v12 + 8))(v15, v11);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void sub_224D09260(void *a1, id a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_224DAE9D8();
    v6 = sub_224B424A4(v5);

    (a3)(v6, 0);
  }

  else if (a2)
  {
    v8 = a2;
    (a3)(0, a2);
  }

  else
  {
    a3(0);
  }
}

void sub_224D09484(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_224D09518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      swift_beginAccess();

      sub_224B0279C();
      swift_endAccess();

      swift_beginAccess();
      v12 = *(a4 + 16);
      *(a4 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a5 + 16) == 1)
    {
      if (qword_281351668 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365078);
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "Controls configuration request timed out - notifying!", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v17 = sub_224CBC42C(0xCu, 0, 0);
      a6(0, v17);
    }
  }
}

void sub_224D09750(void *a1, void *a2, unint64_t a3, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a5)
{
  v89 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v9 = *(v86 - 8);
  v10 = *(v9 + 8);
  MEMORY[0x28223BE20](v86);
  v85 = v76 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
  v12 = *(*(v84 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v84);
  v91 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v76 - v16;
  MEMORY[0x28223BE20](v15);
  v92 = (v76 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = v76 - v21;
  if (qword_281351668 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281365078);
    v81 = v19[2];
    v82 = v19 + 2;
    v81(v22, a1, v18);
    v24 = sub_224DAB228();
    v25 = sub_224DAF2A8();
    v26 = os_log_type_enabled(v24, v25);
    v88 = v18;
    v76[1] = a5;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v87 = v9;
      v29 = v28;
      v94[0] = v28;
      *v27 = 136446210;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
      v30 = sub_224DAFD28();
      v31 = a3;
      v32 = isUniquelyReferenced_nonNull_native;
      v34 = v33;
      v90 = v19[1];
      v90(v22, v88);
      v35 = sub_224A33F74(v30, v34, v94);
      isUniquelyReferenced_nonNull_native = v32;
      a3 = v31;

      *(v27 + 4) = v35;
      _os_log_impl(&dword_224A2F000, v24, v25, "Controls configuration received from %{public}s- notifying!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v36 = v29;
      v9 = v87;
      MEMORY[0x22AA5EED0](v36, -1, -1);
      v37 = v27;
      v18 = v88;
      MEMORY[0x22AA5EED0](v37, -1, -1);
    }

    else
    {

      v90 = v19[1];
      v90(v22, v18);
    }

    v38 = v89;
    swift_beginAccess();
    *(v38 + 16) = 0;
    sub_224A3317C(*(a3 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 216, v94);
    v39 = v95;
    v40 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v41 = (*(v40 + 24))(768, v39, v40);
    if (!v41)
    {
      break;
    }

    v76[0] = isUniquelyReferenced_nonNull_native;
    v42 = sub_224CFEA64(v41);

    a1 = sub_224DA26F8(MEMORY[0x277D84F90]);
    v43 = v42 + 64;
    v44 = 1 << v42[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    a3 = v45 & *(v42 + 8);
    v22 = ((v44 + 63) >> 6);
    v89 = v19 + 1;
    v80 = (v9 + 8);
    v87 = v42;

    a5 = 0;
    v78 = v42 + 64;
    v77 = v22;
    v79 = v19;
    while (a3)
    {
LABEL_16:
      v50 = __clz(__rbit64(a3)) | (a5 << 6);
      v51 = v87;
      v52 = *(v87 + 6) + v19[9] * v50;
      v19 = v92;
      v81(v92, v52, v18);
      v53 = *(*(v51 + 7) + 8 * v50);
      v54 = v83;
      v55 = v84;
      *(v19 + *(v84 + 48)) = v53;
      sub_224A3796C(v19, v54, &unk_27D6F6510, &unk_224DC0290);
      v56 = *(v54 + *(v55 + 48));
      v57 = v53;

      v9 = v85;
      sub_224DAA238();
      v90(v54, v18);
      v58 = v86;
      v18 = sub_224DA9FE8();
      v22 = v59;
      (*v80)(v9, v58);
      v60 = v91;
      sub_224A3796C(v19, v91, &unk_27D6F6510, &unk_224DC0290);
      v61 = *(v60 + *(v55 + 48));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = a1;
      v62 = sub_224A3A40C(v18, v22);
      v64 = a1[2];
      v65 = (v63 & 1) == 0;
      v66 = __OFADD__(v64, v65);
      v67 = v64 + v65;
      if (v66)
      {
        goto LABEL_30;
      }

      v9 = v63;
      if (a1[3] < v67)
      {
        sub_224B18E30(v67, isUniquelyReferenced_nonNull_native);
        v62 = sub_224A3A40C(v18, v22);
        v19 = v79;
        if ((v9 & 1) != (v68 & 1))
        {
          sub_224DAFDD8();
          __break(1u);
          return;
        }

LABEL_21:
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      v19 = v79;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v72 = v62;
      sub_224B29FC8();
      v62 = v72;
      if (v9)
      {
LABEL_9:
        v46 = v62;

        a1 = v93;
        v47 = v93[7];
        v48 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v61;

        sub_224A3311C(v92, &unk_27D6F6510, &unk_224DC0290);
        goto LABEL_10;
      }

LABEL_22:
      a1 = v93;
      v93[(v62 >> 6) + 8] |= 1 << v62;
      v69 = (a1[6] + 16 * v62);
      *v69 = v18;
      v69[1] = v22;
      *(a1[7] + 8 * v62) = v61;
      sub_224A3311C(v92, &unk_27D6F6510, &unk_224DC0290);
      v70 = a1[2];
      v66 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v66)
      {
        goto LABEL_31;
      }

      a1[2] = v71;
LABEL_10:
      a3 &= a3 - 1;
      v18 = v88;
      v90(v91, v88);
      v43 = v78;
      v22 = v77;
    }

    while (1)
    {
      v49 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v49 >= v22)
      {

        __swift_destroy_boxed_opaque_existential_1(v94);
        isUniquelyReferenced_nonNull_native = v76[0];
        goto LABEL_28;
      }

      a3 = *&v43[8 * v49];
      ++a5;
      if (a3)
      {
        a5 = v49;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  __swift_destroy_boxed_opaque_existential_1(v94);
LABEL_28:
  v73 = objc_allocWithZone(MEMORY[0x277CFA1F8]);
  sub_224DAF598();
  v74 = sub_224DAECC8();

  v75 = [v73 initWithConfigurationsByHost_];

  (isUniquelyReferenced_nonNull_native)(v75, 0);
}

unint64_t sub_224D0A028()
{
  result = qword_27D6F64E8;
  if (!qword_27D6F64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F64E8);
  }

  return result;
}

void *sub_224D0A07C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B07020(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_224D0A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v142 = a8;
  v138 = a7;
  v136 = a6;
  v132 = a5;
  v151 = a4;
  v130 = a3;
  v128 = a2;
  v150 = a12;
  v149 = a11;
  v146 = a10;
  v143 = a9;
  v145 = a23;
  v139 = a22;
  v148 = a30;
  v133 = a31;
  v144 = a34;
  v131 = a35;
  v141 = a28;
  v129 = a29;
  v147 = a19;
  v135 = a26;
  v140 = a17;
  v134 = a15;
  v198 = a14;
  v199 = a25;
  v137 = a33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v197);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a1, a14);
  v196[3] = a21;
  v196[4] = a32;
  v37 = __swift_allocate_boxed_opaque_existential_1(v196);
  (*(*(a21 - 8) + 32))(v37, v128, a21);
  v195[3] = a16;
  v195[4] = a27;
  v38 = __swift_allocate_boxed_opaque_existential_1(v195);
  (*(*(a16 - 8) + 32))(v38, v130, a16);
  v194[3] = a18;
  v194[4] = a29;
  v39 = __swift_allocate_boxed_opaque_existential_1(v194);
  (*(*(a18 - 8) + 32))(v39, v132, a18);
  v192 = a24;
  v193 = a35;
  v40 = __swift_allocate_boxed_opaque_existential_1(v191);
  (*(*(a24 - 8) + 32))(v40, v136, a24);
  v190[3] = a20;
  v190[4] = a31;
  v41 = __swift_allocate_boxed_opaque_existential_1(v190);
  (*(*(a20 - 8) + 32))(v41, v138, a20);
  v188 = a15;
  v189 = a26;
  v42 = __swift_allocate_boxed_opaque_existential_1(v187);
  (*(*(a15 - 8) + 32))(v42, v142, a15);
  v186[3] = a22;
  v186[4] = a33;
  v43 = __swift_allocate_boxed_opaque_existential_1(v186);
  (*(*(a22 - 8) + 32))(v43, a9, a22);
  v185[3] = a17;
  v185[4] = a28;
  v44 = __swift_allocate_boxed_opaque_existential_1(v185);
  (*(*(a17 - 8) + 32))(v44, a10, a17);
  v183 = a23;
  v184 = a34;
  v45 = __swift_allocate_boxed_opaque_existential_1(v182);
  (*(*(a23 - 8) + 32))(v45, a11, a23);
  v181[3] = a19;
  v181[4] = a30;
  v46 = __swift_allocate_boxed_opaque_existential_1(v181);
  (*(*(a19 - 8) + 32))(v46, a12, a19);
  type metadata accessor for ControlServerServices();
  v47 = swift_allocObject();
  v48 = v198;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v127 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = v192;
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v191, v192);
  v56 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = (&v127 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = v188;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v187, v188);
  v62 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = (&v127 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = v183;
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
  v68 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v127 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = *v52;
  v73 = *v58;
  v74 = *v64;
  v75 = *v70;
  v76 = type metadata accessor for LiveControlService();
  v180[3] = v76;
  v77 = sub_224D0EE58(&qword_281359B70, type metadata accessor for LiveControlService);
  v180[4] = v77;
  v180[0] = v72;
  v78 = type metadata accessor for LocationService(0);
  v179[4] = &off_2838352C0;
  v179[3] = v78;
  v179[0] = v73;
  v79 = type metadata accessor for PushService();
  v178[4] = &off_283828B40;
  v178[3] = v79;
  v178[0] = v74;
  v80 = type metadata accessor for ControlVisibilityMonitor();
  v177[4] = &off_283832610;
  v177[3] = v80;
  v81 = v80;
  v150 = v80;
  v177[0] = v75;
  sub_224A3317C(v180, v47 + 16);
  sub_224A3317C(v196, v47 + 56);
  sub_224A3317C(v151, v47 + 96);
  sub_224A3317C(v194, v47 + 136);
  sub_224A3317C(v179, v47 + 176);
  sub_224A3317C(v190, v47 + 216);
  sub_224A3317C(v178, v47 + 296);
  sub_224A3317C(v186, v47 + 336);
  sub_224A3317C(v195, v47 + 256);
  sub_224A3317C(v185, v47 + 376);
  sub_224A3317C(v180, v175);
  sub_224A3317C(v196, v174);
  sub_224A3317C(v194, v173);
  sub_224A3317C(v179, v171);
  sub_224A3317C(v190, v170);
  sub_224A3317C(v186, v169);
  sub_224A3317C(v185, v168);
  sub_224A3317C(v177, v166);
  sub_224A3317C(v181, v165);
  v82 = v176;
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
  v84 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = (&v127 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = v172;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v171, v172);
  v90 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v92 = (&v127 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  v94 = v167;
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v166, v167);
  v96 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v98 = (&v127 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98);
  v100 = *v86;
  v101 = *v92;
  v102 = *v98;
  v164[3] = v76;
  v164[4] = v77;
  v164[0] = v100;
  v162 = v78;
  v163 = &off_2838352C0;
  v161[0] = v101;
  v159 = v81;
  v160 = &off_283832610;
  v158[0] = v102;
  type metadata accessor for ControlSessionServices();
  v103 = swift_allocObject();
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v164, v76);
  v105 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v107 = (&v127 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = v162;
  v110 = __swift_mutable_project_boxed_opaque_existential_1(v161, v162);
  v111 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v113 = (&v127 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113);
  v115 = v159;
  v116 = __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
  v117 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v119 = (&v127 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = *v107;
  v122 = *v113;
  v123 = *v119;
  *(v103 + 40) = v76;
  *(v103 + 48) = v77;
  *(v103 + 16) = v121;
  *(v103 + 160) = v78;
  *(v103 + 168) = &off_2838352C0;
  *(v103 + 136) = v122;
  v156 = v150;
  v157 = &off_283832610;
  *&v155 = v123;
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v181);
  __swift_destroy_boxed_opaque_existential_1(v185);
  __swift_destroy_boxed_opaque_existential_1(v186);
  __swift_destroy_boxed_opaque_existential_1(v190);
  __swift_destroy_boxed_opaque_existential_1(v194);
  __swift_destroy_boxed_opaque_existential_1(v195);
  __swift_destroy_boxed_opaque_existential_1(v196);
  __swift_destroy_boxed_opaque_existential_1(v177);
  __swift_destroy_boxed_opaque_existential_1(v178);
  __swift_destroy_boxed_opaque_existential_1(v179);
  __swift_destroy_boxed_opaque_existential_1(v180);
  *(v103 + 368) = 0;
  *(v103 + 336) = 0u;
  *(v103 + 352) = 0u;
  sub_224A36F98(v174, v103 + 56);
  sub_224A36F98(v173, v103 + 96);
  sub_224A36F98(v170, v103 + 176);
  sub_224A36F98(v169, v103 + 216);
  sub_224A36F98(v168, v103 + 256);
  sub_224A36F98(&v155, v103 + 296);
  sub_224A36F98(v165, &v152);
  swift_beginAccess();
  v124 = *(&v153 + 1);
  if (!*(v103 + 360))
  {
    if (*(&v153 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v125 = v153;
    *(v103 + 336) = v152;
    *(v103 + 352) = v125;
    *(v103 + 368) = v154;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1((v103 + 336));
  if (!v124)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_224A36F98(&v152, v103 + 336);
LABEL_6:
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v158);
  __swift_destroy_boxed_opaque_existential_1(v161);
  __swift_destroy_boxed_opaque_existential_1(v164);
  __swift_destroy_boxed_opaque_existential_1(v166);
  __swift_destroy_boxed_opaque_existential_1(v171);
  __swift_destroy_boxed_opaque_existential_1(v175);
  *(v47 + 416) = v103;
  __swift_destroy_boxed_opaque_existential_1(v182);
  __swift_destroy_boxed_opaque_existential_1(v187);
  __swift_destroy_boxed_opaque_existential_1(v191);
  __swift_destroy_boxed_opaque_existential_1(v197);
  return v47;
}

uint64_t sub_224D0AE80(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__services];
  v5 = *&v2[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue];
  v6 = [a1 remoteProcess];
  v58 = type metadata accessor for ControlsClient();
  v7 = objc_allocWithZone(v58);
  v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions] = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlHostIdentities] = v8;
  v9 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_serviceAssertionIDs;
  v10 = MEMORY[0x277D84F90];
  *&v7[v9] = sub_224DA2520(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_serviceAssertions;
  *&v7[v11] = sub_224DA260C(v10);
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlFetchSubscriptions] = v8;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue] = v5;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] = a1;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] = v4;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__processHandle] = v6;
  v12 = v5;
  v13 = a1;

  v14 = v6;
  sub_224DAF938();

  LODWORD(v59) = [v14 pid];
  v15 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v15);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v16 = &v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier];
  *v16 = 0x736C6F72746E6F43;
  v16[1] = 0xEF5B746E65696C43;
  v62.receiver = v7;
  v62.super_class = v58;
  v17 = objc_msgSendSuper2(&v62, sel_init);

  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v19[2] = sub_224D0EFB4;
  v19[3] = v18;
  aBlock[4] = sub_224A75AA4;
  v61 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_50;
  v20 = _Block_copy(aBlock);
  v21 = v61;
  v22 = v2;
  v23 = v17;

  [v13 configureConnection_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v21 = &off_27853F000;
  v19 = [v13 remoteProcess];
  sub_224DAA318();
  v24 = sub_224DAEDE8();

  v25 = [v19 hasEntitlement_];

  if (v25)
  {
    goto LABEL_15;
  }

  v26 = [v19 bundleIdentifier];
  if (v26)
  {
    v27 = v26;
    sub_224DAEE18();

    v28 = sub_224DAEE38();
    v30 = v29;

    if (v28 == 0xD000000000000015 && 0x8000000224DCE790 == v30)
    {
      goto LABEL_14;
    }

    v31 = sub_224DAFD88();

    v21 = &off_27853F000;
    if (v31)
    {
      goto LABEL_15;
    }
  }

  v32 = [v19 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    sub_224DAEE18();

    v34 = sub_224DAEE38();
    v36 = v35;

    if (v34 == 0xD000000000000015 && 0x8000000224DCE770 == v36)
    {
      goto LABEL_14;
    }

    v37 = sub_224DAFD88();

    if (v37)
    {
LABEL_15:
      v43 = *&v22[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      os_unfair_lock_lock(*(v43 + 16));
      swift_beginAccess();
      sub_224ADD05C(&v59, v23);
      swift_endAccess();

      os_unfair_lock_unlock(*(v43 + 16));
      v44 = &selRef_activate;
      goto LABEL_16;
    }
  }

  v38 = [v19 bundleIdentifier];
  if (v38)
  {
    v39 = v38;
    sub_224DAEE18();

    v40 = sub_224DAEE38();
    v42 = v41;

    if (v40 == 0xD000000000000015 && 0x8000000224DCE750 == v42)
    {
LABEL_14:

      goto LABEL_15;
    }

    v46 = sub_224DAFD88();

    if (v46)
    {
      goto LABEL_15;
    }
  }

  if (qword_281351658 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v47 = sub_224DAB258();
  __swift_project_value_buffer(v47, qword_281365060);
  v48 = v13;
  v49 = sub_224DAB228();
  v50 = sub_224DAF2A8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v51 = 136446466;
    v52 = [v48 v21[393]];
    v53 = [v52 description];

    v54 = sub_224DAEE18();
    v56 = v55;

    v57 = sub_224A33F74(v54, v56, aBlock);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, aBlock);
    _os_log_impl(&dword_224A2F000, v49, v50, "Chrono controls service connection from %{public}s failed to authenticate <entitled: %{public}s>", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v58, -1, -1);
    MEMORY[0x22AA5EED0](v51, -1, -1);
  }

  v44 = &selRef_invalidate;
LABEL_16:
  [v13 *v44];
}

uint64_t sub_224D0B63C(void *a1, char *a2, uint64_t a3)
{
  v69 = a3;
  v74 = a1;
  v4 = sub_224DAE138();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v62 - v12;
  v13 = sub_224DAC5E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v70 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v62 - v24;
  v25 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  v63 = a2;
  v71 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
  sub_224A3317C(v71 + 296, v77);
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v26 = off_283828B60[0];
  v64 = type metadata accessor for PushService();
  result = v26(v64, &off_283828B40);
  v28 = v14;
  v29 = result;
  v76 = *(result + 16);
  if (!v76)
  {
LABEL_8:

    v40 = 1;
    v39 = v73;
LABEL_9:
    (*(v28 + 56))(v39, v40, 1, v13);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v41 = v70;
    sub_224A3796C(v39, v70, &qword_27D6F3BB0, &unk_224DB8CF0);
    v42 = (*(v28 + 48))(v41, 1, v13);
    v44 = v71;
    v43 = v72;
    if (v42 == 1)
    {
      sub_224A3311C(v41, &qword_27D6F3BB0, &unk_224DB8CF0);
    }

    else
    {
      (*(v28 + 32))(v72, v41, v13);
      sub_224A3317C(v44 + 296, v77);
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v45 = off_283828B68(v64, &off_283828B40);
      MEMORY[0x28223BE20](v45);
      *(&v62 - 2) = v43;
      v46 = v65;
      v47 = v28;
      sub_224AFD7EC(sub_224AC20A8, v45, v65);
      v48 = v46;

      __swift_destroy_boxed_opaque_existential_1(v77);
      v49 = sub_224DAE438();
      if ((*(*(v49 - 8) + 48))(v46, 1, v49) != 1)
      {
        v55 = sub_224DAF128();
        v56 = v62;
        (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
        v57 = swift_allocObject();
        v57[2] = 0;
        v57[3] = 0;
        v58 = v63;
        v59 = v74;
        v57[4] = v63;
        v57[5] = v59;
        v60 = v59;
        v61 = v58;
        sub_224D00D34(0, 0, v56, &unk_224DC02A8, v57);

        (*(v69 + 16))(v69, 0);
        sub_224A3311C(v39, &qword_27D6F3BB0, &unk_224DB8CF0);
        sub_224A3311C(v48, &unk_27D6F38C0, &qword_224DB31E8);
        return (*(v47 + 8))(v43, v13);
      }

      sub_224A3311C(v46, &unk_27D6F38C0, &qword_224DB31E8);
      (*(v47 + 8))(v43, v13);
    }

    v50 = __swift_project_boxed_opaque_existential_1((v44 + 16), *(v44 + 40));
    v52 = v66;
    v51 = v67;
    v53 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277CF9EB8], v68);
    v54 = *v50;
    sub_224C7CAAC(v74, v52);
    (*(v51 + 8))(v52, v53);
    (*(v69 + 16))(v69, 0);
    return sub_224A3311C(v39, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v30 = 0;
  v75 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v31 = (v14 + 8);
  while (v30 < *(v29 + 16))
  {
    (*(v28 + 16))(v18, v75 + *(v28 + 72) * v30, v13);
    v32 = sub_224DAC5D8();
    if (v32)
    {
      v33 = v32;
      sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
      v34 = v28;
      v35 = v13;
      v36 = v74;
      v37 = sub_224DAF6A8();

      v13 = v35;
      v28 = v34;

      if (v37)
      {

        v38 = *(v34 + 32);
        v39 = v73;
        v38(v73, v18, v13);
        v40 = 0;
        goto LABEL_9;
      }
    }

    ++v30;
    result = (*v31)(v18, v13);
    if (v76 == v30)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D0BDC4(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v40 = a1;
  v4 = sub_224DAC5E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v34 - v15;
  v16 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  v35 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services);
  sub_224A3317C(v35 + 296, v43);
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v17 = off_283828B60[0];
  v18 = type metadata accessor for PushService();
  result = v17(v18, &off_283828B40);
  v20 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v21 = 0;
    v41 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = (v5 + 8);
    while (v21 < *(v20 + 16))
    {
      (*(v5 + 16))(v9, v41 + *(v5 + 72) * v21, v4);
      v23 = sub_224DAC5D8();
      if (v23)
      {
        v24 = v23;
        sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
        v25 = v5;
        v26 = v4;
        v27 = v40;
        v28 = sub_224DAF6A8();

        v4 = v26;
        v5 = v25;

        if (v28)
        {

          v29 = v38;
          (*(v25 + 32))(v38, v9, v4);
          v30 = 0;
          goto LABEL_9;
        }
      }

      ++v21;
      result = (*v22)(v9, v4);
      if (v42 == v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v30 = 1;
    v29 = v38;
LABEL_9:
    (*(v5 + 56))(v29, v30, 1, v4);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v31 = v37;
    sub_224A3796C(v29, v37, &qword_27D6F3BB0, &unk_224DB8CF0);
    if ((*(v5 + 48))(v31, 1, v4) == 1)
    {
      sub_224A3311C(v31, &qword_27D6F3BB0, &unk_224DB8CF0);
      (*(v39 + 16))(v39, 0);
    }

    else
    {
      v32 = v36;
      (*(v5 + 32))(v36, v31, v4);
      v33 = *__swift_project_boxed_opaque_existential_1((v35 + 296), *(v35 + 320));
      sub_224AB7D1C(v32);
      (*(v39 + 16))(v39, 0);
      (*(v5 + 8))(v32, v4);
    }

    return sub_224A3311C(v29, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  return result;
}

uint64_t sub_224D0C1E4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v164 = a4;
  v166[11] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v158 = &v144 - v7;
  v8 = sub_224DA9688();
  v160 = *(v8 - 8);
  v161 = v8;
  v9 = *(v160 + 64);
  MEMORY[0x28223BE20](v8);
  v159 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_224DA9F08();
  v156 = *(v157 - 8);
  v11 = *(v156 + 64);
  v12 = MEMORY[0x28223BE20](v157);
  v14 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v144 - v15;
  v17 = sub_224DAD158();
  v163 = *(v17 - 8);
  v18 = *(v163 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v144 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v144 - v25;
  v27 = *&a3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  BSDispatchQueueAssert();
  v28 = a3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  a3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v28);
  sub_224DAA598();
  sub_224D0EE58(&unk_281351800, MEMORY[0x277CFA0B8]);
  sub_224DAF198();
  v153 = v21;
  v155 = v26;
  v149 = v16;
  v150 = v14;
  v29 = v163;
  v154 = a3;
  v162 = v166[0];
  v30 = sub_224DAA578();
  if (v31 >> 60 == 15)
  {
    sub_224DAD148();
    v32 = v164;
  }

  else
  {
    v33 = v30;
    v34 = v31;
    sub_224D0EE58(&qword_281350CF0, MEMORY[0x277CF9C60]);
    sub_224DAF198();
    v32 = v164;
    sub_224AC1D9C(v33, v34);
    (*(v29 + 32))(v155, v24, v17);
  }

  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v35 = sub_224DAB258();
  v36 = __swift_project_value_buffer(v35, qword_281365060);
  v37 = v154;

  v151 = v36;
  v38 = sub_224DAB228();
  v39 = sub_224DAF278();

  v40 = os_log_type_enabled(v38, v39);
  v152 = v17;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v166[0] = v148;
    *v41 = 136446466;
    *(v41 + 4) = sub_224A33F74(*&v37[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v37[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v166);
    *(v41 + 12) = 2082;
    v166[8] = sub_224DAA558();
    sub_224DAA0F8();
    sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8]);
    v42 = sub_224DAFD28();
    v44 = v43;

    v45 = sub_224A33F74(v42, v44, v166);

    *(v41 + 14) = v45;
    _os_log_impl(&dword_224A2F000, v38, v39, "[%{public}s] Received message to subscribe to %{public}s.", v41, 0x16u);
    v46 = v148;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v46, -1, -1);
    v47 = v41;
    v29 = v163;
    MEMORY[0x22AA5EED0](v47, -1, -1);
  }

  v48 = sub_224DAA558();
  v49 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v50 = *&v37[v49];

  v51 = sub_224D24334(v48, v50);

  v52 = v153;
  if (v51)
  {

    v53 = v37;

    v54 = sub_224DAB228();
    v55 = sub_224DAF288();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v166[0] = v57;
      *v56 = 136446466;
      *(v56 + 4) = sub_224A33F74(*&v53[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v53[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v166);
      *(v56 + 12) = 2082;
      v166[5] = v48;
      sub_224DAA0F8();
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8]);
      v58 = sub_224DAFD28();
      v60 = sub_224A33F74(v58, v59, v166);

      *(v56 + 14) = v60;
      _os_log_impl(&dword_224A2F000, v54, v55, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
      v61 = v155;
      MEMORY[0x22AA5EED0](v57, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    else
    {

      v61 = v155;
    }

    v89 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v90 = sub_224DAEDE8();
    v91 = [v89 initWithDomain:v90 code:23 userInfo:0];

    v92 = sub_224DA9518();
    (*(v32 + 16))(v32, 0, v92);

    result = (*(v29 + 8))(v61, v152);
  }

  else
  {
    v146 = v49;
    v148 = v37;
    v145 = *&v37[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
    v62 = *(v145 + 416);

    v144 = sub_224DAA568();
    v63 = v152;
    (*(v29 + 16))(v52, v155, v152);
    v64 = type metadata accessor for ControlSession();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    v67 = swift_allocObject();
    v68 = v52;
    v69 = v156;
    v70 = v157;
    (*(v156 + 104))(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority, *MEMORY[0x277CF9F28], v157);
    *(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion) = 0;
    sub_224DAD148();
    v71 = v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
    *v71 = 0u;
    *(v71 + 16) = 0u;
    *(v71 + 32) = 0;
    *(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = 0;
    *(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = 0;
    *(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
    *(v67 + OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated) = 0;
    *(v67 + 16) = v48;
    *(v67 + 24) = v62;

    sub_224B35230(v67, v68, v48, v62, v144);

    v72 = *(v29 + 8);
    v163 = v29 + 8;
    v153 = v72;
    v72(v68, v63);
    v73 = v149;
    sub_224DAA588();
    v74 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
    swift_beginAccess();
    v75 = v150;
    (*(v69 + 16))(v150, v67 + v74, v70);
    swift_beginAccess();
    (*(v69 + 24))(v67 + v74, v73, v70);
    swift_endAccess();
    sub_224B33B84();
    v76 = *(v69 + 8);
    v76(v75, v70);
    v76(v73, v70);
    sub_224A3317C(v145 + 256, v166);
    __swift_project_boxed_opaque_existential_1(v166, v166[3]);
    v77 = sub_224DAA0D8();
    v78 = [v77 extensionIdentity];

    v79 = v158;
    sub_224DAC658();

    v81 = v160;
    v80 = v161;
    v82 = (*(v160 + 48))(v79, 1, v161);
    v147 = v67;
    if (v82 == 1)
    {
      v83 = v32;
      sub_224A3311C(v79, &unk_27D6F4680, &unk_224DB4610);
      __swift_destroy_boxed_opaque_existential_1(v166);
      v84 = sub_224DAA0D8();
      v85 = [v84 extensionIdentity];

      sub_224D0EEA0();
      v86 = swift_allocError();
      *v87 = v85;
      swift_willThrow();
      v88 = v148;
      v112 = v148;
      v113 = v86;
      v114 = sub_224DAB228();
      v115 = sub_224DAF2A8();

      if (os_log_type_enabled(v114, v115))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v166[0] = v119;
        *v117 = 136446466;
        *(v117 + 4) = sub_224A33F74(*&v112[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v112[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v166);
        *(v117 + 12) = 2114;
        v120 = v86;
        v121 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 14) = v121;
        *v118 = v121;
        _os_log_impl(&dword_224A2F000, v114, v115, "[%{public}s] No sandbox extension issued: %{public}@", v117, 0x16u);
        sub_224A3311C(v118, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v118, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v119);
        v122 = v119;
        v88 = v148;
        MEMORY[0x22AA5EED0](v122, -1, -1);
        MEMORY[0x22AA5EED0](v117, -1, -1);
      }

      else
      {
      }

      v32 = v83;
      v67 = v147;
    }

    else
    {
      (*(v81 + 32))(v159, v79, v80);
      __swift_destroy_boxed_opaque_existential_1(v166);
      v94 = [objc_opt_self() defaultManager];
      v95 = sub_224DA95F8();
      v166[0] = 0;
      v96 = [v94 createDirectoryAtURL:v95 withIntermediateDirectories:1 attributes:0 error:v166];

      if (v96)
      {
        v97 = v166[0];
        v88 = v148;
      }

      else
      {
        v98 = v32;
        v99 = v166[0];
        v100 = sub_224DA9528();

        swift_willThrow();
        v88 = v148;
        v101 = v148;
        v102 = v100;
        v103 = sub_224DAB228();
        v104 = sub_224DAF2A8();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v166[0] = v107;
          *v105 = 136446466;
          *(v105 + 4) = sub_224A33F74(*&v101[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v101[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v166);
          *(v105 + 12) = 2114;
          v108 = v100;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          *(v105 + 14) = v109;
          *v106 = v109;
          _os_log_impl(&dword_224A2F000, v103, v104, "[%{public}s] Sandbox extension issuer couldn't create folder: %{public}@", v105, 0x16u);
          sub_224A3311C(v106, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v106, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v107);
          v110 = v107;
          v88 = v148;
          MEMORY[0x22AA5EED0](v110, -1, -1);
          MEMORY[0x22AA5EED0](v105, -1, -1);
        }

        else
        {
        }

        v32 = v98;
        v67 = v147;
        v81 = v160;
      }

      v111 = v159;
      sub_224DAA088();
      sub_224DAA078();
      (*(v81 + 8))(v111, v161);
    }

    v123 = v146;
    swift_beginAccess();
    v124 = *&v88[v123];
    if ((v124 & 0xC000000000000001) != 0)
    {
      if (v124 < 0)
      {
        v125 = *&v88[v123];
      }

      else
      {
        v125 = v124 & 0xFFFFFFFFFFFFFF8;
      }

      v126 = sub_224DAF838();
      if (__OFADD__(v126, 1))
      {
        __break(1u);
      }

      *&v88[v123] = sub_224D2D28C(v125, v126 + 1);
    }

    else
    {
      v127 = *&v88[v123];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = *&v88[v123];
    sub_224B232B4(v67, v48, isUniquelyReferenced_nonNull_native);
    *&v88[v123] = v165;

    swift_endAccess();
    sub_224DAA5B8();
    v166[0] = sub_224DAA5A8();
    sub_224D0EE58(&unk_2813517F0, MEMORY[0x277CFA0C8]);
    v130 = sub_224DAED78();
    v131 = v88;
    v133 = v132;
    v161 = v48;
    v134 = v131;

    v135 = sub_224DAB228();
    v136 = sub_224DAF2A8();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v166[0] = v160;
      *v137 = 136446466;
      *(v137 + 4) = sub_224A33F74(*&v134[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v134[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v166);
      *(v137 + 12) = 2082;
      LODWORD(v159) = v136;
      v165 = sub_224DAA558();
      sub_224DAA0F8();
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8]);
      v138 = sub_224DAFD28();
      v140 = v139;

      v141 = sub_224A33F74(v138, v140, v166);
      v32 = v164;

      *(v137 + 14) = v141;
      _os_log_impl(&dword_224A2F000, v135, v159, "[%{public}s] Successfully subscribed to session: %{public}s", v137, 0x16u);
      v142 = v160;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v142, -1, -1);
      MEMORY[0x22AA5EED0](v137, -1, -1);
    }

    sub_224A77FD0(v130, v133);
    v143 = sub_224DA96B8();
    (*(v32 + 16))(v32, v143, 0);

    sub_224A78024(v130, v133);

    sub_224A78024(v130, v133);

    result = v153(v155, v152);
  }

  v129 = *MEMORY[0x277D85DE8];
  return result;
}