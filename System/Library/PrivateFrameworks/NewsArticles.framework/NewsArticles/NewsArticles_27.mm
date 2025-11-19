uint64_t sub_1D7C4B754(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 56))
  {
    sub_1D799CC84(a2 + 32, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 32))(a1, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t sub_1D7C4B7EC()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7A395E0(v0 + 32);
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D7C4B858()
{
  sub_1D7C4B7EC();

  return swift_deallocClassInstance();
}

void sub_1D7C4B8B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7C4B91C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7C4B96C()
{
  if (!qword_1EC9E1910)
  {
    sub_1D79DF824();
    v0 = sub_1D7D29FDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E1910);
    }
  }
}

uint64_t sub_1D7C4B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D799C618(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_1D7C4F6B0(a3, v23 - v11, &qword_1EE0BF1B0, v8);
  v13 = sub_1D7D3087C();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_1D7C4F730(v12, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D7D3086C();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D7D307DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_1D7D303BC() + 32;
      sub_1D79A9404();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D7C4F730(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D7C4F730(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  sub_1D79A9404();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D7C4BCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D799C618(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_1D7C4F6B0(a3, v23 - v11, &qword_1EE0BF1B0, v8);
  v13 = sub_1D7D3087C();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_1D7C4F730(v12, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D7D3086C();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D7D307DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      v19 = sub_1D7D303BC() + 32;
      sub_1D799C618(0, &qword_1EE0BB0B0, sub_1D79A9404, MEMORY[0x1E69E62F8]);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D7C4F730(v23[0], &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D7C4F730(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  sub_1D799C618(0, &qword_1EE0BB0B0, sub_1D79A9404, MEMORY[0x1E69E62F8]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D7C4C044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1D799C618(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_1D7C4F6B0(a3, v23 - v11, &qword_1EE0BF1B0, v8);
  v13 = sub_1D7D3087C();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_1D7C4F730(v12, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D7D3086C();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D7D307DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_1D7D303BC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D7C4F730(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D7C4F730(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D7C4C338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v119[2] = a3;
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v119[1] = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1D7D295CC();
  v8 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v9);
  v126 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799C618(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v119 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v119 - v21;
  v129 = type metadata accessor for ArticleViewerPage(0);
  v24 = MEMORY[0x1EEE9AC00](v129, v23);
  v134 = v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v133 = v119 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v128 = v119 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v137 = v119 - v34;
  v35 = *(a1 + 16);
  if (!v35)
  {
    v141 = MEMORY[0x1E69E7CC0];
    v39 = v129;
LABEL_43:
    v116 = sub_1D7C4F4C8(&qword_1EE0C9920);
    v117 = sub_1D7C4F4C8(&unk_1EE0C9940);
    MEMORY[0x1DA706A80](v141, v39, v116, v117);
    sub_1D7C4F4C8(&qword_1EE0C9930);
    return sub_1D7D29FBC();
  }

  v36 = (a1 + 32);
  v125 = *a2;
  v37 = a2[2];
  v124 = a2[1];
  v38 = a2[3];
  v142 = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_cache;
  v136 = (v33 + 56);
  v121 = v37 & 0xFFFFFFFFFFFFFFFELL;
  v120 = (v8 + 32);
  v141 = MEMORY[0x1E69E7CC0];
  v139 = v33;
  v143 = (v33 + 48);
  v119[3] = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_articleAccessMap;
  v39 = v129;
  v138 = v19;
  v132 = v15;
  v135 = v22;
  v123 = v37;
  v122 = v38;
  while (1)
  {
    v40 = v36[1];
    v147 = *v36;
    v148 = v40;
    v41 = v36[3];
    v149 = v36[2];
    v150 = v41;
    v42 = v147;
    v43 = v144;
    v44 = v142;
    swift_beginAccess();
    v45 = *(v43 + v44);
    v46 = v143 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (!*(v45 + 16))
    {
      break;
    }

    sub_1D79F5B54(&v147, v145);

    v47 = sub_1D7A18FFC(v42, *(&v42 + 1));
    if ((v48 & 1) == 0)
    {
      goto LABEL_9;
    }

    v49 = *(v45 + 56);
    v50 = v139;
    v51 = v128;
    sub_1D79F93E8(v49 + *(v139 + 72) * v47, v128);
    swift_endAccess();

    sub_1D7A0AD5C(&v147);
    v52 = v135;
    sub_1D7C4F400(v51, v135);
    (*(v50 + 56))(v52, 0, 1, v39);
    v53 = (*(v50 + 48))(v52, 1, v39);
LABEL_36:
    if (v53 == 1)
    {
      sub_1D7C4F730(v52, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C4F400(v52, v137);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_1D79E4460(0, v141[2] + 1, 1, v141);
      }

      v114 = v141[2];
      v113 = v141[3];
      if (v114 >= v113 >> 1)
      {
        v141 = sub_1D79E4460(v113 > 1, v114 + 1, 1, v141);
      }

      v115 = v141;
      v141[2] = v114 + 1;
      sub_1D7C4F400(v137, v115 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v114);
      v19 = v138;
    }

    v36 += 4;
    if (!--v35)
    {
      goto LABEL_43;
    }
  }

  sub_1D79F5B54(&v147, v145);

LABEL_9:
  swift_endAccess();
  v54 = v148;
  v55 = [v148 contentType];
  v140 = v42;
  if (v55 > 1)
  {
    if (v55 == 2)
    {
      v131 = v46;
      v63 = v144;
      v64 = sub_1D7D28A1C();
      __swift_project_boxed_opaque_existential_1((v63 + 24), *(v63 + 48));
      sub_1D7AD388C();
      v65 = v126;
      sub_1D7D2964C();
      v66 = sub_1D7C4DF30(v54);
      v68 = v67;
      v70 = v69;
      if (v121 == 0x1FFFFFFFELL)
      {
        v71 = v138;
        sub_1D79E14FC(v145, (v138 + 72));
        v72 = type metadata accessor for ArticleViewerArticlePage(0);
        (*v120)(&v71[v72[7]], v65, v127);
        type metadata accessor for ArticleNavigationAction();
        swift_storeEnumTagMultiPayload();
        v73 = v150;
        *(v71 + 2) = v149;
        *(v71 + 3) = v73;
        v74 = v148;
        *v71 = v147;
        *(v71 + 1) = v74;
        *(v71 + 8) = v64;
        v75 = &v71[v72[8]];
        *v75 = 0;
        *(v75 + 1) = 0;
        v76 = v72[10];
        v19 = v71;
        v77 = &v71[v76];
        *v77 = v66;
        *(v77 + 1) = v68;
        *(v77 + 2) = v70;
        v60 = v132;
        v78 = v125;
        v79 = v124;
        v80 = v123;
      }

      else
      {
        sub_1D799A6BC();
        v82 = *(v81 + 48);
        v83 = v65;
        v130 = v68;
        v84 = v138;
        v85 = &v138[v82];
        sub_1D79E14FC(v145, (v138 + 72));
        v86 = type metadata accessor for ArticleViewerArticlePage(0);
        (*v120)(&v84[v86[7]], v83, v127);
        type metadata accessor for ArticleNavigationAction();
        swift_storeEnumTagMultiPayload();
        v87 = v150;
        *(v84 + 2) = v149;
        *(v84 + 3) = v87;
        v88 = v148;
        *v84 = v147;
        *(v84 + 1) = v88;
        *(v84 + 8) = v64;
        v89 = &v84[v86[8]];
        *v89 = 0;
        *(v89 + 1) = 0;
        v90 = v86[10];
        v19 = v84;
        v91 = &v84[v90];
        v92 = v130;
        *v91 = v66;
        *(v91 + 1) = v92;
        *(v91 + 2) = v70;
        v78 = v125;
        v79 = v124;
        *v85 = v125;
        v85[1] = v79;
        v80 = v123;
        v93 = v122;
        v85[2] = v123;
        v85[3] = v93;
        v60 = v132;
      }

      v39 = v129;
      swift_storeEnumTagMultiPayload();
      (*v136)(v19, 0, 1, v39);
      sub_1D79F5B54(&v147, v145);
      sub_1D7A03D0C(v78, v79, v80);
      goto LABEL_22;
    }

LABEL_19:
    (*v136)(v19, 1, 1, v39);
    v60 = v132;
    goto LABEL_22;
  }

  if (v55 != 1)
  {
    goto LABEL_19;
  }

  if (qword_1EC9DFD90 != -1)
  {
    swift_once();
  }

  v56 = sub_1D7D29AFC();
  __swift_project_value_buffer(v56, qword_1ECA0BB30);
  v57 = sub_1D7D29ADC();
  v58 = sub_1D7D30C4C();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v132;
  if (v59)
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1D7987000, v57, v58, "Web content types should never make it to this point and should be handled earlier by a redirect.", v61, 2u);
    v62 = v61;
    v39 = v129;
    MEMORY[0x1DA7102E0](v62, -1, -1);
  }

  v19 = v138;
  (*v136)(v138, 1, 1, v39);
LABEL_22:
  sub_1D7C4F6B0(v19, v60, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  v94 = *v143;
  if ((*v143)(v60, 1, v39) == 1)
  {

    sub_1D7A0AD5C(&v147);
    sub_1D7C4F730(v60, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
LABEL_35:
    v52 = v135;
    sub_1D7C4F36C(v19, v135);
    v53 = v94(v52, 1, v39);
    goto LABEL_36;
  }

  v130 = v36;
  v131 = v35;
  v95 = v133;
  sub_1D7C4F400(v60, v133);
  v96 = v144;
  v97 = v142;
  swift_beginAccess();
  sub_1D79F93E8(v95, v134);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = *(v96 + v97);
  v99 = v146;
  *(v96 + v97) = 0x8000000000000000;
  v101 = sub_1D7A18FFC(v140, *(&v42 + 1));
  v102 = v99[2];
  v103 = (v100 & 1) == 0;
  v104 = v102 + v103;
  if (!__OFADD__(v102, v103))
  {
    v105 = v100;
    if (v99[3] >= v104)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7B96E54();
      }
    }

    else
    {
      sub_1D7B916D4(v104, isUniquelyReferenced_nonNull_native);
      v106 = sub_1D7A18FFC(v140, *(&v42 + 1));
      if ((v105 & 1) != (v107 & 1))
      {
        goto LABEL_46;
      }

      v101 = v106;
    }

    v39 = v129;
    v36 = v130;
    v35 = v131;
    if (v105)
    {

      v108 = v146;
      sub_1D7C4F464(v134, v146[7] + *(v139 + 72) * v101);
    }

    else
    {
      v108 = v146;
      v146[(v101 >> 6) + 8] |= 1 << v101;
      v109 = (v108[6] + 16 * v101);
      *v109 = v140;
      v109[1] = *(&v42 + 1);
      sub_1D7C4F400(v134, v108[7] + *(v139 + 72) * v101);
      v110 = v108[2];
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        goto LABEL_45;
      }

      v108[2] = v112;
    }

    *(v144 + v142) = v108;

    swift_endAccess();
    sub_1D7A0AD5C(&v147);
    sub_1D7A2B9D4(v133);
    v19 = v138;
    goto LABEL_35;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t sub_1D7C4D0C8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v118[1] = a2;
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118[0] = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1D7D295CC();
  v6 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v7);
  v122 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799C618(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v118 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v133 = v118 - v19;
  v20 = type metadata accessor for ArticleViewerPage(0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v128 = v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v135 = v118 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v119 = v118 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v132 = v118 - v33;
  v34 = a1[1];
  v131 = *(v34 + 2);
  v140 = v32;
  if (!v131)
  {
    v137 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v115 = sub_1D7C4F4C8(&qword_1EE0C9920);
    v116 = sub_1D7C4F4C8(&unk_1EE0C9940);
    MEMORY[0x1DA706A80](v137, v140, v115, v116);
    sub_1D7C4F4C8(&qword_1EE0C9930);
    return sub_1D7D29FBC();
  }

  v35 = 0;
  v126 = *a1;
  v138 = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_cache;
  v36 = (v34 + 32);
  v130 = (v21 + 56);
  v120 = (v6 + 32);
  v121 = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_articleAccessMap;
  v136 = v34;
  v137 = MEMORY[0x1E69E7CC0];
  v37 = (v21 + 48);
  v38 = v141;
  v127 = v13;
  v134 = v17;
  v125 = (v21 + 48);
  v129 = v21;
  while (v35 < *(v34 + 2))
  {
    v39 = v36[1];
    v147 = *v36;
    v148 = v39;
    v40 = v36[2];
    v41 = v36[3];
    v42 = v36[5];
    v151 = v36[4];
    v152 = v42;
    v149 = v40;
    v150 = v41;
    v43 = v36[6];
    v44 = v36[7];
    v45 = v36[8];
    *(v155 + 9) = *(v36 + 137);
    v154 = v44;
    v155[0] = v45;
    v153 = v43;
    memmove(__dst, v36, 0x99uLL);
    if (sub_1D7A601B0(__dst) == 1)
    {
      v46 = nullsub_1(__dst);
      v47 = (v46 + 88);
      v48 = (v46 + 96);
    }

    else
    {
      v47 = nullsub_1(__dst);
      v48 = v47 + 1;
    }

    v49 = *v47;
    v50 = *v48;

    v51 = v138;
    swift_beginAccess();
    v52 = *(v38 + v51);
    v53 = *(v52 + 16);
    v139 = v37 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (!v53)
    {
      sub_1D7A601B8(&v147, v145);

LABEL_13:
      swift_endAccess();
      v145[6] = v153;
      v145[7] = v154;
      v146[0] = v155[0];
      *(v146 + 9) = *(v155 + 9);
      v145[2] = v149;
      v145[3] = v150;
      v145[4] = v151;
      v145[5] = v152;
      v145[0] = v147;
      v145[1] = v148;
      if (sub_1D7A601B0(v145) == 1)
      {
        v63 = nullsub_1(v145);
        v64 = *(v38 + 16);
        v65 = v134;
        memmove(v134, v63, 0x98uLL);
        v66 = v126;
        v65[19] = v126;
        v65[20] = v64;
        v67 = v140;
        swift_storeEnumTagMultiPayload();
        v68 = v66;
      }

      else
      {
        v69 = nullsub_1(v145);
        v124 = sub_1D7D28A1C();
        __swift_project_boxed_opaque_existential_1((v141 + 24), *(v38 + 48));
        sub_1D7AD388C();
        v70 = v122;
        sub_1D7D2964C();
        v71 = sub_1D7C4DF30(*(v69 + 16));
        v73 = v72;
        v75 = v74;
        v76 = v134;
        sub_1D79E14FC(v143, (v134 + 9));
        v77 = type metadata accessor for ArticleViewerArticlePage(0);
        (*v120)(&v76[v77[7]], v70, v123);
        type metadata accessor for ArticleNavigationAction();
        swift_storeEnumTagMultiPayload();
        v78 = *v69;
        v79 = *(v69 + 16);
        v80 = *(v69 + 32);
        v81 = *(v69 + 48);
        v65 = v76;
        *(v76 + 2) = v80;
        *(v76 + 3) = v81;
        *v76 = v78;
        *(v76 + 1) = v79;
        *(v76 + 8) = v124;
        v82 = &v76[v77[8]];
        v83 = v126;
        v84 = v136;
        *v82 = v126;
        *(v82 + 1) = v84;
        v85 = v77[10];
        v86 = v140;
        v38 = v141;
        v87 = (v65 + v85);
        *v87 = v71;
        v87[1] = v73;
        v87[2] = v75;
        v67 = v86;
        swift_storeEnumTagMultiPayload();
        v88 = v83;
        v37 = v125;
      }

      v89 = v127;
      (*v130)(v65, 0, 1, v67);
      sub_1D7C4F6B0(v65, v89, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
      v90 = *v37;
      if ((*v37)(v89, 1, v67) == 1)
      {
        sub_1D7C4F730(v89, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
        v57 = v129;
LABEL_33:
        v61 = v133;
        sub_1D7C4F36C(v65, v133);
        v62 = v90(v61, 1, v140);
        goto LABEL_34;
      }

      sub_1D7C4F400(v89, v135);
      v143[6] = v153;
      v143[7] = v154;
      v144[0] = v155[0];
      *(v144 + 9) = *(v155 + 9);
      v143[2] = v149;
      v143[3] = v150;
      v143[4] = v151;
      v143[5] = v152;
      v143[0] = v147;
      v143[1] = v148;
      if (sub_1D7A601B0(v143) == 1)
      {
        v91 = nullsub_1(v143);
        v92 = (v91 + 88);
        v93 = (v91 + 96);
      }

      else
      {
        v92 = nullsub_1(v143);
        v93 = v92 + 1;
      }

      v94 = *v92;
      v95 = *v93;

      v96 = v138;
      swift_beginAccess();
      sub_1D79F93E8(v135, v128);
      sub_1D7A601B8(&v147, &v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v38 + v96);
      v98 = v142;
      *(v38 + v96) = 0x8000000000000000;
      v100 = sub_1D7A18FFC(v94, v95);
      v101 = v98[2];
      v102 = (v99 & 1) == 0;
      v103 = v101 + v102;
      if (__OFADD__(v101, v102))
      {
        goto LABEL_43;
      }

      v104 = v99;
      if (v98[3] >= v103)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v99 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1D7B96E54();
          if ((v104 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_1D7B916D4(v103, isUniquelyReferenced_nonNull_native);
        v105 = sub_1D7A18FFC(v94, v95);
        if ((v104 & 1) != (v106 & 1))
        {
          goto LABEL_45;
        }

        v100 = v105;
        if ((v104 & 1) == 0)
        {
LABEL_30:
          v107 = v142;
          v142[(v100 >> 6) + 8] |= 1 << v100;
          v108 = (v107[6] + 16 * v100);
          *v108 = v94;
          v108[1] = v95;
          v57 = v129;
          sub_1D7C4F400(v128, v107[7] + *(v129 + 72) * v100);
          v109 = v107[2];
          v110 = __OFADD__(v109, 1);
          v111 = v109 + 1;
          if (v110)
          {
            goto LABEL_44;
          }

          v107[2] = v111;
          goto LABEL_32;
        }
      }

      v107 = v142;
      v57 = v129;
      sub_1D7C4F464(v128, v142[7] + *(v129 + 72) * v100);
LABEL_32:
      v38 = v141;
      *(v141 + v138) = v107;

      swift_endAccess();
      sub_1D7A6026C(&v147);
      sub_1D7A2B9D4(v135);
      v65 = v134;
      v37 = v125;
      goto LABEL_33;
    }

    sub_1D7A601B8(&v147, v145);
    v54 = sub_1D7A18FFC(v49, v50);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_13;
    }

    v57 = v129;
    v58 = *(v52 + 56) + *(v129 + 72) * v54;
    v59 = v119;
    sub_1D79F93E8(v58, v119);
    swift_endAccess();
    sub_1D7A6026C(&v147);
    v60 = v59;
    v61 = v133;
    sub_1D7C4F400(v60, v133);
    (*(v57 + 56))(v61, 0, 1, v140);
    v62 = (*(v57 + 48))(v61, 1, v140);
LABEL_34:
    if (v62 == 1)
    {
      sub_1D7C4F730(v61, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    }

    else
    {
      sub_1D7C4F400(v61, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_1D79E4460(0, v137[2] + 1, 1, v137);
      }

      v113 = v137[2];
      v112 = v137[3];
      if (v113 >= v112 >> 1)
      {
        v137 = sub_1D79E4460(v112 > 1, v113 + 1, 1, v137);
      }

      v114 = v137;
      v137[2] = v113 + 1;
      sub_1D7C4F400(v132, v114 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v113);
    }

    ++v35;
    v36 += 10;
    v34 = v136;
    if (v131 == v35)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t sub_1D7C4DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  sub_1D799C618(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = &v38 - v7;
  v38 = type metadata accessor for ArticleViewerPage(0);
  v41 = *(v38 - 8);
  v9 = MEMORY[0x1EEE9AC00](v38, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v38 - v17;
  v20 = *a2;
  v19 = *(a2 + 8);
  v21 = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_cache;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = *(v22 + 16);
  v42 = v19;
  v24 = v20;

  if (v23 && (v25 = sub_1D7A18FFC(v20, v42), (v26 & 1) != 0))
  {
    v27 = v41;
    sub_1D79F93E8(*(v22 + 56) + *(v41 + 72) * v25, v15);
    sub_1D7C4F400(v15, v18);
    swift_endAccess();

    sub_1D799C618(0, &qword_1EE0BEA68, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6F90]);
    v11 = v18;
  }

  else
  {
    swift_endAccess();
    v28 = sub_1D7C4DF30(*(a2 + 16));
    v29 = *(a2 + 16);
    *v11 = *a2;
    *(v11 + 1) = v29;
    v30 = *(a2 + 48);
    *(v11 + 2) = *(a2 + 32);
    *(v11 + 3) = v30;
    *(v11 + 8) = v40;
    *(v11 + 9) = v28;
    *(v11 + 10) = v31;
    *(v11 + 11) = v32;
    v33 = v38;
    swift_storeEnumTagMultiPayload();
    v34 = v39;
    sub_1D79F93E8(v11, v39);
    v27 = v41;
    (*(v41 + 56))(v34, 0, 1, v33);
    swift_beginAccess();
    sub_1D79F5B54(a2, v43);

    sub_1D7B8A3BC(v34, v24, v42);
    swift_endAccess();
    sub_1D799C618(0, &qword_1EE0BEA68, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6F90]);
  }

  v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7D3B4D0;
  sub_1D7C4F400(v11, v36 + v35);
  return v36;
}

id sub_1D7C4DF30(void *a1)
{
  sub_1D799C618(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v30 - v5;
  v7 = sub_1D7D2824C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v13 = &selRef_addTarget_action_;
  if (v12)
  {
    swift_unknownObjectRetain_n();
    v14 = [v12 localDraftPath];
    if (!v14)
    {
      swift_unknownObjectRelease_n();
      return 0;
    }

    v32 = v8;
    v15 = v14;
    sub_1D7D3034C();

    v33 = v1;
    sub_1D799CC84(v1 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_localRecipeManager, v34);
    v16 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_1D7D2819C();
    result = [v12 sourceChannel];
    if (result)
    {
      v30[1] = v16;
      v31 = v6;
      v18 = [v12 recipeIDs];
      result = swift_unknownObjectRelease();
      if (v18)
      {

        sub_1D7D3063C();

        sub_1D7D2F8EC();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v32 + 8))(v11, v7);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v6 = v31;
        v13 = &selRef_addTarget_action_;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:
  result = [a1 v13[471]];
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = sub_1D7D3063C();

  v21 = v20[2];
  if (!v21)
  {

    return 0;
  }

  if (v21 == 1)
  {
    v22 = v20[4];
    v23 = v20[5];

    v24 = sub_1D7D3087C();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v25;
    *(v26 + 40) = v12 != 0;
    *(v26 + 48) = v22;
    *(v26 + 56) = v23;

    sub_1D7C4B9C8(0, 0, v6, &unk_1D7D5A358, v26);
    return v22;
  }

  else
  {
    v27 = sub_1D7D3087C();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v28;
    *(v29 + 40) = v12 != 0;
    *(v29 + 48) = v20;
    return sub_1D7C4BCC8(0, 0, v6, &unk_1D7D5A348, v29);
  }
}

uint64_t sub_1D7C4E3E4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_articleAccessMap;
  v2 = sub_1D7D2966C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_recipeService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_localRecipeManager);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleViewerPageBlueprintFactory()
{
  result = qword_1EE0C2D10;
  if (!qword_1EE0C2D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7C4E514()
{
  result = sub_1D7D2966C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7C4E5CC(_OWORD *a1)
{
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = *v1;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  v8 = sub_1D7D28A1C();
  v9 = sub_1D7C4DBC0(v5, v14, v8);
  v10 = type metadata accessor for ArticleViewerPage(0);
  v11 = sub_1D7C4F4C8(&qword_1EE0C9920);
  v12 = sub_1D7C4F4C8(&unk_1EE0C9940);
  MEMORY[0x1DA706A80](v9, v10, v11, v12);
  sub_1D7C4F4C8(&qword_1EE0C9930);
  sub_1D7D29FBC();
}

uint64_t sub_1D7C4E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 128) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D7C4E768, 0, 0);
}

uint64_t sub_1D7C4E768()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    if (*(v0 + 128))
    {
      v2 = (Strong + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_localRecipeManager);
      v3 = v2[3];
      v4 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v3);
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      v5[1] = sub_1D7C4E954;
      v7 = *(v0 + 56);
      v6 = *(v0 + 64);

      return MEMORY[0x1EEE22498](v7, v6, v3, v4);
    }

    else
    {
      v9 = (Strong + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_recipeService);
      v11 = v9[3];
      v10 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v11);
      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = sub_1D7C4EA7C;
      v14 = *(v0 + 56);
      v13 = *(v0 + 64);

      return MEMORY[0x1EEE22168](v14, v13, v11, v10);
    }
  }

  else
  {
    sub_1D7C4F7A0();
    swift_allocError();
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D7C4E954(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D7C4EC00;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_1D7C4EB90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7C4EA7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1D7C4ED24;
  }

  else
  {
    v4 = sub_1D7C4EC64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7C4EB90()
{

  **(v0 + 40) = *(v0 + 120);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C4EC00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C4EC64()
{
  v1 = *(v0 + 104);
  if (v1)
  {

    **(v0 + 40) = v1;
  }

  else
  {
    sub_1D7C4F7A0();
    swift_allocError();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7C4ED24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C4ED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = a6;
  *(v6 + 152) = a5;
  *(v6 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7C4EDB0, 0, 0);
}

uint64_t sub_1D7C4EDB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    if (*(v0 + 152) == 1)
    {
      v2 = (Strong + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_localRecipeManager);
      v3 = v2[3];
      v4 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v3);
      v5 = swift_task_alloc();
      *(v0 + 120) = v5;
      *v5 = v0;
      v5[1] = sub_1D7C4EF8C;
      v6 = *(v0 + 104);

      return MEMORY[0x1EEE224A0](v6, v3, v4);
    }

    else
    {
      v8 = (Strong + OBJC_IVAR____TtC12NewsArticles33ArticleViewerPageBlueprintFactory_recipeService);
      v10 = v8[3];
      v9 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v10);
      v11 = swift_task_alloc();
      *(v0 + 136) = v11;
      *v11 = v0;
      v11[1] = sub_1D7C4F0A8;
      v12 = *(v0 + 104);

      return MEMORY[0x1EEE22170](v12, v10, v9);
    }
  }

  else
  {
    **(v0 + 88) = MEMORY[0x1E69E7CC0];
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D7C4EF8C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = sub_1D7C4F234;
  }

  else
  {
    v4 = sub_1D7C4F1C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7C4F0A8(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_1D7C4F308;
  }

  else
  {
    v4 = sub_1D7C4F298;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7C4F1C4()
{
  v1 = *(v0 + 48);

  **(v0 + 88) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7C4F234()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C4F298()
{
  v1 = *(v0 + 72);

  **(v0 + 88) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7C4F308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7C4F36C(uint64_t a1, uint64_t a2)
{
  sub_1D799C618(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C4F400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C4F464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C4F4C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleViewerPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7C4F50C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7C4ED88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D7C4F5D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D7A4E814;

  return sub_1D7C4E740(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D7C4F6B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D799C618(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7C4F730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D799C618(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7C4F7A0()
{
  result = qword_1EC9E76A8;
  if (!qword_1EC9E76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E76A8);
  }

  return result;
}

unint64_t sub_1D7C4F808()
{
  result = qword_1EC9E76B0;
  if (!qword_1EC9E76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E76B0);
  }

  return result;
}

BOOL sub_1D7C4F85C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 153))
  {
    return 0;
  }

  sub_1D7C50EC8(a1, v8, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = *(v8 + 1);
      v26 = *v8;
      v27 = v21;
      v22 = *(v8 + 3);
      v28 = *(v8 + 2);
      v29 = v22;
      v23 = *(v8 + 5);
      v30 = *(v8 + 4);
      v31 = v23;
      v20 = v27;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v26);
      goto LABEL_12;
    }

LABEL_11:
    sub_1D7C50E60(v8, v12, type metadata accessor for ArticleViewerArticlePage);
    v20 = *(v12 + 2);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7C50D34(v12, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = *(v8 + 9);
      v34 = *(v8 + 8);
      v35 = v15;
      v36 = *(v8 + 20);
      v16 = *(v8 + 5);
      v30 = *(v8 + 4);
      v31 = v16;
      v17 = *(v8 + 7);
      v32 = *(v8 + 6);
      v33 = v17;
      v18 = *(v8 + 1);
      v26 = *v8;
      v27 = v18;
      v19 = *(v8 + 3);
      v28 = *(v8 + 2);
      v29 = v19;
      v20 = *(&v32 + 1);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D79F949C(&v26);
LABEL_12:

      swift_unknownObjectRelease();

      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      v13 = sub_1D7BEE524(v20);
      swift_unknownObjectRelease();
      return v13;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v8[*(v24 + 48)], *&v8[*(v24 + 48) + 8], *&v8[*(v24 + 48) + 16]);
    goto LABEL_11;
  }

  sub_1D7C50D34(v8, type metadata accessor for ArticleViewerPage);
  return 0;
}

double sub_1D7C4FB50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  sub_1D7C50D94(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  sub_1D7C50E2C(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = qword_1EE0C7ED0;
  v48 = off_1EE0C7ED8;
  sub_1D7C50EC8(a1, v12, sub_1D7C50D94);
  sub_1D7BD6D18(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = 1;
  v21 = v19(v12, 1, v17);
  v22 = sub_1D7C50D94;
  if (v21 != 1)
  {
    sub_1D7C50EC8(v12, v16, type metadata accessor for ArticleViewerShareFeatureContext);
    v20 = 0;
    v22 = sub_1D7BD6D18;
  }

  v23 = v22;

  sub_1D7C50D34(v12, v23);
  v24 = type metadata accessor for ArticleViewerShareFeatureContext(0);
  (*(*(v24 - 8) + 56))(v16, v20, 1, v24);
  sub_1D7C50EC8(a1, v8, sub_1D7C50D94);
  if (v19(v8, 1, v18) == 1)
  {
    sub_1D7C50D34(v8, sub_1D7C50D94);
    memset(v50, 0, sizeof(v50));
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
  }

  else
  {
    sub_1D79DA880(&v8[*(v18 + 28)], v50);
    sub_1D7C50D34(v8, sub_1D7BD6D18);
  }

  v25 = sub_1D7C4FFD0(v16);
  v27 = v26;
  v29 = v28;
  sub_1D7B86198(v50);
  sub_1D7C50D34(v16, sub_1D7C50E2C);
  sub_1D7C50DC8(0, &qword_1EE0C1B08, type metadata accessor for ArticleViewerShareFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v31 = *(v30 + 28);
  v32 = v46;
  sub_1D79DA880(v46, v50);
  v33 = sub_1D7C4FFD0(a1 + v31);
  v35 = v34;
  v37 = v36;
  sub_1D7B86198(v50);
  sub_1D79DA880(v32, v50);
  v38 = *(v3 + 80);
  v39 = v47;
  *(v47 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v39 + 32) = &off_1F52A4FC8;
  v40 = swift_allocObject();
  *v39 = v40;
  v41 = v48;
  *(v40 + 16) = v45;
  *(v40 + 24) = v41;
  *(v40 + 32) = v25;
  *(v40 + 40) = v27;
  *(v40 + 48) = v29;
  *(v40 + 56) = v33;
  *(v40 + 64) = v35;
  *(v40 + 72) = v37;
  v42 = v51;
  sub_1D7A1EE44(v25);
  sub_1D7A1EE44(v33);
  *(v40 + 96) = sub_1D7C550C4(v42);
  *(v40 + 104) = v38;
  v43 = *&v58;

  BarButtonOrder.init(for:)(&v49, v43);
  sub_1D7A1EE84(v33);
  sub_1D7A1EE84(v25);
  sub_1D79DA8DC(v50);
  result = *&v49;
  *(v40 + 80) = v49;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1D7C4FFD0(uint64_t a1)
{
  v3 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerShareFeatureContext.Page(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C50DC8(0, &qword_1EE0BF650, MEMORY[0x1E69B6330], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v69 - v11;
  v13 = sub_1D7D2B49C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C50E2C(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ArticleViewerShareFeatureContext(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C50EC8(a1, v21, sub_1D7C50E2C);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D7C50D34(v21, sub_1D7C50E2C);
    return 0;
  }

  else
  {
    sub_1D7C50E60(v21, v26, type metadata accessor for ArticleViewerShareFeatureContext);
    if (sub_1D7D2DB0C())
    {
      if (qword_1EE0C0678 != -1)
      {
        swift_once();
      }

      v28 = &qword_1EE0C0680;
    }

    else
    {
      if (qword_1EC9E0060 != -1)
      {
        swift_once();
      }

      v28 = &qword_1EC9E92D8;
    }

    v72 = *v28;
    v29 = sub_1D7C50994();
    v30 = *&v26[*(v22 + 24) + 8];
    v31 = *(v1 + 24);
    v70 = v29;
    v71 = v31;
    (*(v14 + 104))(v17, *MEMORY[0x1E69D7FA8], v13);
    v32 = *(v1 + 32);
    v76 = sub_1D7D28A3C();
    v77 = sub_1D7A108E4();
    v75 = v32;
    v78 = 0u;
    v79 = 0u;
    v80 = 1;
    sub_1D7D2B10C();
    swift_allocObject();
    swift_unknownObjectRetain();

    v69[1] = sub_1D7D2B0EC();
    sub_1D7D2C4BC();
    sub_1D7B28B9C(0, v33);
    v35 = *(v34 + 64);
    v36 = &v12[*(v34 + 80)];
    v37 = v73;
    sub_1D7C50EC8(v26, v73, type metadata accessor for ArticleViewerShareFeatureContext.Page);
    v38 = v37;
    v39 = v74;
    sub_1D7C50E60(v38, v74, type metadata accessor for ArticleViewerArticlePage);
    v40 = *(v39 + 16);
    swift_unknownObjectRetain();
    sub_1D7C50D34(v39, type metadata accessor for ArticleViewerArticlePage);
    *v12 = v40;
    v41 = swift_allocObject();
    *(v41 + 24) = v30;
    swift_unknownObjectWeakInit();
    *(v12 + 1) = sub_1D7C50F30;
    *(v12 + 2) = v41;
    v42 = *MEMORY[0x1E69B6340];
    v43 = sub_1D7D2F51C();
    (*(*(v43 - 8) + 104))(&v12[v35], v42, v43);
    *v36 = 0;
    *(v36 + 1) = 0;
    v44 = *MEMORY[0x1E69B6328];
    v45 = sub_1D7D2F4FC();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v12, v44, v45);
    (*(v46 + 56))(v12, 0, 1, v45);
    sub_1D7C50DC8(0, &unk_1EE0BFF10, MEMORY[0x1E69B6330], MEMORY[0x1E69D7C98]);
    v48 = objc_allocWithZone(v47);
    v49 = v72;
    v72 = v70;
    v50 = sub_1D7D2AD6C();

    v51 = sub_1D7D3031C();

    [v50 setIdentifier_];

    sub_1D7D2AD5C();
    v52 = [v50 customView];
    if (v52)
    {
      v53 = v52;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v55 = [objc_opt_self() bundleForClass_];
      sub_1D7D2811C();

      v56 = v53;
      v57 = sub_1D7D3031C();
      [v56 setAccessibilityLabel_];

      [v56 setShowsLargeContentViewer_];
      v58 = sub_1D7D3031C();

      [v56 setLargeContentTitle_];
    }

    if (sub_1D7D2DB0C())
    {
      type metadata accessor for Localized();
      v59 = swift_getObjCClassFromMetadata();
      v60 = objc_opt_self();
      v61 = v50;
      v62 = [v60 bundleForClass_];
      sub_1D7D2811C();

      v63 = sub_1D7D3031C();

      [v61 setTitle_];
    }

    v64 = v73;
    sub_1D7C50EC8(v26, v73, type metadata accessor for ArticleViewerShareFeatureContext.Page);
    v65 = v64;
    v66 = v74;
    sub_1D7C50E60(v65, v74, type metadata accessor for ArticleViewerArticlePage);
    v27 = *(v66 + 16);
    swift_unknownObjectRetain();
    sub_1D7C50D34(v66, type metadata accessor for ArticleViewerArticlePage);
    sub_1D7C50F38(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D7D3B4D0;
    *(v67 + 32) = v50;
    *(v67 + 40) = 0;

    sub_1D7C50D34(v26, type metadata accessor for ArticleViewerShareFeatureContext);
  }

  return v27;
}

id sub_1D7C50994()
{
  v0 = sub_1D7D2AC3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v20 - v7;
  v21 = objc_opt_self();
  v9 = [v21 configurationWithPointSize:5 weight:3 scale:22.0];
  type metadata accessor for ArticleViewerShareFeatureContext(0);
  sub_1D7D2AC8C();
  v10 = sub_1D7D2AC2C();
  v11 = *(v1 + 8);
  v11(v8, v0);
  if (v10)
  {
    sub_1D7D2AC8C();
    v12 = sub_1D7D2ABFC();
    v11(v4, v0);
    if (v12)
    {
      sub_1D7C50F38(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D7D41F60;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1D79F85FC();
      v14 = v10;
      v15 = v12;
      v16 = sub_1D7D3062C();

      v17 = [v21 configurationWithPaletteColors_];

      v18 = [v9 configurationByApplyingConfiguration_];
      v9 = v18;
    }
  }

  return v9;
}

uint64_t sub_1D7C50BF4(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1D7C50C8C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C50D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C50DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C50E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C50EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7C50F38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void AlertIssueUnavailable.init(error:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2814C();
  v5 = [v4 fc_isUnknownItemError];

  *a2 = v5;
  *(a2 + 8) = 1;
}

uint64_t AlertIssueUnavailable.init(blockedReason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t AlertIssueUnavailable.title.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    goto LABEL_7;
  }

  if (v1 <= 2)
  {
    if (v1 == 1 || v1 == 2)
    {
      goto LABEL_7;
    }
  }

  else if ((v1 - 4) < 3)
  {
LABEL_7:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1D7D2811C();

    return v4;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t AlertIssueUnavailable.message.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    goto LABEL_7;
  }

  if (v1 <= 2)
  {
    if (v1 == 1 || v1 == 2)
    {
      goto LABEL_7;
    }
  }

  else if ((v1 - 4) < 3)
  {
LABEL_7:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1D7D2811C();

    return v4;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t AlertIssueUnavailable.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

id sub_1D7C51820(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EC9E76B8);
  [v4 convertPoint:v2 fromCoordinateSpace:?];
  return [v4 pointInside:a1 withEvent:?];
}

uint64_t sub_1D7C51874(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = a3;
  v6 = a1;
  LOBYTE(v3) = sub_1D7C51820(v3);

  return v3 & 1;
}

id sub_1D7C518E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EC9E76B8);
  [v4 convertPoint:v2 fromCoordinateSpace:?];
  v5 = [v4 hitTest:a1 withEvent:?];

  return v5;
}

id sub_1D7C51948(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = sub_1D7C518E0(a3);

  return v7;
}

id sub_1D7C519D4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for OverflowBarButtonItemView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[qword_1EC9E76B8];
  [v1 bounds];
  v3 = v2 * 0.5;
  v5 = v4 * 0.5;
  [v0 bounds];
  return [v1 setCenter_];
}

void sub_1D7C51AA4(void *a1)
{
  v1 = a1;
  sub_1D7C519D4();
}

double sub_1D7C51AEC(void *a1)
{
  v1 = a1;
  sub_1D7C51B48();
  v3 = v2;

  return v3;
}

id sub_1D7C51B48()
{
  v1 = *&v0[qword_1EC9E76B8];
  [v1 accessibilityFrame];

  return [v0 convertRect:v1 fromCoordinateSpace:?];
}

void sub_1D7C51BA0(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_1D7C51C18(a2, a3, a4, a5);
}

id sub_1D7C51C18(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OverflowBarButtonItemView();
  return objc_msgSendSuper2(&v10, sel_setAccessibilityFrame_, a1, a2, a3, a4);
}

id sub_1D7C51CCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverflowBarButtonItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7C51D50()
{
  *(v0 + qword_1EC9E76C0) = 0;
  sub_1D7D3160C();
  __break(1u);
}

char *sub_1D7C51DE8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_coverViewButton;
  sub_1D7D2F0CC();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = objc_allocWithZone(sub_1D7D2F71C());
  *&v4[v10] = sub_1D7D2F6DC();
  v12 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_subscribeButton;
  *&v4[v12] = [objc_allocWithZone(sub_1D7D29BBC()) initWithFrame_];
  v13 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_dateLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_descriptionLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_coverViewButton];
  v17 = v15;
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];

  return v17;
}

void sub_1D7C52094()
{
  sub_1D7D2F6EC();
  v0 = sub_1D7D2A86C();
}

void sub_1D7C52100()
{
  sub_1D7C5218C(&qword_1EC9E3AF0);

  JUMPOUT(0x1DA70A0C0);
}

uint64_t sub_1D7C5218C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableOfContentsHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7C521CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_coverViewButton;
  sub_1D7D2F0CC();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = objc_allocWithZone(sub_1D7D2F71C());
  *(v0 + v2) = sub_1D7D2F6DC();
  v4 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_subscribeButton;
  *(v1 + v4) = [objc_allocWithZone(sub_1D7D29BBC()) initWithFrame_];
  v5 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_dateLabel;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6 = OBJC_IVAR____TtC12NewsArticles25TableOfContentsHeaderView_descriptionLabel;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7C52404(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v3 = 0;
  }

  sub_1D7A46A08();
  sub_1D7D3040C();
  sub_1D7D28BCC();
}

uint64_t sub_1D7C52534()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12NewsArticles36ArticleThumbnailComponentViewFactory_resolver], *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleThumbnailComponentViewFactory_resolver + 24]);
  sub_1D7C52780();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D28D0C();

  if (v15)
  {
    sub_1D799D69C(&v14, v16);
    v3 = [v0 DOMObjectProvider];
    v4 = [v1 viewport];
    v5 = [objc_msgSend(v1 presentationDelegateProvider)];
    swift_unknownObjectRelease();
    v6 = [v1 componentStyleRendererFactory];
    v7 = *&v1[OBJC_IVAR____TtC12NewsArticles36ArticleThumbnailComponentViewFactory_linkedContentProvider];
    sub_1D799CC84(v16, &v14);
    v8 = type metadata accessor for ArticleThumbnailComponentView();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_articleThumbnailView;
    sub_1D7D2F67C();
    *&v9[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v9[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_linkedContentProvider] = v7;
    sub_1D799CC84(&v14, &v9[OBJC_IVAR____TtC12NewsArticles29ArticleThumbnailComponentView_articleThumbnailViewRenderer]);
    v13.receiver = v9;
    v13.super_class = v8;
    v11 = v7;
    v12 = objc_msgSendSuper2(&v13, sel_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7C52780()
{
  result = qword_1EE0BF518;
  if (!qword_1EE0BF518)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF518);
  }

  return result;
}

uint64_t sub_1D7C527EC()
{
  sub_1D7D294BC();
  sub_1D7AE6C50();
  v0 = sub_1D7D30E1C();
  type metadata accessor for IssueViewerInteractor();
  swift_unknownObjectRetain();
  sub_1D7D293CC();

  v1 = sub_1D7D30E1C();

  sub_1D7D293EC();
}

void sub_1D7C52990(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D799C67C(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20[-v8];
  v10 = (a1 + *(type metadata accessor for ToolbarFeatureContext() + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (v3 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_actionHandler);
  v14 = *(v3 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_actionHandler);
  *v13 = v12;
  v13[1] = v11;

  sub_1D79AD740(v14);
  sub_1D79F93E8(a1, v9);
  v15 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_currentArticle;
  swift_beginAccess();
  sub_1D7B98D9C(v9, v3 + v16);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  *(v3 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_isTableOfContentsVisible) = sub_1D7CB2E20(a1) & 1;
  v17 = sub_1D7C52DC4(a1);
  sub_1D79EB1FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3C670;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  [*&v17[qword_1EC9E76B8] frame];
  Height = CGRectGetHeight(v21);
  ToolbarFeatureState.init(items:contentInset:)(inited, a2, Height);

  sub_1D7C52BA8(v3, a1);
}

void sub_1D7C52BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79F93E8(a2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = *(v7 + 9);
      v23[8] = *(v7 + 8);
      v24 = v14;
      v25 = *(v7 + 20);
      v15 = *(v7 + 5);
      v23[4] = *(v7 + 4);
      v23[5] = v15;
      v16 = *(v7 + 7);
      v23[6] = *(v7 + 6);
      v23[7] = v16;
      v17 = *(v7 + 1);
      v23[0] = *v7;
      v23[1] = v17;
      v18 = *(v7 + 3);
      v23[2] = *(v7 + 2);
      v23[3] = v18;
      v13 = *(&v24 + 1);
      sub_1D79F949C(v23);
      goto LABEL_13;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v7[*(v19 + 48)], *&v7[*(v19 + 48) + 8], *&v7[*(v19 + 48) + 16]);
  }

  else if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1D79F94F0(v7, type metadata accessor for ArticleViewerPage);
    v13 = 0;
    goto LABEL_13;
  }

  sub_1D7A74E98(v7, v11);
  v13 = *&v11[*(v8 + 32)];
  if (v13 >= 2)
  {
    v21 = v13;
  }

  else
  {
    v20 = *(v11 + 2);
    if ([v20 respondsToSelector_])
    {
      v13 = [v20 parentIssue];
    }

    else
    {
      v13 = 0;
    }
  }

  sub_1D79F94F0(v11, type metadata accessor for ArticleViewerArticlePage);
LABEL_13:
  v22 = *(a1 + 96);
  *(a1 + 96) = v13;
}

char *sub_1D7C52DC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7C5314C(v2, a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1D799CC84(v2 + 56, &v49);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v14;
  *(&v44 + 1) = type metadata accessor for IssueCoverViewButtonFactory();
  *&v45 = &off_1F52B12E8;
  *&v43 = v16;
  v17 = objc_allocWithZone(type metadata accessor for CombinedToolbarFeatureView());
  v18 = __swift_mutable_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v19 = MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = sub_1D7C534DC(*v21, v17);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  v24 = a1 + *(type metadata accessor for ToolbarFeatureContext() + 20);
  v25 = *(v24 + 48);
  v26 = *(v24 + 16);
  v45 = *(v24 + 32);
  v46 = v25;
  v27 = *(v24 + 48);
  v47 = *(v24 + 64);
  v28 = *(v24 + 16);
  v43 = *v24;
  v44 = v28;
  v39 = v45;
  v40 = v27;
  v41 = *(v24 + 64);
  v48 = *(v24 + 80);
  v42 = *(v24 + 80);
  v37 = v43;
  v38 = v26;
  sub_1D7A66F20(&v43, &v49);
  sub_1D7BA8CA8(v4, v6, v8, v10, &v37, 0);
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v49 = v37;
  v50 = v38;
  sub_1D7C538E8(&v49);
  v29 = v23;
  [v29 sizeToFit];
  sub_1D799C67C(0, &qword_1EC9E7788, type metadata accessor for CombinedToolbarFeatureView, type metadata accessor for OverflowBarButtonItemView);
  v31 = v30;
  v32 = objc_allocWithZone(v30);
  *&v32[qword_1EC9E76C0] = 0;
  *&v32[qword_1EC9E76B8] = v29;
  v36.receiver = v32;
  v36.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v34 addSubview_];

  sub_1D7BA9AB4(v4);
  *&v34[qword_1EC9E76C0] = 0x4020000000000000;
  return v34;
}

id sub_1D7C5314C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_isTableOfContentsVisible) != 1)
  {
    return 0;
  }

  v13 = v10;
  sub_1D79F93E8(a2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = *(v7 + 9);
      v28[8] = *(v7 + 8);
      v29 = v18;
      v30 = *(v7 + 20);
      v19 = *(v7 + 5);
      v28[4] = *(v7 + 4);
      v28[5] = v19;
      v20 = *(v7 + 7);
      v28[6] = *(v7 + 6);
      v28[7] = v20;
      v21 = *(v7 + 1);
      v28[0] = *v7;
      v28[1] = v21;
      v22 = *(v7 + 3);
      v28[2] = *(v7 + 2);
      v28[3] = v22;
      v23 = *(&v29 + 1);
      sub_1D79F949C(v28);
      goto LABEL_15;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v7[*(v24 + 48)], *&v7[*(v24 + 48) + 8], *&v7[*(v24 + 48) + 16]);
  }

  else if ((EnumCaseMultiPayload - 1) < 2)
  {
    v15 = type metadata accessor for ArticleViewerPage;
    v16 = v7;
LABEL_5:
    sub_1D79F94F0(v16, v15);
    return 0;
  }

  sub_1D7A74E98(v7, v12);
  v25 = *&v12[*(v13 + 32)];
  if (v25 >= 2)
  {
    v23 = v25;
    sub_1D79F94F0(v12, type metadata accessor for ArticleViewerArticlePage);
  }

  else
  {
    v26 = *(v12 + 2);
    if (([v26 respondsToSelector_] & 1) == 0)
    {
      v15 = type metadata accessor for ArticleViewerArticlePage;
      v16 = v12;
      goto LABEL_5;
    }

    v27 = [v26 parentIssue];
    sub_1D79F94F0(v12, type metadata accessor for ArticleViewerArticlePage);
    v23 = v27;
    if (!v27)
    {
      return 0;
    }
  }

LABEL_15:
  sub_1D7CF2C5C();
  type metadata accessor for ToolbarFeatureContext();

  return v23;
}

uint64_t sub_1D7C533EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  sub_1D7C5393C(v0 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_currentArticle);
  sub_1D79AD740(*(v0 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_actionHandler));

  return swift_deallocClassInstance();
}

id sub_1D7C534DC(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v9[3] = type metadata accessor for IssueCoverViewButtonFactory();
  v9[4] = &off_1F52B12E8;
  v5 = &a2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&a2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton] = 0;
  v9[0] = a1;
  *&a2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_newsPlusLabel] = 0;
  *&a2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator] = 0;
  sub_1D799CC84(v9, &a2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverViewButtonFactory]);
  v8.receiver = a2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

void sub_1D7C535B8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D799C67C(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v30 - v8;
  sub_1D79F93E8(a2, v30 - v8);
  v10 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_currentArticle;
  swift_beginAccess();
  sub_1D7B98D9C(v9, v3 + v11);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  *(v3 + OBJC_IVAR____TtC12NewsArticles30CombinedToolbarFeatureProvider_isTableOfContentsVisible) = sub_1D7CB2E20(a2) & 1;
  v12 = *a1;
  if (*(*a1 + 16))
  {
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);

    v15 = v13;
    v16 = [v15 customView];
    if (v16)
    {
      v17 = v16;
      sub_1D799C67C(0, &qword_1EC9E7788, type metadata accessor for CombinedToolbarFeatureView, type metadata accessor for OverflowBarButtonItemView);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D7C5314C(v3, a2);
        v22 = v21;
        v32 = v24;
        v33 = v23;
        v34 = qword_1EC9E76B8;
        v25 = a2 + *(type metadata accessor for ToolbarFeatureContext() + 20);
        v26 = *(v25 + 48);
        v27 = *(v25 + 16);
        v42 = *(v25 + 32);
        v43 = v26;
        v28 = *(v25 + 48);
        v44 = *(v25 + 64);
        v29 = *(v25 + 16);
        v41[0] = *v25;
        v41[1] = v29;
        v37 = v42;
        v38 = v28;
        v39 = *(v25 + 64);
        v45 = *(v25 + 80);
        v40 = *(v25 + 80);
        v35 = v41[0];
        v36 = v27;
        sub_1D7A66F20(v41, v46);
        v30[1] = v14;
        v31 = v15;
        sub_1D7BA8CA8(v20, v22, v33, v32, &v35, 1);
        v46[2] = v37;
        v46[3] = v38;
        v46[4] = v39;
        v47 = v40;
        v46[0] = v35;
        v46[1] = v36;
        sub_1D7C538E8(v46);
        [*(v19 + v34) sizeToFit];
        sub_1D7BA9AB4(v20);
      }

      else
      {
      }
    }

    else
    {

      v17 = v15;
    }
  }

  sub_1D7C52BA8(v3, a2);
}

uint64_t sub_1D7C5393C(uint64_t a1)
{
  sub_1D799C67C(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C539FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v8 = a2;
  v5 = a2;

  v10.title._countAndFlagsBits = v7;
  TitleView.apply(model:)(v10);
  v6 = v8;
}

void sub_1D7C53A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  v6 = 0;

  v8.title._countAndFlagsBits = v5;
  TitleView.apply(model:)(v8);
  v4 = v6;
}

uint64_t sub_1D7C53AC4(uint64_t a1, void *a2)
{
  v42 = a1;
  v3 = sub_1D7D2F47C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D7D2ACCC();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7992EFC(0, &unk_1EE0BF098);
  v12 = sub_1D7D30C1C();
  if (!v12 || (v13 = v12, v14 = [v12 screen], v13, v15 = objc_msgSend(v14, sel_traitCollection), v14, (v16 = v15) == 0))
  {
    v16 = [objc_opt_self() currentTraitCollection];
  }

  v41 = v16;
  v17 = [v16 userInterfaceStyle];
  sub_1D7D2ACBC();
  v18 = MEMORY[0x1E69B62C0];
  if (v17 != 2)
  {
    v18 = MEMORY[0x1E69B62C8];
  }

  (*(v4 + 104))(v7, *v18, v3);
  v19 = [a2 sourceChannel];
  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v38 - 6) = v7;
  *(&v38 - 5) = v11;
  *(&v38 - 4) = v21;
  *(&v38 - 3) = 0x4036000000000000;
  *(&v38 - 2) = v22;
  sub_1D7C54BEC();
  swift_allocObject();
  v40 = sub_1D7D2946C();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v39);
  v23 = [a2 sourceChannel];
  if (v23)
  {
    v24 = [v23 name];
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = [a2 title];
    v24 = v25;
    if (!v25)
    {
      v27 = 0;
      v29 = 0xE000000000000000;
      goto LABEL_10;
    }
  }

  v27 = sub_1D7D3034C();
  v29 = v28;

LABEL_10:
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = v42;
  *(&v38 - 4) = v43;
  *(&v38 - 3) = v30;
  *(&v38 - 2) = v40;
  sub_1D7C54C88();
  sub_1D7D294BC();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D7C54D08;
  *(v32 + 24) = v31;

  v33 = sub_1D7D2934C();
  sub_1D7D2AF2C();
  sub_1D7D293AC();

  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  v35 = sub_1D7D2934C();
  v36 = sub_1D7D2944C();

  return v36;
}

uint64_t sub_1D7C53FA0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v6 = *MEMORY[0x1E69D7D78];
  v7 = sub_1D7D2AF2C();
  (*(*(v7 - 8) + 104))(a4, v6, v7);
  v8 = a1;
}

uint64_t sub_1D7C54038()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_1D7C540AC(void (*a1)(void *), void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v49 = a8;
  v44 = a3;
  v45 = a4;
  sub_1D7C54DD0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v48 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2AC3C();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2F47C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v42[1] = a2;
  v43 = a1;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = v25;

  v27 = a5;
  v28 = sub_1D7C54578(a5, a6, a7);
  if (v28)
  {
    v29 = v28;
    v30 = v26;
    v51 = sub_1D7992EFC(0, &qword_1EE0BF0D8);
    v52 = sub_1D7B6D38C();
    v50[0] = v29;
    v31 = objc_opt_self();
    v42[0] = v29;
    v32 = [v31 mainScreen];
    [v32 scale];

    (*(v21 + 16))(v24, v27, v20);
    sub_1D7D2AC8C();
    sub_1D7D2AC1C();
    (*(v46 + 8))(v19, v47);
    v33 = sub_1D7D2FD9C();
    (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
    v34 = sub_1D7D2FDBC();
    swift_allocObject();
    v35 = sub_1D7D2FDAC();
    v36 = v49;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v51 = v34;
    v37 = sub_1D7C54E7C();
    v52 = v37;
    v50[0] = v35;

    v38 = sub_1D7D2A06C();
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v38)
    {

      v50[0] = v38;
      v43(v50);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v51 = v34;
      v52 = v37;
      v50[0] = v35;
      v40 = swift_allocObject();
      v40[2] = sub_1D79EA4C8;
      v40[3] = v30;
      v41 = v45;
      v40[4] = v44;
      v40[5] = v41;

      sub_1D7D2A05C();

      __swift_destroy_boxed_opaque_existential_1(v50);
    }
  }

  else
  {

    sub_1D7C54E28();
    v39 = swift_allocError();
    v44();
  }
}

id sub_1D7C54578(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D7D2AC3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2F47C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10, v13);
  v16 = (*(v11 + 88))(v15, v10);
  if (v16 != *MEMORY[0x1E69B62C8])
  {
    v22 = v16;
    v41 = v10;
    v42 = v11;
    v23 = a3;
    v24 = *MEMORY[0x1E69B62C0];
    sub_1D7D2AC8C();
    v25 = sub_1D7D2AC1C();
    v26 = *(v6 + 8);
    v26(v9, v5);
    if (v22 == v24)
    {
      if ((v25 & 1) == 0)
      {
        if (!v23)
        {
          return 0;
        }

        v28 = [v23 theme];
        if (!v28)
        {
          return 0;
        }

        goto LABEL_14;
      }

      if (v23)
      {
        v19 = [v23 theme];
        if (v19)
        {
          goto LABEL_5;
        }
      }

      return 0;
    }

    v29 = v23;
    if (v25)
    {
      v30 = v41;
      v31 = v42;
      if (v29)
      {
        v32 = [v29 theme];
        if (v32)
        {
          v33 = [v32 bannerImageForWhiteBackground];
          swift_unknownObjectRelease();
          v34 = [v33 assetHandle];
LABEL_34:
          v36 = v34;

LABEL_36:
          (*(v31 + 8))(v15, v30);
          return v36;
        }
      }
    }

    else
    {
      sub_1D7D2AC8C();
      v37 = sub_1D7D2AC0C();
      v26(v9, v5);
      v30 = v41;
      v31 = v42;
      if (v37)
      {
        if (v29)
        {
          v38 = [v29 theme];
          if (v38)
          {
            v33 = [v38 bannerImageForMask];
            swift_unknownObjectRelease();
            v34 = [v33 assetHandle];
            goto LABEL_34;
          }
        }
      }

      else if (v29)
      {
        v39 = [v29 theme];
        if (v39)
        {
          v33 = [v39 bannerImageForThemeBackground];
          swift_unknownObjectRelease();
          v34 = [v33 assetHandle];
          goto LABEL_34;
        }
      }
    }

    v36 = 0;
    goto LABEL_36;
  }

  sub_1D7D2AC8C();
  v17 = sub_1D7D2AC1C();
  v18 = *(v6 + 8);
  v18(v9, v5);
  if ((v17 & 1) == 0)
  {
    sub_1D7D2AC8C();
    v27 = sub_1D7D2AC0C();
    v18(v9, v5);
    if (v27)
    {
      if (!a3)
      {
        return 0;
      }

      v28 = [a3 theme];
      if (!v28)
      {
        return 0;
      }

LABEL_14:
      v20 = [v28 bannerImageForMask];
      swift_unknownObjectRelease();
      v21 = [v20 assetHandle];
      goto LABEL_25;
    }

    if (a3)
    {
      v35 = [a3 theme];
      if (v35)
      {
        v20 = [v35 bannerImageForThemeBackground];
        swift_unknownObjectRelease();
        v21 = [v20 assetHandle];
        goto LABEL_25;
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v19 = [a3 theme];
  if (!v19)
  {
    return 0;
  }

LABEL_5:
  v20 = [v19 bannerImageForWhiteBackground];
  swift_unknownObjectRelease();
  v21 = [v20 assetHandle];
LABEL_25:
  v36 = v21;

  return v36;
}

void sub_1D7C54B20(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v9 = a1;
    a3();
    v6 = v9;
  }

  else
  {
    sub_1D7C54E28();
    v8 = swift_allocError();
    a5();
    v6 = v8;
  }
}

void sub_1D7C54BEC()
{
  if (!qword_1EE0C0258)
  {
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0258);
    }
  }
}

void sub_1D7C54C88()
{
  if (!qword_1EC9E7790)
  {
    sub_1D7D2AF4C();
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E7790);
    }
  }
}

