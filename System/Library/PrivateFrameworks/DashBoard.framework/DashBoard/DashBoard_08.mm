uint64_t DBWidgetHomeViewController.applicationController(_:addedApplications:updatedApplications:removedApplications:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_248383BE0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_248383BB0();
  v5 = v0;
  v6 = sub_248383BA0();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = 3;
  *(v7 + 40) = v5;
  sub_2482D8C74(0, 0, v3, &unk_24839FEA8, v7);
}

Swift::tuple_Bool_Bool __swiftcall WidgetStack.updateWithSuggestions(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_248382A90();
  v168 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v165 = (&v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v156 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v161 = (&v156 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v156 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v156 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v166 = *(v171 - 8);
  v15 = MEMORY[0x28223BE20](v171);
  v164 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v156 - v17;
  v167 = v2;
  v160 = v7;
  v163 = v12;
  if (a1._rawValue >> 62)
  {
    goto LABEL_51;
  }

  v19 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  v162 = v14;
  if (!v19)
  {
LABEL_52:
    v142 = sub_24814A31C();
    v143 = v167;
    v144 = v168;
    v145 = v165;
    (*(v168 + 16))(v165, v142, v167);
    v146 = v172;
    v147 = sub_248382A80();
    v148 = sub_248383DA0();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v180[0] = v150;
      *v149 = 136446210;
      v151 = v164;
      sub_248381900();
      v152 = v171;
      sub_248381860();
      (*(v166 + 8))(v151, v152);
      v153 = v143;
      v154 = sub_24814A378(aBlock, v175, v180);

      *(v149 + 4) = v154;
      _os_log_impl(&dword_248146000, v147, v148, "Found no proactive suggestions for stack %{public}s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v150);
      MEMORY[0x24C1CD5F0](v150, -1, -1);
      MEMORY[0x24C1CD5F0](v149, -1, -1);

      (*(v144 + 8))(v145, v153);
    }

    else
    {

      (*(v144 + 8))(v145, v143);
    }

    v103 = 0;
LABEL_56:
    v82 = v103;
    goto LABEL_58;
  }

LABEL_3:
  v20 = 0;
  v21 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  v169 = a1._rawValue & 0xC000000000000001;
  v170 = (v166 + 8);
  while (!v169)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
LABEL_51:
      v19 = sub_248384360();
      v162 = v14;
      if (!v19)
      {
        goto LABEL_52;
      }

      goto LABEL_3;
    }

    rawValue = a1._rawValue;
    v23 = *(a1._rawValue + v20 + 4);
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v173 = v23;
    v25 = [v23 stackIdentifier];
    v26 = sub_248383960();
    v14 = v27;

    sub_248381900();
    v28 = v171;
    sub_248381860();
    v29 = v28;
    a1._rawValue = *v170;
    (*v170)(v18, v29);
    if (v26 == aBlock && v14 == v175)
    {
      goto LABEL_17;
    }

    v31 = sub_248384680();

    if (v31)
    {
      goto LABEL_18;
    }

    ++v20;
    a1._rawValue = rawValue;
    if (v24 == v19)
    {
      goto LABEL_52;
    }
  }

  rawValue = a1._rawValue;
  v23 = MEMORY[0x24C1CBA50](v20, a1._rawValue);
  v24 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = v172;
  v34 = sub_248381910();
  v35 = [v34 allowsExternalSuggestions];

  v36 = sub_24814A31C();
  v37 = v168;
  v38 = *(v168 + 16);
  v169 = v32 + 16;
  v165 = (v168 + 16);
  v159 = v38;
  if (!v35)
  {
    v58 = v163;
    v59 = v167;
    v38(v163, v36, v167);
    v60 = v33;
    v61 = sub_248382A80();
    v62 = sub_248383DC0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      LODWORD(v162) = v62;
      v64 = v63;
      v166 = swift_slowAlloc();
      v180[0] = v166;
      *v64 = 136446466;
      v65 = v164;
      sub_248381900();
      v66 = v171;
      sub_248381860();
      v158 = v61;
      (a1._rawValue)(v65, v66);
      v67 = v32;
      v68 = sub_24814A378(aBlock, v175, v180);

      *(v64 + 4) = v68;
      v32 = v67;
      *(v64 + 12) = 2082;
      sub_248381900();
      sub_248381860();
      v69 = v66;
      v33 = v172;
      (a1._rawValue)(v65, v69);
      v70 = sub_24814A378(aBlock, v175, v180);

      *(v64 + 14) = v70;
      v59 = v167;
      v71 = v158;
      _os_log_impl(&dword_248146000, v158, v162, "Proactive suggestions not enabled for stack %{public}s: %{public}s", v64, 0x16u);
      v72 = v166;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v72, -1, -1);
      MEMORY[0x24C1CD5F0](v64, -1, -1);

      v73 = *(v168 + 8);
      v74 = v163;
    }

    else
    {

      v73 = *(v37 + 8);
      v74 = v58;
    }

    v166 = v73;
    v73(v74, v59);
    v84 = 0;
    v75 = v173;
LABEL_28:
    v85 = sub_248381910();
    v86 = [v85 allowsSuggestions];

    if (v86)
    {
      v87 = [v75 topWidget];
      if (v87)
      {
        v88 = v87;
        v89 = sub_248381910();
        v162 = v88;
        v90 = [v88 identifier];
        if (!v90)
        {
          sub_248383960();
          v90 = sub_248383930();
        }

        v91 = [v89 firstIconDataSourceWithUniqueIdentifier_];

        if (v91)
        {
          v158 = v84;
          v163 = v32;
          v92 = [v162 identifier];
          v93 = sub_248383960();
          v95 = v94;

          v96 = sub_248381910();
          v97 = [v96 activeWidget];

          v157 = v91;
          if (v97)
          {
            v98 = [v97 uniqueIdentifier];

            v99 = sub_248383960();
            v101 = v100;

            if (v93 == v99 && v95 == v101)
            {

              v102 = v160;
LABEL_42:
              v105 = sub_24814A31C();
              v106 = v167;
              v159(v102, v105, v167);
              v107 = v33;
              v108 = v162;
              v109 = v162;
              v110 = sub_248382A80();
              v111 = sub_248383DC0();

              if (os_log_type_enabled(v110, v111))
              {
                v112 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                v172 = swift_slowAlloc();
                v180[0] = v172;
                *v112 = 136446466;
                LODWORD(v159) = v111;
                v113 = v164;
                v161 = v110;
                sub_248381900();
                p_isa = &v102->isa;
                v115 = v171;
                sub_248381860();
                (a1._rawValue)(v113, v115);
                v116 = v106;
                v117 = sub_24814A378(aBlock, v175, v180);

                *(v112 + 4) = v117;
                *(v112 + 12) = 2114;
                *(v112 + 14) = v109;
                v118 = v165;
                *v165 = v108;
                v119 = v109;
                v120 = v161;
                _os_log_impl(&dword_248146000, v161, v159, "Ignoring proactive rotation for stack %{public}s: %{public}@", v112, 0x16u);
                sub_24822D578(v118, &qword_27EE8FE40);
                MEMORY[0x24C1CD5F0](v118, -1, -1);
                v121 = v172;
                __swift_destroy_boxed_opaque_existential_0(v172);
                MEMORY[0x24C1CD5F0](v121, -1, -1);
                MEMORY[0x24C1CD5F0](v112, -1, -1);

                swift_unknownObjectRelease();
                v122 = p_isa;
                v123 = v116;
              }

              else
              {

                swift_unknownObjectRelease();
                v122 = &v102->isa;
                v123 = v106;
              }

              (v166)(v122, v123);
              v32 = v163;
              v84 = v158;
              goto LABEL_39;
            }

            v104 = sub_248384680();

            v102 = v160;
            if (v104)
            {
              goto LABEL_42;
            }
          }

          else
          {
          }

          v124 = sub_24814A31C();
          v125 = v161;
          v126 = v167;
          v159(v161, v124, v167);
          v127 = v33;
          v128 = v162;
          v129 = sub_248382A80();
          v130 = sub_248383DC0();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v180[0] = v165;
            *v131 = 136446466;
            v172 = v128;
            v132 = v164;
            sub_248381900();
            v133 = v171;
            sub_248381860();
            (a1._rawValue)(v132, v133);
            v134 = sub_24814A378(aBlock, v175, v180);

            *(v131 + 4) = v134;
            v128 = v172;
            *(v131 + 12) = 2114;
            *(v131 + 14) = v128;
            v135 = v160;
            *v160 = v162;
            v136 = v128;
            _os_log_impl(&dword_248146000, v129, v130, "Activating proactive rotation for stack %{public}s: %{public}@", v131, 0x16u);
            sub_24822D578(v135, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v135, -1, -1);
            v137 = v165;
            __swift_destroy_boxed_opaque_existential_0(v165);
            MEMORY[0x24C1CD5F0](v137, -1, -1);
            MEMORY[0x24C1CD5F0](v131, -1, -1);

            v138 = v161;
          }

          else
          {

            v138 = v125;
          }

          (v166)(v138, v126);
          v32 = v163;
          v84 = v158;
          v139 = sub_248381910();
          [v139 setStackChangeReason_];

          v140 = sub_248381910();
          v141 = v157;
          swift_unknownObjectRetain();
          [v140 setActiveDataSource_];

          swift_unknownObjectRelease_n();
          goto LABEL_39;
        }
      }
    }

LABEL_39:
    swift_beginAccess();
    v103 = *(v32 + 16);

    sub_248167864(v84);
    goto LABEL_56;
  }

  v39 = v162;
  v40 = v167;
  v38(v162, v36, v167);
  v41 = v33;
  v42 = rawValue;

  v43 = sub_248382A80();
  v44 = sub_248383DC0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v166 = v42;
    v163 = v32;
    v46 = v45;
    v47 = swift_slowAlloc();
    v180[0] = v47;
    *v46 = 136446466;
    v48 = v164;
    sub_248381900();
    v49 = v171;
    sub_248381860();
    (a1._rawValue)(v48, v49);
    v50 = sub_24814A378(aBlock, v175, v180);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    v51 = sub_248383EF0();
    v52 = MEMORY[0x24C1CB100](v166, v51);
    v54 = sub_24814A378(v52, v53, v180);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_248146000, v43, v44, "Processing proactive suggestions for stack %{public}s: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v47, -1, -1);
    v55 = v46;
    v32 = v163;
    MEMORY[0x24C1CD5F0](v55, -1, -1);

    v56 = *(v168 + 8);
    v57 = v162;
  }

  else
  {

    v56 = *(v37 + 8);
    v57 = v39;
  }

  v166 = v56;
  v56(v57, v40);
  v75 = v173;
  v76 = sub_248381910();
  v77 = swift_allocObject();
  v77[2] = v75;
  v77[3] = v41;
  v77[4] = v32;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_2482E9974;
  *(v78 + 24) = v77;
  v178 = sub_248271D98;
  v179 = v78;
  aBlock = MEMORY[0x277D85DD0];
  v175 = 1107296256;
  v176 = sub_248271DC0;
  v177 = &block_descriptor_23;
  v79 = _Block_copy(&aBlock);
  v80 = v41;
  v81 = v75;

  [v76 performCoalescedDataSourceUpdate_];

  _Block_release(v79);
  LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

  if ((v76 & 1) == 0)
  {
    v84 = sub_2482E9974;
    v33 = v172;
    goto LABEL_28;
  }

  __break(1u);
LABEL_58:
  result._1 = v83;
  result._0 = v82;
  return result;
}

id sub_2482DE514(char *a1)
{
  v2 = sub_248381D90();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248382500();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248382A90();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_248381210();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  sub_2483824F0();
  sub_248381860();
  (*(v10 + 8))(v12, v9);
  sub_2483811C0();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24822D578(v15, &unk_27EE94660);
    v21 = sub_24814A31C();
    (*(v48 + 16))(v47, v21, v49);
    v22 = v50;
    v23 = v46;
    v24 = a1;
    v25 = v51;
    (*(v50 + 16))(v46, a1, v51);
    v26 = sub_248382A80();
    v27 = sub_248383DA0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = v29;
      *v28 = 136446210;
      sub_2482E64FC(&qword_27EE92A60, 255, MEMORY[0x277CF8E20]);
      v30 = sub_248384650();
      v31 = v23;
      v33 = v32;
      v34 = *(v22 + 8);
      v34(v31, v25);
      v35 = sub_24814A378(v30, v33, &v52);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_248146000, v26, v27, "Failed to initialize CRSWidget with invalid widget id: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1CD5F0](v29, -1, -1);
      MEMORY[0x24C1CD5F0](v28, -1, -1);

      v34(v24, v25);
    }

    else
    {

      v42 = *(v22 + 8);
      v42(a1, v25);
      v42(v23, v25);
    }

    (*(v48 + 8))(v47, v49);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v37 = sub_2483811E0();
    v38 = sub_2483824C0();
    sub_2483824D0();
    v39 = sub_2482E5B18();
    (*(v44 + 8))(v4, v45);
    v40 = [v36 initWithID:v37 chsWidget:v38 suggestionSource:v39];

    (*(v50 + 8))(v20, v51);
    (*(v17 + 8))(v19, v16);
    return v40;
  }
}

id sub_2482DEB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_248381910();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v16[4] = sub_2482EB944;
  v16[5] = v6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2482DEDC0;
  v16[3] = &block_descriptor_117;
  v7 = _Block_copy(v16);

  v8 = [v5 firstWidgetPassingTest_];
  _Block_release(v7);

  if (!v8)
  {
    return 0;
  }

  v9 = sub_248381BC0();
  v10 = sub_2483818D0();

  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  v12 = [v8 uniqueIdentifier];
  if (!v12)
  {
    sub_248383960();
    v12 = sub_248383930();
  }

  v13 = [v8 suggestionSource] == 1;
  v14 = [objc_allocWithZone(MEMORY[0x277CFC800]) initWithIdentifier:v12 chsWidget:v11 suggestedWidget:v13];

  return v14;
}

uint64_t sub_2482DED28(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = sub_248383960();
  v8 = v7;

  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_248384680();
  }

  return v10 & 1;
}

uint64_t sub_2482DEDC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_2482DEE18()
{
  v0 = sub_248381910();
  v1 = [v0 widgets];

  sub_24814FB28(0, &qword_27EE92CB0);
  v2 = sub_248383B10();

  v31 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_21:
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_248384360();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v29 = v5;
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1CBA50](v6, v2);
      }

      else
      {
        if (v6 >= *(v30 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = sub_248381BC0();
      v10 = sub_2483818D0();

      if (v10)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v11 = v10;
    v12 = [v8 uniqueIdentifier];
    if (!v12)
    {
      sub_248383960();
      v12 = sub_248383930();
    }

    v13 = [v8 suggestionSource] == 1;
    [objc_allocWithZone(MEMORY[0x277CFC800]) initWithIdentifier:v12 chsWidget:v11 suggestedWidget:v13];

    MEMORY[0x24C1CB0D0]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    v5 = v31;
  }

  while (v4 != v3);
LABEL_22:

  v14 = sub_248381910();
  v15 = [v14 uniqueIdentifier];

  if (!v15)
  {
    sub_248383960();
    v15 = sub_248383930();
  }

  v16 = sub_248381910();
  v17 = [v16 activeWidget];

  if (v17)
  {
    v18 = [v17 uniqueIdentifier];

    sub_248383960();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_248381910();
  v22 = [v21 allowsExternalSuggestions];

  v23 = sub_248381910();
  v24 = [v23 allowsSuggestions];

  sub_24814FB28(0, &qword_27EE92CA8);
  v25 = sub_248383B00();

  if (v20)
  {
    v26 = sub_248383930();
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CFC810]) initWithIdentifier:v15 widgets:v25 topWidgetIdentifier:v26 family:1 allowsNewWidget:v22 allowsSmartRotate:v24];

  return v27;
}

uint64_t sub_2482DF22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 176) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = sub_248382A90();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  sub_248383BB0();
  *(v6 + 80) = sub_248383BA0();
  v9 = sub_248383B90();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return MEMORY[0x2822009F8](sub_2482DF348, v9, v8);
}

uint64_t sub_2482DF348()
{
  v53 = v0;
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v51 = MEMORY[0x277D84F90];
    if (i)
    {
      v52 = MEMORY[0x277D84F90];
      sub_2483844C0();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = *(v0 + 16) + 32;
      do
      {
        if (v4)
        {
          v6 = MEMORY[0x24C1CBA50](v3, *(v0 + 16));
        }

        else
        {
          v6 = *(v5 + 8 * v3);
        }

        v7 = v6;
        ++v3;
        sub_2482DEE18();

        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
      }

      while (i != v3);
      v51 = v52;
    }

    *(v0 + 104) = v51;
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = sub_24814A31C();
    *(v0 + 112) = v10;
    v11 = *(v9 + 16);
    *(v0 + 120) = v11;
    *(v0 + 128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46 = v11;
    v47 = v10;
    v11(v8);
    v12 = sub_248382A80();
    v13 = sub_248383DC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 176);
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_248146000, v12, v13, "Updating proactive with current stacks, initial: %{BOOL,public}d", v15, 8u);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    v16 = *(v0 + 72);
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    v19 = *(v0 + 176);

    v20 = *(v18 + 8);
    *(v0 + 136) = v20;
    *(v0 + 144) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v20;
    v20(v16, v17);
    if (v19 != 1)
    {
      break;
    }

    if (!(v51 >> 62))
    {
      v21 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        break;
      }

      goto LABEL_16;
    }

