BOOL MRULayoutShouldBeVertical()
{
  if (CCUILayoutShouldBePortrait())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  return (v2 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

uint64_t MRUIsSmallScreen()
{
  if (MRUIsSmallScreen_onceToken != -1)
  {
    MRUIsSmallScreen_cold_1();
  }

  return MRUIsSmallScreen___isSmallScreen;
}

void MRUExpandedContentInsets()
{
  if (MRUIsSmallScreen_onceToken != -1)
  {
    MRUIsSmallScreen_cold_1();
  }

  if ((MRUIsSmallScreen___isSmallScreen & 1) == 0)
  {
    CCUIExpandedModuleEdgeInsets();
  }
}

uint64_t MRUVerticalScreenInset(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  if (CGRectIsEmpty(v27))
  {
    CCUIScreenBounds();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Height = CGRectGetHeight(v29);
  v17 = [v1 window];

  [v17 _inscribedRectInBoundingPathByInsettingRect:5 onEdges:1 withOptions:{MidX, 0.0, 1.0, Height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  CGRectGetMinY(v30);
  return CGFloatIsValid();
}

double MRUSizeCeilToViewScale(void *a1)
{
  v1 = a1;
  UICeilToViewScale();
  v3 = v2;
  UICeilToViewScale();

  return v3;
}

id MCLogCategoryVolume()
{
  if (MCLogCategoryVolume__once != -1)
  {
    MCLogCategoryVolume_cold_1();
  }

  v1 = MCLogCategoryVolume__log;

  return v1;
}

uint64_t sub_1A21033A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_1A2103450(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A2105154(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1A21033A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

double sub_1A210351C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *(**a2 + 160);

  v2(&v6, v3);

  return v6;
}

uint64_t sub_1A21035CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A22E6248();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1A2103688()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1A22E5C88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A2105260(v8);
  v9 = v0;
  v10 = sub_1A22E6238();
  v11 = sub_1A22E6A98();

  v12 = &unk_1EB089000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53[0] = v51;
    *v13 = 136315650;
    v14 = sub_1A22E7388();
    v50 = v11;
    v16 = sub_1A2103450(v14, v15, v53);
    ObjectType = v5;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    (*(**(v9 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_sessionController) + 152))(v18);
    v19 = sub_1A22E59B8();
    v21 = v20;
    (*(v2 + 8))(v4, v1);
    v22 = sub_1A2103450(v19, v21, v53);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    if (*(v9 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 9))
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 | *(v9 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 8);
    if (*(v9 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 10))
    {
      v25 = 0x10000;
    }

    else
    {
      v25 = 0;
    }

    if (*(v9 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 11))
    {
      v26 = 0x1000000;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 | v26;

    v29 = sub_1A210553C(v28, v24 | v27);
    v31 = v30;

    v32 = sub_1A2103450(v29, v31, v53);

    *(v13 + 24) = v32;
    _os_log_impl(&dword_1A20FC000, v10, v50, "[%s](%s) updateMediaSuggestions state: %s", v13, 0x20u);
    v33 = v51;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v33, -1, -1);
    v34 = v13;
    v12 = &unk_1EB089000;
    MEMORY[0x1A58DCD00](v34, -1, -1);

    (*(v6 + 8))(v8, ObjectType);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v35 = 0;
  v36 = v9 + v12[135];
  v37 = v36[11] != 1 || v36[8] == 0;
  if (!v37 && ((v36[9] ^ 1 | v36[10]) & 1) != 0)
  {
    v35 = *v36;
  }

  v38 = OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_viewModel;
  v39 = swift_beginAccess();
  v40 = *(v9 + v38);
  *(v9 + v38) = v35;
  if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x80))(v39))
  {
    v42 = v41;
    if (*(v9 + v38))
    {
      if (v40)
      {

        v44 = sub_1A21297AC(v43, v40);

        if (v44)
        {

          return swift_unknownObjectRelease();
        }
      }
    }

    else if (!v40)
    {
      return swift_unknownObjectRelease();
    }

    v46 = swift_getObjectType();
    v47 = *(v42 + 8);

    v47(v48, v46, v42);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A2103B58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v129 = a1;
  v117 = *v1;
  v3 = v117;
  v4 = sub_1A22E6248();
  v128 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v123 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = v107 - v7;
  v8 = *(v3 + 80);
  v9 = sub_1A22E6D68();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v125 = (v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = v107 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v118 = v107 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v130 = (v107 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v107 - v20;
  v22 = *(v8 - 1);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v121 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v116 = (v107 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v107 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = v107 - v30;
  v32 = *(v3 + 120);
  swift_beginAccess();
  v33 = *(v10 + 16);
  v124 = v32;
  v126 = v33;
  v127 = (v10 + 16);
  v33(v21, &v2[v32], v9);
  v34 = *(v22 + 48);
  v119 = v22 + 48;
  if (v34(v21, 1, v8) == 1)
  {
    v116 = v34;
    (*(v10 + 8))(v21, v9);
    v35 = v8;
    goto LABEL_7;
  }

  v36 = *(v22 + 32);
  v113 = v22 + 32;
  v112 = v36;
  v36(v31, v21, v8);
  v35 = v8;
  if (v2[*(*v2 + 112)] != 1)
  {
    v116 = v34;
    (*(v22 + 8))(v31, v8);
LABEL_7:
    v54 = *&v2[*(*v2 + 104)];
    v55 = v123;
    if (!v54)
    {
      v62 = *(*v2 + 96);
      v63 = v22;
      v64 = *(v22 + 16);
      v65 = v125;
      v64(v125, &v2[v62], v35);
      (*(v63 + 56))(v65, 0, 1, v35);
      v66 = v124;
      swift_beginAccess();
      (*(v10 + 40))(&v2[v66], v65, v9);
      swift_endAccess();
      return (v64)(v129, &v2[v62], v35);
    }

    v122 = v35;
    v56 = v4;
    v57 = *(v2 + 2);
    v58 = *(v2 + 3);
    v59 = v54;
    v109 = v57;
    v108 = v58;
    v60 = sub_1A22E6598();
    v110 = v59;
    v61 = [v59 objectForKey_];

    if (v61)
    {
      sub_1A22E6D88();
      swift_unknownObjectRelease();
    }

    else
    {
      v132 = 0u;
      v133 = 0u;
    }

    v68 = v56;
    v115 = v56;
    v134[0] = v132;
    v134[1] = v133;
    sub_1A224A0BC(v134, &v132);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E78);
    v70 = v130;
    v107[1] = v69;
    v71 = v122;
    v72 = swift_dynamicCast();
    v73 = *(v22 + 56);
    v112 = (v22 + 56);
    v111 = v73;
    v73(v70, v72 ^ 1u, 1, v71);
    v74 = sub_1A2104EA0();
    v75 = v128;
    (*(v128 + 16))(v55, v74, v68);
    v76 = v118;
    v126(v118, v70, v9);
    sub_1A224A0BC(v134, &v132);

    v77 = sub_1A22E6238();
    v78 = sub_1A22E6A68();

    v79 = os_log_type_enabled(v77, v78);
    v114 = v10;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v113 = v9;
      v81 = v80;
      v107[0] = swift_slowAlloc();
      v131 = v107[0];
      *v81 = 136315906;
      v82 = sub_1A22E7388();
      v84 = sub_1A2103450(v82, v83, &v131);

      *(v81 + 4) = v84;
      v117 = v22;
      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_1A2103450(v109, v108, &v131);
      *(v81 + 22) = 2080;
      v85 = sub_1A22E6D58();
      v87 = v86;
      v118 = *(v10 + 8);
      (v118)(v76, v113);
      v88 = sub_1A2103450(v85, v87, &v131);

      *(v81 + 24) = v88;
      *(v81 + 32) = 2080;
      v89 = sub_1A22E6D58();
      v91 = v90;
      sub_1A224A12C(&v132);
      v92 = sub_1A2103450(v89, v91, &v131);
      v22 = v117;

      *(v81 + 34) = v92;
      _os_log_impl(&dword_1A20FC000, v77, v78, "[%s] Value for key: %s is: %s. Raw: %s", v81, 0x2Au);
      v93 = v107[0];
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v93, -1, -1);
      v94 = v81;
      v9 = v113;
      MEMORY[0x1A58DCD00](v94, -1, -1);

      (*(v128 + 8))(v55, v115);
    }

    else
    {

      sub_1A224A12C(&v132);
      v118 = *(v10 + 8);
      (v118)(v76, v9);
      (*(v75 + 8))(v55, v115);
    }

    sub_1A224A12C(v134);
    v95 = v120;
    v96 = v9;
    v126(v120, v130, v9);
    v97 = v122;
    v98 = v116;
    v99 = v116(v95, 1, v122);
    v100 = v121;
    if (v99 == 1)
    {
      v101 = *(v22 + 16);
      v101(v121, &v2[*(*v2 + 96)], v97);
      if (v98(v95, 1, v97) != 1)
      {
        v102 = v96;
        v103 = v96;
        v104 = v118;
        (v118)(v95, v103);
LABEL_20:
        v105 = v125;
        v101(v125, v100, v97);
        v111(v105, 0, 1, v97);
        v106 = v124;
        swift_beginAccess();
        (*(v114 + 40))(&v2[v106], v105, v102);
        swift_endAccess();
        (*(v22 + 32))(v129, v100, v97);
        return v104(v130, v102);
      }
    }

    else
    {
      (*(v22 + 32))(v121, v95, v97);
      v101 = *(v22 + 16);
    }

    v102 = v96;
    v104 = v118;
    goto LABEL_20;
  }

  v37 = sub_1A2104EA0();
  v38 = v128;
  (*(v128 + 16))(v122, v37, v4);
  v127 = *(v22 + 16);
  v127(v29, v31, v8);

  v39 = v4;
  v40 = sub_1A22E6238();
  v41 = sub_1A22E6A68();

  LODWORD(v130) = v41;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v125 = v40;
    v43 = v42;
    v126 = swift_slowAlloc();
    *&v134[0] = v126;
    *v43 = 136315650;
    v44 = sub_1A22E7388();
    v45 = v38;
    v115 = v39;
    v47 = sub_1A2103450(v44, v46, v134);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_1A2103450(*(v2 + 2), *(v2 + 3), v134);
    *(v43 + 22) = 2080;
    v127(v116, v29, v35);
    v48 = sub_1A22E6638();
    v50 = v49;
    (*(v22 + 8))(v29, v35);
    v51 = sub_1A2103450(v48, v50, v134);

    *(v43 + 24) = v51;
    v52 = v125;
    _os_log_impl(&dword_1A20FC000, v125, v130, "[%s] Cached value for key: %s is: %s", v43, 0x20u);
    v53 = v126;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v53, -1, -1);
    MEMORY[0x1A58DCD00](v43, -1, -1);

    (*(v45 + 8))(v122, v115);
  }

  else
  {

    (*(v22 + 8))(v29, v35);
    (*(v38 + 8))(v122, v39);
  }

  return v112(v129, v31, v35);
}

uint64_t sub_1A21048C8()
{
  v1 = sub_1A22E55A8();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v55[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v55[-v5];
  v57 = sub_1A22E5C88();
  v7 = *(v57 - 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(**(v0 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_sessionController) + 152))(v8);
  v60 = v0;
  v11 = v0 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state;
  v12 = *(v0 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state);
  v13 = *(v0 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 8);
  v14 = *(v0 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_state + 11);

  sub_1A22E5B48();
  v15 = sub_1A22E5B38();
  v16 = (*(*(v15 - 8) + 48))(v6, 1, v15);
  v56 = v16 != 1;
  sub_1A2105394(v6);
  sub_1A22E59D8();
  sub_1A22E5578();
  v18 = v17;
  (*(v58 + 8))(v3, v59);
  v19 = -v18;
  v20 = sub_1A21035A8();
  (*(v7 + 8))(v10, v57);
  v21 = *v11;
  v22 = *(v11 + 8);
  v23 = *(v11 + 9);
  v24 = *(v11 + 10);
  v25 = *(v11 + 11);
  *v11 = v12;
  v26 = v13;
  *(v11 + 8) = v13;
  *(v11 + 9) = v56;
  *(v11 + 10) = v20 <= v19;
  v27 = v14;
  *(v11 + 11) = v14;
  if (v12)
  {
    if (!v21 || (LODWORD(v58) = v20 <= v19, LODWORD(v59) = v16 != 1, v28 = v25, v29 = v24, , , v30 = sub_1A21297AC(v12, v21), , , (v30 & 1) == 0) || ((v26 ^ v22) & 1) != 0 || ((v59 ^ v23) & 1) != 0 || ((v58 ^ v29) & 1) != 0 || ((v27 ^ v28) & 1) != 0)
    {
LABEL_14:
      sub_1A2103688();
    }
  }

  else if (v21 || ((v26 ^ v22) & 1) != 0 || (((v16 != 1) ^ v23) & 1) != 0 || (((v20 <= v19) ^ v24) & 1) != 0 || ((v14 ^ v25) & 1) != 0)
  {
    goto LABEL_14;
  }

  v32 = (*(**(v60 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_dataSource) + 176))(v31);
  v33 = *(v11 + 8);
  v34 = *(v11 + 9);
  v35 = *(v11 + 10);
  if (!v32)
  {
    v36 = 0;
    goto LABEL_19;
  }

  if (!(v32 >> 62))
  {
    v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
    v37 = *(v11 + 10);
    v38 = *(v11 + 9);
    v39 = *(v11 + 8);
    goto LABEL_20;
  }

  v54 = v32;
  v36 = sub_1A22E6DE8();
  v32 = v54;
  v39 = *(v11 + 8);
  v38 = *(v11 + 9);
  v37 = *(v11 + 10);
LABEL_20:
  v40 = *v11;
  v41 = *(v11 + 11);
  *v11 = v32;
  *(v11 + 8) = v33;
  *(v11 + 9) = v34;
  *(v11 + 10) = v35;
  *(v11 + 11) = v36 > 3;
  if (v32)
  {
    if (v40)
    {
      LODWORD(v58) = v36 > 3;
      LODWORD(v59) = v37;

      v43 = sub_1A21297AC(v42, v40);

      if ((v43 & 1) != 0 && ((v33 ^ v39) & 1) == 0 && ((v34 ^ v38) & 1) == 0 && ((v35 ^ v59) & 1) == 0)
      {
        v44 = v58;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v44 = v36 > 3;
    if (!v40 && ((v33 ^ v39) & 1) == 0 && ((v34 ^ v38) & 1) == 0 && ((v35 ^ v37) & 1) == 0)
    {
LABEL_31:
      if (((v44 ^ v41) & 1) == 0)
      {
        goto LABEL_33;
      }
    }
  }

  sub_1A2103688();
LABEL_33:

  v45 = [*(v60 + OBJC_IVAR____TtC13MediaControls25MediaSuggestionsPresenter_lockScreenObserver) isDeviceLocked];
  v46 = v45;
  v47 = *v11;
  v48 = *(v11 + 8);
  v49 = *(v11 + 9);
  v50 = *(v11 + 10);
  v51 = *(v11 + 11);
  *(v11 + 8) = v45 ^ 1;
  *(v11 + 9) = v49;
  *(v11 + 10) = v50;
  *(v11 + 11) = v51;
  if (v47)
  {

    if ((sub_1A21297AC(v52, v47) & 1) == 0 || ((v46 ^ v48) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v45 == v48)
  {
LABEL_38:
    sub_1A2103688();
  }
}

uint64_t sub_1A2104E4C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1A22E6248();

  return __swift_project_value_buffer(v3, a2);
}

void *sub_1A2104F20(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB08A0E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A2104F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  swift_beginAccess();
  v4 = sub_1A22E5C88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A210501C(uint64_t result)
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

  result = sub_1A22131FC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

uint64_t sub_1A2105108(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A2105264(a1, a2);
  sub_1A210501C(&unk_1F143C4A0);
  return v3;
}

unint64_t sub_1A2105154(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A2105108(a5, a6);
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
    result = sub_1A22E6EF8();
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

uint64_t sub_1A2105264(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A2104F20(v5, 0);
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

  result = sub_1A22E6EF8();
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
        v10 = sub_1A22E66A8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A2104F20(v10, 0);
        result = sub_1A22E6E78();
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

uint64_t sub_1A2105394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A210553C(unint64_t a1, int a2)
{
  v4 = a2 & 0x1000000;
  sub_1A22E6E88();
  MEMORY[0x1A58DA8D0](0xD000000000000017, 0x80000001A23051A0);
  v5 = ((a2 & 0x10100) != 256) & a2;
  if ((*&v5 & HIBYTE(v4)) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((*&v5 & HIBYTE(v4)) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v6, v7);

  MEMORY[0x1A58DA8D0](0xD000000000000014, 0x80000001A23051C0);
  if (a1 && a1 >> 62)
  {
    sub_1A22E6DE8();
  }

  v8 = sub_1A22E71D8();
  MEMORY[0x1A58DA8D0](v8);

  MEMORY[0x1A58DA8D0](0xD000000000000013, 0x80000001A23051E0);
  if ((a2 & 0x1000000) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a2 & 0x1000000) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v9, v10);

  MEMORY[0x1A58DA8D0](0xD000000000000015, 0x80000001A2305200);
  if ((a2 & 0x100) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((a2 & 0x100) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v11, v12);

  MEMORY[0x1A58DA8D0](0xD000000000000015, 0x80000001A2305220);
  if ((a2 & 0x10000) != 0)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if ((a2 & 0x10000) != 0)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v13, v14);

  MEMORY[0x1A58DA8D0](0xD000000000000014, 0x80000001A2305240);
  if (a2)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (a2)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v15, v16);

  return 0;
}

id MCLogCategoryDefault()
{
  if (MCLogCategoryDefault__once != -1)
  {
    MCLogCategoryDefault_cold_1();
  }

  v1 = MCLogCategoryDefault__log;

  return v1;
}

uint64_t sub_1A2108570()
{
  v1 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A2108E04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_1A210982C()
{
  v1 = v0;
  v2 = sub_1A22E5C88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion;
  if (*(v1 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_assertion))
  {
    v32 = v3;
    v12 = sub_1A229886C();
    (*(v7 + 16))(v10, v12, v6);

    v13 = sub_1A22E6238();
    v14 = sub_1A22E6A98();

    v33 = v14;
    if (os_log_type_enabled(v13, v14))
    {
      v31 = v13;
      v29 = v2;
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v15 = 136315394;
      v16 = sub_1A22E7388();
      v18 = sub_1A2103450(v16, v17, &v34);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = *(v1 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer);
      if (v19)
      {
        v20 = *(*v19 + 160);

        v20(v21);

        v22 = sub_1A22E59B8();
        v24 = v23;
        (*(v32 + 8))(v5, v29);
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_1A2103450(v22, v24, &v34);

      *(v15 + 14) = v25;
      v26 = v31;
      _os_log_impl(&dword_1A20FC000, v31, v33, "[%s].releaseHardwareControls for %s", v15, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v27, -1, -1);
      MEMORY[0x1A58DCD00](v15, -1, -1);

      (*(v7 + 8))(v10, v6);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v28 = *(v1 + v11);
    *(v1 + v11) = 0;

    *(v1 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer) = 0;
  }

  return result;
}

uint64_t sub_1A2109BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2109C3C(uint64_t a1)
{
  v3 = sub_1A22E6088();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088CB0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1A210AB00(v1 + v14, v13);
  sub_1A210AB00(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1A210D9B0(v13, &qword_1EB088C50);
    }

    goto LABEL_6;
  }

  sub_1A210AB00(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1A210D9B0(v13, &qword_1EB088CB0);
    return sub_1A210ABC8();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1A210AB70();
  v18 = sub_1A22E6568();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_1A210D9B0(v13, &qword_1EB088C50);
  if ((v18 & 1) == 0)
  {
    return sub_1A210ABC8();
  }

  return result;
}

uint64_t sub_1A2109F28()
{
  v1 = v0;
  v107 = *v0;
  v105 = sub_1A22E6248();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1A22E5C88();
  v108 = *(v112 - 8);
  v3 = MEMORY[0x1EEE9AC00](v112);
  v106 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v99 - v7;
  v9 = type metadata accessor for RoutePickerSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v99 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_hardwareVolumeController);
  if (*(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_routingSessionsController))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A22E61F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_1A22E6088();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = (*(*v16 + 128))(v15);
  ((*v0)[36].isa)(v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A210D9B0(v8, &qword_1EB088C40);
    v19 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
    swift_beginAccess();
    *(v0 + v19) = MEMORY[0x1E69E7CC8];
  }

  sub_1A223CCFC(v8, v12);
  v100 = v12;
  v21 = *v12;
  v22 = *(*v12 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v102 = v0;
  v101 = v21;
  if (v22)
  {
    v113[0] = MEMORY[0x1E69E7CC0];
    sub_1A210E5F8(0, v22, 0);
    v23 = v113[0];
    v24 = *(v108 + 16);
    v25 = v21 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v109 = *(v108 + 72);
    v110 = v24;
    v26 = (v108 + 8);
    do
    {
      v27 = v111;
      v28 = v112;
      (v110)(v111, v25, v112);
      v29 = sub_1A22E59B8();
      v31 = v30;
      (*v26)(v27, v28);
      v113[0] = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A210E5F8((v32 > 1), v33 + 1, 1);
        v23 = v113[0];
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v25 += v109;
      --v22;
    }

    while (v22);
    v1 = v102;
  }

  v35 = sub_1A210E724(v23);

  v36 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
  swift_beginAccess();
  v37 = *(v1 + v36);
  v40 = *(v37 + 64);
  v39 = v37 + 64;
  v38 = v40;
  v41 = 1 << *(*(v1 + v36) + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v45 = v35 + 56;
  v110 = *(v1 + v36);

  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v109 = v39;
  if (!v43)
  {
    goto LABEL_18;
  }

  do
  {
    while (1)
    {
LABEL_22:
      v111 = v47;
      v49 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v50 = (*(v110 + 48) + ((v46 << 10) | (16 * v49)));
      v51 = *v50;
      v52 = v50[1];
      if (!*(v35 + 16))
      {

        goto LABEL_31;
      }

      sub_1A22E72A8();

      sub_1A22E6658();
      v53 = sub_1A22E72F8();
      v54 = -1 << *(v35 + 32);
      v55 = v53 & ~v54;
      if ((*(v45 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
      {
        break;
      }

LABEL_31:
      v47 = v111;
      result = swift_isUniquelyReferenced_nonNull_native();
      v114 = v47;
      if ((result & 1) == 0)
      {
        result = sub_1A210E5F8(0, *(v47 + 2) + 1, 1);
        v47 = v114;
      }

      v60 = *(v47 + 2);
      v59 = *(v47 + 3);
      v61 = (v60 + 1);
      if (v60 >= v59 >> 1)
      {
        v111 = (v60 + 1);
        result = sub_1A210E5F8((v59 > 1), v60 + 1, 1);
        v61 = v111;
        v47 = v114;
      }

      *(v47 + 2) = v61;
      v62 = &v47[16 * v60];
      *(v62 + 4) = v51;
      *(v62 + 5) = v52;
      v39 = v109;
      if (!v43)
      {
        goto LABEL_18;
      }
    }

    v56 = ~v54;
    while (1)
    {
      v57 = (*(v35 + 48) + 16 * v55);
      v58 = *v57 == v51 && v57[1] == v52;
      if (v58 || (sub_1A22E71E8() & 1) != 0)
      {
        break;
      }

      v55 = (v55 + 1) & v56;
      if (((*(v45 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v47 = v111;
    v39 = v109;
  }

  while (v43);
  while (1)
  {
LABEL_18:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v48 >= v44)
    {
      break;
    }

    v43 = *(v39 + 8 * v48);
    ++v46;
    if (v43)
    {
      v46 = v48;
      goto LABEL_22;
    }
  }

  v63 = *(v47 + 2);
  v64 = v102;
  if (v63)
  {
    v65 = sub_1A2104EA0();
    v66 = v103;
    v67 = v104;
    v68 = v105;
    (*(v103 + 16))(v104, v65, v105);

    v69 = v47;
    v70 = sub_1A22E6238();
    v71 = sub_1A22E6A68();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113[0] = v111;
      *v72 = 136315650;
      v73 = sub_1A22E7388();
      LODWORD(v110) = v71;
      v75 = sub_1A2103450(v73, v74, v113);

      *(v72 + 4) = v75;
      v76 = v66;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_1A2103450(0xD000000000000013, 0x80000001A2303BC0, v113);
      *(v72 + 22) = 2080;
      v77 = MEMORY[0x1A58DA990](v69, MEMORY[0x1E69E6158]);
      v79 = sub_1A2103450(v77, v78, v113);

      *(v72 + 24) = v79;
      _os_log_impl(&dword_1A20FC000, v70, v110, "[%s] %s - removing controllers for ids: %s", v72, 0x20u);
      v80 = v111;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v80, -1, -1);
      MEMORY[0x1A58DCD00](v72, -1, -1);

      result = (*(v76 + 8))(v104, v105);
    }

    else
    {

      result = (*(v66 + 8))(v67, v68);
    }

    v81 = 0;
    v82 = (v69 + 40);
    v83 = v69;
    while (v81 < *(v83 + 2))
    {
      v84 = v83;
      v86 = *(v82 - 1);
      v85 = *v82;
      swift_beginAccess();

      v87 = sub_1A210FF30(v86, v85);
      if (v88)
      {
        v89 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = *(v64 + v36);
        v114 = v91;
        *(v64 + v36) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A223995C();
          v91 = v114;
        }

        sub_1A2239630(v89, v91);
        *(v64 + v36) = v91;
      }

      ++v81;
      swift_endAccess();

      v82 += 2;
      v83 = v84;
      if (v63 == v81)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_55;
  }

LABEL_49:

  v92 = v101;
  v93 = *(v101 + 16);
  v94 = v107;
  v95 = v108;
  v96 = v106;
  if (!v93)
  {
    return sub_1A223CE3C(v100, type metadata accessor for RoutePickerSnapshot);
  }

  v97 = 0;
  while (v97 < *(v92 + 16))
  {
    v98 = v112;
    (*(v95 + 16))(v96, v92 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v97, v112);
    sub_1A210F0AC(v96, v64, v94);
    ++v97;
    result = (*(v95 + 8))(v96, v98);
    if (v93 == v97)
    {
      return sub_1A223CE3C(v100, type metadata accessor for RoutePickerSnapshot);
    }
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1A210A9FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  swift_beginAccess();
  sub_1A210AB00(v1 + v6, v5);
  swift_beginAccess();
  sub_1A2109BCC(a1, v1 + v6);
  swift_endAccess();
  sub_1A2109C3C(v5);
  sub_1A210D9B0(a1, &qword_1EB088C50);
  return sub_1A210D9B0(v5, &qword_1EB088C50);
}

uint64_t sub_1A210AB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A210AB70()
{
  result = qword_1ED9506A0;
  if (!qword_1ED9506A0)
  {
    sub_1A22E6088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9506A0);
  }

  return result;
}

uint64_t sub_1A210ABC8()
{
  v1 = *v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v36[6] = v2;
  v36[7] = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_1A22E5C88();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v36 - v18;
  v20 = v1;
  v21 = *(v1 + 120);
  v22 = v0;
  v21(v17);
  v23 = sub_1A22E6088();
  if ((*(*(v23 - 8) + 48))(v8, 1, v23))
  {
    sub_1A210D9B0(v8, &qword_1EB088C50);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_1A210D9B0(v11, &qword_1EB088C30);
    return sub_1A210982C();
  }

  v36[3] = v20;
  v36[4] = v16;
  v36[5] = v5;
  sub_1A22E6038();
  sub_1A210D9B0(v8, &qword_1EB088C50);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v19, v11, v12);
  v25 = sub_1A22E59B8();
  v27 = v26;
  v28 = *(v0 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_eligibilityMap);
  if (!*(v28 + 16) || (v29 = v25, , v30 = sub_1A210FF30(v29, v27), v32 = v31, , (v32 & 1) == 0))
  {

    goto LABEL_11;
  }

  v33 = *(*(v28 + 56) + v30);

  if ((v33 & 1) == 0)
  {
LABEL_11:
    sub_1A210982C();
    return (*(v13 + 8))(v19, v12);
  }

  v34 = *(v22 + OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_consumer);
  if (v34)
  {
    v35 = *(*v34 + 224);

    v35(v19);
    (*(v13 + 8))(v19, v12);
  }

  sub_1A223D75C(v19);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_1A210B26C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls24HardwareVolumeController_routingSessionSnapshot;
  swift_beginAccess();
  return sub_1A210AB00(v1 + v3, a1);
}

unint64_t sub_1A210B498()
{
  result = qword_1ED94EAF8;
  if (!qword_1ED94EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB088C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EAF8);
  }

  return result;
}

unint64_t sub_1A210B4FC()
{
  result = qword_1ED94EA48;
  if (!qword_1ED94EA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA48);
  }

  return result;
}

void (*sub_1A210B55C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(type metadata accessor for SessionArtworkPresentationModel() - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A210B6BC(v1 + v9, v8);
  return sub_1A210B720;
}

uint64_t type metadata accessor for SessionArtworkPresentationModel()
{
  result = qword_1ED9513C0;
  if (!qword_1ED9513C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A210B6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArtworkPresentationModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A210B720(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A210B6BC(*(*a1 + 96), v6);
    sub_1A210B6BC(v7 + v4, v5);
    swift_beginAccess();
    sub_1A210B82C(v6, v7 + v4);
    swift_endAccess();
    sub_1A212826C(v5);
    sub_1A2129CA8(v5);
  }

  else
  {
    sub_1A210B6BC(v7 + v4, v6);
    swift_beginAccess();
    sub_1A210B82C(v3, v7 + v4);
    swift_endAccess();
    sub_1A212826C(v6);
  }

  sub_1A2129CA8(v6);
  sub_1A2129CA8(v3);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A210B82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArtworkPresentationModel();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210B890()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1A22E5B48();
  v3 = sub_1A22E5B38();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A2105394(v2);
    return 0;
  }

  else
  {
    type metadata accessor for SessionArtworkPresentationModel();
    v6 = sub_1A22E5AE8();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

id sub_1A210B9F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v81 - v7;
  v8 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v81 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v81 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v81 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v81 = &v81 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v81 - v25;
  v27 = (*MEMORY[0x1E69E7D40] & *v0) + 256;
  v28 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x100);
  v29 = *(*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl) + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  v91 = v27;
  v95 = v28;
  v28();
  v30 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v93 = v31 + 48;
  v94 = v32;
  if (v32(v26, 1, v30))
  {
    sub_1A210D9B0(v26, &qword_1EB088820);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    sub_1A2232EDC(&v26[*(v30 + 20)], v10, type metadata accessor for SessionHeaderView.ViewModel);
    sub_1A210D9B0(v26, &qword_1EB088820);
    v33 = *(v10 + 4);
    v34 = *(v10 + 5);

    sub_1A2232F64(v10, type metadata accessor for SessionHeaderView.ViewModel);
  }

  v35 = MEMORY[0x1E69E7D40];
  v36 = (*((*MEMORY[0x1E69E7D40] & *v29) + 0xB0))(v96);
  *v37 = v33;
  v37[1] = v34;

  v36(v96, 0);

  v38 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
  v95();
  v39 = 1;
  v92 = v30;
  v40 = v94(v24, 1, v30);
  v41 = v89;
  if (!v40)
  {
    sub_1A2232EDC(&v24[v92[5]], v89, type metadata accessor for SessionHeaderView.ViewModel);
    v39 = 0;
  }

  sub_1A210D9B0(v24, &qword_1EB088820);
  (*(v87 + 56))(v41, v39, 1, v88);
  v42 = (*((*v35 & *v38) + 0xA0))(v41);
  v43 = *((*v35 & *v1) + 0x160);
  v44 = (v43)(v42);
  v45 = sub_1A229DB18(v44);
  v46 = v35;
  v47 = v90;
  if (v45)
  {
    v48 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
    v49 = v81;
    v95();
    v50 = v92;
    if (v94(v49, 1, v92))
    {
      sub_1A210D9B0(v49, &qword_1EB088820);
      v51 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
      v52 = v83;
      (*(*(v51 - 8) + 56))(v83, 1, 1, v51);
    }

    else
    {
      v53 = v49 + v50[6];
      v52 = v83;
      sub_1A2214CF8(v53, v83, &qword_1EB088BD8);
      sub_1A210D9B0(v49, &qword_1EB088820);
    }

    v45 = (*((*v46 & *v48) + 0xB8))(v52);
  }

  v54 = (v43)(v45);
  v55 = sub_1A229DB34(v54);
  v56 = v92;
  if (v55)
  {
    v57 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
    v58 = v82;
    v95();
    if (v94(v58, 1, v56))
    {
      sub_1A210D9B0(v58, &qword_1EB088820);
      bzero(v96, 0x300uLL);
    }

    else
    {
      sub_1A2115784(v58 + v56[7], v96);
      sub_1A210D9B0(v58, &qword_1EB088820);
    }

    v46 = MEMORY[0x1E69E7D40];
    v55 = (*((*MEMORY[0x1E69E7D40] & *v57) + 0xA8))(v96);
  }

  v59 = (v43)(v55);
  v60 = sub_1A229DB50(v59);
  if (v60)
  {
    v61 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
    v95();
    if (v94(v47, 1, v56))
    {
      sub_1A210D9B0(v47, &qword_1EB088820);
      v62 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
      v63 = v85;
      (*(*(v62 - 8) + 56))(v85, 1, 1, v62);
    }

    else
    {
      v63 = v85;
      sub_1A2214CF8(v47 + v56[8], v85, &qword_1EB088828);
      sub_1A210D9B0(v47, &qword_1EB088820);
    }

    v60 = (*((*v46 & *v61) + 0x98))(v63);
  }

  v64 = (v43)(v60);
  if (sub_1A229DAEC(v64))
  {
    v65 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
    v66 = v84;
    v95();
    if (v94(v66, 1, v56))
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
    }

    else
    {
      v71 = (v66 + v56[9]);
      v67 = *v71;
      v68 = v71[1];
      v69 = v71[2];
      v70 = v71[3];
      sub_1A2117FA8(*v71, v68);
    }

    sub_1A210D9B0(v66, &qword_1EB088820);
    (*((*MEMORY[0x1E69E7D40] & *v65) + 0x88))(v67, v68, v69, v70);
    v56 = v92;
  }

  v72 = v43();
  if (sub_1A229DAFC(v72))
  {
    v73 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
    v74 = v86;
    v95();
    if (v94(v74, 1, v56))
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v79 = (v74 + v56[9]);
      v75 = *v79;
      v76 = v79[1];
      v77 = v79[2];
      v78 = v79[3];
      sub_1A2117FA8(*v79, v76);
    }

    sub_1A210D9B0(v74, &qword_1EB088820);
    (*((*MEMORY[0x1E69E7D40] & *v73) + 0x88))(v75, v76, v77, v78);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1A210C4FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088820);
}

uint64_t get_enum_tag_for_layout_string_13MediaControls15TransportButtonC9ViewModelV17ContinuousControl_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A210C580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_viewModel;
  swift_beginAccess();
  sub_1A210C9D8(a1, v1 + v3);
  swift_endAccess();
  sub_1A22DE574();
  sub_1A210CA48();
  sub_1A210C66C();
  return sub_1A210D9B0(a1, &qword_1EB089540);
}

uint64_t sub_1A210C604@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB089540);
}

id sub_1A210C66C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v2);
  v5 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView) setAlpha_];
    [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView) setAlpha_];
    [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton) setAlpha_];
    return [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton) setAlpha_];
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_waveformView);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        [v8 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView) setAlpha_];
      }

      else
      {
        [v8 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView) setAlpha_];
      }

      [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton) setAlpha_];
      return [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton) setAlpha_];
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        [v8 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton) setAlpha_];
      }

      else
      {
        [v8 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_hapticView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton) setAlpha_];
      }

      return sub_1A212A104(v4);
    }
  }
}