uint64_t sub_1D7C54D48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  v5 = *MEMORY[0x1E69D7D70];
  v6 = sub_1D7D2AF2C();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

void sub_1D7C54DD0()
{
  if (!qword_1EE0BF528)
  {
    sub_1D7D2FD9C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF528);
    }
  }
}

unint64_t sub_1D7C54E28()
{
  result = qword_1EE0BC418[0];
  if (!qword_1EE0BC418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BC418);
  }

  return result;
}

unint64_t sub_1D7C54E7C()
{
  result = qword_1EE0BF520;
  if (!qword_1EE0BF520)
  {
    sub_1D7D2FDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF520);
  }

  return result;
}

unint64_t sub_1D7C54EF4()
{
  result = qword_1EC9E7798;
  if (!qword_1EC9E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7798);
  }

  return result;
}

uint64_t sub_1D7C55068()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C550C4(void *a1)
{
  v1 = [a1 horizontalSizeClass];
  sub_1D79A7834(0, &qword_1EE0BE9E8);
  if (v1 == 1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D7D3B4E0;
    sub_1D79A7834(0, &qword_1EE0BE9F8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D7D3B4D0;
    sub_1D79A7834(0, &qword_1EE0BE890);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2A94C();
    *(v4 + 32) = sub_1D7D2A91C();
    *(v4 + 40) = v5;
    *(v4 + 48) = 0xD000000000000022;
    *(v4 + 56) = 0x80000001D7D6ED50;
    *(v3 + 32) = 0x697461676976616ELL;
    *(v3 + 40) = 0xEA00000000006E6FLL;
    *(v3 + 48) = 0;
    *(v3 + 56) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7D3B4E0;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7D3B4E0;
    v8 = off_1EE0C7F08;
    *(v7 + 32) = qword_1EE0C7F00;
    *(v7 + 40) = v8;
    v9 = off_1EE0C7EA8;
    *(v7 + 48) = qword_1EE0C7EA0;
    *(v7 + 56) = v9;
    *(v6 + 32) = 0x2D6C616963657073;
    *(v6 + 40) = 0xEF736E6F69746361;
    *(v6 + 48) = 1;
    *(v6 + 56) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D42910;
    v11 = off_1EE0C7F38;
    *(v10 + 32) = qword_1EE0C7F30;
    *(v10 + 40) = v11;
    v35 = qword_1EE0C7FF0;
    v40 = off_1EE0C7FF8;

    MEMORY[0x1DA70DE90](0x6F626D6F633A3ALL, 0xE700000000000000);
    *(v10 + 48) = v35;
    *(v10 + 56) = v40;
    v12 = off_1EE0C7ED8;
    *(v10 + 64) = qword_1EE0C7ED0;
    *(v10 + 72) = v12;
    v13 = off_1EE0C7F68;
    *(v10 + 80) = qword_1EE0C7F60;
    *(v10 + 88) = v13;
    strcpy((v6 + 64), "basic-actions");
    *(v6 + 78) = -4864;
    *(v6 + 80) = 0;
    *(v6 + 88) = v10;
    strcpy((v2 + 32), "Audio-Recipe");
    *(v2 + 45) = 0;
    *(v2 + 46) = -5120;
    *(v2 + 48) = v3;
    *(v2 + 56) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7D3B4D0;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7D3B4E0;

    *(v15 + 32) = sub_1D7D2A91C();
    *(v15 + 40) = v16;
    *(v15 + 48) = 0xD000000000000022;
    *(v15 + 56) = 0x80000001D7D6ED50;
    *(v14 + 32) = 0x697461676976616ELL;
    *(v14 + 40) = 0xEA00000000006E6FLL;
    *(v14 + 48) = 0;
    *(v14 + 56) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7D3B4D0;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D481C0;
    v19 = off_1EE0C7F38;
    *(v18 + 32) = qword_1EE0C7F30;
    *(v18 + 40) = v19;
    v36 = qword_1EE0C7FF0;
    v41 = off_1EE0C7FF8;

    MEMORY[0x1DA70DE90](0x656B696C3A3ALL, 0xE600000000000000);
    *(v18 + 48) = v36;
    *(v18 + 56) = v41;
    v37 = qword_1EE0C7FF0;
    v42 = off_1EE0C7FF8;

    MEMORY[0x1DA70DE90](0x6B696C7369643A3ALL, 0xE900000000000065);
    *(v18 + 64) = v37;
    *(v18 + 72) = v42;
    v20 = off_1EE0C7ED8;
    *(v18 + 80) = qword_1EE0C7ED0;
    *(v18 + 88) = v20;
    v21 = off_1EE0C7F68;
    *(v18 + 96) = qword_1EE0C7F60;
    *(v18 + 104) = v21;
    strcpy((v17 + 32), "basic-actions");
    *(v17 + 46) = -4864;
    *(v17 + 48) = 0;
    *(v17 + 56) = v18;
    *(v2 + 64) = 0x746C7561666544;
    *(v2 + 72) = 0xE700000000000000;
    *(v2 + 80) = v14;
    *(v2 + 88) = v17;
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D7D3B4D0;
    sub_1D79A7834(0, &qword_1EE0BE9F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7D3B4E0;
    sub_1D79A7834(0, &qword_1EE0BE890);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2A94C();
    *(v23 + 32) = sub_1D7D2A91C();
    *(v23 + 40) = v24;
    *(v23 + 48) = 0xD000000000000022;
    *(v23 + 56) = 0x80000001D7D6ED50;
    *(v22 + 32) = 0x697461676976616ELL;
    *(v22 + 40) = 0xEA00000000006E6FLL;
    *(v22 + 48) = 0;
    *(v22 + 56) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7D42910;
    v38 = qword_1EE0C7FF0;
    v43 = off_1EE0C7FF8;

    MEMORY[0x1DA70DE90](0x656B696C3A3ALL, 0xE600000000000000);
    *(v25 + 32) = v38;
    *(v25 + 40) = v43;
    v39 = qword_1EE0C7FF0;
    v44 = off_1EE0C7FF8;

    MEMORY[0x1DA70DE90](0x6B696C7369643A3ALL, 0xE900000000000065);
    *(v25 + 48) = v39;
    *(v25 + 56) = v44;
    v26 = off_1EE0C7F08;
    *(v25 + 64) = qword_1EE0C7F00;
    *(v25 + 72) = v26;
    v27 = off_1EE0C7EA8;
    *(v25 + 80) = qword_1EE0C7EA0;
    *(v25 + 88) = v27;
    *(v22 + 64) = 0x2D6C616963657073;
    *(v22 + 72) = 0xEF736E6F69746361;
    *(v22 + 80) = 0;
    *(v22 + 88) = v25;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7D3B4D0;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7D42910;
    v30 = off_1EE0C8058;
    *(v29 + 32) = qword_1EE0C8050;
    *(v29 + 40) = v30;
    v31 = off_1EE0C7ED8;
    *(v29 + 48) = qword_1EE0C7ED0;
    *(v29 + 56) = v31;
    v32 = off_1EE0C7F38;
    *(v29 + 64) = qword_1EE0C7F30;
    *(v29 + 72) = v32;
    v33 = off_1EE0C7F68;
    *(v29 + 80) = qword_1EE0C7F60;
    *(v29 + 88) = v33;
    strcpy((v28 + 32), "basic-actions");
    *(v28 + 46) = -4864;
    *(v28 + 48) = 0;
    *(v28 + 56) = v29;
    *(v2 + 32) = 0x746C7561666544;
    *(v2 + 40) = 0xE700000000000000;
    *(v2 + 48) = v22;
    *(v2 + 56) = v28;
  }

  return v2;
}

uint64_t ArticleBlueprintRouteModelFactory.__allocating_init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ArticleBlueprintRouteModelFactory.init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(a1, a2, a3);
  return v6;
}

uint64_t ArticleBlueprintRouteRequest.init<A>(item:headline:blockingBehavior:groupDataContext:feedKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = sub_1D7D29F0C();
  v13 = sub_1D7D29ECC();
  v15 = v14;
  (*(*(v12 - 8) + 8))(a1, v12);
  *a6 = v13;
  *(a6 + 8) = v15;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = a2;
  *(a6 + 40) = v11;
  v16 = a4[1];
  *(a6 + 48) = *a4;
  *(a6 + 64) = v16;
  *(a6 + 73) = *(a4 + 25);
  v17 = *(type metadata accessor for ArticleBlueprintRouteRequest(0) + 36);
  v18 = sub_1D7D2EB7C();
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v17, a5, v18);
}