LABEL_32:
    v21 = sub_248384360();
    if (!v21)
    {
      break;
    }

LABEL_16:
    v22 = 0;
    v1 = *(v0 + 24);
    v41 = v1;
    v42 = v21;
    while (1)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x24C1CBA50](v22, v51);
      }

      else
      {
        if (v22 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v23 = *(v51 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v26 = sub_2482EA1BC(v23);
      if (v26)
      {
        v27 = v26;
        v46(*(v0 + 64), v47, *(v0 + 32));
        v28 = v24;
        v29 = sub_248382A80();
        v30 = sub_248383DC0();

        v48 = v30;
        v31 = os_log_type_enabled(v29, v30);
        v49 = *(v0 + 32);
        v50 = *(v0 + 64);
        if (v31)
        {
          v32 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v52 = v44;
          *v32 = 136446210;
          log = v29;
          v33 = [v28 identifier];
          v34 = sub_248383960();
          v36 = v35;

          v37 = sub_24814A378(v34, v36, &v52);
          v21 = v42;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_248146000, log, v48, "Notifying proactive stack was created %{public}s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x24C1CD5F0](v44, -1, -1);
          v38 = v32;
          v1 = v41;
          MEMORY[0x24C1CD5F0](v38, -1, -1);
        }

        else
        {
        }

        v45(v50, v49);

        sub_248382950();
      }

      ++v22;
      if (v25 == v21)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_33:
  *(v0 + 152) = *(*(v0 + 24) + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveClient);

  v39 = swift_task_alloc();
  *(v0 + 160) = v39;
  *v39 = v0;
  v39[1] = sub_2482DF870;

  return MEMORY[0x28214F160](v51);
}

uint64_t sub_2482DF870()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_2482DFAE0;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_2482DF998;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2482DF998()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  v1(v3, v2, v4);
  v5 = sub_248382A80();
  v6 = sub_248383DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_248146000, v5, v6, "Updated proactive with current stacks, initial: %{BOOL,public}d", v8, 8u);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
  }

  (*(v0 + 136))(*(v0 + 56), *(v0 + 32));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2482DFAE0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_248382A80();
  v8 = sub_248383DA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 1026;
    *(v12 + 14) = v11;
    _os_log_impl(&dword_248146000, v7, v8, "Failed to update proactive, error: %{public}@, initial: %{BOOL,public}d", v12, 0x12u);
    sub_24822D578(v13, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 136))(*(v0 + 48), *(v0 + 32));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2482DFCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D20);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_248382A90();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_248383BB0();
  v6[14] = sub_248383BA0();
  v10 = sub_248383B90();
  v6[15] = v10;
  v6[16] = v9;

  return MEMORY[0x2822009F8](sub_2482DFE50, v10, v9);
}

uint64_t sub_2482DFE50()
{
  v61 = v0;
  *(v0 + 200) = 0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = sub_24814A31C();
  *(v0 + 136) = v3;
  v4 = *(v2 + 16);
  *(v0 + 144) = v4;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59 = (v0 + 200);
  v56 = v3;
  v55 = v4;
  (v4)(v1);
  v5 = sub_248382A80();
  v6 = sub_248383DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_248146000, v5, v6, "Notifying proactive about changes to current stacks", v7, 2u);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
  }

  v8 = *(v0 + 104);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 16);

  v12 = *(v9 + 8);
  *(v0 + 160) = v12;
  v54 = v12;
  v12(v8, v10);
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_14;
    }

    v60[0] = MEMORY[0x277D84F90];
    v15 = v60;
    sub_2482E669C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v14 = v60[0];
    v19 = v11 & 0xC000000000000001;
    v58 = *(v0 + 16) + 32;
    do
    {
      if (v19)
      {
        v20 = MEMORY[0x24C1CBA50](v16, *(v0 + 16));
      }

      else
      {
        v20 = *(v58 + 8 * v16);
      }

      v21 = v20;
      v22 = *(v0 + 56);
      v23 = *(v18 + 48);
      sub_248381900();
      *(v22 + v23) = v21;
      v60[0] = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_2482E669C(v24 > 1, v25 + 1, 1);
        v14 = v60[0];
      }

      v26 = *(v0 + 56);
      ++v16;
      v14[2] = v25 + 1;
      sub_248231B84(v26, v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v25, &qword_27EE92D20);
    }

    while (i != v16);
LABEL_14:
    if (v14[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D28);
      v27 = sub_2483845F0();
    }

    else
    {
      v27 = MEMORY[0x277D84F98];
    }

    v60[0] = v27;
    sub_2482E72E4(v14, 1, v60);
    v11 = *(v0 + 24);
    v15 = v60[0];
    v57 = v11 >> 62;
    if (v11 >> 62)
    {
      goto LABEL_31;
    }

    v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_32;
    }

LABEL_19:
    v29 = 0;
    v30 = *(v0 + 24) + 32;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1CBA50](v29, *(v0 + 24));
      }

      else
      {
        if (v29 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v31 = *(v30 + 8 * v29);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v34 = *(v0 + 32);
      v60[0] = v31;
      sub_2482E09DC(v60, v15, v34, v59);

      ++v29;
      if (v33 == v28)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  __break(1u);
LABEL_31:
  v28 = sub_248384360();
  if (v28)
  {
    goto LABEL_19;
  }

LABEL_32:

  if (*v59 == 1)
  {
    if (v57)
    {
      v35 = sub_248384360();
    }

    else
    {
      v35 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = MEMORY[0x277D84F90];
    if (!v35)
    {
      goto LABEL_49;
    }

    v60[0] = MEMORY[0x277D84F90];
    v47 = sub_2483844C0();
    if (v35 < 0)
    {
      __break(1u);
    }

    else
    {
      v48 = 0;
      v49 = v11 & 0xC000000000000001;
      v50 = *(v0 + 24) + 32;
      do
      {
        if (v49)
        {
          v51 = MEMORY[0x24C1CBA50](v48, *(v0 + 24));
        }

        else
        {
          v51 = *(v50 + 8 * v48);
        }

        v52 = v51;
        ++v48;
        sub_2482DEE18();

        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
      }

      while (v35 != v48);
      v46 = v60[0];
LABEL_49:
      *(v0 + 168) = v46;
      *(v0 + 176) = *(*(v0 + 32) + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveClient);

      v53 = swift_task_alloc();
      *(v0 + 184) = v53;
      *v53 = v0;
      v53[1] = sub_2482E04A0;
      v47 = v46;
    }

    return MEMORY[0x28214F160](v47);
  }

  else
  {
    v36 = *(v0 + 88);
    v37 = *(v0 + 64);

    v55(v36, v56, v37);
    v38 = sub_248382A80();
    v39 = sub_248383DC0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    if (v40)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_248146000, v38, v39, "Skip updating proactive, no user changes detected", v43, 2u);
      MEMORY[0x24C1CD5F0](v43, -1, -1);
    }

    v54(v41, v42);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_2482E04A0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_2482E07EC;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_2482E05BC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2482E05BC()
{
  v24 = v0;
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[8];

  v1(v3, v2, v4);

  v5 = sub_248382A80();
  v6 = sub_248383DC0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[8];
  if (v7)
  {
    v22 = v0[20];
    v12 = swift_slowAlloc();
    v21 = v10;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    v14 = sub_24814FB28(0, &qword_27EE92D30);
    v15 = MEMORY[0x24C1CB100](v9, v14);
    v17 = v16;

    v18 = sub_24814A378(v15, v17, &v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_248146000, v5, v6, "Updated proactive with current stacks: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);

    v22(v21, v11);
  }

  else
  {

    v8(v10, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2482E07EC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_248382A80();
  v8 = sub_248383DA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 192);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_248146000, v7, v8, "Failed to update proactive, error: %{public}@", v11, 0xCu);
    sub_24822D578(v12, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
    MEMORY[0x24C1CD5F0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0 + 160))(*(v0 + 80), *(v0 + 64));

  v15 = *(v0 + 8);

  return v15();
}

void sub_2482E09DC(id *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v185 = a4;
  v219 = a3;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v6 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v179 - v7;
  v221 = sub_248382A90();
  v8 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v10 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v179 - v12;
  MEMORY[0x28223BE20](v14);
  v192 = &v179 - v15;
  MEMORY[0x28223BE20](v16);
  v186 = &v179 - v17;
  MEMORY[0x28223BE20](v18);
  v198 = &v179 - v19;
  v213 = sub_248382500();
  v220 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v209 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v218 = &v179 - v22;
  MEMORY[0x28223BE20](v23);
  v197 = &v179 - v24;
  MEMORY[0x28223BE20](v25);
  v217 = &v179 - v26;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D38);
  MEMORY[0x28223BE20](v208);
  v207 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v206 = &v179 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D40);
  MEMORY[0x28223BE20](v30);
  v212 = &v179 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D48);
  v182 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v183 = &v179 - v33;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v34 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v195 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v179 - v37;
  v214 = *a1;
  sub_248381900();
  if (!*(a2 + 16) || (v39 = sub_2482E6D00(v38), (v40 & 1) == 0))
  {
    (*(v34 + 8))(v38, v205);
    return;
  }

  v199 = v6;
  v181 = v13;
  v180 = v10;
  v41 = *(v34 + 8);
  v42 = *(*(a2 + 56) + 8 * v39);
  v194 = v34 + 8;
  v193 = v41;
  v41(v38, v205);
  v222 = sub_248381920();
  v187 = v42;
  v224 = sub_248381920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D50);
  sub_24822D648(&qword_27EE92D58, &qword_27EE92D50);
  sub_2482E64FC(&qword_27EE92D60, 255, MEMORY[0x277CF8E20]);
  v43 = v183;
  sub_2483838E0();

  v44 = v212;
  (*(v182 + 16))(v212, v43, v32);
  v45 = *(v30 + 36);
  v46 = sub_24822D648(&qword_27EE92D68, &qword_27EE92D48);
  v47 = v44;
  sub_248383CE0();
  v184 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveClient;
  sub_248383D00();
  v49 = v45;
  v50 = v46;
  v51 = v213;
  if (*&v44[v49] != v222)
  {
    v201 = (v220 + 4);
    v216 = (v8 + 16);
    v200 = (v220 + 2);
    ++v220;
    v215 = (v8 + 8);
    ++v199;
    *&v48 = 136446466;
    v191 = v48;
    v196 = v50;
    v204 = v8;
    v203 = v32;
    v202 = v49;
    while (1)
    {
      v66 = sub_248383D50();
      v67 = v206;
      sub_248232C78(v68, v206, &qword_27EE92D38);
      v66(&v222, 0);
      v69 = v50;
      sub_248383D10();
      v70 = v207;
      sub_248231B84(v67, v207, &qword_27EE92D38);
      LODWORD(v66) = swift_getEnumCaseMultiPayload();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D70);
      v72 = *v201;
      v73 = v70 + *(v71 + 48);
      if (v66 == 1)
      {
        break;
      }

      v99 = v217;
      v100 = v51;
      v72(v217, v73, v51);
      v101 = sub_24814A31C();
      v102 = *v216;
      v103 = v198;
      v190 = v101;
      v102(v198);
      v104 = v197;
      (*v200)(v197, v99, v100);
      v105 = v214;
      v106 = sub_248382A80();
      v107 = sub_248383D80();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v189 = v102;
        v109 = v108;
        v110 = swift_slowAlloc();
        v222 = v110;
        *v109 = v191;
        v111 = v195;
        sub_248381900();
        sub_24822D648(&qword_27EE92D78, &unk_27EE92A40);
        v112 = v205;
        v113 = sub_248384650();
        v115 = v114;
        v193(v111, v112);
        v116 = sub_24814A378(v113, v115, &v222);

        *(v109 + 4) = v116;
        *(v109 + 12) = 2082;
        sub_2482E64FC(&qword_27EE92A60, 255, MEMORY[0x277CF8E20]);
        v117 = v197;
        v118 = sub_248384650();
        v120 = v119;
        v121 = *v220;
        (*v220)(v117, v100);
        v122 = sub_24814A378(v118, v120, &v222);

        *(v109 + 14) = v122;
        _os_log_impl(&dword_248146000, v106, v107, "Added widget to stack %{public}s: %{public}s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v110, -1, -1);
        v123 = v109;
        v102 = v189;
        MEMORY[0x24C1CD5F0](v123, -1, -1);

        v124 = *v215;
        (*v215)(v198, v221);
      }

      else
      {

        v121 = *v220;
        (*v220)(v104, v100);
        v124 = *v215;
        (*v215)(v103, v221);
      }

      v130 = v210;
      v131 = v217;
      sub_2483824F0();
      v132 = v211;
      sub_248381860();
      (*v199)(v130, v132);
      v129 = sub_2482DEB48(v105, v222, v223);

      v50 = v196;
      if (v129)
      {
        v133 = [v129 isSuggestedWidget];
        v134 = v186;
        if ((v133 & 1) == 0)
        {
          v157 = v221;
          (v102)(v186, v190, v221);
          v158 = v105;
          v159 = v129;
          v160 = v134;
          v161 = sub_248382A80();
          v162 = v157;
          v163 = sub_248383DC0();

          if (os_log_type_enabled(v161, v163))
          {
            v164 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            v222 = v190;
            *v164 = v191;
            LODWORD(v188) = v163;
            v165 = v195;
            sub_248381900();
            sub_24822D648(&qword_27EE92D78, &unk_27EE92A40);
            v166 = v205;
            v167 = sub_248384650();
            v169 = v168;
            v170 = v165;
            v171 = v196;
            v193(v170, v166);
            v172 = sub_24814A378(v167, v169, &v222);

            *(v164 + 4) = v172;
            *(v164 + 12) = 2114;
            *(v164 + 14) = v159;
            v173 = v189;
            *v189 = v129;
            v174 = v159;
            _os_log_impl(&dword_248146000, v161, v188, "Notifying proactive widget was added to stack %{public}s: %{public}@", v164, 0x16u);
            sub_24822D578(v173, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v173, -1, -1);
            v175 = v190;
            __swift_destroy_boxed_opaque_existential_0(v190);
            MEMORY[0x24C1CD5F0](v175, -1, -1);
            v176 = v164;
            v50 = v171;
            MEMORY[0x24C1CD5F0](v176, -1, -1);

            v177 = v186;
            v178 = v221;
          }

          else
          {

            v177 = v160;
            v178 = v162;
          }

          v124(v177, v178);

          sub_248382980();

          v51 = v213;
          v121(v217, v213);
          goto LABEL_37;
        }

        v51 = v213;
        v121(v131, v213);
        goto LABEL_27;
      }

      v51 = v213;
      v121(v131, v213);
LABEL_12:
      v8 = v204;
      v32 = v203;
LABEL_13:
      v47 = v212;
      sub_248383D00();
      if (*(v47 + v202) == v222)
      {
        goto LABEL_4;
      }
    }

    v74 = v218;
    v75 = v51;
    v72(v218, v73, v51);
    v76 = sub_24814A31C();
    v77 = *v216;
    v78 = v192;
    v189 = v76;
    v190 = v77;
    v77(v192);
    v79 = v209;
    (*v200)(v209, v74, v75);
    v80 = v214;
    v81 = sub_248382A80();
    v82 = sub_248383D80();

    v83 = os_log_type_enabled(v81, v82);
    v188 = v80;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v222 = v85;
      *v84 = v191;
      v86 = v195;
      sub_248381900();
      sub_24822D648(&qword_27EE92D78, &unk_27EE92A40);
      v87 = v205;
      v88 = sub_248384650();
      v89 = v86;
      v90 = v75;
      v92 = v91;
      v193(v89, v87);
      v93 = sub_24814A378(v88, v92, &v222);

      *(v84 + 4) = v93;
      *(v84 + 12) = 2082;
      sub_2482E64FC(&qword_27EE92A60, 255, MEMORY[0x277CF8E20]);
      v94 = sub_248384650();
      v96 = v95;
      v97 = *v220;
      v69 = v196;
      (*v220)(v209, v90);
      v98 = sub_24814A378(v94, v96, &v222);

      *(v84 + 14) = v98;
      _os_log_impl(&dword_248146000, v81, v82, "Removed widget from stack %{public}s: %{public}s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v85, -1, -1);
      MEMORY[0x24C1CD5F0](v84, -1, -1);
    }

    else
    {

      v97 = *v220;
      (*v220)(v79, v75);
    }

    v125 = *v215;
    (*v215)(v78, v221);
    v126 = v210;
    v127 = v218;
    sub_2483824F0();
    v128 = v211;
    sub_248381860();
    (*v199)(v126, v128);
    v129 = sub_2482DEB48(v187, v222, v223);

    if (!v129)
    {
      v51 = v213;
      v97(v127, v213);
      v8 = v204;
      v32 = v203;
      v50 = v69;
      goto LABEL_13;
    }

    v50 = v69;
    if (([v129 isSuggestedWidget] & 1) == 0)
    {
      v135 = v181;
      v136 = v221;
      v190(v181, v189, v221);
      v137 = v188;
      v138 = v129;
      v139 = sub_248382A80();
      v140 = v136;
      v141 = sub_248383DC0();

      if (os_log_type_enabled(v139, v141))
      {
        v142 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v222 = v190;
        *v142 = v191;
        LODWORD(v188) = v141;
        v143 = v195;
        sub_248381900();
        sub_24822D648(&qword_27EE92D78, &unk_27EE92A40);
        v144 = v205;
        v145 = sub_248384650();
        v147 = v146;
        v148 = v143;
        v149 = v196;
        v193(v148, v144);
        v150 = sub_24814A378(v145, v147, &v222);

        *(v142 + 4) = v150;
        *(v142 + 12) = 2114;
        *(v142 + 14) = v138;
        v151 = v189;
        *v189 = v129;
        v152 = v138;
        _os_log_impl(&dword_248146000, v139, v188, "Notifying proactive widget was removed from stack %{public}s: %{public}@", v142, 0x16u);
        sub_24822D578(v151, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v151, -1, -1);
        v153 = v190;
        __swift_destroy_boxed_opaque_existential_0(v190);
        MEMORY[0x24C1CD5F0](v153, -1, -1);
        v154 = v142;
        v50 = v149;
        MEMORY[0x24C1CD5F0](v154, -1, -1);

        v155 = v181;
        v156 = v221;
      }

      else
      {

        v155 = v135;
        v156 = v140;
      }

      v125(v155, v156);

      sub_2483829A0();

      v51 = v213;
      v97(v218, v213);
LABEL_37:
      *v185 = 1;
      goto LABEL_12;
    }

    v51 = v213;
    v97(v127, v213);