__n128 sub_1A210C91C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_style;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 144) = *(v3 + 144);
  v5 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v5;
  v6 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v6;
  result = *v3;
  v8 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1A210C994()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_isResizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A210C9D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210CA48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088E70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23[-v2];
  v4 = sub_1A22E5BD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23[-v10];
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v9);
  v13 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  result = (*(*(v13 - 8) + 48))(v11, 1, v13);
  if (result != 1)
  {
    result = swift_getEnumCaseMultiPayload();
    if ((result - 2) >= 2)
    {
      if (result)
      {
        v16 = v11[9];
        v24[8] = v11[8];
        v24[9] = v16;
        v17 = v11[11];
        v24[10] = v11[10];
        v24[11] = v17;
        v18 = v11[5];
        v24[4] = v11[4];
        v24[5] = v18;
        v19 = v11[7];
        v24[6] = v11[6];
        v24[7] = v19;
        v20 = v11[1];
        v24[0] = *v11;
        v24[1] = v20;
        v21 = v11[3];
        v24[2] = v11[2];
        v24[3] = v21;
        v22 = *(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_transportButton);
        sub_1A211637C(v24, v23);
        (*((*v12 & *v22) + 0xA8))(v23);
        return sub_1A211830C(v24);
      }

      else
      {
        (*(v5 + 32))(v7, v11, v4);
        v15 = *(v0 + OBJC_IVAR____TtC13MediaControls20SessionAccessoryView_actionButton);
        (*(v5 + 16))(v3, v7, v4);
        (*(v5 + 56))(v3, 0, 1, v4);
        (*((*v12 & *v15) + 0x70))(v3);
        return (*(v5 + 8))(v7, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1A210CD8C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SessionHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t get_enum_tag_for_layout_string_13MediaControls15TransportButtonC9ViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A210CF28(uint64_t result, int a2, int a3)
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

uint64_t sub_1A210CF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210CFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5E18();
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v56 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089678);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089640);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v55 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v61 = v55 - v15;
  v63 = sub_1A22E5A98();
  v16 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v23 = v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089680);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v55 - v26;
  v28 = (v55 + *(v25 + 56) - v26);
  sub_1A210D780(a1, v55 - v26);
  sub_1A210D780(a2, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A210D780(v27, v21);
    v30 = *v21;
    v29 = v21[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v30 == *v28 && v29 == v28[1])
      {
      }

      else
      {
        v32 = sub_1A22E71E8();

        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_18:
      sub_1A210D854(v27);
      return 1;
    }
  }

  else
  {
    sub_1A210D780(v27, v23);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v16;
      v36 = v62;
      v35 = v63;
      (*(v16 + 32))(v62, v28, v63);
      v37 = v61;
      sub_1A210D7E4(&v23[v33], v61);
      v38 = v28 + v33;
      v39 = v36;
      sub_1A210D7E4(v38, v14);
      v40 = sub_1A22E5A58();
      v43 = *(v34 + 8);
      v41 = v34 + 8;
      v42 = v43;
      v43(v23, v35);
      if (v40)
      {
        v55[1] = v41;
        v44 = *(v7 + 48);
        v45 = v60;
        sub_1A2214CF8(v37, v60, &qword_1EB089640);
        sub_1A2214CF8(v14, v45 + v44, &qword_1EB089640);
        v46 = v58;
        v47 = *(v59 + 48);
        if (v47(v45, 1, v58) == 1)
        {
          sub_1A210D9B0(v14, &qword_1EB089640);
          v48 = v60;
          sub_1A210D9B0(v37, &qword_1EB089640);
          v42(v62, v63);
          if (v47(v48 + v44, 1, v46) == 1)
          {
            sub_1A210D9B0(v48, &qword_1EB089640);
            goto LABEL_18;
          }
        }

        else
        {
          v50 = v57;
          sub_1A2214CF8(v45, v57, &qword_1EB089640);
          if (v47(v45 + v44, 1, v46) != 1)
          {
            v51 = v59;
            v52 = v56;
            (*(v59 + 32))(v56, v45 + v44, v46);
            sub_1A2292034(&qword_1ED9506D8, MEMORY[0x1E69AE6E0]);
            v53 = sub_1A22E6568();
            v54 = *(v51 + 8);
            v54(v52, v46);
            sub_1A210D9B0(v14, &qword_1EB089640);
            sub_1A210D9B0(v61, &qword_1EB089640);
            v42(v62, v63);
            v54(v50, v46);
            sub_1A210D9B0(v60, &qword_1EB089640);
            if ((v53 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_18;
          }

          sub_1A210D9B0(v14, &qword_1EB089640);
          v48 = v60;
          sub_1A210D9B0(v61, &qword_1EB089640);
          v42(v62, v63);
          (*(v59 + 8))(v50, v46);
        }

        sub_1A210D9B0(v48, &qword_1EB089678);
      }

      else
      {
        sub_1A210D9B0(v14, &qword_1EB089640);
        sub_1A210D9B0(v37, &qword_1EB089640);
        v42(v39, v35);
      }

LABEL_23:
      sub_1A210D854(v27);
      return 0;
    }

    sub_1A210D9B0(&v23[v33], &qword_1EB089640);
    (*(v16 + 8))(v23, v63);
  }

  sub_1A210D9B0(v27, &qword_1EB089680);
  return 0;
}

uint64_t sub_1A210D780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210D7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210D854(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A210D8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 768))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 376);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A210D8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A210D940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A210D9B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A210DA10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A22E65C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A210DA94()
{

  swift_getAtKeyPath();
}