uint64_t ArticleBlueprintRouteModelFactory.create(request:observer:action:pluginIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v166 = a5;
  v162 = a3;
  v163 = a4;
  v156 = a2;
  v185 = a7;
  v167 = *v7;
  v9 = v167;
  v168 = a6;
  v10 = MEMORY[0x1E69E6720];
  sub_1D7C57218(0, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v160 = &v152 - v13;
  v161 = type metadata accessor for AlertOpenBlockedStory();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v14);
  v155 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1D7D2EB3C();
  v184 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v16);
  v164 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v183 = &v152 - v20;
  v21 = sub_1D7D2EB7C();
  v158 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v7;
  v25 = *(v9 + 80);
  v157 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v152 - v28;
  v178 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v178, v30);
  v179 = (&v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v173, v32);
  v175 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v176 = &v152 - v36;
  v172 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v172, v37);
  v39 = (&v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v171, v40);
  v187 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C57218(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v177 = &v152 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v174 = &v152 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v152 - v50;
  v52 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v52, v53);
  v182 = (&v152 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BlueprintArticleViewerToken();
  v186 = swift_allocObject();
  v181 = a1;
  v55 = a1[4];
  v56 = [v55 routeURL];
  v180 = v52;
  v169 = v55;
  if (v56)
  {
    v57 = v56;
    sub_1D7D281EC();

    v58 = sub_1D7D2824C();
    (*(*(v58 - 8) + 56))(v51, 0, 1, v58);
    sub_1D7C57534(v51, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v153 = v24;
    v154 = v25;
    v152 = v21;
    v59 = v167;
    v58 = sub_1D7D2824C();
    (*(*(v58 - 8) + 56))(v51, 1, 1, v58);
    sub_1D7C57534(v51, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    if ([v55 contentType] != 1)
    {
      v97 = v181;
      sub_1D7C5727C((v181 + 6), v190);
      if (BYTE8(v190[2]) == 255)
      {
        sub_1D79DA7DC(v190, &qword_1EE0BC150);
        *v192 = v154;
        *&v192[8] = *(v59 + 88);
        *&v192[24] = *(v59 + 104);
        v126 = type metadata accessor for BlueprintArticleViewerBlueprintProvider();
        v127 = v170;
        v106 = v97;
        v128 = *(*v170 + 120);
        v101 = *v106;
        v102 = v106[1];
        swift_bridgeObjectRetain_n();
        v129 = v186;

        v130 = sub_1D7A3D77C(v127 + v128, v101, v102, v129);

        v195 = v126;
        v196 = &protocol witness table for BlueprintArticleViewerBlueprintProvider<A>;
        v194[0] = v130;
      }

      else
      {
        *v192 = v190[0];
        *&v192[16] = v190[1];
        *&v192[25] = *(&v190[1] + 9);
        v98 = v154;
        *&v190[0] = v154;
        *(v190 + 8) = *(v59 + 88);
        *(&v190[1] + 8) = *(v59 + 104);
        v99 = type metadata accessor for BlueprintGroupArticleViewerBlueprintProvider();
        v100 = v29;
        (*(v157 + 16))(v29, v170 + *(*v170 + 120), v98);
        v101 = *v97;
        v102 = v97[1];
        sub_1D7A0E924(v192, v190);
        v103 = type metadata accessor for ArticleBlueprintRouteRequest(0);
        v104 = v153;
        (*(v158 + 16))(v153, v97 + *(v103 + 36), v152);
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v105 = v55;
        v106 = v97;
        v107 = v186;

        v108 = BlueprintGroupArticleViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:initialArticleIdentifier:token:groupDataContext:mainHeadline:feedKind:)(v100, v101, v102, v107, v190, v105, v104);
        v195 = v99;
        v196 = &protocol witness table for BlueprintGroupArticleViewerBlueprintProvider<A>;
        v194[0] = v108;
        sub_1D7A0EA20(v192);
      }

      v85 = v183;
      v84 = v184;
      v83 = v182;
      v86 = v106;
      v131 = v162;
      v132 = v166;
      if (v106[3])
      {
        v133 = v106[2];
        v134 = v106[3];
      }

      else
      {

        v132 = v166;
        v133 = v101;
        v134 = v102;
      }

      *v192 = v101;
      *&v192[8] = v102;
      *&v192[16] = v169;
      *&v192[24] = v169;
      *&v192[32] = v132;
      *&v192[40] = v168;
      *&v193 = v133;
      *(&v193 + 1) = v134;
      sub_1D799CC84(v194, v191);
      v135 = v170 + *(*v170 + 128);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v131 = *(v135 + 1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for ArticleBlueprintRouteModel();
      v136 = swift_allocObject();
      *(v136 + 192) = 0;
      swift_unknownObjectWeakInit();
      *(v136 + 248) = 0u;
      *(v136 + 232) = 0u;
      *(v136 + 216) = 0u;
      *(v136 + 200) = 0u;
      v137 = *&v192[16];
      *(v136 + 16) = *v192;
      *(v136 + 32) = v137;
      v138 = v193;
      *(v136 + 48) = *&v192[32];
      *(v136 + 64) = v138;
      sub_1D79E14FC(v191, v136 + 80);
      *(v136 + 192) = v131;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRetain();
      sub_1D79F5B54(v192, v190);
      swift_unknownObjectRetain();
      sub_1D79F5B54(v192, v190);

      swift_unknownObjectRelease();
      v139 = *&v192[16];
      *(v136 + 120) = *v192;
      *(v136 + 136) = v139;
      v140 = v193;
      *(v136 + 152) = *&v192[32];
      *(v136 + 168) = v140;
      type metadata accessor for ArticleViewerBlueprintRouteModel();
      swift_allocObject();
      v141 = sub_1D7CA81CC(v136);
      swift_setDeallocating();
      v142 = *(v136 + 32);
      v188[0] = *(v136 + 16);
      v188[1] = v142;
      v143 = *(v136 + 64);
      v188[2] = *(v136 + 48);
      v188[3] = v143;
      sub_1D7A0AD5C(v188);
      __swift_destroy_boxed_opaque_existential_1(v136 + 80);
      v144 = *(v136 + 136);
      v189[0] = *(v136 + 120);
      v189[1] = v144;
      v145 = *(v136 + 168);
      v189[2] = *(v136 + 152);
      v189[3] = v145;
      sub_1D7A0AD5C(v189);
      sub_1D7B09318(v136 + 184);
      v146 = *(v136 + 216);
      v190[0] = *(v136 + 200);
      v190[1] = v146;
      v147 = *(v136 + 248);
      v190[2] = *(v136 + 232);
      v190[3] = v147;
      sub_1D79DA7DC(v190, &qword_1EE0C0600);
      swift_deallocClassInstance();
      sub_1D7A0AD5C(v192);
      sub_1D7C572F0();
      v149 = *(v148 + 48);
      *v83 = v141;
      sub_1D7C573E4(v163, v83 + v149, type metadata accessor for ArticleNavigationAction);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v194);
      goto LABEL_5;
    }
  }

  v60 = [v55 identifier];
  v61 = sub_1D7D3034C();
  v63 = v62;

  v64 = [swift_unknownObjectRetain() identifier];
  v65 = sub_1D7D3034C();
  v67 = v66;

  *v192 = v61;
  *&v192[8] = v63;
  *&v192[16] = v55;
  *&v192[32] = 0uLL;
  *&v193 = v65;
  *(&v193 + 1) = v67;
  swift_storeEnumTagMultiPayload();
  sub_1D7D2824C();
  v68 = v174;
  (*(*(v58 - 8) + 56))(v174, 1, 1, v58);
  v69 = *&v192[16];
  *v39 = *v192;
  v39[1] = v69;
  v70 = v193;
  v39[2] = *&v192[32];
  v39[3] = v70;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *(v39 + *(v172 + 20)) = MEMORY[0x1E69E7CC0];
  v71 = v176;
  sub_1D7C573E4(v39, v176, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v72 = type metadata accessor for ArticleViewerBlueprintProvider();
  v73 = swift_allocObject();
  sub_1D7C573E4(v71, v175, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7C57218(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  sub_1D79F5B54(v192, v190);
  v74 = sub_1D7D28ECC();
  sub_1D7C57384(v71, type metadata accessor for ArticleViewerBlueprint);
  *(v73 + 16) = v74;
  v75 = *&v192[16];
  v76 = v179;
  *v179 = *v192;
  v76[1] = v75;
  v77 = v193;
  v76[2] = *&v192[32];
  v76[3] = v77;
  swift_storeEnumTagMultiPayload();
  v78 = MEMORY[0x1E6968FB0];
  v79 = v177;
  sub_1D7C574B4(v68, v177, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v80 = swift_allocObject();
  *(&v190[1] + 1) = v72;
  *&v190[2] = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v190[0] = v73;
  sub_1D7C57384(v39, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7C57534(v68, &qword_1EE0CB770, v78);
  *(v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7C573E4(v76, v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79E14FC(v190, v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v79, v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7C5744C(v76, v80 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7C572F0();
  v82 = *(v81 + 48);
  v83 = v182;
  *v182 = v80;
  sub_1D7C5744C(v187, v83 + v82, type metadata accessor for ArticleNavigationAction);
  swift_storeEnumTagMultiPayload();
  v85 = v183;
  v84 = v184;
  v86 = v181;
LABEL_5:
  v87 = *(v86 + 20);
  if ((v87 & 0xFF00) != 0x200 && (v86[5] & 0x100) != 0)
  {
    v88 = *(v170 + *(*v170 + 136));
    v89 = [v169 sourceChannelID];
    if (v89 && (v90 = v89, v91 = [v88 hasMutedSubscriptionForTagID_], v90, v91))
    {
      v92 = *MEMORY[0x1E69B5E00];
      v93 = *(v84 + 104);
      v94 = v165;
      v93(v85, v92, v165);
      v95 = v92;
      v96 = v94;
    }

    else
    {
      v93 = *(v84 + 104);
      v96 = v165;
      v93(v85, *MEMORY[0x1E69B5DF8], v165);
      v95 = *MEMORY[0x1E69B5E00];
    }

    v109 = v164;
    v93(v164, v95, v96);
    v110 = v96;
    v111 = sub_1D7D2EB2C();
    v112 = *(v84 + 8);
    v112(v109, v110);
    v112(v85, v110);
    if (v111)
    {
      sub_1D7C573E4(v170 + *(*v170 + 144), v192, sub_1D7B55180);
      v113 = *&v192[24];
      if (*&v192[24])
      {
        v114 = v87;
        v115 = *&v192[32];
        __swift_project_boxed_opaque_existential_1(v192, *&v192[24]);
        LOBYTE(v190[0]) = v114;
        v116 = v160;
        (*(v115 + 8))(v169, v190, v113, v115);
        __swift_destroy_boxed_opaque_existential_1(v192);
        v117 = v161;
        if ((*(v159 + 48))(v116, 1, v161) != 1)
        {
          v118 = v155;
          sub_1D7C5744C(v116, v155, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7B55250();
          v120 = v119;
          v121 = swift_allocBox();
          v123 = v122;
          v124 = *(v120 + 48);
          v122[3] = v117;
          v122[4] = sub_1D7AD8D9C();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
          sub_1D7C5744C(v118, boxed_opaque_existential_1, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7C5744C(v83, v123 + v124, type metadata accessor for ArticleRouteModel);
          *v83 = v121;
          swift_storeEnumTagMultiPayload();
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D7C57384(v192, sub_1D7B55180);
        v116 = v160;
        (*(v159 + 56))(v160, 1, 1, v161);
      }

      sub_1D7C57534(v116, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory);
    }
  }

LABEL_27:
  v150 = v185;
  sub_1D7C5744C(v83, v185, type metadata accessor for ArticleRouteModel);
  result = type metadata accessor for ArticleBlueprintRouteResult(0);
  *(v150 + *(result + 20)) = v186;
  return result;
}

uint64_t ArticleBlueprintRouteModelFactory.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  sub_1D7B09318(v0 + *(*v0 + 128));

  sub_1D7C57384(v0 + *(*v0 + 144), sub_1D7B55180);
  return v0;
}

uint64_t ArticleBlueprintRouteModelFactory.__deallocating_deinit()
{
  ArticleBlueprintRouteModelFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t ArticleBlueprintRouteRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleBlueprintRouteRequest.parentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArticleBlueprintRouteRequest.feedKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleBlueprintRouteRequest(0) + 36);
  v4 = sub_1D7D2EB7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleBlueprintRouteRequest.init(feedHeadline:blockingBehavior:groupDataContext:feedKind:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  *a5 = sub_1D7D2ECBC();
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v11 = sub_1D7D2ED1C();
  v12 = sub_1D7D2ED3C();
  (*(*(v12 - 8) + 8))(a1, v12);
  *(a5 + 32) = v11;
  *(a5 + 40) = v9;
  v13 = a3[1];
  *(a5 + 48) = *a3;
  *(a5 + 64) = v13;
  *(a5 + 73) = *(a3 + 25);
  v14 = *(type metadata accessor for ArticleBlueprintRouteRequest(0) + 36);
  v15 = sub_1D7D2EB7C();
  v16 = *(*(v15 - 8) + 32);

  return v16(a5 + v14, a4, v15);
}

uint64_t ArticleBlueprintRouteRequest.init(feedHeadline:parentFeedItem:blockingBehavior:groupDataContext:feedKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v11 = MEMORY[0x1E69B5E80];
  sub_1D7C57218(0, &qword_1EC9E77A8, MEMORY[0x1E69B5E80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - v14;
  v16 = *a3;
  *a6 = sub_1D7D2ECBC();
  *(a6 + 8) = v17;
  sub_1D7C574B4(a2, v15, &qword_1EC9E77A8, v11);
  v18 = sub_1D7D2EB6C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_1D7C57534(v15, &qword_1EC9E77A8, MEMORY[0x1E69B5E80]);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_1D7D2EAFC();
    v21 = v22;
    (*(v19 + 8))(v15, v18);
  }

  *(a6 + 16) = v20;
  *(a6 + 24) = v21;
  v23 = sub_1D7D2ED1C();
  sub_1D7C57534(a2, &qword_1EC9E77A8, MEMORY[0x1E69B5E80]);
  v24 = sub_1D7D2ED3C();
  (*(*(v24 - 8) + 8))(a1, v24);
  *(a6 + 32) = v23;
  *(a6 + 40) = v16;
  v25 = a4[1];
  *(a6 + 48) = *a4;
  *(a6 + 64) = v25;
  *(a6 + 73) = *(a4 + 25);
  v26 = *(type metadata accessor for ArticleBlueprintRouteRequest(0) + 36);
  v27 = sub_1D7D2EB7C();
  return (*(*(v27 - 8) + 32))(a6 + v26, v30, v27);
}

uint64_t ArticleBlueprintRouteResult.token.getter()
{
  type metadata accessor for ArticleBlueprintRouteResult(0);
}

void sub_1D7C57218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C5727C(uint64_t a1, uint64_t a2)
{
  sub_1D799956C(0, &qword_1EE0BC150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C572F0()
{
  if (!qword_1EE0C36D0)
  {
    type metadata accessor for ArticleViewerBlueprintRouteModel();
    type metadata accessor for ArticleNavigationAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C36D0);
    }
  }
}

uint64_t sub_1D7C57384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C573E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C5744C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C574B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7C57218(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7C57534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C57218(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7C57634()
{
  sub_1D799956C(319, &qword_1EE0CBB10);
  if (v0 <= 0x3F)
  {
    sub_1D799621C();
    if (v1 <= 0x3F)
    {
      sub_1D799956C(319, qword_1EE0BD030);
      if (v2 <= 0x3F)
      {
        sub_1D799956C(319, &qword_1EE0BC150);
        if (v3 <= 0x3F)
        {
          sub_1D7D2EB7C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D7C57760()
{
  result = type metadata accessor for ArticleRouteModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BlueprintArticleViewerToken();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t HeadlinePublisherLogo.init(headline:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 sourceChannel];
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = [v4 theme];
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = [v5 bannerImageForWhiteBackground];
    swift_unknownObjectRelease();
    if (!v6)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = [v6 assetHandle];

    if (v5)
    {
      v6 = sub_1D7B6D340();
      v4 = sub_1D7B6D38C();
      goto LABEL_10;
    }
  }

  v6 = 0;
LABEL_9:
  v4 = 0;
LABEL_10:
  *a2 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v6;
  a2[4] = v4;
  v7 = [a1 sourceChannel];
  if (!v7)
  {
    v9 = 0;
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v8 = [v7 theme];
  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_16:
    v9 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  v9 = [v8 bannerImageForThemeBackground];
  swift_unknownObjectRelease();
  if (!v9)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v8 = [v9 assetHandle];

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = sub_1D7B6D340();
  v7 = sub_1D7B6D38C();
LABEL_19:
  a2[5] = v8;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = v9;
  a2[9] = v7;
  v10 = [a1 sourceChannel];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = [v10 theme];
  swift_unknownObjectRelease();
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v12 = [v11 bannerImageForMask];
  swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_24:
    swift_unknownObjectRelease();
    result = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_27;
  }

  v11 = [v12 assetHandle];

  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_26:
    result = 0;
    v13 = 0;
    goto LABEL_27;
  }

  v13 = sub_1D7B6D340();
  result = sub_1D7B6D38C();
LABEL_27:
  a2[10] = v11;
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = v13;
  a2[14] = result;
  return result;
}

uint64_t HeadlinePublisherLogo.assetHandle(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D7D2F47C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69B62C8])
  {
    return sub_1D7C57C0C(v2, a2);
  }

  if (v11 == *MEMORY[0x1E69B62C0])
  {
    v2 += 80;
    return sub_1D7C57C0C(v2, a2);
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7C57C0C(uint64_t a1, uint64_t a2)
{
  sub_1D7C57C70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C57C70()
{
  if (!qword_1EE0BB328)
  {
    sub_1D7ADE33C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB328);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI15AssetHandleType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D7C57D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D7C57D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7C57E0C(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1D7C57E6C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  v8 = a1[3];
  v12[2] = a1[2];
  v12[3] = v8;
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  return (*(v10 + 16))(v12, a2, a3, v9, v10);
}

uint64_t sub_1D7C57EF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RouteModel();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v3;
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 2);
  v21 = *(a1 + 1);
  v22 = v14;
  v23 = *(a1 + 3);
  v15 = v11[5];
  v16 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v15);
  v20[0] = v13;
  v20[1] = v12;
  (*(v16 + 24))(v20, a2, a3, v15, v16);
  v17 = v11[10];
  v18 = v11[11];
  __swift_project_boxed_opaque_existential_1(v11 + 7, v17);
  *v10 = v13;
  v10[1] = v12;
  swift_storeEnumTagMultiPayload();

  RouterType.route(to:)(v10, v17, v18);
  return sub_1D7C580C4(v10);
}

uint64_t sub_1D7C58038(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  v8 = a1[3];
  v12[2] = a1[2];
  v12[3] = v8;
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  return (*(v10 + 32))(v12, a2, a3, v9, v10);
}

uint64_t sub_1D7C580C4(uint64_t a1)
{
  v2 = type metadata accessor for RouteModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EndOfRecipeExpandRequest()
{
  result = qword_1EC9E77B0;
  if (!qword_1EC9E77B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7C58194()
{
  result = type metadata accessor for EndOfRecipeFeedGapLocation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id URL.hasValidURLComponents.getter()
{
  v0 = sub_1D7D281BC();
  v1 = [v0 fc_hasValidArticleComponents];

  return v1;
}

uint64_t URL.newsArticleID.getter()
{
  v0 = sub_1D7D281BC();
  v1 = [v0 fc_NewsArticleID];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D7D3034C();

  return v2;
}

void sub_1D7C582C8(void *a1, void *a2)
{
  if (sub_1D7C583A4(a2))
  {
    v5 = *(v2 + 16);
    v6 = [a2 identifier];
    if (!v6)
    {
      sub_1D7D3034C();
      v6 = sub_1D7D3031C();
    }

    v7 = [a1 jsonRepresentation];
    [v5 markArticle:v6 withReadingPositionJSON:v7];
  }
}

uint64_t sub_1D7C583A4(void *a1)
{
  if ([a1 needsRapidUpdates])
  {
    if (qword_1EE0CAF08 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_disableBookmarking))
  {
    if (qword_1EE0CAF08 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v3 = *(v1 + 16);
  v4 = [a1 articleID];
  if (!v4)
  {
    sub_1D7D3034C();
    v4 = sub_1D7D3031C();
  }

  v5 = [v3 hasArticleCompletedReading_];

  if (v5)
  {
    if (qword_1EE0CAF08 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v6 = [a1 articleID];
  if (!v6)
  {
    sub_1D7D3034C();
    v6 = sub_1D7D3031C();
  }

  v7 = [v3 hasArticleCompletedListening_];

  if (v7)
  {
    if (qword_1EE0CAF08 == -1)
    {
LABEL_17:
      sub_1D7D30C6C();
      sub_1D79F3AB0();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D7D3B4D0;
      v9 = [a1 articleID];
      v10 = sub_1D7D3034C();
      v12 = v11;

      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 64) = sub_1D79D6AE0();
      *(v8 + 32) = v10;
      *(v8 + 40) = v12;
      sub_1D7D29AAC();

      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  return sub_1D7C58CC8(a1);
}

uint64_t sub_1D7C5886C(void *a1)
{
  if ((sub_1D7C583A4(a1) & 1) == 0)
  {
    return 0;
  }

  result = sub_1D7C58AFC(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [*(v1 + 24) value];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  if (v5[OBJC_IVAR___NAPlayableArticleInfo_paused])
  {
    goto LABEL_24;
  }

  v8 = *&v5[OBJC_IVAR___NAPlayableArticleInfo_articleId];
  v7 = *&v5[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];

  v9 = [a1 articleID];
  if (!v9)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_18:

LABEL_24:

    goto LABEL_25;
  }

  v10 = v9;
  v11 = sub_1D7D3034C();
  v13 = v12;

  if (!v7)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  if (v8 == v11 && v7 == v13)
  {
  }

  else
  {
    v15 = sub_1D7D3197C();

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  v16 = *&v6[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress];
  sub_1D7C58E80(a1);
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = sub_1D7CE6344(v17, v16);

  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69B70B0]) initWithPosition:v19 source:1];

  if (v20)
  {
    swift_unknownObjectRelease();
    return v20;
  }

LABEL_25:
  swift_getObjectType();
  v21 = sub_1D7C440C0();
  v23 = v22;
  v25 = v24;
  v26 = sub_1D7C59178(a1, v4, v21, v22, v24 & 1);
  sub_1D7C59550(v21, v23, v25 & 1);
  if (v26)
  {
    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    v27 = sub_1D7C44688();
    v29 = v28;
    v31 = v30;
    v32 = sub_1D7C59178(a1, v4, v27, v28, v30 & 1);
    swift_unknownObjectRelease();
    sub_1D7C59550(v27, v29, v31 & 1);
    return v32;
  }
}

uint64_t sub_1D7C58AFC(void *a1)
{
  v3 = *(v1 + 16);
  sub_1D7AF3EC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  v5 = [a1 identifier];
  v6 = sub_1D7D3034C();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D7D3062C();

  v10 = [v3 historyItemsForArticleIDs_];

  sub_1D7C595B4();
  v11 = sub_1D7D3063C();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1D7D3167C();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA70EF00](0, v11);
    goto LABEL_6;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
    swift_unknownObjectRetain();
LABEL_6:

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C58CC8(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    v2 = [a1 role];
    if (v2 <= 8)
    {
      if (((1 << v2) & 0x1E3) != 0)
      {
        return 1;
      }

      if (qword_1EE0CAF08 != -1)
      {
        swift_once();
      }

      sub_1D7D30C6C();
      sub_1D79F3AB0();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D7D3B4D0;
      v5 = [a1 articleID];
      v6 = sub_1D7D3034C();
      v8 = v7;

      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1D79D6AE0();
      *(v4 + 32) = v6;
      *(v4 + 40) = v8;
      sub_1D7D29AAC();
    }
  }

  return 0;
}

uint64_t sub_1D7C58E1C()
{

  return swift_deallocClassInstance();
}

id sub_1D7C58E80(void *a1)
{
  v2 = sub_1D7D3039C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 respondsToSelector_])
  {
    result = [a1 narrativeTrackTextRanges];
    if (!result)
    {
      return result;
    }

    v9 = result;
    sub_1D7D3034C();

    sub_1D7D3038C();
    v10 = sub_1D7D3035C();
    v12 = v11;
    (*(v3 + 8))(v7, v2);
    if (v12 >> 60 != 15)
    {
      sub_1D7D27F5C();
      swift_allocObject();
      sub_1D7D27F4C();
      sub_1D7C59560();
      sub_1D7D27F3C();
      sub_1D79EA2D0(v10, v12);

      return v13[3];
    }
  }

  return 0;
}

id sub_1D7C59178(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1D7A86838();
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (a4)
    {
      v15 = objc_allocWithZone(MEMORY[0x1E69CE020]);
      v16 = sub_1D7D3031C();
      v17 = [v15 initWithJSONRepresentation_];

      if (v17 || (v18 = objc_allocWithZone(MEMORY[0x1E69CE0C0]), v19 = sub_1D7D3031C(), v17 = [v18 initWithJSONRepresentation_], v19, v17))
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E69B70B0]) initWithPosition:v17 source:0];

        return v20;
      }

      return 0;
    }

    v27 = [a2 readingPositionSavedAt];
    if (!v27)
    {
      v38 = sub_1D7D2833C();
      (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
      sub_1D7AE148C(v14);
      return 0;
    }

    v28 = v27;
    sub_1D7D2830C();

    v29 = sub_1D7D2833C();
    (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    sub_1D7AE148C(v14);
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D79F3AB0();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D7D3B4D0;
    v40 = 0;
    v41 = 0xE000000000000000;
    v39[1] = a2;
    sub_1D7C595B4();
    sub_1D7D315DC();
    v31 = v40;
    v32 = v41;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1D79D6AE0();
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    sub_1D7D29AAC();
    goto LABEL_20;
  }

  sub_1D7C58E80(a1);
  if (!v23)
  {
    return 0;
  }

  v24 = *(v22 + 16);
  if (!v24)
  {
LABEL_15:

LABEL_20:

    return 0;
  }

  v25 = (v22 + 64);
  while (*(v25 - 4) > *&a3 || *(v25 - 3) <= *&a3)
  {
    v25 += 6;
    if (!--v24)
    {
      goto LABEL_15;
    }
  }

  v33 = *v25;
  v34 = objc_allocWithZone(MEMORY[0x1E69CE0C0]);

  v35 = sub_1D7D3031C();

  v36 = [v34 initWithComponentIdentifier:v35 canvasWidth:*&v33 relativePageOffset:0.0 characterIndex:0.0 relativeTextOffset:0.0];

  v37 = [objc_allocWithZone(MEMORY[0x1E69B70B0]) initWithPosition:v36 source:1];
  return v37;
}

uint64_t sub_1D7C59550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D7C59560()
{
  result = qword_1EC9E9120;
  if (!qword_1EC9E9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E9120);
  }

  return result;
}

unint64_t sub_1D7C595B4()
{
  result = qword_1EE0BEF60;
  if (!qword_1EE0BEF60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEF60);
  }

  return result;
}

id sub_1D7C59634()
{
  v1 = v0;
  v2 = *(v0 + 16);
  result = [v2 respondsToSelector_];
  if (result)
  {
    v4 = [v2 articleConfig];
    if (v4 && (v5 = v4, sub_1D7D3028C(), v5, sub_1D7C59824(), sub_1D7D3097C(), (v19 & 1) == 0))
    {
      if (v14)
      {
        v7 = 0;
      }

      else
      {
        v7 = v13;
      }

      v8 = objc_opt_self();
      v9 = [v8 enabledForCurrentLevel_];
      if (v16)
      {
        v10 = 200;
      }

      else
      {
        v10 = v15;
      }

      if (v18)
      {
        v11 = 0;
      }

      else
      {
        v11 = v17;
      }

      v12 = [v8 enabledForCurrentLevel_];
      return [objc_allocWithZone(MEMORY[0x1E69CE058]) initWithNewAdsEnabled:1 limitTextSelectionEnabled:v9 textSelectionLimit:v10 writingToolsDisabled:v12];
    }

    else
    {
      v6 = *(v1 + 24);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C597C0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7C59824()
{
  result = qword_1EE0CA608;
  if (!qword_1EE0CA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CA608);
  }

  return result;
}

uint64_t sub_1D7C59878(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7C59898(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D7C598D8(void *a1)
{
  v3 = v1;
  sub_1D7C59F80(0, &qword_1EC9E7820, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C59F2C();
  sub_1D7D31B1C();
  v13[15] = 0;
  sub_1D7D3185C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v13[14] = 1;
    v13[12] = v11;
    sub_1D7D3187C();
    v13[11] = 2;
    sub_1D7D3185C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D7C59A7C()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1D7C59AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7C59BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7C59AFC(uint64_t a1)
{
  v2 = sub_1D7C59F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C59B38(uint64_t a1)
{
  v2 = sub_1D7C59F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7C59B74@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7C59D1C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D7C59BF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x80000001D7D7B5F0 == a2;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D7B610 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D7D7B630 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7C59D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7C59F80(0, &qword_1EE0BEB80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C59F2C();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1D7D3177C();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1D7D3179C();
  v23 = 2;
  v15 = sub_1D7D3177C();
  v16 = v10;
  v18 = v17;
  (*(v7 + 8))(v16, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13 & 1;
  v20 = BYTE4(v22);
  *(a2 + 12) = v22;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18 & 1;
  return result;
}

unint64_t sub_1D7C59F2C()
{
  result = qword_1EE0CA628;
  if (!qword_1EE0CA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CA628);
  }

  return result;
}

void sub_1D7C59F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C59F2C();
    v7 = a3(a1, &type metadata for ArticleConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C59FF8()
{
  result = qword_1EC9E7828;
  if (!qword_1EC9E7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7828);
  }

  return result;
}

unint64_t sub_1D7C5A050()
{
  result = qword_1EE0CA610;
  if (!qword_1EE0CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CA610);
  }

  return result;
}

unint64_t sub_1D7C5A0A8()
{
  result = qword_1EE0CA618;
  if (!qword_1EE0CA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CA618);
  }

  return result;
}

void sub_1D7C5A144()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D7D2FE1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7C5A1D0(void *a1)
{
  v3 = v1;
  sub_1D7C5F57C(0, &qword_1EC9E78F0, sub_1D7C5F468, &type metadata for TableOfContentsHeaderViewLayout.LayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C5F468();
  sub_1D7D31B1C();
  v11 = v3[1];
  v22 = *v3;
  v23 = v11;
  v24 = 0;
  type metadata accessor for CGRect(0);
  sub_1D7C5F5E4(&qword_1EC9E6668, type metadata accessor for CGRect);
  sub_1D7D318BC();
  if (!v2)
  {
    v21 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
    LOBYTE(v22) = 1;
    sub_1D7D2FE1C();
    sub_1D7C5F5E4(&qword_1EC9E78F8, MEMORY[0x1E69B6760]);
    sub_1D7D318BC();
    v12 = v21;
    v13 = (v3 + *(v21 + 24));
    v14 = v13[1];
    v22 = *v13;
    v23 = v14;
    v24 = 2;
    sub_1D7D318BC();
    v15 = (v3 + *(v12 + 28));
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v24 = 3;
    sub_1D7D318BC();
    v17 = (v3 + *(v12 + 32));
    v18 = v17[1];
    v22 = *v17;
    v23 = v18;
    v24 = 4;
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7C5A4D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_1D7D2FE1C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C5F57C(0, &qword_1EC9E78D8, sub_1D7C5F468, &type metadata for TableOfContentsHeaderViewLayout.LayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C5F468();
  v32 = v9;
  v14 = v34;
  sub_1D7D31AFC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v10;
  v34 = a1;
  v17 = v30;
  v16 = v31;
  type metadata accessor for CGRect(0);
  v37 = 0;
  v18 = sub_1D7C5F5E4(&qword_1EC9E6628, type metadata accessor for CGRect);
  sub_1D7D317DC();
  v27 = v18;
  v19 = v36;
  *v13 = v35;
  *(v13 + 1) = v19;
  LOBYTE(v35) = 1;
  sub_1D7C5F5E4(&qword_1EC9E78E8, MEMORY[0x1E69B6760]);
  sub_1D7D317DC();
  (*(v29 + 32))(&v13[v15[5]], v5, v16);
  v37 = 2;
  sub_1D7D317DC();
  v20 = &v13[v15[6]];
  v21 = v36;
  *v20 = v35;
  *(v20 + 1) = v21;
  v37 = 3;
  sub_1D7D317DC();
  v22 = &v13[v15[7]];
  v23 = v36;
  *v22 = v35;
  *(v22 + 1) = v23;
  v37 = 4;
  sub_1D7D317DC();
  (*(v17 + 8))(v32, v33);
  v24 = &v13[v15[8]];
  v25 = v36;
  *v24 = v35;
  *(v24 + 1) = v25;
  sub_1D7C5F4BC(v13, v28);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1D7C5F520(v13);
}

unint64_t sub_1D7C5A958()
{
  v1 = *v0;
  v2 = 0x656D617266;
  v3 = 0x6562614C65746164;
  v4 = 0xD000000000000017;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7C5AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7C5F90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7C5AA28(uint64_t a1)
{
  v2 = sub_1D7C5F468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C5AA64(uint64_t a1)
{
  v2 = sub_1D7C5F468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7C5AAD0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1D7C5F5E4(&qword_1EC9E7858, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x1EEE45C50](a1, v10, v11, v12, v13, v14);
}

double sub_1D7C5AC9C@<D0>(uint64_t a1@<X8>)
{
  sub_1D7C5FACC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D7C5ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v27 - v10);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v27 - v14;
  v44 = a1;
  v16 = sub_1D7D2882C();
  v17 = *(v16 - 8);
  v32 = *(v17 + 56);
  v33 = v17 + 56;
  v29 = v16;
  v32(v15, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4034000000000000;
  *v11 = v18;
  v34 = *MEMORY[0x1E69D7488];
  v39 = *(v8 + 104);
  v39(v11);
  sub_1D7C5E854(0);
  v20 = v19;
  v21 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  v30 = v20;
  v31 = v21;
  sub_1D7D287FC();
  v22 = *(v8 + 8);
  v27[1] = v8 + 8;
  v28 = v22;
  v22(v11, v7);
  sub_1D7C5E7C8(v15);
  v44 = a1;
  v23 = v32;
  v32(v15, 1, 1, v16);
  (v39)(v11, *MEMORY[0x1E69D7460], v7);
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  sub_1D7D2877C();
  v24 = v28;
  v28(v11, v7);
  sub_1D7C5E7C8(v15);
  v44 = a1;
  v23(v15, 1, 1, v29);
  v25 = swift_allocObject();
  *(v25 + 16) = 0x4034000000000000;
  *v11 = v25;
  (v39)(v11, v34, v7);
  sub_1D7D287FC();
  v24(v11, v7);
  return sub_1D7C5E7C8(v15);
}

uint64_t sub_1D7C5B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v27 - v11);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v27 - v15;
  v43 = a1;
  v17 = sub_1D7D2882C();
  v18 = *(v17 - 8);
  v33 = *(v18 + 56);
  v34 = v18 + 56;
  v29 = v17;
  v33(v16, 1, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = 0x405E000000000000;
  *v12 = v19;
  v32 = *MEMORY[0x1E69D7480];
  v20 = *(v9 + 104);
  v20(v12);
  v27 = v9 + 104;
  v42 = a2;
  sub_1D7C5E854(0);
  v30 = v21;
  v31 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  sub_1D7D2879C();
  v28 = *(v9 + 8);
  v38 = v9 + 8;
  v28(v12, v8);
  sub_1D7C5E7C8(v16);
  v43 = a1;
  v22 = v17;
  v23 = v33;
  v33(v16, 1, 1, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4034000000000000;
  *v12 = v24;
  (v20)(v12, v32, v8);
  sub_1D7D287FC();
  v25 = v28;
  v28(v12, v8);
  sub_1D7C5E7C8(v16);
  v43 = a1;
  v23(v16, 1, 1, v29);
  (v20)(v12, *MEMORY[0x1E69D74A8], v8);
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_1D7D2879C();
  v25(v12, v8);
  return sub_1D7C5E7C8(v16);
}

uint64_t sub_1D7C5B50C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v45 = sub_1D7D3004C();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v4);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D3006C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D7D2EEBC();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C5E88C();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v48 = v16;
  v38 = *(v16 - 8);
  v17 = v38;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v37 - v19);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v37 - v23;
  v50 = a1;
  v25 = sub_1D7D2882C();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  KeyPath = swift_getKeyPath();
  v26 = sub_1D7D2896C();
  v27 = swift_allocBox();
  v29 = v28;
  v30 = *MEMORY[0x1E69D7340];
  v31 = sub_1D7D2895C();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69D7360], v26);
  *v20 = v27;
  (*(v17 + 104))(v20, *MEMORY[0x1E69D7478], v48);
  v32 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0);
  v33 = v43;
  v49 = *(v43 + *(v32 + 24));
  v34 = type metadata accessor for TableOfContentsHeaderViewModel();
  (*(v9 + 16))(v12, v33 + *(v34 + 24), v39);
  (*(v3 + 104))(v42, *MEMORY[0x1E69B6848], v45);

  sub_1D7D3005C();
  sub_1D7C5E998();
  sub_1D7D3007C();
  sub_1D7C5E624();
  sub_1D7C5F5E4(&qword_1EC9E78A8, sub_1D7C5E998);
  sub_1D7C5F5E4(&qword_1EC9E78B0, MEMORY[0x1E69B6858]);
  v35 = v44;
  sub_1D7D2884C();
  sub_1D7C5E854(0);
  sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  sub_1D7D287BC();

  (*(v46 + 8))(v35, v47);
  (*(v38 + 8))(v20, v48);
  return sub_1D7C5E7C8(v24);
}

uint64_t sub_1D7C5BB70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = a4;
  v64 = a3;
  v65 = sub_1D7C5E624;
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v55 - v10);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v55 - v14;
  v79 = a1;
  v76 = sub_1D7D2882C();
  v16 = *(v76 - 8);
  v69 = *(v16 + 56);
  v77 = v16 + 56;
  v69(v15, 1, 1, v76);
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *v11 = v17;
  v66 = *MEMORY[0x1E69D73E8];
  v18 = *(v8 + 104);
  v73 = v8 + 104;
  v74 = v18;
  v18(v11);
  sub_1D7C5E854(0);
  v72 = v19;
  v20 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  v70 = sub_1D7C5F5E4(&qword_1EC9E78B8, sub_1D7BDCCE4);
  v21 = a2;
  v68 = v20;
  sub_1D7D287DC();

  v75 = *(v8 + 8);
  v78 = v8 + 8;
  v71 = v7;
  v75(v11, v7);
  v22 = v15;
  sub_1D7C5E7C8(v15);
  v57 = a1;
  v79 = a1;
  v23 = v76;
  v24 = v69;
  v69(v15, 1, 1, v76);
  v25 = swift_allocObject();
  *(v25 + 16) = 0x4024000000000000;
  *v11 = v25;
  v63 = *MEMORY[0x1E69D7488];
  v26 = v74;
  v74(v11);
  sub_1D7D287FC();
  v27 = v71;
  v75(v11, v71);
  sub_1D7C5E7C8(v22);
  v79 = a1;
  v24(v22, 1, 1, v23);
  swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = v64;
  *(v28 + 16) = v64;
  *v11 = v28;
  v26(v11, *MEMORY[0x1E69D7440], v27);
  sub_1D7C5EA34();
  v60 = v30;
  sub_1D7C5F57C(0, &qword_1EC9E78C8, v65, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D70D8]);
  v32 = v31;
  v61 = v31;
  v33 = *(v31 - 8);
  v58 = *(v33 + 72);
  v59 = *(v33 + 80);
  v34 = v33;
  v35 = (v59 + 32) & ~v59;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7D3B4D0;
  v56 = v35;
  *(v36 + v35) = 0x4079000000000000;
  v37 = *MEMORY[0x1E69D70B8];
  v38 = *(v34 + 104);
  v62 = v34 + 104;
  v65 = v38;
  (v38)(v36 + v35, v37, v32);
  v39 = v29;
  sub_1D7D287DC();

  v40 = v71;
  v41 = v75;
  v75(v11, v71);
  sub_1D7C5E7C8(v22);
  v42 = v57;
  v79 = v57;
  v43 = v69;
  v69(v22, 1, 1, v76);
  v44 = swift_allocObject();
  *(v44 + 16) = 0x4024000000000000;
  *v11 = v44;
  (v74)(v11, v63, v40);
  sub_1D7D287FC();
  v41(v11, v40);
  sub_1D7C5E7C8(v22);
  v79 = v42;
  v43(v22, 1, 1, v76);
  swift_getKeyPath();
  v45 = swift_allocObject();
  v46 = v67;
  *(v45 + 16) = v67;
  *v11 = v45;
  (v74)(v11, v66, v40);
  v47 = v58;
  v48 = v56;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1D7D3B4E0;
  v50 = v49 + v48;
  v51 = v46;
  sub_1D7D2890C();
  v52 = v61;
  v53 = v65;
  (v65)(v50, *MEMORY[0x1E69D6FC0], v61);
  sub_1D7D2890C();
  (v53)(v50 + v47, *MEMORY[0x1E69D6FD0], v52);
  sub_1D7D287DC();

  v75(v11, v71);
  return sub_1D7C5E7C8(v22);
}

uint64_t sub_1D7C5C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22[-v14];
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v22[-v18];
  v27 = a1;
  v20 = sub_1D7D2882C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  (*(v12 + 104))(v15, *MEMORY[0x1E69D7460], v11);
  sub_1D7C5E6E8(0);
  sub_1D7C5F5E4(&qword_1EC9E7878, sub_1D7C5E6E8);
  sub_1D7D2879C();
  (*(v12 + 8))(v15, v11);
  return sub_1D7C5E7C8(v19);
}

uint64_t sub_1D7C5C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v35 = a1;
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v28 - v10);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - v14;
  v46 = a1;
  v16 = sub_1D7D2882C();
  v17 = *(v16 - 8);
  v33 = *(v17 + 56);
  v34 = v17 + 56;
  v30 = v16;
  v33(v15, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4034000000000000;
  *v11 = v18;
  v36 = *MEMORY[0x1E69D7488];
  v41 = *(v8 + 104);
  v41(v11);
  sub_1D7C5E854(0);
  v20 = v19;
  v21 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  v31 = v20;
  v32 = v21;
  sub_1D7D287FC();
  v22 = *(v8 + 8);
  v28 = v8 + 8;
  v29 = v22;
  v22(v11, v7);
  sub_1D7C5E7C8(v15);
  v23 = v35;
  v46 = v35;
  v24 = v33;
  v33(v15, 1, 1, v16);
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  (v41)(v11, *MEMORY[0x1E69D7460], v7);
  sub_1D7D2877C();
  v25 = v29;
  v29(v11, v7);
  sub_1D7C5E7C8(v15);
  v46 = v23;
  v24(v15, 1, 1, v30);
  v26 = swift_allocObject();
  *(v26 + 16) = 0x4034000000000000;
  *v11 = v26;
  (v41)(v11, v36, v7);
  sub_1D7D287FC();
  v25(v11, v7);
  return sub_1D7C5E7C8(v15);
}

uint64_t sub_1D7C5C9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22[-v14];
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v22[-v18];
  v27 = a1;
  v20 = sub_1D7D2882C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  (*(v12 + 104))(v15, *MEMORY[0x1E69D7460], v11);
  sub_1D7C5E854(0);
  sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  sub_1D7D2879C();
  (*(v12 + 8))(v15, v11);
  return sub_1D7C5E7C8(v19);
}

uint64_t sub_1D7C5CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v74 = a2;
  v81 = a1;
  v75 = sub_1D7D3004C();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v7);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D3006C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D7D2EEBC();
  v12 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v13);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C5E88C();
  v76 = v15;
  v73 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v62 = v18;
  v82 = *(v18 - 8);
  v20 = v82;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = (&v61 - v22);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v61 - v26;
  v86 = a1;
  v78 = sub_1D7D2882C();
  v28 = *(v78 - 8);
  v79 = *(v28 + 56);
  v80 = v28 + 56;
  v79(v27, 1, 1, v78);
  KeyPath = swift_getKeyPath();
  v29 = sub_1D7D2896C();
  v30 = swift_allocBox();
  v32 = v31;
  v33 = *MEMORY[0x1E69D7340];
  v34 = sub_1D7D2895C();
  (*(*(v34 - 8) + 104))(v32, v33, v34);
  (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69D7360], v29);
  *v23 = v30;
  v35 = *MEMORY[0x1E69D7478];
  v77 = *(v20 + 104);
  v66 = v20 + 104;
  v77(v23, v35, v19);
  v36 = type metadata accessor for TableOfContentsHeaderViewLayout.Context(0);
  v37 = v74;
  v85 = *(v74 + *(v36 + 24));
  v38 = type metadata accessor for TableOfContentsHeaderViewModel();
  (*(v12 + 16))(v63, v37 + *(v38 + 24), v64);
  (*(v6 + 104))(v69, *MEMORY[0x1E69B6848], v75);

  sub_1D7D3005C();
  sub_1D7C5E998();
  sub_1D7D3007C();
  sub_1D7C5E624();
  v69 = MEMORY[0x1E69D6F60];
  sub_1D7C5F5E4(&qword_1EC9E78A8, sub_1D7C5E998);
  sub_1D7C5F5E4(&qword_1EC9E78B0, MEMORY[0x1E69B6858]);
  v39 = v68;
  sub_1D7D2884C();
  sub_1D7C5E854(0);
  v41 = v40;
  v75 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  v74 = v41;
  sub_1D7D287BC();

  (*(v73 + 8))(v39, v76);
  v42 = *(v82 + 8);
  v82 += 8;
  v76 = v42;
  v43 = v62;
  v42(v23, v62);
  sub_1D7C5E7C8(v27);
  v44 = v81;
  v86 = v81;
  v46 = v78;
  v45 = v79;
  v79(v27, 1, 1, v78);
  v47 = swift_allocObject();
  *(v47 + 16) = 0x4034000000000000;
  v48 = v23;
  *v23 = v47;
  LODWORD(v73) = *MEMORY[0x1E69D7488];
  (v77)(v23);
  sub_1D7D287FC();
  v76(v23, v43);
  sub_1D7C5E7C8(v27);
  v86 = v44;
  v45(v27, 1, 1, v46);
  v83 = v70;
  v84 = v71;
  v49 = v77;
  v77(v23, *MEMORY[0x1E69D7460], v43);
  sub_1D7D2877C();
  v50 = v76;
  v76(v23, v43);
  sub_1D7C5E7C8(v27);
  v51 = v81;
  v86 = v81;
  v52 = v78;
  v79(v27, 1, 1, v78);
  v53 = swift_allocObject();
  *(v53 + 16) = 0x4024000000000000;
  *v48 = v53;
  v49(v48, v73, v43);
  sub_1D7D287FC();
  v50(v48, v43);
  sub_1D7C5E7C8(v27);
  v86 = v51;
  v54 = v79;
  v79(v27, 1, 1, v52);
  swift_getKeyPath();
  v55 = swift_allocObject();
  v56 = v72;
  *(v55 + 16) = v72;
  *v48 = v55;
  v49(v48, *MEMORY[0x1E69D7440], v43);
  sub_1D7C5F5E4(&qword_1EC9E78B8, sub_1D7BDCCE4);
  v57 = v56;
  sub_1D7D287DC();

  v58 = v76;
  v76(v48, v43);
  sub_1D7C5E7C8(v27);
  v86 = v81;
  v54(v27, 1, 1, v78);
  v59 = swift_allocObject();
  *(v59 + 16) = 0x4024000000000000;
  *v48 = v59;
  v77(v48, v73, v43);
  sub_1D7D287FC();
  v58(v48, v43);
  return sub_1D7C5E7C8(v27);
}

uint64_t sub_1D7C5D6E8(uint64_t a1, void *a2, void *a3)
{
  v49 = a3;
  KeyPath = a1;
  v50 = sub_1D7C5E624;
  sub_1D7C5F57C(0, &qword_1EC9E7860, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v51 = v5;
  v52 = v7;
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v40 - v9);
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v40 - v13;
  v53 = a1;
  v15 = sub_1D7D2882C();
  v16 = *(v15 - 8);
  v41 = *(v16 + 56);
  v42 = v16 + 56;
  v41(v14, 1, 1, v15);
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *v10 = v17;
  v18 = *MEMORY[0x1E69D73E8];
  v40 = *(v7 + 104);
  v40(v10, v18, v6);
  sub_1D7C5E854(0);
  v46 = v19;
  v45 = sub_1D7C5F5E4(&qword_1EC9E7888, sub_1D7C5E854);
  v47 = sub_1D7C5F5E4(&qword_1EC9E78B8, sub_1D7BDCCE4);
  v20 = a2;
  sub_1D7D287DC();

  v21 = v51;
  v22 = *(v52 + 8);
  v52 += 8;
  v48 = v22;
  v22(v10, v51);
  v44 = v14;
  sub_1D7C5E7C8(v14);
  v53 = KeyPath;
  v41(v14, 1, 1, v15);
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  v24 = v49;
  *(v23 + 16) = v49;
  *v10 = v23;
  v40(v10, v18, v21);
  sub_1D7C5EA34();
  v25 = v50;
  sub_1D7C5F57C(0, &qword_1EC9E78C8, v50, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D70D8]);
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = 2 * v29;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7D3C680;
  v33 = v32 + v30;
  v34 = v24;
  sub_1D7D2890C();
  v35 = *(v28 + 104);
  v35(v33, *MEMORY[0x1E69D6FC0], v27);
  sub_1D7D2890C();
  v35(v33 + v29, *MEMORY[0x1E69D6FD0], v27);
  v36 = *MEMORY[0x1E69D7070];
  sub_1D7C5F57C(0, &qword_1EC9E78D0, v25, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v37 - 8) + 104))(v33 + v31, v36, v37);
  v35(v33 + v31, *MEMORY[0x1E69D7080], v27);
  v38 = v44;
  sub_1D7D287DC();

  v48(v10, v51);
  return sub_1D7C5E7C8(v38);
}

uint64_t sub_1D7C5DC8C(uint64_t a1)
{
  v81 = a1;
  v2 = sub_1D7D2897C();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v78 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = (a1 + *(type metadata accessor for TableOfContentsHeaderViewLayout.Context(0) + 20));
  v5 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v89 = type metadata accessor for TableOfContentsHeaderViewModel();
  v6 = (a1 + *(v89 + 28));
  v7 = *v6;
  v83 = v6[1];
  v84 = v7;
  v8 = *v5;
  sub_1D7C5E678(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
  v88 = v9;
  inited = swift_initStackObject();
  v77 = xmmword_1D7D3B4E0;
  *(inited + 16) = xmmword_1D7D3B4E0;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v12 = v8[5];
  v13 = v8[6];
  v14 = __swift_project_boxed_opaque_existential_1(v8 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v14);
  v18 = v72 - v17;
  (*(v15 + 16))(v72 - v17, v16);
  v19 = *(v13 + 32);
  v86 = v11;
  v19(&v103, v12, v13);
  (*(v15 + 8))(v18, v12);
  v99[0] = v103;
  v99[1] = v104;
  v99[2] = v105;
  v99[3] = v106;
  v100 = v107;
  v20 = *(&v103 + 1);
  sub_1D7AB37E8(v99);
  v21 = sub_1D7992EFC(0, &qword_1EE0BECE8);
  v87 = v21;
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = sub_1D7992EFC(0, &qword_1EE0BED40);
  v85 = v22;
  v24 = sub_1D7D3105C();
  *(inited + 104) = v23;
  *(inited + 80) = v24;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  v75 = v25;
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D7D3031C();
  type metadata accessor for Key(0);
  v84 = v28;
  v83 = sub_1D7C5F5E4(&qword_1EE0BEF20, type metadata accessor for Key);
  v29 = sub_1D7D3027C();

  v76 = [v26 initWithString:v27 attributes:v29];

  v30 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v31 = (v81 + *(v89 + 32));
  v32 = *v31;
  v72[1] = v31[1];
  v73 = v32;
  v33 = *v30;
  v34 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v34 setLineBreakMode_];
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1D7D3C680;
  *(v35 + 32) = v86;
  v37 = v33[5];
  v36 = v33[6];
  v38 = __swift_project_boxed_opaque_existential_1(v33 + 2, v37);
  v39 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v38);
  v42 = v72 - v41;
  (*(v39 + 16))(v72 - v41, v40);
  (*(v36 + 32))(&v103, v37, v36);
  (*(v39 + 8))(v42, v37);
  v101[2] = v105;
  v101[3] = v106;
  v102 = v107;
  v101[0] = v103;
  v101[1] = v104;
  v43 = v104;
  sub_1D7AB37E8(v101);
  *(v35 + 40) = v43;
  v44 = v85;
  *(v35 + 64) = v87;
  *(v35 + 72) = v44;
  v74 = v23;
  *(v35 + 80) = sub_1D7D3105C();
  v45 = *MEMORY[0x1E69DB688];
  *(v35 + 104) = v23;
  *(v35 + 112) = v45;
  *(v35 + 144) = sub_1D7992EFC(0, &unk_1EE0BEEB0);
  *(v35 + 120) = v34;
  v46 = v45;
  v47 = v34;
  sub_1D7A5092C(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v48 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v49 = sub_1D7D3031C();
  v50 = sub_1D7D3027C();

  v73 = [v48 initWithString:v49 attributes:v50];

  v51 = *__swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v52 = swift_initStackObject();
  *(v52 + 16) = v77;
  *(v52 + 32) = v86;
  v53 = v51[5];
  v54 = v51[6];
  v55 = __swift_project_boxed_opaque_existential_1(v51 + 2, v53);
  v56 = *(v53 - 8);
  v57 = MEMORY[0x1EEE9AC00](v55, v55);
  v59 = v72 - v58;
  (*(v56 + 16))(v72 - v58, v57);
  (*(v54 + 32))(&v94, v53, v54);
  (*(v56 + 8))(v59, v53);
  v105 = v96;
  v106 = v97;
  v107 = v98;
  v103 = v94;
  v104 = v95;
  v60 = *(&v95 + 1);
  sub_1D7AB37E8(&v103);
  *(v52 + 40) = v60;
  v61 = v85;
  *(v52 + 64) = v87;
  *(v52 + 72) = v61;
  v62 = v74;
  v63 = sub_1D7D3105C();
  *(v52 + 104) = v62;
  *(v52 + 80) = v63;
  sub_1D7A5092C(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v65 = sub_1D7D3031C();
  v66 = sub_1D7D3027C();

  v67 = [v64 initWithString:v65 attributes:v66];

  v68 = v76;
  v90 = v81;
  v91 = v76;
  v69 = v73;
  v92 = v67;
  v93 = v73;
  (*(v79 + 104))(v78, *MEMORY[0x1E69D7378], v80);
  sub_1D7C5E708(0, &qword_1EC9E7848, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v70 = sub_1D7D2899C();

  return v70;
}

unint64_t sub_1D7C5E624()
{
  result = qword_1EC9E7850;
  if (!qword_1EC9E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7850);
  }

  return result;
}

void sub_1D7C5E678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7C5E708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableOfContentsHeaderViewLayout;
    v8[1] = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(255);
    v8[2] = sub_1D7C5E624();
    v8[3] = sub_1D7C5F5E4(&qword_1EC9E7858, type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7C5E7C8(uint64_t a1)
{
  sub_1D7C5E678(0, &qword_1EC9E7868, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C5E88C()
{
  if (!qword_1EC9E7890)
  {
    sub_1D7C5E998();
    sub_1D7D3007C();
    sub_1D7C5E624();
    sub_1D7C5F5E4(&qword_1EC9E78A8, sub_1D7C5E998);
    sub_1D7C5F5E4(&qword_1EC9E78B0, MEMORY[0x1E69B6858]);
    v0 = sub_1D7D2885C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7890);
    }
  }
}

void sub_1D7C5E998()
{
  if (!qword_1EC9E7898)
  {
    sub_1D7D2FE1C();
    sub_1D7C5F5E4(&qword_1EC9E78A0, MEMORY[0x1E69B6760]);
    v0 = sub_1D7D2875C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7898);
    }
  }
}

void sub_1D7C5EA34()
{
  if (!qword_1EC9E78C0)
  {
    sub_1D7C5F57C(255, &qword_1EC9E78C8, sub_1D7C5E624, &type metadata for TableOfContentsHeaderViewLayout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E78C0);
    }
  }
}

uint64_t sub_1D7C5EAC4(uint64_t a1)
{
  v81 = a1;
  v2 = sub_1D7D2897C();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v78 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = (a1 + *(type metadata accessor for TableOfContentsHeaderViewLayout.Context(0) + 20));
  v5 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v89 = type metadata accessor for TableOfContentsHeaderViewModel();
  v6 = (a1 + *(v89 + 28));
  v7 = *v6;
  v83 = v6[1];
  v84 = v7;
  v8 = *v5;
  sub_1D7C5E678(0, &qword_1EE0BE830, sub_1D79D69BC, MEMORY[0x1E69E6F90]);
  v88 = v9;
  inited = swift_initStackObject();
  v77 = xmmword_1D7D3B4E0;
  *(inited + 16) = xmmword_1D7D3B4E0;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v12 = v8[5];
  v13 = v8[6];
  v14 = __swift_project_boxed_opaque_existential_1(v8 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v14);
  v18 = v72 - v17;
  (*(v15 + 16))(v72 - v17, v16);
  v19 = *(v13 + 32);
  v86 = v11;
  v19(&v103, v12, v13);
  (*(v15 + 8))(v18, v12);
  v99[0] = v103;
  v99[1] = v104;
  v99[2] = v105;
  v99[3] = v106;
  v100 = v107;
  v20 = *(&v103 + 1);
  sub_1D7AB37E8(v99);
  v21 = sub_1D7992EFC(0, &qword_1EE0BECE8);
  v87 = v21;
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = sub_1D7992EFC(0, &qword_1EE0BED40);
  v85 = v22;
  v24 = sub_1D7D3105C();
  *(inited + 104) = v23;
  *(inited + 80) = v24;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  v75 = v25;
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D7D3031C();
  type metadata accessor for Key(0);
  v84 = v28;
  v83 = sub_1D7C5F5E4(&qword_1EE0BEF20, type metadata accessor for Key);
  v29 = sub_1D7D3027C();

  v76 = [v26 initWithString:v27 attributes:v29];

  v30 = __swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v31 = (v81 + *(v89 + 32));
  v32 = *v31;
  v72[1] = v31[1];
  v73 = v32;
  v33 = *v30;
  v34 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v34 setLineBreakMode_];
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1D7D3C680;
  *(v35 + 32) = v86;
  v37 = v33[5];
  v36 = v33[6];
  v38 = __swift_project_boxed_opaque_existential_1(v33 + 2, v37);
  v39 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v38);
  v42 = v72 - v41;
  (*(v39 + 16))(v72 - v41, v40);
  (*(v36 + 32))(&v103, v37, v36);
  (*(v39 + 8))(v42, v37);
  v101[2] = v105;
  v101[3] = v106;
  v102 = v107;
  v101[0] = v103;
  v101[1] = v104;
  v43 = v104;
  sub_1D7AB37E8(v101);
  *(v35 + 40) = v43;
  v44 = v85;
  *(v35 + 64) = v87;
  *(v35 + 72) = v44;
  v74 = v23;
  *(v35 + 80) = sub_1D7D3105C();
  v45 = *MEMORY[0x1E69DB688];
  *(v35 + 104) = v23;
  *(v35 + 112) = v45;
  *(v35 + 144) = sub_1D7992EFC(0, &unk_1EE0BEEB0);
  *(v35 + 120) = v34;
  v46 = v45;
  v47 = v34;
  sub_1D7A5092C(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v48 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v49 = sub_1D7D3031C();
  v50 = sub_1D7D3027C();

  v73 = [v48 initWithString:v49 attributes:v50];

  v51 = *__swift_project_boxed_opaque_existential_1(v82, v82[3]);
  v52 = swift_initStackObject();
  *(v52 + 16) = v77;
  *(v52 + 32) = v86;
  v53 = v51[5];
  v54 = v51[6];
  v55 = __swift_project_boxed_opaque_existential_1(v51 + 2, v53);
  v56 = *(v53 - 8);
  v57 = MEMORY[0x1EEE9AC00](v55, v55);
  v59 = v72 - v58;
  (*(v56 + 16))(v72 - v58, v57);
  (*(v54 + 32))(&v94, v53, v54);
  (*(v56 + 8))(v59, v53);
  v105 = v96;
  v106 = v97;
  v107 = v98;
  v103 = v94;
  v104 = v95;
  v60 = *(&v95 + 1);
  sub_1D7AB37E8(&v103);
  *(v52 + 40) = v60;
  v61 = v85;
  *(v52 + 64) = v87;
  *(v52 + 72) = v61;
  v62 = v74;
  v63 = sub_1D7D3105C();
  *(v52 + 104) = v62;
  *(v52 + 80) = v63;
  sub_1D7A5092C(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v65 = sub_1D7D3031C();
  v66 = sub_1D7D3027C();

  v67 = [v64 initWithString:v65 attributes:v66];

  v68 = v76;
  v90 = v81;
  v91 = v76;
  v69 = v73;
  v92 = v73;
  v93 = v67;
  (*(v79 + 104))(v78, *MEMORY[0x1E69D7378], v80);
  sub_1D7C5E708(0, &qword_1EC9E7848, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v70 = sub_1D7D2899C();

  return v70;
}

unint64_t sub_1D7C5F468()
{
  result = qword_1EC9E78E0;
  if (!qword_1EC9E78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E78E0);
  }

  return result;
}

uint64_t sub_1D7C5F4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C5F520(uint64_t a1)
{
  v2 = type metadata accessor for TableOfContentsHeaderViewLayout.LayoutAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C5F57C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D7C5F5E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7C5F664()
{
  result = type metadata accessor for TableOfContentsHeaderViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_1D7C5F700();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D3007C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D7C5F700()
{
  result = qword_1EE0CC8C8;
  if (!qword_1EE0CC8C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CC8C8);
  }

  return result;
}

uint64_t sub_1D7C5F764(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D7C5F7AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1D7C5F808()
{
  result = qword_1EC9E7910;
  if (!qword_1EC9E7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7910);
  }

  return result;
}

unint64_t sub_1D7C5F860()
{
  result = qword_1EC9E7918;
  if (!qword_1EC9E7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7918);
  }

  return result;
}

unint64_t sub_1D7C5F8B8()
{
  result = qword_1EC9E7920;
  if (!qword_1EC9E7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7920);
  }

  return result;
}

uint64_t sub_1D7C5F90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D7D7B650 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xEE00656D6172466CLL || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D7B670 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D7D7B690 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7C5FACC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7C5E678(0, qword_1EC9E7928, MEMORY[0x1E69B6760], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 1;
  sub_1D7BDCCE4();
  swift_allocObject();
  v6 = sub_1D7D2876C();
  v7 = sub_1D7D2FE1C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1D7C5E998();
  swift_allocObject();
  v8 = sub_1D7D2876C();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_allocObject();
  v9 = sub_1D7D2876C();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_allocObject();
  v10 = sub_1D7D2876C();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_allocObject();
  result = sub_1D7D2876C();
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = result;
  return result;
}

uint64_t type metadata accessor for TitleViewArticleViewerFeatureTransition()
{
  result = qword_1EE0C1198;
  if (!qword_1EE0C1198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C5FD18()
{
  sub_1D7C61E88(319, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D7C5FDA0(uint64_t a1)
{
  v2 = v1;
  v312 = a1;
  sub_1D7C61E88(0, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v310 = v289 - v5;
  v6 = sub_1D7D2F47C();
  v308 = *(v6 - 8);
  v309 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v296 = v289 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v294 = v289 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v300 = v289 - v14;
  v15 = sub_1D7D2AC3C();
  v304 = *(v15 - 8);
  v305 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v295 = v289 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v293 = v289 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v298 = v289 - v23;
  sub_1D7C61E88(0, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v299 = v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v292 = v289 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v297 = v289 - v32;
  v33 = sub_1D7D2ACCC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v303 = v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v301 = v289 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v313 = v289 - v42;
  v43 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43, v46);
  v306 = v289 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v307 = v289 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v302 = v289 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = v289 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = (v289 - v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  v311 = v289 - v63;
  sub_1D7C61EDC();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v64, v66);
  v68 = v289 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    v290 = v34;
    v291 = v33;
    v69 = type metadata accessor for TitleViewArticleViewerFeatureTransition();
    v314 = v68;
    v70 = *(v69 + 20);
    v71 = *(v65 + 48);
    sub_1D7C62004(v2, v314, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
    v289[1] = v2;
    v72 = v2 + v70;
    v73 = v314;
    sub_1D7C62004(v72, &v314[v71], qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
    v74 = *(v44 + 48);
    if (v74(v73, 1, v43) == 1)
    {
      if (v74(v73 + v71, 1, v43) == 1)
      {
        sub_1D7C622AC(v73, sub_1D7C61EDC);
        return;
      }

      v88 = v311;
      sub_1D7C61F5C(v73 + v71, v311);
      v89 = __swift_project_boxed_opaque_existential_1((v88 + 16), *(v88 + 40));
      v90 = *v88;
      v91 = *(v88 + 8);
      v92 = *(v88 + 56);
      v93 = *(v88 + 64);
      v94 = *(v88 + 72);
      v95 = *(v88 + 80);
      v307 = *(v88 + 88);
      LODWORD(v306) = *(v88 + 96);
      v97 = *(v43 + 36);
      v96 = *(v43 + 40);
      v98 = *v89;
      v99 = v297;
      sub_1D7C62004(v88 + v96, v297, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
      v100 = v290;
      v101 = *(v290 + 48);
      v102 = v291;
      if (v101(v99, 1, v291) == 1)
      {
        __swift_project_boxed_opaque_existential_1((v98 + 72), *(v98 + 96));
        sub_1D7B5B084(v90, 0, v88 + v97, v313);
        if (v101(v99, 1, v102) != 1)
        {
          sub_1D7C62174(v99, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
        }
      }

      else
      {
        (*(v100 + 32))(v313, v99, v102);
      }

      v115 = objc_opt_self();
      v116 = v298;
      sub_1D7D2AC8C();
      v117 = sub_1D7D2AC2C();
      (*(v304 + 8))(v116, v305);
      if (!v117)
      {
        v117 = [v115 blackColor];
      }

      v118 = [v115 whiteColor];
      v119 = [v115 ts:v117 dynamicColor:v118 withDarkStyleVariant:?];

      v120 = [objc_allocWithZone(MEMORY[0x1E69B70E0]) initWithTextColor_];
      [*&v91[qword_1EE0C0538] setStyler_];

      v121 = [v90 sourceChannel];
      if (v121)
      {
        v122 = [v121 name];
        swift_unknownObjectRelease();
      }

      else
      {
        v122 = [v90 title];
        if (!v122)
        {
          v310 = 0;
          v139 = 0xE000000000000000;
LABEL_37:
          v140 = v98;
          v141 = v91;
          [v141 setFrame_];
          v142 = MEMORY[0x1E69B62C0];
          if (UIAccessibilityIsInvertColorsEnabled())
          {
LABEL_50:
            v149 = *v142;
            v151 = v308;
            v150 = v309;
            v152 = v300;
            (*(v308 + 104))(v300, v149, v309);
            v153 = [v90 sourceChannel];
            MEMORY[0x1EEE9AC00](v153, v154);
            v155 = v313;
            v289[-6] = v152;
            v289[-5] = v155;
            v289[-4] = v156;
            v289[-3] = 0x4036000000000000;
            v289[-2] = v157;
            sub_1D7C54BEC();
            swift_allocObject();
            v158 = sub_1D7D2946C();
            swift_unknownObjectRelease();
            v159 = (*(v151 + 8))(v152, v150);
            MEMORY[0x1EEE9AC00](v159, v160);
            v289[-4] = v140;
            v289[-3] = v141;
            v289[-2] = v158;
            sub_1D7C62094();
            sub_1D7D294BC();
            v161 = swift_allocObject();
            v162 = v310;
            v161[2] = v141;
            v161[3] = v162;
            v161[4] = v139;
            v163 = swift_allocObject();
            *(v163 + 16) = sub_1D7C6232C;
            *(v163 + 24) = v161;
            v164 = v141;

            v165 = sub_1D7D2934C();
            sub_1D7D293AC();

            v166 = swift_allocObject();
            v166[2] = v164;
            v166[3] = v162;
            v166[4] = v139;
            v167 = v164;
            v168 = sub_1D7D2934C();
            sub_1D7D293DC();

            (*(v290 + 8))(v313, v291);
            [v167 setAlpha_];

            v169 = sub_1D7D30D8C();
            [v169 setTitleView_];

            sub_1D79EB1FC();
            v170 = swift_allocObject();
            *(v170 + 16) = xmmword_1D7D3C670;
            *(v170 + 32) = v167;
            sub_1D7B0DB88(v170, 0, 0, 0.25, 0.0);

            v131 = v311;
LABEL_107:
            sub_1D7C622AC(v131, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
            sub_1D7C62174(v314, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
            return;
          }

          sub_1D7992EFC(0, &unk_1EE0BF098);
          v143 = sub_1D7D30C1C();
          if (v143 && (v144 = v143, v145 = [v143 keyWindow], v144, v145))
          {
            v146 = [v145 overrideUserInterfaceStyle];

            v147 = (v146 == 0) & v306;
            if (!v146)
            {
              v146 = v307;
            }

            if ((v147 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v146 = v307;
            if (!v306)
            {
              goto LABEL_48;
            }
          }

          v148 = [v141 traitCollection];
          v146 = [v148 userInterfaceStyle];

LABEL_48:
          if (v146 != 2)
          {
            v142 = MEMORY[0x1E69B62C8];
          }

          goto LABEL_50;
        }
      }

      v310 = sub_1D7D3034C();
      v139 = v138;

      goto LABEL_37;
    }

    v75 = v44;
    v76 = v310;
    sub_1D7C62004(v73, v310, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
    if (v74(v73 + v71, 1, v43) == 1)
    {
      sub_1D7C61F5C(v76, v60);
      v77 = v60[1];
      [v77 setAlpha_];
      sub_1D79EB1FC();
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1D7D3C670;
      *(v78 + 32) = v77;
      sub_1D7C621D0(v60, v56);
      v79 = v302;
      sub_1D7C621D0(v56, v302);
      v80 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v81 = swift_allocObject();
      sub_1D7C61F5C(v56, v81 + v80);
      if ([objc_opt_self() areAnimationsEnabled])
      {
        sub_1D7C622AC(v79, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
        v82 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.75, 1.0}];
        v83 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v82 timingParameters:0.15];
        v84 = swift_allocObject();
        *(v84 + 16) = v78;
        v319 = sub_1D7B10E9C;
        v320 = v84;
        aBlock = MEMORY[0x1E69E9820];
        v316 = 1107296256;
        v317 = sub_1D79FE25C;
        v318 = &block_descriptor_36;
        v85 = _Block_copy(&aBlock);

        [v83 addAnimations_];
        _Block_release(v85);
        v86 = swift_allocObject();
        *(v86 + 16) = sub_1D7C62234;
        *(v86 + 24) = v81;
        v319 = sub_1D7B10E14;
        v320 = v86;
        aBlock = MEMORY[0x1E69E9820];
        v316 = 1107296256;
        v317 = sub_1D7B0D7B0;
        v318 = &block_descriptor_33;
        v87 = _Block_copy(&aBlock);

        [v83 addCompletion_];
        _Block_release(v87);
        [v83 startAnimationAfterDelay_];
      }

      else
      {
        v111 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v111)
        {
          for (i = 0; i != v111; ++i)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v113 = MEMORY[0x1DA70EF00](i, v78);
            }

            else
            {
              if (i >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v113 = *(v78 + 8 * i + 32);
            }

            v114 = v113;
            [v113 setAlpha_];
          }
        }

        v123 = v302;
        v124 = *(v302 + 8);
        v125 = (v124 + qword_1EE0C0530);
        v126 = *(v124 + qword_1EE0C0530);
        v127 = *(v124 + qword_1EE0C0530 + 8);
        v128 = *(v124 + qword_1EE0C0530 + 16);
        *v125 = 0;
        v125[1] = 0;
        v125[2] = 0;
        sub_1D7C61FC0(v126, v127, v128);
        v129 = *(v124 + qword_1EE0C0538);
        v130 = [objc_allocWithZone(MEMORY[0x1E69B70E8]) init];
        [v129 applyTitleViewUpdate:v130 animation:3];

        sub_1D7C622AC(v123, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
      }

      v131 = v60;
      goto LABEL_107;
    }

    v103 = v43;
    v104 = v307;
    sub_1D7C61F5C(v76, v307);
    v105 = v306;
    sub_1D7C61F5C(v73 + v71, v306);
    v106 = [*v104 sourceChannelID];
    if (v106)
    {
      v107 = v106;
      v108 = sub_1D7D3034C();
      v110 = v109;
    }

    else
    {
      v108 = 0;
      v110 = 0;
    }

    v132 = v299;
    v313 = *v105;
    v133 = [v313 sourceChannelID];
    if (v133)
    {
      v134 = v133;
      v135 = sub_1D7D3034C();
      v137 = v136;

      if (v110)
      {
        if (v137)
        {
          if (v108 == v135 && v110 == v137)
          {
          }

          else
          {
            v171 = sub_1D7D3197C();

            if ((v171 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

LABEL_55:
          if (!CGRectEqualToRect(*(v104 + 56), *(v105 + 56)))
          {
            goto LABEL_58;
          }

          v172 = *(v105 + 96);
          if (*(v104 + 96))
          {
            if ((*(v105 + 96) & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (*(v104 + 88) != *(v105 + 88))
            {
              v172 = 1;
            }

            if (v172)
            {
LABEL_58:
              v173 = *(v104 + 8);
              v174 = (v173 + qword_1EE0C0530);
              v175 = *(v173 + qword_1EE0C0530);
              v176 = *(v173 + qword_1EE0C0530 + 8);
              v177 = *(v173 + qword_1EE0C0530 + 16);
              *v174 = 0;
              v174[1] = 0;
              v174[2] = 0;
              sub_1D7C61FC0(v175, v176, v177);
              v178 = *(v173 + qword_1EE0C0538);
              v179 = [objc_allocWithZone(MEMORY[0x1E69B70E8]) init];
              [v178 applyTitleViewUpdate:v179 animation:3];

              v180 = sub_1D7D30D8C();
              v181 = [v180 titleView];

              if (v181)
              {
                type metadata accessor for TitleView();
                v182 = swift_dynamicCastClass();
                if (v182)
                {
                  v311 = v182;
                  v183 = __swift_project_boxed_opaque_existential_1((v105 + 16), *(v105 + 40));
                  v184 = *(v105 + 56);
                  v185 = *(v105 + 64);
                  v186 = *(v105 + 72);
                  v187 = *(v105 + 80);
                  v303 = *(v105 + 88);
                  LODWORD(v302) = *(v105 + 96);
                  v188 = *(v103 + 36);
                  v189 = *v183;
                  v190 = v105 + *(v103 + 40);
                  v191 = v292;
                  sub_1D7C62004(v190, v292, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
                  v192 = v290;
                  v193 = *(v290 + 48);
                  v194 = v291;
                  v195 = v193(v191, 1, v291);
                  v312 = v189;
                  if (v195 == 1)
                  {
                    __swift_project_boxed_opaque_existential_1((v189 + 72), *(v189 + 96));
                    sub_1D7B5B084(v313, 0, v105 + v188, v301);
                    if (v193(v191, 1, v194) != 1)
                    {
                      sub_1D7C62174(v191, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
                    }
                  }

                  else
                  {
                    (*(v192 + 32))(v301, v191, v194);
                  }

                  v226 = objc_opt_self();
                  v227 = v293;
                  sub_1D7D2AC8C();
                  v228 = sub_1D7D2AC2C();
                  (*(v304 + 8))(v227, v305);
                  v229 = v311;
                  if (!v228)
                  {
                    v228 = [v226 blackColor];
                  }

                  v230 = [v226 whiteColor];
                  v231 = [v226 ts:v228 dynamicColor:v230 withDarkStyleVariant:?];

                  v232 = [objc_allocWithZone(MEMORY[0x1E69B70E0]) initWithTextColor_];
                  [*&v229[qword_1EE0C0538] setStyler_];

                  v233 = v313;
                  v234 = [v313 sourceChannel];
                  if (v234)
                  {
                    v235 = [v234 name];
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v235 = [v233 title];
                    if (!v235)
                    {
                      v310 = 0;
                      v305 = 0xE000000000000000;
LABEL_94:
                      [v229 setFrame_];
                      v259 = MEMORY[0x1E69B62C0];
                      if (UIAccessibilityIsInvertColorsEnabled())
                      {
LABEL_105:
                        v266 = *v259;
                        v267 = v308;
                        v268 = v309;
                        v269 = v294;
                        (*(v308 + 104))(v294, v266, v309);
                        v270 = [v313 sourceChannel];
                        v271 = v229;
                        v272 = v312;
                        MEMORY[0x1EEE9AC00](v270, v273);
                        v274 = v301;
                        v289[-6] = v269;
                        v289[-5] = v274;
                        v289[-4] = v275;
                        v289[-3] = 0x4036000000000000;
                        v289[-2] = v276;
                        sub_1D7C54BEC();
                        swift_allocObject();
                        v277 = sub_1D7D2946C();
                        swift_unknownObjectRelease();
                        v278 = (*(v267 + 8))(v269, v268);
                        MEMORY[0x1EEE9AC00](v278, v279);
                        v289[-4] = v272;
                        v289[-3] = v271;
                        v289[-2] = v277;
                        sub_1D7C62094();
                        sub_1D7D294BC();
                        v280 = swift_allocObject();
                        v281 = v310;
                        v280[2] = v271;
                        v280[3] = v281;
                        v282 = v305;
                        v280[4] = v305;
                        v283 = swift_allocObject();
                        *(v283 + 16) = sub_1D7C6232C;
                        *(v283 + 24) = v280;
                        v284 = v181;

                        v285 = sub_1D7D2934C();
                        sub_1D7D293AC();

                        v286 = swift_allocObject();
                        v286[2] = v271;
                        v286[3] = v281;
                        v286[4] = v282;
                        v287 = v284;
                        v288 = sub_1D7D2934C();
                        sub_1D7D293DC();

                        (*(v290 + 8))(v301, v291);
                        goto LABEL_106;
                      }

                      sub_1D7992EFC(0, &unk_1EE0BF098);
                      v260 = sub_1D7D30C1C();
                      if (v260 && (v261 = v260, v262 = [v260 keyWindow], v261, v262))
                      {
                        v263 = [v262 overrideUserInterfaceStyle];

                        v264 = v303;
                        if (v263)
                        {
                          v264 = v263;
                        }

                        if (((v263 == 0) & v302) == 0)
                        {
                          goto LABEL_103;
                        }
                      }

                      else
                      {
                        v264 = v303;
                        if (!v302)
                        {
                          goto LABEL_103;
                        }
                      }

                      v265 = [v229 traitCollection];
                      v264 = [v265 userInterfaceStyle];

LABEL_103:
                      if (v264 != 2)
                      {
                        v259 = MEMORY[0x1E69B62C8];
                      }

                      goto LABEL_105;
                    }
                  }

                  v310 = sub_1D7D3034C();
                  v305 = v258;

                  goto LABEL_94;
                }
              }

              v196 = __swift_project_boxed_opaque_existential_1((v105 + 16), *(v105 + 40));
              v197 = *(v105 + 8);
              v198 = *(v105 + 56);
              v199 = *(v105 + 64);
              v200 = *(v105 + 72);
              v201 = *(v105 + 80);
              v202 = *(v105 + 88);
              LODWORD(v310) = *(v105 + 96);
              v204 = *(v103 + 36);
              v203 = *(v103 + 40);
              v205 = *v196;
              sub_1D7C62004(v105 + v203, v132, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
              v206 = v290;
              v207 = *(v290 + 48);
              v208 = v291;
              if (v207(v132, 1, v291) == 1)
              {
                __swift_project_boxed_opaque_existential_1((v205 + 72), *(v205 + 96));
                sub_1D7B5B084(v313, 0, v105 + v204, v303);
                if (v207(v132, 1, v208) != 1)
                {
                  sub_1D7C62174(v132, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
                }
              }

              else
              {
                (*(v206 + 32))(v303, v132, v208);
              }

              v209 = objc_opt_self();
              v210 = v295;
              sub_1D7D2AC8C();
              v211 = sub_1D7D2AC2C();
              (*(v304 + 8))(v210, v305);
              if (!v211)
              {
                v211 = [v209 blackColor];
              }

              v212 = v313;
              v213 = [v209 whiteColor];
              v214 = [v209 ts:v211 dynamicColor:v213 withDarkStyleVariant:?];

              v215 = [objc_allocWithZone(MEMORY[0x1E69B70E0]) initWithTextColor_];
              [*&v197[qword_1EE0C0538] setStyler_];

              v216 = [v212 sourceChannel];
              if (v216)
              {
                v217 = [v216 name];
                swift_unknownObjectRelease();
              }

              else
              {
                v217 = [v212 title];
                if (!v217)
                {
                  v311 = 0;
                  v219 = 0xE000000000000000;
LABEL_74:
                  v220 = v205;
                  [v197 setFrame_];
                  v221 = MEMORY[0x1E69B62C0];
                  if (UIAccessibilityIsInvertColorsEnabled())
                  {
LABEL_91:
                    v237 = *v221;
                    v238 = v308;
                    v239 = v309;
                    v240 = v296;
                    (*(v308 + 104))(v296, v237, v309);
                    v241 = [v212 sourceChannel];
                    MEMORY[0x1EEE9AC00](v241, v242);
                    v243 = v303;
                    v289[-6] = v240;
                    v289[-5] = v243;
                    v289[-4] = v244;
                    v289[-3] = 0x4036000000000000;
                    v289[-2] = v245;
                    sub_1D7C54BEC();
                    swift_allocObject();
                    v246 = sub_1D7D2946C();
                    swift_unknownObjectRelease();
                    v247 = (*(v238 + 8))(v240, v239);
                    MEMORY[0x1EEE9AC00](v247, v248);
                    v289[-4] = v220;
                    v289[-3] = v197;
                    v289[-2] = v246;
                    sub_1D7C62094();
                    sub_1D7D294BC();
                    v249 = swift_allocObject();
                    v250 = v311;
                    v249[2] = v197;
                    v249[3] = v250;
                    v249[4] = v219;
                    v251 = swift_allocObject();
                    *(v251 + 16) = sub_1D7C62124;
                    *(v251 + 24) = v249;
                    v252 = v197;

                    v253 = sub_1D7D2934C();
                    sub_1D7D293AC();

                    v254 = swift_allocObject();
                    v254[2] = v252;
                    v254[3] = v250;
                    v254[4] = v219;
                    v255 = v252;
                    v256 = sub_1D7D2934C();
                    sub_1D7D293DC();

                    (*(v290 + 8))(v303, v291);
                    v257 = sub_1D7D30D8C();
                    [v257 setTitleView_];

LABEL_106:
                    sub_1D7C622AC(v306, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
                    v131 = v307;
                    goto LABEL_107;
                  }

                  sub_1D7992EFC(0, &unk_1EE0BF098);
                  v222 = sub_1D7D30C1C();
                  if (v222 && (v223 = v222, v224 = [v222 keyWindow], v223, v224))
                  {
                    v225 = [v224 overrideUserInterfaceStyle];

                    if (v225)
                    {
                      v202 = v225;
                    }

                    if (((v225 == 0) & v310) == 0)
                    {
                      goto LABEL_88;
                    }
                  }

                  else if (!v310)
                  {
LABEL_88:
                    if (v202 != 2)
                    {
                      v221 = MEMORY[0x1E69B62C8];
                    }

                    v212 = v313;
                    goto LABEL_91;
                  }

                  v236 = [v197 traitCollection];
                  v202 = [v236 userInterfaceStyle];

                  goto LABEL_88;
                }
              }

              v311 = sub_1D7D3034C();
              v219 = v218;

              goto LABEL_74;
            }
          }

          sub_1D7C622AC(v105, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
          v131 = v104;
          goto LABEL_107;
        }
      }

      else if (!v137)
      {
        goto LABEL_55;
      }
    }

    else if (!v110)
    {
      goto LABEL_55;
    }

    goto LABEL_58;
  }
}

void sub_1D7C61DE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (v1 + qword_1EE0C0530);
  v3 = *(v1 + qword_1EE0C0530);
  v4 = *(v1 + qword_1EE0C0530 + 8);
  v5 = *(v1 + qword_1EE0C0530 + 16);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  sub_1D7C61FC0(v3, v4, v5);
  v6 = *(v1 + qword_1EE0C0538);
  v7 = [objc_allocWithZone(MEMORY[0x1E69B70E8]) init];
  [v6 applyTitleViewUpdate:v7 animation:3];
}

void sub_1D7C61E88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7C61EDC()
{
  if (!qword_1EE0CB028)
  {
    sub_1D7C61E88(255, qword_1EE0CB030, type metadata accessor for TitleViewArticleViewerFeatureViewModel);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0CB028);
    }
  }
}

uint64_t sub_1D7C61F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7C61FC0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1D7C62004(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7C61E88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7C62094()
{
  if (!qword_1EE0BED10)
  {
    sub_1D7992EFC(255, &unk_1EE0BED20);
    sub_1D7992EFC(255, &qword_1EE0BECD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BED10);
    }
  }
}

uint64_t sub_1D7C62174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7C61E88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C621D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleViewArticleViewerFeatureViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C62234()
{
  v1 = *(type metadata accessor for TitleViewArticleViewerFeatureViewModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1D7C61DE8(v2);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7C622AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static UIControl.followChannelControl(for:)()
{
  v36 = [objc_allocWithZone(sub_1D7D2A1DC()) initWithFrame_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7D303CC();

  v3 = [v1 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7D303CC();

  v4 = [objc_opt_self() systemFontOfSize:13.0 weight:{*MEMORY[0x1E69DB960], 0x80000001D7D7B6D0}];
  sub_1D79F7B3C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3C680;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v7 = objc_opt_self();
  v34 = v6;
  v8 = [v7 labelColor];
  v33 = sub_1D7992EFC(0, &qword_1EE0BECE8);
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v33;
  *(inited + 72) = v9;
  v10 = sub_1D7992EFC(0, &qword_1EE0BED40);
  *(inited + 80) = v4;
  v11 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  *(inited + 144) = MEMORY[0x1E69E63B0];
  *(inited + 120) = 0xBFD3333333333333;
  v12 = v9;
  v13 = v11;
  v32 = v12;
  v31 = v13;
  v14 = v4;
  sub_1D7A5092C(inited);
  swift_setDeallocating();
  sub_1D79D69BC();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1D7D3031C();

  type metadata accessor for Key(0);
  sub_1D79F7BE0();
  v17 = sub_1D7D3027C();

  v35 = [v15 initWithString:v16 attributes:v17];

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1D7D3C680;
  *(v18 + 32) = v34;
  *(v18 + 40) = [v7 systemBackgroundColor];
  *(v18 + 64) = v33;
  *(v18 + 72) = v32;
  *(v18 + 80) = v14;
  *(v18 + 104) = v10;
  *(v18 + 112) = v31;
  *(v18 + 144) = MEMORY[0x1E69E63B0];
  *(v18 + 120) = 0xBFD3333333333333;
  v19 = v14;
  sub_1D7A5092C(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D7D3031C();

  v22 = sub_1D7D3027C();

  v23 = [v20 initWithString:v21 attributes:v22];

  v24 = [v7 labelColor];
  sub_1D7D2A1CC();
  v25 = [v7 labelColor];
  sub_1D7D2A18C();
  v26 = [v7 clearColor];
  sub_1D7D2A1BC();
  v27 = sub_1D7D2A19C();
  [v27 setAttributedText_];

  v28 = sub_1D7D2A1AC();
  v29 = v23;
  [v28 setAttributedText_];

  return v36;
}

uint64_t *BlueprintRecipeViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:initialRecipeIdentifier:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D7C63F20(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t BlueprintRecipeViewerBlueprintProvider.blueprint.getter()
{
  sub_1D7A0E91C();
}

char *BlueprintRecipeViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:token:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_1D7C63F84(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *BlueprintRecipeViewerBlueprintProvider.init(blueprintLayoutProvider:token:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D7C63F84(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1D7C62A48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7C62AE8(&v1);
    sub_1D7B5587C();
    sub_1D7D28F1C();

    return sub_1D7A4D754(&v1);
  }

  return result;
}

uint64_t sub_1D7C62AE8@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7A3C34C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = a1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C41C(0, v3, 0);
    v4 = v19;
    v5 = (v2 + 80);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v17 = *(v5 - 3);
      v18 = *(v5 - 6);
      v8 = *(v5 - 2);
      v16 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v19 + 16);
      v11 = *(v19 + 24);

      v12 = v7;

      if (v10 >= v11 >> 1)
      {
        sub_1D7A5C41C((v11 > 1), v10 + 1, 1);
      }

      v5 += 7;
      *(v19 + 16) = v10 + 1;
      v13 = (v19 + 72 * v10);
      v13[4] = v18;
      v13[5] = v6;
      v13[6] = v7;
      v13[7] = v17;
      v13[8] = v8;
      v13[9] = v16;
      v13[10] = v9;
      v13[12] = 0;
      --v3;
    }

    while (v3);

    a1 = v15;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
  a1[8] = 0x1000000000000000;
  return result;
}

uint64_t *BlueprintRecipeViewerBlueprintProvider.init(blueprintLayoutProvider:initialRecipeIdentifier:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_1D7C63AB0(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_1D7C62CCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7C62D84(&v1);
    sub_1D7B5587C();
    sub_1D7D28F1C();

    return sub_1D7A4D754(&v1);
  }

  return result;
}

uint64_t sub_1D7C62D84@<X0>(void *a1@<X8>)
{
  v2 = sub_1D7A3C34C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = a1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C41C(0, v3, 0);
    v4 = v19;
    v5 = (v2 + 80);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v17 = *(v5 - 3);
      v18 = *(v5 - 6);
      v8 = *(v5 - 2);
      v16 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v19 + 16);
      v11 = *(v19 + 24);

      v12 = v7;

      if (v10 >= v11 >> 1)
      {
        sub_1D7A5C41C((v11 > 1), v10 + 1, 1);
      }

      v5 += 7;
      *(v19 + 16) = v10 + 1;
      v13 = (v19 + 72 * v10);
      v13[4] = v18;
      v13[5] = v6;
      v13[6] = v7;
      v13[7] = v17;
      v13[8] = v8;
      v13[9] = v16;
      v13[10] = v9;
      v13[12] = 0;
      --v3;
    }

    while (v3);

    a1 = v15;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
  a1[8] = 0x1000000000000000;
  return result;
}

char *BlueprintRecipeViewerBlueprintProvider.__allocating_init(blueprintLayoutProvider:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1D7C643AC(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

char *BlueprintRecipeViewerBlueprintProvider.init(blueprintLayoutProvider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D7C643AC(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1D7C62FE8(uint64_t a1, uint64_t a2)
{
  sub_1D7C6473C(a1, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96), *(*a2 + 104), *(*a2 + 112));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D307BC();
  sub_1D7A1093C(0, &qword_1EC9E2CE0, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E62F8]);
  swift_getWitnessTable();
  sub_1D7C64A50();
  v2 = sub_1D7D3058C();

  v18 = *(v2 + 16);
  if (v18)
  {
    v4 = 0;
    v5 = (v2 + 80);
    v6 = MEMORY[0x1E69E7CC0];
    v17 = v2;
    while (v4 < *(v2 + 16))
    {
      v8 = *(v5 - 6);
      v7 = *(v5 - 5);
      v10 = *(v5 - 4);
      v9 = *(v5 - 3);
      v11 = *(v5 - 2);
      v12 = *(v5 - 1);
      v13 = *v5;

      v19 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1D79E3BD4(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1D79E3BD4((v14 > 1), v15 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 16) = v15 + 1;
      v16 = (v6 + 56 * v15);
      v16[4] = v8;
      v16[5] = v7;
      v16[6] = v19;
      v16[7] = v20;
      v16[8] = v11;
      v16[9] = v12;
      v16[10] = v13;
      v5 += 7;
      v2 = v17;
      if (v18 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_11:

    return sub_1D79E2A68(v6);
  }

  return result;
}

uint64_t sub_1D7C632D4@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v11 - v7;
  swift_getAssociatedConformanceWitness();
  sub_1D7D2ABCC();
  sub_1D7D2ABBC();
  v9 = (*(a1 + 8))(AssociatedTypeWitness, a1);
  result = (*(v5 + 8))(v8, AssociatedTypeWitness);
  *a2 = v9;
  return result;
}

uint64_t sub_1D7C63438(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v54 = a2;
  v8 = sub_1D7D29C1C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v45 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  swift_getAssociatedConformanceWitness();
  v20 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v45 - v29;
  v31 = *a1;
  v49 = *(v22 + 16);
  v50 = v31;
  v49(&v45 - v29, a1, TupleTypeMetadata2, v28);
  v32 = *(TupleTypeMetadata2 + 48);
  sub_1D7D2ABBC();
  v33 = *(v20 - 8);
  v46 = *(v33 + 8);
  v47 = v33 + 8;
  v46(&v30[v32], v20);
  v34 = AssociatedTypeWitness;
  sub_1D7D2A1EC();
  v35 = *(v58 + 8);
  v58 += 8;
  v35(v19, v34);
  (v49)(v25);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v51;
  sub_1D7D2ABBC();
  v46(&v25[v36], v20);
  v38 = v53;
  sub_1D7D2A1EC();
  v35(v37, v34);
  v39 = v57;
  v40 = v38;
  LOBYTE(v38) = sub_1D7D2AD3C();
  v41 = *(v55 + 8);
  v42 = v40;
  v43 = v56;
  v41(v42, v56);
  v41(v39, v43);
  return v38 & 1;
}

uint64_t sub_1D7C63850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D7D2ABCC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, TupleTypeMetadata2, v7);
  return (*(*(v4 - 8) + 32))(a2, &v9[*(TupleTypeMetadata2 + 48)], v4);
}

uint64_t *BlueprintRecipeViewerBlueprintProvider.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  return v0;
}

uint64_t BlueprintRecipeViewerBlueprintProvider.__deallocating_deinit()
{
  BlueprintRecipeViewerBlueprintProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D7C63AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v22 = a3;
  v21 = *v4;
  v7 = v21;
  v8 = *(v21 + 88);
  v9 = *(v21 + 80);
  *&v33 = swift_getAssociatedTypeWitness();
  *(&v33 + 1) = swift_getAssociatedTypeWitness();
  *&v34 = swift_getAssociatedConformanceWitness();
  *(&v34 + 1) = swift_getAssociatedConformanceWitness();
  v24 = sub_1D7D2A23C();
  v23 = *(v24 - 8);
  v11 = MEMORY[0x1EEE9AC00](v24, v10);
  v13 = &v20 - v12;
  v14 = *(*(v9 - 8) + 16);
  v15 = v4 + *(v21 + 128);
  v20 = a1;
  v14(v15, a1, v9, v11);
  *&v33 = MEMORY[0x1E69E7CC0];
  v37 = 0x1000000000000000;
  sub_1D7A1093C(0, &qword_1EC9E53F0, &type metadata for RecipeViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v4[2] = sub_1D7D28ECC();
  sub_1D7D2B76C();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v8;
  *(v17 + 32) = *(v21 + 96);
  *(v17 + 48) = *(v7 + 112);
  *(v17 + 56) = v16;
  v18 = v22;
  *(v17 + 64) = a2;
  *(v17 + 72) = v18;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(&v33);
  sub_1D7D2B76C();
  sub_1D7D28EDC();

  sub_1D7C62D84(v31);

  (*(v23 + 8))(v13, v24);
  v28 = v31[2];
  v29 = v31[3];
  v30 = v32;
  v27 = v31[1];
  v26 = v31[0];
  sub_1D7B5587C();
  sub_1D7D28F1C();

  v35 = v28;
  v36 = v29;
  v37 = v30;
  v33 = v26;
  v34 = v27;
  sub_1D7A4D754(&v33);
  return v4;
}

char *sub_1D7C63F84(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v16 = *v2;
  v4 = v16;
  v5 = *(v16 + 88);
  v6 = *(v16 + 80);
  *&v26 = swift_getAssociatedTypeWitness();
  *(&v26 + 1) = swift_getAssociatedTypeWitness();
  *&v27 = swift_getAssociatedConformanceWitness();
  *(&v27 + 1) = swift_getAssociatedConformanceWitness();
  v17 = sub_1D7D2A23C();
  v7 = *(v17 - 8);
  v9 = MEMORY[0x1EEE9AC00](v17, v8);
  v11 = &v15 - v10;
  (*(*(v6 - 8) + 16))(&v2[*(v16 + 128)], a1, v6, v9);
  *&v26 = MEMORY[0x1E69E7CC0];
  v30 = 0x1000000000000000;
  sub_1D7A1093C(0, &qword_1EC9E53F0, &type metadata for RecipeViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v2 + 2) = sub_1D7D28ECC();
  sub_1D7D2B76C();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v5;
  *(v13 + 32) = *(v16 + 96);
  *(v13 + 48) = *(v4 + 112);
  *(v13 + 56) = v12;
  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(&v26);
  sub_1D7D2B76C();
  sub_1D7D28EDC();

  sub_1D7C62AE8(v24);
  (*(v7 + 8))(v11, v17);
  v21 = v24[2];
  v22 = v24[3];
  v23 = v25;
  v20 = v24[1];
  v19 = v24[0];
  sub_1D7B5587C();
  sub_1D7D28F1C();

  v28 = v21;
  v29 = v22;
  v30 = v23;
  v26 = v19;
  v27 = v20;
  sub_1D7A4D754(&v26);
  return v2;
}

char *sub_1D7C643AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  *&v20 = swift_getAssociatedTypeWitness();
  *(&v20 + 1) = swift_getAssociatedTypeWitness();
  *&v21 = swift_getAssociatedConformanceWitness();
  *(&v21 + 1) = swift_getAssociatedConformanceWitness();
  v6 = sub_1D7D2A23C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v13 - v10;
  (*(*(v5 - 8) + 16))(&v2[*(v4 + 128)], a1, v5, v9);
  *&v20 = MEMORY[0x1E69E7CC0];
  v24 = 0x1000000000000000;
  sub_1D7A1093C(0, &qword_1EC9E53F0, &type metadata for RecipeViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v2 + 2) = sub_1D7D28ECC();
  sub_1D7D2B76C();
  sub_1D7D28EDC();

  sub_1D7C62AE8(v18);
  (*(v7 + 8))(v11, v6);
  v15 = v18[2];
  v16 = v18[3];
  v17 = v19;
  v14 = v18[1];
  v13 = v18[0];
  sub_1D7B5587C();
  sub_1D7D28F1C();
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v20 = v13;
  v21 = v14;
  sub_1D7A4D754(&v20);
  return v2;
}

uint64_t sub_1D7C6473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v44 = AssociatedTypeWitness;
  v45 = v31;
  v46 = AssociatedConformanceWitness;
  v47 = v30;
  v12 = sub_1D7D2B07C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1D7D3165C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v29 - v18;
  MEMORY[0x1DA70DFD0](v12, WitnessTable, v17);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v20 = a5;
  v21 = v32;
  v43 = v32;
  swift_getWitnessTable();
  v22 = sub_1D7D3057C();
  (*(v15 + 8))(v19, v14);
  v44 = v22;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = v20;
  v38 = v21;
  v23 = sub_1D7D2ABCC();
  swift_getTupleTypeMetadata2();
  v24 = sub_1D7D307BC();
  v25 = swift_getWitnessTable();
  v27 = sub_1D7A3B594(sub_1D7C64AF4, v33, v24, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

  return v27;
}

unint64_t sub_1D7C64A50()
{
  result = qword_1EC9E79B0;
  if (!qword_1EC9E79B0)
  {
    sub_1D7A1093C(255, &qword_1EC9E2CE0, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79B0);
  }

  return result;
}

uint64_t sub_1D7C64CD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = a1;
    v6[4] = a2;
    v7 = sub_1D7C6546C;
  }

  else
  {
    v7 = 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager), *(v2 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager + 24));
  swift_unknownObjectRetain();
  sub_1D7D2F85C();

  return sub_1D79AD740(v7);
}

void sub_1D7C64DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getObjectType();
    v6 = *(a3 + 8);
    v7 = v5;
    v6();
  }
}

uint64_t (*sub_1D7C64E98(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_headerDelegate;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D7C64EF4;
}

uint64_t sub_1D7C64EF4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (a2)
  {
    if (v3)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = v3;
      v7[4] = v4;
      v8 = sub_1D7C65420;
    }

    else
    {
      v8 = 0;
    }

    v12 = v5 + a1[3];
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager), *(v5 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager + 24));
    swift_unknownObjectRetain_n();
    sub_1D7D2F85C();
    sub_1D79AD740(v8);
    *(v12 + 8) = v4;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = v3;
      v10[4] = v4;
      v11 = sub_1D7C6546C;
    }

    else
    {
      v11 = 0;
    }

    v13 = v5 + a1[3];
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager), *(v5 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_sharedItemManager + 24));
    swift_unknownObjectRetain();
    sub_1D7D2F85C();
    sub_1D79AD740(v11);
    *(v13 + 8) = v4;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7C65354(uint64_t a1, uint64_t a2)
{
  sub_1D7C64CD0(a1, a2);
  *(v2 + OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_headerDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void (*sub_1D7C653B0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D7C64E98(v2);
  return sub_1D7ACFB50;
}

uint64_t objectdestroy_4Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7C65470(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79F93E8(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_8:
      sub_1D7A74E98(v5, v9);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D79F94F0(v9, type metadata accessor for ArticleViewerArticlePage);
      sub_1D7D295AC();
      return swift_unknownObjectRelease();
    }

    return sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
  }

  if (EnumCaseMultiPayload == 2)
  {
    return sub_1D79F94F0(v5, type metadata accessor for ArticleViewerPage);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v5[*(v17 + 48)], *&v5[*(v17 + 48) + 8], *&v5[*(v17 + 48) + 16]);
    goto LABEL_8;
  }

  v11 = *(v5 + 9);
  v18[8] = *(v5 + 8);
  v18[9] = v11;
  v19 = *(v5 + 20);
  v12 = *(v5 + 5);
  v18[4] = *(v5 + 4);
  v18[5] = v12;
  v13 = *(v5 + 7);
  v18[6] = *(v5 + 6);
  v18[7] = v13;
  v14 = *(v5 + 1);
  v18[0] = *v5;
  v18[1] = v14;
  v15 = *(v5 + 3);
  v18[2] = *(v5 + 2);
  v18[3] = v15;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D7D295AC();
  sub_1D79F949C(v18);
  return swift_unknownObjectRelease();
}

uint64_t IssueContentFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

void IssueLoader.issueContentFormat.getter(char *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = [v4 type];

    v3 = v5 == 1;
    if (!v5)
    {
      v3 = 2;
    }
  }

  *a1 = v3;
}

uint64_t IssueLoader.load()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) != 1)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 80);
      __swift_project_boxed_opaque_existential_1((v0 + 48), v14);
      v16 = *(v15 + 8);
      v17 = v2;

      v7 = v16(v17, v1, v3, v14, v15);

      return v7;
    }

    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    __swift_project_boxed_opaque_existential_1((v0 + 48), v4);
    v6 = *(v5 + 16);

    v7 = v6(v2, v1, v4, v5);
    v8 = v2;
    v9 = v1;
    v10 = v3;
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    __swift_project_boxed_opaque_existential_1((v0 + 48), v12);
    v7 = (*(v13 + 8))(v2, 0, 0, v12, v13);
    v8 = v2;
    v9 = v1;
    v10 = v3;
    v11 = 0;
  }

  sub_1D7BDEC18(v8, v9, v10, v11);
  return v7;
}

uint64_t IssueLoader.deinit()
{
  sub_1D7BDEC18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v0;
}

uint64_t IssueLoader.__deallocating_deinit()
{
  sub_1D7BDEC18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7C6594C()
{
  result = qword_1EC9E79D0;
  if (!qword_1EC9E79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79D0);
  }

  return result;
}

uint64_t sub_1D7C65A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D7C65AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t BlueprintArticleViewerTokenSession.__allocating_init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BlueprintArticleViewerTokenSession.init(blueprintProvider:blueprintLayoutProvider:)(a1, a2);
  return v4;
}

uint64_t BlueprintArticleViewerTokenSession.canScrollToArticle.getter()
{
  v1 = *v0;
  v3 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v4 = *(*v0 + 128);
  v16 = *(*v0 + 112);
  v17 = v3;
  v20 = v3;
  v21 = v2;
  v18 = v4;
  v19 = v2;
  v22 = v16;
  v23 = v4;
  v5 = type metadata accessor for BlueprintArticleViewerTokenState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  v10 = *(v1 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v10, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

LABEL_5:
    v20 = v17;
    v21 = v16;
    v12 = sub_1D7D2C80C();
    v20 = v19;
    v21 = v18;
    v13 = sub_1D7D2A23C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v13 - 8) + 8))(&v9[*(TupleTypeMetadata2 + 48)], v13);
    (*(*(v12 - 8) + 8))(v9, v12);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  (*(v6 + 8))(v9, v5);
  return 1;
}

uint64_t BlueprintArticleViewerTokenSession.blueprint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v6 = *(*v1 + 128);
  v21 = *(*v1 + 112);
  v22 = v5;
  v24 = v5;
  v25 = v4;
  v19 = v6;
  v20 = v4;
  v26 = v21;
  v27 = v6;
  v7 = type metadata accessor for BlueprintArticleViewerTokenState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = *(v3 + 144);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v24 = v22;
      v25 = v21;
      v14 = sub_1D7D2C80C();
      v24 = v20;
      v25 = v19;
      v15 = sub_1D7D2A23C();
      v16 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v14 - 8) + 32))(a1, v11, v14);
      return (*(*(v15 - 8) + 8))(&v11[v16], v15);
    }

    v23 = *(v1 + *(*v1 + 152));
    v24 = v22;
    v25 = v21;
    sub_1D7D2A75C();
    swift_getWitnessTable();
    return sub_1D7D2AEEC();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v18 = *(v11 + 1);

    v23 = v18;
    v24 = v22;
    v25 = v21;
    sub_1D7D2A75C();
    swift_getWitnessTable();
    sub_1D7D2AEEC();
  }
}

uint64_t BlueprintArticleViewerTokenSession.blueprintLayout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v6 = *(*v1 + 128);
  v19 = *(*v1 + 112);
  v20 = v5;
  v24 = v5;
  v25 = v4;
  v21 = v6;
  v22 = v4;
  v26 = v19;
  v27 = v6;
  v7 = type metadata accessor for BlueprintArticleViewerTokenState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = *(v3 + 144);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v24 = v20;
      v25 = v19;
      v14 = sub_1D7D2C80C();
      v24 = v22;
      v25 = v21;
      v15 = sub_1D7D2A23C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v15 - 8) + 32))(a1, &v11[*(TupleTypeMetadata2 + 48)], v15);
      return (*(*(v14 - 8) + 8))(v11, v14);
    }

    v23 = *(v1 + *(*v1 + 160));
    v24 = v22;
    v25 = v21;
    sub_1D7D2B28C();
    swift_getWitnessTable();
    return sub_1D7D2B77C();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v18 = *(v11 + 2);

    v23 = v18;
    v24 = v22;
    v25 = v21;
    sub_1D7D2B28C();
    swift_getWitnessTable();
    sub_1D7D2B77C();
  }
}