LABEL_27:

    goto LABEL_12;
  }

LABEL_4:
  sub_24822D578(v47, &qword_27EE92D40);
  v52 = v183;
  sub_248383CE0();
  sub_248383D00();
  v53 = v180;
  if (v222 == v224)
  {
    v54 = v195;
    v55 = sub_24814A31C();
    (*(v8 + 16))(v53, v55, v221);
    v56 = v214;
    v57 = sub_248382A80();
    v58 = sub_248383DC0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v222 = v60;
      *v59 = 136446210;
      sub_248381900();
      sub_24822D648(&qword_27EE92D78, &unk_27EE92A40);
      v61 = v205;
      v62 = sub_248384650();
      v64 = v63;
      v193(v54, v61);
      v65 = sub_24814A378(v62, v64, &v222);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_248146000, v57, v58, "Found no change to stack: %{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1CD5F0](v60, -1, -1);
      MEMORY[0x24C1CD5F0](v59, -1, -1);

      (*(v8 + 8))(v180, v221);
    }

    else
    {

      (*(v8 + 8))(v53, v221);
    }

    (*(v182 + 8))(v183, v32);
  }

  else
  {
    (*(v182 + 8))(v52, v32);
  }
}

uint64_t sub_2482E218C(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_2483A0268[a1 - 1];
  }
}

void sub_2482E21B0(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v73 = a4;
  v75 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v67 = *(v6 - 8);
  v68 = v6;
  (MEMORY[0x28223BE20])();
  v66 = &v66 - v7;
  v8 = sub_248382A90();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = (MEMORY[0x28223BE20])();
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - v11;
  v12 = sub_248381D90();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = sub_248382500();
  v16 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [*a1 identifier];
  sub_248383960();

  v21 = [v19 chsWidget];
  v22 = [v19 chsWidget];

  v23 = a2;
  v24 = sub_248381910();
  v25 = sub_248383930();
  v26 = [v24 firstIconDataSourceWithUniqueIdentifier_];

  if (v26)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = sub_24814A31C();
      v31 = v76;
      v30 = v77;
      v32 = v69;
      (*(v76 + 16))(v69, v29, v77);
      v33 = v23;
      swift_unknownObjectRetain();
      v34 = sub_248382A80();
      v35 = sub_248383DC0();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v78 = v74;
        *v36 = 136446466;
        v38 = v66;
        sub_248381900();
        v39 = v68;
        sub_248381860();
        (*(v67 + 8))(v38, v39);
        v40 = sub_24814A378(v79, v80, &v78);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2114;
        *(v36 + 14) = v28;
        *v37 = v28;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_248146000, v34, v35, "Found proactive suggestion already in stack %{public}s: %{public}@", v36, 0x16u);
        sub_24822D578(v37, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v37, -1, -1);
        v41 = v74;
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x24C1CD5F0](v41, -1, -1);
        MEMORY[0x24C1CD5F0](v36, -1, -1);

        (*(v31 + 8))(v69, v77);
      }

      else
      {

        (*(v31 + 8))(v32, v30);
      }

      sub_2482E8294(&v79, v28);

      return;
    }

    swift_unknownObjectRelease();
  }

  v42 = [v19 identifier];
  v43 = sub_248383960();
  v45 = v44;

  v79 = v43;
  v80 = v45;
  v46 = sub_248381C80();
  MEMORY[0x24C1C8E70](&v79, v46, MEMORY[0x277D837D0]);
  v47 = [v19 chsWidget];
  (*(v71 + 104))(v14, *MEMORY[0x277CF8CB8], v72);
  sub_2483824E0();
  v48 = sub_2483818C0();
  (*(v16 + 8))(v18, v70);
  v49 = v48;
  sub_2482E8294(&v79, v49);

  v50 = sub_24814A31C();
  v52 = v76;
  v51 = v77;
  v53 = v74;
  (*(v76 + 16))(v74, v50, v77);
  v54 = v49;
  v55 = v23;
  v56 = sub_248382A80();
  v57 = sub_248383DC0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v78 = v60;
    *v58 = 136446466;
    v61 = v66;
    sub_248381900();
    v62 = v68;
    sub_248381860();
    (*(v67 + 8))(v61, v62);
    v63 = sub_24814A378(v79, v80, &v78);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2114;
    *(v58 + 14) = v54;
    *v59 = v54;
    v64 = v54;
    _os_log_impl(&dword_248146000, v56, v57, "Found new proactive suggestion for stack %{public}s: %{public}@", v58, 0x16u);
    sub_24822D578(v59, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x24C1CD5F0](v60, -1, -1);
    MEMORY[0x24C1CD5F0](v58, -1, -1);

    (*(v52 + 8))(v74, v77);
  }

  else
  {

    (*(v52 + 8))(v53, v51);
  }

  v65 = v73;
  swift_beginAccess();
  *v65 = 1;
}

uint64_t sub_2482E2A28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  swift_unknownObjectRetain();
  if ([v15 suggestionSource] != 1 || (v36 = a4, swift_beginAccess(), v16 = *(a2 + 16), , v17 = sub_2482E2DFC(v15, v16), , (v17 & 1) != 0))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v20 = sub_24814A31C();
  (*(v11 + 16))(v13, v20, v10);
  swift_unknownObjectRetain();
  v21 = a3;
  v22 = sub_248382A80();
  v23 = sub_248383DC0();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = v23;
    v25 = v24;
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v25 = 136446466;
    v32 = v22;
    sub_248381900();
    sub_248381860();
    (*(v37 + 8))(v9, v7);
    v26 = sub_24814A378(v38[1], v38[2], v38);

    *(v25 + 4) = v26;
    *(v25 + 12) = 2114;
    *(v25 + 14) = v15;
    v27 = v33;
    *v33 = v15;
    swift_unknownObjectRetain();
    v28 = v32;
    _os_log_impl(&dword_248146000, v32, v34, "Removing old proactive suggestion for stack %{public}s: %{public}@", v25, 0x16u);
    sub_24822D578(v27, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    v29 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v11 + 8))(v13, v10);
  v30 = v36;
  v18 = 1;
  swift_beginAccess();
  *(v30 + 16) = 1;
  return v18;
}

uint64_t sub_2482E2DFC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2483843A0();
  }

  else if (*(a2 + 16) && (sub_24814FB28(0, &qword_27EE92CB0), v5 = sub_248384020(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_248384030();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2482E2F14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  LOBYTE(v1) = v1(v2);

  swift_unknownObjectRelease();
  return v1 & 1;
}

Swift::Void __swiftcall DBWidgetHomeViewController._wheelChanged(with:)(UIEvent with)
{
  if ([(objc_class *)with.super.isa type]!= 7)
  {
    v11.super_class = type metadata accessor for DBWidgetHomeViewController();
    objc_msgSendSuper2(&v11, sel__wheelChangedWithEvent_, with.super.isa, v8.receiver, v8.super_class, v9.receiver, v9.super_class, v10.receiver, v10.super_class, v1, v11.super_class);
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (!v3)
  {
    v10.super_class = type metadata accessor for DBWidgetHomeViewController();
    objc_msgSendSuper2(&v10, sel__wheelChangedWithEvent_, with.super.isa, v8.receiver, v8.super_class, v9.receiver, v9.super_class, v1, v10.super_class, v11.receiver, v11.super_class);
    return;
  }

  v4 = v3;
  v5 = [v4 widgetIcon];
  if (!v5)
  {

    v9.super_class = type metadata accessor for DBWidgetHomeViewController();
    objc_msgSendSuper2(&v9, sel__wheelChangedWithEvent_, with.super.isa, v8.receiver, v8.super_class, v1, v9.super_class, v10.receiver, v10.super_class, v11.receiver, v11.super_class);
    return;
  }

  v6 = v5;
  v7 = [(objc_class *)with.super.isa subtype];
  if (v7 == 201)
  {
    [v4 setPreferredDirection_];
    sub_2482E3100();
  }

  else
  {
    if (v7 != 200)
    {

      v8.super_class = type metadata accessor for DBWidgetHomeViewController();
      objc_msgSendSuper2(&v8, sel__wheelChangedWithEvent_, with.super.isa, v1, v8.super_class, v9.receiver, v9.super_class, v10.receiver, v10.super_class, v11.receiver, v11.super_class);
      return;
    }

    [v4 setPreferredDirection_];
    [v6 selectNextActiveDataSource];
  }

  sub_2482E3C40();
}

uint64_t sub_2482E3100()
{
  v1 = [v0 indexOfActiveDataSource];
  result = sub_248380F50();
  if (v1 == result)
  {
    return result;
  }

  result = [v0 iconDataSourceCount];
  if (result < 2)
  {
    return result;
  }

  if (!v1)
  {
    v5 = [v0 lastIconDataSource];
    goto LABEL_12;
  }

  v3 = [v0 iconDataSources];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A68);
  v4 = sub_248383B10();

  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v5 = MEMORY[0x24C1CBA50](result, v4);
    goto LABEL_9;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);
  swift_unknownObjectRetain();
LABEL_9:

LABEL_12:
  [v0 setActiveDataSource_];

  return swift_unknownObjectRelease();
}

void sub_2482E32BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 widgetIcon];
    if (v2)
    {
      v3 = v2;
      [v5 setPreferredDirection_];
      [v3 selectNextActiveDataSource];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void sub_2482E3420()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 widgetIcon];
    if (v2)
    {
      v3 = v2;
      [v5 setPreferredDirection_];
      sub_2482E3100();

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void DBWidgetHomeViewController.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_24814FB28(0, &qword_27EE92A70);
  sub_248151298(&qword_27EE92A78, &qword_27EE92A70);
  v4 = sub_248383C70();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DBWidgetHomeViewController();
  objc_msgSendSuper2(&v5, sel_touchesBegan_withEvent_, v4, a2);

  sub_2482D6FAC();
}

void DBWidgetHomeViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_248151298(&qword_27EE8FBB0, &unk_27EE92A80);
  v4 = sub_248383C70();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DBWidgetHomeViewController();
  objc_msgSendSuper2(&v20, sel_pressesBegan_withEvent_, v4, a2);

  sub_2482D6FAC();
  v5 = sub_248383C70();
  v6 = _DBPressesContainsPressType(v5);

  if (v6)
  {
    v7 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack;
    v8 = *&v2[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack];
    if (v8)
    {
      v9 = [v8 currentWidgetViewController];
      if (v9)
      {
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          [v10 requestLaunch];
        }
      }

      sub_2482E39AC();
    }

    else
    {
      v11 = sub_2482D53BC();
      if (!v11)
      {
        return;
      }

      v12 = *&v2[v7];
      *&v2[v7] = v11;
      v9 = v11;

      v13 = sub_2482D52AC();
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v19[4] = sub_2482E9C08;
        v19[5] = v16;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 1107296256;
        v19[2] = sub_24814C01C;
        v19[3] = &block_descriptor_29;
        v17 = _Block_copy(v19);
        v18 = v14;

        [v15 animateWithDuration:0x20000 delay:v17 options:0 animations:0.2 completion:0.0];
        _Block_release(v17);
      }

      [v2 updatePageControlsOffsetAndFlash_];
      [v9 setAlwaysShowsAsStack:1 animated:1];
      sub_2482E3C40();
    }
  }
}

void sub_2482E39AC()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer;
  [*(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack;
  v4 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v4)
  {
    v5 = v4;
    v6 = sub_2482D52AC();
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v13[4] = sub_2482EBABC;
      v13[5] = v9;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_24814C01C;
      v13[3] = &block_descriptor_134;
      v10 = _Block_copy(v13);
      v11 = v7;

      [v8 animateWithDuration:0x20000 delay:v10 options:0 animations:0.2 completion:0.1];
      _Block_release(v10);
    }

    [v5 setAlwaysShowsAsStack:0 animated:1];

    v12 = *(v0 + v3);
    *(v0 + v3) = 0;
  }
}

Swift::Void __swiftcall DBWidgetHomeViewController.handleBackTap()()
{
  if (*(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack))
  {
    sub_2482E39AC();

    sub_2482E3C40();
  }
}

void sub_2482E3C40()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer;
  [*(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_2482EBB74;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24826F624;
  v7[3] = &block_descriptor_138;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:3.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

Swift::Void __swiftcall DBWidgetHomeViewController.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for DBWidgetHomeViewController();
  objc_msgSendSuper2(&v24, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  sub_2482E39AC();
  v6 = sub_2482D53BC();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 pageControl];
    v9 = [v7 pageControl];
    v10 = [v9 numberOfPages];

    [v8 sizeForNumberOfPages_];
    v12 = v11;

    v13 = v12 * 0.25 + 1.0;
    v14 = sub_2482D53BC();
    if (v14)
    {
      v15 = v14;
      sub_24814FB28(0, &qword_27EE92A90);
      v16 = v7;
      v17 = sub_248384030();

      if (v17)
      {
        v18 = sub_2482D52AC();
        if (v18)
        {
          v19 = v18;
          v20 = [v18 focusView];

          [v20 alpha];
          v22 = v21;

          if (v22 > 0.0)
          {
            v13 = v13 + 4.0;
          }
        }
      }
    }

    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v7 setFixedPageControlOffset_];
  }
}

