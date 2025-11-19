void sub_228700DF8()
{
  v0 = *MEMORY[0x277CCE378];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_228700E7C();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    qword_280DE14F8 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_228700E7C()
{
  if (!qword_280DE1660)
  {
    type metadata accessor for BasicPluginInfo();
    sub_228700F00();
    v0 = type metadata accessor for PluginBundleProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1660);
    }
  }
}

unint64_t sub_228700F00()
{
  result = qword_280DE1768;
  if (!qword_280DE1768)
  {
    type metadata accessor for BasicPluginInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1768);
  }

  return result;
}

uint64_t type metadata accessor for HealthExperienceStoreCoreSpotlightOperation()
{
  result = qword_280DE1778;
  if (!qword_280DE1778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id HealthExperienceStoreCoreSpotlightOperation.init(store:)(uint64_t *a1)
{
  sub_2287010E4(a1, v1 + qword_280DE10F8);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightOperation();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2287010E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_228701194(void *a1)
{
  v1 = a1;
  sub_2287011DC();
}

void sub_2287011DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20]();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for HealthExperienceStoreCoreSpotlightOperation + 16))(v5);
  [v8 startSpotlightIndexing];
  sub_2287CA9C0();
  v9 = v8;
  v10 = sub_2287CAA40();
  v11 = sub_2287CB610();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    v23[1] = ObjectType;
    *v13 = 136315394;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, v23);
    v21 = v2;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    v20 = v9;
    _os_log_impl(&dword_2286FF000, v10, v11, "[%s] spotlightDelegate: %@", v13, 0x16u);
    sub_2287038A4(v14);
    MEMORY[0x22AABFD90](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v13, -1, -1);

    (*(v22 + 8))(v7, v21);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  sub_2287CA880();
}

uint64_t type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate()
{
  result = qword_280DE1100;
  if (!qword_280DE1100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2287014C4()
{
  if (!qword_280DE1200)
  {
    sub_2287015EC();
    v0 = sub_2287C9BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1200);
    }
  }
}

void sub_22870151C()
{
  sub_2287014C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2287CA9B0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2287015EC()
{
  if (!qword_280DE3650)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3650);
    }
  }
}

void *HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(for:)(uint64_t *a1)
{
  v3 = sub_2287CA970();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2287CA9B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v1);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2287C99D0();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_2287C99C0();
  v17 = [v12 initForStoreWithDescription:v14 coordinator:v16];

  (*(v8 + 16))(v11, v17 + OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate_signposter, v7);
  v18 = v17;
  sub_2287CA960();
  v19 = sub_2287CA9A0();
  v20 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v19, v20, v22, "HealthExperienceStoreCoreSpotlightDelegate init", "", v21, 2u);
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  (*(v31 + 8))(v6, v32);
  (*(v8 + 8))(v11, v7);
  v23 = [objc_opt_self() defaultCenter];
  v24 = *MEMORY[0x277CBE260];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v18;
  v27 = sub_2287C99C0();
  [v23 addObserver:v26 selector:sel_indexSearchableItemsToCurrentHistoryToken name:v24 object:v27];

  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_2287C99E0();
  (*((*MEMORY[0x277D85000] & *v26) + 0xB8))();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v26;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_228701A80(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_2287CAA50() - 8) + 64);
  MEMORY[0x28223BE20]();
  if (qword_280DE1138 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();

  v6 = [v5 standardUserDefaults];
  sub_2287015EC();
  v12 = 0;
  v13 = 0;
  sub_2287C9BA0();
  if (qword_280DE1110 != -1)
  {
    swift_once();
  }

  v7 = [v5 standardUserDefaults];
  sub_2287C9BA0();
  v8 = [v5 standardUserDefaults];
  v12 = 0;
  v13 = 0;
  sub_2287C9BA0();
  sub_2287CAA10();
  sub_2287CA990();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v11, sel_initForStoreWithDescription_coordinator_, a1, a2);
}

uint64_t sub_228701CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  sub_2287C98D0();
  result = a2();
  *a3 = result;
  *a4 = v8;
  return result;
}