Swift::Void __swiftcall BlueprintArticleViewerTokenSession.refreshing()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 96);
  v12 = *(v2 + 80);
  v14 = v3;
  v17 = v12;
  v18 = v3;
  v4 = *(v2 + 128);
  v11 = *(v2 + 112);
  v13 = v4;
  v19 = v11;
  v20 = v4;
  v5 = type metadata accessor for BlueprintArticleViewerTokenState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - v8;
  v17 = v12;
  v18 = v11;
  sub_1D7D2C80C();
  v17 = v14;
  v18 = v13;
  sub_1D7D2A23C();
  swift_getTupleTypeMetadata2();
  v16 = *&v1[*(v2 + 152)];
  v17 = v12;
  v18 = v11;
  sub_1D7D2A75C();
  swift_getWitnessTable();
  sub_1D7D2AEEC();
  v15 = *&v1[*(*v1 + 160)];
  v17 = v14;
  v18 = v13;
  sub_1D7D2B28C();
  swift_getWitnessTable();
  sub_1D7D2B77C();
  swift_storeEnumTagMultiPayload();
  v10 = *(*v1 + 144);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v10], v9, v5);
  swift_endAccess();
}

Swift::Void __swiftcall BlueprintArticleViewerTokenSession.refreshed()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 128);
  v39 = *(*v0 + 96);
  v40 = v3;
  v41 = v39;
  v42 = v3;
  v4 = sub_1D7D2A23C();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v31 - v6;
  v7 = *(v2 + 112);
  v37 = *(v2 + 80);
  v38 = v7;
  v41 = v37;
  v42 = v7;
  v8 = sub_1D7D2C80C();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v41 = v37;
  v42 = v39;
  v43 = v38;
  v44 = v40;
  v12 = type metadata accessor for BlueprintArticleViewerTokenState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(v1 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v20, v0 + v21, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v8;
      *&v39 = swift_getTupleTypeMetadata2();
      *&v38 = *(v39 + 48);
      *&v40 = v4;
      v26 = v11;
      v33 = v11;
      v27 = *(v35 + 32);
      v27(v26, v20, v8);
      v28 = *(v36 + 32);
      v29 = &v20[v38];
      v30 = v34;
      v28(v34, v29, v40);
      *&v39 = *(v39 + 48);
      v27(v16, v33, v32);
      v28(&v16[v39], v30, v40);
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(v0 + v21, v16, v12);
    swift_endAccess();
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v13 + 8))(v20, v12);
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v24 = v36;
    v25 = *(TupleTypeMetadata2 + 48);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v13 + 40))(v0 + v21, v16, v12);
    swift_endAccess();
    (*(v24 + 8))(&v20[v25], v4);
    (*(v35 + 8))(v20, v8);
  }
}