void DBWidgetHomeViewController.leafIcon(_:didChangeActiveDataSource:)(void *a1, void *a2)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v3 - 8);
  v144 = &v140 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v159 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v155 = &v140 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98);
  MEMORY[0x28223BE20](v8 - 8);
  v154 = &v140 - v9;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v146 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v140 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v140 - v17;
  v19 = sub_24814A31C();
  v20 = *(v11 + 16);
  v148 = v19;
  v149 = v11 + 16;
  v147 = v20;
  (v20)(v18);
  v21 = a1;
  v22 = sub_248382A80();
  v23 = sub_248383DC0();

  v24 = os_log_type_enabled(v22, v23);
  v151 = v10;
  v152 = v11;
  v158 = v21;
  if (!v24)
  {

    v150 = *(v11 + 8);
    v150(v18, v10);
    goto LABEL_9;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v161 = v26;
  *v25 = 136446210;
  v27 = [v21 activeDataSource];
  v28 = v27;
  if (!v27)
  {
    goto LABEL_7;
  }

  if (([v27 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    v28 = 0;
LABEL_7:
    v31 = 0;
    goto LABEL_8;
  }

  v29 = [v28 uniqueIdentifier];
  swift_unknownObjectRelease();
  v28 = sub_248383960();
  v31 = v30;

LABEL_8:
  v160[0] = v28;
  v160[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
  v32 = sub_2483841D0();
  v34 = v33;

  v35 = sub_24814A378(v32, v34, &v161);

  *(v25 + 4) = v35;
  _os_log_impl(&dword_248146000, v22, v23, "Icon activated widget %{public}s", v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x24C1CD5F0](v26, -1, -1);
  MEMORY[0x24C1CD5F0](v25, -1, -1);

  v10 = v151;
  v150 = *(v152 + 8);
  v150(v18, v151);
  v21 = v158;
LABEL_9:
  v36 = v153;
  v37 = *&v153[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack];
  if (v37)
  {
    v38 = v37;
    v39 = [v38 widgetIcon];
    if (v39)
    {
      v40 = v39;
      sub_24814FB28(0, &unk_27EE92AC0);
      v41 = v21;
      v42 = sub_248384030();

      if (v42)
      {
        sub_2482E3C40();
      }
    }
  }

  sub_248381B90();
  v43 = [v21 activeDataSource];
  v44 = &selRef_setToView_;
  if (v43)
  {
    v45 = v43;
    if ([v43 respondsToSelector_])
    {
      v46 = [v45 uniqueIdentifier];
      swift_unknownObjectRelease();
      v47 = sub_248383960();
      v49 = v48;

      v50 = v15;
      v147(v15, v148, v10);
      v51 = v21;

      v52 = sub_248382A80();
      v53 = sub_248383DC0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v143 = v47;
        v55 = v54;
        v56 = swift_slowAlloc();
        v160[0] = v56;
        *v55 = 136446466;
        *(v55 + 4) = sub_24814A378(v143, v49, v160);
        *(v55 + 12) = 2082;
        v57 = [v51 uniqueIdentifier];
        v58 = sub_248383960();
        v142 = v50;
        v59 = v58;
        v60 = v51;
        v62 = v61;

        v63 = sub_24814A378(v59, v62, v160);
        v51 = v60;

        *(v55 + 14) = v63;
        _os_log_impl(&dword_248146000, v52, v53, "Saving active identifier %{public}s for stack %{public}s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v56, -1, -1);
        v64 = v55;
        v47 = v143;
        MEMORY[0x24C1CD5F0](v64, -1, -1);

        v65 = v151;
        v66 = v142;
      }

      else
      {

        v66 = v50;
        v65 = v10;
      }

      v150(v66, v65);
      sub_2483429E8();
      swift_beginAccess();
      v161 = v47;
      v162 = v49;
      v67 = sub_248381C80();

      v68 = MEMORY[0x277D837D0];
      v69 = v154;
      MEMORY[0x24C1C8E70](&v161, v67, MEMORY[0x277D837D0]);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      v71 = [v51 uniqueIdentifier];
      v72 = sub_248383960();
      v74 = v73;

      v161 = v72;
      v162 = v74;
      v75 = sub_248381DD0();
      v76 = v155;
      MEMORY[0x24C1C8E70](&v161, v75, v68);
      v36 = v153;
      v77 = *&v153[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID];
      v78 = *&v153[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_vehicleID + 8];

      sub_24834301C(v69, v76, v77, v78);

      (*(v159 + 1))(v76, v157);
      sub_24822D578(v69, &qword_27EE92A98);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v79 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows;
  v161 = *&v36[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92AA0);
  v81 = sub_24822D648(&qword_27EE92AA8, &qword_27EE92AA0);
  v82 = sub_24822D648(&qword_27EE92AB0, &qword_27EE92AB8);
  v83 = sub_248383AB0();
  v84 = v83;
  v143 = v79;
  v142 = v80;
  v141 = v81;
  v140 = v82;
  if (v83 >> 62)
  {
LABEL_51:
    v85 = sub_248384360();
    if (v85)
    {
      goto LABEL_23;
    }

LABEL_52:

    goto LABEL_53;
  }

  v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v85)
  {
    goto LABEL_52;
  }

LABEL_23:
  v86 = 0;
  v154 = (v84 & 0xFFFFFFFFFFFFFF8);
  v155 = (v84 & 0xC000000000000001);
  v87 = (v159 + 8);
  while (v155)
  {
    v88 = MEMORY[0x24C1CBA50](v86, v84);
    v89 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_36;
    }

LABEL_27:
    v90 = v156;
    v159 = v88;
    sub_248381900();
    v91 = v157;
    sub_248381860();
    (*v87)(v90, v91);
    v93 = v161;
    v92 = v162;
    v94 = [v158 v44[411]];
    v95 = sub_248383960();
    v97 = v96;

    if (v93 == v95 && v92 == v97)
    {
      goto LABEL_37;
    }

    v99 = sub_248384680();

    if (v99)
    {
      goto LABEL_38;
    }

    ++v86;
    v44 = &selRef_setToView_;
    if (v89 == v85)
    {
      goto LABEL_52;
    }
  }

  if (v86 >= *(v154 + 2))
  {
    __break(1u);
    goto LABEL_51;
  }

  v88 = *(v84 + 8 * v86 + 32);
  v89 = v86 + 1;
  if (!__OFADD__(v86, 1))
  {
    goto LABEL_27;
  }

LABEL_36:
  __break(1u);
LABEL_37:

LABEL_38:

  v100 = v153;
  v101 = v145;
  v102 = v159;
  if (v145)
  {
    if ([v145 respondsToSelector_])
    {
      v103 = [v101 uniqueIdentifier];
      v104 = sub_248383960();
      v106 = v105;

      v107 = sub_2482DEB48(v102, v104, v106);

      if (v107)
      {

        sub_248382940();
      }
    }
  }

  v108 = sub_2482DEE18();
  v109 = sub_2482EA1BC(v108);
  v110 = v146;
  if (v109)
  {
    v111 = v109;
    v112 = sub_248381910();
    v113 = [v112 stackChangeReason];

    v158 = v108;
    if ((v113 - 1) >= 5)
    {
      v114 = 0;
    }

    else
    {
      v114 = qword_2483A0268[(v113 - 1)];
    }

    v115 = v151;
    v147(v110, v148, v151);
    v116 = v111;
    v117 = sub_248382A80();
    v118 = sub_248383DC0();

    v119 = os_log_type_enabled(v117, v118);
    v157 = v116;
    if (v119)
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v161 = v121;
      *v120 = 136446466;
      v122 = [v116 identifier];
      v123 = sub_248383960();
      v125 = v124;

      v126 = sub_24814A378(v123, v125, &v161);
      v100 = v153;

      *(v120 + 4) = v126;
      *(v120 + 12) = 2082;
      v127 = ATXWidgetStackChangeReason.description.getter(v114);
      v129 = sub_24814A378(v127, v128, &v161);

      *(v120 + 14) = v129;
      _os_log_impl(&dword_248146000, v117, v118, "Notifying proactive stack activated widget %{public}s, reason: %{public}s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v121, -1, -1);
      MEMORY[0x24C1CD5F0](v120, -1, -1);
    }

    v150(v110, v115);
    v130 = v144;
    v131 = v143;

    v132 = v157;
    v133 = v158;
    sub_248382950();

    sub_248382960();

    v161 = *&v100[v131];
    v134 = sub_248383AB0();
    v135 = sub_248383BE0();
    (*(*(v135 - 8) + 56))(v130, 1, 1, v135);
    sub_248383BB0();
    v136 = v100;
    v137 = sub_248383BA0();
    v138 = swift_allocObject();
    v139 = MEMORY[0x277D85700];
    *(v138 + 16) = v137;
    *(v138 + 24) = v139;
    *(v138 + 32) = v134;
    *(v138 + 40) = v136;
    *(v138 + 48) = 0;
    sub_2482E9E44(0, 0, v130, 0, 0, &unk_24839FF00, v138);

    sub_24822D578(v130, &qword_27EE90480);
  }

  else
  {
  }

LABEL_53:
  sub_2482D6FAC();
}

id sub_2482E4F94()
{
  result = [objc_opt_self() materialViewWithRecipe_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_2482E4FD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_2482E5024(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t DBWidgetHomeViewController.isInDenyList(with:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 widgetDenyListExtensions];

  v2 = sub_248383C80();
  v3 = sub_248384150();
  LOBYTE(v1) = sub_248154F44(v3, v4, v2);

  return v1 & 1;
}

uint64_t sub_2482E5178()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 widgetDenyListExtensions];

  v2 = sub_248383C80();
  v3 = sub_248384150();
  LOBYTE(v1) = sub_248154F44(v3, v4, v2);

  return v1 & 1;
}

Swift::Void __swiftcall DBWidgetHomeViewController.invalidate()()
{
  v0 = sub_248381BA0();
  [v0 deactivate];

  sub_248382180();
}

id sub_2482E530C(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1CBA50](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_248383DD0();
    ++v4;
    if (sub_2482E54B8(v6))
    {
      MEMORY[0x24C1CB0D0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248383B50();
      }

      sub_248383B70();
      v4 = v7;
    }
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_248383DD0();
  v9 = sub_248383B00();

  v10 = [v8 initWithStacks_];

  return v10;
}

id sub_2482E54B8(void *a1)
{
  v2 = sub_248382A90();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248382500();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE94660);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_248381210();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_248381900();
  sub_248381860();
  v20 = v12;
  v21 = v16;
  v22 = v17;
  (*(v10 + 8))(v20, v9);
  sub_2483811C0();

  if ((*(v17 + 48))(v15, 1, v21) == 1)
  {
    sub_24822D578(v15, &unk_27EE94660);
    v23 = sub_24814A31C();
    v25 = v58;
    v24 = v59;
    v26 = v56;
    (*(v58 + 16))(v56, v23, v59);
    v27 = v57;
    v28 = sub_248382A80();
    v29 = sub_248383DA0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_248146000, v28, v29, "Failed to initialize CRSWidget with invalid stack id: %{public}@", v30, 0xCu);
      sub_24822D578(v31, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v31, -1, -1);
      MEMORY[0x24C1CD5F0](v30, -1, -1);
    }

    else
    {
      v32 = v28;
      v28 = v27;
    }

    (*(v25 + 8))(v26, v24);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v21);
    v56 = sub_2483811E0();
    v33 = v57;
    v34 = sub_248381920();
    v61 = MEMORY[0x277D84F90];
    v35 = *(v34 + 16);
    if (v35)
    {
      v52 = v19;
      v53 = v17;
      v54 = v21;
      v59 = sub_248384160();
      v36 = v55 + 16;
      v37 = *(v55 + 16);
      v38 = *(v55 + 80);
      v55 = v34;
      v39 = v34 + ((v38 + 32) & ~v38);
      v40 = *(v36 + 56);
      v41 = (v36 - 8);
      v58 = MEMORY[0x277D84F90];
      v37(v8, v39, v4);
      while (1)
      {
        v42 = v60;
        v37(v60, v8, v4);
        v43 = sub_2482DE514(v42);
        v44 = (*v41)(v8, v4);
        if (v43)
        {
          MEMORY[0x24C1CB0D0](v44);
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v58 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248383B50();
          }

          sub_248383B70();
          v58 = v61;
        }

        v39 += v40;
        if (!--v35)
        {
          break;
        }

        v37(v8, v39, v4);
      }

      v45 = v57;
      v22 = v53;
      v21 = v54;
      v19 = v52;
    }

    else
    {
      v45 = v33;
    }

    v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_248384160();
    v48 = sub_248383B00();

    v49 = v47;
    v50 = v56;
    v51 = [v49 initWithID:v56 widgets:v48];

    (*(v22 + 8))(v19, v21);
    return v51;
  }
}

uint64_t sub_2482E5B18()
{
  v1 = v0;
  v2 = sub_248381D90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277CF8CB0])
  {
    if (v6 == *MEMORY[0x277CF8CB8])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x277CF8CA8])
    {
      return 2;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_248384440();

      v9 = 0xD00000000000001FLL;
      v10 = 0x80000002483B0B30;
      sub_2482E64FC(&qword_27EE92AD0, 255, MEMORY[0x277CF8CC0]);
      v8 = sub_248384650();
      MEMORY[0x24C1CAFD0](v8);

      result = sub_248384580();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2482E5D1C(uint64_t a1, void *a2)
{
  v3 = sub_2483820F0();
  v4 = [a2 environmentConfiguration];
  [v4 screenScale];

  sub_2483820E0();
  return sub_248382100();
}

unint64_t sub_2482E5E2C(unsigned __int8 a1)
{
  v1 = 0x6C616974696E69;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2482E5EB0()
{
  v1 = 0x6C616974696E69;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ATXWidgetStackChangeReason.description.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0x6572436B63617473;
      }

      if (a1 == 6)
      {
        return 0x7365446B63617473;
      }

      return 0x4173746567646977;
    }

    switch(a1)
    {
      case 8:
        return 0xD000000000000010;
      case 9:
        return 0x6775626564;
      case 10:
        return 0xD00000000000001ALL;
    }

    return 0x726568746FLL;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x6F72635372657375;
    }

    return 0x726568746FLL;
  }

  if (a1 == 2)
  {
    return 0x75536D6574737973;
  }

  if (a1 == 3)
  {
    return 0x61466D6574737973;
  }

  return 0x70556D6574737973;
}

uint64_t sub_2482E6114(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2482E620C;

  return v6(a1);
}

uint64_t sub_2482E620C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

size_t sub_2482E6304(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D88);
  v10 = *(sub_248382500() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_248382500() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

size_t sub_2482E64DC(size_t a1, int64_t a2, char a3)
{
  result = sub_2482E66BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2482E64FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2482E6544()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24825ED28;

  return sub_2482D7C84(v4, v5, v6, v3, v2);
}

void *sub_2482E65FC(void *a1, int64_t a2, char a3)
{
  result = sub_2482E69DC(a1, a2, a3, *v3, &qword_27EE92878, &unk_24839FE40, &qword_27EE92AB8);
  *v3 = result;
  return result;
}

void *sub_2482E663C(void *a1, int64_t a2, char a3)
{
  result = sub_2482E6894(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2482E665C(void *a1, int64_t a2, char a3)
{
  result = sub_2482E69DC(a1, a2, a3, *v3, &qword_27EE92C80, &unk_2483A0168, &qword_27EE93430);
  *v3 = result;
  return result;
}

size_t sub_2482E669C(size_t a1, int64_t a2, char a3)
{
  result = sub_2482E6B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2482E66BC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92D90);
  v10 = *(sub_248382110() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_248382110() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void *sub_2482E6894(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C70);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2482E69DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_2482E6B10(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

unint64_t sub_2482E6D00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  sub_2482EBCC0(&qword_27EE92D10);
  v2 = sub_2483838D0();

  return sub_2482E6D98(a1, v2);
}

unint64_t sub_2482E6D98(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_2482EBCC0(&qword_27EE92D18);
      v16 = sub_248383910();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_2482E6F54(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_24822B8A0(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_2482E7C18(v16, v5 & 1);
    v11 = sub_24822B8A0(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2483846E0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_2482E7830();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_248384440();
    MEMORY[0x24C1CAFD0](0xD00000000000001BLL, 0x80000002483B10E0);
    sub_248384530();
    MEMORY[0x24C1CAFD0](39, 0xE100000000000000);
    sub_248384580();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_24822B8A0(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_2482E7C18(v33, 1);
        v29 = sub_24822B8A0(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_2482E72E4(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D20);
  MEMORY[0x28223BE20](v11);
  v15 = v51 - v14;
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_22;
  }

  v51[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v55 = *(v13 + 72);
  v57 = a1;
  sub_248232C78(a1 + v17, v51 - v14, &qword_27EE92D20);
  v52 = v8;
  v58 = *(v8 + 32);
  v59 = v7;
  v58(v10, v15, v7);
  v54 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_2482E6D00(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_2482E7EBC(v25, a2 & 1);
    v20 = sub_2482E6D00(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_2483846E0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_2482E799C();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v62 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v52 + 8))(v10, v59);
      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v53 = *(v52 + 72);
  v33 = v20;
  v58((v32 + v53 * v20), v10, v59);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    v36 = v57;
    if (v56 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v57 + v55 + v17;
    v38 = 1;
    while (v38 < *(v36 + 16))
    {
      sub_248232C78(v37, v15, &qword_27EE92D20);
      v58(v10, v15, v59);
      v18 = *&v15[v54];
      v39 = *a3;
      v40 = sub_2482E6D00(v10);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v24 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v24)
      {
        goto LABEL_23;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_2482E7EBC(v44, 1);
        v40 = sub_2482E6D00(v10);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v45)
      {
        goto LABEL_9;
      }

      v47 = *a3;
      *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = v40;
      v58((v47[6] + v53 * v40), v10, v59);
      *(v47[7] + 8 * v48) = v18;
      v49 = v47[2];
      v24 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v47[2] = v50;
      v37 += v55;
      v36 = v57;
      if (v56 == v38)
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
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_248384440();
  MEMORY[0x24C1CAFD0](0xD00000000000001BLL, 0x80000002483B10E0);
  sub_248384530();
  MEMORY[0x24C1CAFD0](39, 0xE100000000000000);
  sub_248384580();
  __break(1u);
}

id sub_2482E7830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C60);
  v2 = *v0;
  v3 = sub_2483845C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2482E799C()
{
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D28);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2482E7C18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C60);
  v35 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2482E7EBC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92D28);
  v39 = a2;
  result = sub_2483845D0();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2482EBCC0(&qword_27EE92D10);
      result = sub_2483838D0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2482E8294(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_248384370();

    if (v9)
    {

      sub_24814FB28(0, &qword_27EE92CB0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_248384360();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2482E84CC(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_2482E86BC();
    }

    v18 = v8;
    sub_248273128(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_24814FB28(0, &qword_27EE92CB0);
  v11 = sub_248384020();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_2482E88E4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_248384030();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_2482E84CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92CD0);
    v2 = sub_248384410();
    v14 = v2;
    sub_248384320();
    if (sub_248384390())
    {
      sub_24814FB28(0, &qword_27EE92CB0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2482E86BC();
        }

        v2 = v14;
        result = sub_248384020();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_248384390());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2482E86BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92CD0);
  result = sub_248384400();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_248384020();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_2482E88E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2482E86BC();
  }

  else
  {
    if (v7 > v6)
    {
      sub_2482E8A54();
      goto LABEL_12;
    }

    sub_2482E8BA4();
  }

  v8 = *v3;
  v9 = sub_248384020();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24814FB28(0, &qword_27EE92CB0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_248384030();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2483846D0();
  __break(1u);
}

id sub_2482E8A54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92CD0);
  v2 = *v0;
  v3 = sub_2483843F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2482E8BA4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92CD0);
  result = sub_248384400();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_248384020();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2482E8DB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_248384360();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_248384360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24822D648(&qword_27EE92CE8, &qword_27EE92CE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CE0);
            v9 = sub_2482AB398(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24814FB28(0, &qword_27EE8FE90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2482E8F6C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusRingSpacing) = 0x4010000000000000;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackRows;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92878);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24839C7F0;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 32) = MEMORY[0x277D84F90];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_cancelTouchesAssertions) = v3;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_pendingProactiveSuggestions) = 0;
  v4 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetStackViewControllerByFocusView;
  *(v0 + v4) = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusViews) = v3;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_focusTimer) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_foreground) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController____lazy_storage___timelinePlaybackController) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_legibilitySettings) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_shouldBeIndicatedInPageControl) = 1;
  *(v0 + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_shouldObscureBackgroundWhileVisible) = 0;
  sub_248384580();
  __break(1u);
}