void sub_228701D60(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2287014C4();
  v155 = v4;
  v153 = *(v4 - 8);
  v5 = *(v153 + 64);
  MEMORY[0x28223BE20](v4);
  v154 = &v140[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v140[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v140[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v150 = &v140[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v140[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v152 = &v140[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v140[-v22];
  v24 = &unk_278607000;
  v25 = [a1 persistentStoreCoordinator];
  v26 = [v25 persistentStores];

  sub_228703004(0, &qword_280DE39E0, 0x277CBE4D0);
  v27 = sub_2287CB3A0();

  if (v27 >> 62)
  {
    if (sub_2287CB920())
    {
LABEL_3:
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AABF120](0, v27);
      }

      else
      {
        if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v28 = *(v27 + 32);
      }

      v26 = v28;

      v29 = [a1 persistentStoreCoordinator];
      v30 = [v29 metadataForPersistentStore_];

      v12 = sub_2287CB140();
      if (qword_280DE1138 != -1)
      {
        swift_once();
      }

      v24 = v7;
      if (!*(v12 + 2) || (v31 = sub_22870304C(qword_280DE1140, *algn_280DE1148), (v32 & 1) == 0))
      {

        v7 = v8;
LABEL_20:
        sub_2287CAA10();
        v73 = sub_2287CAA40();
        v74 = sub_2287CB5F0();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = v26;
          v77 = swift_slowAlloc();
          v161 = v77;
          *v75 = 136446210;
          v78 = sub_2287CBE60();
          v80 = sub_2287031D8(v78, v79, &v161);

          *(v75 + 4) = v80;
          _os_log_impl(&dword_2286FF000, v73, v74, "[%{public}s] Could not get version or locale from metadata", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x22AABFD90](v77, -1, -1);
          MEMORY[0x22AABFD90](v75, -1, -1);
        }

        else
        {
        }

        (*(v7 + 8))(v15, v24);
        return;
      }

      sub_22870317C(*(v12 + 7) + 32 * v31, &v161);
      v7 = v8;
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_67:

        goto LABEL_20;
      }

      v8 = v157;
      a1 = v158;
      if (qword_280DE1110 == -1)
      {
        if (*(v12 + 2))
        {
          goto LABEL_13;
        }

        goto LABEL_66;
      }

LABEL_65:
      swift_once();
      if (*(v12 + 2))
      {
LABEL_13:
        v33 = sub_22870304C(qword_280DE1118, qword_280DE1120);
        if (v34)
        {
          sub_22870317C(*(v12 + 7) + 32 * v33, &v161);

          if (swift_dynamicCast())
          {
            v146 = v8;
            v144 = v157;
            v148 = v158;
            sub_2287CAA10();

            v35 = v2;
            v36 = sub_2287CAA40();
            v37 = sub_2287CB610();

            v38 = os_log_type_enabled(v36, v37);
            v149 = a1;
            v143 = v26;
            if (v38)
            {
              v39 = swift_slowAlloc();
              LODWORD(v145) = v37;
              v40 = a1;
              v41 = v39;
              v147 = swift_slowAlloc();
              v157 = v147;
              *v41 = 136446722;
              v42 = sub_2287CBE60();
              v44 = sub_2287031D8(v42, v43, &v157);

              *(v41 + 4) = v44;
              *(v41 + 12) = 2080;
              *(v41 + 14) = sub_2287031D8(v146, v40, &v157);
              *(v41 + 22) = 2080;
              v45 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsVersion;
              swift_beginAccess();
              v46 = v153;
              v47 = &v35[v45];
              v48 = v154;
              v49 = v155;
              (*(v153 + 16))(v154, v47, v155);
              sub_2287C9B80();
              (*(v46 + 8))(v48, v49);
              sub_2287015EC();
              v50 = sub_2287CB250();
              v52 = sub_2287031D8(v50, v51, &v157);

              *(v41 + 24) = v52;
              _os_log_impl(&dword_2286FF000, v36, v145, "[%{public}s] Comparing versions '%s' and '%s'", v41, 0x20u);
              v53 = v147;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v53, -1, -1);
              MEMORY[0x22AABFD90](v41, -1, -1);
            }

            v145 = *(v7 + 8);
            v145(v23, v24);
            v54 = v152;
            sub_2287CAA10();
            v55 = v35;
            v56 = v148;

            v57 = sub_2287CAA40();
            v58 = sub_2287CB610();

            v59 = os_log_type_enabled(v57, v58);
            v147 = v55;
            if (v59)
            {
              v60 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v157 = v142;
              *v60 = 136446722;
              v61 = sub_2287CBE60();
              v141 = v58;
              v63 = sub_2287031D8(v61, v62, &v157);

              *(v60 + 4) = v63;
              *(v60 + 12) = 2080;
              *(v60 + 14) = sub_2287031D8(v144, v56, &v157);
              *(v60 + 22) = 2080;
              v64 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsLocale;
              swift_beginAccess();
              v65 = v153;
              v66 = v154;
              v67 = v155;
              (*(v153 + 16))(v154, v147 + v64, v155);
              sub_2287C9B80();
              (*(v65 + 8))(v66, v67);
              sub_2287015EC();
              v68 = sub_2287CB250();
              v70 = sub_2287031D8(v68, v69, &v157);

              *(v60 + 24) = v70;
              _os_log_impl(&dword_2286FF000, v57, v141, "[%{public}s] Comparing locales '%s' and '%s'", v60, 0x20u);
              v71 = v142;
              swift_arrayDestroy();
              MEMORY[0x22AABFD90](v71, -1, -1);
              v72 = v60;
              v55 = v147;
              MEMORY[0x22AABFD90](v72, -1, -1);

              v145(v152, v24);
            }

            else
            {

              v145(v54, v24);
              v66 = v154;
              v67 = v155;
              v65 = v153;
            }

            v81 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsVersion;
            swift_beginAccess();
            v82 = *(v65 + 16);
            v152 = v81;
            v82(v66, &v55[v81], v67);

            sub_2287C9B80();
            v85 = *(v65 + 8);
            v83 = v65 + 8;
            v84 = v85;
            v85(v66, v67);
            v86 = v148;
            if (!v158)
            {
              goto LABEL_47;
            }

            if (v146 == v157 && v158 == v149)
            {
            }

            else
            {
              v87 = sub_2287CBD00();

              if ((v87 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v88 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsLocale;
            v89 = v147;
            swift_beginAccess();
            v90 = v89 + v88;
            v91 = v154;
            v92 = v155;
            v82(v154, v90, v155);

            sub_2287C9B80();
            v84(v91, v92);
            if (!v158)
            {
LABEL_46:

              goto LABEL_47;
            }

            if (v144 == v157 && v158 == v86)
            {

              goto LABEL_37;
            }

            v93 = sub_2287CBD00();

            if (v93)
            {
LABEL_37:
              v153 = v83;
              v94 = [v143 identifier];
              if (v94)
              {
                v95 = v94;
                v142 = sub_2287CB220();
                v97 = v96;
              }

              else
              {
                v142 = 0;
                v97 = 0;
              }

              v98 = v154;
              v99 = OBJC_IVAR____TtC18HealthPlatformCore42HealthExperienceStoreCoreSpotlightDelegate__defaultsStoreIdentifier;
              v100 = v147;
              swift_beginAccess();
              v101 = v100 + v99;
              v102 = v98;
              v103 = v98;
              v104 = v155;
              v82(v102, v101, v155);
              sub_2287C9B80();
              v84(v103, v104);
              if (v97)
              {
                if (v158)
                {
                  if (v142 == v157 && v97 == v158)
                  {

LABEL_56:

                    v125 = v150;
                    sub_2287CAA20();
                    v126 = sub_2287CAA40();
                    v127 = sub_2287CB610();
                    if (os_log_type_enabled(v126, v127))
                    {
                      v128 = swift_slowAlloc();
                      v129 = swift_slowAlloc();
                      v157 = v129;
                      *v128 = 136446210;
                      v130 = sub_2287CBE60();
                      v132 = sub_2287031D8(v130, v131, &v157);

                      *(v128 + 4) = v132;
                      _os_log_impl(&dword_2286FF000, v126, v127, "[%{public}s] Version, locale, and store identifier match up; we don't need to do anything here!", v128, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v129);
                      MEMORY[0x22AABFD90](v129, -1, -1);
                      MEMORY[0x22AABFD90](v128, -1, -1);
                    }

                    v145(v125, v24);
                    return;
                  }

                  v124 = sub_2287CBD00();

                  if (v124)
                  {
LABEL_55:

                    goto LABEL_56;
                  }

                  goto LABEL_47;
                }
              }

              else if (!v158)
              {
                goto LABEL_55;
              }

              goto LABEL_46;
            }

LABEL_47:
            sub_2287558C4();
            v105 = v151;
            sub_2287CAA10();
            v106 = v149;

            v107 = sub_2287CAA40();
            v108 = sub_2287CB610();

            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v157 = v110;
              *v109 = 136446722;
              v111 = sub_2287CBE60();
              v113 = sub_2287031D8(v111, v112, &v157);

              *(v109 + 4) = v113;
              *(v109 + 12) = 2080;
              v114 = v146;
              v115 = sub_2287031D8(v146, v149, &v157);

              *(v109 + 14) = v115;
              *(v109 + 22) = 2080;
              v116 = v144;
              *(v109 + 24) = sub_2287031D8(v144, v148, &v157);
              _os_log_impl(&dword_2286FF000, v107, v108, "[%{public}s] Updating UserDefaults with new version: %s and locale: %s", v109, 0x20u);
              swift_arrayDestroy();
              v117 = v110;
              v106 = v149;
              MEMORY[0x22AABFD90](v117, -1, -1);
              MEMORY[0x22AABFD90](v109, -1, -1);

              v145(v151, v24);
              v118 = v143;
            }

            else
            {

              v145(v105, v24);
              v118 = v143;
              v114 = v146;
              v116 = v144;
            }

            v159 = v114;
            v160 = v106;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();
            v159 = v116;
            v160 = v148;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();
            v119 = [v118 identifier];
            if (v119)
            {
              v120 = v119;
              v121 = sub_2287CB220();
              v123 = v122;
            }

            else
            {
              v121 = 0;
              v123 = 0;
            }

            v159 = v121;
            v160 = v123;
            swift_beginAccess();
            sub_2287C9B90();
            swift_endAccess();

            return;
          }

          goto LABEL_67;
        }
      }

LABEL_66:

      goto LABEL_67;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_2287CAA10();
  v133 = sub_2287CAA40();
  v134 = sub_2287CB5F0();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v161 = v136;
    *v135 = 136446210;
    v137 = sub_2287CBE60();
    v139 = sub_2287031D8(v137, v138, &v161);

    *(v135 + 4) = v139;
    _os_log_impl(&dword_2286FF000, v133, v134, "[%{public}s] No persistent store exists", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v136);
    MEMORY[0x22AABFD90](v136, -1, -1);
    MEMORY[0x22AABFD90](v135, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
}

uint64_t sub_228703004(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_22870304C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2287CBD80();
  sub_2287CB290();
  v6 = sub_2287CBDB0();

  return sub_2287030C4(a1, a2, v6);
}

unint64_t sub_2287030C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2287CBD00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22870317C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2287031D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2287032A4(v11, 0, 0, 1, a1, a2);
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
    sub_22870317C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2287032A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_228703558(a5, a6);
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
    result = sub_2287CBA80();
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

void *sub_2287033B0(uint64_t a1, uint64_t a2)
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

  sub_2287035A4(0, &qword_280DE3998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_228703428(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2287033B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2287CBA80();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2287CB2D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2287033B0(v10, 0);
        result = sub_2287CBA10();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_228703558(uint64_t a1, unint64_t a2)
{
  v4 = sub_228703428(a1, a2);
  sub_228703694(&unk_283BBFE00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void sub_2287035A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2287CBCD0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2287035F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228703640(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228703694(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22870E76C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22870386C()
{
  v0 = *MEMORY[0x277CCA198];
  result = sub_2287CB220();
  qword_280DE62C8 = result;
  unk_280DE62D0 = v2;
  return result;
}

uint64_t sub_2287038A4(uint64_t a1)
{
  sub_228703900();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228703900()
{
  if (!qword_280DE1278)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1278);
    }
  }
}

uint64_t sub_2287039F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_2287C9910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  v14 = sub_2287C99A0();
  a4(a1, a2, a3);

  if (!v4)
  {
    v14 = sub_2287C9900();
    (*(v10 + 8))(v13, v9);
  }

  return v14;
}

void sub_228703B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v47 - v9;
  v10 = sub_2287C9590();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2287C9B20();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v47 = v10;
    v48 = a4;
    v49 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v17, 0);
    v18 = v58;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v55 = *(v19 + 56);
    v56 = v20;
    v54 = (v19 - 8);
    do
    {
      v22 = v57;
      v23 = v19;
      v56(v16, v21, v57);
      v24 = sub_2287C9B10();
      v26 = v25;
      (*v54)(v16, v22);
      v58 = v18;
      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2287042D4((v27 > 1), v28 + 1, 1);
        v18 = v58;
      }

      *(v18 + 16) = v28 + 1;
      v29 = v18 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 += v55;
      --v17;
      v19 = v23;
    }

    while (v17);
    a4 = v48;
    a2 = v49;
    v10 = v47;
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2287CCFF0;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_2287043F8();
  *(v30 + 32) = 0xD000000000000013;
  *(v30 + 40) = 0x80000002287D03B0;
  sub_2287035F0(0, &qword_280DE3A00, v31, MEMORY[0x277D83940]);
  *(v30 + 96) = v32;
  *(v30 + 104) = sub_22870444C();
  *(v30 + 72) = v18;
  v33 = sub_2287CB550();
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2287CCC50;
  *(v34 + 32) = v33;
  v58 = v34;
  v35 = v52;
  sub_2287044C8(v51, v52);
  v36 = v53;
  if ((*(v53 + 48))(v35, 1, v10) == 1)
  {
    v37 = v33;
    sub_22870455C(v35);
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v38 = v50;
  (*(v36 + 32))(v50, v35, v10);
  v39 = v33;
  _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
  MEMORY[0x22AABEA50]();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
    v38 = v50;
  }

  sub_2287CB420();
  (*(v36 + 8))(v38, v10);
  if (a4)
  {
LABEL_13:
    sub_2287CA800();
    MEMORY[0x22AABDEC0](a4);
    MEMORY[0x22AABEA50]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

LABEL_16:
  if (a2)
  {
    v40 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(a2);
    MEMORY[0x22AABEA50]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
  }

  v41 = sub_2287CB390();

  v42 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v42;
}

char *sub_2287041B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2287042D4(char *a1, int64_t a2, char a3)
{
  result = sub_2287041B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2287042F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228704344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_228704394()
{
  result = qword_280DE3840;
  if (!qword_280DE3840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3840);
  }

  return result;
}

unint64_t sub_2287043F8()
{
  result = qword_280DE38A8[0];
  if (!qword_280DE38A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE38A8);
  }

  return result;
}

unint64_t sub_22870444C()
{
  result = qword_280DE38A0;
  if (!qword_280DE38A0)
  {
    sub_2287035F0(255, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE38A0);
  }

  return result;
}

uint64_t sub_2287044C8(uint64_t a1, uint64_t a2)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22870455C(uint64_t a1)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2287045E8()
{
  type metadata accessor for BaseFeedPopulationManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DE1288 = result;
  return result;
}

uint64_t static FoundationPluginBundleProvider.sharedInstance.getter()
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_228704724(uint64_t (*a1)(void))
{
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  sub_2287C99A0();
  v7 = a1();

  v19 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = (*(v9 + 64) + 32) & ~*(v9 + 64);
    v18[1] = v7;
    v13 = v7 + v12;
    v14 = *(v9 + 56);
    do
    {
      v10(v6, v13, v2);
      sub_2287C9900();
      v15 = (*(v9 - 8))(v6, v2);
      MEMORY[0x22AABEA50](v15);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18[0] = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v13 += v14;
      --v8;
    }

    while (v8);
    v16 = v19;

    return v16;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

id static FeedItem.predicateFor(contentKinds:keyword:relevantDateRange:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v35 = a1;
  v7 = sub_2287C9590();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2287CCFF0;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = sub_2287043F8();
  *(v18 + 32) = 0x7364726F7779656BLL;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;

  v21 = sub_2287CB550();
  (*(v8 + 56))(v17, 1, 1, v7);
  v22 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v35, 0, v17, v36);
  sub_22870455C(v17);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2287CCFD0;
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  v38 = v23;
  sub_2287044C8(v37, v15);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v24 = v21;
    v25 = v22;
    sub_22870455C(v15);
  }

  else
  {
    v26 = v34;
    (*(v8 + 32))(v34, v15, v7);
    v27 = v21;
    v28 = v22;
    _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
    MEMORY[0x22AABEA50]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
    (*(v8 + 8))(v26, v7);
  }

  v29 = sub_2287CB390();

  v30 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v30;
}

id static FeedItem.predicateForMissingKeyword(_:)(uint64_t a1, uint64_t a2)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCFF0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2287043F8();
  *(v4 + 32) = 0x7364726F7779656BLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v7 = sub_2287CB550();
  v8 = [objc_opt_self() notPredicateWithSubpredicate_];

  return v8;
}

id _sSo22NSManagedObjectContextC18HealthPlatformCoreE22makeFeedItemsPredicate3for27associatedProfileIdentifierSo11NSPredicateC0dE00H0C4KindO_So09HKProfileN0CSgtF_0(char a1)
{
  sub_228705538(0, &qword_280DE3A98, MEMORY[0x277CC9578]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_2287C97C0();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA640();
  v9 = sub_2287CA630();
  v10 = sub_2287CB210();
  v11 = objc_opt_self();
  v12 = [v11 expressionForKeyPath_];

  v13 = v9;
  v14 = sub_2287CB210();
  v15 = [v11 expressionForSubquery:v12 usingIteratorVariable:v14 predicate:v13];

  v37 = v15;
  v16 = [v15 predicate];
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_22870558C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2287CCFE0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2287043F8();
  *(v17 + 64) = v18;
  strcpy((v17 + 32), "hideInDiscover");
  *(v17 + 47) = -18;
  v19 = sub_2287CB550();
  sub_2287035A4(0, &qword_280DE1268);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2287CCFD0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  v38 = v20;
  v35 = v16;
  v21 = v19;
  v22 = v5;
  v23 = v21;
  LOBYTE(v21) = a1;
  v24 = v36;
  Feed.Kind.earliestDisplayDateUpdated.getter(v21, v5);
  if ((*(v24 + 48))(v5, 1, v6) == 1)
  {
    sub_228705C28(v5);
  }

  else
  {
    v25 = v34;
    (*(v24 + 32))(v34, v22, v6);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2287CCFF0;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v18;
    *(v26 + 32) = 0xD00000000000001CLL;
    *(v26 + 40) = 0x80000002287CFF10;
    v27 = sub_2287C9770();
    *(v26 + 96) = sub_228703004(0, &qword_280DE1928, 0x277CBEAA8);
    *(v26 + 104) = sub_228705E60();
    *(v26 + 72) = v27;
    v28 = sub_2287CB550();
    MEMORY[0x22AABEA50]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();

    (*(v24 + 8))(v25, v6);
  }

  v29 = sub_2287CB390();

  v30 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v30;
}

id NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)(char a1)
{
  v2 = v1;
  sub_2287CA800();
  v4 = MEMORY[0x22AABDDF0]();
  v5 = _sSo22NSManagedObjectContextC18HealthPlatformCoreE22makeFeedItemsPredicate3for27associatedProfileIdentifierSo11NSPredicateC0dE00H0C4KindO_So09HKProfileN0CSgtF_0(a1);
  [v4 setPredicate_];

  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_2287CB210();
  v8 = [v6 initWithKey:v7 ascending:1];

  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_2287CB210();
  v11 = [v9 initWithKey:v10 ascending:1];

  sub_2287035A4(0, &qword_280DE1268);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CCFD0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v13 = v8;
  v14 = v11;
  v15 = sub_2287CB390();

  [v4 setSortDescriptors_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v4 managedObjectContext:v2 sectionNameKeyPath:0 cacheName:0];
  return v16;
}

void sub_228705538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB820();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22870558C()
{
  if (!qword_280DE3848)
  {
    sub_22870D3A8(255, &qword_280DE3840);
    v0 = sub_2287CBCD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3848);
    }
  }
}

uint64_t Feed.Kind.earliestDisplayDateUpdated.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = a1;
  v2 = sub_2287C97C0();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_228705B74(0, &qword_280DE3958, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  sub_228705B74(0, &unk_280DE3960, MEMORY[0x277CC99E8], v5);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  v20 = sub_2287C9610();
  v36 = *(v20 - 8);
  v37 = v20;
  v21 = *(v36 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287C9870();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v41 == 2)
  {
    sub_2287C9850();
    if (qword_280DE1430 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v15, qword_280DE1438);
    (*(v16 + 16))(v19, v29, v15);
    sub_2287C9B80();
    result = (*(v16 + 8))(v19, v15);
    if (__OFSUB__(0, v42))
    {
      __break(1u);
    }

    else
    {
      sub_2287C9850();
      (*(v25 + 56))(v13, 0, 1, v24);
      v31 = sub_2287C98A0();
      (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
      sub_2287C9600();
      v32 = v38;
      sub_2287C97B0();
      sub_2287C9840();
      (*(v40 + 8))(v32, v2);
      (*(v36 + 8))(v23, v37);
      return (*(v25 + 8))(v28, v24);
    }
  }

  else
  {
    v33 = v39;
    v34 = *(v40 + 56);

    return v34(v33, 1, 1, v2);
  }

  return result;
}

void sub_228705B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228705BD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228705C28(uint64_t a1)
{
  sub_228705C84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228705C84()
{
  if (!qword_280DE3A98)
  {
    sub_2287C97C0();
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3A98);
    }
  }
}

uint64_t sub_228705CDC()
{
  sub_228705BD8(0, &qword_280DE17C0, MEMORY[0x277D83B88], MEMORY[0x277D11E70]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280DE1438);
  __swift_project_value_buffer(v1, qword_280DE1438);
  v2 = *MEMORY[0x277CCE370];
  sub_2287CB220();
  sub_228703004(0, &qword_280DE3890, 0x277CBEBD0);
  sub_2287CB640();
  return sub_2287C9BA0();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_228705E60()
{
  result = qword_280DE1920;
  if (!qword_280DE1920)
  {
    sub_228703004(255, &qword_280DE1928, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE1920);
  }

  return result;
}

id FeedItem.associatedDisplayCategory.getter()
{
  v1 = [v0 categoryIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() categoryWithName_];

  return v3;
}

uint64_t BasicPluginInfo.init(bundle:)(void *a1)
{
  v2 = sub_228705FD4(a1);

  return v2;
}

uint64_t sub_228705FD4(void *a1)
{
  v1[2] = a1;
  v2 = a1;
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2287CB220();
    v7 = v6;

    v1[3] = v5;
    v1[4] = v7;
    return v1;
  }

  else
  {
    sub_2287CBA20();

    v9 = [v2 description];
    v10 = sub_2287CB220();
    v12 = v11;

    MEMORY[0x22AABE980](v10, v12);

    MEMORY[0x22AABE980](0xD00000000000001BLL, 0x80000002287D1460);
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

uint64_t ForYouSectionKind.localizedTitle.getter()
{
  type metadata accessor for SummaryTabFeedPopulationManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2287C9620();

  return v2;
}

uint64_t type metadata accessor for SummaryTabFeedPopulationManager()
{
  result = qword_280DE1418;
  if (!qword_280DE1418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228706364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2287063C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id static SummaryTabRelevanceEngineCoordinator.defaultModelContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = sub_2287C9700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  sub_2287C9F10();
  sub_2287C9F00();
  sub_2287C96C0();
  (*(v3 + 8))(v7, v2);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_2287C96A0();
  v21[0] = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v21];

  v20[0] = v21[0];
  if (v12)
  {
    (*(v3 + 32))(a1, v9, v2);
    v13 = *MEMORY[0x277D85DE8];
    v14 = v20[0];

    return v14;
  }

  else
  {
    v16 = v20[0];
    v17 = sub_2287C9640();

    swift_willThrow();
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000036, 0x80000002287D1500);
    v20[1] = v17;
    v18 = v17;
    sub_22874A0A4();
    v19 = sub_2287CB270();
    MEMORY[0x22AABE980](v19);

    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

void sub_2287066F4()
{
  sub_2287063C8(319, &qword_280DE17B8, MEMORY[0x277D12000], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_228706808@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_228706830(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2287C9E70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2287068DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2287C9E70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228706998()
{
  v1 = *(v0 + 24);

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2287069F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_228706A30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_228706A64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228706A9C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228706AD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_228706AEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228706B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228706B5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_228706BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_228706C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3A98, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_228706D8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2287C9B20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_13:
    v15 = *(v8 + 48);

    return v15(a1 + v9, a2, v7);
  }

  sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_13;
  }

  v12 = sub_2287C97C0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[12];
    goto LABEL_13;
  }

  sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[13];
    goto LABEL_13;
  }

  v17 = *(a1 + a3[14] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_228707078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2287C9B20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_22872C8E0(0, &qword_280DE3398, MEMORY[0x277D12080], MEMORY[0x277D83D88]);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      sub_22872C8E0(0, &qword_280DE33C8, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[8];
      }

      else
      {
        v14 = sub_2287C97C0();
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[9];
        }

        else
        {
          sub_22872C8E0(0, &qword_280DE33E0, MEMORY[0x277D11FA8], MEMORY[0x277D83D88]);
          if (*(*(v15 - 8) + 84) == a3)
          {
            v9 = v15;
            v10 = *(v15 - 8);
            v11 = a4[12];
          }

          else
          {
            sub_22872C8E0(0, &qword_280DE3400, MEMORY[0x277D11F48], MEMORY[0x277D83D88]);
            if (*(*(v16 - 8) + 84) != a3)
            {
              *(a1 + a4[14] + 8) = (a2 - 1);
              return;
            }

            v9 = v16;
            v10 = *(v16 - 8);
            v11 = a4[13];
          }
        }
      }
    }
  }

  v17 = *(v10 + 56);

  v17(a1 + v11, a2, a2, v9);
}

uint64_t sub_228707378()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287073B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_228739D88();
}

uint64_t sub_2287073EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22872CC58(v4);
}