uint64_t sub_1A210DAEC()
{
  swift_getKeyPath();
  type metadata accessor for WeakReference();
  sub_1A22E67D8();

  swift_getWitnessTable();
  v0 = sub_1A22E6708();

  return v0;
}

uint64_t sub_1A210DC50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089D40);
  v4 = *(v3 + 80);
  v5 = swift_dynamicCast();
  return (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
}

uint64_t sub_1A210DD08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A22E69B8();
  if (!v19)
  {
    return sub_1A22E6778();
  }

  v41 = v19;
  v45 = sub_1A22E6F78();
  v32 = sub_1A22E6F88();
  sub_1A22E6F28();
  result = sub_1A22E69A8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A22E69D8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A22E6F68();
      result = sub_1A22E69C8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A210E128(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

_OWORD *sub_1A210E174(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A210E184(uint64_t a1)
{
  sub_1A22E65C8();
  sub_1A22E72A8();
  sub_1A22E6658();
  v2 = sub_1A22E72F8();

  return sub_1A210E214(a1, v2);
}

unint64_t sub_1A210E214(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A22E65C8();
      v8 = v7;
      if (v6 == sub_1A22E65C8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A22E71E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1A210E3F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
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

char *sub_1A210E5F8(char *a1, int64_t a2, char a3)
{
  result = sub_1A210E618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A210E618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088780);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A210E724(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A58DAB90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A210E7BC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A210E7BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A22E72A8();
  sub_1A22E6658();
  v8 = sub_1A22E72F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A22E71E8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A210E90C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A210E90C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A22132F0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A2213550();
      goto LABEL_16;
    }

    sub_1A22136AC();
  }

  v10 = *v4;
  sub_1A22E72A8();
  sub_1A22E6658();
  result = sub_1A22E72F8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A22E71E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A22E71F8();
  __break(1u);
  return result;
}

uint64_t sub_1A210EA8C()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition);
  v3 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 8);
  v4 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 16);
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionsController_pendingTransition + 24);
  *v1 = 0u;
  v1[1] = 0u;
  sub_1A223767C(v2, v3, v4, v5);

  return sub_1A221467C(v2, v3);
}