void sub_2482E9138()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController;
    v3 = [*(Strong + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetMultiStackViewController) view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 layer];

      LODWORD(v6) = 1.0;
      [v5 setOpacity_];

      v7 = [*&v1[v2] view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 layer];

        v10 = *(MEMORY[0x277CD9DE8] + 80);
        v53[4] = *(MEMORY[0x277CD9DE8] + 64);
        v53[5] = v10;
        v11 = *(MEMORY[0x277CD9DE8] + 112);
        v53[6] = *(MEMORY[0x277CD9DE8] + 96);
        v53[7] = v11;
        v12 = *(MEMORY[0x277CD9DE8] + 16);
        v53[0] = *MEMORY[0x277CD9DE8];
        v53[1] = v12;
        v13 = *(MEMORY[0x277CD9DE8] + 48);
        v53[2] = *(MEMORY[0x277CD9DE8] + 32);
        v53[3] = v13;
        [v9 setTransform_];

        v14 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v15 = sub_248383CC0();
        v16 = sub_248383930();
        [v14 setValue:v15 forKey:v16];

        v17 = [*&v1[v2] view];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 layer];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_24839C7F0;
          *(v20 + 56) = sub_24814FB28(0, &qword_27EE90600);
          *(v20 + 32) = v14;
          v52 = v14;
          v21 = sub_248383B00();

          [v19 setFilters_];

          v22 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) initWithPerceptualDuration:0.7111 bounce:0.0];
          v23 = sub_248383930();
          [v22 setKeyPath_];

          v24 = v22;
          [v24 setBeginTime_];
          v25 = v24;
          v26 = sub_248381440();
          [v25 setFromValue_];

          v27 = sub_248381440();
          [v25 setToValue_];

          v28 = *MEMORY[0x277CDA228];
          [v25 setFillMode_];
          v29 = [*&v1[v2] view];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 layer];

            v32 = sub_248383930();
            [v31 addAnimation:v25 forKey:v32];

            v33 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) initWithPerceptualDuration:0.7111 bounce:0.0];
            v34 = sub_248383930();
            [v33 setKeyPath_];

            [v25 setBeginTime_];
            v35 = v33;
            v36 = sub_248381440();
            [v35 setFromValue_];

            v37 = sub_248381440();
            [v35 setToValue_];

            [v35 setFillMode_];
            v38 = [*&v1[v2] view];
            if (v38)
            {
              v39 = v38;
              v40 = [v38 layer];

              v41 = sub_248383930();
              [v40 addAnimation:v35 forKey:v41];

              v42 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) initWithPerceptualDuration:0.7111 bounce:0.0];
              v43 = sub_248383930();
              [v42 setKeyPath_];

              v44 = v42;
              [v44 setBeginTime_];
              v45 = v44;
              v46 = sub_248381440();
              [v45 setFromValue_];

              v47 = sub_248381440();
              [v45 setToValue_];

              [v45 setFillMode_];
              v48 = [*&v1[v2] view];
              if (v48)
              {
                v49 = v48;
                v50 = [v48 layer];

                v51 = sub_248383930();
                [v50 addAnimation:v45 forKey:v51];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2482E9844()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController;
    v3 = *(Strong + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_introViewController);
    if (v3)
    {
      [v3 willMoveToParentViewController_];
      v3 = *&v1[v2];
      if (v3)
      {
        v4 = [v3 view];
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = v4;
        [v4 removeFromSuperview];

        v3 = *&v1[v2];
      }
    }

    [v3 removeFromParentViewController];
    v6 = *&v1[v2];
    *&v1[v2] = 0;

    sub_2482D6FAC();
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = sub_248383930();
    [v7 setBool:1 forKey:v8];
  }
}

uint64_t sub_2482E9974()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = [v1 suggestedWidgets];
  sub_24814FB28(0, &qword_27EE92CA8);
  sub_248151298(&qword_27EE92CC8, &qword_27EE92CA8);
  v6 = sub_248383C80();

  v7 = v2;
  sub_2482E9C14(v6, v7, v4 + 16, (v3 + 16));

  v8 = sub_248381910();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v7;
  v9[4] = v3;
  aBlock[4] = sub_2482EBBC4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2482E2F14;
  aBlock[3] = &block_descriptor_147;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  [v8 removeIconDataSourcesPassingTest_];
  _Block_release(v10);
}

BOOL _DBPressesContainsPressType(void *a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___DBPressesContainsPressType_block_invoke_3;
  v5[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v5[4] = 4;
  v1 = a1;
  v2 = [v1 objectsPassingTest:v5];
  v3 = [v2 count];

  return v3 != 0;
}

void sub_2482E9C14(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_248384320();
    sub_24814FB28(0, &qword_27EE92CA8);
    sub_248151298(&qword_27EE92CC8, &qword_27EE92CA8);
    sub_248383CB0();
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v27 = v18;
        sub_2482E21B0(&v27, a2, a3, a4);

        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_248384390())
        {
          break;
        }

        sub_24814FB28(0, &qword_27EE92CA8);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
      }

      while (v27);
    }

LABEL_19:
    sub_248167908();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2482E9E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_248383B90();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_248232C78(a3, v13, &qword_27EE90480);
  v18 = sub_248383BE0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_24822D578(v13, &qword_27EE90480);
  }

  else
  {
    sub_248383BD0();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_2483839C0() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

void *sub_2482EA1BC(void *a1)
{
  v1 = [a1 widgets];
  sub_24814FB28(0, &qword_27EE92CA8);
  v2 = sub_248383B10();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1CBA50](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_248383960();
      v11 = v10;

      v12 = [a1 topWidgetIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = sub_248383960();
        v16 = v15;

        if (v9 == v14 && v11 == v16)
        {

          return v6;
        }

        v17 = sub_248384680();

        if (v17)
        {

          return v6;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  return 0;
}

uint64_t sub_2482EA3C0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24825ED28;

  return sub_2482DF22C(v5, v6, v7, v2, v3, v4);
}

void _s9DashBoard26DBWidgetHomeViewControllerC020configureWidgetStackeF0_3forySo09SBHWidgetieF0C_14CarPlayAssetUI0h5MultiiE11Controlling_ptF_0(void *a1)
{
  [a1 setBackgroundViewFadeAnimationEnabled_];
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [a1 setFixedBackgroundViewBoundsOutset_];

  v9 = sub_2482E4F94;
  v10 = 0;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_2482E4FD4;
  v8 = &block_descriptor_108;
  v3 = _Block_copy(&v5);
  [a1 setBackgroundViewProvider_];
  _Block_release(v3);
  v9 = nullsub_1;
  v10 = 0;
  v5 = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = sub_2482E5024;
  v8 = &block_descriptor_111;
  v4 = _Block_copy(&v5);
  [a1 setBackgroundViewConfigurator_];
  _Block_release(v4);
}

uint64_t sub_2482EA5D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24814A31C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = sub_248382A80();
  v15 = sub_248383DC0();

  if (os_log_type_enabled(v14, v15))
  {
    v30 = v15;
    v31 = v2;
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    v29 = v16;
    *v16 = 136446210;
    sub_2483818E0();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v4, 1, v17) == 1)
    {
      (*(v18 + 56))(v7, 1, 1, v17);
      if (v19(v4, 1, v17) != 1)
      {
        sub_24822D578(v4, &qword_27EE92A98);
      }
    }

    else
    {
      (*(v18 + 32))(v7, v4, v17);
      (*(v18 + 56))(v7, 0, 1, v17);
    }

    sub_24822D648(&qword_27EE92CA0, &unk_27EE92A50);
    v20 = sub_2483841D0();
    v22 = v21;
    sub_24822D578(v7, &qword_27EE92A98);
    v23 = sub_24814A378(v20, v22, &v32);

    v24 = v29;
    *(v29 + 1) = v23;
    _os_log_impl(&dword_248146000, v14, v30, "Stack activated widget %{public}s", v24, 0xCu);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    MEMORY[0x24C1CD5F0](v24, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

void _s9DashBoard26DBWidgetHomeViewControllerC15launchActiveApp2in4with3fory14CarPlayAssetUI11WidgetStackC_ShySo8BSActionCGAH0q5MultirE11Controlling_ptF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v11);
  v135 = &v122 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v122 - v14;
  MEMORY[0x28223BE20](v15);
  v134 = &v122 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v122 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v122 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v132 = v19;
    v133 = a2;
    v137 = v4;
    v25 = sub_248381910();
    v26 = [v25 activeWidget];

    if (v26)
    {
      v27 = v22;
      v28 = v24;
      v29 = v5;
      v30 = v26;
      v31 = [v30 uniqueIdentifier];
      v32 = sub_248383960();
      v34 = v33;

      v35 = sub_2482DEB48(a1, v32, v34);
      v5 = v29;
      v24 = v28;
      v22 = v27;

      if (v35)
      {

        sub_248382990();
      }
    }

    v36 = sub_248381910();
    v37 = [v36 activeWidget];

    if (v37 && (v38 = [v37 containerBundleIdentifier], v37, v38))
    {
      v39 = sub_248383960();
      v41 = v40;
      v42 = [objc_opt_self() sharedInstance];
      v43 = [v42 applicationWithBundleIdentifier_];

      v44 = sub_24814A31C();
      v131 = v5;
      v45 = *(v5 + 16);
      if (v43)
      {
        v127 = v39;
        v135 = v44;
        v45(v22);
        v46 = v43;
        v47 = v43;

        v48 = sub_248382A80();
        v49 = sub_248383DC0();

        v128 = v49;
        v130 = v48;
        v50 = os_log_type_enabled(v48, v49);
        v51 = &selRef__setupMainDisplayWithDisplayConfiguration_session_defaultSceneWorkspaceIdentifier_;
        v129 = v22;
        v126 = v46;
        if (v50)
        {
          v52 = swift_slowAlloc();
          v125 = v45;
          v53 = v52;
          v54 = swift_slowAlloc();
          v123 = v54;
          v124 = swift_slowAlloc();
          v139 = v124;
          *v53 = 138543874;
          *(v53 + 4) = v47;
          *v54 = v46;
          *(v53 + 12) = 2082;
          v55 = [v47 appPolicy];
          v138 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92C88);
          sub_248151298(&qword_27EE92C90, &qword_27EE92C98);
          v56 = sub_2483841D0();
          v58 = v57;

          v59 = sub_24814A378(v56, v58, &v139);

          *(v53 + 14) = v59;
          *(v53 + 22) = 2082;
          v60 = v41;
          v61 = v47;
          v62 = v137;
          sub_24814FB28(0, &unk_27EE91610);
          sub_248151298(&qword_27EE90E30, &unk_27EE91610);
          v63 = v62;
          v47 = v61;
          v41 = v60;
          v64 = sub_248383C90();
          v66 = sub_24814A378(v64, v65, &v139);

          *(v53 + 24) = v66;
          v51 = &selRef__setupMainDisplayWithDisplayConfiguration_session_defaultSceneWorkspaceIdentifier_;
          v67 = v130;
          _os_log_impl(&dword_248146000, v130, v128, "Requesting to launch application: %{public}@, policy: %{public}s, actions: %{public}s", v53, 0x20u);
          v68 = v123;
          sub_24822D578(v123, &qword_27EE8FE40);
          MEMORY[0x24C1CD5F0](v68, -1, -1);
          v69 = v124;
          swift_arrayDestroy();
          MEMORY[0x24C1CD5F0](v69, -1, -1);
          v70 = v53;
          v45 = v125;
          MEMORY[0x24C1CD5F0](v70, -1, -1);

          v71 = *(v131 + 8);
          v71(v129, v63);
        }

        else
        {

          v71 = *(v131 + 8);
          v71(v129, v137);
        }

        v87 = v132;
        v88 = [v47 v51[372]];
        if (!v88 || (v89 = v88, v90 = [v88 isCarPlaySupported], v89, !v90))
        {
          v98 = v47;
          v99 = v136;
          (v45)(v136, v135, v137);
          v100 = v99;

          v101 = sub_248382A80();
          v102 = sub_248383DA0();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v139 = v104;
            *v103 = 136446210;
            v105 = sub_24814A378(v127, v41, &v139);

            *(v103 + 4) = v105;
            _os_log_impl(&dword_248146000, v101, v102, "Application is not supported on CarPlay: %{public}s", v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v104);
            MEMORY[0x24C1CD5F0](v104, -1, -1);
            MEMORY[0x24C1CD5F0](v103, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v106 = v100;
          goto LABEL_35;
        }

        if ([v47 isLockedOrHidden] & 1) != 0 || (objc_msgSend(v47, sel_isHidden))
        {

          v91 = v134;
          (v45)(v134, v135, v137);
          v92 = v47;
          v93 = sub_248382A80();
          v94 = sub_248383DA0();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            *v95 = 138543362;
            *(v95 + 4) = v92;
            *v96 = v126;
            v97 = v92;
            _os_log_impl(&dword_248146000, v93, v94, "Application is locked or hidden on CarPlay: %{public}@", v95, 0xCu);
            sub_24822D578(v96, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v96, -1, -1);
            MEMORY[0x24C1CD5F0](v95, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v106 = v91;
LABEL_35:
          v71(v106, v137);
          return;
        }

        v136 = v47;
        (v45)(v87, v135, v137);

        v107 = sub_248382A80();
        v108 = sub_248383DC0();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v139 = v110;
          *v109 = 136446466;
          v111 = sub_24814A378(v127, v41, &v139);

          *(v109 + 4) = v111;
          *(v109 + 12) = 2082;
          sub_24814FB28(0, &unk_27EE91610);
          sub_248151298(&qword_27EE90E30, &unk_27EE91610);
          v112 = sub_248383C90();
          v114 = sub_24814A378(v112, v113, &v139);

          *(v109 + 14) = v114;
          _os_log_impl(&dword_248146000, v107, v108, "Launching app with bundle identifier %{public}s, actions: %{public}s", v109, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1CD5F0](v110, -1, -1);
          MEMORY[0x24C1CD5F0](v109, -1, -1);

          v115 = v132;
        }

        else
        {

          v115 = v87;
        }

        v71(v115, v137);
        v116 = [objc_allocWithZone(DBActivationSettings) init];
        [v116 setLaunchSource_];
        sub_24814FB28(0, &unk_27EE91610);
        sub_248151298(&qword_27EE90E30, &unk_27EE91610);
        v117 = sub_248383C70();
        [v116 setActions_];

        v118 = objc_opt_self();
        v119 = v136;
        v120 = [v118 launchInfoForApplication:v136 withActivationSettings:v116];
        v121 = [objc_opt_self() eventWithType:4 context:v120];
        [v24 handleEvent_];
        swift_unknownObjectRelease();
      }

      else
      {
        v81 = v135;
        (v45)(v135, v44, v137);

        v82 = sub_248382A80();
        v83 = sub_248383DA0();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v139 = v85;
          *v84 = 136446210;
          v86 = sub_24814A378(v39, v41, &v139);

          *(v84 + 4) = v86;
          _os_log_impl(&dword_248146000, v82, v83, "Unknown application with container bundle identifier %{public}s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v85);
          MEMORY[0x24C1CD5F0](v85, -1, -1);
          MEMORY[0x24C1CD5F0](v84, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v131 + 8))(v81, v137);
      }
    }

    else
    {
      v72 = sub_24814A31C();
      v73 = v137;
      (*(v5 + 16))(v10, v72, v137);
      v74 = sub_248382A80();
      v75 = sub_248383DA0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_248146000, v74, v75, "Unknown container bundle identifier", v76, 2u);
        MEMORY[0x24C1CD5F0](v76, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v10, v73);
    }
  }

  else
  {
    v77 = sub_24814A31C();
    (*(v5 + 16))(v7, v77, v4);
    v78 = sub_248382A80();
    v79 = sub_248383DA0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_248146000, v78, v79, "Missing environment", v80, 2u);
      MEMORY[0x24C1CD5F0](v80, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_2482EB810()
{
  result = qword_27EE92AD8;
  if (!qword_27EE92AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE92AD8);
  }

  return result;
}

uint64_t sub_2482EB89C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24823DDD0;

  return sub_2482DF22C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2482EB94C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24825ED28;

  return sub_2482E6114(a1, v4);
}

uint64_t sub_2482EBA04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24823DDD0;

  return sub_2482E6114(a1, v4);
}

void sub_2482EBAC8(double a1, double a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 focusView];
  [v6 setAlpha_];

  v7 = [v5 platterView];
  [v7 setAlpha_];
}

void sub_2482EBB74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2482E39AC();
  }
}