__n128 sub_228707424(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_228707430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_228739DBC();
  *a2 = v4;

  return v4;
}

uint64_t sub_2287074A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_228739DF0();
}

uint64_t sub_2287074E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_22872CE04(v4);
}

uint64_t sub_228707518()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228707558()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2287075B8()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287075F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228707640()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6 + v4[9]));
  v8 = v4[10];
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = v4[11];
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2287077E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for GeneratorPipelineManagerWrapper() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + v6 + v4[9]));
  v8 = v4[10];
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = v4[11];
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2287079C8()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_228707A04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228707A3C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228707A74()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228707AC8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228707B04()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228707B3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228707BD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228707C28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228707C60()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228707C98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228707CE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_228707D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_228707D94@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

id sub_228707DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_228707E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_228707E8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_228707ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287CA1F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_228707F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287CA1F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22870804C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

id sub_2287080A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_228749F18();
  *a2 = v4;

  return v4;
}

__n128 sub_228708118(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_228708124()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870816C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2287081AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_22874D558();
  *a2 = result;
  return result;
}

void sub_2287081D8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = *a1;
  v3 = v2;
}

id sub_228708228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_22874DAE4();
  *a2 = result;
  return result;
}

void sub_228708254(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine);
  *(*a2 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine) = *a1;
  v3 = v2;
}

void sub_2287082A4(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22874DAE4();
  v5 = [v4 automaticallyResumeEngine];

  *a2 = v5;
}

void sub_2287082F0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22874DAE4();
  [v4 setAutomaticallyResumeEngine_];
}

uint64_t sub_228708348()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708380()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2287083C4()
{
  if (MEMORY[0x277D85020])
  {
    sub_2287507F0();
  }
}

uint64_t sub_22870840C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2287C9E70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_2287084B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2287C9E70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_228708570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287085D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 256);
}

uint64_t sub_228708624()
{
  sub_22877017C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2287086C0()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = v0 + v4;
  v8 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v9 = *(v2 + 40);
  v10 = sub_2287C9ED0();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v2 + 44);
  v12 = sub_2287C9810();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22870881C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287088B4()
{
  sub_228771868();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + v4 + 8);

  sub_2287715EC(0, &qword_280DE2E58, &qword_280DE1A10, MEMORY[0x277D120A0], type metadata accessor for AnyGenerator);
  v8 = v7;
  v9 = *(v7 + 44);
  v10 = sub_2287C9E70();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = *(v0 + v4 + *(v8 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v12 = v2[10];
  v13 = sub_2287C9ED0();
  (*(*(v13 - 8) + 8))(v0 + v4 + v12, v13);
  v14 = v2[11];
  v15 = sub_2287C9810();
  (*(*(v15 - 8) + 8))(v0 + v4 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228708AA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708AE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B20()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708B98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_228708C18()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v8 = *(v2 + 40);
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);
  v10 = *(v2 + 44);
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v0 + v4 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_228708D58()
{
  sub_2287691F4(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v4;
  v7 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v8 = *(v2 + 40);
  v9 = sub_2287C9ED0();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v2 + 44);
  v11 = sub_2287C9810();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_228708E9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228708ED4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228708F68()
{
  sub_228774694(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + v4 + 8);

  sub_22870CAC4(0);
  v8 = v7;
  v9 = *(v7 + 44);
  v10 = sub_2287C9E70();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = *(v0 + v4 + *(v8 + 48) + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + v2[9]));
  v12 = v2[10];
  v13 = sub_2287C9ED0();
  (*(*(v13 - 8) + 8))(v0 + v4 + v12, v13);
  v14 = v2[11];
  v15 = sub_2287C9810();
  (*(*(v15 - 8) + 8))(v0 + v4 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2287091D0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_228709240()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709278()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287092B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_228709300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_2287010E4(v3 + 16, a2);
}

uint64_t sub_228709358()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2287093B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287093EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_228709424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_228709480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

id sub_2287094D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_22877FAF8();
  *a2 = result;
  return result;
}

uint64_t sub_228709510()
{
  MEMORY[0x22AABFE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709564()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287095E4()
{
  sub_228770F78();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v0 + v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4 + 8));
  v7 = *(v2 + 40);
  v8 = sub_2287C9ED0();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v2 + 44);
  v10 = sub_2287C9810();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22870971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287C97C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2287097D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287C97C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_22870988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

void sub_228709974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2287953E4(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }
}

uint64_t sub_228709A60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709A98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228709AD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_228709B20()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_228798C94(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_228709B68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228709BB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_228709BF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709C34()
{
  v1 = *(v0 + 24);

  sub_228746048(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_228709C90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_228709DE8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228709EC4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_228709F04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_228709F3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v2 | 7);
}

uint64_t sub_228709FE4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22870A07C()
{
  v1 = v0[2];
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22870A160()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A198()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A1D0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22870A290()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22870A3E4()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_22870A534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A56C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A5A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A5DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870A614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22870A654()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A68C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870A6C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870A714()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22870A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2287C9700();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_2287C97C0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22870A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2287C9700();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_2287C97C0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22870AA08()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  if (v0[9])
  {
    v3 = v0[10];
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22870AA60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870AAB8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870AAF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870AB40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870AB98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870ABDC()
{
  v1 = sub_2287C9E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22870AC64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22870ACAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870ACE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for FeedPopulationListenerSchedulerConfiguration() - 8);
  v4 = *(*v3 + 80);
  v15 = *(*v3 + 64);
  v5 = (v4 + 32) & ~v4;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);
  v6 = v3[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5 + v6, AssociatedTypeWitness);
  v8 = v3[12];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v5 + v8, v9);
  }

  v11 = (v15 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v4 | 7);
}

uint64_t sub_22870AF20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870AF58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870AFCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B01C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22870B054()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B0B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870B0EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22870B124()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22870B15C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22870B1AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22870B20C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22870B26C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22870B2D4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22870B33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22870B39C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_22870B608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateRangeRelevanceProviderManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22870B688()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22870B6D0()
{
  v1 = *v0;
  sub_2287CBD80();
  MEMORY[0x22AABF460](v1);
  return sub_2287CBDB0();
}

uint64_t sub_22870B714()
{
  v19 = sub_2287C97C0();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = sub_2287C9590();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA250();
  v12 = sub_2287C9580();
  v13 = *(v8 + 8);
  result = v13(v11, v7);
  if ((v12 & 1) == 0)
  {
    sub_2287CA250();
    sub_2287C9570();
    v13(v11, v7);
    v15 = sub_2287C9780();
    v18 = *(v0 + 8);
    v18(v6, v19);
    if (v15)
    {
      sub_2287CA240();
      sub_2287CA250();
      sub_2287C9570();
      v13(v11, v7);
    }

    else
    {
      sub_2287CA250();
      sub_2287C9540();
      v13(v11, v7);
      sub_2287CA230();
    }

    sub_2287C9730();
    sub_2287C9730();
    sub_2287C9730();
    REPercentThroughRange();
    v17 = v18;
    v16 = v19;
    v18(v4, v19);
    return v17(v6, v16);
  }

  return result;
}

uint64_t sub_22870BA4C(void *a1, void *a2)
{
  v4 = sub_2287CA280();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228705C84();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287C97C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v18 = [a2 attributeForKey_]) != 0)
  {
    v25[1] = v18;
    sub_22870BE00();
    v19 = swift_dynamicCast();
    (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v17, v12, v13);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_2287C97B0();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_228705C28(v12);
  }