uint64_t BlueprintArticleViewerTokenSession.update(token:)(uint64_t a1)
{
  v39 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v44 = *(*v1 + 128);
  v45 = v4;
  v48 = v4;
  v49 = v44;
  v5 = sub_1D7D2A23C();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v37 = &v36 - v7;
  v43 = *(v3 + 80);
  v42 = *(v3 + 112);
  v48 = v43;
  v49 = v42;
  v8 = sub_1D7D2C80C();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - v10;
  v48 = v43;
  v49 = v45;
  v50 = v42;
  v51 = v44;
  v12 = type metadata accessor for BlueprintArticleViewerTokenState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - v19;
  v21 = *(v2 + 144);
  swift_beginAccess();
  v41 = v13;
  (*(v13 + 16))(v20, &v1[v21], v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v36 = v8;
      v23 = *(swift_getTupleTypeMetadata2() + 48);
      v47 = *&v1[*(*v1 + 152)];
      v48 = v43;
      v49 = v42;
      sub_1D7D2A75C();
      swift_getWitnessTable();
      sub_1D7D2AEEC();
      v46 = *&v1[*(*v1 + 160)];
      v48 = v45;
      v49 = v44;
      sub_1D7D2B28C();
      swift_getWitnessTable();
      sub_1D7D2B77C();
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v41 + 40))(&v1[v21], v16, v12);
      swift_endAccess();
      (*(v38 + 8))(&v20[v23], v5);
      return (*(v40 + 8))(v20, v36);
    }

    v30 = v41;
    (*(v41 + 8))(v20, v12);
    v31 = *&v1[*(*v1 + 152)];
    v32 = *&v1[*(*v1 + 160)];
    *v16 = v39;
    v16[1] = v31;
    v16[2] = v32;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v33 = *&v1[*(*v1 + 152)];
    v34 = *&v1[*(*v1 + 160)];
    *v16 = v39;
    v16[1] = v33;
    v16[2] = v34;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v30 = v41;