uint64_t sub_2482EBBD0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24825ED28;

  return sub_2482DFCCC(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2482EBCC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE92A40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2482EBD2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer];
    *&Strong[OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_proactiveSuggestionsProcessingTimer] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_24814A5AC();
  }
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2482EBEB8(void *a1)
{
  v2 = sub_248384070();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v9 = [a1 traitCollection];
  v10 = [v9 wallpaperAppearanceType];

  sub_2483840F0();
  if (![a1 isFocused])
  {
    v14 = [objc_opt_self() secondarySystemFillColor];
LABEL_7:
    v15 = v14;
    goto LABEL_10;
  }

  if (v10 != 1)
  {
    v14 = [objc_opt_self() _carSystemFocusColor];
    goto LABEL_7;
  }

  v11 = objc_opt_self();
  if (v8 == 1)
  {
    v12 = [v11 systemBlackColor];
    v13 = [v12 colorWithAlphaComponent_];
  }

  else
  {
    v12 = [v11 systemWhiteColor];
    v13 = [v12 colorWithAlphaComponent_];
  }

  v16 = v13;

LABEL_10:
  v17 = sub_248384050();
  sub_248382C00();
  v17(v24, 0);
  v18 = [a1 isFocused];
  v19 = objc_opt_self();
  v20 = &selRef__carSystemFocusLabelColor;
  if (!v18)
  {
    v20 = &selRef_labelColor;
  }

  v21 = [v19 *v20];
  if ([a1 isHighlighted])
  {
    v22 = [v21 colorWithProminence_];
  }

  else
  {
    v23 = v21;
  }

  sub_2483840A0();
  (*(v3 + 104))(v6, *MEMORY[0x277D74FD8], v2);
  sub_248384080();
}

id DBUserAlertWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBUserAlertWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DBInstrumentDataSources.__allocating_init(displayID:environment:signpostCoordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_2482F02A4(a1, a2, a3, a4);

  return v8;
}

uint64_t DBInstrumentDataSources.init(displayID:environment:signpostCoordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2482F02A4(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2482EC400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F20);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v11 - v5;
  if (*(v0 + 48))
  {
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = [DBApp carManager];
    sub_24814FB28(0, &qword_27EE92F28);
    sub_248151298(&qword_27EE92F30, &qword_27EE92F28);
    v9 = sub_248380E50();

    sub_248380F00();
    sub_24814FB28(0, &qword_27EE92E80);
    sub_24822D648(&qword_27EE92F38, &qword_27EE92F20);
    v7 = sub_248382F00();
    (*(v3 + 8))(v6, v2);
    *(v1 + 48) = v7;
  }

  return v7;
}

uint64_t sub_2482EC600()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = DBApp;

    v3 = [v2 carManager];
    sub_248382B40();
    swift_allocObject();
    v1 = sub_248382B30();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_2482EC6BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93038);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93040);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93048);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93050);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[8])
  {
    v17 = v0[8];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = sub_2482EC400();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92E88);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F60);
    v45 = v11;
    v48 = v9;
    sub_24822D648(&qword_27EE92E98, &qword_27EE92E88);
    sub_24822D648(&qword_27EE92F68, &qword_27EE92F70);
    v19 = sub_248382EF0();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = sub_248382DA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F78);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93058);
    sub_24822D648(&qword_27EE92F88, &qword_27EE92F78);
    sub_24822D648(&qword_27EE93060, &qword_27EE93058);
    sub_248383010();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93068);
    sub_24822D648(&qword_27EE93070, &qword_27EE93038);
    v25 = v43;
    v26 = v44;
    sub_248382F60();
    (*(v24 + 8))(v23, v26);
    v27 = sub_24822D648(&qword_27EE93078, &qword_27EE93040);
    v28 = sub_24822D648(&qword_27EE93080, &qword_27EE93068);
    v29 = v45;
    v30 = v41;
    MEMORY[0x24C1CA5C0](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    sub_24822D648(&qword_27EE93088, &qword_27EE93048);

    v35 = v47;
    v36 = v49;
    sub_248382F30();

    (*(v48 + 8))(v29, v35);
    sub_24822D648(&unk_27EE93090, &qword_27EE93050);
    v37 = v50;
    v38 = v36;
    v17 = sub_248382F10();
    (*(v51 + 8))(v38, v37);
    v31[8] = v17;
  }

  return v17;
}

uint64_t sub_2482ECE18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v22 = a2;
  v26 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FF0);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE930B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE930C0);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v21 - v15;
  v29 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F60);
  sub_24822D648(&qword_27EE93008, &qword_27EE92F60);
  sub_248383AC0();
  sub_24814FB28(0, &qword_27EE930C8);
  v17 = v21;
  sub_248382D50();
  (*(v5 + 8))(v7, v17);
  v27 = v22;
  v28 = v24;
  sub_248382D60();
  v18 = *(v9 + 8);
  v18(v11, v8);
  swift_getKeyPath();
  sub_24822D648(&qword_27EE930E0, &qword_27EE930B8);
  sub_248382F50();

  v18(v14, v8);
  sub_24822D648(&qword_27EE930E8, &qword_27EE930C0);
  v19 = v23;
  sub_248382F80();
  return (*(v25 + 8))(v16, v19);
}

id sub_2482ED1F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 picker];
  *a2 = result;
  return result;
}

uint64_t sub_2482ED2AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE930A0);
  sub_24822D648(&qword_27EE912F8, &qword_27EE912F0);
  sub_24822D648(&qword_27EE930B0, &unk_27EE930A0);
  return sub_248382D70();
}

uint64_t sub_2482ED404()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F40);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F50);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F58);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  if (v0[10])
  {
    v17 = v0[10];
  }

  else
  {
    v50 = v13;
    v51 = v14;
    v49 = v16;
    v18 = sub_2482EC400();
    v44 = v1;
    v53 = v18;
    swift_getKeyPath();
    v43 = v7;
    v47 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92E88);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F60);
    v45 = v11;
    v48 = v9;
    sub_24822D648(&qword_27EE92E98, &qword_27EE92E88);
    sub_24822D648(&qword_27EE92F68, &qword_27EE92F70);
    v19 = sub_248382EF0();
    v40[2] = v19;

    v53 = v19;
    v42 = v0;
    v20 = v0[2];
    v21 = v0[3];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    v40[1] = sub_248382DA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F78);
    v41 = v4;
    v23 = v3;
    v24 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F80);
    sub_24822D648(&qword_27EE92F88, &qword_27EE92F78);
    sub_24822D648(&qword_27EE92F90, &qword_27EE92F80);
    sub_248383010();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F98);
    sub_24822D648(&qword_27EE92FA0, &qword_27EE92F40);
    v25 = v43;
    v26 = v44;
    sub_248382F60();
    (*(v24 + 8))(v23, v26);
    v27 = sub_24822D648(&qword_27EE92FA8, &qword_27EE92F48);
    v28 = sub_24822D648(&qword_27EE92FB0, &qword_27EE92F98);
    v29 = v45;
    v30 = v41;
    MEMORY[0x24C1CA5C0](v41, v27, v28);
    (*(v46 + 8))(v25, v30);
    v31 = v42;
    v33 = v42[2];
    v32 = v42[3];
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    sub_24822D648(&qword_27EE92FB8, &qword_27EE92F50);

    v35 = v47;
    v36 = v49;
    sub_248382F30();

    (*(v48 + 8))(v29, v35);
    sub_24822D648(&unk_27EE92FC0, &qword_27EE92F58);
    v37 = v50;
    v38 = v36;
    v17 = sub_248382F10();
    (*(v51 + 8))(v38, v37);
    v31[10] = v17;
  }

  return v17;
}

uint64_t sub_2482EDB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v22 = a2;
  v26 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FF0);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93000);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v21 - v15;
  v29 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F60);
  sub_24822D648(&qword_27EE93008, &qword_27EE92F60);
  sub_248383AC0();
  sub_24814FB28(0, &qword_27EE93010);
  v17 = v21;
  sub_248382D50();
  (*(v5 + 8))(v7, v17);
  v27 = v22;
  v28 = v24;
  sub_248382D60();
  v18 = *(v9 + 8);
  v18(v11, v8);
  swift_getKeyPath();
  sub_24822D648(&qword_27EE93028, &qword_27EE92FF8);
  sub_248382F50();

  v18(v14, v8);
  sub_24822D648(&qword_27EE93030, &qword_27EE93000);
  v19 = v23;
  sub_248382F80();
  return (*(v25 + 8))(v16, v19);
}

id sub_2482EDEEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicContentElement];
  *a2 = result;
  return result;
}

uint64_t sub_2482EDFA0@<X0>(void (*a1)(void)@<X3>, unint64_t *a2@<X4>, void (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_2482F0340(a2, a3);
  result = sub_248380E60();
  *a4 = result;
  return result;
}

uint64_t sub_2482EE010()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FD8);
  sub_24822D648(&qword_27EE92FE0, &qword_27EE92FD0);
  sub_24822D648(&qword_27EE92FE8, &qword_27EE92FD8);
  return sub_248382D70();
}

uint64_t sub_2482EE10C()
{
  if (v0[11])
  {
    v1 = v0[11];
  }

  else
  {
    v1 = sub_2482EE16C(v0);
    v0[11] = v1;
  }

  return v1;
}

uint64_t sub_2482EE16C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE930F0);
  v3 = *(v2 - 8);
  v85 = v2;
  v86 = v3;
  MEMORY[0x28223BE20](v2);
  v83 = &v53 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE930F8);
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93100);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x28223BE20](v6);
  v73 = &v53 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93108);
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93110);
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v53 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93118);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v55 = &v53 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93120);
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v57 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93128);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  MEMORY[0x28223BE20](v15);
  v61 = &v53 - v17;
  v89 = sub_2482EC400();
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92E88);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93130);
  v72 = MEMORY[0x277CBCD90];
  v63 = sub_24822D648(&qword_27EE92E98, &qword_27EE92E88);
  v62 = sub_24822D648(&qword_27EE93138, &qword_27EE93140);
  v18 = sub_248382EF0();

  v89 = v18;
  v54 = a1;
  v20 = a1[2];
  v19 = a1[3];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;

  sub_248382DA0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93150);
  v59 = sub_24822D648(&qword_27EE93158, &qword_27EE93148);
  v58 = MEMORY[0x277CBCCD0];
  sub_24822D648(&unk_27EE93160, &qword_27EE93150);
  v22 = v55;
  sub_248383010();

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90248);
  sub_24822D648(&qword_27EE93170, &qword_27EE93118);
  v23 = v57;
  v24 = v66;
  sub_248382F60();
  (*(v67 + 8))(v22, v24);
  v25 = v54;
  v27 = v54[2];
  v26 = v54[3];
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v67 = MEMORY[0x277CBCC08];
  sub_24822D648(&qword_27EE93178, &qword_27EE93120);

  v29 = v68;
  v30 = v61;
  sub_248382F30();

  (*(v71 + 8))(v23, v29);
  sub_24822D648(&qword_27EE93180, &qword_27EE93128);
  v31 = v69;
  v32 = sub_248382F10();
  (*(v70 + 8))(v30, v31);
  v89 = v25[6];
  swift_getKeyPath();

  v33 = sub_248382EF0();

  v89 = v33;
  v35 = v25[2];
  v34 = v25[3];
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  sub_248382DA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93188);
  sub_24822D648(&qword_27EE93190, &qword_27EE93188);
  v37 = v73;
  sub_248383010();

  sub_24822D648(&qword_27EE93198, &qword_27EE93100);
  v38 = v74;
  v39 = v76;
  sub_248382F60();
  (*(v77 + 8))(v37, v39);
  v41 = v25[2];
  v40 = v25[3];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v40;
  sub_24822D648(&qword_27EE931A0, &qword_27EE93108);

  v43 = v78;
  v44 = v75;
  sub_248382F30();

  (*(v81 + 8))(v38, v43);
  sub_24822D648(&qword_27EE931A8, &qword_27EE93110);
  v45 = v79;
  v46 = sub_248382F10();
  (*(v80 + 8))(v44, v45);
  v88 = v46;
  v89 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE931B0);
  sub_24822D648(&qword_27EE90260, &unk_27EE931B0);
  v47 = v83;
  sub_248382D00();
  sub_24822D648(&qword_27EE931C0, &qword_27EE930F0);
  v48 = v82;
  v49 = v85;
  sub_248382F60();
  (*(v86 + 8))(v47, v49);
  sub_24822D648(&unk_27EE931C8, &qword_27EE930F8);
  v50 = v84;
  v51 = sub_248382F10();

  (*(v87 + 8))(v48, v50);
  return v51;
}

uint64_t sub_2482EEE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a2;
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE931D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93238);
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - v11;
  v20 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93130);
  sub_24822D648(&qword_27EE931E8, &qword_27EE93130);
  sub_248383AC0();
  swift_getKeyPath();
  sub_24814FB28(0, &qword_27EE93250);
  sub_24822D648(&qword_27EE93208, &qword_27EE931D8);
  sub_24822D648(&qword_27EE93258, &qword_27EE93260);
  v13 = sub_248382EE0();

  (*(v7 + 8))(v9, v6);
  v20 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93268);
  sub_248382250();
  sub_24822D648(&qword_27EE93270, &qword_27EE93268);
  sub_248382F20();

  sub_24822D648(&qword_27EE93278, &qword_27EE93238);
  v15 = v18;
  sub_248382F80();
  return (*(v10 + 8))(v12, v15);
}

uint64_t sub_2482EF1D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a2;
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE931D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE931E0);
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - v11;
  v20 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93130);
  sub_24822D648(&qword_27EE931E8, &qword_27EE93130);
  sub_248383AC0();
  swift_getKeyPath();
  sub_24814FB28(0, &qword_27EE93200);
  sub_24822D648(&qword_27EE93208, &qword_27EE931D8);
  sub_24822D648(&qword_27EE93210, &qword_27EE93218);
  v13 = sub_248382EE0();

  (*(v7 + 8))(v9, v6);
  v20 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93220);
  sub_248382250();
  sub_24822D648(&qword_27EE93228, &qword_27EE93220);
  sub_248382F20();

  sub_24822D648(&qword_27EE93230, &qword_27EE931E0);
  v15 = v18;
  sub_248382F80();
  return (*(v10 + 8))(v12, v15);
}

void sub_2482EF58C(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  if (v6)
  {
    v7 = v6;
    sub_24814FB28(0, a3);
    v8 = sub_248383B10();
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_2482EF624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  sub_24822D648(a6, a4);
  return sub_248383AC0();
}

uint64_t sub_2482EF6B8@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_24825C6EC(v2);

  *a1 = v3;
  return result;
}

void sub_2482EF700(uint64_t a1, uint64_t a2)
{
  v4 = sub_248382250();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_24825A938(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2482EF91C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  sub_2482EF700(v4, v3);
  *a2 = v5;
}

uint64_t (*sub_2482EF974(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_2482EE10C();
  return sub_2482EF9BC;
}

void *sub_2482EF9CC()
{
  v0 = sub_248382AE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = type metadata accessor for DBRequestContentSource();
  type metadata accessor for DBSingleSelectMenusSource();
  v4 = sub_2482EC6BC();
  sub_2482EC600();
  v5 = sub_248382B20();

  v6 = sub_248382240();
  v8 = sub_24828DEF0(v4, v5, v6, v7);
  type metadata accessor for DBWidgetSource();

  v9 = sub_248382B20();

  v10 = sub_2482ED404();
  v11 = sub_248382240();
  v13 = sub_24833C7BC(v9, v10, v11, v12);
  (*(v1 + 104))(v3, *MEMORY[0x277CF3938], v0);

  v14 = sub_248382B10();

  (*(v1 + 8))(v3, v0);
  type metadata accessor for DBLocalNotificationSource();

  v15 = sub_248382B20();

  sub_248382240();
  v16 = sub_2482FDCD4(v15);
  return sub_2482364C4(v8, v13, v14, v16);
}

uint64_t DBInstrumentDataSources.chargingCableState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92E70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  if (*(v0 + 96))
  {
    v5 = *(v0 + 96);
  }

  else
  {
    v9 = v0;
    v10 = sub_2482EC400();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92E88);
    sub_24814FB28(0, &qword_27EE92E90);
    sub_24822D648(&qword_27EE92E98, &qword_27EE92E88);
    sub_24822D648(&qword_27EE92EA0, &qword_27EE92EA8);
    v6 = sub_248382ED0();

    v10 = v6;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92EC0);
    type metadata accessor for CAFCableState(0);
    sub_24822D648(&qword_27EE92EC8, &qword_27EE92EC0);
    sub_24822D648(&qword_27EE92ED0, &qword_27EE92ED8);
    v7 = sub_248382ED0();

    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92EE0);
    sub_24822D648(&qword_27EE90390, &unk_27EE92EE0);
    sub_2482F0340(&qword_27EE92EF0, type metadata accessor for CAFCableState);
    sub_248382FD0();

    sub_24822D648(&qword_27EE92EF8, &qword_27EE92E70);
    v5 = sub_248382F10();
    (*(v2 + 8))(v4, v1);
    *(v9 + 96) = v5;
  }

  return v5;
}

id sub_2482EFFDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chargingStatus];
  *a2 = result;
  return result;
}

uint64_t sub_2482F0048@<X0>(unint64_t *a1@<X3>, unint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  sub_24814FB28(0, a1);
  sub_248151298(a2, a1);
  result = sub_248380E50();
  *a3 = result;
  return result;
}

uint64_t sub_2482F00CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248380F10();
  *a1 = result;
  return result;
}

uint64_t (*DBInstrumentDataSources.chargingCableState.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = DBInstrumentDataSources.chargingCableState.getter();
  return sub_2482F0150;
}

uint64_t DBInstrumentDataSources.dataSource(dataIdentifier:zoneRegion:)(uint64_t a1)
{
  v3 = sub_2482F0388(a1);
  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = *(*v4 + 256);

    v5(a1, v3);
  }

  return v3;
}

uint64_t DBInstrumentDataSources.deinit()
{

  sub_24816783C(v0 + 32);

  return v0;
}