LABEL_8:
  type metadata accessor for DateRangeRelevanceProvider();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    (*(v5 + 16))(v8, v20 + OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval, v4);
    v21 = a1;
    sub_22870B714();
    v23 = [objc_opt_self() featureValueWithDouble_];

    (*(v5 + 8))(v8, v4);
    (*(v14 + 8))(v17, v13);
    return v23;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

unint64_t sub_22870BE00()
{
  result = qword_27D8509E0;
  if (!qword_27D8509E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8509E0);
  }

  return result;
}

unint64_t sub_22870BE64()
{
  result = qword_280DE35E0;
  if (!qword_280DE35E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE35E0);
  }

  return result;
}

void sub_22870BF00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22870BFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AnyPipeline.domain.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPipeline.wrappedTypeName.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AnyPipeline.debugDescription.getter(uint64_t a1)
{
  v3 = sub_2287C9E70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_2287CBE60();
  v11[1] = v8;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](*(v1 + *(a1 + 40)), *(v1 + *(a1 + 40) + 8));
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  (*(v4 + 16))(v7, v1 + *(a1 + 36), v3);
  v9 = sub_2287CB250();
  MEMORY[0x22AABE980](v9);

  return v11[0];
}

uint64_t AnyPipeline.publisher.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_22870C298()
{
  sub_22870D2EC();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_2287C9F90();
  sub_22870D284(0, &qword_280DE1B50, &qword_280DE3358);
  sub_22870C510(0);
  sub_22870D404(&qword_280DE1B58, &qword_280DE1B50, &qword_280DE3358);
  sub_2287CAF70();

  sub_22870CB7C(&qword_280DE1C58, sub_22870D2EC);
  v6 = sub_2287CAF40();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_22870C47C()
{
  if (!qword_280DE2F00)
  {
    sub_22870C510(255);
    sub_22870CB7C(qword_280DE2E60, sub_22870C510);
    v0 = type metadata accessor for AnyPipeline();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2F00);
    }
  }
}

void sub_22870C530()
{
  if (!qword_280DE1A10)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1A10);
    }
  }
}

uint64_t sub_22870C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = a3(0);
  v16 = a6 + *(v15 + 36);
  v21(a1, a2);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a6 = v22;
  a6[1] = v14;
  v18 = (a6 + *(v15 + 40));
  *v18 = result;
  v18[1] = v19;
  return result;
}

uint64_t sub_22870C788()
{
  sub_22870D1C8();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_2287CA4E0();
  sub_22870D284(0, &qword_280DE1B60, &qword_280DE3388);
  sub_22870CAC4(0);
  sub_22870D404(&qword_280DE1B68, &qword_280DE1B60, &qword_280DE3388);
  sub_2287CAF70();

  sub_22870CB7C(&qword_280DE1C68, sub_22870D1C8);
  v6 = sub_2287CAF40();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_22870CA30()
{
  if (!qword_280DE2EF0)
  {
    sub_22870CAC4(255);
    sub_22870CB7C(&qword_280DE2E50, sub_22870CAC4);
    v0 = type metadata accessor for AnyPipeline();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2EF0);
    }
  }
}

void sub_22870CAE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for AnyGenerator();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22870CB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22870CBDC(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return a2(v3, v4);
}

uint64_t AnyPipelineProvider.makeGeneratorPipelines(for:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

void sub_22870CC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22870CCFC()
{
  if (!qword_280DE2DB0)
  {
    sub_22870C47C();
    sub_22870CB7C(qword_280DE2F10, sub_22870C47C);
    v0 = type metadata accessor for AnyPipelineProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2DB0);
    }
  }
}

uint64_t sub_22870CDE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22870CC98(0, a3, a4, type metadata accessor for GeneratorPipelineProviderWrapper);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22870CE64()
{
  if (!qword_280DE2DA0)
  {
    sub_22870CA30();
    sub_22870CB7C(&qword_280DE2EF8, sub_22870CA30);
    v0 = type metadata accessor for AnyPipelineProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE2DA0);
    }
  }
}

unint64_t sub_22870CF00()
{
  result = sub_22870CFB4();
  if (v1 <= 0x3F)
  {
    result = sub_2287C9E70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22870CFB4()
{
  result = qword_280DDFDF0;
  if (!qword_280DDFDF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DDFDF0);
  }

  return result;
}

uint64_t sub_22870D018()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22870D06C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22870D0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22870D114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_22870D15C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22870D1C8()
{
  if (!qword_280DE1C60)
  {
    sub_22870D284(255, &qword_280DE1B60, &qword_280DE3388);
    sub_22870CAC4(255);
    sub_22870D404(&qword_280DE1B68, &qword_280DE1B60, &qword_280DE3388);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C60);
    }
  }
}

void sub_22870D284(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_22870D3A8(255, a3);
    v4 = sub_2287CACD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22870D2EC()
{
  if (!qword_280DE1C50)
  {
    sub_22870D284(255, &qword_280DE1B50, &qword_280DE3358);
    sub_22870C510(255);
    sub_22870D404(&qword_280DE1B58, &qword_280DE1B50, &qword_280DE3358);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1C50);
    }
  }
}

uint64_t sub_22870D3A8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22870D404(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22870D284(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(uint64_t a1, uint64_t a2)
{
  sub_2287CA800();
  v4 = MEMORY[0x22AABDDF0]();
  v5 = [v4 relationshipKeyPathsForPrefetching];
  if (v5)
  {
    v6 = v5;
    sub_2287CB3A0();
  }

  sub_22870E098(&unk_283BBFE28);
  v7 = sub_2287CB390();

  [v4 setRelationshipKeyPathsForPrefetching_];

  v8 = _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(a1, a2);
  [v4 setPredicate_];

  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_2287CB210();
  v11 = [v9 initWithKey:v10 ascending:1];

  sub_2287035A4(0, &qword_280DE1268);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CCC50;
  *(v12 + 32) = v11;
  sub_228703004(0, &qword_280DE3878, 0x277CCAC98);
  v13 = v11;
  v14 = sub_2287CB390();

  [v4 setSortDescriptors_];

  v15 = sub_2287CB7B0();
  return v15;
}

uint64_t NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)(int a1, void *a2)
{
  v3 = v2;
  sub_228705538(0, &qword_280DE3838, MEMORY[0x277CC95F0]);
  v102 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v98 - v14;
  v16 = sub_2287CAA50();
  v103 = *(v16 - 8);
  v104 = v16;
  v17 = *(v103 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  sub_2287CA640();
  v101 = a1;
  v26 = sub_2287CA630();
  v27 = sub_2287CA300();

  if (!v27)
  {
    sub_2287CA9E0();
    v39 = a2;
    v40 = v3;
    v41 = sub_2287CAA40();
    v42 = sub_2287CB610();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v105 = v100;
      *v43 = 136446722;
      v44 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v46 = sub_2287031D8(v44, v45, &v105);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      if (a2)
      {
        v47 = [v39 identifier];
        sub_2287C97F0();

        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      v60 = sub_2287C9810();
      (*(*(v60 - 8) + 56))(v10, v48, 1, v60);
      v61 = sub_2287CB250();
      v63 = sub_2287031D8(v61, v62, &v105);

      *(v43 + 14) = v63;
      *(v43 + 22) = 2082;
      v64 = v40;
      v65 = [v64 description];
      v66 = sub_2287CB220();
      v68 = v67;

      v69 = sub_2287031D8(v66, v68, &v105);

      *(v43 + 24) = v69;
      _os_log_impl(&dword_2286FF000, v41, v42, "No feed of kind %{public}s for profile %{public}s detected; eligible for display FALSE; %{public}s", v43, 0x20u);
      v70 = v100;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v70, -1, -1);
      MEMORY[0x22AABFD90](v43, -1, -1);
    }

    (*(v103 + 8))(v20, v104);
    return 0;
  }

  if (Feed.isTooOldForDisplay.getter())
  {
    sub_2287CA9E0();
    v28 = a2;
    v29 = v27;
    v30 = v3;
    v31 = sub_2287CAA40();
    v32 = sub_2287CB610();

    if (os_log_type_enabled(v31, v32))
    {
      LODWORD(v100) = v32;
      v33 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v105 = v99;
      *v33 = 136446978;
      v34 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v36 = sub_2287031D8(v34, v35, &v105);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      if (a2)
      {
        v37 = [v28 identifier];
        sub_2287C97F0();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v71 = sub_2287C9810();
      (*(*(v71 - 8) + 56))(v15, v38, 1, v71);
      v72 = sub_2287CB250();
      v74 = sub_2287031D8(v72, v73, &v105);

      *(v33 + 14) = v74;
      *(v33 + 22) = 2114;
      v75 = [v29 dateUpdated];
      *(v33 + 24) = v75;
      v76 = v98;
      *v98 = v75;
      *(v33 + 32) = 2082;
      v77 = v30;
      v78 = [v77 description];
      v79 = sub_2287CB220();
      v81 = v80;

      v82 = sub_2287031D8(v79, v81, &v105);

      *(v33 + 34) = v82;
      _os_log_impl(&dword_2286FF000, v31, v100, "Found feed of kind %{public}s for profile %{public}s too old for display (last updated %{public}@); eligible for display FALSE; %{public}s", v33, 0x2Au);
      sub_2287038A4(v76);
      MEMORY[0x22AABFD90](v76, -1, -1);
      v83 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v83, -1, -1);
      MEMORY[0x22AABFD90](v33, -1, -1);
    }

    else
    {
    }

    (*(v103 + 8))(v25, v104);
    return 0;
  }

  sub_2287CA9E0();
  v49 = a2;
  v50 = v27;
  v51 = v3;
  v52 = sub_2287CAA40();
  v53 = sub_2287CB610();

  if (os_log_type_enabled(v52, v53))
  {
    LODWORD(v100) = v53;
    v54 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v105 = v99;
    *v54 = 136446978;
    v55 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v57 = sub_2287031D8(v55, v56, &v105);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    if (a2)
    {
      v58 = [v49 identifier];
      sub_2287C97F0();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v85 = sub_2287C9810();
    (*(*(v85 - 8) + 56))(v13, v59, 1, v85);
    v86 = sub_2287CB250();
    v88 = sub_2287031D8(v86, v87, &v105);

    *(v54 + 14) = v88;
    *(v54 + 22) = 2114;
    v89 = [v50 dateUpdated];
    *(v54 + 24) = v89;
    v90 = v98;
    *v98 = v89;
    *(v54 + 32) = 2082;
    v91 = v51;
    v92 = [v91 description];
    v93 = sub_2287CB220();
    v95 = v94;

    v96 = sub_2287031D8(v93, v95, &v105);

    *(v54 + 34) = v96;
    _os_log_impl(&dword_2286FF000, v52, v100, "Feed of kind %{public}s for profile %{public}s is new enough; eligible for display TRUE (last updated %{public}@); %{public}s", v54, 0x2Au);
    sub_2287038A4(v90);
    MEMORY[0x22AABFD90](v90, -1, -1);
    v97 = v99;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v97, -1, -1);
    MEMORY[0x22AABFD90](v54, -1, -1);
  }

  else
  {
  }

  (*(v103 + 8))(v23, v104);
  return 1;
}

uint64_t sub_22870E098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_228722DF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22870E1E4(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_2287CB920();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_2287CB920();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_22870E310(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_228723670(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = (v10 - v12);
  result = sub_22872A220(&v49, &v4[3 * v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = result + v17;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v52 = v24;
          v53 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v46 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    v4[2] = v19;
  }

  result = v49;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v3 = v4[2];
  v14 = v50;
  v15 = v51;
  v2 = v52;
  v48 = v50;
  if (!v53)
  {
    goto LABEL_19;
  }

  v20 = (v53 - 1) & v53;
  v21 = __clz(__rbit64(v53)) | (v52 << 6);
  v46 = v51;
  v22 = (v51 + 64) >> 6;
LABEL_27:
  v47 = result;
  v27 = (result[6] + 16 * v21);
  v29 = *v27;
  v28 = v27[1];
  v30 = *(result[7] + 8 * v21);

  v31 = v30;
  v32 = v30;
  v33 = v48;
LABEL_29:
  while (1)
  {
    v34 = v4[3];
    v35 = v34 >> 1;
    if ((v34 >> 1) < v3 + 1)
    {
      break;
    }

    if (v3 < v35)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v3;
  }

  v43 = v32;
  v44 = sub_228723670((v34 > 1), v3 + 1, 1, v4);
  v33 = v48;
  v4 = v44;
  v32 = v43;
  v35 = v4[3] >> 1;
  if (v3 >= v35)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v36 = &v4[3 * v3 + 4];
    *v36 = v29;
    v36[1] = v28;
    v36[2] = v32;
    ++v3;
    if (!v20)
    {
      break;
    }

    result = v47;
LABEL_38:
    v39 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v40 = v39 | (v2 << 6);
    v41 = (result[6] + 16 * v40);
    v29 = *v41;
    v28 = v41[1];
    v42 = *(result[7] + 8 * v40);

    v32 = v42;
    v33 = v48;
    if (v3 == v35)
    {
      v3 = v35;
      v4[2] = v35;
      goto LABEL_29;
    }
  }

  v37 = v2;
  result = v47;
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v38 >= v22)
    {
      break;
    }

    v20 = *(v33 + 8 * v38);
    ++v37;
    if (v20)
    {
      v2 = v38;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v45 = v2 + 1;
  }

  else
  {
    v45 = v22;
  }

  v51 = v46;
  v52 = v45 - 1;
  v53 = 0;
  v4[2] = v3;
LABEL_13:
  result = sub_22870B3D4();
  *v1 = v4;
  return result;
}

uint64_t sub_22870E628(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_22870E76C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287035A4(0, &qword_280DE3998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a2;
  v62 = a4;
  v57 = a1;
  v59 = sub_2287CAB40();
  v54 = *(v59 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v9 = &v46 - v8;
  v10 = sub_2287CB730();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22870EED8();
  v15 = v14;
  v50 = v14;
  v56 = *(v14 - 8);
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v60 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x277CBCC08];
  v51 = sub_22870EF84(&qword_280DE0570, sub_22870EED8);
  v63 = v15;
  v64 = a3;
  v65 = v51;
  v66 = a5;
  v18 = sub_2287CAAB0();
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x28223BE20](v18);
  v48 = &v46 - v20;
  v21 = sub_2287CA1F0();
  WitnessTable = swift_getWitnessTable();
  v46 = v21;
  v22 = sub_2287CAB50();
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  v27 = [objc_opt_self() defaultCenter];
  v28 = sub_2287CB6F0();
  sub_2287CB740();

  v29 = swift_allocObject();
  v30 = v62;
  v29[2] = v61;
  v29[3] = a3;
  v29[4] = v30;
  v29[5] = a5;
  sub_22870EF84(&qword_280DDFEF0, MEMORY[0x277CC9DB0]);
  sub_2287CAF70();

  (*(v47 + 8))(v13, v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(swift_getTupleTypeMetadata2() + 48);
  v33 = v57;
  (*(*(a3 - 8) + 16))(v9, v57, a3);
  v34 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v9[v32], v33 + *(v34 + 36), AssociatedTypeWitness);
  v35 = v54;
  v36 = v59;
  (*(v54 + 104))(v9, *MEMORY[0x277CBCBF8], v59);
  v37 = v33 + *(v34 + 40);
  v38 = v48;
  v39 = v50;
  v40 = v60;
  sub_2287CAFD0();
  (*(v35 + 8))(v9, v36);
  (*(v56 + 8))(v40, v39);
  v41 = swift_allocObject();
  v42 = v62;
  v41[2] = v61;
  v41[3] = a3;
  v41[4] = v42;
  v41[5] = a5;
  sub_2287CAF70();

  (*(v55 + 8))(v38, v18);
  v43 = v52;
  swift_getWitnessTable();
  v44 = sub_2287CAF40();
  (*(v53 + 8))(v26, v43);
  return v44;
}

void sub_22870EED8()
{
  if (!qword_280DE0568)
  {
    sub_2287CB730();
    sub_2287CA1F0();
    sub_22870EF84(&qword_280DDFEF0, MEMORY[0x277CC9DB0]);
    v0 = sub_2287CAB50();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE0568);
    }
  }
}