uint64_t sub_1A210EB08()
{
  v1 = v0;
  v2 = sub_1A22E5C88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A2113058();
  v7 = sub_1A22E6568();
  v8 = *(v3 + 8);
  v22 = v5;
  v23 = v8;
  v24 = v3 + 8;
  v25 = v2;
  result = v8(v5, v2);
  if ((v7 & 1) == 0)
  {
    v10 = *(**(v1 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 120);

    v12 = v10(v11);

    v21 = *(v12 + 16);
    if (v21)
    {
      v13 = 0;
      v14 = (v12 + 40);
      while (v13 < *(v12 + 16))
      {
        ++v13;
        v15 = *v14;
        ObjectType = swift_getObjectType();
        v17 = *(*v1 + 152);
        v18 = swift_unknownObjectRetain();
        v19 = v22;
        v17(v18);
        (*(v15 + 16))(v1, v19, ObjectType, v15);
        swift_unknownObjectRelease();
        result = v23(v19, v25);
        v14 += 2;
        if (v21 == v13)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      return (*(*v1 + 296))(v20);
    }
  }

  return result;
}

uint64_t sub_1A210ED94(uint64_t a1)
{
  v3 = sub_1A22E5C88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_1A210EB08();
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

uint64_t sub_1A210EEF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A210EF38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A210EF90(__int128 *a1@<X8>)
{
  if (*(v1 + 41))
  {
    if (qword_1ED9511A8 != -1)
    {
      swift_once();
    }

    v8 = *&byte_1ED9511B0[64];
    v9 = *&byte_1ED9511B0[80];
    v10 = *&byte_1ED9511B0[96];
    v11 = *&byte_1ED9511B0[112];
    v6 = *byte_1ED9511B0;
    v7 = *&byte_1ED9511B0[16];
    v3 = *&byte_1ED9511B0[32];
    v4 = *&byte_1ED9511B0[48];
  }

  else
  {
    v5 = sub_1A210F05C();
    v8 = v5[4];
    v9 = v5[5];
    v10 = v5[6];
    v11 = v5[7];
    v6 = *v5;
    v7 = v5[1];
    v3 = v5[2];
    v4 = v5[3];
  }

  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = v11;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v3;
  a1[3] = v4;
}

__int128 *sub_1A210F05C()
{
  if (qword_1ED951190 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952E18;
}

uint64_t sub_1A210F0AC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v50 = a3;
  v51 = sub_1A22E5C88();
  v5 = *(v51 - 8);
  v6 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = sub_1A22E6248();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A22E59B8();
  v16 = v15;
  v17 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
  swift_beginAccess();
  v18 = *(a2 + v17);
  if (!*(v18 + 16))
  {
  }

  v49 = a1;

  v19 = sub_1A210FF30(v14, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  v23 = sub_1A2104EA0();
  v24 = v11;
  (*(v11 + 16))(v13, v23, v10);
  v25 = v49;
  v26 = v51;
  v47 = *(v5 + 16);
  v48 = v5 + 16;
  v47(v9, v49, v51);
  v27 = sub_1A22E6238();
  v46 = sub_1A22E6A68();
  if (os_log_type_enabled(v27, v46))
  {
    v28 = swift_slowAlloc();
    v45 = v24;
    v29 = v28;
    v44 = swift_slowAlloc();
    v53[0] = v44;
    *v29 = 136315650;
    v30 = sub_1A22E7388();
    v50 = v27;
    v32 = sub_1A2103450(v30, v31, v53);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1A2103450(0xD000000000000013, 0x80000001A2303BC0, v53);
    *(v29 + 22) = 2080;
    v33 = sub_1A22E59B8();
    v35 = v34;
    (*(v5 + 8))(v9, v26);
    v36 = sub_1A2103450(v33, v35, v53);
    v25 = v49;

    *(v29 + 24) = v36;
    v37 = v50;
    _os_log_impl(&dword_1A20FC000, v50, v46, "[%s] %s - updating controller for sessionIdentifier: %s", v29, 0x20u);
    v38 = v44;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v38, -1, -1);
    MEMORY[0x1A58DCD00](v29, -1, -1);

    (*(v45 + 8))(v13, v10);
  }

  else
  {

    (*(v5 + 8))(v9, v26);
    (*(v24 + 8))(v13, v10);
  }

  v40 = v52;
  v47(v52, v25, v26);
  (*(*v22 + 160))(v40);
  swift_beginAccess();
  type metadata accessor for SessionsController.State(0);
  v41 = *(*v22 + 136);

  v41(v42);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A210F5C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A210F5D0()
{
  v1 = v0;
  v2 = type metadata accessor for RoutePickerSnapshot(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v50 - v7;
  *&v65 = sub_1A22E5C88();
  *&v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  *&v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v50 - v14);
  v16 = *(v0 + 112);
  v17 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 16);
  v59 = v17;
  v60 = v16;
  v57 = v17 + 16;
  v58 = ObjectType;
  v56 = v19;
  v19(ObjectType, v17);
  v21 = *(v3 + 48);
  v20 = v3 + 48;
  v55 = v21;
  v22 = v21(v15, 1, v2);
  v61 = v13;
  if (v22 == 1)
  {
    sub_1A210D9B0(v15, &qword_1EB088C40);
LABEL_10:
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v23 = *v15;

  sub_1A2257128(v15);
  v24 = *(v23 + 16);
  if (!v24)
  {

    goto LABEL_10;
  }

  v50[2] = v20;
  v51 = v6;
  v52 = v8;
  v53 = v2;
  v54 = v1;
  *&v74[0] = MEMORY[0x1E69E7CC0];
  sub_1A210E5F8(0, v24, 0);
  v25 = *&v74[0];
  v26 = *(v66 + 16);
  v27 = *(v66 + 80);
  v50[1] = v23;
  v28 = v23 + ((v27 + 32) & ~v27);
  v62 = *(v66 + 72);
  v63 = v26;
  *&v66 = v66 + 16;
  v29 = (v66 - 8);
  do
  {
    v30 = v64;
    v31 = v65;
    v63(v64, v28, v65);
    v32 = sub_1A22E59B8();
    v34 = v33;
    (*v29)(v30, v31);
    *&v74[0] = v25;
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1A210E5F8((v35 > 1), v36 + 1, 1);
      v25 = *&v74[0];
    }

    *(v25 + 16) = v36 + 1;
    v37 = v25 + 16 * v36;
    *(v37 + 32) = v32;
    *(v37 + 40) = v34;
    v28 += v62;
    --v24;
  }

  while (v24);

  v2 = v53;
  v1 = v54;
  v6 = v51;
  v8 = v52;
LABEL_11:
  swift_beginAccess();
  *(v1 + 32) = v25;

  sub_1A2110060();
  v38 = v61;
  v56(v58, v59);
  if (v55(v38, 1, v2) == 1)
  {
    sub_1A210D9B0(v38, &qword_1EB088C40);
    sub_1A220D25C(&v70);
    v39 = 0;
    v40 = v70;
    v65 = v72;
    v66 = v71;
    v64 = v73;
  }

  else
  {
    sub_1A223CCFC(v38, v8);
    sub_1A22570C4(v8, v6);
    sub_1A2255AD8(v6, &v70);
    v40 = v70;
    v65 = v72;
    v66 = v71;
    v64 = v73;
    v39 = v8[*(v2 + 24)];
    sub_1A2257128(v8);
  }

  swift_beginAccess();
  v41 = *(v1 + 64);
  v68[0] = *(v1 + 48);
  v68[1] = v41;
  v69[0] = *(v1 + 80);
  *(v69 + 9) = *(v1 + 89);
  *(v1 + 48) = v40;
  v42 = v65;
  *(v1 + 56) = v66;
  *(v1 + 72) = v42;
  *(v1 + 88) = v64;
  *(v1 + 104) = v39;
  v43 = sub_1A225673C(v68);
  result = (*(*v1 + 136))(v43);
  if (result)
  {
    v46 = v45;
    v47 = swift_getObjectType();
    v48 = *(v1 + 64);
    v74[0] = *(v1 + 48);
    v74[1] = v48;
    v75[0] = *(v1 + 80);
    *(v75 + 9) = *(v1 + 89);
    v49 = *(v46 + 16);
    sub_1A2256704(v74, &v67);
    v49(v74, v47, v46);
    swift_unknownObjectRelease();
    return sub_1A225673C(v74);
  }

  return result;
}

uint64_t sub_1A210FB30()
{
  v0 = sub_1A22E5C88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  sub_1A22E6038();
  sub_1A210FD2C(v9, v7);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *(v1 + 32);
    v11(v3, v7, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD8);
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A2308E80;
    v11((v10 + v12), v3, v0);
  }

  sub_1A210FD9C(v9);
  v13 = sub_1A22E6078();
  v16 = v10;
  sub_1A210FE04(v13);
  return v16;
}

uint64_t sub_1A210FD2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A210FD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A210FE04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1A2110640(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1A22E5C88();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1A210FF30(uint64_t a1, uint64_t a2)
{
  sub_1A22E72A8();
  sub_1A22E6658();
  v4 = sub_1A22E72F8();

  return sub_1A210FFA8(a1, a2, v4);
}

unint64_t sub_1A210FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A22E71E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A2110060()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v52 = &v47 - v2;
  v55 = sub_1A22E5C88();
  v53 = *(v55 - 8);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v48 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v47 - v12);
  v57 = MEMORY[0x1E69E7CC8];
  v50 = v0;
  v14 = v0[15];
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 16);
  v16(ObjectType, v14);
  v17 = type metadata accessor for RoutePickerSnapshot(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v13, 1, v17) == 1)
  {
    sub_1A210D9B0(v13, &qword_1EB088C40);
    v51 = 0;
  }

  else
  {
    v51 = *v13;

    sub_1A2257128(v13);
  }

  v16(ObjectType, v14);
  if (v18(v11, 1, v17) == 1)
  {
    sub_1A210D9B0(v11, &qword_1EB088C40);
    v19 = v52;
    v20 = v53;
    v21 = v55;
    (*(v53 + 56))(v52, 1, 1, v55);
    v22 = v50;
    v23 = v51;
    goto LABEL_7;
  }

  v19 = v52;
  sub_1A210FD2C(v11 + *(v17 + 20), v52);
  sub_1A2257128(v11);
  v20 = v53;
  v21 = v55;
  v24 = (*(v53 + 48))(v19, 1, v55);
  v22 = v50;
  v23 = v51;
  if (v24 == 1)
  {
LABEL_7:
    sub_1A210D9B0(v19, &qword_1EB088C30);
    if (!v23)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v42 = *(v20 + 32);
  v43 = v49;
  v42(v49, v19, v21);
  if (!v23)
  {
    (*(v20 + 8))(v43, v21);
    goto LABEL_15;
  }

  v44 = v48;
  (*(v20 + 16))(v48, v43, v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1A2110640(0, *(v23 + 2) + 1, 1, v23);
  }

  v46 = *(v23 + 2);
  v45 = *(v23 + 3);
  if (v46 >= v45 >> 1)
  {
    v23 = sub_1A2110640(v45 > 1, v46 + 1, 1, v23);
  }

  (*(v20 + 8))(v49, v21);
  *(v23 + 2) = v46 + 1;
  v42(&v23[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v46], v44, v21);
  if (v23)
  {
LABEL_8:
    v25 = *(v23 + 2);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1A210E5F8(0, v25, 0);
      v26 = v56;
      v28 = *(v20 + 16);
      v27 = v20 + 16;
      v29 = *(v27 + 64);
      v51 = v23;
      v30 = &v23[(v29 + 32) & ~v29];
      v52 = *(v27 + 56);
      v53 = v28;
      v31 = (v27 - 8);
      do
      {
        v32 = v54;
        v33 = v27;
        (v53)(v54, v30, v21);
        v34 = sub_1A22E59B8();
        v36 = v35;
        (*v31)(v32, v21);
        v56 = v26;
        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1A210E5F8((v37 > 1), v38 + 1, 1);
          v26 = v56;
        }

        *(v26 + 16) = v38 + 1;
        v39 = v26 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v30 += v52;
        --v25;
        v21 = v55;
        v27 = v33;
      }

      while (v25);
      v22 = v50;
    }

    sub_1A2110818(v26, v22, &v57);
  }

LABEL_15:
  v40 = v57;
  swift_beginAccess();
  v22[5] = v40;
}

size_t sub_1A2110640(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD8);
  v10 = *(sub_1A22E5C88() - 8);
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
  v15 = *(sub_1A22E5C88() - 8);
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

uint64_t sub_1A2110818(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  v5 = a2;
  for (i = (result + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(*v5 + 192);

    v11 = v9(v10);
    if (!*(v11 + 16))
    {
      break;
    }

    v12 = sub_1A210FF30(v8, v7);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v49 = *(*(v11 + 56) + 8 * v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    v51 = *v4;
    *v4 = 0x8000000000000000;
    v16 = v8;
    v17 = sub_1A210FF30(v8, v7);
    v19 = v15[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_33;
    }

    v23 = v18;
    if (v15[3] < v22)
    {
      sub_1A2110C04(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1A210FF30(v16, v7);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

LABEL_22:
      v38 = v51;
      if ((v23 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v46 = v17;
    sub_1A2256490();
    v17 = v46;
    v38 = v51;
    if ((v23 & 1) == 0)
    {
LABEL_23:
      v38[(v17 >> 6) + 8] |= 1 << v17;
      v39 = (v38[6] + 16 * v17);
      *v39 = v16;
      v39[1] = v7;
      *(v38[7] + 8 * v17) = v49;
      v40 = v38[2];
      v21 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v38[2] = v41;
      goto LABEL_4;
    }

LABEL_3:
    *(v38[7] + 8 * v17) = v49;

LABEL_4:
    *v4 = v38;
LABEL_5:

LABEL_6:
    if (!--v3)
    {
      return result;
    }
  }

  v25 = v5[15];
  ObjectType = swift_getObjectType();
  if (!(*(v25 + 48))(v8, v7, ObjectType, v25))
  {
    goto LABEL_5;
  }

  type metadata accessor for MediaControlsModuleSessionPresenter(0);

  v50 = sub_1A2284350(v27);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v4;
  v52 = *v4;
  *v4 = 0x8000000000000000;
  v30 = sub_1A210FF30(v8, v7);
  v32 = v29[2];
  v33 = (v31 & 1) == 0;
  v21 = __OFADD__(v32, v33);
  v34 = v32 + v33;
  if (!v21)
  {
    v35 = v31;
    if (v29[3] >= v34)
    {
      if (v28)
      {
        goto LABEL_19;
      }

      v42 = v30;
      sub_1A2256490();
      v30 = v42;
      v37 = v52;
      if ((v35 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_20:
      *(v37[7] + 8 * v30) = v50;
    }

    else
    {
      sub_1A2110C04(v34, v28);
      v30 = sub_1A210FF30(v8, v7);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_36;
      }

LABEL_19:
      v37 = v52;
      if (v35)
      {
        goto LABEL_20;
      }

LABEL_26:
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v43 = (v37[6] + 16 * v30);
      *v43 = v8;
      v43[1] = v7;
      *(v37[7] + 8 * v30) = v50;
      v44 = v37[2];
      v21 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v21)
      {
        goto LABEL_34;
      }

      v37[2] = v45;
    }

    v4 = a3;
    *a3 = v37;

    v5 = a2;
    goto LABEL_6;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1A22E7208();
  __break(1u);
  return result;
}

uint64_t sub_1A2110C04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD0);
  v34 = a2;
  result = sub_1A22E7058();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1A22E72A8();
      sub_1A22E6658();
      result = sub_1A22E72F8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A2110EAC()
{
  v1 = sub_1A22E5C88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 40))(ObjectType, v5);
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 152))(v7);

    v8 = sub_1A22E59B8();
    (*(v2 + 8))(v4, v1);
  }

  return v8;
}

uint64_t sub_1A2111024()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  (*(*v0 + 288))(v2);
  v5 = type metadata accessor for RoutePickerSnapshot(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) || (v6 = *(v5 + 20), v7 = sub_1A22E5C88(), (*(*(v7 - 8) + 48))(&v4[v6], 1, v7)))
  {
    sub_1A210D9B0(v4, &qword_1EB088C40);
    return 0;
  }

  else
  {
    v9 = sub_1A22E59B8();
    v11 = v10;
    sub_1A210D9B0(v4, &qword_1EB088C40);
    v12 = sub_1A21111C8(v9, v11);

    return v12;
  }
}

uint64_t sub_1A21111C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v82 = a1;
  v5 = *v2;
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v71 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v71 - v16;
  v81 = sub_1A22E5C88();
  v17 = *(v81 - 8);
  v18 = MEMORY[0x1EEE9AC00](v81);
  v75 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v71 - v23;
  v24 = OBJC_IVAR____TtC13MediaControls18SessionsController_controllers;
  v25 = swift_beginAccess();
  v76 = v24;
  v26 = *(v3 + v24);
  if (*(v26 + 16))
  {

    v27 = sub_1A210FF30(v82, a2);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      return v29;
    }
  }

  (*(*v3 + 288))(v25);
  v30 = type metadata accessor for RoutePickerSnapshot(0);
  v31 = (*(*(v30 - 8) + 48))(v14, 1, v30);
  v74 = v5;
  if (v31)
  {
    sub_1A210D9B0(v14, &qword_1EB088C40);
    v32 = v79;
    (*(v17 + 56))(v79, 1, 1, v81);
LABEL_19:
    sub_1A210D9B0(v32, &qword_1EB088C30);
    v45 = sub_1A2104EA0();
    v46 = v78;
    (*(v7 + 16))(v78, v45, v6);

    v47 = sub_1A22E6238();
    v48 = sub_1A22E6A68();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84[0] = v50;
      *v49 = 136315650;
      v51 = sub_1A22E7388();
      v53 = sub_1A2103450(v51, v52, v84);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_1A2103450(0xD000000000000010, 0x80000001A23039D0, v84);
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_1A2103450(v82, a2, v84);
      _os_log_impl(&dword_1A20FC000, v47, v48, "[%s] %s - session(%s) not found in snapshot", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v50, -1, -1);
      MEMORY[0x1A58DCD00](v49, -1, -1);
    }

    (*(v7 + 8))(v46, v6);
    return 0;
  }

  v80 = v17;
  v71 = v11;
  v72 = v7;
  v33 = a2;
  v73 = v6;
  v34 = *v14;

  result = sub_1A210D9B0(v14, &qword_1EB088C40);
  v36 = *(v34 + 16);
  v37 = v81;
  if (!v36)
  {
LABEL_14:

    v42 = 1;
    v7 = v72;
    v6 = v73;
    a2 = v33;
    v32 = v79;
    v43 = v80;
LABEL_18:
    v44 = v77;
    (*(v43 + 56))(v32, v42, 1, v37);
    if ((*(v43 + 48))(v32, 1, v37) != 1)
    {
      v54 = v43;
      (*(v43 + 32))(v44, v32, v37);
      type metadata accessor for SessionController();
      v55 = v75;
      v56 = (*(v43 + 16))(v75, v44, v37);
      v57 = (*(*v3 + 232))(v56);
      v59 = *(v58 + 8);

      v29 = sub_1A2259A74(v55, v57, v59);
      v60 = v76;
      swift_beginAccess();
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v3 + v60);
      *(v3 + v60) = 0x8000000000000000;
      sub_1A22397E0(v29, v82, a2, isUniquelyReferenced_nonNull_native);

      *(v3 + v60) = v83;
      swift_endAccess();
      v62 = sub_1A2104EA0();
      v63 = v71;
      (*(v7 + 16))(v71, v62, v6);

      v64 = sub_1A22E6238();
      v65 = sub_1A22E6A68();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84[0] = v80;
        *v66 = 136315650;
        v67 = sub_1A22E7388();
        v69 = sub_1A2103450(v67, v68, v84);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_1A2103450(0xD000000000000010, 0x80000001A23039D0, v84);
        *(v66 + 22) = 2080;
        *(v66 + 24) = sub_1A2103450(v82, a2, v84);
        _os_log_impl(&dword_1A20FC000, v64, v65, "[%s] %s - created controller for id: %s", v66, 0x20u);
        v70 = v80;
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v70, -1, -1);
        MEMORY[0x1A58DCD00](v66, -1, -1);

        (*(v7 + 8))(v71, v6);
      }

      else
      {

        (*(v7 + 8))(v63, v6);
      }

      (*(v54 + 8))(v77, v81);
      return v29;
    }

    goto LABEL_19;
  }

  v38 = 0;
  v39 = (v80 + 8);
  while (v38 < *(v34 + 16))
  {
    (*(v80 + 16))(v22, v34 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v38, v37);
    if (sub_1A22E59B8() == v82 && v40 == v33)
    {

LABEL_17:
      v32 = v79;
      v43 = v80;
      (*(v80 + 32))(v79, v22, v37);
      v42 = 0;
      v7 = v72;
      v6 = v73;
      a2 = v33;
      goto LABEL_18;
    }

    v41 = sub_1A22E71E8();

    if (v41)
    {

      v37 = v81;
      goto LABEL_17;
    }

    ++v38;
    v37 = v81;
    result = (*v39)(v22, v81);
    if (v36 == v38)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_1A2111BAC()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView);
  }

  else
  {
    type metadata accessor for MediaControlsModuleView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A2111CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A22E71E8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A2111D40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A2111D8C(uint64_t a1)
{
  v3 = v1 + qword_1ED94F358;
  swift_beginAccess();
  v4 = *(v3 + 1);
  *v16 = *v3;
  *&v16[16] = v4;
  *&v16[32] = *(v3 + 2);
  v17 = *(v3 + 6);
  v5 = *(v3 + 3);
  v6 = *(v3 + 4);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 6) = *(a1 + 48);
  sub_1A2111C48(v16, v23);

  sub_1A221467C(v5, v6);
  v8 = *v16;
  v14 = *&v16[8];
  v15 = *&v16[24];
  v9 = *&v16[40];
  v10 = v17;
  v11 = v1 + qword_1ED94F358;
  swift_beginAccess();
  v12 = *(v11 + 1);
  v23[0] = *v11;
  v23[1] = v12;
  v23[2] = *(v11 + 2);
  v24 = *(v11 + 6);
  sub_1A2111C48(v23, &v18);
  LOBYTE(v11) = sub_1A2111F30(v23, v16);
  sub_1A2111C80(v23);
  if ((v11 & 1) == 0)
  {
    v18 = v8;
    v19 = v14;
    v20 = v15;
    v21 = v9;
    v22 = v10;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(&v18);
  }

  return sub_1A2111C80(v16);
}