LABEL_8:
    v35 = *(v30 + 40);

    v35(&v1[v21], v16, v12);
    return swift_endAccess();
  }

  *&v45 = v21;
  v25 = v8;
  *&v44 = swift_getTupleTypeMetadata2();
  *&v42 = *(v44 + 48);
  *&v43 = *(v40 + 32);
  (v43)(v11, v20, v8);
  v40 = *(v38 + 32);
  v26 = &v20[v42];
  v27 = v37;
  (v40)(v37, v26, v5);
  v28 = *(v44 + 48);
  (v43)(v16, v11, v25);
  (v40)(v16 + v28, v27, v5);
  swift_storeEnumTagMultiPayload();
  v29 = v45;
  swift_beginAccess();
  (*(v41 + 40))(&v1[v29], v16, v12);
  return swift_endAccess();
}

uint64_t BlueprintArticleViewerTokenSession.deinit()
{
  v1 = *(*v0 + 144);
  v2 = type metadata accessor for BlueprintArticleViewerTokenState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BlueprintArticleViewerTokenSession.__deallocating_deinit()
{
  BlueprintArticleViewerTokenSession.deinit();

  return swift_deallocClassInstance();
}

char *Issue.with(feedItemIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = *v3;
  v6 = v3[1];
  if (v3[2])
  {
    if (qword_1EC9DFD98 == -1)
    {
LABEL_3:
      v7 = sub_1D7D29AFC();
      __swift_project_value_buffer(v7, qword_1ECA0BB48);
      v8 = sub_1D7D29ADC();
      v9 = sub_1D7D30C6C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D7987000, v8, v9, "Unsupported case! Please update switch statement to work with pdfReplica if needed", v10, 2u);
        MEMORY[0x1DA7102E0](v10, -1, -1);
      }

      *v4 = v5;
      *(v4 + 8) = v6;
      *(v4 + 16) = 1;

      return sub_1D79ECEAC(v5);
    }

LABEL_23:
    swift_once();
    goto LABEL_3;
  }

  v43 = *v3;
  v13 = *(v6 + 2);
  result = v5;
  v45 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = v6 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    while (v14 < *(v6 + 2))
    {
      v5 = v6;
      v17 = v15[1];
      v65[0] = *v15;
      v65[1] = v17;
      v18 = v15[2];
      v19 = v15[3];
      v20 = v15[5];
      v65[4] = v15[4];
      v65[5] = v20;
      v65[2] = v18;
      v65[3] = v19;
      v21 = v15[6];
      v22 = v15[7];
      v23 = v15[8];
      *(v66 + 9) = *(v15 + 137);
      v65[7] = v22;
      v66[0] = v23;
      v65[6] = v21;
      memmove(__dst, v15, 0x99uLL);
      if (sub_1D7A601B0(__dst) == 1)
      {
        v24 = nullsub_1(__dst);
        v4 = v24[13];
        sub_1D7A601B8(v65, &v56);
        sub_1D79ECF40(v24, &v56);
        v25 = [swift_unknownObjectRetain() identifier];
        v26 = sub_1D7D3034C();
        v28 = v27;

        memmove(&v47, v24, 0x58uLL);
        *(&v52 + 1) = v26;
        *&v53 = v28;
        *v55 = 0;
        v54 = 0uLL;
        *(&v53 + 1) = v4;
        *&v55[8] = a1;
        *&v55[16] = a2;
        sub_1D7A0AE78(&v47);
      }

      else
      {
        v29 = *(nullsub_1(__dst) + 16);
        sub_1D7A601B8(v65, &v56);
        v30 = [swift_unknownObjectRetain() identifier];
        v31 = sub_1D7D3034C();
        v4 = v32;

        *&v47 = v31;
        *(&v47 + 1) = v4;
        v49 = 0uLL;
        v48 = v29;
        *&v50 = a1;
        *(&v50 + 1) = a2;
        sub_1D79F5BB0(&v47);
      }

      v62 = v53;
      v63 = v54;
      v64[0] = *v55;
      *(v64 + 9) = *&v55[9];
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v61 = v52;
      v56 = v47;
      v57 = v48;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D79E3E30(0, *(v16 + 2) + 1, 1, v16);
      }

      v6 = v5;
      v34 = *(v16 + 2);
      v33 = *(v16 + 3);
      if (v34 >= v33 >> 1)
      {
        v16 = sub_1D79E3E30((v33 > 1), v34 + 1, 1, v16);
      }

      ++v14;
      result = sub_1D7A6026C(v65);
      *(v16 + 2) = v34 + 1;
      v35 = &v16[160 * v34];
      v36 = v57;
      *(v35 + 2) = v56;
      *(v35 + 3) = v36;
      v37 = v61;
      v39 = v58;
      v38 = v59;
      *(v35 + 6) = v60;
      *(v35 + 7) = v37;
      *(v35 + 4) = v39;
      *(v35 + 5) = v38;
      v41 = v63;
      v40 = v64[0];
      v42 = v62;
      *(v35 + 169) = *(v64 + 9);
      *(v35 + 9) = v41;
      *(v35 + 10) = v40;
      *(v35 + 8) = v42;
      v15 += 10;
      if (v45 == v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
  *a3 = v43;
  *(a3 + 8) = v16;
  *(a3 + 16) = 0;
  return result;
}