uint64_t sub_22870EF84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22870EFCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2287CA1F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228710834(0, &qword_280DE17B8, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_2287C95C0();
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v40 = sub_2287CA1B0();
  v41 = v20;
  sub_2287CB9B0();
  if (!*(v19 + 16) || (v21 = sub_228756AB4(v42), (v22 & 1) == 0))
  {

    sub_2287109BC(v42);
LABEL_11:
    v43 = 0u;
    v44 = 0u;
    goto LABEL_12;
  }

  sub_22870317C(*(v19 + 56) + 32 * v21, &v43);
  sub_2287109BC(v42);

  if (!*(&v44 + 1))
  {
LABEL_12:
    sub_228710894(&v43);
    (*(v5 + 56))(v17, 1, 1, v4);
    goto LABEL_13;
  }

  v39 = v10;
  v23 = swift_dynamicCast();
  (*(v5 + 56))(v17, v23 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
LABEL_13:
    sub_228710944(v17);
    result = sub_2287CBB90();
    __break(1u);
    return result;
  }

  (*(v5 + 32))(a2, v17, v4);
  sub_2287CA9E0();
  (*(v5 + 16))(v8, a2, v4);
  v24 = sub_2287CAA40();
  v25 = sub_2287CB5E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v9;
    v28 = v27;
    v42[0] = v27;
    *v26 = 136446466;
    *&v43 = a1;
    swift_getMetatypeMetadata();
    v29 = sub_2287CB250();
    v31 = sub_2287031D8(v29, v30, v42);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    sub_22870EF84(&qword_280DE11B0, MEMORY[0x277D12000]);
    v32 = sub_2287CBCC0();
    v34 = v33;
    (*(v5 + 8))(v8, v4);
    v35 = sub_2287031D8(v32, v34, v42);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_2286FF000, v24, v25, "[%{public}s]: ChangeDomain received from feedItemSubmissionOccurred (will be throttled): %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v28, -1, -1);
    MEMORY[0x22AABFD90](v26, -1, -1);

    return (*(v39 + 8))(v13, v38);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v39 + 8))(v13, v9);
  }
}

uint64_t sub_22870F4E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_22870EFCC(v1[2], a1);
}

uint64_t sub_22870F50C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = sub_2287CAA50();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CA1F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v37 = *a1;
  sub_2287CA160();
  sub_228710834(0, &qword_280DDFFF8, MEMORY[0x277D83940]);
  sub_2287107C0();
  sub_2287CB320();
  v17 = *(v10 + 8);
  v17(v16, v9);
  sub_2287CA9E0();
  (*(v10 + 16))(v14, a3, v9);
  v18 = v8;
  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v21 = 136446466;
    v36 = v33;
    swift_getMetatypeMetadata();
    v22 = sub_2287CB250();
    v24 = sub_2287031D8(v22, v23, &v37);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_22870EF84(&qword_280DE11B0, MEMORY[0x277D12000]);
    v25 = sub_2287CBCC0();
    v27 = v26;
    v17(v14, v9);
    v28 = sub_2287031D8(v25, v27, &v37);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: Collected this changeDomain, emitting: %s", v21, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  else
  {

    v17(v14, v9);
  }

  return (*(v34 + 8))(v18, v35);
}

uint64_t sub_22870F8D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_22870F50C(a1, v2[2], a2);
}

uint64_t sub_22870F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2287CA1F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return sub_2287CA1C0();
}

uint64_t FeedPopulationListenerSchedulerConfiguration.collectInterval.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedPopulationListenerSchedulerConfiguration.options.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_2287CB820();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t FeedPopulationListenerSchedulerConfiguration.init(scheduler:collectInterval:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
  v9 = *(v8 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v9, a2, AssociatedTypeWitness);
  v11 = *(v8 + 40);
  swift_getAssociatedTypeWitness();
  v12 = sub_2287CB820();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a3, v12);
}

id static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_22870FD50();
  v4 = v3;
  v5 = &a2[*(v3 + 36)];
  sub_2287CB690();
  v6 = *(v4 + 40);
  v7 = sub_2287CB680();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  *a2 = a1;

  return a1;
}

void sub_22870FD50()
{
  if (!qword_280DE08D0[0])
  {
    sub_22870FDE4();
    sub_22870EF84(&qword_280DE3620, sub_22870FDE4);
    v0 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
    if (!v1)
    {
      atomic_store(v0, qword_280DE08D0);
    }
  }
}

unint64_t sub_22870FDE4()
{
  result = qword_280DE39D0;
  if (!qword_280DE39D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE39D0);
  }

  return result;
}

uint64_t sub_22870FE58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_2287CB820();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22870FF94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v33 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v12 = v6;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v5 + 64) + v13;
  v19 = a1;
  if (a2 > v12)
  {
    v20 = v17 + ((v14 + v15 + (v18 & ~v13)) & ~v15);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v12 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v23 < 2)
      {
LABEL_33:
        if (v12)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_33;
    }

LABEL_20:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v12 + (v26 | v24) + 1;
  }

LABEL_34:
  if (v33 == v12)
  {
    v27 = *(v5 + 48);
    v28 = v33;
    v29 = v4;
  }

  else
  {
    v19 = ((a1 + v18) & ~v13);
    if (v8 != v12)
    {
      v31 = (*(v10 + 48))((v19 + v14 + v15) & ~v15);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    v27 = *(v7 + 48);
    v28 = v8;
    v29 = AssociatedTypeWitness;
  }

  return v27(v19, v28, v29);
}

void sub_22871031C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v43 = v5;
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = v14 + v17;
  v19 = (v14 + v17) & ~v17;
  v20 = *(v7 + 64);
  v21 = *(v11 + 80);
  v22 = (v20 + v21 + v19) & ~v21;
  v23 = *(v11 + 64);
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v22 + v24;
  if (a3 > v16)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v26))
      {
        v10 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v10 = v27;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v16 < a2)
  {
    v28 = ~v16 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v28 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v10 > 1)
            {
LABEL_64:
              if (v10 == 2)
              {
                *&a1[v25] = v29;
              }

              else
              {
                *&a1[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v10 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v10)
    {
      a1[v25] = v29;
    }

    return;
  }

  v30 = a1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v25] = 0;
  }

  else if (v10)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v16)
  {
    v32 = *(v43 + 56);
    v33 = a2;
    v34 = v6;
    v35 = v4;
LABEL_43:

    v32(v30, v33, v34, v35);
    return;
  }

  v30 = (&a1[v18] & ~v17);
  if (v8 == v16)
  {
    v32 = *(v7 + 56);
    v33 = a2;
    v34 = v8;
    v35 = AssociatedTypeWitness;
    goto LABEL_43;
  }

  v36 = &v30[v20 + v21] & ~v21;
  if (v15 >= a2)
  {
    v40 = *(v12 + 56);
    v41 = &v30[v20 + v21] & ~v21;

    v40(v41, a2 + 1);
  }

  else
  {
    if (v24 <= 3)
    {
      v37 = ~(-1 << (8 * v24));
    }

    else
    {
      v37 = -1;
    }

    if (v24)
    {
      v38 = v37 & (~v15 + a2);
      if (v24 <= 3)
      {
        v39 = v24;
      }

      else
      {
        v39 = 4;
      }

      bzero((&v30[v20 + v21] & ~v21), v24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          *v36 = v38;
          *(v36 + 2) = BYTE2(v38);
        }

        else
        {
          *v36 = v38;
        }
      }

      else if (v39 == 1)
      {
        *v36 = v38;
      }

      else
      {
        *v36 = v38;
      }
    }
  }
}

unint64_t sub_2287107C0()
{
  result = qword_280DDFFF0;
  if (!qword_280DDFFF0)
  {
    sub_228710834(255, &qword_280DDFFF8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFFF0);
  }

  return result;
}

void sub_228710834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2287CA1F0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228710894(uint64_t a1)
{
  sub_2287108F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2287108F0()
{
  if (!qword_280DE3988)
  {
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE3988);
    }
  }
}