BOOL sub_1A2111F30(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1A2111CB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_1A22E71E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v6 = a1[4];
  v9 = a2[3];
  v8 = a2[4];
  if (!v6)
  {
    if (!v8)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    sub_1A2214638(v7, v6);
LABEL_16:
    sub_1A2214638(v9, v8);
    sub_1A221467C(v7, v6);
    sub_1A221467C(v9, v8);
    return 0;
  }

  sub_1A2214638(v7, v6);
  sub_1A2214638(v7, v6);
  sub_1A2214638(v9, v8);
  sub_1A2216B24();
  v10 = sub_1A22E6568();

  sub_1A221467C(v7, v6);
  return (v10 & 1) != 0;
}

uint64_t sub_1A2112104(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

id sub_1A211217C()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for MediaControlsModuleView();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v1 = [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v1);
  if (v11)
  {
    v12 = v11;
    [v11 setFrame_];
  }

  v13 = *(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView);
  v14 = [v13 sizeThatFits_];
  v16 = v15;
  if (((*((*v10 & *v0) + 0xC0))(v14) & 0x100) != 0)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v44);
    if (v16 >= Height)
    {
      v16 = Height;
    }
  }

  v45.origin.x = v3;
  v45.origin.y = v5;
  v45.size.width = v7;
  v45.size.height = v9;
  Width = CGRectGetWidth(v45);
  v19 = sub_1A210F570(v3, v5, v7, v9, 0.0, 0.0, Width, v16);
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v24 = *((*v10 & *v0) + 0x120);
  v25 = v3;
  v26 = v5;
  v27 = v7;
  v28 = v9;
  if (((1 << (v24)(v19)) & 0xAF) == 0)
  {
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
  }

  [v13 frame];
  v48.origin.x = v25;
  v48.origin.y = v26;
  v48.size.width = v27;
  v48.size.height = v28;
  if (!CGRectEqualToRect(v46, v48))
  {
    [v13 setFrame_];
  }

  sub_1A211C5AC();
  v47.origin.x = v3;
  v47.origin.y = v5;
  v47.size.width = v7;
  v47.size.height = v9;
  v29 = CGRectGetWidth(v47);
  if ((v24() | 2) == 6)
  {
    [v0 bounds];
    sub_1A210F570(v30, v31, v32, v33, 0.0, 0.0, v29, 408.0);
    v3 = v34;
    v5 = v35;
    v7 = v36;
    v9 = v37;
  }

  return [*(v0 + OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_embeddedView) setFrame_];
}

void *sub_1A2112474()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_previewView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double sub_1A21124C0(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_1A211250C(a2);

  return v4;
}

double sub_1A211250C(double a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  (*(**(v1 + qword_1ED94F368) + 208))(v3);
  return a1;
}

uint64_t sub_1A21125A8()
{
  v1 = qword_1ED94F370;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2112604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerSessionsView();
  return objc_msgSendSuper2(&v2, sel_contentSize);
}

__n128 sub_1A2112674@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v14 = *(v1 + 80);
  v15 = v3;
  v16 = *(v1 + 112);
  v4 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v4;
  v5 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = v5;
  sub_1A21126FC(&v10, &v9);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

void sub_1A2112734(void (*a1)(_OWORD *))
{
  (*(*v1 + 96))(v9);
  a1(v9);
  swift_beginAccess();
  v3 = *(v1 + 96);
  v11[4] = *(v1 + 80);
  v11[5] = v3;
  v12 = *(v1 + 112);
  v4 = *(v1 + 32);
  v11[0] = *(v1 + 16);
  v11[1] = v4;
  v5 = *(v1 + 64);
  v11[2] = *(v1 + 48);
  v11[3] = v5;
  v6 = v9[1];
  *(v1 + 16) = v9[0];
  *(v1 + 32) = v6;
  v7 = v9[5];
  *(v1 + 80) = v9[4];
  *(v1 + 96) = v7;
  v8 = v9[3];
  *(v1 + 48) = v9[2];
  *(v1 + 64) = v8;
  *(v1 + 112) = v10;
  sub_1A2112BDC(v11);
  sub_1A2113260();
}

uint64_t sub_1A211281C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + qword_1ED94F358);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];

  result = sub_1A2214638(v7, v8);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t sub_1A21128C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2112930(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A21129C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1A2112B08()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2112B4C()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_moduleLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A2112B90()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t sub_1A2112C30()
{
  result = qword_1ED94ED98[0];
  if (!qword_1ED94ED98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED94ED98);
  }

  return result;
}

uint64_t sub_1A2112C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1A21135AC(v11, v13) & 1;
}

uint64_t sub_1A2112CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1A22E71E8();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1A2112DBC(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1A21136C4(a2, a3);
}

uint64_t sub_1A2112E1C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  v5 = sub_1A2112E98(v4, v3);

  if ((v5 & 1) == 0)
  {
    sub_1A2259DE8(v3);
  }
}

uint64_t sub_1A2112E98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1A22E72A8();

    sub_1A22E6658();
    v16 = sub_1A22E72F8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1A22E71E8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2113058()
{
  result = qword_1ED950740;
  if (!qword_1ED950740)
  {
    sub_1A22E5C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED950740);
  }

  return result;
}

double sub_1A21130F8(void *a1)
{
  v1 = a1;
  sub_1A2112604();
  v3 = v2;

  return v3;
}

double sub_1A211313C(void *a1, uint64_t a2, char a3)
{
  sub_1A2113184(a3);

  return sub_1A2113198(a1);
}

double sub_1A2113198(void *a1)
{
  if (a1)
  {
    [a1 gridGeometryInfo];
    v3 = v2;
    [a1 gridGeometryInfo];
    v5 = v4;
  }

  else
  {
    v3 = MEMORY[0x1A58DB6D0]();
    CCUILayoutGutter();
    v5 = v6;
  }

  CCUINumberOfRowsForGridSizeClass();
  v7 = CCUINumberOfColumnsForGridSizeClass();
  return v3 * v7 + v5 * (v7 + -1.0);
}

void sub_1A2113260()
{
  v1 = *(*v0 + 96);
  v1(v22);
  sub_1A2112BDC(v22);
  if (sub_1A210E438(v23, 1))
  {
    v1(v30);
    v2 = v31;
    v26[0] = v31;

    sub_1A2112BDC(v30);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v2 + 56) + 0.0;
      if (v3 != 1)
      {
        v5 = (v2 + 88);
        v6 = 1;
        while (v6 < *(v2 + 16))
        {
          ++v6;
          v7 = *v5;

          (v1)(v33, v8);

          sub_1A2112BDC(v33);
          if (v34 == 1)
          {
            v9 = 12.0;
          }

          else
          {
            v9 = 16.0;
          }

          v4 = v4 + v7 + v9;
          v5 += 4;
          if (v3 == v6)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }

    else
    {
      v4 = 0.0;
    }

LABEL_26:
    sub_1A2254748(v26);
LABEL_27:
    swift_beginAccess();
    v0[15] = v4;
    return;
  }

  v1(v24);
  sub_1A2112BDC(v24);
  if (sub_1A210E438(v25, 2))
  {
    v1(v33);
    sub_1A2112BDC(v33);
    v4 = v35;
    goto LABEL_27;
  }

  v1(v26);
  v10 = v27;
  v37 = v27;

  sub_1A2112BDC(v26);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 56);
    v14 = 0.0;
    while (v12 < *(v10 + 16))
    {
      v17 = *v13;
      if (v12 == 1)
      {

        (v1)(v28, v15);

        sub_1A2112BDC(v28);
        if (v29 == 1)
        {
          v16 = 12.0;
        }

        else
        {
          v16 = 16.0;
        }

        v17 = v17 + v16;
      }

      else if (v12)
      {
        v17 = 0.0;
        if (v12 <= 3)
        {

          (v1)(v30, v18);
          v19 = sub_1A2112BDC(v30);
          v20 = v32;
          (v1)(v33, v19);
          sub_1A2112BDC(v33);
          v21 = v36;

          v17 = v20 * pow(v21, (v12 - 2));
        }
      }

      ++v12;
      v14 = v14 + v17;
      v13 += 4;
      if (v11 == v12)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

  v14 = 0.0;
LABEL_29:
  sub_1A2254748(&v37);
  swift_beginAccess();
  v0[15] = v14;
}

uint64_t sub_1A21135AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A22E71E8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v5)
  {
LABEL_21:
    v7 = 0;
    return v7 & 1;
  }

  if ((sub_1A2112CF0(*(a1 + 16), *(a2 + 16)) & 1) == 0 || !sub_1A210E438(*(a1 + 24), *(a2 + 24)) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 96) ^ *(a2 + 96) ^ 1;
  return v7 & 1;
}

id sub_1A21136C4(double a1, double a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for RoutePickerSessionsView();
  v19.receiver = v2;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, sel_contentSize);
  v8 = v7;
  v10 = v9;
  v18.receiver = v2;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, sel_setContentSize_, a1, a2);
  result = [v2 contentSize];
  if (v13 != v8 || v12 != v10)
  {
    result = (*((*v5 & *v2) + 0x180))(result);
    if (result)
    {
      v16 = v15;
      ObjectType = swift_getObjectType();
      [v2 contentSize];
      (*(v16 + 24))(v2, ObjectType, v16);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_1A2113980@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls6Slider_style;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void sub_1A21139E0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    v6 = *&v4[OBJC_IVAR____TtC13MediaControls6Slider_configuration];
    [v6 setExpansionFactor_];
    [v6 setStretchLimit_];
    [v4 _setSliderConfiguration_];
  }

  free(v3);
}

void (*sub_1A2113A7C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls6Slider_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A21139E0;
}

void *sub_1A2113B04(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_state] = 0;
  v9 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider;
  type metadata accessor for RoutePickerItemSlider();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_viewModel;
  v11 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_postInteractionUpdateDelay;
  *&v4[v12] = sub_1A22549D8();
  v13 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_lastInteractionDate;
  v14 = sub_1A22E55A8();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_updateViewModelTimer] = 0;
  v39.receiver = v4;
  v39.super_class = type metadata accessor for RoutePickerItemVolumeControl(0);
  v15 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 layer];
  v17 = [v15 traitCollection];
  [v17 displayScale];
  v19 = v18;

  [v16 setBorderWidth_];
  sub_1A225CA7C();
  v20 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider;
  v21 = *(v15 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider);
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v21) + 0xB8);
  v24 = v21;
  v23(v15, &off_1F143E390);

  v25 = *(v15 + v20);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 accessibilityVolumeLabel];
  if (!v28)
  {
    sub_1A22E65C8();
    v28 = sub_1A22E6598();
  }

  [v27 setAccessibilityLabel_];

  [v15 addSubview_];
  v29 = sub_1A2113F38();
  v30 = *(v15 + v20);
  v31 = *(**v29 + 144);

  v32 = v30;
  v31();

  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A2308E80;
  v34 = sub_1A22E62F8();
  v35 = MEMORY[0x1E69DC198];
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  MEMORY[0x1A58DAE60](v33, sel_updateVisualStyling);
  swift_unknownObjectRelease();

  sub_1A224D434(0);
  sub_1A224DBEC();
  v36 = (*((*v22 & *v15) + 0x88))();
  v37 = 0.0;
  if ((v36 & 0xFE) != 0)
  {
    v37 = 1.0;
  }

  [*(v15 + v20) setAlpha_];

  return v15;
}

uint64_t *sub_1A2113F38()
{
  if (qword_1ED951688 != -1)
  {
    swift_once();
  }

  return &qword_1ED953158;
}

uint64_t sub_1A2113FAC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *(**a2 + 160);

  v2(&v6, v3);

  return v6;
}

uint64_t (*sub_1A2114038(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A210DAEC();
  return sub_1A21148CC;
}

uint64_t sub_1A2114080(void *a1, uint64_t a2)
{
  result = sub_1A2113F88();
  if (result)
  {
    v6 = *(**(v2 + 16) + 120);

    v8 = v6(v7);

    v9 = *(v8 + 16) + 1;
    v10 = 32;
    while (--v9)
    {
      v11 = *(v8 + v10);
      v10 += 16;
      if (v11 == a1)
      {
      }
    }

    v12 = *(**(v2 + 16) + 136);

    v13 = v12(v27);
    v15 = v14;
    v16 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1A2114798(0, v16[2] + 1, 1, v16);
      *v15 = v16;
    }

    v18 = v16[2];
    v19 = v16[3];
    v20 = v18 + 1;
    if (v18 >= v19 >> 1)
    {
      v26 = v18 + 1;
      v23 = v16;
      v24 = v16[2];
      v25 = sub_1A2114798((v19 > 1), v18 + 1, 1, v23);
      v18 = v24;
      v20 = v26;
      v16 = v25;
      *v15 = v25;
    }

    v16[2] = v20;
    v21 = &v16[2 * v18];
    v21[4] = a1;
    v21[5] = a2;
    v22 = a1;
    v13(v27, 0);
  }

  return result;
}

uint64_t sub_1A2114244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeakReference();
  (*(v6 + 16))(v8, a1, a2);
  result = sub_1A2114324(v8);
  *a3 = result;
  return result;
}