uint64_t DBInstrumentDataSources.__deallocating_deinit()
{
  DBInstrumentDataSources.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2482F02A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v4 + 40) = a4;

  return v4;
}

uint64_t sub_2482F0340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2482F0388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v29 - v4;
  v5 = sub_248381DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_248383DA0();
  v13 = *sub_24827B964();
  v34 = *(v6 + 16);
  v34(v11, a1, v5);
  if (os_log_type_enabled(v13, v12))
  {
    v30 = v13;
    v14 = swift_slowAlloc();
    v33 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v3;
    v17 = v16;
    v36 = v16;
    *v15 = 136315138;
    v18 = v8;
    v19 = sub_248381DA0();
    v31 = a1;
    v21 = v20;
    (*(v6 + 8))(v11, v5);
    v22 = v19;
    v8 = v18;
    v23 = sub_24814A378(v22, v21, &v36);
    a1 = v31;

    *(v15 + 4) = v23;
    v24 = v30;
    _os_log_impl(&dword_248146000, v30, v12, "No data source found for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v25 = v17;
    v3 = v32;
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    v26 = v15;
    v2 = v33;
    MEMORY[0x24C1CD5F0](v26, -1, -1);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }

  sub_248381CB0();
  v34(v8, a1, v5);
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92F08);
  swift_allocObject();
  sub_248381BE0();
  v27 = v35;
  sub_248382E40();
  sub_24822D648(&unk_27EE92F10, &qword_27EE92F00);
  sub_248382F10();
  (*(v3 + 8))(v27, v2);
  return sub_248381CA0();
}

void sub_2482F0780(void **a1, const char *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = sub_248383D80();
  v8 = *sub_24827B964();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_24814A378(v4, v5, &v14);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *v11 = v6;
    v13 = v6;
    _os_log_impl(&dword_248146000, v9, v7, a2, v10, 0x16u);
    sub_24827B684(v11);
    MEMORY[0x24C1CD5F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
  }
}

uint64_t sub_2482F08C8(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [*a1 displayPanelIdentifier];
  v5 = sub_248383960();
  v7 = v6;

  if (v5 == v2 && v7 == v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_248384680();
  }

  return v9 & 1;
}

void sub_2482F09B0(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = a2();
  v8 = *sub_24827B964();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_24814A378(v5, v6, &v15);
    *(v10 + 12) = 2080;
    v12 = sub_248382D90();
    v14 = sub_24814A378(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_248146000, v9, v7, a3, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v11, -1, -1);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
  }
}

uint64_t sub_2482F0B0C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = [*a1 displayPanelIdentifier];
  v8 = sub_248383960();
  v10 = v9;

  if (v8 == v4 && v10 == v5)
  {
  }

  else
  {
    v12 = sub_248384680();

    if ((v12 & 1) == 0)
    {
      v13 = sub_248382250();
      v14 = *(*(v13 - 8) + 56);

      return v14(a2, 1, 1, v13);
    }
  }

  v16 = [v6 displayZoneIdentifier];
  v17 = sub_248383960();
  v19 = v18;

  return MEMORY[0x28214A320](v17, v19);
}

id sub_2482F0DFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_248383930();

  if (a4)
  {
    sub_24814FB28(0, &unk_27EE90E00);
    v7 = sub_248383B00();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVehicleID:v6 iconLayoutService:a3 viewAreas:v7];

  return v8;
}

id sub_2482F0EBC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v101 = a3;
  v104 = a1;
  v7 = sub_248381170();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = v89 - v10;
  MEMORY[0x28223BE20](v11);
  v95 = v89 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = v89 - v14;
  MEMORY[0x28223BE20](v15);
  v97 = v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v100 = v89 - v20;
  v21 = sub_248382A90();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v92 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v89 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v89 - v28;
  v93 = OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_cachedWidgetState;
  v105 = v4;
  *&v4[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_cachedWidgetState] = 0;
  if (a4)
  {

    v31 = Array<A>.rectValues.getter(v30);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v91 = OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_viewAreas;
  *&v105[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_viewAreas] = v31;
  v32 = *(v31 + 2);
  v33 = sub_24814A31C();
  v34 = *(v22 + 16);
  v102 = v22;
  v103 = a2;
  v89[1] = v22 + 16;
  v89[0] = v34;
  if (v32)
  {
    v34(v26, v33, v21);

    v35 = sub_248382A80();
    v36 = sub_248383DC0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v108[0] = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_24814A378(v104, a2, v108);
      *(v37 + 12) = 2082;
      v106 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932A8);
      sub_24822D648(&qword_27EE932B0, &unk_27EE932B8);
      v39 = sub_2483841D0();
      v41 = v40;

      v42 = sub_24814A378(v39, v41, v108);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_248146000, v35, v36, "Initialized provider view areas for vehicle ID %{public}s: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v38, -1, -1);
      MEMORY[0x24C1CD5F0](v37, -1, -1);
    }

    else
    {
    }

    v54 = *(v102 + 8);
    v54(v26, v21);
    v55 = v21;
  }

  else
  {
    v43 = a2;
    v44 = v21;
    v34(v29, v33, v21);

    v45 = sub_248382A80();
    v46 = sub_248383DA0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v108[0] = v48;
      *v47 = 136446466;
      *(v47 + 4) = sub_24814A378(v104, v43, v108);
      *(v47 + 12) = 2082;
      v106 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932A8);
      sub_24822D648(&qword_27EE932B0, &unk_27EE932B8);
      v49 = sub_2483841D0();
      v51 = v50;

      v52 = sub_24814A378(v49, v51, v108);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_248146000, v45, v46, "Invalid view areas for vehicle ID %{public}s: %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v48, -1, -1);
      MEMORY[0x24C1CD5F0](v47, -1, -1);

      v53 = v102;
    }

    else
    {

      v53 = v22;
    }

    v54 = *(v53 + 8);
    v54(v29, v44);
    v55 = v44;
  }

  v56 = v99;
  v57 = [objc_opt_self() defaultManager];
  v58 = [v57 URLsForDirectory:5 inDomains:1];

  v59 = sub_248383B10();
  v60 = v100;
  if (*(v59 + 16))
  {
    v61 = v94;
    (*(v56 + 16))(v94, v59 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v7);

    v62 = v54;
    v63 = v95;
    sub_248381100();
    v64 = *(v56 + 8);
    v64(v61, v7);
    v65 = v96;
    sub_248381100();
    v64(v63, v7);
    v66 = v97;
    sub_248381100();
    v64(v65, v7);
    v108[0] = v104;
    v108[1] = v103;

    MEMORY[0x24C1CAFD0](0xD000000000000018, 0x80000002483B1430);
    sub_248381110();

    v67 = v66;
    v54 = v62;
    v64(v67, v7);
    v68 = 0;
  }

  else
  {

    v68 = 1;
  }

  (*(v56 + 56))(v60, v68, 1, v7);
  v69 = v98;
  sub_248232C78(v60, v98, &qword_27EE904C0);
  if ((*(v56 + 48))(v69, 1, v7) == 1)
  {
    sub_24822D578(v69, &qword_27EE904C0);
    v70 = sub_24814A31C();
    v71 = v92;
    (v89[0])(v92, v70, v55);
    v72 = v103;

    v73 = sub_248382A80();
    v74 = sub_248383DA0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v99 = v55;
      v77 = v76;
      v108[0] = v76;
      *v75 = 136446210;
      v78 = sub_24814A378(v104, v72, v108);

      *(v75 + 4) = v78;
      _os_log_impl(&dword_248146000, v73, v74, "Unable to get persistence path for vehicle ID: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x24C1CD5F0](v77, -1, -1);
      MEMORY[0x24C1CD5F0](v75, -1, -1);

      v79 = v71;
      v80 = v99;
    }

    else
    {

      v79 = v71;
      v80 = v55;
    }

    v54(v79, v80);
    sub_24822D578(v60, &qword_27EE904C0);

    type metadata accessor for DBWidgetLayoutVehicleDataProvider(v88);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v81 = v90;
    (*(v56 + 32))(v90, v69, v7);
    v82 = sub_2483810F0();
    (*(v56 + 8))(v81, v7);
    sub_24822D578(v60, &qword_27EE904C0);
    v84 = v104;
    v83 = v105;
    *&v105[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_persistenceURL] = v82;
    v85 = &v83[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_vehicleID];
    v86 = v103;
    *v85 = v84;
    v85[1] = v86;
    *&v83[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_iconLayoutService] = v101;
    v107.receiver = v83;
    v107.super_class = DBWidgetLayoutVehicleDataProvider;
    return objc_msgSendSuper2(&v107, sel_init);
  }
}

char *Array<A>.rectValues.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_248384360();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_248284964(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v29;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        [MEMORY[0x24C1CBA50](v5 a1)];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        swift_unknownObjectRelease();
        v15 = *(v29 + 16);
        v14 = *(v29 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_248284964((v14 > 1), v15 + 1, 1);
        }

        ++v5;
        *(v29 + 16) = v15 + 1;
        v16 = (v29 + 32 * v15);
        v16[4] = v7;
        v16[5] = v9;
        v16[6] = v11;
        v16[7] = v13;
      }

      while (v2 != v5);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        [*v17 rectValue];
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = v18;
          v26 = v19;
          v27 = v20;
          v28 = v21;
          sub_248284964((v22 > 1), v23 + 1, 1);
          v21 = v28;
          v20 = v27;
          v19 = v26;
          v18 = v25;
        }

        *(v29 + 16) = v23 + 1;
        v24 = (v29 + 32 * v23);
        v24[4] = v18;
        v24[5] = v19;
        v24[6] = v20;
        v24[7] = v21;
        ++v17;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2482F1C7C()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 cachedWidgetState];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 showWidgets];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = *&v0[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_persistenceURL];
    v12[0] = 0;
    v6 = [v4 loadFromURL:v5 error:v12];
    if (!v6)
    {
      v10 = v12[0];
      v11 = sub_2483810C0();

      swift_willThrow();
      return 1;
    }

    v2 = v6;
    v7 = v12[0];
    v3 = [v2 showWidgets];
  }

  v8 = v3;

  return v8;
}

void DBWidgetLayoutVehicleDataProvider.update(viewAreas:completion:)(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_24814A31C();
  v70 = v10;
  v63 = *(v10 + 16);
  v64 = v15;
  v63(v14);
  v16 = v3;

  v17 = sub_248382A80();
  v18 = sub_248383DC0();

  v19 = os_log_type_enabled(v17, v18);
  v69 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v65 = v9;
    v21 = v20;
    v62 = swift_slowAlloc();
    v71 = v62;
    *v21 = 136446466;
    v22 = [v16 vehicleID];
    v23 = a1;
    v24 = a2;
    v25 = sub_248383960();
    v66 = a3;
    v27 = v26;

    v28 = v25;
    a2 = v24;
    a1 = v23;
    v29 = sub_24814A378(v28, v27, &v71);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2082;
    v30 = sub_24814FB28(0, &unk_27EE90E00);
    v31 = MEMORY[0x24C1CB100](v23, v30);
    v33 = sub_24814A378(v31, v32, &v71);

    *(v21 + 14) = v33;
    a3 = v66;
    _os_log_impl(&dword_248146000, v17, v18, "Updating provider view areas for vehicle ID: %{public}s: %{public}s", v21, 0x16u);
    v34 = v62;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v34, -1, -1);
    v35 = v21;
    v9 = v65;
    MEMORY[0x24C1CD5F0](v35, -1, -1);
  }

  v36 = *(v70 + 8);
  v36(v14, v9);
  if (a1 >> 62)
  {
    if (sub_248384360())
    {
      goto LABEL_5;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v37 = sub_248383BE0();
    v38 = v68;
    (*(*(v37 - 8) + 56))(v68, 1, 1, v37);
    sub_248383BB0();
    v39 = v69;

    v40 = sub_248383BA0();
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v39;
    v41[5] = a1;
    v41[6] = a2;
    v41[7] = a3;
    sub_2482E9E44(0, 0, v38, 0, 0, &unk_2483A0888, v41);

    sub_24822D578(v38, &qword_27EE90480);
    return;
  }

  v43 = v67;
  (v63)(v67, v64, v9);
  v44 = v9;
  v45 = v69;
  v46 = sub_248382A80();
  v47 = sub_248383DA0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v49;
    *v48 = 136446210;
    v50 = [v45 vehicleID];
    v66 = a3;
    v51 = v50;
    v52 = sub_248383960();
    v65 = v44;
    v53 = a2;
    v55 = v54;

    v56 = sub_24814A378(v52, v55, &v71);
    a2 = v53;

    *(v48 + 4) = v56;
    _os_log_impl(&dword_248146000, v46, v47, "Invalid empty view areas provided for vehicle ID: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x24C1CD5F0](v49, -1, -1);
    MEMORY[0x24C1CD5F0](v48, -1, -1);

    v57 = v67;
    v58 = v65;
  }

  else
  {

    v57 = v43;
    v58 = v44;
  }

  v36(v57, v58);
  v59 = Array<A>.rectValues.getter(a1);
  sub_2482FAE14();
  v60 = swift_allocError();
  *v61 = v59;
  a2();
}

uint64_t sub_2482F2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_248382A90();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  sub_248383BB0();
  v7[14] = sub_248383BA0();
  v10 = sub_248383B90();
  v7[15] = v10;
  v7[16] = v9;

  return MEMORY[0x2822009F8](sub_2482F24B4, v10, v9);
}

uint64_t sub_2482F24B4()
{
  v1 = v0[4];
  Array<A>.rectValues.getter(v0[5]);
  type metadata accessor for CGRect(0);
  v0[17] = v2;
  v3 = sub_248383B00();

  [v1 setViewAreas_];

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2482F2594;

  return sub_2482F3B10();
}

uint64_t sub_2482F2594(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);
  if (v1)
  {
    v7 = sub_2482F38C4;
  }

  else
  {
    v7 = sub_2482F26D8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2482F26D8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 152);
  v3 = [v1 viewAreas];
  v4 = sub_248383B10();

  v5 = sub_2482F4034(v4);
  v7 = v6;

  v8 = [v2 widgetStackRows];
  *(v0 + 168) = sub_248383E00();
  v9 = sub_248383B10();

  if (v9 >> 62)
  {
    v10 = sub_248384360();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= v5 && CRSWidgetLayoutState.maxColumns.getter() >= v7)
  {

    v28 = *(v0 + 152);
    (*(v0 + 48))(0);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = sub_24814A31C();
    *(v0 + 176) = v14;
    v15 = *(v13 + 16);
    *(v0 + 184) = v15;
    *(v0 + 192) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v11, v14, v12);
    v16 = sub_248382A80();
    v17 = sub_248383DC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248146000, v16, v17, "Widget state needs to be updated", v18, 2u);
      MEMORY[0x24C1CD5F0](v18, -1, -1);
    }

    v19 = *(v0 + 152);
    v20 = *(v0 + 104);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);

    v23 = *(v22 + 8);
    *(v0 + 200) = v23;
    v23(v20, v21);
    v24 = [v19 widgetStackRows];
    v25 = sub_248383B10();
    *(v0 + 208) = v25;

    *(v0 + 16) = v25;
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v26[1] = sub_2482F29F4;

    return sub_2482FBBAC(v5, v7);
  }
}