uint64_t sub_228710944(uint64_t a1)
{
  sub_228710834(0, &qword_280DE17B8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HealthExperienceStoreCoreSpotlightOperation.__allocating_init(store:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2287010E4(a1, v3 + qword_280DE10F8);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void *sub_228710A84()
{
  type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  sub_2287010E4(v0 + qword_280DE10F8, v2);
  return HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(for:)(v2);
}

id HealthExperienceStoreCoreSpotlightOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreCoreSpotlightOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_228710BC4(void *a1)
{
  v1 = a1;
  HealthExperienceStoreCoreSpotlightOperation.description.getter();

  v2 = sub_2287CB210();

  return v2;
}

uint64_t HealthExperienceStoreCoreSpotlightOperation.description.getter()
{
  MEMORY[0x22AABE980](60, 0xE100000000000000);
  swift_getObjectType();
  sub_228710CF4();
  v0 = sub_2287CB250();
  MEMORY[0x22AABE980](v0);

  MEMORY[0x22AABE980](32, 0xE100000000000000);
  sub_2287CBB30();
  MEMORY[0x22AABE980](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_228710CF4()
{
  result = qword_280DE1770;
  if (!qword_280DE1770)
  {
    type metadata accessor for HealthExperienceStoreCoreSpotlightOperation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE1770);
  }

  return result;
}

id sub_228710DC8()
{
  v1 = v0;
  v2 = [v0 featureTags];
  sub_2287C9F20();
  sub_228711A10(&qword_280DE11D8, MEMORY[0x277D11F38]);
  v3 = sub_2287CB470();

  v4 = sub_228711490(v3);

  sub_228710F40();
  sub_22870E18C(v5);
  v6 = [v1 uniqueIdentifier];
  v7 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
  v8 = objc_allocWithZone(MEMORY[0x277D443F8]);
  sub_228711918();
  v9 = sub_2287CB390();

  v10 = [v8 initWithIdentifier:v6 content:v7 action:0 relevanceProviders:v9];

  return v10;
}

void sub_228710F40()
{
  v1 = v0;
  v43 = sub_2287CA2A0();
  v38 = *(v43 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2287CA010();
  v37 = *(v42 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2287CA0B0();
  v36 = *(v40 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287C9FB0();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84F90];
  sub_2287CA7D0();
  sub_228711964();
  v33 = v13;
  inited = swift_initStackObject();
  v32 = xmmword_2287CCC50;
  *(inited + 16) = xmmword_2287CCC50;
  v15 = objc_opt_self();
  if (qword_280DE3820 != -1)
  {
    swift_once();
  }

  v16 = qword_280DE63E0;
  sub_22871B03C();
  v17 = sub_2287CB210();

  v18 = objc_opt_self();
  v19 = [v18 featureValueWithString_];

  v34 = v15;
  v20 = [v15 customRelevanceProviderForFeature:v16 withValue:v19];

  if (v20)
  {
    *(inited + 32) = v20;
    sub_22870E18C(inited);
    sub_2287CA7D0();
    v21 = sub_22878ECFC();
    sub_22870E18C(v21);
    v22 = v39;
    sub_2287CA7D0();
    v23 = sub_22873FBC4();
    sub_22870E18C(v23);
    sub_2287CA7D0();
    v24 = sub_22874620C();
    sub_22870E18C(v24);
    v25 = [v1 localizedTitle];
    if (!v25)
    {
LABEL_9:
      (*(v38 + 8))(v41, v43);
      (*(v37 + 8))(v22, v42);
      (*(v36 + 8))(v8, v40);
      (*(v35 + 8))(v12, v9);
      return;
    }

    v26 = v25;
    sub_2287CB220();

    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    if (qword_280DE0F98 != -1)
    {
      swift_once();
    }

    v28 = qword_280DE6250;
    v29 = sub_2287CB210();
    v30 = [v18 featureValueWithString_];

    v31 = [v34 customRelevanceProviderForFeature:v28 withValue:v30];
    if (v31)
    {
      *(v27 + 32) = v31;

      sub_22870E18C(v27);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_228711490(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287C9F20();
    sub_228711A10(&qword_280DE11D8, MEMORY[0x277D11F38]);
    result = sub_2287CB4C0();
    v1 = v49[4];
    v3 = v49[5];
    v4 = v49[6];
    v5 = v49[7];
    v6 = v49[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v47 = MEMORY[0x277D84F90];
  v10 = (v4 + 64) >> 6;
  v42 = v3;
  v43 = v1;
  while (v1 < 0)
  {
    v16 = sub_2287CB950();
    if (!v16)
    {
      goto LABEL_48;
    }

    v49[10] = v16;
    sub_2287C9F20();
    swift_dynamicCast();
    v15 = v49[0];
    v13 = v5;
    v14 = v6;
    if (!v49[0])
    {
      goto LABEL_48;
    }

LABEL_18:
    sub_228752014();
    v18 = v17;

    v19 = v18 >> 62;
    v46 = v14;
    if (v18 >> 62)
    {
      v20 = sub_2287CB920();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v47;
    v22 = v47 >> 62;
    if (v47 >> 62)
    {
      v41 = sub_2287CB920();
      v24 = v41 + v20;
      if (__OFADD__(v41, v20))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        sub_22870B3D4();
        return v47;
      }
    }

    else
    {
      v23 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 + v20;
      if (__OFADD__(v23, v20))
      {
        goto LABEL_47;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v22)
      {
LABEL_29:
        sub_2287CB920();
      }

      else
      {
        v25 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v26 = *(v25 + 16);
      }

      result = sub_2287CBA60();
      v21 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_31;
    }

    if (v22)
    {
      goto LABEL_29;
    }

    v25 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_31:
    v48 = v20;
    v27 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v19)
    {
      v29 = v18;
      v31 = v25;
      result = sub_2287CB920();
      v25 = v31;
      v30 = result;
      v47 = v21;
      if (result)
      {
        goto LABEL_35;
      }

LABEL_8:

      v5 = v13;
      v6 = v46;
      v10 = (v4 + 64) >> 6;
      if (v48 > 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v29 = v18;
      v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v21;
      if (!v30)
      {
        goto LABEL_8;
      }

LABEL_35:
      if (((v28 >> 1) - v27) < v48)
      {
        goto LABEL_51;
      }

      v32 = v25 + 8 * v27 + 32;
      v45 = v13;
      v44 = v25;
      if (v19)
      {
        if (v30 < 1)
        {
          goto LABEL_53;
        }

        sub_2287119B8();
        sub_228711A10(&qword_27D850B78, sub_2287119B8);
        v33 = 0;
        v34 = v29;
        do
        {
          v35 = sub_228799C8C(v49, v33, v34);
          v37 = *v36;
          (v35)(v49, 0);
          *(v32 + 8 * v33++) = v37;
        }

        while (v30 != v33);
      }

      else
      {
        sub_228711918();
        swift_arrayInitWithCopy();
      }

      v5 = v45;
      v6 = v46;
      v3 = v42;
      v1 = v43;
      v10 = (v4 + 64) >> 6;
      if (v48 >= 1)
      {
        v38 = *(v44 + 16);
        v39 = __OFADD__(v38, v48);
        v40 = v38 + v48;
        if (v39)
        {
          goto LABEL_52;
        }

        *(v44 + 16) = v40;
        v5 = v45;
        v6 = v46;
      }
    }
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_48;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_228711918()
{
  result = qword_280DE1960;
  if (!qword_280DE1960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1960);
  }

  return result;
}

void sub_228711964()
{
  if (!qword_280DE1268)
  {
    v0 = sub_2287CBCD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE1268);
    }
  }
}

void sub_2287119B8()
{
  if (!qword_27D850B70)
  {
    sub_228711918();
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850B70);
    }
  }
}

uint64_t sub_228711A10(unint64_t *a1, void (*a2)(uint64_t))
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

void *static FeedPopulationManaging.fetchAndValidateFeedToPopulate(kind:managedObjectContext:associatedProfileIdentifier:)(int a1, void *a2, void *a3, uint64_t a4)
{
  v73 = a4;
  v80 = a2;
  v6 = sub_2287C97C0();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CAA50();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = sub_2287C9810();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = a1;
    v23 = [a3 identifier];
    sub_2287C97F0();

    a1 = v22;
    v72 = sub_2287C97D0();
    v25 = v24;
    (*(v18 + 8))(v21, v17);
  }

  else
  {
    v25 = 0xE400000000000000;
    v72 = 1701736302;
  }

  v26 = sub_2287CA640();
  v78 = a3;
  v27 = sub_2287CA630();
  v28 = v80;
  v29 = sub_2287CA300();
  if (v29)
  {
    v30 = v29;
    v74 = v26;
    v75 = v27;
    sub_2287CA9E0();
    v31 = v30;

    v32 = sub_2287CAA40();
    v33 = sub_2287CB610();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v70 = v6;
      v35 = v34;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v81 = v69;
      *v35 = 136315906;
      v36 = sub_2287CBE60();
      v38 = sub_2287031D8(v36, v37, &v81);
      v71 = a1;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_2287031D8(v72, v25, &v81);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2082;
      sub_2287CA600();
      v41 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v43 = sub_2287031D8(v41, v42, &v81);

      *(v35 + 24) = v43;
      *(v35 + 32) = 2114;
      v44 = [v31 dateUpdated];
      *(v35 + 34) = v44;
      v45 = v68;
      *v68 = v44;
      _os_log_impl(&dword_2286FF000, v32, v33, "[%s]_%s: Feed of kind %{public}s and date %{public}@ found; deleting it and creating a new feed", v35, 0x2Au);
      sub_2287038A4(v45);
      MEMORY[0x22AABFD90](v45, -1, -1);
      v46 = v69;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v46, -1, -1);
      v47 = v35;
      v6 = v70;
      MEMORY[0x22AABFD90](v47, -1, -1);
    }

    else
    {
    }

    (*(v76 + 8))(v16, v77);
    [v28 deleteObject_];

    v62 = v78;
    v27 = v75;
  }

  else
  {
    v71 = a1;
    sub_2287CA9E0();

    v48 = sub_2287CAA40();
    v49 = sub_2287CB610();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v75 = v27;
      v51 = v50;
      v52 = swift_slowAlloc();
      v74 = v26;
      v53 = v52;
      v81 = v52;
      *v51 = 136315650;
      v54 = sub_2287CBE60();
      v70 = v6;
      v56 = sub_2287031D8(v54, v55, &v81);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      v57 = sub_2287031D8(v72, v25, &v81);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v60 = sub_2287031D8(v58, v59, &v81);
      v28 = v80;

      *(v51 + 24) = v60;
      v6 = v70;
      _os_log_impl(&dword_2286FF000, v48, v49, "[%s]_%s: No feed of kind %s found; creating one", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v53, -1, -1);
      v61 = v51;
      v27 = v75;
      MEMORY[0x22AABFD90](v61, -1, -1);
    }

    else
    {
    }

    (*(v76 + 8))(v14, v77);
    v62 = v78;
  }

  v63 = v62;
  v64 = v28;
  sub_2287C97B0();
  v65 = sub_2287CA620();
  sub_2287CA610();
  sub_2287C97B0();
  v66 = sub_2287C9770();
  (*(v79 + 8))(v9, v6);
  [v65 setDateUpdated_];

  return v65;
}

id FeedItemREElementDataSource.__allocating_init(store:sourceProfiles:)(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_2287010E4(a1, &v5[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id FeedItemREElementDataSource.init(store:sourceProfiles:)(uint64_t *a1, uint64_t a2)
{
  sub_2287010E4(a1, &v2[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v2[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FeedItemREElementDataSource();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

void sub_22871240C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();

  v14 = v4;
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();

  v54 = v16;
  if (!os_log_type_enabled(v15, v16))
  {

    (*(v10 + 8))(v13, v9);
    v21 = a4;
    v31 = v55;
LABEL_12:
    v39 = *&v14[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store + 32];
    __swift_project_boxed_opaque_existential_1(&v14[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store], *&v14[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store + 24]);
    v40 = sub_2287C99F0();
    v41 = swift_allocObject();
    v41[2] = a1;
    v41[3] = a2;
    v41[4] = v40;
    v41[5] = v14;
    v41[6] = v31;
    v41[7] = v21;
    v41[8] = ObjectType;
    aBlock[4] = sub_228714ADC;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor;
    v42 = _Block_copy(aBlock);

    v43 = v14;
    v44 = v40;
    sub_228714B08(v31);

    [v44 performBlock_];
    _Block_release(v42);

    return;
  }

  v52 = v10;
  v53 = v9;
  v17 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  aBlock[0] = v51;
  *v17 = 136446466;

  if (a2)
  {
    v49 = v15;
    v50 = a1;
    *(v17 + 4) = sub_2287031D8(a1, a2, aBlock);
    v48 = v17;
    *(v17 + 12) = 2082;
    v18 = *&v14[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles];
    v19 = *(v18 + 16);
    v20 = MEMORY[0x277D84F90];
    v21 = a4;
    if (v19)
    {
      v45 = ObjectType;
      v46 = a2;
      v47 = a4;
      v56 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v19, 0);
      v20 = v56;
      v22 = (v18 + 32);
      do
      {
        v23 = *v22++;
        v24 = v23;
        v25 = sub_2287C9C40();
        v27 = v26;

        v56 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2287042D4((v28 > 1), v29 + 1, 1);
          v20 = v56;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        --v19;
      }

      while (v19);
      a2 = v46;
      v21 = v47;
      v31 = v55;
      ObjectType = v45;
    }

    else
    {
      v31 = v55;
    }

    v56 = v20;
    sub_2287042F4(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228714B18();
    v32 = sub_2287CB1D0();
    v34 = v33;

    v35 = sub_2287031D8(v32, v34, aBlock);

    v36 = v48;
    *(v48 + 14) = v35;
    v37 = v49;
    _os_log_impl(&dword_2286FF000, v49, v54, "Querying Core Data for elements for Relevance Engine section %{public}s for profiles %{public}s", v36, 0x16u);
    v38 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v38, -1, -1);
    MEMORY[0x22AABFD90](v36, -1, -1);

    (*(v52 + 8))(v13, v53);
    a1 = v50;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_228712890(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v58 = a4;
  v59 = a1;
  v10 = sub_2287CAA50();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CA5D0();
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = 0;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = *(v13 + v15 + 32);
    v17 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    if (!a2)
    {

      goto LABEL_4;
    }

    if (v17 == v59 && v18 == a2)
    {
      break;
    }

    v20 = sub_2287CBD00();

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_4:
    if (v14 == ++v15)
    {
      goto LABEL_36;
    }
  }

LABEL_14:

  v53 = a6;
  v54 = a5;
  v21 = NSManagedObjectContext.getEligibleFeedItems(for:sourceProfiles:)(v16, *&v58[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles]);
  a5 = v21;
  v13 = v21 >> 62;
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_33:
  v22 = sub_2287CB920();
LABEL_16:
  v23 = MEMORY[0x277D84F90];
  v51 = v13;
  if (v22)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v60 = a5 & 0xC000000000000001;
      v61 = a5;
      do
      {
        if (v60)
        {
          v25 = MEMORY[0x22AABF120](v24, a5);
        }

        else
        {
          v25 = *(a5 + 8 * v24 + 32);
        }

        v26 = v25;
        ++v24;
        v27 = [v25 featureTags];
        sub_2287C9F20();
        sub_228714C98(&qword_280DE11D8, MEMORY[0x277D11F38]);
        v28 = sub_2287CB470();

        v29 = sub_228711490(v28);

        sub_228710F40();
        v62[0] = v29;
        sub_22870E18C(v30);
        v31 = [v26 uniqueIdentifier];
        v32 = [objc_allocWithZone(MEMORY[0x277D443E0]) init];
        v33 = objc_allocWithZone(MEMORY[0x277D443F8]);
        sub_228703004(0, &qword_280DE1960, 0x277D44488);
        v34 = sub_2287CB390();

        [v33 initWithIdentifier:v31 content:v32 action:0 relevanceProviders:v34];

        sub_2287CBA90();
        v35 = *(v63 + 16);
        sub_2287CBAD0();
        sub_2287CBAE0();
        sub_2287CBAA0();
        a5 = v61;
      }

      while (v22 != v24);
      v23 = v63;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:

    result = sub_2287CBB90();
    __break(1u);
  }

  else
  {
LABEL_24:
    v36 = v57;
    sub_2287CA9E0();
    swift_bridgeObjectRetain_n();
    v37 = v58;

    v38 = sub_2287CAA40();
    v39 = sub_2287CB610();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62[0] = v41;
      *v40 = 136315906;
      v63 = v52;
      swift_getMetatypeMetadata();
      v42 = sub_2287CB250();
      v44 = sub_2287031D8(v42, v43, v62);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_22871304C();
      v47 = sub_2287031D8(v45, v46, v62);

      *(v40 + 14) = v47;
      *(v40 + 22) = 2050;
      if (v51)
      {
        v48 = sub_2287CB920();
      }

      else
      {
        v48 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v54;

      *(v40 + 24) = v48;

      *(v40 + 32) = 2082;
      *(v40 + 34) = sub_2287031D8(v59, a2, v62);
      _os_log_impl(&dword_2286FF000, v38, v39, "[%s]_%{public}s: %{public}ld elements converted from Core Data and submitted to engine section %{public}s", v40, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v41, -1, -1);
      MEMORY[0x22AABFD90](v40, -1, -1);

      (*(v55 + 8))(v57, v56);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v55 + 8))(v36, v56);
      v49 = v54;
    }

    if (!v49)
    {
      goto LABEL_35;
    }

    v49(v23);
  }

  return result;
}

uint64_t sub_228712EA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_228712FC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_228703004(0, &qword_280DE1900, 0x277D443F8);
    v3 = sub_2287CB390();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22871304C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      v6 = sub_2287C9C40();
      v8 = v7;

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2287042D4((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  sub_2287042F4(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228714B18();
  v12 = sub_2287CB1D0();

  return v12;
}

id FeedItemREElementDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedItemREElementDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemREElementDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2287132AC(char *a1, int64_t a2, char a3)
{
  result = sub_2287136FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2287132CC(char *a1, int64_t a2, char a3)
{
  result = sub_228713818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2287132EC(size_t a1, int64_t a2, char a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_27D850B90, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

size_t sub_22871333C(size_t a1, int64_t a2, char a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1808, sub_22871511C, sub_22871511C);
  *v3 = result;
  return result;
}

size_t sub_22871338C(size_t a1, int64_t a2, char a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1880, MEMORY[0x277D11EB0], MEMORY[0x277D11EB0]);
  *v3 = result;
  return result;
}

size_t sub_2287133DC(size_t a1, int64_t a2, char a3)
{
  result = sub_228713924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2287133FC(size_t a1, int64_t a2, char a3)
{
  result = sub_228713B7C(a1, a2, a3, *v3, &qword_280DE1890, &qword_280DE3450, &qword_280DE2620, sub_228714CE0);
  *v3 = result;
  return result;
}

size_t sub_228713448(size_t a1, int64_t a2, char a3)
{
  result = sub_2287145C8(a1, a2, a3, *v3, &qword_280DE1840, &qword_280DE2620, sub_228714CE0, sub_228714CE0);
  *v3 = result;
  return result;
}

char *sub_2287134A0(char *a1, int64_t a2, char a3)
{
  result = sub_228713D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2287134C0(void *a1, int64_t a2, char a3)
{
  result = sub_228713EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2287134E0(char *a1, int64_t a2, char a3)
{
  result = sub_228714008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228713500(char *a1, int64_t a2, char a3)
{
  result = sub_22871425C(a1, a2, a3, *v3, &qword_280DE1818, type metadata accessor for _HKDataTypeCode);
  *v3 = result;
  return result;
}

char *sub_22871353C(char *a1, int64_t a2, char a3)
{
  result = sub_228714130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22871355C(size_t a1, int64_t a2, char a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1850, type metadata accessor for ModelTrainingEvent, type metadata accessor for ModelTrainingEvent);
  *v3 = result;
  return result;
}

char *sub_2287135AC(char *a1, int64_t a2, char a3)
{
  result = sub_22871425C(a1, a2, a3, *v3, &qword_280DE35A8, sub_2287150D0);
  *v3 = result;
  return result;
}

size_t sub_2287135E8(size_t a1, int64_t a2, char a3)
{
  result = sub_228714370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_228713608(size_t a1, int64_t a2, char a3)
{
  result = sub_228713B7C(a1, a2, a3, *v3, &qword_280DE1898, &qword_280DE3460, &qword_280DE2630, sub_228714E0C);
  *v3 = result;
  return result;
}

size_t sub_228713654(size_t a1, int64_t a2, char a3)
{
  result = sub_2287145C8(a1, a2, a3, *v3, &qword_280DE1848, &qword_280DE2630, sub_228714E0C, sub_228714E0C);
  *v3 = result;
  return result;
}

size_t sub_2287136AC(size_t a1, int64_t a2, char a3)
{
  result = sub_2287147E8(a1, a2, a3, *v3, &qword_280DE1888, MEMORY[0x277D11E88], MEMORY[0x277D11E88]);
  *v3 = result;
  return result;
}

char *sub_2287136FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE1828, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_228713818(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DDFE58, MEMORY[0x277D121B8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_228713924(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714CE0(0, &qword_280DE1858, MEMORY[0x277D84560]);
  sub_228714D78(0, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_228714D78(0, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_228713B7C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t (*)()))
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714C3C(0, a5, a6, a7, a8);
  sub_228714FC8(0, a6, a7, a8);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  sub_228714FC8(0, a6, a7, a8);
  v23 = *(v22 - 8);
  if (v12)
  {
    if (v20 < a4 || (v24 = (*(v23 + 80) + 32) & ~*(v23 + 80), v20 + v24 >= a4 + v24 + *(v23 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

char *sub_228713D84(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228713EA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_228714BD8(0, &qword_280DE1830, sub_228714F50, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_228714F50();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228714008(char *result, int64_t a2, char a3, char *a4)
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
    sub_228714BD8(0, &qword_280DE1868, sub_228714EA4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_228714130(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287042F4(0, &qword_280DE3990, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22871425C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_228714BD8(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t sub_228714370(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228714E0C(0, &qword_280DE1860, MEMORY[0x277D84560]);
  sub_228714D78(0, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_228714D78(0, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2287145C8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t (*)()), uint64_t (*a8)(void, uint64_t, uint64_t (*)()))
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228715064(0, a5, a6, a7);
  v16 = *(a8(0, a6, type metadata accessor for GeneratorPipelineManagerWrapper) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a8(0, a6, type metadata accessor for GeneratorPipelineManagerWrapper) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_2287147E8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_228714BD8(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_2287149DC()
{
  v0 = sub_2287CA5D0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v1, 0);
    v2 = 32;
    v3 = v13;
    do
    {
      v4 = *(v0 + v2);
      v5 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_2287042D4((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228714B08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_228714B18()
{
  result = qword_280DE39F8;
  if (!qword_280DE39F8)
  {
    sub_2287042F4(255, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE39F8);
  }

  return result;
}

uint64_t sub_228714BC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_228714BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228714C3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    sub_228714FC8(255, a3, a4, a5);
    v6 = sub_2287CBCD0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228714C98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228714CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228714D78(255, &qword_280DE2EF0, sub_22870CAC4, &qword_280DE2E50, sub_22870CAC4);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_228714D78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_228714C98(a4, a5);
    v8 = type metadata accessor for AnyPipeline();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228714E0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_228714D78(255, &qword_280DE2F00, sub_22870C510, qword_280DE2E60, sub_22870C510);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228714EA4()
{
  result = qword_280DE3348;
  if (!qword_280DE3348)
  {
    sub_228714EEC();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280DE3348);
  }

  return result;
}

unint64_t sub_228714EEC()
{
  result = qword_280DE3350;
  if (!qword_280DE3350)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3350);
  }

  return result;
}

void sub_228714F50()
{
  if (!qword_280DE1A30)
  {
    sub_228703004(255, &qword_280DE39B8, 0x277D82BB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1A30);
    }
  }
}

void sub_228714FC8(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    sub_2287C9810();
    a4(255, a3, type metadata accessor for GeneratorPipelineManagerWrapper);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_228715064(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for GeneratorPipelineManagerWrapper);
    v5 = sub_2287CBCD0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2287150D0()
{
  result = qword_280DE3598;
  if (!qword_280DE3598)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_280DE3598);
  }

  return result;
}

void sub_22871511C()
{
  if (!qword_280DE1910)
  {
    sub_228703004(255, &qword_280DE1900, 0x277D443F8);
    type metadata accessor for ModelTrainingEvent();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE1910);
    }
  }
}

uint64_t sub_2287151A4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v5 = v2 + 56;
    v6 = -1 << *(v2 + 32);
    v7 = sub_2287CB890();
    v8 = 0;
    v9 = *(v2 + 36);
    v27 = v2 + 64;
    v28 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v13 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v14 = v9;
      v29 = v8;
      v15 = v5;
      v16 = (*(v2 + 48) + 16 * v7);
      v17 = v16[1];
      v30[0] = *v16;
      v30[1] = v17;

      sub_228716620(v30, &v31);
      if (v1)
      {
        goto LABEL_28;
      }

      v18 = v2;

      sub_2287CBA90();
      v19 = *(v32 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v10 = 1 << *(v18 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v20 = *(v15 + 8 * v13);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v18;
      v5 = v15;
      v9 = v14;
      if (v14 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v28;
        v1 = 0;
        v12 = v29;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v11 = v28;
        v24 = (v27 + 8 * v13);
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_228717DF8(v7, v14, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_228717DF8(v7, v14, 0);
LABEL_19:
        v12 = v29;
      }

      v8 = v12 + 1;
      v7 = v10;
      if (v8 == v11)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }

  return result;
}

uint64_t static FeedItem.predicateForKeyword(_:)(uint64_t a1, uint64_t a2)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCFF0;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2287043F8();
  *(v4 + 32) = 0x7364726F7779656BLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_2287CB550();
}

id static FeedItem.predicateForNotKeyword(contentKinds:keyword:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2287CCFF0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2287043F8();
  *(v12 + 32) = 0x7364726F7779656BLL;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;

  v15 = sub_2287CB550();
  v16 = objc_opt_self();
  v17 = [v16 notPredicateWithSubpredicate_];

  v18 = sub_2287C9590();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(a1, 0, v11, a4);
  sub_22870455C(v11);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2287CCFD0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  v21 = v17;
  v22 = v19;
  v23 = sub_2287CB390();

  v24 = [v16 andPredicateWithSubpredicates_];

  return v24;
}

id static FeedItem.predicateFor(contentKinds:keyword:hideInDiscover:sourceProfiles:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_2287035F0(0, &qword_280DE39A8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCFE0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v11 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds17atLeastOneKeyword14hideInDiscover14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySSGSbSgSayAA13SourceProfileOGSgtFZ_0(a1, inited, a4 & 1, a5);
  swift_setDeallocating();
  sub_228717D54(inited + 32);
  return v11;
}

uint64_t static FeedItem.predicateFor(measureIdentifiers:)(uint64_t a1)
{
  v27 = sub_2287C98C0();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v6, 0);
    v7 = v28;
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v25 = *(v8 + 56);
    v26 = v9;
    v24 = (v8 - 8);
    do
    {
      v11 = v27;
      v12 = v8;
      v26(v5, v10, v27);
      v13 = sub_2287C98B0();
      v15 = v14;
      (*v24)(v5, v11);
      v28 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2287042D4((v16 > 1), v17 + 1, 1);
        v7 = v28;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v25;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2287CCFF0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2287043F8();
  *(v19 + 32) = 0xD000000000000012;
  *(v19 + 40) = 0x80000002287D02A0;
  sub_2287035F0(0, &qword_280DE3A00, v20, MEMORY[0x277D83940]);
  *(v19 + 96) = v21;
  *(v19 + 104) = sub_22870444C();
  *(v19 + 72) = v7;
  return sub_2287CB550();
}

uint64_t static FeedItem.predicateFor(healthRecordsOnly:)(char a1)
{
  if (a1)
  {
    sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_2287CCFD0;
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFF0;
    v3 = MEMORY[0x277D837D0];
    *(v2 + 56) = MEMORY[0x277D837D0];
    v4 = sub_2287043F8();
    *(v2 + 64) = v4;
    *(v2 + 32) = 0x7364726F7779656BLL;
    *(v2 + 40) = 0xE800000000000000;
    v5 = sub_2287C9FE0();
    *(v2 + 96) = v3;
    *(v2 + 104) = v4;
    *(v2 + 72) = v5;
    *(v2 + 80) = v6;
    *(v1 + 32) = sub_2287CB550();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2287CCFF0;
    *(v7 + 56) = v3;
    *(v7 + 64) = v4;
    *(v7 + 32) = 0x7364726F7779656BLL;
    *(v7 + 40) = 0xE800000000000000;
    v8 = sub_2287C9FF0();
    *(v7 + 96) = v3;
    *(v7 + 104) = v4;
    *(v7 + 72) = v8;
    *(v7 + 80) = v9;
    *(v1 + 40) = sub_2287CB550();
    v10 = sub_2287CB390();

    v11 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v11;
  }

  else
  {
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2287CCFF0;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_2287043F8();
    *(v13 + 64) = v15;
    *(v13 + 32) = 0x7364726F7779656BLL;
    *(v13 + 40) = 0xE800000000000000;
    v16 = sub_2287C9FF0();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
    return sub_2287CB550();
  }
}

uint64_t static FeedItem.predicateForHasKeywordHealthRecordsDataType(_:)()
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2287043F8();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x7364726F7779656BLL;
  *(v0 + 40) = 0xE800000000000000;
  v3 = sub_2287C9FF0();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return sub_2287CB550();
}

uint64_t static FeedItem.predicateForHealthRecordsKeyword()()
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2287043F8();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x7364726F7779656BLL;
  *(v0 + 40) = 0xE800000000000000;
  v3 = sub_2287C9FE0();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return sub_2287CB550();
}

uint64_t static FeedItem.predicateForAnyUniqueIdentifier(in:)(uint64_t a1)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v3 = sub_2287CA7C0();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2287043F8();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_2287035F0(0, &qword_280DE3A00, v6, MEMORY[0x277D83940]);
  *(v2 + 96) = v7;
  *(v2 + 104) = sub_22870444C();
  *(v2 + 72) = a1;

  return sub_2287CB550();
}

uint64_t sub_2287161B0(uint64_t a1, uint64_t a2)
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCFF0;
  sub_2287CA800();
  v5 = sub_2287CA7C0();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2287043F8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_2287CB550();
}

id static FeedItem.predicateForNoFeedItems()()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

uint64_t static FeedItem.predicateForSectionsBefore(section:)()
{
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2287043F8();
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000002287D0300;
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v0 + 96) = sub_228703004(0, &qword_280DE39C0, 0x277CCABB0);
  *(v0 + 104) = sub_228717DA8(&qword_280DDFEA8, &qword_280DE39C0, 0x277CCABB0);
  *(v0 + 72) = v1;
  return sub_2287CB550();
}

id static FeedItem.createFeatureStatusPredicate(with:hkType:)(uint64_t a1, void *a2)
{
  sub_2287151A4(a1);
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v3 = sub_2287CB390();

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  if (!a2)
  {
    return v5;
  }

  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  *(inited + 32) = a2;
  v7 = a2;
  v8 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(inited);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2287CCFD0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v8;
  v11 = v5;
  v12 = v8;
  v13 = sub_2287CB390();

  v14 = [v4 andPredicateWithSubpredicates_];

  return v14;
}

uint64_t sub_228716620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v49 = sub_2287C9590();
  v55 = *(v49 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v48 = &v44 - v12;
  v14 = a1[1];
  v53 = *a1;
  v51 = v14;
  v15 = MEMORY[0x277D84560];
  sub_228703B34(0, &qword_280DE3858, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v16 = sub_2287C9B20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2287CCFE0;
  (*(v17 + 104))(v20 + v19, *MEMORY[0x277D11D80], v16);
  v47 = *(v55 + 56);
  v21 = v49;
  v47(v13, 1, 1, v49);
  v50 = MEMORY[0x277D84560];
  sub_2287035F0(0, &qword_280DE3850, MEMORY[0x277D11E90], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  v46 = xmmword_2287CCFF0;
  *(v22 + 16) = xmmword_2287CCFF0;
  *(v22 + 32) = sub_2287C9CA0();
  *(v22 + 40) = 0;
  v23 = sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, v15);
  v24 = swift_allocObject();
  *(v24 + 16) = v46;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_2287043F8();
  *(v24 + 32) = 0x7364726F7779656BLL;
  *(v24 + 40) = 0xE800000000000000;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  v27 = v53;
  *(v24 + 64) = v26;
  *(v24 + 72) = v27;
  *(v24 + 80) = v51;

  v28 = v21;
  v53 = v23;
  v29 = sub_2287CB550();
  v47(v11, 1, 1, v21);
  v30 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v20, 0, v11, v22);
  v31 = v48;

  v32 = v52;

  sub_22870455C(v11);
  v33 = v55;
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, v50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2287CCFD0;
  *(v34 + 32) = v29;
  *(v34 + 40) = v30;
  v56 = v34;
  sub_2287044C8(v31, v32);
  if ((*(v33 + 48))(v32, 1, v21) == 1)
  {
    v35 = v29;
    v36 = v30;
    sub_22870455C(v32);
  }

  else
  {
    v37 = v45;
    (*(v33 + 32))(v45, v32, v21);
    v38 = v29;
    v39 = v30;
    _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0();
    MEMORY[0x22AABEA50]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2287CB3E0();
    }

    sub_2287CB420();
    (*(v33 + 8))(v37, v28);
  }

  v40 = sub_2287CB390();

  v41 = [objc_opt_self() andPredicateWithSubpredicates_];

  result = sub_22870455C(v31);
  *v54 = v41;
  return result;
}

uint64_t _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor17relevantDateRangeSo11NSPredicateC10Foundation0I8IntervalV_tFZ_0()
{
  v0 = sub_2287C97C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = &v25 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  v28 = "e.codeRaw IN %@).@count > 0";
  v29 = v12;
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2287CD1B0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  v26 = sub_2287043F8();
  *(v13 + 64) = v26;
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = 0x80000002287D0390;
  sub_2287C9570();
  v14 = sub_2287C9770();
  v15 = *(v1 + 8);
  v15(v11, v0);
  v16 = sub_228703004(0, &qword_280DE1928, 0x277CBEAA8);
  *(v13 + 96) = v16;
  v17 = sub_228717DA8(&qword_280DE1920, &qword_280DE1928, 0x277CBEAA8);
  *(v13 + 104) = v17;
  *(v13 + 72) = v14;
  sub_2287C9540();
  v18 = sub_2287C9770();
  v15(v9, v0);
  *(v13 + 136) = v16;
  *(v13 + 144) = v17;
  *(v13 + 112) = v18;
  v19 = v26;
  v20 = v27;
  *(v13 + 176) = MEMORY[0x277D837D0];
  *(v13 + 184) = v19;
  *(v13 + 152) = 0x746E6176656C6572;
  *(v13 + 160) = 0xEF65746144646E45;
  sub_2287C9570();
  v21 = sub_2287C9770();
  v15(v20, v0);
  *(v13 + 216) = v16;
  *(v13 + 224) = v17;
  *(v13 + 192) = v21;
  v22 = v30;
  sub_2287C9540();
  v23 = sub_2287C9770();
  v15(v22, v0);
  *(v13 + 256) = v16;
  *(v13 + 264) = v17;
  *(v13 + 232) = v23;
  return sub_2287CB550();
}

uint64_t _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor10objectypesSo11NSPredicateCSaySo12HKObjectTypeCG_tFZ_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_11:
    sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
    sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2287CCFF0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2287043F8();
    *(v10 + 32) = 0x6570795461746164;
    *(v10 + 40) = 0xE900000000000073;
    sub_228717E04();
    *(v10 + 96) = v11;
    *(v10 + 104) = sub_228717E6C();
    *(v10 + 72) = v3;
    return sub_2287CB550();
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_2287CBAC0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AABF120](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 code];
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

      sub_2287CBA90();
      v9 = *(v12 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
    }

    while (v2 != v5);
    v3 = v12;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id _s14HealthPlatform8FeedItemC0aB4CoreE020predicateForEligibleC5Items3for14sourceProfilesSo11NSPredicateCAA0C0C4KindO_SayAA13SourceProfileOGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2287CAA50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228703B34(0, &qword_280DE3980, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - v10;
  v12 = sub_2287CA5B0();
  v13 = sub_2287C9590();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = _s14HealthPlatform8FeedItemC0aB4CoreE12predicateFor12contentKinds7hkTypes17relevantDateRange14sourceProfilesSo11NSPredicateCSayAA11ContentKindOG_SaySo12HKObjectTypeCGSg10Foundation0M8IntervalVSgSayAA13SourceProfileOGSgtFZ_0(v12, 0, v11, a2);

  sub_22870455C(v11);
  sub_2287035F0(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2287CCC50;
  *(v15 + 32) = v14;
  v50 = v15;
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 standardUserDefaults];
  v19 = sub_2287CB210();
  v20 = [v18 arrayForKey_];

  v21 = MEMORY[0x277D837D0];
  if (v20)
  {
    v22 = sub_2287CB3A0();

    v23 = sub_228784298(v22);

    if (v23)
    {
      sub_2287CA9E0();

      v24 = sub_2287CAA40();
      v25 = sub_2287CB610();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v17;
        v49 = v27;
        v28 = v4;
        v29 = v27;
        *v26 = 136315138;
        v30 = MEMORY[0x22AABEA80](v23, MEMORY[0x277D837D0]);
        v32 = sub_2287031D8(v30, v31, &v49);

        *(v26 + 4) = v32;
        _os_log_impl(&dword_2286FF000, v24, v25, "discoverFeedItemWhitelist key found in defaults, applying whitelist of %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x22AABFD90](v29, -1, -1);
        v33 = v26;
        v21 = MEMORY[0x277D837D0];
        MEMORY[0x22AABFD90](v33, -1, -1);

        (*(v28 + 8))(v7, v3);
        v17 = v48;
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }

      sub_2287CA800();
      sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
      sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_2287CCFF0;
      v35 = sub_2287CA7C0();
      v37 = v36;
      *(v34 + 56) = v21;
      *(v34 + 64) = sub_2287043F8();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      sub_2287035F0(0, &qword_280DE3A00, v21, MEMORY[0x277D83940]);
      *(v34 + 96) = v38;
      *(v34 + 104) = sub_22870444C();
      *(v34 + 72) = v23;
      v39 = sub_2287CB550();
      MEMORY[0x22AABEA50]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
    }
  }

  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_228703B34(0, &qword_280DE3848, sub_228704394, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2287CCFE0;
  *(v40 + 56) = v21;
  *(v40 + 64) = sub_2287043F8();
  strcpy((v40 + 32), "hideInDiscover");
  *(v40 + 47) = -18;
  v41 = sub_2287CB550();
  MEMORY[0x22AABEA50]();
  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v42 = sub_2287CB390();

  v43 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v43;
}