uint64_t sub_1A2114324(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1A2114A3C(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1A21143A4()
{
  sub_1A22E6D68();
  swift_dynamicCast();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A2114434()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = sub_1A22E55A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_lastInteractionDate;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v12, v7, &qword_1EB088F68);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A210D9B0(v7, &qword_1EB088F68);
LABEL_5:
    sub_1A2214CF8(v1 + v12, v5, &qword_1EB088F68);
    v16 = v13(v5, 1, v8) == 1;
    sub_1A210D9B0(v5, &qword_1EB088F68);
    return v16;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1A22E5578();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (v15 >= -*(v1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_postInteractionUpdateDelay))
  {
    goto LABEL_5;
  }

  return 1;
}

id sub_1A21146A4(void *a1, double a2)
{
  v4 = *MEMORY[0x1E69DB990];
  type metadata accessor for Weight(0);
  v11 = v5;
  v10[0] = a2;
  sub_1A210E174(v10, v9);
  v6 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A2114E58(v9, v4, isUniquelyReferenced_nonNull_native);
  return v6;
}

void *sub_1A2114798(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A21148CC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1A2114924(*a1);
  }

  sub_1A2114924(v2);
}

uint64_t sub_1A2114924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v10[5] = a1;
  v10[2] = *(v3 + 80);
  v4 = sub_1A22E67D8();
  v5 = type metadata accessor for WeakReference();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1A210DD08(sub_1A2114A10, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  v2[2] = v8;
}

uint64_t sub_1A2114A3C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1A22E6D68();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  v7 = *(v3 - 8);
  (*(v7 + 16))(v6, a1, v3);
  (*(v7 + 56))(v6, 0, 1, v3);
  (*(*v1 + 128))(v6);
  return v1;
}

uint64_t sub_1A2114B6C()
{
  sub_1A210DA3C(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

char *sub_1A2114BA4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state] = 0;
  v9 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  v10 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_isHighlighted] = 0;
  v11 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView;
  type metadata accessor for RoutePickerItemBackgroundView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView;
  type metadata accessor for RoutePickerItemVolumeControl(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_contentView;
  type metadata accessor for RoutePickerItemContentView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = &v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_rubberbandInsets];
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  *v15 = *MEMORY[0x1E69DDCE0];
  v15[1] = v16;
  *&v4[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView____lazy_storage___numberFormatter] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for RoutePickerItemView(0);
  v17 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView;
  v19 = *&v17[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_backgroundView];
  v20 = v17;
  v21 = v19;
  sub_1A225CA7C();

  [v20 addSubview_];
  v22 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView;
  v23 = *&v20[OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_volumeControlView];
  v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0xC0);
  v25 = v23;
  v24(v20, &off_1F143FC78);

  [v20 addSubview_];
  [v20 addSubview_];
  sub_1A226D5B8();
  sub_1A226EA4C();

  return v20;
}

id sub_1A2114DFC()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v2;
}

_OWORD *sub_1A2114E58(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A210E184(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1A2268080();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1A2114F98(v13, a3 & 1);
    v8 = sub_1A210E184(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for TraitKey(0);
      result = sub_1A22E7208();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1A210E174(a1, v19);
  }

  else
  {
    sub_1A2119F58(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1A2114F98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089320);
  v35 = a2;
  result = sub_1A22E7058();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1A210E174(v22, v36);
      }

      else
      {
        sub_1A21033A8(v22, v36);
        v23 = v21;
      }

      sub_1A22E65C8();
      sub_1A22E72A8();
      sub_1A22E6658();
      v24 = sub_1A22E72F8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1A210E174(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A2115288(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1A21152D0()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state);
  swift_beginAccess();
  if (v1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (v1[2] << 16) | (v1[1] << 8) | *v1;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC13MediaControlsE19AnimationParametersV0D4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1A2115360(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088BD8);
  swift_beginAccess();
  sub_1A21165D0(a1, v1 + v6);
  swift_endAccess();
  sub_1A211546C(v5);
  sub_1A210D9B0(a1, &qword_1EB088BD8);
  return sub_1A210D9B0(v5, &qword_1EB088BD8);
}

id sub_1A211546C(uint64_t a1)
{
  v19 = a1;
  v2 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895B0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_viewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1A2214CF8(v1 + v13, v12, &qword_1EB088BD8);
  sub_1A2214CF8(v19, &v12[v14], &qword_1EB088BD8);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1A210D9B0(v12, &qword_1EB088BD8);
    }

    goto LABEL_6;
  }

  sub_1A2214CF8(v12, v8, &qword_1EB088BD8);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1A210D854(v8);
LABEL_6:
    result = sub_1A210D9B0(v12, &qword_1EB0895B0);
LABEL_7:
    v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(result);
    sub_1A228F148(v17 & 1);
    sub_1A228E8D8();
    sub_1A228F584();
    sub_1A228F70C();
    sub_1A228E500();
    return [v1 setNeedsLayout];
  }

  sub_1A210CF84(&v12[v14], v5);
  v18 = sub_1A210CFE8(v8, v5);
  sub_1A210D854(v5);
  sub_1A210D854(v8);
  result = sub_1A210D9B0(v12, &qword_1EB088BD8);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A21157E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v3, v5, &qword_1EB088860);
  swift_beginAccess();
  sub_1A21158A8(a1, v1 + v3);
  swift_endAccess();
  sub_1A2115918(v5);
  sub_1A210D9B0(a1, &qword_1EB088860);
  return sub_1A210D9B0(v5, &qword_1EB088860);
}

uint64_t sub_1A21158A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088860);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A2115918(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton);
  v5 = v2 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel;
  swift_beginAccess();
  if (*(v5 + 376))
  {
    sub_1A2214CF8(v5, &v15, &qword_1EB088850);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA8))(&v15);
  v7 = *(v2 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton);
  if (*(v5 + 376))
  {
    sub_1A211637C(v5 + 192, &v15);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  (*((*v6 & *v7) + 0xA8))(&v15);
  v8 = *(v2 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton);
  if (*(v5 + 376))
  {
    sub_1A211637C(v5 + 384, &v15);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  (*((*v6 & *v8) + 0xA8))(&v15);
  v9 = *(v2 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton);
  if (*(v5 + 376))
  {
    sub_1A211637C(v5 + 576, &v15);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  (*((*v6 & *v9) + 0xA8))(&v15);
  sub_1A2214CF8(a1, &v15, &qword_1EB088860);
  if (*(&v28 + 1))
  {
    sub_1A2214CF8(&v15, v29, &qword_1EB088850);
    sub_1A2220B28(&v15);
    if (*(v5 + 376))
    {
LABEL_15:
      sub_1A2214CF8(v5, v14, &qword_1EB088850);
      goto LABEL_18;
    }
  }

  else
  {
    sub_1A210D9B0(&v15, &qword_1EB088860);
    memset(v29, 0, sizeof(v29));
    if (*(v5 + 376))
    {
      goto LABEL_15;
    }
  }

  memset(v14, 0, sizeof(v14));
LABEL_18:
  sub_1A2214CF8(v29, &v15, &qword_1EB088850);
  sub_1A2214CF8(v14, v27, &qword_1EB088850);
  if (!*(&v26 + 1))
  {
    sub_1A210D9B0(v14, &qword_1EB088850);
    sub_1A210D9B0(v29, &qword_1EB088850);
    if (!*(&v28 + 1))
    {
      return sub_1A210D9B0(&v15, &qword_1EB088850);
    }

    goto LABEL_25;
  }

  sub_1A2214CF8(&v15, v13, &qword_1EB088850);
  if (!*(&v28 + 1))
  {
    sub_1A210D9B0(v14, &qword_1EB088850);
    sub_1A210D9B0(v29, &qword_1EB088850);
    sub_1A211830C(v13);
LABEL_25:
    result = sub_1A210D9B0(&v15, &qword_1EB0888D8);
    goto LABEL_26;
  }

  v12[8] = v27[8];
  v12[9] = v27[9];
  v12[10] = v27[10];
  v12[11] = v28;
  v12[4] = v27[4];
  v12[5] = v27[5];
  v12[6] = v27[6];
  v12[7] = v27[7];
  v12[0] = v27[0];
  v12[1] = v27[1];
  v12[2] = v27[2];
  v12[3] = v27[3];
  sub_1A2220AD4();
  v10 = sub_1A22E6568();
  sub_1A211830C(v12);
  sub_1A210D9B0(v14, &qword_1EB088850);
  sub_1A210D9B0(v29, &qword_1EB088850);
  sub_1A211830C(v13);
  result = sub_1A210D9B0(&v15, &qword_1EB088850);
  if ((v10 & 1) == 0)
  {
LABEL_26:
    (*((*v6 & *v2) + 0x140))(result);
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1A2115E0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v3, v5, &qword_1EB088850);
  swift_beginAccess();
  sub_1A2115EDC(a1, v1 + v3, &qword_1EB088850);
  swift_endAccess();
  sub_1A2115F44(v5);
  sub_1A210D9B0(a1, &qword_1EB088850);
  return sub_1A210D9B0(v5, &qword_1EB088850);
}

uint64_t sub_1A2115EDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

id sub_1A2115F44(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC13MediaControls15TransportButton_viewModel];
  swift_beginAccess();
  sub_1A2214CF8(v4, v28, &qword_1EB088850);
  sub_1A2214CF8(a1, v30, &qword_1EB088850);
  if (v29)
  {
    if (v31)
    {
      sub_1A210D9B0(v30, &qword_1EB088850);
      v5 = &qword_1EB088850;
      goto LABEL_6;
    }
  }

  else if (!v31)
  {
    return sub_1A210D9B0(v28, &qword_1EB088850);
  }

  v5 = &qword_1EB0888D8;
LABEL_6:
  sub_1A210D9B0(v28, v5);
  if (*(v4 + 184))
  {
    v6 = *(v4 + 128);
    v32[2] = *(v4 + 112);
    v32[3] = v6;
    v7 = *(v4 + 160);
    v32[4] = *(v4 + 144);
    v32[5] = v7;
    v8 = *(v4 + 96);
    v32[0] = *(v4 + 80);
    v32[1] = v8;
    if (*(&v6 + 1))
    {
      v9 = *&v2[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
      v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x98);
      sub_1A2214CF8(v32, v28, &qword_1EB088B18);
      sub_1A2214CF8(v32, v28, &qword_1EB088B18);
      v11 = v9;
      v10(v32);

      [v2 setImage:0 forState:0];
      v12 = sub_1A22E6598();
      [v2 setAccessibilityLabel_];

      sub_1A210D9B0(v32, &qword_1EB088B18);
      if (!*(v4 + 184))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = *&v2[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x98);

      v18 = v16;
      v17(&v33);

      v19 = sub_1A22E6598();

      v20 = [objc_opt_self() systemImageNamed_];

      [v2 setImage:v20 forState:0];
      if (!*(v4 + 184))
      {
LABEL_16:
        v23 = 0;
        return [v2 setEnabled_];
      }
    }
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC13MediaControls15TransportButton_packageView];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x98);
    v15 = v13;
    v14(&v33);

    [v2 setImage:0 forState:0];
    if (!*(v4 + 184))
    {
      goto LABEL_16;
    }
  }

  sub_1A211637C(v4, v28);
  sub_1A2214CF8(v28, v25, &qword_1EB0888D0);
  v21 = v26;
  if (!v26)
  {
    sub_1A211830C(v28);
    sub_1A210D9B0(v25, &qword_1EB0888D0);
    goto LABEL_16;
  }

  v22 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v23 = (*(v22 + 24))(v21, v22);
  sub_1A211830C(v28);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return [v2 setEnabled_];
}

uint64_t get_enum_tag_for_layout_string_13MediaControls12PackageAssetVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A21163F0(uint64_t *a1, int a2)
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

uint64_t sub_1A211644C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SessionHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A21165D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2116678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088838);
}

uint64_t sub_1A21166F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void (*sub_1A21167B0(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  return sub_1A2116858;
}

void sub_1A2116858(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 3) + *(*a1 + 4));
  v4 = (*a1)[40];
  v5 = (*a1)[41];
  v6 = v2[42];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  if (a2)
  {
    if (((v4 ^ v7) & 1) != 0 || !sub_1A2229988(v5, v8) || v6 != v9)
    {
      goto LABEL_7;
    }
  }

  else if ((v4 ^ v7) & 1) != 0 || !sub_1A2229988(v5, v8) || ((v6 ^ v9))
  {
LABEL_7:
    if (v9)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }

    sub_1A22C59B4(v10 | (v8 << 8) | v7);
  }

  free(v2);
}

uint64_t sub_1A211697C(__int128 *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13MediaControls11PackageView_asset];
  result = swift_beginAccess();
  if (*(v4 + 7))
  {
    v7 = *(v4 + 8);
    v6 = *(v4 + 9);
    v8 = a1 + 4;
    v9 = *(a1 + 7);

    if (!v9)
    {
      v9 = 0;
      LOBYTE(v10) = 1;
      if (!v6)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    v9 = *(a1 + 7);
    v8 = a1 + 4;
    if (!v9)
    {
      LOBYTE(v10) = 1;
      v9 = 0;
      goto LABEL_16;
    }

    v7 = 0;
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 9);

  if (!v6)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    LOBYTE(v10) = 0;
    goto LABEL_14;
  }

  *&v54 = v7;
  *(&v54 + 1) = v6;
  if (!v10)
  {
LABEL_11:

    goto LABEL_14;
  }

  *&v46 = v11;
  *(&v46 + 1) = v10;
  sub_1A222DA9C();
  v12 = sub_1A22E6568();

  LOBYTE(v10) = 0;
  if ((v12 & 1) == 0)
  {
LABEL_14:
    sub_1A222BB18();
    goto LABEL_19;
  }

LABEL_16:
  v13 = *(v4 + 1);
  v54 = *v4;
  v55 = v13;
  v14 = *(v4 + 3);
  v56 = *(v4 + 2);
  v57 = v14;
  v15 = *(v4 + 5);
  v58 = *(v4 + 4);
  v59 = v15;
  if (*(&v57 + 1))
  {
    if ((BYTE11(v56) & 1) == 0)
    {
      return result;
    }

    v27 = BYTE10(v56);
    v89 = *(&v54 + 1);
    v90 = v55;
    v91 = v56;
    v92 = BYTE8(v56) & 1;
    sub_1A2214CF8(&v54, &v46, &qword_1EB088B18);
    sub_1A2116640();
    sub_1A2117098(&v89, v72);
    v16 = &v2[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
    v17 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 16];
    v46 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
    v47 = v17;
    *v48 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 32];
    *&v48[9] = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 41];
    v18 = v72[1];
    *v16 = v72[0];
    *(v16 + 1) = v18;
    *(v16 + 2) = v73[0];
    *(v16 + 41) = *(v73 + 9);
    sub_1A21174DC(v72, &v37);
    sub_1A210D9B0(&v46, &qword_1EB088B58);
    sub_1A212530C(v72, v27 & 1);
    sub_1A2117514(v72);
    sub_1A210D9B0(&v54, &qword_1EB088B18);
  }