uint64_t ANFIssuePage.identifier.getter()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v9[0] = v0[8];
  *(v9 + 9) = *(v0 + 137);
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v3 = v0[5];
  v8[4] = v0[4];
  v8[5] = v3;
  v4 = v0[1];
  v8[0] = *v0;
  v8[1] = v4;
  if (sub_1D7A601B0(v8) == 1)
  {
    v5 = (nullsub_1(v8) + 88);
  }

  else
  {
    v5 = nullsub_1(v8);
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_1D7C677C0()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v9[0] = v0[8];
  *(v9 + 9) = *(v0 + 137);
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v3 = v0[5];
  v8[4] = v0[4];
  v8[5] = v3;
  v4 = v0[1];
  v8[0] = *v0;
  v8[1] = v4;
  if (sub_1D7A601B0(v8) == 1)
  {
    v5 = (nullsub_1(v8) + 88);
  }

  else
  {
    v5 = nullsub_1(v8);
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_1D7C67888(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  sub_1D7A66A44();
  if ((sub_1D7D311DC() & 1) == 0)
  {
    return 0;
  }

  return a3(v3, v4);
}

uint64_t sub_1D7C67930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  sub_1D7A66A44();
  if ((sub_1D7D311DC() & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

uint64_t _s12NewsArticles12ANFIssuePageO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v76 = a1[6];
  v77 = v2;
  v4 = a1[7];
  v78[0] = a1[8];
  *(v78 + 9) = *(a1 + 137);
  v5 = a1[3];
  v6 = a1[1];
  v72 = a1[2];
  v73 = v5;
  v7 = a1[3];
  v8 = a1[5];
  v74 = a1[4];
  v75 = v8;
  v9 = a1[1];
  v71[0] = *a1;
  v71[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v85 = a2[6];
  v86 = v10;
  v12 = a2[7];
  v87[0] = a2[8];
  *(v87 + 9) = *(a2 + 137);
  v13 = a2[3];
  v14 = a2[1];
  v81 = a2[2];
  v82 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v83 = a2[4];
  v84 = v16;
  v17 = a2[1];
  v79 = *a2;
  v80 = v17;
  v18 = a1[7];
  v88[6] = a1[6];
  v88[7] = v18;
  v89[0] = a1[8];
  *(v89 + 9) = *(a1 + 137);
  v19 = a1[3];
  v88[2] = a1[2];
  v88[3] = v19;
  v20 = a1[5];
  v88[4] = a1[4];
  v88[5] = v20;
  v21 = a1[1];
  v88[0] = *a1;
  v88[1] = v21;
  *(v90 + 9) = *(a2 + 137);
  v22 = a2[8];
  v89[9] = v12;
  v90[0] = v22;
  v89[5] = v15;
  v89[6] = v83;
  v89[8] = v85;
  v89[7] = v11;
  v89[2] = v79;
  v89[4] = v81;
  v89[3] = v14;
  v91[6] = v76;
  v91[7] = v4;
  v92[0] = a1[8];
  *(v92 + 9) = *(a1 + 137);
  v91[2] = v72;
  v91[3] = v7;
  v91[4] = v74;
  v91[5] = v3;
  v91[0] = v71[0];
  v91[1] = v6;
  if (sub_1D7A601B0(v91) != 1)
  {
    v34 = nullsub_1(v91);
    v68 = v85;
    v69 = v86;
    v70[0] = v87[0];
    *(v70 + 9) = *(v87 + 9);
    v64 = v81;
    v65 = v82;
    v66 = v83;
    v67 = v84;
    v62 = v79;
    v63 = v80;
    if (sub_1D7A601B0(&v62) != 1)
    {
      v35 = nullsub_1(&v62);
      v36 = v34[1];
      v52 = *v34;
      v53 = v36;
      v37 = v34[3];
      v54 = v34[2];
      v55 = v37;
      v38 = v35[1];
      v42 = *v35;
      v43 = v38;
      v39 = v35[3];
      v44 = v35[2];
      v45 = v39;
      v33 = _s12NewsArticles7ArticleV2eeoiySbAC_ACtFZ_0(&v52, &v42);
      sub_1D7A601B8(&v79, v41);
      sub_1D7A601B8(v71, v41);
      sub_1D7C67F6C(v88);
      return v33 & 1;
    }

    goto LABEL_5;
  }

  v23 = nullsub_1(v91);
  v68 = v85;
  v69 = v86;
  v70[0] = v87[0];
  *(v70 + 9) = *(v87 + 9);
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v62 = v79;
  v63 = v80;
  if (sub_1D7A601B0(&v62) != 1)
  {
LABEL_5:
    nullsub_1(&v62);
    sub_1D7A601B8(&v79, &v62);
    sub_1D7A601B8(v71, &v62);
    sub_1D7C67F6C(v88);
    v33 = 0;
    return v33 & 1;
  }

  v24 = nullsub_1(&v62);
  v25 = *(v23 + 112);
  v58 = *(v23 + 96);
  v59 = v25;
  v60 = *(v23 + 128);
  v61 = *(v23 + 144);
  v26 = *(v23 + 48);
  v54 = *(v23 + 32);
  v55 = v26;
  v27 = *(v23 + 80);
  v56 = *(v23 + 64);
  v57 = v27;
  v28 = *(v23 + 16);
  v52 = *v23;
  v53 = v28;
  v29 = *(v24 + 112);
  v48 = *(v24 + 96);
  v49 = v29;
  v50 = *(v24 + 128);
  v51 = *(v24 + 144);
  v30 = *(v24 + 48);
  v44 = *(v24 + 32);
  v45 = v30;
  v31 = *(v24 + 80);
  v46 = *(v24 + 64);
  v47 = v31;
  v32 = *(v24 + 16);
  v42 = *v24;
  v43 = v32;
  sub_1D7A601B8(&v79, v41);
  sub_1D7A601B8(v71, v41);
  sub_1D7A601B8(&v79, v41);
  sub_1D7A601B8(v71, v41);
  v33 = _s12NewsArticles23ANFReplicaAdvertisementV2eeoiySbAC_ACtFZ_0(&v52, &v42);
  sub_1D7C67F6C(v88);
  sub_1D7A6026C(&v79);
  sub_1D7A6026C(v71);
  return v33 & 1;
}