uint64_t sub_2482F29F4(uint64_t a1)
{
  v3 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {

    v4 = v3[15];
    v5 = v3[16];
    v6 = sub_2482F3670;
  }

  else
  {
    v4 = v3[15];
    v5 = v3[16];
    v6 = sub_2482F2B10;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2482F2B10()
{
  v94 = v0;
  v1 = *(v0 + 224);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = [*(v0 + 152) widgetStackRows];
  v5 = sub_248383B10();

  if (v5 >> 62)
  {
    v6 = sub_248384360();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= v3)
  {
    goto LABEL_52;
  }

  v7 = [*(v0 + 152) widgetStackRows];
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {

    v10 = v3 - i;
    if (__OFSUB__(v3, i))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v2)
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        v13 = *(v0 + 224);
      }

      else
      {
        v13 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = sub_248384360();
      if (sub_248384360() < 0)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_unknownObjectRelease();
        v18 = v2;
LABEL_40:
        sub_2482FA840(v13, v18, v14, v10, MEMORY[0x277CF8F90]);
        v22 = v21;
LABEL_47:
        swift_unknownObjectRelease();
        goto LABEL_48;
      }

      if (v14 >= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = v14;
      }

      if (v14 < 0)
      {
        v15 = v10;
      }

      v10 = v10 ? v15 : 0;
      v11 = sub_248384360();
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 >= v10 ? v3 - i : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v10 ? v12 : 0;
    }

    if (v11 < v10)
    {
      goto LABEL_91;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {

      if (v10)
      {
        v16 = 0;
        do
        {
          v17 = v16 + 1;
          sub_248384460();
          v16 = v17;
        }

        while (v10 != v17);
      }

      if (!v2)
      {
LABEL_36:
        v14 = 0;
        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v18 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        v10 = (2 * v10) | 1;
        if ((v10 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_36;
      }
    }

    v13 = sub_2483845B0();
    v14 = v19;
    v10 = v20;
    if ((v20 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_41:
    v2 = v18;
    sub_2483846B0();
    swift_unknownObjectRetain_n();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = MEMORY[0x277D84F90];
    }

    v24 = *(v23 + 16);

    if (__OFSUB__(v10 >> 1, v14))
    {
      goto LABEL_96;
    }

    if (v24 != (v10 >> 1) - v14)
    {
      goto LABEL_97;
    }

    v22 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v22)
    {
      v22 = MEMORY[0x277D84F90];
      goto LABEL_47;
    }

LABEL_48:
    (*(v0 + 184))(*(v0 + 96), *(v0 + 176), *(v0 + 64));

    v25 = sub_248382A80();
    v2 = sub_248383DC0();

    v26 = os_log_type_enabled(v25, v2);
    v27 = *(v0 + 200);
    if (v26)
    {
      v28 = *(v0 + 168);
      v90 = *(v0 + 64);
      v92 = *(v0 + 96);
      v1 = *(v0 + 200);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v93 = v30;
      *v29 = 136446210;
      v31 = MEMORY[0x24C1CB100](v22, v28);
      v33 = sub_24814A378(v31, v32, &v93);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_248146000, v25, v2, "Adding new rows: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1CD5F0](v30, -1, -1);
      MEMORY[0x24C1CD5F0](v29, -1, -1);

      (v1)(v92, v90);
    }

    else
    {
      v34 = *(v0 + 96);
      v1 = *(v0 + 64);
      v2 = *(v0 + 72);

      v27(v34, v1);
    }

    sub_2482FD8C4(0, 0, v22);

LABEL_52:
    *(v0 + 24) = *(v0 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93478);
    sub_24822D648(&qword_27EE93480, &qword_27EE93478);
    v35 = sub_248383CD0();
    v3 = v35;
    if (v35 >> 62)
    {
      break;
    }

    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_54:

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_85;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v3 + 32);
      goto LABEL_57;
    }

    __break(1u);
LABEL_88:
    ;
  }

  if (sub_248384360())
  {
    goto LABEL_54;
  }

LABEL_84:

  __break(1u);
LABEL_85:
  v36 = MEMORY[0x24C1CBA50](0, v3);
LABEL_57:
  v37 = v36;
  v92 = v36;

  v38 = [v37 stacks];
  v10 = sub_248383DD0();
  v39 = sub_248383B10();

  if (v39 >> 62)
  {
    v40 = sub_248384360();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (CRSWidgetLayoutState.maxColumns.getter() < v40)
  {
    v41 = sub_2482F4520();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 stacks];

      sub_248383B10();
      v44 = [v92 stacks];
      v1 = sub_248383B10();

      v45 = [v92 stacks];
      v46 = sub_248383B10();

      if (!(v46 >> 62))
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_63;
      }

LABEL_92:
      v47 = sub_248384360();
LABEL_63:

      v48 = CRSWidgetLayoutState.maxColumns.getter();
      v49 = __OFSUB__(v47, v48);
      v50 = v47 - v48;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        v51 = sub_2482FD9D8(v50, v1);
        v53 = v52;
        v55 = v54;
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          goto LABEL_65;
        }

        sub_2483846B0();
        swift_unknownObjectRetain_n();
        v60 = swift_dynamicCastClass();
        if (!v60)
        {
          swift_unknownObjectRelease();
          v60 = MEMORY[0x277D84F90];
        }

        v61 = *(v60 + 16);

        if (__OFSUB__(v57 >> 1, v55))
        {
          __break(1u);
        }

        else if (v61 == (v57 >> 1) - v55)
        {
          v59 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v59)
          {
            v59 = MEMORY[0x277D84F90];
            goto LABEL_72;
          }

          goto LABEL_73;
        }

        swift_unknownObjectRelease();
LABEL_65:
        sub_2482FA840(v51, v53, v55, v57, MEMORY[0x277CF8F88]);
        v59 = v58;
LABEL_72:
        swift_unknownObjectRelease();
LABEL_73:
        (*(v0 + 184))(*(v0 + 88), *(v0 + 176), *(v0 + 64));

        v62 = sub_248382A80();
        v63 = sub_248383DC0();

        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 200);
        v66 = *(v0 + 88);
        v67 = *(v0 + 64);
        if (v64)
        {
          v91 = *(v0 + 64);
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v93 = v69;
          *v68 = 136446210;
          v70 = MEMORY[0x24C1CB100](v59, v10);
          v89 = v66;
          v72 = sub_24814A378(v70, v71, &v93);

          *(v68 + 4) = v72;
          _os_log_impl(&dword_248146000, v62, v63, "Adding new stacks: %{public}s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x24C1CD5F0](v69, -1, -1);
          MEMORY[0x24C1CD5F0](v68, -1, -1);

          v65(v89, v91);
        }

        else
        {

          v65(v66, v67);
        }

        sub_2482F45B0(v59);
        v73 = objc_allocWithZone(MEMORY[0x277CF9050]);
        v74 = sub_248383B00();

        [v73 initWithStacks_];

        MEMORY[0x24C1CB0D0]();
        if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_77:
          sub_248383B70();
          goto LABEL_78;
        }
      }

      sub_248383B50();
      goto LABEL_77;
    }
  }

LABEL_78:
  v75 = *(v0 + 152);
  v76 = *(v0 + 32);
  v77 = [v75 showWidgets];
  v78 = [v75 showWallpaper];
  v79 = [v75 showSuggestions];
  v80 = [v75 smartRotate];
  v81 = objc_allocWithZone(MEMORY[0x277CF9040]);
  v82 = sub_248383B00();

  v83 = [v81 initWithShowWidgets:v77 showWallpaper:v78 showSuggestions:v79 smartRotate:v80 widgetStackRows:v82];

  v84 = v83;
  [v76 setCachedWidgetState_];

  sub_2482F46A0(v84);
  v85 = [v76 iconLayoutService];
  v86 = [v76 vehicleID];
  [v85 refreshWidgetStateForVehicleID_];

  (*(v0 + 48))(0);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_2482F3670()
{
  v1 = v0[19];

  v2 = v0[29];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = sub_24814A31C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_248382A80();
  v9 = sub_248383DA0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_248146000, v8, v9, "Failed to update widget state: %{public}@", v10, 0xCu);
    sub_24822D578(v11, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v11, -1, -1);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
  }

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];
  v17 = v0[6];
  v18 = v0[4];

  (*(v15 + 8))(v14, v16);
  [v18 resetWidgetState];
  v19 = [v18 iconLayoutService];
  v20 = [v18 vehicleID];
  [v19 refreshWidgetStateForVehicleID_];

  v21 = v2;
  v17(v2);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2482F38C4()
{

  v1 = v0[20];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = sub_24814A31C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_248382A80();
  v8 = sub_248383DA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_248146000, v7, v8, "Failed to update widget state: %{public}@", v9, 0xCu);
    sub_24822D578(v10, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  v16 = v0[6];
  v17 = v0[4];

  (*(v14 + 8))(v13, v15);
  [v17 resetWidgetState];
  v18 = [v17 iconLayoutService];
  v19 = [v17 vehicleID];
  [v18 refreshWidgetStateForVehicleID_];

  v20 = v1;
  v16(v1);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2482F3B10()
{
  v1[2] = v0;
  v2 = sub_248382A90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2482F3BD0, 0, 0);
}

uint64_t sub_2482F3BD0()
{
  v26 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_24814A31C();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_248382A80();
  v8 = sub_248383DC0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  if (v9)
  {
    v13 = *(v0 + 16);
    v24 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    v16 = [v13 vehicleID];
    v17 = sub_248383960();
    v19 = v18;

    v20 = sub_24814A378(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_248146000, v7, v8, "Fetching widget state for vehicle ID: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    MEMORY[0x24C1CD5F0](v14, -1, -1);

    (*(v10 + 8))(v24, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  *(v0 + 72) = 0;
  v21 = swift_task_alloc();
  *(v0 + 48) = v21;
  *v21 = v0;
  v21[1] = sub_2482F3DE8;
  v22 = *(v0 + 16);

  return sub_2482F629C(v22, v0 + 72);
}

uint64_t sub_2482F3DE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_2482F3FCC;
  }

  else
  {
    v4 = sub_2482F3EFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2482F3EFC()
{
  v1 = sub_2482F6AE4();
  v2 = *(v0 + 56);
  if (*(v0 + 72) == 1)
  {

    v3 = 1;
  }

  else
  {
    sub_24814FB28(0, &qword_27EE932D8);
    v4 = sub_248384030();

    v3 = v4 ^ 1;
  }

  v5 = *(v0 + 8);

  return v5(v1, v3 & 1);
}

uint64_t sub_2482F3FCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2482F4034(uint64_t a1)
{
  v2 = sub_2483820F0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_248382110();
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v4 + 8);
  v11 = a1 + 56;
  do
  {
    sub_2483820E0();
    sub_248382100();
    sub_2482FAFD0(&qword_27EE932D0, MEMORY[0x277CF8D50]);
    sub_248383CE0();
    sub_248383D00();
    v12 = sub_248383CF0();
    if (v9 <= v12)
    {
      v9 = v12;
    }

    v13 = sub_2483820D0();
    (*v10)(v6, v3);
    if (v8 <= v13)
    {
      v8 = v13;
    }

    v11 += 32;
    --v7;
  }

  while (v7);
  return v9;
}

uint64_t CRSWidgetLayoutState.maxColumns.getter()
{
  v1 = [v0 widgetStackRows];
  sub_248383E00();
  v2 = sub_248383B10();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1CBA50](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 stacks];
      sub_248383DD0();
      v10 = sub_248383B10();

      if (v10 >> 62)
      {
        v11 = sub_248384360();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11 > v5)
      {
        v5 = v11;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = 0;
LABEL_20:

  return v5;
}

BOOL sub_2482F4424(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 stacks];
  sub_248383DD0();
  v4 = sub_248383B10();

  if (v4 >> 62)
  {
    v5 = sub_248384360();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = [v2 stacks];
  v7 = sub_248383B10();

  if (v7 >> 62)
  {
    v8 = sub_248384360();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 < v5;
}

unint64_t sub_2482F4520()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2482FAD48();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_248384360();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_24814D7C4(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_24814D7C4(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_248384360();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2482F45B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_248384360();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_248156154(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2482FAA84(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_2482F46A0(void *a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = sub_24814A31C();
  v11 = *(v4 + 16);
  v47 = v10;
  v48 = v4 + 16;
  v46 = v11;
  (v11)(v9);
  v12 = v1;
  v13 = sub_248382A80();
  v14 = sub_248383DC0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = v3;
    v16 = v15;
    v43 = swift_slowAlloc();
    v44 = a1;
    v49[0] = v43;
    *v16 = 136446210;
    v17 = [v12 vehicleID];
    v18 = v12;
    v19 = v6;
    v20 = v4;
    v21 = sub_248383960();
    v23 = v22;

    v24 = v21;
    v4 = v20;
    v6 = v19;
    v12 = v18;
    v25 = sub_24814A378(v24, v23, v49);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_248146000, v13, v14, "Persisting widget state for vehicle ID: %{public}s", v16, 0xCu);
    v26 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    a1 = v44;
    MEMORY[0x24C1CD5F0](v26, -1, -1);
    v27 = v16;
    v3 = v45;
    MEMORY[0x24C1CD5F0](v27, -1, -1);
  }

  v28 = *(v4 + 8);
  v28(v9, v3);
  v29 = *&v12[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_persistenceURL];
  v49[0] = 0;
  v30 = [a1 saveTo:v29 error:v49];
  v31 = v49[0];
  if (v30)
  {

    return v31;
  }

  else
  {
    v45 = v49[0];
    v33 = v49[0];
    v34 = sub_2483810C0();

    swift_willThrow();
    v46(v6, v47, v3);
    v35 = v34;
    v36 = sub_248382A80();
    v37 = sub_248383DA0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      v40 = v34;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_248146000, v36, v37, "Failed to persist widget state: %{public}@", v38, 0xCu);
      sub_24822D578(v39, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v39, -1, -1);
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    else
    {
    }

    return (v28)(v6, v3);
  }
}

void sub_2482F4B90(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2483810B0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2482F4BF4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_248383BE0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_248383BB0();
  v9 = v2;

  v10 = sub_248383BA0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;
  sub_2482E9E44(0, 0, v7, 0, 0, &unk_2483A0898, v11);

  return sub_24822D578(v7, &qword_27EE90480);
}

uint64_t sub_2482F4D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = sub_248383BB0();
  v6[11] = sub_248383BA0();
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_2482F4E1C;

  return sub_2482F3B10();
}

uint64_t sub_2482F4E1C(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 104) = a1;
  *(v5 + 112) = v2;

  if (v2)
  {
    v6 = sub_248383B90();
    v8 = v7;
    v9 = sub_2482F50D0;
  }

  else
  {
    *(v5 + 120) = a2 & 1;
    v6 = sub_248383B90();
    v8 = v10;
    v9 = sub_2482F4FA8;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2482F4FA8()
{
  v1 = *(v0 + 120);

  if (v1 == 1)
  {
    sub_2482F46A0(*(v0 + 104));
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  [*(v0 + 56) setCachedWidgetState_];
  [v2 copy];
  sub_248384230();
  swift_unknownObjectRelease();
  sub_24814FB28(0, &qword_27EE932D8);
  swift_dynamicCast();
  v4 = *(v0 + 48);
  v5 = v4;
  v3(v4, 0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2482F50D0()
{
  v1 = v0[14];
  v2 = v0[8];

  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_2482F532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2483810B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2482F539C(void *a1, uint64_t a2)
{
  v5 = sub_2483837A0();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2483837E0();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = sub_24814A31C();
  v16 = *(v9 + 16);
  v79 = v15;
  v80 = v9 + 16;
  v78 = v16;
  (v16)(v14);
  v17 = v2;
  v18 = sub_248382A80();
  v19 = sub_248383DC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v76 = v19;
    v21 = v20;
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v21 = 136446466;
    v22 = [v17 vehicleID];
    v75 = v18;
    v23 = v22;
    v24 = v17;
    v25 = a1;
    v26 = v11;
    v27 = v9;
    v28 = a2;
    v29 = sub_248383960();
    v81 = v8;
    v31 = v30;

    v32 = v29;
    a2 = v28;
    v9 = v27;
    v11 = v26;
    a1 = v25;
    v17 = v24;
    v33 = sub_24814A378(v32, v31, aBlock);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2082;
    v34 = 0x6E776F6E6B6E55;
    if (a2 == 1)
    {
      v34 = 0x79616C50726143;
    }

    if (a2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x73676E6974746553;
    }

    if (a2)
    {
      v36 = 0xE700000000000000;
    }

    else
    {
      v36 = 0xE800000000000000;
    }

    v37 = sub_24814A378(v35, v36, aBlock);
    v8 = v81;

    *(v21 + 14) = v37;
    v38 = v75;
    _os_log_impl(&dword_248146000, v75, v76, "Setting widget state for vehicle ID: %{public}s from source: %{public}s", v21, 0x16u);
    v39 = v77;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v39, -1, -1);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
  }

  else
  {
  }

  v40 = *(v9 + 8);
  v40(v14, v8);
  v41 = [v17 cachedWidgetState];
  if (!v41)
  {
    goto LABEL_25;
  }

  v42 = v41;
  sub_24814FB28(0, &qword_27EE92190);
  if ((sub_248384030() & 1) == 0)
  {

LABEL_25:
    [a1 copy];
    sub_248384230();
    swift_unknownObjectRelease();
    sub_24814FB28(0, &qword_27EE932D8);
    if (swift_dynamicCast())
    {
      v62 = aBlock[6];
    }

    else
    {
      v62 = 0;
    }

    [v17 setCachedWidgetState_];

    sub_2482F46A0(a1);
    sub_24814FB28(0, &qword_27EE90280);
    v63 = sub_248383E50();
    v64 = [v17 iconLayoutService];
    v65 = [v17 vehicleID];
    v66 = sub_248383960();
    v68 = v67;

    v69 = swift_allocObject();
    v69[2] = a2;
    v69[3] = v64;
    v69[4] = v66;
    v69[5] = v68;
    aBlock[4] = sub_2482FAF10;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24814C01C;
    aBlock[3] = &block_descriptor_18;
    v70 = _Block_copy(aBlock);

    v71 = v82;
    sub_2483837C0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2482FAFD0(&qword_27EE91EB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
    sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
    v72 = v84;
    v73 = v87;
    sub_2483842D0();
    MEMORY[0x24C1CB440](0, v71, v72, v70);
    _Block_release(v70);

    v86[1](v72, v73);
    return (*(v83 + 8))(v71, v85);
  }

  v87 = v9;
  v78(v11, v79, v8);
  v43 = v17;
  v44 = v8;
  v45 = sub_248382A80();
  v46 = sub_248383DC0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v81 = v44;
    v48 = v47;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136446466;
    v50 = [v43 vehicleID];
    v51 = sub_248383960();
    v86 = v11;
    v52 = a2;
    v53 = v51;
    v55 = v54;

    v56 = sub_24814A378(v53, v55, aBlock);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2082;
    v57 = 0x6E776F6E6B6E55;
    if (v52 == 1)
    {
      v57 = 0x79616C50726143;
    }

    if (v52)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x73676E6974746553;
    }

    if (v52)
    {
      v59 = 0xE700000000000000;
    }

    else
    {
      v59 = 0xE800000000000000;
    }

    v60 = sub_24814A378(v58, v59, aBlock);

    *(v48 + 14) = v60;
    _os_log_impl(&dword_248146000, v45, v46, "Skipping setting identical widget state for vehicle ID: %{public}s from source: %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v49, -1, -1);
    MEMORY[0x24C1CD5F0](v48, -1, -1);

    return (v40)(v86, v81);
  }

  else
  {

    return (v40)(v11, v44);
  }
}