LABEL_19:
  if (*(v4 + 7))
  {
    v19 = *(v4 + 1);
    v20 = *(v4 + 3);
    v30 = *(v4 + 2);
    v31 = v20;
    v21 = *(v4 + 5);
    v22 = *(v4 + 3);
    v32 = *(v4 + 4);
    v33 = v21;
    v87 = v32;
    v88 = v21;
    v85 = v30;
    v86 = v20;
    v23 = *(v4 + 1);
    v28 = *v4;
    v29 = v23;
    v83 = v28;
    v84 = v23;
    v37 = v28;
    v38 = v19;
    v24 = *(v4 + 5);
    v41 = v32;
    v42 = v24;
    v39 = v30;
    v40 = v22;
    sub_1A2116FC8(&v37, &v54);
    sub_1A210EF90(&v46);
    sub_1A210D9B0(&v28, &qword_1EB088B18);
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v54 = v46;
    v55 = v47;
    v56 = *v48;
    v57 = *&v48[16];
    sub_1A211733C(&v54);
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v63 = v54;
    v64 = v55;
  }

  else
  {
    sub_1A222DA7C(&v63);
  }

  v25 = v8[1];
  v74 = *v8;
  v75 = v25;
  if (v10)
  {
    sub_1A222DA7C(&v54);
  }

  else
  {
    v26 = a1[1];
    v76 = *a1;
    v77 = v26;
    v78 = a1[2];
    v79 = *(a1 + 6);
    v80 = v9;
    v81 = v74;
    v82 = v75;
    sub_1A210EF90(&v46);
    sub_1A211733C(&v46);
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v56 = *v48;
    v57 = *&v48[16];
    v58 = v49;
    v59 = v50;
    v54 = v46;
    v55 = v47;
  }

  v51 = v69;
  v52 = v70;
  v53 = v71;
  *v48 = v65;
  *&v48[16] = v66;
  v49 = v67;
  v50 = v68;
  v46 = v63;
  v47 = v64;
  if (sub_1A2116EA8(&v46) == 1)
  {
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v37 = v54;
    v38 = v55;
    result = sub_1A2116EA8(&v37);
    if (result == 1)
    {
      return result;
    }

    return [v2 setNeedsLayout];
  }

  v34 = v69;
  v35 = v70;
  v36 = v71;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v28 = v63;
  v29 = v64;
  v43 = v60;
  v44 = v61;
  v45 = v62;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v37 = v54;
  v38 = v55;
  if (sub_1A2116EA8(&v37) == 1)
  {
    return [v2 setNeedsLayout];
  }

  type metadata accessor for CATransform3D();
  sub_1A2117394(&qword_1ED94EAA0, type metadata accessor for CATransform3D);
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1A2116EA8(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2116EC4(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls11PackageView_asset);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[4];
  v6 = v3[5];
  v14 = v3[3];
  v15 = v5;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  v13[2] = v4;
  v17[4] = v5;
  v17[5] = v6;
  v17[2] = v4;
  v17[3] = v14;
  v16 = v6;
  v17[0] = v13[0];
  v17[1] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[3];
  v3[2] = a1[2];
  v3[3] = v9;
  v10 = a1[1];
  *v3 = *a1;
  v3[1] = v10;
  sub_1A2214CF8(v13, v12, &qword_1EB088B18);
  sub_1A2214CF8(a1, v12, &qword_1EB088B18);
  sub_1A210D9B0(v17, &qword_1EB088B18);
  sub_1A211697C(v13);
  sub_1A210D9B0(v13, &qword_1EB088B18);
  return sub_1A210D9B0(a1, &qword_1EB088B18);
}

BOOL sub_1A2117024(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _sSo13CATransform3DV13MediaControlsE2eeoiySbAB_ABtFZ_0(v13, v14);
}

double sub_1A2117098@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  if (a1[4])
  {
    if (!*(v4 + 16))
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_5;
    }

    v4 = *(v4 + 32);
  }

LABEL_5:
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *v11 = 0;
  v6 = *(a1 + 1);
  *&v11[8] = *a1;
  *&v11[24] = v6;
  v11[40] = *(a1 + 32);
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = 0;
  v13 = *&v11[8];
  v14 = v6;
  v15 = v11[40];
  sub_1A21174DC(&v10, &v9);
  sub_1A2117514(v12);
  v7 = *v11;
  *a2 = v10;
  a2[1] = v7;
  a2[2] = *&v11[16];
  result = *&v11[25];
  *(a2 + 41) = *&v11[25];
  return result;
}

unint64_t sub_1A211715C()
{
  result = qword_1ED94FD48;
  if (!qword_1ED94FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94FD48);
  }

  return result;
}

uint64_t sub_1A21171B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000706F745365;
  v3 = 0x7375615079616C50;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x4264726177726F46;
    }

    else
    {
      v5 = 0x7375615079616C50;
    }

    if (v4)
    {
      v6 = 0xEF647261776B6361;
    }

    else
    {
      v6 = 0xED0000706F745365;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1885956947;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x656D756C6F56;
    }

    else
    {
      v5 = 0x657469726F766146;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1885956947;
  v9 = 0xE600000000000000;
  v10 = 0x656D756C6F56;
  if (a2 != 3)
  {
    v10 = 0x657469726F766146;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x4264726177726F46;
    v2 = 0xEF647261776B6361;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A22E71E8();
  }

  return v13 & 1;
}

void type metadata accessor for CATransform3D()
{
  if (!qword_1ED94EA98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED94EA98);
    }
  }
}

uint64_t sub_1A2117394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2117544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A21175A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1A2117604(double *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(a1 + 3);
  if (*(a1 + 56) <= 1u)
  {
    v9 = a1[4];
    if (!*(a1 + 56))
    {
      sub_1A220C0E8();
      sub_1A22E6C68();
      return;
    }

    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[3];
    v19 = a2;
    v20 = a3;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1A210E3F0;
    v18 = &block_descriptor_29_0;
    v14 = _Block_copy(&v15);

    if (a4)
    {
      v19 = a4;
      v20 = a5;
      v15 = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_1A2262D4C;
      v18 = &block_descriptor_32;
      a4 = _Block_copy(&v15);
    }

    [objc_opt_self() _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
    goto LABEL_14;
  }

  if (*(a1 + 56) != 2)
  {
    v19 = a2;
    v20 = a3;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1A210E3F0;
    v18 = &block_descriptor_35;
    v14 = _Block_copy(&v15);

    if (a4)
    {
      v19 = a4;
      v20 = a5;
      v15 = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_1A229CA38;
      v18 = &block_descriptor_38_0;
      a4 = _Block_copy(&v15);
    }

    [objc_opt_self() animateWithDuration:*(a1 + 2) delay:v14 options:a4 animations:*a1 completion:a1[1]];
LABEL_14:
    _Block_release(a4);
    _Block_release(v14);
    return;
  }

  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A210E3F0;
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);

  sub_1A211A3BC(a1, &v15);

  if (a4)
  {
    v19 = a4;
    v20 = a5;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1A229CA38;
    v18 = &block_descriptor_26;
    a4 = _Block_copy(&v15);
  }

  [objc_opt_self() transitionWithView:v8 duration:*(a1 + 2) options:v10 animations:a4 completion:*a1];
  _Block_release(a4);
  _Block_release(v10);
  sub_1A2116928(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1A2117A40()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v10);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton);
  if (!LOBYTE(v10[0]))
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton);
    (*((*v1 & *v0) + 0xA0))(v7);
    if (v7[47])
    {
      sub_1A2214CF8(v7, v8, &qword_1EB088850);
      sub_1A210D9B0(v7, &qword_1EB088860);
      v4 = 0.5;
      if (*(&v9 + 1))
      {
LABEL_13:
        sub_1A210D9B0(v8, &qword_1EB088850);
        [v3 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton) setAlpha_];
        return [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton) setAlpha_];
      }
    }

    else
    {
      sub_1A210D9B0(v7, &qword_1EB088860);
      memset(v8, 0, sizeof(v8));
      v9 = 0u;
    }

    v4 = 0.0;
    goto LABEL_13;
  }

  if (LOBYTE(v10[0]) == 1)
  {
    [v2 setAlpha_];
    [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setAlpha_];
  }

  else
  {
    [v2 setAlpha_];
    [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setAlpha_];
  }

  [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton) setAlpha_];
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton);

  return [v5 setAlpha_];
}

uint64_t sub_1A2117C94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088860);
}

uint64_t sub_1A2117CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2117D6C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v6 = v3 == *a2 && *(a1 + 8) == *(a2 + 8);
      if (v6 || (sub_1A22E71E8()) && (sub_1A22E7338())
      {
        return 1;
      }
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  v4 = *a2;

  return sub_1A227896C(v3, v4);
}

uint64_t sub_1A2117EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 760) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 768) = 1;
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
      *(result + 376) = (a2 - 1);
      return result;
    }

    *(result + 768) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A2117FA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1A2117FEC(uint64_t a1)
{
  v3 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C00);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1A2214CF8(v1 + v13, v12, &qword_1EB088820);
  sub_1A2214CF8(a1, &v12[v14], &qword_1EB088820);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1A210D9B0(v12, &qword_1EB088820);
    }

    goto LABEL_6;
  }

  sub_1A2214CF8(v12, v8, &qword_1EB088820);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_1A2232F64(v8, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
LABEL_6:
    sub_1A210D9B0(v12, &qword_1EB088C00);
LABEL_7:
    sub_1A210B9F8();
    return sub_1A21194E8();
  }

  v17 = v19;
  sub_1A2129A30(&v12[v14], v19, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
  sub_1A21303E8();
  v18 = sub_1A22E6568();
  sub_1A2232F64(v17, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
  sub_1A2232F64(v8, type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel);
  result = sub_1A210D9B0(v12, &qword_1EB088820);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_1A2118408(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TransportButton();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1A2118448(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  swift_beginAccess();
  sub_1A2117CFC(v1 + v6, v5);
  swift_beginAccess();
  sub_1A211854C(a1, v1 + v6);
  swift_endAccess();
  sub_1A21185BC(v5);
  sub_1A210D9B0(a1, &qword_1EB088828);
  return sub_1A210D9B0(v5, &qword_1EB088828);
}

uint64_t sub_1A211854C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A21185BC(uint64_t a1)
{
  v3 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891D0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1A2117CFC(v1 + v14, v13);
  sub_1A2117CFC(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1A210D9B0(v13, &qword_1EB088828);
    }

    goto LABEL_6;
  }

  sub_1A2117CFC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    sub_1A221CE2C(v9);
LABEL_6:
    result = sub_1A210D9B0(v13, &qword_1EB0891D0);
LABEL_7:
    v18 = MEMORY[0x1E69E7D40];
    v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(result);
    v20 = (*((*v18 & *v1) + 0x138))(v19 & 1);
    return (*((*v18 & *v1) + 0x140))(v20);
  }

  sub_1A22674B8(&v13[v15], v6);
  v21 = sub_1A2266BCC(v9, v6);
  sub_1A221CE2C(v6);
  sub_1A221CE2C(v9);
  result = sub_1A210D9B0(v13, &qword_1EB088828);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A2118920(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider);
  result = [v9 isTracking];
  if ((result & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
    v11 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
    if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
    {
      sub_1A2117CFC(v8, v6);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        LODWORD(v12) = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0) + 48)];
        [v9 setValue:a1 & 1 animated:v12];
        v13 = sub_1A22E5D98();
        (*(*(v13 - 8) + 8))(v6, v13);
        return sub_1A210D9B0(v8, &qword_1EB088828);
      }

      sub_1A221CE2C(v6);
    }

    [v9 setValue:a1 & 1 animated:0.0];
    return sub_1A210D9B0(v8, &qword_1EB088828);
  }

  return result;
}

uint64_t sub_1A2118B28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_viewModel;
  swift_beginAccess();
  return sub_1A2117CFC(v1 + v3, a1);
}

id sub_1A2118B80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v2);
  v5 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider);
    [v6 setAlpha_];
    [v6 setEnabled_];
    v7 = *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper);
    [v7 setAlpha_];
    return [v7 setEnabled_];
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider);
    if (EnumCaseMultiPayload == 1)
    {
      [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) setAlpha_];
      [v10 setEnabled_];
      v11 = *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper);
      [v11 setAlpha_];
      [v11 setEnabled_];
      v12 = sub_1A22E5DD8();
    }

    else
    {
      [*(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) setAlpha_];
      [v10 setEnabled_];
      v13 = *(v0 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_stepper);
      [v13 setAlpha_];
      [v13 setEnabled_];
      v12 = sub_1A22E5D98();
    }

    return (*(*(v12 - 8) + 8))(v4, v12);
  }
}

uint64_t sub_1A2118E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_1A2118F38(v10, v11, v12, v13);
  return sub_1A221467C(v10, v11);
}

uint64_t sub_1A2118F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel);
  result = swift_beginAccess();
  v12 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  if (!v11)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!a2)
  {
LABEL_17:
    sub_1A2117FA8(a1, a2);
    sub_1A2117FA8(v12, v11);
    sub_1A221467C(v12, v11);
    v18 = a1;
    v19 = a2;
LABEL_18:
    sub_1A221467C(v18, v19);
    return sub_1A21191AC();
  }

  if (v12 != a1 || v11 != a2)
  {
    result = sub_1A22E71E8();
    if ((result & 1) == 0)
    {
LABEL_22:
      sub_1A2117FA8(a1, a2);
      sub_1A2117FA8(v12, v11);

      v18 = v12;
      v19 = v11;
      goto LABEL_18;
    }
  }

  if (!v14)
  {
    if (!a4)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (!a4)
  {
    return sub_1A21191AC();
  }

  if (v13 == a3 && v14 == a4)
  {
    sub_1A2117FA8(a1, a2);
    sub_1A2117FA8(v12, v11);

    return sub_1A221467C(v12, v11);
  }

  v17 = sub_1A22E71E8();
  sub_1A2117FA8(a1, a2);
  sub_1A2117FA8(v12, v11);

  result = sub_1A221467C(v12, v11);
  if ((v17 & 1) == 0)
  {
    return sub_1A21191AC();
  }

  return result;
}

id sub_1A21191AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v4 = v3();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    sub_1A221467C(v6, v7);
    v8 = sub_1A22DC57C();
  }

  else
  {
    v8 = 0;
  }

  [v2 setImage_];

  v9 = *&v1[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label];
  v3();
  if (!v12)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v13 = v10;
  v14 = v11;
  v15 = [v1 traitCollection];
  v16 = sub_1A22DC57C();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1A22421C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1A22421C0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[24 * v20];
    *(v21 + 4) = v17;
    *(v21 + 5) = 0;
    v21[48] = 1;
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
LABEL_12:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A22421C0(0, *(v18 + 2) + 1, 1, v18);
    }

    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1A22421C0((v23 > 1), v24 + 1, 1, v18);
    }

    *(v18 + 2) = v24 + 1;
    v25 = &v18[24 * v24];
    *(v25 + 4) = v13;
    *(v25 + 5) = v14;
    v25[48] = 0;
  }

LABEL_17:
  sub_1A2115288(0, &qword_1ED94EA38);
  v22 = sub_1A220C2D8(v18, 32, 0xE100000000000000, v15);

LABEL_18:
  [v9 setAttributedText_];

  return [v1 setNeedsLayout];
}

uint64_t sub_1A2119470()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_viewModel);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2117FA8(*v1, v1[1]);
  return v2;
}

id sub_1A21194E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-v3];
  sub_1A2119B70();
  v6 = v5;
  sub_1A2119D98();
  v8 = v7;
  v9 = [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_backdropView) alpha];
  if (v10 != v8)
  {
    sub_1A220C0E8();
    sub_1A211A390(v24);
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v8;
    v12 = v0;
    sub_1A21179EC(v24, sub_1A2232F44, v11, 0, 0);

    v9 = sub_1A2116928(v24);
  }

  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x160))(v9);
  v15 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
  if (v14 <= 4u)
  {
    if (v14 <= 1u)
    {
      [v15 setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
      v20 = 0.0;
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
    }

    else
    {
      if (v14 != 2)
      {
        if (v14 == 3)
        {
          [v15 setAlpha_];
          [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
        }

        else
        {
          [v15 setAlpha_];
          [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
        }

        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
        goto LABEL_23;
      }

      [v15 setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
      v20 = 0.0;
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
    }

    v21 = v6;
    v6 = 0.0;
  }

  else
  {
    if (v14 <= 7u)
    {
      if (v14 != 5)
      {
        if (v14 == 6)
        {
          [v15 setAlpha_];
          [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
          v16 = 0.0;
          [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
          v17 = [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
          v18 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
          (*((*v13 & *v0) + 0x100))(v17);
          v19 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
          if ((*(*(v19 - 8) + 48))(v4, 1, v19))
          {
            sub_1A210D9B0(v4, &qword_1EB088820);
          }

          else
          {
            v22 = v4[*(v19 + 44)];
            sub_1A210D9B0(v4, &qword_1EB088820);
            if (v22)
            {
              v16 = 1.0;
            }

            else
            {
              v16 = 0.0;
            }
          }

          [v18 setAlpha_];
          goto LABEL_30;
        }

LABEL_16:
        [v15 setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
LABEL_30:
        v21 = 0.0;
        v6 = 0.0;
        goto LABEL_31;
      }

      v6 = 1.0;
      [v15 setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
LABEL_23:
      v21 = 0.0;
LABEL_31:
      v20 = 0.0;
      goto LABEL_32;
    }

    if (v14 == 8)
    {
      goto LABEL_16;
    }

    if (v14 == 9)
    {
      [v15 setAlpha_];
      v6 = 1.0;
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
    }

    else
    {
      [v15 setAlpha_];
      v6 = 1.0;
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView) setAlpha_];
    }

    [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView) setAlpha_];
    [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) setAlpha_];
    v21 = 0.0;
    v20 = 1.0;
  }

LABEL_32:
  [*(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton) setAlpha_];
  return [*(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView) setAlpha_];
}

uint64_t sub_1A2119B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2119B70()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
  result = v2();
  if (result)
  {
    if ((v2)(1.0))
    {
      v4 = (*((*v1 & *v0) + 0x148))();
      v5 = (*((*v1 & *v0) + 0x190))();
      v6 = sub_1A2113050();
      sub_1A211313C(v5, v6 & 1, v4);

      [v0 bounds];
      CGRectGetWidth(v7);
      [v0 bounds];
      CGRectGetHeight(v8);
    }

    return (*((*v1 & *v0) + 0x148))();
  }

  return result;
}

void sub_1A2119D98()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
  if (v2() & 1) != 0 && ((v2)(0.0))
  {
    v3 = (*((*v1 & *v0) + 0x148))();
    v4 = (*((*v1 & *v0) + 0x190))();
    v5 = sub_1A2113050();
    sub_1A211313C(v4, v5 & 1, v3);

    [v0 bounds];
    CGRectGetWidth(v6);
    [v0 bounds];
    CGRectGetHeight(v7);
  }
}

_OWORD *sub_1A2119F58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A210E174(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1A2119FE0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A211A04C(char a1)
{
  CGAffineTransformMakeScale(&v23, 0.8, 0.8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = *&v23.c;
  *(v3 + 24) = *&v23.a;
  *(v3 + 40) = v4;
  *(v3 + 56) = *&v23.tx;
  if (a1)
  {
    sub_1A2115288(0, &qword_1ED94E980);
    v5 = v1;
    sub_1A211A390(v18);
    sub_1A21179EC(v18, sub_1A22B504C, v3, 0, 0);
    sub_1A2116928(v18);
  }

  else
  {
    sub_1A22B49C8(v1, &v23);
  }

  sub_1A211A390(v19);
  sub_1A211A328(v20, 0.066);
  sub_1A2116928(v19);
  sub_1A211A390(v21);
  sub_1A211A3F4(v22, 0.15);
  v6 = sub_1A2116928(v21);
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(v6);
  if (!v9)
  {
    sub_1A227040C(v7, v8, 0);
    sub_1A211A470(1, a1 & 1, v22);
    v10 = a1 & 1;
    v11 = v20;
    v12 = 0;
    goto LABEL_8;
  }

  if (v9 == 1)
  {
    sub_1A211A470(0, a1 & 1, v20);
    v10 = a1 & 1;
    v11 = v22;
    v12 = 1;
LABEL_8:
    sub_1A211A470(v12, v10, v11);
    v13 = (v1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator);
    v14 = &selRef_stopAnimating;
    goto LABEL_12;
  }

  v15 = v8;
  v16 = v7;
  sub_1A211A470(1, a1 & 1, v22);
  sub_1A211A470(1, a1 & 1, v22);
  v13 = (v1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemAccessoryView_activityIndicator);
  if (v16 | v15)
  {
    v14 = &selRef_startAnimating;
  }

  else
  {
    v14 = &selRef_stopAnimating;
  }

LABEL_12:
  [*v13 *v14];

  sub_1A2116928(v22);
  return sub_1A2116928(v20);
}

uint64_t sub_1A211A2F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

double sub_1A211A328@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = *(v2 + 32);
  v10 = *(v2 + 16);
  v11[0] = v6;
  *(v11 + 9) = *(v2 + 41);
  sub_1A211A3BC(v2, &v9);
  *a1 = v5;
  *(a1 + 8) = a2;
  v7 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  result = *(v11 + 9);
  *(a1 + 41) = *(v11 + 9);
  return result;
}

double sub_1A211A390@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A230E800;
  *(a1 + 16) = 4;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 3;
  return result;
}

double sub_1A211A3F4@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + 24);
  v9 = *(v2 + 8);
  v10 = v5;
  v11 = *(v2 + 40);
  v12 = *(v2 + 56);
  sub_1A211A3BC(v2, &v8);
  *a1 = a2;
  v6 = v10;
  *(a1 + 8) = v9;
  *(a1 + 24) = v6;
  result = *&v11;
  *(a1 + 40) = v11;
  *(a1 + 56) = v12;
  return result;
}

id sub_1A211A470(int a1, char a2, uint64_t a3)
{
  v6 = a1;
  if (a1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  if ((([v3 isHidden] ^ a1) & 1) != 0 || (result = objc_msgSend(v3, sel_alpha), v7 != v9))
  {
    if (a2)
    {
      if ((v6 & 1) == 0)
      {
        if ((*(a3 + 16) & 4) == 0)
        {
          [v3 setAlpha_];
        }

        [v3 setHidden_];
      }

      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = v7;
      v11 = swift_allocObject();
      *(v11 + 16) = v3;
      *(v11 + 24) = v7;
      *(v11 + 32) = v6 & 1;
      v12 = v3;
      sub_1A2117604(a3, sub_1A211A6A8, v10, sub_1A229C664, v11);
    }

    else
    {
      [v3 setAlpha_];

      return [v3 setHidden_];
    }
  }

  return result;
}

uint64_t sub_1A211A630()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A211A668()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1A211A6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  (*(*v3 + 384))(a1);
  return v3;
}

__n128 sub_1A211A728@<Q0>(uint64_t a1@<X8>)
{
  v3 = [v1 topAnchor];
  v4 = [v1 bottomAnchor];
  v5 = [v1 leadingAnchor];
  v6 = [v1 trailingAnchor];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  *(a1 + 32) = *MEMORY[0x1E69DDCE0];
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1A211A7DC(uint64_t a1, id a2)
{
  *&v8 = [a2 topAnchor];
  *(&v8 + 1) = [a2 bottomAnchor];
  *&v9 = [a2 leadingAnchor];
  *(&v9 + 1) = [a2 trailingAnchor];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = v4;
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v4;
  v5 = sub_1A211A8C8(a1, v7);
  sub_1A211A9FC(&v8);
  return v5;
}

uint64_t sub_1A211A8C8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A230A780;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  *(v4 + 32) = nullsub_1([*a1 constraintEqualToAnchor:*a2 constant:*(a1 + 32) + *(a2 + 32)], 0);
  *(v4 + 40) = v11;
  *(v4 + 48) = nullsub_1([*(a1 + 8) constraintEqualToAnchor:*(a2 + 8) constant:-(v7 + v10)], 0);
  *(v4 + 56) = v12;
  *(v4 + 64) = nullsub_1([*(a1 + 16) constraintEqualToAnchor:*(a2 + 16) constant:v5 + v8], 0);
  *(v4 + 72) = v13;
  *(v4 + 80) = nullsub_1([*(a1 + 24) constraintEqualToAnchor:*(a2 + 24) constant:-(v6 + v9)], 0);
  *(v4 + 88) = v14;
  return v4;
}

uint64_t sub_1A211AA90(void *a1, uint64_t a2)
{
  v2 = [a1 constraintEqualToAnchor:a2 constant:?];

  return nullsub_1(v2, 0);
}

uint64_t sub_1A211AAD4(void *a1, uint64_t a2)
{
  v2 = [a1 constraintEqualToAnchor_];

  return nullsub_1(v2, 0);
}

double sub_1A211AB18(void *a1, double a2)
{
  v2 = -a2;
  v3 = a1;
  return v2;
}

char *sub_1A211AB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_19:
    type metadata accessor for Constraints();
    v16 = swift_allocObject();
    *(v16 + 80) = v2;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    v17 = *(v4 + 2);
    if (v17)
    {
      v18 = v4 + 40;
      do
      {
        v20 = *(v18 - 1);
        if (*v18)
        {
          v22[0] = v16;
          v25 = v20;
          v19 = v20;

          swift_setAtReferenceWritableKeyPath();
        }

        else
        {
          swift_beginAccess();
          v21 = v20;
          MEMORY[0x1A58DA960]();
          if (*((*(v16 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v16 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A22E6768();
          }

          sub_1A22E67A8();
          swift_endAccess();
        }

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    return v16;
  }

  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1A223A220(v3, v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v8 = (*(v7 + 8))(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    v9 = *(v8 + 16);
    v10 = *(v4 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v4 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1A211ADF0(result, v12, 1, v4);
      v4 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v9)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v4 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_31;
          }

          *(v4 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_29;
    }

LABEL_4:
    v3 += 40;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

char *sub_1A211ADF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A211AEFC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A2308E80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = v2;
  return v3;
}

uint64_t sub_1A211AF98(char a1)
{
  v2 = *v1;
  if (a1)
  {
    return (*(v2 + 392))();
  }

  else
  {
    return (*(v2 + 400))();
  }
}

void sub_1A211AFE8(SEL *a1)
{
  v2 = objc_opt_self();
  sub_1A211B074();
  sub_1A21271B8();
  v3 = sub_1A22E6738();

  [v2 *a1];
}

uint64_t sub_1A211B074()
{
  v10[4] = (*(*v0 + 152))();
  v10[5] = (*(*v0 + 176))();
  v10[6] = (*(*v0 + 200))();
  v10[7] = (*(*v0 + 224))();
  v10[8] = (*(*v0 + 248))();
  v10[9] = (*(*v0 + 272))();
  v10[10] = (*(*v0 + 296))();
  result = (*(*v0 + 320))();
  v2 = 0;
  v10[11] = result;
  v3 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v2 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v2;
  }

  while (1)
  {
    if (v2 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A128);
      v7 = swift_arrayDestroy();
      v8 = (*(*v0 + 344))(v7);
      sub_1A2126E70(v8);
      return v3;
    }

    if (v4 == v2)
    {
      break;
    }

    v5 = v10[v2++ + 4];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1A58DA960]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A22E6768();
      }

      result = sub_1A22E67A8();
      v3 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A211B344(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13MediaControls17SessionController_isEligibleForHardwareVolumeControls;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  *(v1 + v8) = a1;
  if (v10 != v3)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      (*(*v1 + 152))();
      v12 = sub_1A22E59B8();
      v14 = v13;
      (*(v5 + 8))(v7, v4);
      (*(*v11 + 240))(a1 & 1, v12, v14);
    }
  }

  return result;
}

uint64_t sub_1A211B4D8()
{
  v1 = v0;
  v2 = sub_1A22E5C88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(**(v0 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 120);

  v8 = v6(v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = v5;
    v30 = v3;
    v31 = v2;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1A211B934(0, v9, 0);
    v10 = v32;
    v11 = (v8 + 40);
    do
    {
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, v12);
      swift_unknownObjectRelease();
      v32 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A211B934((v16 > 1), v17 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v17 + 1;
      *(v10 + v17 + 32) = v15 & 1;
      v11 += 2;
      --v9;
    }

    while (v9);

    v3 = v30;
    v2 = v31;
    v5 = v29;
    v19 = *(v10 + 16);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_20:

LABEL_21:
    v27 = 0;
    return (*(*v1 + 184))(v27 & 1);
  }

  v10 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_7:
  v20 = 0;
  v21 = 32;
  while ((v20 & 1) != 0)
  {
    if (v19 == 1)
    {

      goto LABEL_17;
    }

    v20 = 1;
LABEL_9:
    ++v21;
    if (!--v19)
    {
      __break(1u);
      return result;
    }
  }

  v20 = *(v10 + v21);
  if (v19 != 1)
  {
    goto LABEL_9;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  (*(*v1 + 152))(v22);
  v23 = sub_1A22E59B8();
  v25 = v24;
  (*(v3 + 8))(v5, v2);
  if (v23 == sub_1A22E59A8() && v25 == v26)
  {

    goto LABEL_20;
  }

  v28 = sub_1A22E71E8();

  v27 = v28 ^ 1;
  return (*(*v1 + 184))(v27 & 1);
}

char *sub_1A211B840(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A211B934(char *a1, int64_t a2, char a3)
{
  result = sub_1A211B840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A211B958()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1A22E5C88();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(**(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 152);
  v16 = v15(v12);
  v15(v16);
  v17 = *(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_waveformController);
  v18 = *(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_hapticController);
  v19 = v17;
  v20 = v18;
  sub_1A2284FEC(v8, v17, v18, v4);
  sub_1A2128C04(v10, v4, v14);
  return sub_1A2283CC8(v14);
}

uint64_t sub_1A211BB1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A211BB9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_viewModel);
  result = swift_beginAccess();
  v8 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a1)
  {
    if (v8)
    {

      if (sub_1A212669C(a1, v8))
      {
        v9 = sub_1A212669C(a2, v7);
        sub_1A211BC80(a1);
        if (v9)
        {
          return sub_1A211BC80(v8);
        }
      }

      else
      {
        sub_1A211BC80(a1);
      }
    }

LABEL_9:
    sub_1A2122FA4(1);
    return sub_1A211BC80(v8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1A211BC80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A211BCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A22E72A8();
  sub_1A22E6658();
  v6 = sub_1A22E72F8();
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
    if (v11 || (sub_1A22E71E8() & 1) != 0)
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

id sub_1A211BDB8()
{
  result = [v0 gestureRecognizers];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1A2115288(0, &unk_1ED94E9F0);
  v3 = sub_1A22E6748();

  v12 = MEMORY[0x1E69E7CC0];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_21:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

LABEL_20:
  v4 = sub_1A22E6DE8();
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A58DB0F0](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x1A58DA960]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A22E6768();
    }

    sub_1A22E67A8();
    v6 = v12;
  }

  while (v5 != v4);
LABEL_22:

  if (v6 >> 62)
  {
    result = sub_1A22E6DE8();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_29:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1A58DB0F0](0, v6);
    goto LABEL_27;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 32);
LABEL_27:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A211C034(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_controlInteractionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

uint64_t sub_1A211C094()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A211C0D8()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for PackageView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_contentView);
  [v0 bounds];
  v3 = [v2 setFrame_];
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v20, v3);
  if (*(&v21 + 1))
  {
    v26 = v20[2];
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v24 = v20[0];
    v25 = v20[1];
    sub_1A210EF90(&v30);
    sub_1A210D9B0(v20, &qword_1EB088B18);
  }

  else
  {
    v5 = *(MEMORY[0x1E69792E8] + 80);
    *&v30.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v30.m33 = v5;
    v6 = *(MEMORY[0x1E69792E8] + 112);
    *&v30.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v30.m43 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 16);
    *&v30.m11 = *MEMORY[0x1E69792E8];
    *&v30.m13 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 48);
    *&v30.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v30.m23 = v8;
  }

  v9 = OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer;
  v10 = *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer);
  if (v10)
  {
    v11 = v10;
    [v2 bounds];
    sub_1A22E6BC8();
    [v11 setPosition_];

    v12 = *(v1 + v9);
    if (v12)
    {
      v13 = *((*v4 & *v1) + 0xA8);
      v14 = v12;
      v15 = v13();
      v16 = v13();
      v18 = v30;
      CATransform3DScale(&v17, &v18, v15, v16, 1.0);
      [v14 setTransform_];
    }
  }
}

double sub_1A211C2E8@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls11PackageView_asset);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[4];
  v6 = v3[5];
  v17 = v3[3];
  v18 = v5;
  v19 = v6;
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = v4;
  sub_1A2214CF8(&v14, v13, &qword_1EB088B18);
  v8 = v17;
  v9 = v18;
  v10 = v15;
  a1[2] = v16;
  a1[3] = v8;
  v11 = v19;
  a1[4] = v9;
  a1[5] = v11;
  result = *&v14;
  *a1 = v14;
  a1[1] = v10;
  return result;
}