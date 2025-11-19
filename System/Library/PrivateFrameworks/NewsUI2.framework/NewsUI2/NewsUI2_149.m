void sub_219764AC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_219BE5454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = MEMORY[0x277D837D0];
  v24[4] = MEMORY[0x277D6C998];
  v24[0] = a1;
  v24[1] = a2;

  sub_219BE56F4();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_219764EB0(v8);
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_280EE5F38 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F62568);

    v10 = v2;
    v11 = sub_219BE5414();
    v12 = sub_219BF61F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_2186D1058(a1, a2, v24);
      *(v13 + 12) = 2114;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_2186C1000, v11, v12, "RecipeBoxSearchStore failed to remove recipeID=%{public}s with error=%{public}@", v13, 0x16u);
      sub_21976A048(v14, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    if (qword_280EE5F38 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_280F62568);

    v19 = sub_219BE5414();
    v20 = sub_219BF6214();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_2186D1058(a1, a2, v24);
      _os_log_impl(&dword_2186C1000, v19, v20, "RecipeBoxSearchStore successfully removed recipeID=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CECF960](v22, -1, -1);
      MEMORY[0x21CECF960](v21, -1, -1);
    }
  }
}

uint64_t sub_219764EB0(uint64_t a1)
{
  v30 = a1;
  v2 = MEMORY[0x277D6C858];
  sub_21976A0A4(0, &qword_280EE5EC0, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C858]);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - v5;
  v6 = MEMORY[0x277D6C860];
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  sub_21976A0A4(0, &qword_27CC1EC78, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v2);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v6);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = v31;
  result = sub_2197616A4(&v25 - v18);
  if (!v20)
  {
    v31 = v1;
    sub_219BE5504();
    (*(v17 + 8))(v19, v16);
    sub_219BE54D4();
    (*(v12 + 8))(v14, v11);
    sub_21976338C(v9);
    v22 = v25;
    v23 = v27;
    sub_219BE5504();
    (*(v26 + 8))(v9, v23);
    v24 = v28;
    sub_219BE54D4();
    return (*(v29 + 8))(v22, v24);
  }

  return result;
}

uint64_t sub_219765298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  sub_219769C48(0, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - v5);
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C848]);
  v8 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v12 = v11;
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  sub_21976A0A4(0, &qword_27CC1EC38, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C8D0]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = v34;
  sub_219765BE8(v31, v32, v33, v20);
  if (!v23)
  {
    v33 = v6;
    v34 = v8;
    (*(v17 + 32))(v22, v20, v16);
    sub_2197616A4(v14);
    v32 = v16;
    sub_219BE54B4();
    (*(v28 + 8))(v14, v12);
    sub_21976A0A4(0, &qword_27CC1EC30, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C838]);
    v25 = v33;
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    v26 = v34;
    v12 = sub_219BE54A4();
    sub_219769F70(v25, &qword_27CC1EC28, &qword_27CC1EC30, MEMORY[0x277D6C838]);
    (*(v29 + 8))(v10, v26);
    (*(v17 + 8))(v22, v32);
  }

  return v12;
}

char *sub_219765760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  sub_21976987C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21976A0A4(0, &qword_280EE5ED8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C848]);
  v8 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  sub_21976A0A4(0, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
  v12 = v11;
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  sub_21976A0A4(0, &qword_27CC1EBE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C8D0]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v23 = v33;
  sub_219766724(v30, v31, v32, v20);
  if (!v23)
  {
    v32 = v8;
    v33 = v17;
    (*(v17 + 32))(v22, v20, v16);
    sub_21976338C(v14);
    sub_219BE54B4();
    (*(v27 + 8))(v14, v12);
    sub_21976A0A4(0, &qword_280EE5EF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C838]);
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = v32;
    v14 = sub_219BE54A4();
    sub_219769BE8(v6, sub_21976987C);
    (*(v28 + 8))(v10, v25);
    (*(v33 + 8))(v22, v16);
  }

  return v14;
}

uint64_t sub_219765BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v115 = a4;
  v119 = a1;
  v114 = sub_219BE5664();
  v120 = *(v114 - 8);
  v6 = MEMORY[0x28223BE20](v114);
  v8 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v105 - v9);
  v11 = MEMORY[0x277D6C900];
  sub_219769C48(0, &qword_27CC1EC48, &qword_27CC1EC50, MEMORY[0x277D6C900]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v105 - v16;
  sub_21976A0A4(0, &qword_27CC1EC50, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, v11);
  v117 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v105 - v22;
  v113 = a3;
  v24 = a3[2];
  v116 = v19;
  if (!a2)
  {
    if (v24)
    {
LABEL_6:
      sub_219769E3C();
      v110 = v27;
      v112 = swift_allocBox();
      v29 = v28;
      sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C146A0;
      *(v30 + 32) = swift_getKeyPath();
      v111 = v29;
      *(v29 + 8) = v30;
      v121 = MEMORY[0x277D84F90];
      sub_218C36C00(0, v24, 0);
      v31 = v121;
      LODWORD(v119) = *MEMORY[0x277D6C8D8];
      v32 = (v120 + 104);
      v118 = (v120 + 32);
      v33 = v114;
      v34 = v113 + 5;
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v35;
        *v8 = v37;
        (*v32)(v8, v119, v33);
        v121 = v31;
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);

        if (v39 >= v38 >> 1)
        {
          sub_218C36C00(v38 > 1, v39 + 1, 1);
          v31 = v121;
        }

        *(v31 + 16) = v39 + 1;
        (*(v120 + 32))(v31 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v39, v8, v33);
        v34 += 2;
        --v24;
      }

      while (v24);
      v40 = v117;
      v41 = swift_allocBox();
      v43 = v42;
      v44 = *(v110 + 64);
      v45 = swift_allocObject();
      *(v45 + 16) = v31;
      v46 = v111;
      *(v111 + v44) = v45;
      v47 = *(v116 + 104);
      v47(&v46[v44], *MEMORY[0x277D6C8F8], v40);
      *v46 = 0;
      *v43 = v112;
      v47(v43, *MEMORY[0x277D6C8F0], v40);
      v48 = v115;
      *v115 = v41;
      goto LABEL_20;
    }

LABEL_13:
    sub_219769B94();
    swift_allocError();
    return swift_willThrow();
  }

  v112 = v21;
  sub_218FABB04();
  v25 = (v19 + 48);
  if (!v24)
  {
    sub_219BE56D4();
    v49 = v117;
    if ((*v25)(v17, 1, v117) != 1)
    {
      v93 = v116;
      v94 = *(v116 + 32);
      v94(v23, v17, v49);
      v120 = swift_allocBox();
      v96 = v95;
      sub_219769E3C();
      v98 = v97;
      v119 = swift_allocBox();
      v100 = v99;
      v101 = *(v98 + 64);
      *v99 = 1;
      sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_219C146A0;
      *(v102 + 32) = swift_getKeyPath();
      *(v100 + 1) = v102;
      v94(&v100[v101], v23, v49);
      *v96 = v119;
      (*(v93 + 104))(v96, *MEMORY[0x277D6C8F0], v49);
      v48 = v115;
      *v115 = v120;
LABEL_20:
      v103 = *MEMORY[0x277D6C8C8];
      sub_21976A0A4(0, &qword_27CC1EC38, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C8D0]);
      return (*(*(v104 - 8) + 104))(v48, v103, v104);
    }

    sub_219769F70(v17, &qword_27CC1EC48, &qword_27CC1EC50, MEMORY[0x277D6C900]);
    goto LABEL_13;
  }

  sub_219BE56D4();
  v26 = v117;
  if ((*v25)(v15, 1, v117) == 1)
  {
    sub_219769F70(v15, &qword_27CC1EC48, &qword_27CC1EC50, MEMORY[0x277D6C900]);
    goto LABEL_6;
  }

  v109 = *(v116 + 32);
  v110 = v116 + 32;
  v109(v112, v15, v26);
  sub_219769E3C();
  v111 = v51;
  v106 = swift_allocBox();
  v53 = v52;
  sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v108 = v54;
  v55 = swift_allocObject();
  v107 = xmmword_219C146A0;
  *(v55 + 16) = xmmword_219C146A0;
  *(v55 + 32) = swift_getKeyPath();
  v105 = v53;
  *(v53 + 8) = v55;
  v121 = MEMORY[0x277D84F90];
  sub_218C36C00(0, v24, 0);
  v56 = v121;
  LODWORD(v119) = *MEMORY[0x277D6C8D8];
  v57 = (v120 + 104);
  v118 = (v120 + 32);
  v58 = v114;
  v59 = v113 + 5;
  do
  {
    v61 = *(v59 - 1);
    v60 = *v59;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v60;
    *v10 = v62;
    (*v57)(v10, v119, v58);
    v121 = v56;
    v64 = *(v56 + 16);
    v63 = *(v56 + 24);

    if (v64 >= v63 >> 1)
    {
      sub_218C36C00(v63 > 1, v64 + 1, 1);
      v56 = v121;
    }

    *(v56 + 16) = v64 + 1;
    (*(v120 + 32))(v56 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v64, v10, v58);
    v59 += 2;
    --v24;
  }

  while (v24);
  sub_219769FCC(0, &qword_27CC1EC70, &qword_27CC1EC38, sub_218FABB04, &type metadata for RecipeBoxSearchEntity);
  v66 = v65;
  v67 = swift_allocBox();
  v69 = v68;
  v119 = *(v66 + 48);
  v120 = v67;
  v70 = v117;
  v71 = swift_allocBox();
  v73 = v72;
  v74 = *(v111 + 64);
  v75 = swift_allocObject();
  *(v75 + 16) = v56;
  v76 = v105;
  *(v105 + v74) = v75;
  v77 = *MEMORY[0x277D6C8F8];
  v78 = *(v116 + 104);
  v118 = v78;
  v78(&v76[v74], v77, v70);
  *v76 = 0;
  *v73 = v106;
  LODWORD(v116) = *MEMORY[0x277D6C8F0];
  (v78)(v73);
  v79 = v69;
  v113 = v69;
  *v69 = v71;
  LODWORD(v114) = *MEMORY[0x277D6C8C8];
  v80 = v114;
  sub_21976A0A4(0, &qword_27CC1EC38, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C8D0]);
  v82 = v81;
  v83 = *(*(v81 - 8) + 104);
  (v83)(v79, v80, v81);
  v106 = swift_allocBox();
  v85 = v84;
  v86 = v111;
  v105 = swift_allocBox();
  v88 = v87;
  v89 = *(v86 + 64);
  *v87 = 1;
  v90 = swift_allocObject();
  *(v90 + 16) = v107;
  *(v90 + 32) = swift_getKeyPath();
  *(v88 + 1) = v90;
  v109(&v88[v89], v112, v70);
  *v85 = v105;
  v118(v85, v116, v70);
  v91 = v113;
  v92 = v119;
  *(v113 + v119) = v106;
  (v83)(v91 + v92, v114, v82);
  *v115 = v120;
  return v83();
}

uint64_t sub_219766724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v117 = a4;
  v121 = a1;
  v116 = sub_219BE5664();
  v122 = *(v116 - 8);
  v6 = MEMORY[0x28223BE20](v116);
  v8 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v115 = (&v107 - v9);
  sub_2197699D8();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v107 - v14;
  sub_21976A0A4(0, &qword_27CC1EBF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C900]);
  v119 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  v23 = a3;
  v24 = *(a3 + 16);
  v118 = v17;
  if (!a2)
  {
    if (v24)
    {
LABEL_6:
      sub_219769A68();
      v113 = v27;
      v115 = swift_allocBox();
      v29 = v28;
      sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C146A0;
      *(v30 + 32) = swift_getKeyPath();
      v114 = v29;
      *(v29 + 8) = v30;
      v123 = MEMORY[0x277D84F90];
      sub_218C36C00(0, v24, 0);
      v31 = v123;
      LODWORD(v121) = *MEMORY[0x277D6C8D8];
      v32 = (v122 + 104);
      v120 = (v122 + 32);
      v33 = (v23 + 40);
      v34 = v116;
      do
      {
        v36 = *(v33 - 1);
        v35 = *v33;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v35;
        *v8 = v37;
        (*v32)(v8, v121, v34);
        v123 = v31;
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);

        if (v39 >= v38 >> 1)
        {
          sub_218C36C00(v38 > 1, v39 + 1, 1);
          v31 = v123;
        }

        *(v31 + 16) = v39 + 1;
        (*(v122 + 32))(v31 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v39, v8, v34);
        v33 += 2;
        --v24;
      }

      while (v24);
      v40 = v119;
      v41 = swift_allocBox();
      v43 = v42;
      v44 = *(v113 + 16);
      v45 = swift_allocObject();
      *(v45 + 16) = v31;
      v46 = v114;
      *(v114 + v44) = v45;
      v47 = *(v118 + 104);
      v47(&v46[v44], *MEMORY[0x277D6C8F8], v40);
      *v46 = 0;
      *v43 = v115;
      v47(v43, *MEMORY[0x277D6C8F0], v40);
      v48 = v117;
      *v117 = v41;
      goto LABEL_20;
    }

LABEL_13:
    sub_219769B94();
    swift_allocError();
    return swift_willThrow();
  }

  sub_218FAC78C();
  v25 = (v17 + 48);
  if (!v24)
  {
    sub_219BE56D4();
    v49 = v119;
    if ((*v25)(v15, 1, v119) != 1)
    {
      v95 = v118;
      v96 = *(v118 + 32);
      v96(v22, v15, v49);
      v122 = swift_allocBox();
      v98 = v97;
      sub_219769A68();
      v100 = v99;
      v121 = swift_allocBox();
      v102 = v101;
      v103 = *(v100 + 64);
      *v101 = 1;
      sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_219C146A0;
      *(v104 + 32) = swift_getKeyPath();
      *(v102 + 1) = v104;
      v96(&v102[v103], v22, v49);
      *v98 = v121;
      (*(v95 + 104))(v98, *MEMORY[0x277D6C8F0], v49);
      v48 = v117;
      *v117 = v122;
LABEL_20:
      v105 = *MEMORY[0x277D6C8C8];
      sub_21976A0A4(0, &qword_27CC1EBE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C8D0]);
      return (*(*(v106 - 8) + 104))(v48, v105, v106);
    }

    sub_219769BE8(v15, sub_2197699D8);
    goto LABEL_13;
  }

  sub_219BE56D4();
  v26 = v119;
  if ((*v25)(v13, 1, v119) == 1)
  {
    sub_219769BE8(v13, sub_2197699D8);
    goto LABEL_6;
  }

  v51 = *(v118 + 32);
  v112 = v118 + 32;
  v113 = v20;
  v111 = v51;
  v51(v20, v13, v26);
  sub_219769A68();
  v114 = v52;
  v108 = swift_allocBox();
  v54 = v53;
  sub_2186D0E2C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v110 = v55;
  v56 = swift_allocObject();
  v109 = xmmword_219C146A0;
  *(v56 + 16) = xmmword_219C146A0;
  *(v56 + 32) = swift_getKeyPath();
  v107 = v54;
  *(v54 + 8) = v56;
  v123 = MEMORY[0x277D84F90];
  sub_218C36C00(0, v24, 0);
  v57 = v123;
  LODWORD(v121) = *MEMORY[0x277D6C8D8];
  v58 = (v122 + 104);
  v120 = (v122 + 32);
  v59 = (v23 + 40);
  v61 = v115;
  v60 = v116;
  do
  {
    v63 = *(v59 - 1);
    v62 = *v59;
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;
    *v61 = v64;
    (*v58)(v61, v121, v60);
    v123 = v57;
    v66 = *(v57 + 16);
    v65 = *(v57 + 24);

    if (v66 >= v65 >> 1)
    {
      sub_218C36C00(v65 > 1, v66 + 1, 1);
      v57 = v123;
    }

    *(v57 + 16) = v66 + 1;
    (*(v122 + 32))(v57 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v66, v61, v60);
    v59 += 2;
    --v24;
  }

  while (v24);
  sub_219769FCC(0, &qword_27CC1EC20, &qword_27CC1EBE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2);
  v68 = v67;
  v69 = swift_allocBox();
  v71 = v70;
  v121 = *(v68 + 48);
  v122 = v69;
  v72 = v119;
  v73 = swift_allocBox();
  v75 = v74;
  v76 = *(v114 + 64);
  v77 = swift_allocObject();
  *(v77 + 16) = v57;
  v78 = v107;
  *(v107 + v76) = v77;
  v79 = *MEMORY[0x277D6C8F8];
  v80 = *(v118 + 104);
  v120 = v80;
  v80(&v78[v76], v79, v72);
  *v78 = 0;
  *v75 = v108;
  LODWORD(v118) = *MEMORY[0x277D6C8F0];
  (v80)(v75);
  v81 = v71;
  v115 = v71;
  *v71 = v73;
  LODWORD(v116) = *MEMORY[0x277D6C8C8];
  v82 = v116;
  sub_21976A0A4(0, &qword_27CC1EBE8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C8D0]);
  v84 = v83;
  v85 = *(*(v83 - 8) + 104);
  (v85)(v81, v82, v83);
  v108 = swift_allocBox();
  v87 = v86;
  v88 = v114;
  v107 = swift_allocBox();
  v90 = v89;
  v91 = *(v88 + 64);
  *v89 = 1;
  v92 = swift_allocObject();
  *(v92 + 16) = v109;
  *(v92 + 32) = swift_getKeyPath();
  *(v90 + 1) = v92;
  v111(&v90[v91], v113, v72);
  *v87 = v107;
  v120(v87, v118, v72);
  v93 = v115;
  v94 = v121;
  *(v115 + v121) = v108;
  (v85)(&v93[v94], v116, v84);
  *v117 = v122;
  return v85();
}

uint64_t sub_21976722C(uint64_t a1)
{
  *&v34 = a1;

  sub_2191EF8E8(v1);
  v2 = v34;
  v32 = *(v34 + 16);
  if (!v32)
  {

    v30 = 0;
    v6 = MEMORY[0x277D84F98];
LABEL_22:
    sub_2187FABEC(v30);
    return v6;
  }

  v3 = 0;
  v4 = 0;
  v5 = v34 + 32;
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(v2 + 16))
  {
    sub_218718690(v5, &v34);
    v7 = v35;
    v8 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    sub_21875F93C(&v34, v33);
    sub_2187FABEC(v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_21870F700(v9, v11);
    v15 = v6[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    if (v6[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_21949451C();
        if (v18)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_219484628(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_21870F700(v9, v11);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_26;
      }

      v14 = v19;
      if (v18)
      {
LABEL_11:

        goto LABEL_15;
      }
    }

    v6[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v6[6] + 16 * v14);
    *v21 = v9;
    v21[1] = v11;
    *(v6[7] + 8 * v14) = MEMORY[0x277D84F90];
    v22 = v6[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_25;
    }

    v6[2] = v24;
LABEL_15:
    v25 = v6[7];
    v26 = *(v25 + 8 * v14);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 8 * v14) = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_2191F9FDC(0, v26[2] + 1, 1, v26);
      *(v25 + 8 * v14) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_2191F9FDC((v28 > 1), v29 + 1, 1, v26);
      *(v25 + 8 * v14) = v26;
    }

    ++v4;
    v26[2] = v29 + 1;
    sub_21875F93C(v33, &v26[5 * v29 + 4]);
    v5 += 40;
    v3 = sub_218E1AC88;
    if (v32 == v4)
    {

      v30 = sub_218E1AC88;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

BOOL sub_21976751C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = *(v6 + 24);
  v9 = v8(v7, v6);
  v38 = a3;
  if (*(a3 + 16))
  {
    v11 = sub_21870F700(v9, v10);
    v13 = v12;

    v14 = 0.0;
    if (v13)
    {
      v14 = *(*(v38 + 56) + 8 * v11);
    }
  }

  else
  {

    v14 = 0.0;
  }

  v15 = v8(v7, v6);
  if (*(a4 + 16))
  {
    v17 = sub_21870F700(v15, v16);
    v19 = v18;

    v20 = 0.0;
    if (v19)
    {
      v20 = *(*(a4 + 56) + 8 * v17);
    }
  }

  else
  {

    v20 = 0.0;
  }

  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = *(v22 + 24);
  v24 = v23(v21, v22);
  if (*(v38 + 16))
  {
    v37 = sub_21870F700(v24, v25);
    v27 = v26;

    v28 = 0.0;
    if (v27)
    {
      v28 = *(*(v38 + 56) + 8 * v37);
    }
  }

  else
  {

    v28 = 0.0;
  }

  v29 = v23(v21, v22);
  if (*(a4 + 16))
  {
    v31 = sub_21870F700(v29, v30);
    v33 = v32;

    v34 = 0.0;
    if (v33)
    {
      v34 = *(*(a4 + 56) + 8 * v31);
    }
  }

  else
  {

    v34 = 0.0;
  }

  return v14 + v20 < v28 + v34;
}

uint64_t sub_219767748()
{

  sub_219769F70(v0 + OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_loadedTable, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
  sub_219769BE8(v0 + OBJC_IVAR____TtC7NewsUI220RecipeBoxSearchStore_secondaryLoadedTable, sub_219767930);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for RecipeBoxSearchStore()
{
  result = qword_280ECDA60;
  if (!qword_280ECDA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21976782C()
{
  sub_219769C48(319, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
  if (v0 <= 0x3F)
  {
    sub_219767930();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_219767930()
{
  if (!qword_280EE5EA0)
  {
    sub_21976A0A4(255, &qword_280EE5EA8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C860]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5EA0);
    }
  }
}

uint64_t sub_2197679CC()
{
  sub_21976A0A4(0, &qword_280EE5EE0, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C848]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_21976A0A4(0, &qword_280EE5EB8, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C860]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  sub_2197616A4(&v13 - v10);
  if (!v1)
  {
    sub_219BE54B4();
    (*(v9 + 8))(v11, v8);
    v0 = sub_219BE5484();
    (*(v4 + 8))(v6, v3);
  }

  return v0;
}

unint64_t sub_219767BEC(uint64_t a1)
{
  result = sub_219767C14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219767C14()
{
  result = qword_280ECDA78;
  if (!qword_280ECDA78)
  {
    type metadata accessor for RecipeBoxSearchStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECDA78);
  }

  return result;
}

void sub_219767C6C(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_21870F700(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_219484390(v16, v6 & 1);
    v11 = sub_21870F700(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_219BF79A4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_2194943C0();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_2186CFDE4(0, &qword_280E8B580);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v26 = 1;
      while (v26 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_21870F700(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_219484390(v32, 1);
          v28 = sub_21870F700(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 8 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 3;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219D345B0);
  sub_219BF7484();
  MEMORY[0x21CECC330](39, 0xE100000000000000);
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_219767FEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C3F0C0();
        v5 = sub_219BF5A34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_219768228(v7, v8, a1, v4);
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
    return sub_2197680E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2197680E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_21976990C(v10, v21, sub_218C3F0C0);
      v11 = v10 - 3;
      sub_21976990C((v10 - 3), v19, sub_218C3F0C0);
      v12 = v22;
      v13 = v20;
      sub_219769BE8(v19, sub_218C3F0C0);
      result = sub_219769BE8(v21, sub_218C3F0C0);
      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = v10[1];
      v14 = v10[2];
      v16 = *v10;
      v17 = *(v10 - 2);
      *v10 = *v11;
      v10[1] = v17;
      v10[2] = *(v10 - 1);
      *v11 = v16;
      *(v10 - 2) = v15;
      v10 -= 3;
      v11[2] = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219768228(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v96 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v6 = *v96;
    if (!*v96)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_218C81048(v10);
      v10 = result;
    }

    v104 = v10;
    v89 = *(v10 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v4;
        if (!*v4)
        {
          goto LABEL_125;
        }

        v4 = *&v10[16 * v89];
        v91 = *&v10[16 * v89 + 24];
        sub_219768944((v90 + 48 * v4), (v90 + 48 * *&v10[16 * v89 + 16]), (v90 + 48 * v91), v6);
        if (v7)
        {
        }

        if (v91 < v4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v89 - 2 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v92 = &v10[16 * v89];
        *v92 = v4;
        *(v92 + 1) = v91;
        v104 = v10;
        result = sub_218C80FBC(v89 - 1);
        v10 = v104;
        v89 = *(v104 + 2);
        v4 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *a3;
      sub_21976990C(*a3 + 48 * v12, v102, sub_218C3F0C0);
      v6 = 48 * v11;
      v14 = v11;
      v15 = v13 + 48 * v11;
      sub_21976990C(v15, v100, sub_218C3F0C0);
      v16 = v103;
      v17 = v101;
      sub_219769BE8(v100, sub_218C3F0C0);
      result = sub_219769BE8(v102, sub_218C3F0C0);
      v4 = v14 + 2;
      v18 = v15 + 96;
      while (v8 != v4)
      {
        sub_21976990C(v18, v102, sub_218C3F0C0);
        sub_21976990C(v18 - 48, v100, sub_218C3F0C0);
        v19 = v103;
        v20 = v101;
        sub_219769BE8(v100, sub_218C3F0C0);
        result = sub_219769BE8(v102, sub_218C3F0C0);
        ++v4;
        v18 += 48;
        if (v17 < v16 == v20 >= v19)
        {
          v8 = v4 - 1;
          break;
        }
      }

      v11 = v14;
      if (v17 < v16)
      {
        if (v8 < v14)
        {
          goto LABEL_118;
        }

        if (v14 < v8)
        {
          v21 = 48 * v8 - 48;
          v22 = v8;
          v23 = v14;
          do
          {
            if (v23 != --v22)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v24 = (v31 + v6);
              v25 = (v31 + v21);
              v26 = *v24;
              v27 = *(v24 + 1);
              v28 = *(v24 + 2);
              v30 = v25[1];
              v29 = v25[2];
              *v24 = *v25;
              *(v24 + 1) = v30;
              *(v24 + 2) = v29;
              v25[1] = v27;
              v25[2] = v28;
              *v25 = v26;
            }

            ++v23;
            v21 -= 48;
            v6 += 48;
          }

          while (v23 < v22);
        }
      }
    }

    v32 = a3[1];
    if (v8 < v32)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v32)
        {
          v6 = a3[1];
        }

        else
        {
          v6 = v11 + a4;
        }

        if (v6 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

    v6 = v8;
LABEL_29:
    if (v6 < v11)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v4 = *(v10 + 2);
    v33 = *(v10 + 3);
    v34 = v4 + 1;
    if (v4 >= v33 >> 1)
    {
      result = sub_2191F6B60((v33 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v4];
    *(v35 + 4) = v11;
    *(v35 + 5) = v6;
    v36 = *v96;
    if (!*v96)
    {
      goto LABEL_126;
    }

    v97 = v6;
    if (v4)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v10 + 4);
          v39 = *(v10 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_49:
          if (v41)
          {
            goto LABEL_105;
          }

          v54 = &v10[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_108;
          }

          v60 = &v10[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_112;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v64 = &v10[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_63:
        if (v59)
        {
          goto LABEL_107;
        }

        v67 = &v10[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_70:
        v4 = v37 - 1;
        if (v37 - 1 >= v34)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v75 = *&v10[16 * v4 + 32];
        v6 = *&v10[16 * v37 + 40];
        sub_219768944((*a3 + 48 * v75), (*a3 + 48 * *&v10[16 * v37 + 32]), (*a3 + 48 * v6), v36);
        if (v7)
        {
        }

        if (v6 < v75)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v4 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v76 = &v10[16 * v4];
        *(v76 + 4) = v75;
        *(v76 + 5) = v6;
        v104 = v10;
        result = sub_218C80FBC(v37);
        v10 = v104;
        v34 = *(v104 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_103;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_104;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_106;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_109;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v97;
    if (v97 >= v8)
    {
      goto LABEL_89;
    }
  }

  v93 = v11;
  v94 = v7;
  v77 = *a3;
  v78 = *a3 + 48 * v8;
  v4 = v11 - v8;
  v98 = v6;
LABEL_81:
  v79 = v4;
  v80 = v78;
  while (1)
  {
    sub_21976990C(v80, v102, sub_218C3F0C0);
    v81 = v80 - 3;
    sub_21976990C((v80 - 3), v100, sub_218C3F0C0);
    v82 = v103;
    v83 = v101;
    sub_219769BE8(v100, sub_218C3F0C0);
    result = sub_219769BE8(v102, sub_218C3F0C0);
    if (v83 >= v82)
    {
LABEL_80:
      ++v8;
      v78 += 48;
      --v4;
      v6 = v98;
      if (v8 != v98)
      {
        goto LABEL_81;
      }

      v11 = v93;
      v7 = v94;
      goto LABEL_29;
    }

    if (!v77)
    {
      break;
    }

    v85 = v80[1];
    v84 = v80[2];
    v86 = *v80;
    v87 = *(v80 - 2);
    *v80 = *v81;
    v80[1] = v87;
    v80[2] = *(v80 - 1);
    *v81 = v86;
    *(v80 - 2) = v85;
    v80 -= 3;
    v81[2] = v84;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_219768944(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_32:
      v19 = v6;
    }

    else
    {
      do
      {
        v19 = v6 - 48;
        v20 = v12 - 48;
        v5 -= 48;
        while (1)
        {
          v12 = v20 + 48;
          v23 = v5 + 48;
          sub_21976990C(v20, v34, sub_218C3F0C0);
          sub_21976990C((v6 - 48), v32, sub_218C3F0C0);
          v24 = v35;
          v25 = v33;
          sub_219769BE8(v32, sub_218C3F0C0);
          sub_219769BE8(v34, sub_218C3F0C0);
          if (v25 < v24)
          {
            break;
          }

          if (v23 != v12)
          {
            v26 = *v20;
            v27 = *(v20 + 2);
            *(v5 + 1) = *(v20 + 1);
            *(v5 + 2) = v27;
            *v5 = v26;
          }

          v21 = v20 - 48;
          v5 -= 48;
          v22 = v20 > v4;
          v20 -= 48;
          if (!v22)
          {
            v12 = v21 + 48;
            goto LABEL_32;
          }
        }

        if (v23 != v6)
        {
          v28 = *v19;
          v29 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v29;
          *v5 = v28;
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 48;
      }

      while (v19 > v7);
      v12 = v20 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      while (1)
      {
        sub_21976990C(v6, v34, sub_218C3F0C0);
        sub_21976990C(v4, v32, sub_218C3F0C0);
        v13 = v35;
        v14 = v33;
        sub_219769BE8(v32, sub_218C3F0C0);
        sub_219769BE8(v34, sub_218C3F0C0);
        if (v14 >= v13)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 48;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 2);
      *(v7 + 1) = *(v15 + 1);
      *(v7 + 2) = v18;
      *v7 = v17;
      goto LABEL_13;
    }

LABEL_15:
    v19 = v7;
  }

  v30 = (v12 - v4) / 48;
  if (v19 != v4 || v19 >= &v4[48 * v30])
  {
    memmove(v19, v4, 48 * v30);
  }

  return 1;
}

uint64_t sub_219768C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_21875F93C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_219768D04(uint64_t a1)
{
  v17 = a1;
  sub_2186D0E2C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_218ACCAC0();
  v1 = sub_219BF56E4();
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    v3 = v1;
    sub_218C36C50(0, v2, 0);
    v4 = 0;
    v16 = *(v3 + 16);
    v5 = v17;
    v6 = (v3 + 40);
    do
    {
      if (v16 == v4)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if (v4 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(v6 - 1);
      v8 = *v6;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_218C36C50((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      v11 = 1.0 - v4++ / v2;
      *(v5 + 16) = v10 + 1;
      v12 = v5 + 24 * v10;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      *(v12 + 48) = v11;
      v6 += 2;
    }

    while (v2 != v4);

    if (!*(v5 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_11:
      v13 = MEMORY[0x277D84F98];
      goto LABEL_12;
    }
  }

  sub_218BE2030();
  v13 = sub_219BF75B4();
LABEL_12:
  v17 = v13;

  sub_219767C6C(v14, 1, &v17);

  return v17;
}

uint64_t sub_219768F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  v88 = a1;
  if (v3)
  {
    *&v96 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v3, 0);
    v4 = v96;
    v6 = a1 + 32;
    do
    {
      sub_218718690(v6, &v99);
      v7 = *(&v100 + 1);
      v8 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v9 = (*(v8 + 24))(v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v96 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v4 = v96;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v15 = sub_219768D04(v4);

  v16 = *(a2 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    *&v96 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v16, 0);
    v17 = v96;
    v18 = a2 + 32;
    do
    {
      sub_218718690(v18, &v99);
      v19 = *(&v100 + 1);
      v20 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v21 = (*(v20 + 24))(v19, v20);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v96 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v96;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  v27 = sub_219768D04(v17);

  v90 = v15;
  v29 = sub_218C40680(v28);

  v89 = v27;
  v31 = sub_219479AA0(v30, v29);
  v32 = sub_21976722C(v88);
  v33 = v31 + 56;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v31 + 56);
  v37 = (v34 + 63) >> 6;
  v87 = v31;

  v38 = 0;
  v86 = MEMORY[0x277D84F90];
  v88 = v32;
  while (v36)
  {
    v39 = v38;
LABEL_19:
    v40 = (*(v87 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v36)))));
    v41 = *v40;
    v42 = v40[1];
    v43 = *(v32 + 16);

    if (!v43 || (v44 = sub_21870F700(v41, v42), v32 = v88, (v45 & 1) == 0) || (v46 = *(*(v88 + 56) + 8 * v44), (v47 = *(v46 + 16)) == 0))
    {
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;

      goto LABEL_39;
    }

    v48 = *(v90 + 16);

    v49 = 0.0;
    v50 = 0.0;
    if (v48)
    {
      v51 = sub_21870F700(v41, v42);
      if (v52)
      {
        v50 = *(*(v90 + 56) + 8 * v51);
      }
    }

    v53 = v89;
    if (*(v89 + 16))
    {
      v54 = sub_21870F700(v41, v42);
      v53 = v89;
      if (v55)
      {
        v49 = *(*(v89 + 56) + 8 * v54);
      }
    }

    if (!*(v90 + 16))
    {
      v57 = 0;
      v58 = *(v53 + 16);
      if (!v58)
      {
        goto LABEL_31;
      }

LABEL_30:
      v59 = v41;
      v60 = v57;
      sub_21870F700(v59, v42);
      v57 = v60;
      v58 = v61 & 1;
      goto LABEL_31;
    }

    sub_21870F700(v41, v42);
    v57 = v56 & 1;
    v58 = *(v89 + 16);
    if (v58)
    {
      goto LABEL_30;
    }

LABEL_31:
    v62 = v58 + v57;
    if (v62)
    {
      v63 = (v50 + v49) / v62;
    }

    else
    {
      v63 = 0.0;
    }

    if (!*(v46 + 16))
    {
      goto LABEL_67;
    }

    sub_218718690(v46 + 32, &v93);
    if (v47 != 1)
    {
      v64 = v46 + 72;
      v65 = 1;
      while (v65 < *(v46 + 16))
      {
        sub_218718690(v64, v91);
        if (sub_21976751C(&v93, v91, v90, v89))
        {
          __swift_destroy_boxed_opaque_existential_1(&v93);
          sub_21875F93C(v91, &v93);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v91);
        }

        ++v65;
        v64 += 40;
        if (v47 == v65)
        {
          goto LABEL_36;
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1(v91);
      __swift_destroy_boxed_opaque_existential_1(&v93);
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_36:

    sub_21875F93C(&v93, &v96);
    v91[1] = v97;
    v91[0] = v96;
    v92 = v98;
    if (*(&v97 + 1))
    {
      sub_21875F93C(v91, &v93);
      sub_21875F93C(&v93, &v99);
      *(&v101 + 1) = v63;
    }

    else
    {
      sub_219769BE8(v91, sub_219769814);
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
    }

    v32 = v88;
LABEL_39:
    v36 &= v36 - 1;
    if (*(&v100 + 1))
    {
      v96 = v99;
      v97 = v100;
      v98 = v101;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v66 = v86;
      }

      else
      {
        v66 = sub_2191F9FF8(0, v86[2] + 1, 1, v86);
      }

      v86 = v66;
      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v86 = sub_2191F9FF8((v67 > 1), v68 + 1, 1, v86);
      }

      v69 = v86;
      v86[2] = v68 + 1;
      v70 = &v69[6 * v68];
      v71 = v96;
      v72 = v98;
      v70[3] = v97;
      v70[4] = v72;
      v70[2] = v71;
      v38 = v39;
    }

    else
    {
      sub_21976A048(&v99, &qword_27CC1EBD8, sub_218C3F0C0);
      v38 = v39;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v39 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      goto LABEL_19;
    }
  }

  *&v99 = v86;

  sub_219761638(&v99);

  v73 = v99;
  v74 = *(v99 + 16);
  if (v74)
  {
    *&v91[0] = MEMORY[0x277D84F90];
    sub_218C36C70(0, v74, 0);
    v75 = *&v91[0];
    v76 = v73 + 32;
    do
    {
      sub_21976990C(v76, &v99, sub_218C3F0C0);
      v96 = v99;
      v97 = v100;
      v98 = v101;
      sub_21875F93C(&v96, &v93);
      *&v91[0] = v75;
      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_218C36C70((v77 > 1), v78 + 1, 1);
      }

      v79 = v94;
      v80 = v95;
      v81 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v94);
      MEMORY[0x28223BE20](v81);
      v83 = &v86 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v84 + 16))(v83);
      sub_219768C6C(v78, v83, v91, v79, v80);
      __swift_destroy_boxed_opaque_existential_1(&v93);
      v75 = *&v91[0];
      v76 += 48;
      --v74;
    }

    while (v74);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v75;
}

void sub_219769814()
{
  if (!qword_27CC1EBE0)
  {
    sub_2186CFDE4(255, &qword_27CC0F550);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1EBE0);
    }
  }
}

void sub_21976987C()
{
  if (!qword_280EE5EF0)
  {
    sub_21976A0A4(255, &qword_280EE5EF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C838]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5EF0);
    }
  }
}

uint64_t sub_21976990C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219769974(uint64_t a1, uint64_t a2)
{
  sub_219767930();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2197699D8()
{
  if (!qword_27CC1EBF0)
  {
    sub_21976A0A4(255, &qword_27CC1EBF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C900]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1EBF0);
    }
  }
}

void sub_219769A68()
{
  if (!qword_27CC1EC00)
  {
    sub_219769B3C(255, &qword_27CC1EC08, &qword_27CC1EC10);
    sub_21976A0A4(255, &qword_27CC1EBF8, sub_218FAC78C, &type metadata for RecipeBoxSearchEntity2, MEMORY[0x277D6C900]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1EC00);
    }
  }
}

void sub_219769B3C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_219769F10(255, a3);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_219769B94()
{
  result = qword_27CC1EC18;
  if (!qword_27CC1EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EC18);
  }

  return result;
}

uint64_t sub_219769BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219769C48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21976A0A4(255, a3, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_219769CBC(uint64_t a1, uint64_t a2)
{
  sub_219769C48(0, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219769D44(uint64_t a1, uint64_t a2)
{
  sub_219769C48(0, &qword_280EE5EB0, &qword_280EE5EB8, MEMORY[0x277D6C860]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_219769DCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186D0E2C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219769E3C()
{
  if (!qword_27CC1EC58)
  {
    sub_219769B3C(255, &qword_27CC1EC60, &qword_27CC1EC68);
    sub_21976A0A4(255, &qword_27CC1EC50, sub_218FABB04, &type metadata for RecipeBoxSearchEntity, MEMORY[0x277D6C900]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC1EC58);
    }
  }
}

void sub_219769F10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_219BE5564();
    v3 = sub_219BF7B54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_219769F70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_219769C48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_219769FCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_21976A0A4(255, a3, a4, a5, MEMORY[0x277D6C8D0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21976A048(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218738224(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21976A0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21976A120()
{
  result = qword_27CC1EC90;
  if (!qword_27CC1EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EC90);
  }

  return result;
}

uint64_t sub_21976A178(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_219BF5B44();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_21976A20C, v4, v6);
}

uint64_t sub_21976A20C()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_2186CFDE4(0, &qword_280E8B580);
  if (sub_219BF5C64())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    sub_2197556A4();
    *v3 = v0;
    v3[1] = sub_21976A33C;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_21976A33C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21976A57C;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21976A458;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21976A458()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_219BF5C64())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  sub_2197556A4();
  *v4 = v0;
  v4[1] = sub_21976A33C;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v7, v6, v5);
}

uint64_t sub_21976A57C()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_219BF5C64())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    sub_2197556A4();
    *v4 = v0;
    v4[1] = sub_21976A33C;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_21976A6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_21976A6D0, v3, 0);
}

uint64_t sub_21976A6D0()
{
  v9 = v0;
  v1 = v0[9];
  sub_219BE2CF4();
  v2 = v0[2];
  v0[11] = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[9];
    v5 = sub_21947D1C0(*(v1 + 16), 0);
    v7 = sub_2194ABD64(&v8, v5 + 4, v3, v4);

    sub_21892DE98();
    if (v7 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[12] = v5;

  return MEMORY[0x2822009F8](sub_21976A7E4, v2, 0);
}

uint64_t sub_21976A7E4()
{
  v1 = sub_219765298(*(v0 + 88), *(v0 + 56), *(v0 + 64), *(v0 + 96));
  v2 = sub_219765760(*(v0 + 88), *(v0 + 56), *(v0 + 64), *(v0 + 96));
  v3 = *(v0 + 80);
  v4 = v2;

  v5 = sub_218ACF048(v1);

  v6 = sub_218ACF084(v4);

  *(v0 + 104) = sub_219768F38(v5, v6);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21976A934, v3, 0);
}

uint64_t sub_21976A934()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v2, 0);
    v3 = v15;
    v4 = v1 + 32;
    do
    {
      sub_218718690(v4, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
      v7 = (*(v6 + 24))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21870B65C((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v13 = v0[1];

  return v13(v3);
}

uint64_t sub_21976AAA0(uint64_t a1)
{
  *(v2 + 792) = v1;
  *(v2 + 744) = a1;
  return MEMORY[0x2822009F8](sub_21976AAC4, v1, 0);
}

uint64_t sub_21976AAC4()
{

  sub_2186E2394();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 696, sub_21976AB68, v0 + 656);
}

uint64_t sub_21976AB68()
{
  *(v1 + 840) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, v1 + 696, sub_21976B218, v1 + 704);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_21976ABAC, *(v1 + 792), 0);
  }
}

uint64_t sub_21976ABAC()
{
  v16 = v0;
  v1 = v0[87];

  v3 = sub_218845F78(v2);

  if (*(v3 + 16) <= v1[2] >> 3)
  {
    goto LABEL_5;
  }

  v4 = sub_218EB4048(v3, v1);

  v3 = *(v4 + 16);
  if (v3)
  {
    while (1)
    {
      v1 = sub_21947D1C0(v3, 0);
      v5 = sub_2194ABD64(&v15, v1 + 4, v3, v4);
      sub_21892DE98();
      if (v5 == v3)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v15 = v1;
      sub_218EB3B08(v3);

      v4 = v15;
      v3 = v15[2];
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v1 = MEMORY[0x277D84F90];
  }

  v0[111] = v1;
  v7 = v0[99];
  v8 = sub_21879B32C(&qword_280EC3CE8, v6, type metadata accessor for RecipeBoxSearchDatabase);
  v9 = swift_task_alloc();
  v0[112] = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v7;
  v10 = swift_task_alloc();
  v0[113] = v10;
  *v10 = v0;
  v10[1] = sub_21976ADAC;
  v11 = MEMORY[0x277D84F78] + 8;
  v18 = MEMORY[0x277D84F78] + 8;
  v12 = MEMORY[0x277D84F78] + 8;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v10, v11, v12, v7, v8, &unk_219CA1EA8, v9, v13);
}

uint64_t sub_21976ADAC()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = *(v2 + 792);
    v4 = sub_21976B0A0;
  }

  else
  {
    v5 = *(v2 + 792);

    v4 = sub_21976AEE0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21976AEE0()
{
  v1 = swift_task_alloc();
  *(v0 + 920) = v1;
  *v1 = v0;
  v1[1] = sub_21976AF78;
  v2 = *(v0 + 744);

  return sub_21976B710(v2);
}

uint64_t sub_21976AF78()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = sub_21976B298;
    v4 = v2 + 16;
    v5 = v2 + 696;
    v6 = v2 + 800;
  }

  else
  {
    v3 = sub_21976B198;
    v4 = v2 + 16;
    v5 = v2 + 696;
    v6 = v2 + 848;
  }

  return MEMORY[0x282200920](v4, v5, v3, v6);
}

uint64_t sub_21976B0A0()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_21976B118, v0 + 752);
}

uint64_t sub_21976B134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976B1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976B234()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976B2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976B318(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_21976B334, a2, 0);
}

uint64_t sub_21976B334()
{
  sub_219BE2CF4();
  v1 = v0[2];
  v0[6] = v1;
  v2 = sub_21879B32C(&qword_280ECDA70, 255, type metadata accessor for RecipeBoxSearchStore);
  v0[7] = v2;
  v0[8] = *(v2 + 16);
  v0[9] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x9E62000000000000;

  return MEMORY[0x2822009F8](sub_21976B3F4, v1, 0);
}

uint64_t sub_21976B3F4()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = type metadata accessor for RecipeBoxSearchStore();
  v0[10] = v1(v3, v2);
  v0[11] = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21976B4A0, 0, 0);
}

uint64_t sub_21976B4A0()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v2, 0);
    v3 = v19;
    v4 = v1 + 56;
    do
    {
      v18 = v2;

      v6 = MEMORY[0x21CEBC2B0](v5);
      v16 = v7;
      v17 = v6;

      v9 = *(v19 + 16);
      v8 = *(v19 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21870B65C((v8 > 1), v9 + 1, 1);
      }

      *(v19 + 16) = v9 + 1;
      v10 = v19 + 16 * v9;
      *(v10 + 32) = v17;
      *(v10 + 40) = v16;
      v4 += 80;
      --v2;
    }

    while (v18 != 1);
    v0 = v15;
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v11 = v0[4];
  v12 = sub_218845F78(v3);

  *v11 = v12;
  v13 = v0[1];

  return v13();
}

uint64_t sub_21976B6AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976B710(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21976B730, v1, 0);
}

uint64_t sub_21976B730()
{
  v1 = v0[3];
  v3 = v1[18];
  v2 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_21976B7F4;
  v5 = v0[2];

  return MEMORY[0x282192298](v5, v3, v2);
}

uint64_t sub_21976B7F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_21976B93C, v7, 0);
  }
}

uint64_t sub_21976B93C(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v4 = v2[3];
  v5 = sub_21879B32C(&qword_280EC3CE8, a2, type metadata accessor for RecipeBoxSearchDatabase);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_21976BA64;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v7, v8, v9, v4, v5, &unk_219CA1E50, v6, v10);
}

uint64_t sub_21976BA64()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_218BB0050;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_21976F788;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21976BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_21875FD98(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21976BC54, a4, 0);
}

uint64_t sub_21976BC54(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  if (v3 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:
    v22 = *(v2 + 88);
    v23 = sub_21879B32C(&qword_280EC3CE8, a2, type metadata accessor for RecipeBoxSearchDatabase);
    v24 = swift_task_alloc();
    *(v2 + 112) = v24;
    *v24 = v2;
    v24[1] = sub_21976C00C;

    return sub_21976A178(v22, v23);
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v5 = 0;
    v27 = **(v2 + 72);
    v28 = result;
    v26 = v3 & 0xC000000000000001;
    v25 = *(v2 + 80) + 32;
    while (1)
    {
      if (v26)
      {
        v8 = MEMORY[0x21CECE0F0](v5, *(v2 + 80));
      }

      else
      {
        v8 = *(v25 + 8 * v5);
      }

      v9 = v8;
      v11 = *(v2 + 96);
      v10 = *(v2 + 104);
      v12 = *(v2 + 88);
      v13 = sub_219BF5BF4();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v10, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v12;
      v15[5] = v9;
      sub_218AB5BE8(v10, v11);
      LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);

      v17 = v9;
      v18 = *(v2 + 96);
      if (v10 == 1)
      {
        sub_218808014(*(v2 + 96), &qword_280E8EAA0, MEMORY[0x277D85720]);
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_219BF5BE4();
        (*(v14 + 8))(v18, v13);
        if (!*v16)
        {
LABEL_14:
          v19 = 0;
          v21 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_219BF5B44();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_15:

      if (v21 | v19)
      {
        v6 = v2 + 16;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = v19;
        *(v2 + 40) = v21;
      }

      else
      {
        v6 = 0;
      }

      ++v5;
      v7 = *(v2 + 104);
      *(v2 + 48) = 1;
      *(v2 + 56) = v6;
      *(v2 + 64) = v27;
      swift_task_create();

      sub_218808014(v7, &qword_280E8EAA0, MEMORY[0x277D85720]);
      if (v28 == v5)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21976C00C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21976C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 1928) = a5;
  *(v5 + 1880) = a4;
  return MEMORY[0x2822009F8](sub_21976C164, 0, 0);
}

uint64_t sub_21976C164()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1880);
  v3 = swift_allocObject();
  *(v0 + 1976) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  *(v0 + 2024) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;

  v6 = v4;
  sub_2186D0C98(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  *(v0 + 2072) = v7;
  swift_asyncLet_begin();
  v8 = [v6 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  *(v0 + 2120) = v9;
  *(v0 + 2168) = v11;
  v12 = [v6 title];
  v13 = sub_219BF5414();
  v15 = v14;

  *(v0 + 2216) = v13;
  *(v0 + 2264) = v15;
  v16 = [v6 authors];
  if (v16)
  {
    v17 = v16;
    v18 = sub_219BF5924();
  }

  else
  {
    v18 = &unk_282A292A8;
  }

  *(v0 + 2312) = v18;
  v19 = [objc_msgSend(*(v0 + 1928) sourceChannel)];
  swift_unknownObjectRelease();
  v20 = sub_219BF5414();
  v22 = v21;

  *(v0 + 2360) = v20;
  *(v0 + 2408) = v22;

  return MEMORY[0x282200930](v0 + 16, v0 + 1576, sub_21976C3C0, v0 + 2176);
}

uint64_t sub_21976C3C0()
{
  *(v1 + 2416) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1832, sub_21976D1FC, v1 + 2128);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21976C49C, 0, 0);
  }
}

uint64_t sub_21976C49C()
{
  v0[303] = v0[197];
  v0[304] = v0[198];

  return MEMORY[0x282200930](v0 + 2, v0 + 197, sub_21976C514, v0 + 212);
}

uint64_t sub_21976C514()
{
  *(v1 + 2440) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1832, sub_21976D2C4, v1 + 1744);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21976C5FC, 0, 0);
  }
}

uint64_t sub_21976C5FC()
{
  v0[306] = v0[199];
  v0[307] = v0[200];

  return MEMORY[0x282200930](v0 + 2, v0 + 197, sub_21976C674, v0 + 230);
}

uint64_t sub_21976C674()
{
  *(v1 + 2464) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1832, sub_21976D38C, v1 + 1888);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21976C774, 0, 0);
  }
}

uint64_t sub_21976C774()
{
  v0[309] = v0[201];
  v0[310] = v0[202];

  return MEMORY[0x282200930](v0 + 82, v0 + 229, sub_21976C7EC, v0 + 162);
}

uint64_t sub_21976C7EC()
{
  *(v1 + 2488) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1832, sub_21976D454, v1 + 2032);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21976C8F8, 0, 0);
  }
}

uint64_t sub_21976C8F8()
{
  v1 = v0[289];
  v2 = v0[241];
  v21 = v0[235];
  v20 = v0[229];

  v3 = [v2 topicTagIDs];
  v4 = sub_219BF5924();

  sub_2186D0C98(0, &qword_280E8B750, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v6 = [objc_msgSend(v2 sourceChannel)];
  swift_unknownObjectRelease();
  v7 = sub_219BF5414();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  sub_2191ED3E8(inited);
  sub_219BE5734();
  swift_allocObject();
  v19 = sub_219BE5724();
  sub_219BE5564();
  swift_allocObject();
  v17 = sub_219BE5554();
  swift_allocObject();
  v14 = sub_219BE5554();
  swift_allocObject();
  v22 = sub_219BE5554();
  swift_allocObject();
  v10 = sub_219BE5554();
  swift_allocObject();
  v11 = sub_219BE5554();
  swift_allocObject();
  v12 = sub_219BE5554();
  swift_allocObject();
  v15 = sub_219BE5554();
  swift_allocObject();
  v16 = sub_219BE5554();
  swift_allocObject();
  v18 = sub_219BE5554();
  sub_219BE5524();
  sub_219BE5524();
  v0[211] = v1;
  sub_2189DD328();
  sub_219BF5324();

  sub_219BE5524();
  sub_219BE5524();
  sub_219BE5524();
  sub_219BE5524();
  sub_219BE5524();
  v0[217] = v20;
  sub_219BF5324();

  sub_219BE5524();
  v0[223] = v4;
  sub_219BF5324();

  sub_219BE5524();
  v0[167] = v19;
  v0[168] = v17;
  v0[169] = v14;
  v0[170] = v22;
  v0[171] = v10;
  v0[172] = v11;
  v0[173] = v12;
  v0[174] = v15;
  v0[175] = v16;
  v0[176] = v18;
  v0[187] = v19;
  v0[188] = v17;
  v0[189] = v14;
  v0[190] = v22;
  v0[191] = v10;
  v0[192] = v11;
  v0[193] = v12;
  v0[194] = v15;
  v0[195] = v16;
  v0[196] = v18;
  sub_218AD7F58((v0 + 167), (v0 + 177));
  sub_218FACF88((v0 + 187));

  return MEMORY[0x2822009F8](sub_21976CE88, v21, 0);
}

uint64_t sub_21976CE88()
{
  sub_219BE2CF4();
  v1 = *(v0 + 1672);
  *(v0 + 2496) = v1;

  return MEMORY[0x2822009F8](sub_21976CEFC, v1, 0);
}

uint64_t sub_21976CEFC()
{
  v1 = *(v0 + 2488);
  sub_219763764((v0 + 1336));
  *(v0 + 2504) = v1;
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_21976D0C8;
  }

  else
  {
    v2 = sub_21976CF94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21976CF94()
{
  sub_218FACF88(v0 + 1336);

  return MEMORY[0x282200920](v0 + 656, v0 + 1832, sub_21976D000, v0 + 2320);
}

uint64_t sub_21976D058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D0C8()
{
  sub_218FACF88(v0 + 1336);

  return MEMORY[0x282200920](v0 + 656, v0 + 1832, sub_21976D134, v0 + 2224);
}

uint64_t sub_21976D18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D31C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D3E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D4AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_2189EC464;

  return sub_21976D5C4(v3 + 16, a2, a3);
}

uint64_t sub_21976D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_219BDAEA4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_219BDAF04();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  sub_21875FD98(0, &qword_27CC1EC98, MEMORY[0x277CFCCC8]);
  v3[16] = swift_task_alloc();
  v6 = sub_219BDAE64();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21976D794, 0, 0);
}

uint64_t sub_21976D794()
{
  sub_21976F5B4(v0[8] + 200, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_21976D948;
    v4 = v0[16];
    v5 = v0[9];

    return MEMORY[0x282192E68](v4, v5, v1, v2);
  }

  else
  {
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    sub_21976F680((v0 + 2));
    (*(v7 + 56))(v8, 1, 1, v6);
    sub_218808014(v0[16], &qword_27CC1EC98, MEMORY[0x277CFCCC8]);
    v9 = v0[7];

    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_21976D948()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21976DCF8;
  }

  else
  {
    v2 = sub_21976DA5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21976DA5C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218808014(v0[16], &qword_27CC1EC98, MEMORY[0x277CFCCC8]);
    v4 = 0;
    v5 = 0;
    v29 = 0xE000000000000000;
    v30 = 0;
    v6 = 0xE000000000000000;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    v11 = v0[17];
    v12 = v0[18];
    (*(v12 + 32))(v10, v0[16], v11);
    (*(v12 + 16))(v9, v10, v11);
    sub_219BDAEE4();
    v14 = v0[17];
    v13 = v0[18];
    if (v8)
    {
      (*(v13 + 8))(v0[20], v0[17]);

      v15 = v0[1];
      goto LABEL_7;
    }

    v16 = v0[15];
    v17 = v0[12];
    v27 = v0[20];
    v28 = v0[13];
    v18 = v0[11];
    v25 = v0[10];
    v26 = v0[14];
    sub_219BDAEF4();
    v19 = sub_219BDAE74();
    v29 = v20;
    v30 = v19;
    v4 = sub_219BDAE84();
    v6 = v21;
    v5 = sub_219BDAE94();
    v7 = v22;
    (*(v18 + 8))(v17, v25);
    (*(v26 + 8))(v16, v28);
    (*(v13 + 8))(v27, v14);
  }

  v23 = v0[7];

  *v23 = v30;
  v23[1] = v29;
  v23[2] = v4;
  v23[3] = v6;
  v23[4] = v5;
  v23[5] = v7;
  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_21976DCF8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21976DDC0, 0, 0);
}

uint64_t sub_21976DDC0()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[4] + 160), *(v0[4] + 184));
  v2 = [v1 topicTagIDs];
  sub_219BF5924();

  v0[6] = sub_219BF1C34();

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21976DED4;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_21976DED4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21976E1B4;
  }

  else
  {

    v2 = sub_21976DFF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_21976DFF0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = v0;
  v4 = 0;
  v5 = v15;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](v4, v1);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v6 = [swift_unknownObjectRetain() compactDisplayName];
    v7 = sub_219BF5414();
    v9 = v8;

    swift_unknownObjectRelease_n();
    v11 = *(v15 + 16);
    v10 = *(v15 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_21870B65C((v10 > 1), v11 + 1, 1);
    }

    ++v4;
    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
  }

  while (v2 != v4);

  v0 = v14;
LABEL_14:
  **(v0 + 24) = v5;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21976E1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  sub_21875FD98(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21976E2D8, a4, 0);
}

uint64_t sub_21976E2D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = **(v2 + 72);
    v27 = sub_219BF5BF4();
    v5 = *(v27 - 8);
    v26 = *(v5 + 56);
    v25 = (v5 + 48);
    v24 = (v5 + 8);
    v6 = (v3 + 40);
    do
    {
      v29 = v4;
      v10 = *(v2 + 96);
      v9 = *(v2 + 104);
      v11 = *(v2 + 88);
      v12 = *(v6 - 1);
      v13 = *v6;
      v26(v9, 1, 1, v27);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v11;
      v14[5] = v12;
      v14[6] = v13;
      sub_218AB5BE8(v9, v10);
      LODWORD(v10) = (*v25)(v10, 1, v27);

      v16 = *(v2 + 96);
      if (v10 == 1)
      {
        sub_218808014(*(v2 + 96), &qword_280E8EAA0, MEMORY[0x277D85720]);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_219BF5BE4();
        (*v24)(v16, v27);
        if (*v15)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_219BF5B44();
          v18 = v19;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v17 = 0;
      v18 = 0;
LABEL_10:

      if (v18 | v17)
      {
        v7 = v2 + 16;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = v17;
        *(v2 + 40) = v18;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v2 + 104);
      *(v2 + 48) = 1;
      *(v2 + 56) = v7;
      *(v2 + 64) = v28;
      swift_task_create();

      sub_218808014(v8, &qword_280E8EAA0, MEMORY[0x277D85720]);
      v6 += 2;
      --v4;
    }

    while (v29 != 1);
  }

  v20 = *(v2 + 88);
  v21 = sub_21879B32C(&qword_280EC3CE8, a2, type metadata accessor for RecipeBoxSearchDatabase);
  v22 = swift_task_alloc();
  *(v2 + 112) = v22;
  *v22 = v2;
  v22[1] = sub_21976F78C;

  return sub_21976A178(v20, v21);
}

uint64_t sub_21976E640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return MEMORY[0x2822009F8](sub_21976E664, a4, 0);
}

uint64_t sub_21976E664()
{
  sub_219BE2CF4();
  v1 = *(v0 + 16);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_21976E6D8, v1, 0);
}

uint64_t sub_21976E6D8()
{
  sub_219764AC4(v0[5], v0[6]);
  swift_unknownObjectRelease();
  v1 = v0[1];

  return v1();
}

uint64_t sub_21976E760()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  sub_21976F680(v0 + 200);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21976E7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_219BED284();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21976E874, a4, 0);
}

uint64_t sub_21976E874()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[5];
    v20 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v2, 0);
    v3 = v20;
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v18 = *(v4 + 56);
    v19 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[6];
      v9 = v0[4];
      v19(v8, v6, v9);
      v10 = sub_219BED264();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_21976EA20;

  return sub_21976B710(v3);
}

uint64_t sub_21976EA20()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_21976EB68, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_21976EB68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21976EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21976EBF4, a4, 0);
}

uint64_t sub_21976EBF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21879B32C(&qword_280EC3CE8, a2, type metadata accessor for RecipeBoxSearchDatabase);
  v4 = swift_task_alloc();
  v2[2].i64[0] = v4;
  v10 = v2[1];
  v4[1] = vextq_s8(v10, v10, 8uLL);
  v5 = swift_task_alloc();
  v2[2].i64[1] = v5;
  *v5 = v2;
  v5[1] = sub_21976ED24;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v5, v6, v7, v10.i64[0], v3, &unk_219CA1E10, v4, v8);
}

uint64_t sub_21976ED24()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_219751410;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_218BB0038;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21976EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_21875FD98(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_219BF5BF4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v15 = sub_21879B32C(&qword_280EC3CE8, v14, type metadata accessor for RecipeBoxSearchDatabase);
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v15;
  v16[4] = v8;
  v16[5] = a2;
  swift_retain_n();

  sub_2195E70E0(0, 0, v12, a6, v16);
}

uint64_t sub_21976EFEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_21976EBD4(a1, v4, v5, v7, v6);
}

uint64_t sub_21976F0AC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2187609C8;

  return sub_21976E218(a1, a2, v7, v6);
}

uint64_t sub_21976F160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_21976E640(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21976F228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_21976E7B0(a1, v4, v5, v7, v6);
}

uint64_t sub_21976F2E8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2187609C8;

  return sub_21976BB94(a1, a2, v7, v6);
}

uint64_t sub_21976F39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_21976C140(a1, v4, v5, v7, v6);
}

uint64_t sub_21976F45C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_21976D51C(a1, v5, v4);
}

uint64_t sub_21976F508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_21976DD9C(a1, v5, v4);
}

uint64_t sub_21976F5B4(uint64_t a1, uint64_t a2)
{
  sub_21976F618();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21976F618()
{
  if (!qword_27CC1ECA0)
  {
    sub_2186CFDE4(255, &qword_280E900D0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1ECA0);
    }
  }
}

uint64_t sub_21976F680(uint64_t a1)
{
  sub_21976F618();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21976F6DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_21976B318(a1, v1);
}

uint64_t sub_21976F790()
{
  v0 = qword_27CC1ECB0;

  return v0;
}

uint64_t sub_21976F7C8()
{
  v0 = *a101;

  return v0;
}

uint64_t sub_21976F800@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE2CF4();
  sub_2197714EC();
  swift_allocObject();
  result = sub_219BE5694();
  *a1 = result;
  return result;
}

id *sub_21976F890()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  return v0;
}

uint64_t sub_21976F8E8()
{
  sub_21976F890();

  return swift_deallocClassInstance();
}

uint64_t sub_21976F92C()
{
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0);
  v2 = v7 - v1;
  sub_219BF66B4();
  v3 = sub_219BDBD34();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_2189DD39C(v2);
  if (v4 != 1)
  {
    return sub_21976FAE8();
  }

  sub_2186C66AC();
  v5 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  v7[0] = 0x68736572666572;
  v7[1] = 0xE700000000000000;
  return sub_219BE2014();
}

uint64_t sub_21976FAE8()
{
  v1 = v0;
  v2 = MEMORY[0x277D837D0];
  sub_2186D0BF8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BF66B4();
  sub_219BF66B4();

  sub_2191ED3E8(v3);
  sub_218ACCAC0();
  v15 = sub_219BF56E4();

  sub_2186C66AC();
  v14 = sub_219BF6F74();
  sub_219BF6214();
  sub_21874E974(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;

  sub_219772898(&unk_282A292D8);
  v5 = sub_219BF70C4();
  MEMORY[0x21CECC330](v5);
  swift_unknownObjectRelease();

  *(v4 + 56) = v2;
  v6 = sub_2186FC3BC();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;

  sub_219772898(&unk_282A29308);
  v7 = sub_219BF70C4();
  MEMORY[0x21CECC330](v7);
  swift_unknownObjectRelease();

  *(v4 + 96) = v2;
  *(v4 + 104) = v6;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_219BE5314();

  v8 = v0[10];
  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  MEMORY[0x21CEC9610](v15, *MEMORY[0x277D30B50], v8, v9);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v16;

  v11 = sub_219BE2E54();
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_21976FE7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a2 + 96);
  v8 = sub_219BF5904();
  v9 = [v7 historyItemsByArticleIDForArticleIDs_];

  sub_2186D6710(0, &qword_280E8E1B0);
  v10 = sub_219BF5214();

  isUniquelyReferenced_nonNull_native = *(a2 + 104);
  v80 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_62;
  }

  v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v73 = isUniquelyReferenced_nonNull_native;

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v83 = v6 & 0xC000000000000001;
    v76 = v10;
    v78 = v6 & 0xFFFFFFFFFFFFFF8;
    v74 = v6;
    v75 = v12;
    while (1)
    {
      if (v83)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x21CECE0F0](v14, v6);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          v13 = v80;
          break;
        }
      }

      else
      {
        if (v14 >= *(v78 + 16))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          v12 = sub_219BF7214();
          goto LABEL_3;
        }

        isUniquelyReferenced_nonNull_native = *(v6 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_33;
        }
      }

      v16 = [isUniquelyReferenced_nonNull_native articleID];
      v17 = sub_219BF5414();
      v19 = v18;

      if (v10[2])
      {
        v20 = sub_21870F700(v17, v19);
        v22 = v21;

        if (v22)
        {
          v23 = *(v10[7] + 8 * v20);
          v24 = [swift_unknownObjectRetain() hasArticleBeenRemovedFromAudio];
          v25 = [v23 hasArticleCompletedListening];
          v26 = [v23 hasArticleCompletedReading];
          goto LABEL_15;
        }
      }

      else
      {
      }

      v26 = 0;
      v25 = 0;
      v24 = 0;
LABEL_15:
      v27 = [isUniquelyReferenced_nonNull_native sourceChannelID];
      if (v27)
      {
        v28 = v27;
        v72 = [v73 hasMutedSubscriptionForTagID_];
        v29 = [v73 hasIgnoredSubscriptionForTagID_];

        swift_unknownObjectRelease();
        if ((v24 & 1) != 0 || v25)
        {
          swift_unknownObjectRelease();
          v6 = v74;
          goto LABEL_22;
        }

        v10 = v76;
        if (v26)
        {
          swift_unknownObjectRelease();
          v6 = v74;
          goto LABEL_23;
        }

        v30 = v75;
        if (!v72 && (v29 & 1) == 0)
        {
LABEL_30:
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v6 = v74;
          goto LABEL_6;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if ((v24 & 1) != 0 || v25)
        {
          swift_unknownObjectRelease();
LABEL_22:
          v10 = v76;
LABEL_23:
          v30 = v75;
          goto LABEL_6;
        }

        v30 = v75;
        v10 = v76;
        if (!v26)
        {
          goto LABEL_30;
        }
      }

      swift_unknownObjectRelease();
      v6 = v74;
LABEL_6:
      ++v14;
      if (v15 == v30)
      {
        goto LABEL_34;
      }
    }
  }

  isUniquelyReferenced_nonNull_native = v73;

  swift_bridgeObjectRelease_n();
  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v31 = sub_219BF7214();
    if (v31)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v31 = *(v13 + 16);
    if (v31)
    {
LABEL_38:
      v6 = 0;
      v79 = v13 & 0xC000000000000001;
      v10 = MEMORY[0x277D84F98];
      v77 = v13;
      while (1)
      {
        if (v79)
        {
          v34 = MEMORY[0x21CECE0F0](v6, v13);
          v35 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v6 >= *(v13 + 16))
          {
            goto LABEL_59;
          }

          v34 = *(v13 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v35 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_58;
          }
        }

        v84 = v35;
        v36 = [v34 identifier];
        v37 = sub_219BF5414();
        v39 = v38;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v10;
        v40 = sub_21870F700(v37, v39);
        v42 = v10[2];
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_60;
        }

        v46 = v41;
        if (v10[3] < v45)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = v40;
        sub_2194902C8();
        v40 = isUniquelyReferenced_nonNull_native;
        if (v46)
        {
LABEL_39:
          v32 = v40;

          v33 = v10[7];
          isUniquelyReferenced_nonNull_native = *(v33 + 8 * v32);
          *(v33 + 8 * v32) = v34;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_50:
        v10[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v10[6] + 16 * v40);
        *v48 = v37;
        v48[1] = v39;
        *(v10[7] + 8 * v40) = v34;
        swift_unknownObjectRelease();
        v49 = v10[2];
        v44 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v44)
        {
          goto LABEL_61;
        }

        v10[2] = v50;
LABEL_40:
        ++v6;
        v13 = v77;
        if (v84 == v31)
        {
          goto LABEL_65;
        }
      }

      sub_21947DE18(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_21870F700(v37, v39);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_96;
      }

LABEL_49:
      if (v46)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }
  }

  v10 = MEMORY[0x277D84F98];
LABEL_65:

  v81 = MEMORY[0x277D84F90];
  v51 = *(a4 + 16);
  if (!v51)
  {
    v53 = a5;
    goto LABEL_79;
  }

  v52 = 0;
  v53 = a5;
  do
  {
    v54 = (a4 + 40 + 16 * v52);
    v55 = v52;
    while (1)
    {
      if (v55 >= v51)
      {
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v52 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_93;
      }

      if (v10[2])
      {
        break;
      }

LABEL_69:
      ++v55;
      v54 += 2;
      if (v52 == v51)
      {
        goto LABEL_79;
      }
    }

    v56 = *(v54 - 1);
    v57 = *v54;

    sub_21870F700(v56, v57);
    if ((v58 & 1) == 0)
    {

      v53 = a5;
      goto LABEL_69;
    }

    swift_unknownObjectRetain();

    MEMORY[0x21CECC690](v59);
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v53 = a5;
  }

  while (v52 != v51);
LABEL_79:
  v82 = MEMORY[0x277D84F90];
  v60 = *(v53 + 16);
  if (v60)
  {
    v61 = 0;
    v62 = v53 + 40;
LABEL_81:
    v63 = (v62 + 16 * v61);
    v64 = v61;
    while (v64 < v60)
    {
      v61 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_95;
      }

      if (v10[2])
      {
        v65 = *(v63 - 1);
        v66 = *v63;

        sub_21870F700(v65, v66);
        if (v67)
        {
          swift_unknownObjectRetain();

          MEMORY[0x21CECC690](v68);
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          if (v61 != v60)
          {
            goto LABEL_81;
          }

          goto LABEL_91;
        }
      }

      ++v64;
      v63 += 2;
      if (v61 == v60)
      {
        goto LABEL_91;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    result = sub_219BF79A4();
    __break(1u);
  }

  else
  {
LABEL_91:

    sub_2186D0BF8(0, &qword_280EE6EE0, &type metadata for AudioSuggestions, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_219770688()
{
  sub_2186D0BF8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BF66B4();
  sub_2197707A4(v3);

  sub_219BE3204();

  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_2197707A4(uint64_t a1)
{
  v3 = sub_219BED174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_219773194;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_45_4;
  v12 = _Block_copy(aBlock);

  sub_219BED1A4();
  v14[1] = MEMORY[0x277D84F90];
  sub_21874E378(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E974(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_219770A70(uint64_t *a1)
{
  v2 = *a1;
  v3 = __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v13[3] = v2;
  v13[4] = &off_282A86128;
  v13[0] = a1;
  v4 = *v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v13, v2);
  v12[3] = v2;
  v12[4] = &off_282A86128;
  v12[0] = v5;
  sub_2197730A4();

  sub_219BE3204();
  sub_218718690(v12, v11);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  sub_2186CB1F0(v11, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_219773114;
  *(v7 + 24) = v6;

  v8 = sub_219BE2E54();
  v9 = sub_219BE2F64();

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_219770C14(uint64_t *a1)
{
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v6 = *a1;
  v5 = a1[1];
  sub_219BDBD24();
  v7 = sub_219BDBD34();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_219770E04(v4);
  v8 = sub_21974D8A0(v6);
  sub_2197711A0(v8, &unk_282A86290, sub_219772FCC, &block_descriptor_27_3);
  v9 = sub_21974D8A0(v5);
  sub_2197711A0(v9, &unk_282A86240, sub_219772FA4, &block_descriptor_21_4);
  sub_2197711A0(MEMORY[0x277D84F90], &unk_282A861F0, sub_219772F7C, &block_descriptor_15_4);
  v11[0] = v6;
  v11[1] = v5;
  sub_2186D0BF8(0, &qword_280EE6EE0, &type metadata for AudioSuggestions, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_219770E04(uint64_t a1)
{
  v19 = a1;
  v3 = sub_219BED174();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED1D4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v18 = *(v1 + 120);
  sub_2187D96F4(a1, &v18 - v12);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  sub_218A5DD60(v13, v15 + v14);
  aBlock[4] = sub_219772FF4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_33_3;
  v16 = _Block_copy(aBlock);

  sub_219BED1A4();
  v21 = MEMORY[0x277D84F90];
  sub_21874E378(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E974(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v9, v6, v16);
  _Block_release(v16);
  sub_2189DD39C(v19);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_2197711A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BED174();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED1D4();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 120);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  sub_219BED1A4();
  v20 = MEMORY[0x277D84F90];
  sub_21874E378(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E974(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_219771458()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2187E7248();
  v1 = sub_219BE2F74();

  return v1;
}

void sub_2197714EC()
{
  if (!qword_280EE5E40)
  {
    sub_21872CE2C();
    v0 = sub_219BE56A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5E40);
    }
  }
}

uint64_t sub_219771548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_219BED174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_219772344;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_166;
  v15 = _Block_copy(aBlock);

  sub_219BED1A4();
  v17[1] = MEMORY[0x277D84F90];
  sub_21874E378(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E974(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_219771820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F98];
LABEL_16:
    v24 = v3[2];
    if (v24)
    {
      v25 = sub_21947D1C0(v3[2], 0);
      v26 = sub_2194B7E3C(v30, v25 + 4, v24, v3);

      sub_21892DE98();
      if (v26 != v24)
      {
        __break(1u);
      }
    }

    sub_219BE2CF4();
    sub_219BE5674();

    MEMORY[0x28223BE20](v27);
    v28 = sub_219BF5254();

    return v28;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = *(v2 - 1);
    v6 = *v2;
    strcpy(v30, "ignore_count_");
    HIWORD(v30[1]) = -4864;

    MEMORY[0x21CECC330](v7, v6);
    v9 = v30[0];
    v8 = v30[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v3;
    v11 = sub_21870F700(v9, v30[1]);
    v13 = v3[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v3[3] < v16)
    {
      sub_21948381C(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_21870F700(v9, v30[1]);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_22;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_219493D28();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v4 = v11;

      v3 = v30[0];
      v5 = (*(v30[0] + 56) + 16 * v4);
      *v5 = v7;
      v5[1] = v6;

      goto LABEL_4;
    }

LABEL_11:
    v3 = v30[0];
    *(v30[0] + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v3[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    v20 = (v3[7] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;

    v21 = v3[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_21;
    }

    v3[2] = v22;
LABEL_4:
    v2 += 2;
    if (!--v1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_219771B98(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  if (*(a5 + 16))
  {
    v9 = sub_21870F700(*a3, a3[1]);
    if (v10)
    {
      v11 = *(*(a5 + 56) + 16 * v9);
    }

    else
    {
      v11 = 0;
      result = 0;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

  *a1 = v11;
  a1[1] = result;
  *a2 = v7;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_219771C24()
{
  sub_219BE2CF4();
  sub_219BDBD34();
  v0 = MEMORY[0x277CC9578];
  sub_21874E378(&unk_280EE9C70, MEMORY[0x277CC9578]);
  sub_21874E378(&qword_280EE9CA0, v0);

  sub_219BE56B4();
}

uint64_t sub_219771D2C(uint64_t a1, uint64_t a2)
{
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_219BE2CF4();
  sub_2187D96F4(a2, v5);
  sub_219BDBD34();
  v6 = MEMORY[0x277CC9578];
  sub_21874E378(&unk_280EE9C70, MEMORY[0x277CC9578]);
  sub_21874E378(&qword_280EE9CA0, v6);

  sub_219BE56C4();
}

uint64_t sub_219771EA4@<X0>(void *a1@<X8>)
{
  sub_219BE2CF4();
  sub_2186D0BF8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_21875349C(&qword_280E8EDD0);
  sub_21875349C(&unk_280E8EE00);

  sub_219BE56B4();

  v3 = v4;
  if (!v4)
  {
    v3 = MEMORY[0x277D84F90];
  }

  *a1 = v3;
  return result;
}

uint64_t sub_219771FD8()
{
  sub_219BE2CF4();
  sub_2186D0BF8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_21875349C(&qword_280E8EDD0);
  sub_21875349C(&unk_280E8EE00);

  sub_219BE56C4();
}

uint64_t sub_2197720F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE2CF4();
  sub_2186D0BF8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_21875349C(&qword_280E8EDD0);
  sub_21875349C(&unk_280E8EE00);

  sub_219BE56B4();

  if (v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_218845F78(v5);

  v13 = v6;

  sub_219497B60(&v12, a2, a3);

  sub_219BE2CF4();
  v7 = v13;
  v8 = *(v13 + 16);
  if (!v8)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_8:
    v12 = v9;
    sub_219BE56C4();
  }

  v9 = sub_21947D1C0(v8, 0);
  v10 = sub_2194ABD64(&v12, v9 + 4, v8, v7);

  result = sub_21892DE98();
  if (v10 == v8)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_219772350(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v40 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v1, 0);
    v2 = v40;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      strcpy(v39, "ignore_count_");
      HIWORD(v39[1]) = -4864;

      MEMORY[0x21CECC330](v5, v6);

      v7 = v39[0];
      v8 = v39[1];
      v40 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        sub_21870B65C((v9 > 1), v10 + 1, 1);
        v2 = v40;
      }

      v2[2] = v10 + 1;
      v11 = &v2[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  sub_219BE2CF4();
  v12 = sub_219BE5674();

  v38 = v2[2];
  if (!v38)
  {
LABEL_27:

    sub_219BE2CF4();
    sub_219BE5684();
  }

  v13 = 0;
  v14 = v2 + 5;
  v15 = MEMORY[0x277D84F98];
  v37 = v2;
  while (v13 < v2[2])
  {
    v17 = *(v14 - 1);
    v16 = *v14;
    v18 = *(v12 + 16);

    if (v18 && (v19 = sub_21870F700(v17, v16), (v20 & 1) != 0))
    {
      v21 = *(*(v12 + 56) + 8 * v19);
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v15;
    v24 = sub_21870F700(v17, v16);
    v26 = v15[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_30;
    }

    v30 = v25;
    if (v15[3] < v29)
    {
      sub_2194815A0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_21870F700(v17, v16);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      v15 = v39[0];
      if (v30)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v35 = v24;
    sub_219492450();
    v24 = v35;
    v15 = v39[0];
    if (v30)
    {
LABEL_8:
      *(v15[7] + 8 * v24) = v22;

      goto LABEL_9;
    }

LABEL_23:
    v15[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v15[6] + 16 * v24);
    *v32 = v17;
    v32[1] = v16;
    *(v15[7] + 8 * v24) = v22;
    v33 = v15[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_31;
    }

    v15[2] = v34;
LABEL_9:
    ++v13;
    v14 += 2;
    v2 = v37;
    if (v38 == v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_219772718(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_219BF7934();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_21947D1C0(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_219772898(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_219BF7934();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_219772718(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 16 * v16 + 16 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  sub_219BF7934();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);
  if (v18 != v19 + 16 * v20 + 32)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = *(v5 + 16);
  if (v25)
  {
    if (v24 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = v17 + v6;
      if (!__OFADD__(v17, v6))
      {
        sub_219772AD8(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v24)
  {

    return sub_219772B90(v5, v25);
  }

  else
  {
  }
}

uint64_t sub_219772AD8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_219BF7934();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

uint64_t sub_219772B90(uint64_t result, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = result;
  v7 = *(result + 16);
  v35 = v7;
  if (v7 == a2)
  {
LABEL_3:
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = result + 16 * a2;
  v36 = a2 + 1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v30 = v2;
  while (!__OFADD__(v5, 1))
  {
    v37 = sub_2194C9B04(v5, v5 + 1, *v2, v2[1], v4, v3);
    v11 = sub_2194C9CC4();
    sub_2194C968C(&v37, v5, 0, v11);

    v4 = v2[2];
    v3 = v2[3];
    v12 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v34 = v2[1];
    v33 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_219BF7934();
    swift_unknownObjectRetain();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x277D84F90];
    }

    v14 = *(v13 + 16);
    if (v34 + 16 * v4 + 16 * v12 != v13 + 16 * v14 + 32)
    {

LABEL_16:
      v15 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v12 + v17;
    if (__OFADD__(v12, v17))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v15)
    {
      v31 = v3;
      v18 = 0;
      v19 = v6;
      v20 = v4;
      v21 = v36;
      v22 = v6 + 16 * v36;
      v32 = v20;
      v23 = v34 + 16 * v5 + 16 * v20;
      while (1)
      {
        v24 = (v23 + v18);
        *v24 = v10;
        v24[1] = v9;
        ++v5;
        if (v35 == v21)
        {
          v10 = 0;
          v9 = 0;
          v36 = v35;
          goto LABEL_26;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v21 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        ++v21;
        v10 = *(v22 + v18 + 32);
        v9 = *(v22 + v18 + 40);

        v18 += 16;
        if (v15 == v5)
        {
          v36 = v21;
          v5 = v15;
LABEL_26:
          v6 = v19;
          v2 = v30;
          v3 = v31;
          v4 = v32;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v25 = v5 - v12;
    if (__OFSUB__(v5, v12))
    {
      goto LABEL_39;
    }

    if (v25)
    {
      sub_219BF7934();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = *(result + 16);
      v27 = __OFADD__(v26, v25);
      v28 = v26 + v25;
      if (v27)
      {
        goto LABEL_40;
      }

      *(result + 16) = v28;

      v29 = v33 + v25;
      if (__OFADD__(v33, v25))
      {
        goto LABEL_41;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v29);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_219772FF4()
{
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_219771D2C(v3, v4);
}

void sub_2197730A4()
{
  if (!qword_280E8EBA8)
  {
    sub_2187E7248();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EBA8);
    }
  }
}

uint64_t objectdestroy_11Tm_4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_2197731BC(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v8);
  v253 = &v238 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v10 - 8);
  v252 = &v238 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v242 = &v238 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v245 = &v238 - v16;
  MEMORY[0x28223BE20](v15);
  v248 = &v238 - v17;
  v18 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v241 = &v238 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v240 = &v238 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v244 = &v238 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v243 = &v238 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v247 = &v238 - v28;
  MEMORY[0x28223BE20](v27);
  v246 = &v238 - v29;
  v30 = type metadata accessor for SportsScoreSortingOrFilter();
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v270 = &v238 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v266 = &v238 - v34;
  MEMORY[0x28223BE20](v33);
  v273 = &v238 - v35;
  v36 = type metadata accessor for SportsScoreSortingAndFilter();
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v250 = &v238 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v264 = &v238 - v39;
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v254 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v281 = a3;
  if ((sub_219473EF8(v42, a2, a3, a4) & 1) == 0)
  {

    return a2;
  }

  sub_218C42540();
  v44 = v43;
  sub_219BF2664();
  v45 = v284;
  v46 = *(v284 + 16);

  v269 = v46;
  if (!v46)
  {
LABEL_230:

    return a2;
  }

  v251 = v44;
  v48 = 0;
  v261 = 0;
  v268 = v45 + 32;
  v49 = v273;
  v50 = v264;
  v51 = v45;
  v255 = v45;
  while (1)
  {
    if (v48 >= *(v51 + 16))
    {
      goto LABEL_236;
    }

    v56 = *(v268 + 8 * v48);
    if (a2 >> 62)
    {
      result = sub_219BF7214();
      v51 = v255;
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_8;
      }
    }

    v57 = v56 >> 60;
    if ((v56 >> 60) > 3)
    {
      if (v57 <= 5)
      {
        if (v57 == 4)
        {
          v102 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v103 = sub_219659C8C(a2, v281, v102);
          v104 = sub_219AC4B08(a2, v103);

          v50 = v264;

          a2 = v104;
          goto LABEL_7;
        }

        v234 = swift_projectBox();
        v53 = v252;
        sub_218E23E5C(v234, v252, type metadata accessor for SportsScoreSortingSubsetFilter);

        v54 = sub_218E1E094(v53, a2, v281, v56);

        v55 = type metadata accessor for SportsScoreSortingSubsetFilter;
      }

      else
      {
        if (v57 == 6)
        {
          v105 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v106 = sub_21903E324(v105, a2);
          v49 = v273;

          v51 = v255;
          a2 = v106;
          goto LABEL_8;
        }

        if (v57 == 7)
        {
          v58 = swift_projectBox();
          v59 = v240;
          sub_218E23E5C(v58, v240, type metadata accessor for SportsScoreSortingGroupByFilter);

          v60 = sub_218C490D4(v59, a2);
          v61 = v241;
          sub_218E23E5C(v59, v241, type metadata accessor for SportsScoreSortingGroupByFilter);
          v62 = v242;
          v63 = sub_219775F14(v61, v242);
          MEMORY[0x28223BE20](v63);
          v64 = v281;
          *(&v238 - 2) = v62;
          *(&v238 - 1) = v64;
          v65 = v261;
          v66 = sub_218DDE84C(sub_218C49E14, (&v238 - 4), v60);

          v284 = v66;
          sub_218ACC4E4(0);
          sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
          v67 = sub_219BF56E4();
          v261 = v65;
          v50 = v264;

          sub_219775F78(v59, type metadata accessor for SportsScoreSortingGroupByFilter);
          sub_219775F78(v62, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
LABEL_20:

          a2 = v67;
          goto LABEL_7;
        }

        v233 = swift_projectBox();
        v53 = v253;
        sub_218E23E5C(v233, v253, type metadata accessor for SportsScoreSortingFilterWhen);

        v54 = sub_2197731BC(v53, a2, v281, v56);

        v55 = type metadata accessor for SportsScoreSortingFilterWhen;
      }

      goto LABEL_6;
    }

    if (v57 > 1)
    {
      break;
    }

    if (v57)
    {
      v68 = swift_projectBox();
      v69 = v254;
      sub_218E23E5C(v68, v254, type metadata accessor for SportsScoreSortingMatchFilter);

      v70 = sub_218A84E44(v69, a2, v281);
      v67 = sub_219AC4B08(a2, v70);

      sub_219775F78(v69, type metadata accessor for SportsScoreSortingMatchFilter);
      goto LABEL_20;
    }

    v52 = swift_projectBox();
    v53 = v254;
    sub_218E23E5C(v52, v254, type metadata accessor for SportsScoreSortingMatchFilter);

    v54 = sub_218A84E44(v53, a2, v281);

    v55 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_6:
    sub_219775F78(v53, v55);

    a2 = v54;
LABEL_7:
    v49 = v273;
    v51 = v255;
LABEL_8:
    if (++v48 == v269)
    {
      goto LABEL_230;
    }
  }

  v249 = v48;
  v280 = a2;
  if (v57 != 2)
  {
    v107 = swift_projectBox();
    sub_218E23E5C(v107, v49, type metadata accessor for SportsScoreSortingOrFilter);

    v108 = v49;
    sub_219BF2664();
    v109 = *(v284 + 16);

    if (!v109)
    {
      sub_219775F78(v108, type metadata accessor for SportsScoreSortingOrFilter);

      v49 = v108;
LABEL_227:
      v51 = v255;
      v48 = v249;
      goto LABEL_8;
    }

    v239 = v56;
    sub_219BF2664();
    result = v284;
    v260 = *(v284 + 16);
    if (!v260)
    {

      v111 = MEMORY[0x277D84F90];
      goto LABEL_226;
    }

    v110 = 0;
    v259 = v284 + 32;
    v111 = MEMORY[0x277D84F90];
    v112 = v266;
    v258 = v284;
    while (1)
    {
      if (v110 >= *(result + 16))
      {
        goto LABEL_240;
      }

      v114 = *(v259 + 8 * v110);
      v115 = v114 >> 60;
      v274 = v114;
      v275 = v110;
      if ((v114 >> 60) > 3)
      {
        if (v115 <= 5)
        {
          if (v115 == 4)
          {
            v133 = v111;
            v134 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            v135 = sub_219659C8C(a2, v281, v134);
            v126 = sub_219AC4B08(a2, v135);
            v111 = v133;

            goto LABEL_183;
          }

          v216 = swift_projectBox();
          v130 = v252;
          sub_218E23E5C(v216, v252, type metadata accessor for SportsScoreSortingSubsetFilter);

          v126 = sub_218E1E094(v130, a2, v281, v114);
          v131 = type metadata accessor for SportsScoreSortingSubsetFilter;
        }

        else
        {
          if (v115 == 6)
          {
            v136 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            v126 = sub_21903E324(v136, a2);
            goto LABEL_183;
          }

          if (v115 == 7)
          {
            v116 = swift_projectBox();
            v117 = v243;
            sub_218E23E5C(v116, v243, type metadata accessor for SportsScoreSortingGroupByFilter);

            v118 = sub_218C490D4(v117, a2);
            v119 = v111;
            v120 = v244;
            sub_218E23E5C(v117, v244, type metadata accessor for SportsScoreSortingGroupByFilter);
            v121 = v245;
            v122 = sub_219775F14(v120, v245);
            MEMORY[0x28223BE20](v122);
            v123 = v281;
            *(&v238 - 2) = v121;
            *(&v238 - 1) = v123;
            v124 = v261;
            v125 = sub_218DDE84C(sub_218C4A8C8, (&v238 - 4), v118);

            v284 = v125;
            sub_218ACC4E4(0);
            sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
            v126 = sub_219BF56E4();
            v261 = v124;
            v111 = v119;

            sub_219775F78(v117, type metadata accessor for SportsScoreSortingGroupByFilter);
            v127 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
            v128 = v121;
LABEL_182:
            sub_219775F78(v128, v127);
            goto LABEL_183;
          }

          v215 = swift_projectBox();
          v130 = v253;
          sub_218E23E5C(v215, v253, type metadata accessor for SportsScoreSortingFilterWhen);

          v126 = sub_2197731BC(v130, a2, v281, v114);
          v131 = type metadata accessor for SportsScoreSortingFilterWhen;
        }

        goto LABEL_181;
      }

      if (v115 <= 1)
      {
        if (v115)
        {
          v137 = swift_projectBox();
          v138 = v111;
          v139 = v254;
          sub_218E23E5C(v137, v254, type metadata accessor for SportsScoreSortingMatchFilter);

          v140 = sub_218A84E44(v139, a2, v281);
          v126 = sub_219AC4B08(a2, v140);

          v127 = type metadata accessor for SportsScoreSortingMatchFilter;
          v128 = v139;
          v111 = v138;
          goto LABEL_182;
        }

        v129 = swift_projectBox();
        v130 = v254;
        sub_218E23E5C(v129, v254, type metadata accessor for SportsScoreSortingMatchFilter);

        v126 = sub_218A84E44(v130, a2, v281);
        v131 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_181:
        v127 = v131;
        v128 = v130;
        goto LABEL_182;
      }

      if (v115 == 2)
      {
        v132 = swift_projectBox();
        v130 = v250;
        sub_218E23E5C(v132, v250, type metadata accessor for SportsScoreSortingAndFilter);

        v126 = sub_219A600C4(v130, a2, v281, v114);
        v131 = type metadata accessor for SportsScoreSortingAndFilter;
        goto LABEL_181;
      }

      v267 = v111;
      v141 = swift_projectBox();
      sub_218E23E5C(v141, v112, type metadata accessor for SportsScoreSortingOrFilter);

      v142 = v112;
      sub_219BF2664();
      v143 = *(v284 + 16);

      if (v143)
      {
        break;
      }

      sub_219775F78(v142, type metadata accessor for SportsScoreSortingOrFilter);

      v126 = a2;
LABEL_212:
      v111 = v267;
LABEL_183:
      v217 = v126 >> 62;
      if (v126 >> 62)
      {
        v218 = sub_219BF7214();
      }

      else
      {
        v218 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v219 = v111 >> 62;
      if (v111 >> 62)
      {
        result = sub_219BF7214();
        v220 = result + v218;
        if (__OFADD__(result, v218))
        {
          goto LABEL_241;
        }
      }

      else
      {
        result = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v220 = result + v218;
        if (__OFADD__(result, v218))
        {
          goto LABEL_241;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (result)
      {
        if (!v219)
        {
          v221 = v111 & 0xFFFFFFFFFFFFFF8;
          if (v220 <= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_194;
          }

          goto LABEL_193;
        }

LABEL_192:
        sub_219BF7214();
        goto LABEL_193;
      }

      if (v219)
      {
        goto LABEL_192;
      }

LABEL_193:
      result = sub_219BF7364();
      v111 = result;
      v221 = result & 0xFFFFFFFFFFFFFF8;
LABEL_194:
      v222 = *(v221 + 16);
      v223 = *(v221 + 24);
      if (v217)
      {
        result = sub_219BF7214();
        v224 = result;
        if (result)
        {
LABEL_198:
          if (((v223 >> 1) - v222) < v218)
          {
            goto LABEL_246;
          }

          v225 = v221 + 8 * v222 + 32;
          v267 = v111;
          v283 = v218;
          if (v217)
          {
            if (v224 < 1)
            {
              goto LABEL_254;
            }

            sub_218ACC4E4(0);
            sub_219684504(&qword_27CC0CC70, sub_218ACC4E4);
            for (i = 0; i != v224; ++i)
            {
              v227 = sub_218A35350(&v284, i, v126);
              v229 = *v228;

              (v227)(&v284, 0);
              *(v225 + 8 * i) = v229;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v283 <= 0)
          {
            a2 = v280;
            v112 = v266;
            v111 = v267;
            result = v258;
            v113 = v275;
          }

          else
          {
            v230 = *(v221 + 16);
            v91 = __OFADD__(v230, v283);
            v231 = v230 + v283;
            a2 = v280;
            v112 = v266;
            v111 = v267;
            result = v258;
            v113 = v275;
            if (v91)
            {
              goto LABEL_252;
            }

            *(v221 + 16) = v231;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v224 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v224)
        {
          goto LABEL_198;
        }
      }

      v112 = v266;
      result = v258;
      v113 = v275;
      if (v218 > 0)
      {
        goto LABEL_242;
      }

LABEL_72:
      v110 = v113 + 1;
      if (v110 == v260)
      {

LABEL_226:
        v284 = v111;
        sub_218ACC4E4(0);
        sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
        v235 = v261;
        v236 = sub_219BF56E4();
        v261 = v235;

        v237 = v273;
        sub_219775F78(v273, type metadata accessor for SportsScoreSortingOrFilter);

        a2 = v236;
        v49 = v237;
        v50 = v264;
        goto LABEL_227;
      }
    }

    sub_219BF2664();
    result = v284;
    v265 = *(v284 + 16);
    if (!v265)
    {

      v145 = MEMORY[0x277D84F90];
      goto LABEL_211;
    }

    v144 = 0;
    v263 = v284 + 32;
    v145 = MEMORY[0x277D84F90];
    v146 = v270;
    v262 = v284;
    while (1)
    {
      if (v144 >= *(result + 16))
      {
        goto LABEL_237;
      }

      v148 = *(v263 + 8 * v144);
      v149 = v148 >> 60;
      v277 = v148;
      v278 = v144;
      if ((v148 >> 60) > 3)
      {
        break;
      }

      if (v149 <= 1)
      {
        if (!v149)
        {
          v162 = swift_projectBox();
          v163 = v254;
          sub_218E23E5C(v162, v254, type metadata accessor for SportsScoreSortingMatchFilter);

          v159 = sub_218A84E44(v163, a2, v281);
          v164 = type metadata accessor for SportsScoreSortingMatchFilter;
          goto LABEL_144;
        }

        v169 = swift_projectBox();
        v170 = v254;
        sub_218E23E5C(v169, v254, type metadata accessor for SportsScoreSortingMatchFilter);

        v171 = sub_218A84E44(v170, a2, v281);
        v159 = sub_219AC4B08(a2, v171);

        v160 = type metadata accessor for SportsScoreSortingMatchFilter;
        v161 = v170;
LABEL_145:
        sub_219775F78(v161, v160);
        goto LABEL_146;
      }

      if (v149 == 2)
      {
        v165 = swift_projectBox();
        v163 = v250;
        sub_218E23E5C(v165, v250, type metadata accessor for SportsScoreSortingAndFilter);

        v159 = sub_219A600C4(v163, a2, v281, v148);
        v164 = type metadata accessor for SportsScoreSortingAndFilter;
        goto LABEL_144;
      }

      v172 = swift_projectBox();
      sub_218E23E5C(v172, v146, type metadata accessor for SportsScoreSortingOrFilter);

      v173 = v146;
      sub_219BF2664();
      v174 = *(v284 + 16);

      if (v174)
      {
        sub_219BF2664();
        v272 = *(v284 + 16);
        if (!v272)
        {

          v176 = MEMORY[0x277D84F90];
LABEL_174:
          v284 = v176;
          sub_218ACC4E4(0);
          sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
          v214 = v261;
          v159 = sub_219BF56E4();
          v261 = v214;

          v160 = type metadata accessor for SportsScoreSortingOrFilter;
          v161 = v270;
          goto LABEL_145;
        }

        v175 = 0;
        v238 = v284;
        v271 = v284 + 32;
        v176 = MEMORY[0x277D84F90];
        v276 = v145;
        while (2)
        {
          v177 = *(v271 + 8 * v175);

          v178 = sub_219659C8C(a2, v281, v177);
          v179 = v178;
          v180 = v178 >> 62;
          if (v178 >> 62)
          {
            v181 = sub_219BF7214();
          }

          else
          {
            v181 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v182 = v176 >> 62;
          if (v176 >> 62)
          {
            result = sub_219BF7214();
            v183 = result + v181;
            if (__OFADD__(result, v181))
            {
              goto LABEL_234;
            }
          }

          else
          {
            result = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v183 = result + v181;
            if (__OFADD__(result, v181))
            {
              goto LABEL_234;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v283 = v181;
          if (result)
          {
            if (!v182)
            {
              v184 = v176 & 0xFFFFFFFFFFFFFF8;
              if (v183 > *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_123:
                result = sub_219BF7364();
                v176 = result;
                v184 = result & 0xFFFFFFFFFFFFFF8;
              }

              v279 = v177;
              v282 = v175;
              v185 = *(v184 + 16);
              v186 = (*(v184 + 24) >> 1) - v185;
              if (v180)
              {
                v188 = sub_219BF7214();
                if (!v188)
                {
                  goto LABEL_111;
                }

                v189 = v188;
                result = sub_219BF7214();
                if (v186 < result)
                {
                  goto LABEL_247;
                }

                if (v189 < 1)
                {
                  goto LABEL_249;
                }

                v187 = result;
                v257 = v176;
                v256 = v184;
                v190 = v184 + 8 * v185 + 32;
                sub_218ACC4E4(0);
                sub_219684504(&qword_27CC0CC70, sub_218ACC4E4);
                for (j = 0; j != v189; ++j)
                {
                  v192 = sub_218A35350(&v284, j, v179);
                  v194 = *v193;

                  (v192)(&v284, 0);
                  *(v190 + 8 * j) = v194;
                }

                v145 = v276;
                v176 = v257;
                v184 = v256;
LABEL_134:

                a2 = v280;
                if (v187 < v283)
                {
                  goto LABEL_235;
                }

                if (v187 > 0)
                {
                  v195 = *(v184 + 16);
                  v91 = __OFADD__(v195, v187);
                  v196 = v195 + v187;
                  if (v91)
                  {
                    goto LABEL_245;
                  }

                  *(v184 + 16) = v196;
                }
              }

              else
              {
                v187 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v187)
                {
                  if (v186 < v187)
                  {
                    goto LABEL_248;
                  }

                  sub_219BF4044();
                  swift_arrayInitWithCopy();
                  goto LABEL_134;
                }

LABEL_111:

                a2 = v280;
                if (v283 > 0)
                {
                  goto LABEL_235;
                }
              }

              v175 = v282 + 1;

              if (v175 == v272)
              {

                goto LABEL_174;
              }

              continue;
            }
          }

          else if (!v182)
          {
            goto LABEL_123;
          }

          break;
        }

        sub_219BF7214();
        goto LABEL_123;
      }

      sub_219775F78(v173, type metadata accessor for SportsScoreSortingOrFilter);

      v159 = a2;
LABEL_146:
      v199 = v159 >> 62;
      if (v159 >> 62)
      {
        v200 = sub_219BF7214();
      }

      else
      {
        v200 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v201 = v145 >> 62;
      if (v145 >> 62)
      {
        result = sub_219BF7214();
        v202 = result + v200;
        if (__OFADD__(result, v200))
        {
          goto LABEL_238;
        }
      }

      else
      {
        result = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v202 = result + v200;
        if (__OFADD__(result, v200))
        {
          goto LABEL_238;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (result)
      {
        if (!v201)
        {
          v203 = v145 & 0xFFFFFFFFFFFFFF8;
          if (v202 <= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

LABEL_155:
        sub_219BF7214();
        goto LABEL_156;
      }

      if (v201)
      {
        goto LABEL_155;
      }

LABEL_156:
      result = sub_219BF7364();
      v145 = result;
      v203 = result & 0xFFFFFFFFFFFFFF8;
LABEL_157:
      v204 = *(v203 + 16);
      v205 = *(v203 + 24);
      if (v199)
      {
        result = sub_219BF7214();
        v206 = result;
        if (result)
        {
LABEL_161:
          if (((v205 >> 1) - v204) < v200)
          {
            goto LABEL_243;
          }

          v207 = v203 + 8 * v204 + 32;
          v276 = v145;
          v283 = v200;
          if (v199)
          {
            if (v206 < 1)
            {
              goto LABEL_253;
            }

            sub_218ACC4E4(0);
            sub_219684504(&qword_27CC0CC70, sub_218ACC4E4);
            for (k = 0; k != v206; ++k)
            {
              v209 = sub_218A35350(&v284, k, v159);
              v211 = *v210;

              (v209)(&v284, 0);
              *(v207 + 8 * k) = v211;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v283 <= 0)
          {
            a2 = v280;
            v146 = v270;
            v145 = v276;
            result = v262;
            v147 = v278;
          }

          else
          {
            v212 = *(v203 + 16);
            v91 = __OFADD__(v212, v283);
            v213 = v212 + v283;
            a2 = v280;
            v146 = v270;
            v145 = v276;
            result = v262;
            v147 = v278;
            if (v91)
            {
              goto LABEL_250;
            }

            *(v203 + 16) = v213;
          }

          goto LABEL_92;
        }
      }

      else
      {
        v206 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v206)
        {
          goto LABEL_161;
        }
      }

      v146 = v270;
      result = v262;
      v147 = v278;
      if (v200 > 0)
      {
        goto LABEL_239;
      }

LABEL_92:
      v144 = v147 + 1;
      if (v144 == v265)
      {

LABEL_211:
        v284 = v145;
        sub_218ACC4E4(0);
        sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
        v232 = v261;
        v126 = sub_219BF56E4();
        v261 = v232;

        sub_219775F78(v266, type metadata accessor for SportsScoreSortingOrFilter);
        goto LABEL_212;
      }
    }

    if (v149 <= 5)
    {
      if (v149 == 4)
      {
        v166 = *((v148 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v167 = sub_219659C8C(a2, v281, v166);
        v159 = sub_219AC4B08(a2, v167);

        goto LABEL_146;
      }

      v198 = swift_projectBox();
      v163 = v252;
      sub_218E23E5C(v198, v252, type metadata accessor for SportsScoreSortingSubsetFilter);

      v159 = sub_218E1E094(v163, a2, v281, v148);
      v164 = type metadata accessor for SportsScoreSortingSubsetFilter;
    }

    else
    {
      if (v149 == 6)
      {
        v168 = *((v148 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v159 = sub_21903E324(v168, a2);
        goto LABEL_146;
      }

      if (v149 == 7)
      {
        v150 = swift_projectBox();
        v151 = v246;
        sub_218E23E5C(v150, v246, type metadata accessor for SportsScoreSortingGroupByFilter);

        v152 = sub_218C490D4(v151, a2);
        v153 = v247;
        sub_218E23E5C(v151, v247, type metadata accessor for SportsScoreSortingGroupByFilter);
        v154 = v248;
        v155 = sub_219775F14(v153, v248);
        MEMORY[0x28223BE20](v155);
        v156 = v281;
        *(&v238 - 2) = v154;
        *(&v238 - 1) = v156;
        v157 = v261;
        v158 = sub_218DDE84C(sub_218C4A8C8, (&v238 - 4), v152);

        v284 = v158;
        sub_218ACC4E4(0);
        sub_219684504(&qword_280E8EE88, sub_218ACC4E4);
        v159 = sub_219BF56E4();
        v261 = v157;

        sub_219775F78(v151, type metadata accessor for SportsScoreSortingGroupByFilter);
        v160 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
        v161 = v154;
        goto LABEL_145;
      }

      v197 = swift_projectBox();
      v163 = v253;
      sub_218E23E5C(v197, v253, type metadata accessor for SportsScoreSortingFilterWhen);

      v159 = sub_2197731BC(v163, a2, v281, v148);
      v164 = type metadata accessor for SportsScoreSortingFilterWhen;
    }

LABEL_144:
    v160 = v164;
    v161 = v163;
    goto LABEL_145;
  }

  v71 = swift_projectBox();
  sub_218E23E5C(v71, v50, type metadata accessor for SportsScoreSortingAndFilter);
  v239 = v56;

  sub_219BF2664();
  v72 = *(v284 + 16);

  if (!v72)
  {
LABEL_223:
    v49 = v273;
    goto LABEL_224;
  }

  sub_219BF2664();
  v275 = *(v284 + 16);
  if (!v275)
  {

    goto LABEL_223;
  }

  v276 = v284;
  v274 = v284 + 32;

  v73 = 0;
  v279 = a2;
  while (1)
  {
    if (v73 >= *(v276 + 16))
    {
      goto LABEL_244;
    }

    v278 = v73;
    v74 = *(v274 + 8 * v73);

    v277 = v74;
    v75 = sub_219659C8C(a2, v281, v74);
    v76 = v75;
    if (v75 >> 62)
    {
      v77 = sub_219BF7214();
    }

    else
    {
      v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = MEMORY[0x277D84F90];
    if (v77)
    {
      v284 = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v77 & ~(v77 >> 63), 0);
      if (v77 < 0)
      {
        goto LABEL_251;
      }

      v79 = 0;
      v80 = v284;
      do
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v79, v76);
        }

        else
        {
        }

        v81 = sub_219BF3F84();
        v83 = v82;

        v284 = v80;
        v85 = *(v80 + 16);
        v84 = *(v80 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_21870B65C((v84 > 1), v85 + 1, 1);
          v80 = v284;
        }

        ++v79;
        *(v80 + 16) = v85 + 1;
        v86 = v80 + 16 * v85;
        *(v86 + 32) = v81;
        *(v86 + 40) = v83;
      }

      while (v77 != v79);

      v78 = MEMORY[0x277D84F90];
    }

    else
    {

      v80 = v78;
    }

    v87 = sub_218845F78(v80);

    v285 = v78;
    if (!(v279 >> 62))
    {
      v88 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v88)
      {
        break;
      }

      goto LABEL_25;
    }

    result = sub_219BF7214();
    v88 = result;
    if (result)
    {
      break;
    }

LABEL_25:
    v73 = v278 + 1;

    v279 = v285;
    a2 = v280;
    v49 = v273;
    v50 = v264;
    if (v73 == v275)
    {

      a2 = v279;
LABEL_224:
      sub_219775F78(v50, type metadata accessor for SportsScoreSortingAndFilter);

      goto LABEL_227;
    }
  }

  v89 = 0;
  v282 = v279 & 0xFFFFFFFFFFFFFF8;
  v283 = v279 & 0xC000000000000001;
  v90 = v87 + 56;
  while (v283)
  {
    result = MEMORY[0x21CECE0F0](v89, v279);
    v91 = __OFADD__(v89++, 1);
    if (v91)
    {
      goto LABEL_232;
    }

LABEL_47:
    v92 = sub_219BF3F84();
    v94 = v93;
    if (*(v87 + 16) && (v95 = v92, sub_219BF7AA4(), sub_219BF5524(), v96 = sub_219BF7AE4(), v97 = -1 << *(v87 + 32), v98 = v96 & ~v97, ((*(v90 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) != 0))
    {
      v99 = ~v97;
      while (1)
      {
        v100 = (*(v87 + 48) + 16 * v98);
        v101 = *v100 == v95 && v100[1] == v94;
        if (v101 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v98 = (v98 + 1) & v99;
        if (((*(v90 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      if (v89 == v88)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_43:

      if (v89 == v88)
      {
        goto LABEL_25;
      }
    }
  }

  if (v89 >= *(v282 + 16))
  {
    goto LABEL_233;
  }

  v91 = __OFADD__(v89++, 1);
  if (!v91)
  {
    goto LABEL_47;
  }

LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
  return result;
}

uint64_t sub_2197755CC(void *a1)
{
  v3 = v1;
  sub_2197760D0(0, &qword_280E8C428, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21977607C();
  sub_219BF7B44();
  v12 = *v3;
  v11[7] = 0;
  sub_2194751E0();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsScoreSortingFilterWhen();
    v11[6] = 1;
    sub_218C425D4();
    sub_219684504(&qword_280E8FDC8, sub_218C425D4);
    sub_219BF7854();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197757AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_218C42540();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197760D0(0, &qword_280E8CBF0, MEMORY[0x277D844C8]);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21977607C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v13 = v12;
  v14 = v22;
  v25 = 0;
  sub_219475070();
  v15 = v23;
  sub_219BF7734();
  v17 = v26;
  *v13 = v26;
  v24 = 1;
  sub_218C425D4();
  sub_219684504(&qword_280E8FDC8, sub_218C425D4);
  sub_219BF7764();
  (*(v14 + 8))(v9, v15);
  (*(v19 + 32))(&v13[*(v18 + 20)], v6, v20);
  sub_218E23E5C(v13, v21, type metadata accessor for SportsScoreSortingFilterWhen);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219775F78(v13, type metadata accessor for SportsScoreSortingFilterWhen);
}

uint64_t sub_219775B28()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_219775B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_219775C4C(uint64_t a1)
{
  v2 = sub_21977607C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219775C88(uint64_t a1)
{
  v2 = sub_21977607C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219775CF4(unint64_t *a1, unint64_t *a2)
{
  if ((sub_2194731FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_218C425D4();
  sub_219684504(&qword_280E8FDC8, sub_218C425D4);
  sub_218C4A1E8();

  return sub_219BF2694();
}

uint64_t sub_219775DC4()
{
  sub_219BF7314();

  v1 = sub_219473B4C(*v0);
  MEMORY[0x21CECC330](v1);

  MEMORY[0x21CECC330](0x7265746C6966202CLL, 0xEA00000000003D73);
  type metadata accessor for SportsScoreSortingFilterWhen();
  sub_218C42540();
  sub_219BF2664();
  v2 = MEMORY[0x21CECC6D0](v6, &type metadata for SportsScoreSortingFilter);
  v4 = v3;

  MEMORY[0x21CECC330](v2, v4);

  return 0x6F697469646E6F63;
}

uint64_t type metadata accessor for SportsScoreSortingFilterWhen()
{
  result = qword_280EB2768;
  if (!qword_280EB2768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219775F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219775F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219776000()
{
  sub_218C42540();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21977607C()
{
  result = qword_280EB2798[0];
  if (!qword_280EB2798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB2798);
  }

  return result;
}

void sub_2197760D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21977607C();
    v7 = a3(a1, &type metadata for SportsScoreSortingFilterWhen.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219776148()
{
  result = qword_27CC1ED10;
  if (!qword_27CC1ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1ED10);
  }

  return result;
}

unint64_t sub_2197761A0()
{
  result = qword_280EB2788;
  if (!qword_280EB2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB2788);
  }

  return result;
}

unint64_t sub_2197761F8()
{
  result = qword_280EB2790;
  if (!qword_280EB2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB2790);
  }

  return result;
}

uint64_t type metadata accessor for SportsManagementDetailSectionDescriptor()
{
  result = qword_27CC1ED18;
  if (!qword_27CC1ED18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219776298()
{
  sub_21977630C();
  if (v0 <= 0x3F)
  {
    sub_218BE5890();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_21977630C()
{
  result = qword_27CC1ED28;
  if (!qword_27CC1ED28)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27CC1ED28);
  }

  return result;
}

uint64_t sub_21977633C()
{
  v1 = v0;
  v2 = sub_219BF3AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197766CC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_219BF3AE4();
    (*(v3 + 8))(v5, v2);
  }

  else if (*v8)
  {
    return 0;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v9 = sub_219BDB5E4();
  }

  return v9;
}

uint64_t sub_21977654C()
{
  v1 = v0;
  v2 = sub_219BF3AF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197766CC(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0x6E656D6D6F636572;
  }

  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BF3AD4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_2197766CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219776730(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF3AF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  sub_21977699C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_2197766CC(a1, v14);
  sub_2197766CC(a2, &v14[v15]);
  type metadata accessor for SportsManagementDetailSectionDescriptor();
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 != 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v23 = 1;
      return v23 & 1;
    }

LABEL_11:
    sub_219776A00(&v14[v15]);
    v23 = 0;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_11;
  }

  v17 = *(v5 + 32);
  v17(v10, v14, v4);
  v17(v8, &v14[v15], v4);
  v18 = sub_219BF3AD4();
  v20 = v19;
  if (v18 == sub_219BF3AD4() && v20 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_219BF78F4();
  }

  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v10, v4);
  return v23 & 1;
}

void sub_21977699C()
{
  if (!qword_27CC1ED30)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1ED30);
    }
  }
}

uint64_t sub_219776A00(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219776A70(char *a1)
{
  v2 = sub_219BE05E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_219BE05D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_219BE0F94();
  (*(v3 + 104))(v8, **(&unk_278243158 + v13), v2);
  (*(v3 + 16))(v6, v8, v2);
  sub_219BE05C4();
  (*(v3 + 8))(v8, v2);
  sub_219BE0F84();
  (*(v10 + 8))(v12, v9);
  return sub_219BE0F74();
}

unint64_t sub_219776D48(uint64_t a1)
{
  v24[3] = a1;
  v25 = sub_219BE9C04();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDF074();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BE1524();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v24[4] = *(v1 + 16);
  v15 = sub_219BE9924();
  v24[1] = v16;
  v24[2] = v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D2F3B8], v8);
  sub_219BE9934();
  v17 = (*(v2 + 88))(v4, v25);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v17 != *MEMORY[0x277D6E840] && v17 != *MEMORY[0x277D6E848] && v17 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v18 = MEMORY[0x277D2D810];
  }

  (*(v5 + 104))(v7, *v18, v27);
  sub_219BE1514();
  sub_219779D74(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v21 = v26;
  sub_219BDD1F4();
  (*(v12 + 8))(v14, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 2;
  v29 = v22 | 0x6000000000000006;
  sub_219BE7884();
  return sub_218932F9C(v29);
}

unint64_t sub_219777180(uint64_t a1)
{
  v2 = sub_219BE8F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_219BDD154();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 2;
  v11 = v8 | 0x6000000000000006;
  sub_219BE7864();
  return sub_218932F9C(v11);
}

uint64_t sub_219777308(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_219779D74(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218806FD0(v37);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_2187F3258();
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_219779D74(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_219779D74(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_2197778EC(uint64_t a1)
{
  v2 = v1;
  sub_219779C80(0, &qword_27CC1ED70, MEMORY[0x277D6DA48]);
  v5 = v4;
  v60 = *(v4 - 8);
  v58 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v52[-v6];
  v7 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v52[-v11];
  v13 = type metadata accessor for MagazineCatalogModel();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189537DC();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v52[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = a1;
  v62 = v5;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v18 + 8))(v20, v17);
  sub_2189F5020(v15, v12);
  sub_2189F50E4(v12, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = *v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4();
      v39 = *(v38 + 48);
      v40 = &v9[*(v38 + 64)];
      v41 = v40[3];
      v42 = v40[4];
      v56 = v40[1];
      v57 = v41;
      v43 = sub_219BF0444();
      (*(*(v43 - 8) + 8))(&v9[v39], v43);
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      v44 = [v22[2] identifier];
      sub_219BF5414();

      v37 = sub_219BF4774();

      sub_219779B60(v12, type metadata accessor for MagazineGridItemModel);
      v32 = v60;
      goto LABEL_7;
    }

    LODWORD(v57) = v9[8];
    v23 = v9[9];
    v55 = v9[10];
    LODWORD(v56) = v23;
    v24 = v9[11];
    v53 = v9[12];
    v54 = v24;
    v25 = *(v9 + 2);
    v26 = v9[24];
    sub_2189E9530(*(v9 + 4), *(v9 + 5), *(v9 + 6));
    sub_2189E9570(0);
    v28 = 80;
    v29 = 64;
  }

  else
  {
    LODWORD(v57) = v9[8];
    v30 = v9[9];
    v55 = v9[10];
    LODWORD(v56) = v30;
    v31 = v9[11];
    v53 = v9[12];
    v54 = v31;
    v25 = *(v9 + 2);
    v26 = v9[24];
    sub_2189E96A0();
    v28 = 64;
    v29 = 48;
  }

  v32 = v60;
  v33 = *(v27 + v29);
  v34 = *&v9[*(v27 + v28) + 32];

  v35 = sub_219BF0744();
  (*(*(v35 - 8) + 8))(&v9[v33], v35);
  v63 = v22;
  v64 = v57;
  v65 = v56;
  v66 = v55;
  v67 = v54;
  v68 = v53;
  v69 = v25;
  v70 = v26;
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v36 = [v22 identifier];
  sub_219BF5414();

  sub_218950D08(&v63);
  v37 = sub_219BF4774();

  sub_219779B60(v12, type metadata accessor for MagazineGridItemModel);
LABEL_7:
  v45 = v59;
  v46 = v62;
  (*(v32 + 16))(v59, v61, v62);
  v47 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v48 = (v58 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v32 + 32))(v49 + v47, v45, v46);
  v50 = v49 + v48;
  *v50 = v2;
  *(v50 + 8) = v37 & 1;

  sub_219BDD154();
}

uint64_t sub_219777EA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v146 = a4;
  v142 = a3;
  v175 = a1;
  v164 = sub_219BDF1E4();
  v161 = *(v164 - 1);
  MEMORY[0x28223BE20](v164);
  v132 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BE1444();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219779C80(0, &qword_27CC0AE38, MEMORY[0x277D6EC60]);
  v167 = *(v7 - 8);
  v168 = v7;
  MEMORY[0x28223BE20](v7);
  *&v165 = &v129 - v8;
  sub_218C8A25C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v169 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219779C80(0, &qword_27CC0AE08, MEMORY[0x277D6D710]);
  v173 = *(v11 - 8);
  *&v174 = v11;
  MEMORY[0x28223BE20](v11);
  v170 = &v129 - v12;
  v160 = sub_219BDBD34();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BDF8A4();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BE09E4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BDF104();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDF1A4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BDFCE4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BDBD64();
  v151 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v150 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDFFB4();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BE1714();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v22);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v129 - v26;
  v28 = type metadata accessor for MagazineCatalogModel();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189537DC();
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v129 - v37;
  sub_219779C80(0, &qword_27CC1ED70, MEMORY[0x277D6DA48]);
  v171 = a2;
  v172 = v39;
  sub_219BE7564();
  sub_219BE5FC4();
  v40 = *(v33 + 8);
  v40(v38, v32);
  sub_2189F5020(v30, v27);
  v162 = v27;
  sub_2189F50E4(v27, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = *v24;
  v163 = *v24;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v174) = v24[8];
    LODWORD(v173) = v24[9];
    v43 = v24[10];
    v44 = v24[11];
    v45 = v24[12];
    v46 = *(v24 + 2);
    v47 = v24[24];
    sub_2189E96A0();
    v49 = 64;
    v50 = 48;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(v174) = v24[8];
    LODWORD(v173) = v24[9];
    v43 = v24[10];
    v44 = v24[11];
    v45 = v24[12];
    v46 = *(v24 + 2);
    v47 = v24[24];
    sub_2189E9530(*(v24 + 4), *(v24 + 5), *(v24 + 6));
    sub_2189E9570(0);
    v49 = 80;
    v50 = 64;
LABEL_5:
    v51 = *(v48 + v50);
    v52 = *&v24[*(v48 + v49) + 32];

    v53 = sub_219BF0744();
    (*(*(v53 - 8) + 8))(&v24[v51], v53);
    v176 = v42;
    v177 = v174;
    v178 = v173;
    v179 = v43;
    v180 = v44;
    v181 = v45;
    v132 = v46;
    v182 = v46;
    v183 = v47;
    v54 = v147;
    sub_21934C4BC();
    sub_2187F3258();
    v169 = v55;
    v56 = sub_219BDCD44();
    v57 = *(v56 - 8);
    v58 = *(v57 + 80);
    v59 = (v58 + 32) & ~v58;
    v173 = v59 + *(v57 + 72);
    v60 = swift_allocObject();
    v174 = xmmword_219C09BA0;
    *(v60 + 16) = xmmword_219C09BA0;
    v61 = *MEMORY[0x277CEAD18];
    v62 = *(v57 + 104);
    v62(v60 + v59, v61, v56);
    v170 = "MagazineCatalogModel";
    sub_219779D74(&unk_280EE7F60, MEMORY[0x277D2F890]);
    v63 = v149;
    sub_219BDCCC4();

    (*(v148 + 8))(v54, v63);
    v64 = v150;
    sub_219BDBD54();
    sub_219BDBD44();
    v151[1](v64, v166);
    v65 = v152;
    sub_219BDFFA4();
    v168 = v58;
    v66 = swift_allocObject();
    *(v66 + 16) = v174;
    v166 = v57 + 104;
    v167 = v59;
    LODWORD(v165) = v61;
    v161 = v56;
    v67 = v56;
    v68 = v62;
    v62(v66 + v59, v61, v67);
    sub_219779D74(&unk_280EE84F0, MEMORY[0x277D2E290]);
    v69 = v154;
    sub_219BDCCC4();

    (*(v153 + 8))(v65, v69);
    sub_219779D74(&unk_27CC1ED78, type metadata accessor for MagazineCatalogModel);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v71 = v155;
      sub_219BDFCD4();
      v72 = swift_allocObject();
      *(v72 + 16) = v174;
      v73 = v167;
      v74 = v161;
      v68(v72 + v167, v165, v161);
      v164 = v68;
      sub_219779D74(&unk_280EE8590, MEMORY[0x277D2E058]);
      v75 = v157;
      sub_219BDCCC4();

      (*(v156 + 8))(v71, v75);
      v76 = v133;
      sub_219BF6AC4();
      v77 = swift_allocObject();
      *(v77 + 16) = v174;
      v78 = v165;
      v68(v77 + v73, v165, v74);
      sub_219779D74(&unk_280EE8850, MEMORY[0x277D2D950]);
      v79 = v74;
      v80 = v135;
      sub_219BDCCC4();

      (*(v134 + 8))(v76, v80);
      v157 = *(v142 + 24);
      v81 = v163;
      v82 = [v163 sourceChannel];
      v83 = v136;
      sub_219BE01F4();
      swift_unknownObjectRelease();
      v84 = swift_allocObject();
      *(v84 + 16) = v174;
      v85 = v167;
      v164(v84 + v167, v78, v79);
      sub_219779D74(&unk_280EE8890, MEMORY[0x277D2D8B8]);
      v86 = v138;
      sub_219BDCCC4();

      (*(v137 + 8))(v83, v86);
      v87 = [v81 sourceChannel];
      v88 = v139;
      sub_219BE01E4();
      swift_unknownObjectRelease();
      sub_218950D08(&v176);
      v89 = swift_allocObject();
      *(v89 + 16) = v174;
      v90 = v165;
      v91 = v161;
      v164(v89 + v85, v165, v161);
      sub_219779D74(&qword_280EE8270, MEMORY[0x277D2E9C0]);
      v92 = v141;
      sub_219BDCCC4();

      (*(v140 + 8))(v88, v92);
      v93 = v143;
      sub_219BDF894();
      v94 = swift_allocObject();
      *(v94 + 16) = v174;
      v164(v94 + v167, v90, v91);
      sub_219779D74(&qword_280EE8640, MEMORY[0x277D2DE40]);
      v95 = v145;
      sub_219BDCCC4();

      (*(v144 + 8))(v93, v95);
      sub_219BE0274();
      v96 = v158;
      sub_219BE75A4();
      sub_219779D74(&unk_280EE8460, MEMORY[0x277D2E418]);
      sub_219BDCC64();
      v97 = *(v159 + 8);
      v98 = v160;
      v97(v96, v160);
      sub_219BE7574();
      sub_219BDCC74();
      v97(v96, v98);
      return sub_219779B60(v162, type metadata accessor for MagazineGridItemModel);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2189E93F4();
  v166 = *(v99 + 48);
  v100 = *&v24[*(v99 + 64) + 32];

  v101 = v165;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5F84();
  v40(v35, v32);
  v102 = v169;
  v103 = v168;
  sub_219BEB244();

  (*(v167 + 8))(v101, v103);
  v105 = v173;
  v104 = v174;
  if ((*(v173 + 48))(v102, 1, v174) == 1)
  {

    sub_219779B60(v162, type metadata accessor for MagazineGridItemModel);
    v106 = sub_218C8A25C;
    v107 = v102;
  }

  else
  {
    (*(v105 + 32))(v170, v102, v104);
    v108 = [v163[2] identifier];
    sub_219BF5414();

    v109 = v129;
    sub_219BE1424();
    sub_2187F3258();
    v154 = v110;
    v111 = sub_219BDCD44();
    v112 = *(v111 - 8);
    v168 = *(v112 + 72);
    v113 = *(v112 + 80);
    v114 = swift_allocObject();
    v165 = xmmword_219C09BA0;
    *(v114 + 16) = xmmword_219C09BA0;
    LODWORD(v167) = *MEMORY[0x277CEAD18];
    v115 = *(v112 + 104);
    (v115)(v114 + ((v113 + 32) & ~v113));
    v169 = "MagazineCatalogModel";
    sub_219779D74(&unk_280EE8030, MEMORY[0x277D2F260]);
    v116 = v109;
    v117 = v131;
    sub_219BDCCC4();

    (*(v130 + 8))(v116, v117);
    sub_219BE6944();
    v118 = v132;
    sub_219BDF1C4();
    v152 = v113;
    v119 = (v113 + 32) & ~v113;
    v120 = swift_allocObject();
    *(v120 + 16) = v165;
    v153 = v112 + 104;
    v151 = v115;
    (v115)(v120 + v119, v167, v111);
    sub_219779D74(&unk_280EE8840, MEMORY[0x277D2D970]);
    v121 = v164;
    sub_219BDCCC4();

    (*(v161 + 8))(v118, v121);
    sub_219779D74(&unk_27CC1ED78, type metadata accessor for MagazineCatalogModel);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v122 = v155;
    sub_219BDFCD4();
    v123 = swift_allocObject();
    *(v123 + 16) = v165;
    (v151)(v123 + v119, v167, v111);
    sub_219779D74(&unk_280EE8590, MEMORY[0x277D2E058]);
    v124 = v157;
    sub_219BDCCC4();

    (*(v156 + 8))(v122, v124);
    sub_219BDFEC4();
    v125 = v158;
    sub_219BE75A4();
    sub_219779D74(&unk_280EE8520, MEMORY[0x277D2E1D0]);
    sub_219BDCC64();
    v126 = *(v159 + 8);
    v127 = v160;
    v126(v125, v160);
    sub_219BE7574();
    sub_219BDCC74();

    v126(v125, v127);
    (*(v173 + 8))(v170, v174);
    v106 = type metadata accessor for MagazineGridItemModel;
    v107 = v162;
  }

  sub_219779B60(v107, v106);
  v128 = sub_219BF0444();
  return (*(*(v128 - 8) + 8))(&v24[v166], v128);
}

uint64_t sub_2197798F0()
{
  v0 = sub_219BE14C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE14A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D2F2D0], v0, v6);

  sub_219BE1484();
  sub_219779D74(&qword_280EE8010, MEMORY[0x277D2F280]);
  sub_219BDD1F4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_219779AF0(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219777308(a1, v4);
}

uint64_t sub_219779B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219779BC0(uint64_t a1)
{
  sub_219779C80(0, &qword_27CC1ED70, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_219777EA8(a1, v1 + v5, v7, v8);
}

void sub_219779C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineCatalogSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineCatalogModel();
    v8[2] = sub_219779D74(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    v8[3] = sub_219779D74(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219779D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudioPlaylistFeedRefreshResult()
{
  result = qword_27CC1ED88;
  if (!qword_27CC1ED88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219779E30()
{
  sub_219BF0BD4();
  if (v0 <= 0x3F)
  {
    sub_2187E7248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219779EC4()
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_219BF7314();

  v4 = 0xE800000000000000;
  v17 = 0x3D656372756F737BLL;
  v18 = 0xE800000000000000;
  v5 = 0x6F666E4972657375;
  if (*(v0 + 8) != 1)
  {
    v5 = 0x6166654472657375;
    v4 = 0xEC00000073746C75;
  }

  if (*(v0 + 8))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73696C6863746177;
  }

  if (*(v0 + 8))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000074;
  }

  MEMORY[0x21CECC330](v6, v7);

  MEMORY[0x21CECC330](0x7453636E7973202CLL, 0xEC0000003D657461);
  v8 = FCSportsSyncState.description.getter(*v0);
  MEMORY[0x21CECC330](v8);

  MEMORY[0x21CECC330](0x6F4D65746164202CLL, 0xEF3D646569666964);
  v9 = type metadata accessor for SportsSyncSetting();
  sub_2187D96F4(v0 + *(v9 + 24), v3);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {
    sub_218710A80(v3, sub_2186DCF58);
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    v14 = sub_219BDBBA4();
    v12 = v15;
    (*(v11 + 8))(v3, v10);
    v13 = v14;
  }

  MEMORY[0x21CECC330](v13, v12);

  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return v17;
}

uint64_t sub_21977A130(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6F666E4972657375;
  if (v2 != 1)
  {
    v4 = 0x6166654472657375;
    v3 = 0xEC00000073746C75;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73696C6863746177;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6F666E4972657375;
  if (*a2 != 1)
  {
    v8 = 0x6166654472657375;
    v7 = 0xEC00000073746C75;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73696C6863746177;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21977A244()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21977A2F4()
{
  sub_219BF5524();
}

uint64_t sub_21977A390()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21977A43C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21977AA34();
  *a1 = result;
  return result;
}

void sub_21977A46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xE800000000000000;
  v5 = 0x6F666E4972657375;
  if (v2 != 1)
  {
    v5 = 0x6166654472657375;
    v4 = 0xEC00000073746C75;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73696C6863746177;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t type metadata accessor for SportsSyncSetting()
{
  result = qword_280ED5038;
  if (!qword_280ED5038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21977A554()
{
  type metadata accessor for FCSportsSyncState(319);
  if (v0 <= 0x3F)
  {
    sub_2186DCF58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21977A5F4()
{
  result = qword_27CC1ED98;
  if (!qword_27CC1ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1ED98);
  }

  return result;
}

BOOL sub_21977A648(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C82694();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    return 0;
  }

  v32 = v5;
  v15 = 0xE800000000000000;
  v16 = 0x6F666E4972657375;
  if (*(a1 + 8) != 1)
  {
    v16 = 0x6166654472657375;
    v15 = 0xEC00000073746C75;
  }

  if (*(a1 + 8))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x73696C6863746177;
  }

  if (*(a1 + 8))
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE900000000000074;
  }

  v19 = 0xE800000000000000;
  v20 = 0x6F666E4972657375;
  if (*(a2 + 8) != 1)
  {
    v20 = 0x6166654472657375;
    v19 = 0xEC00000073746C75;
  }

  if (*(a2 + 8))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x73696C6863746177;
  }

  if (*(a2 + 8))
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xE900000000000074;
  }

  if (v17 == v21 && v18 == v22)
  {
  }

  else
  {
    v23 = sub_219BF78F4();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = *(type metadata accessor for SportsSyncSetting() + 24);
  v25 = *(v12 + 48);
  sub_2187D96F4(a1 + v24, v14);
  sub_2187D96F4(a2 + v24, &v14[v25]);
  v26 = v32;
  v27 = *(v32 + 48);
  if (v27(v14, 1, v4) == 1)
  {
    if (v27(&v14[v25], 1, v4) == 1)
    {
      sub_218710A80(v14, sub_2186DCF58);
      return 1;
    }

    goto LABEL_27;
  }

  sub_2187D96F4(v14, v10);
  if (v27(&v14[v25], 1, v4) == 1)
  {
    (*(v26 + 8))(v10, v4);
LABEL_27:
    sub_218710A80(v14, sub_218C82694);
    return 0;
  }

  (*(v26 + 32))(v7, &v14[v25], v4);
  sub_2196EAB94();
  v29 = sub_219BF53A4();
  v30 = *(v26 + 8);
  v30(v7, v4);
  v30(v10, v4);
  sub_218710A80(v14, sub_2186DCF58);
  return (v29 & 1) != 0;
}

uint64_t sub_21977AA34()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21977AA84()
{
  swift_getObjectType();
  v1 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v1);
  v2 = MEMORY[0x277D6CA70];
  sub_21977F410(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BE1BE4();
  sub_21977FD50(&qword_280EE7E70, 255, MEMORY[0x277D6CA70]);
  sub_21977F410(0, &qword_280E8F610, v2, MEMORY[0x277D83940]);
  sub_21977FD98(&qword_280E8F600, &qword_280E8F610, v2);
  sub_219BF7164();
  sub_21977F410(0, &unk_280EE7198, sub_219268494, MEMORY[0x277D6CEE8]);
  swift_allocObject();

  *(v0 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedServiceConfig) = sub_219BE2D14();

  type metadata accessor for SearchFeedServiceConfig();
  sub_219BE31F4();
}

uint64_t sub_21977AD48@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE0874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFeedServiceContext();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D2E888], v2);
  v9 = type metadata accessor for SearchResults();
  sub_219BDF024();
  v10 = v9[8];
  v11 = sub_219BE04F4();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  strcpy(v8, "empty-search");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *(v8 + 2) = MEMORY[0x277D84F90];
  v12 = &v8[v9[7]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v8[v9[9]] = 0;
  *&v8[v9[10]] = 9;
  v13 = sub_219BED564();
  result = sub_21977FC80(v8, type metadata accessor for SearchFeedServiceContext);
  *a1 = v13;
  return result;
}

uint64_t sub_21977AF5C()
{
  v0 = type metadata accessor for SearchResults();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219ADE0C0();
  SearchResults.excluding(contentIdentifiers:)(v3, v2);

  sub_21977F410(0, &qword_27CC1EDF8, type metadata accessor for SearchResults, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21977B08C(void *a1, __int128 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for SearchExpandRequest();
  v7 = v6 - 8;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = v8;
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchFeedGapLocation(0);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[1];
  v58 = *a2;
  v59 = v11;
  v60 = a2[2];
  v61 = *(a2 + 48);
  v12 = CACurrentMediaTime();
  v14 = *a1;
  v13 = a1[1];
  v15 = *(v7 + 28);
  v52 = v3;
  v49 = *&v3[OBJC_IVAR____TtC7NewsUI217SearchDataManager_featureAvailability];
  v16 = qword_280E8D828;

  if (v16 != -1)
  {
    swift_once();
  }

  v48 = qword_280F61720;
  sub_219BF6214();
  sub_2186E8390(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v17 + 64) = v19;
  v46 = v14;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  v56 = 0;
  v57 = 0xE000000000000000;

  v45 = v15;
  sub_219BF7484();
  v20 = v56;
  v21 = v57;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = v21;
  sub_219BE5314();

  v22 = v52;
  v43 = *&v52[OBJC_IVAR____TtC7NewsUI217SearchDataManager_accessQueue];
  v48 = v13;
  v44 = type metadata accessor for SearchFeedGapLocation;
  v23 = v54;
  sub_21977FBA8(a1 + v15, v54, type metadata accessor for SearchFeedGapLocation);
  v24 = v53;
  sub_21977FBA8(a1, v53, type metadata accessor for SearchExpandRequest);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v47 = v25 + v10;
  v26 = (v25 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v50 + 80) + v26 + 8) & ~*(v50 + 80);
  v28 = v51 + v27 + 7;
  v51 = a1;
  v29 = v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_21977FAD0(v23, v30 + v25, type metadata accessor for SearchFeedGapLocation);
  *(v30 + v26) = v22;
  sub_21977FAD0(v24, v30 + v27, type metadata accessor for SearchExpandRequest);
  *(v30 + v29) = v49;
  sub_218ABE008();
  v31 = v22;
  swift_unknownObjectRetain();
  sub_219BE31F4();

  sub_21977FBA8(v51 + v45, v23, v44);
  v32 = swift_allocObject();
  sub_21977FAD0(v23, v32 + v25, type metadata accessor for SearchFeedGapLocation);
  sub_21977F300(0, &qword_280E91600, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v33 = sub_219BF66A4();
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v46;
  v36 = v48;
  *(v34 + 24) = v48;
  v37 = v59;
  *(v34 + 32) = v58;
  *(v34 + 48) = v37;
  *(v34 + 64) = v60;
  *(v34 + 80) = v61;
  *(v34 + 88) = v12;
  v38 = v36;

  sub_218E0E0F8(&v58, &v56);
  sub_219BE2F84();

  v39 = swift_allocObject();
  v39[2] = v12;
  *(v39 + 3) = v35;
  *(v39 + 4) = v38;
  v40 = sub_219BE2E54();
  v41 = sub_219BE2FD4();

  return v41;
}

uint64_t sub_21977B6FC(__int128 *a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for SearchPrewarmResult();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[3];
  v19 = a1[2];
  v20 = v10;
  v21 = a1[4];
  v11 = a1[1];
  v17 = *a1;
  v18 = v11;
  sub_21977FBA8(a2, v9, type metadata accessor for SearchResults);
  v12 = &v9[*(v7 + 28)];
  v13 = v20;
  v12[2] = v19;
  v12[3] = v13;
  v12[4] = v21;
  v14 = v18;
  *v12 = v17;
  v12[1] = v14;
  *&v9[*(v7 + 32)] = a3;
  sub_21977F410(0, &qword_280EE6E90, type metadata accessor for SearchPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218E155D4(&v17, v16);
  return sub_219BE3014();
}

uint64_t sub_21977B854(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a3;
  v45 = a1;
  v46 = a2;
  sub_218ABE008();
  v47 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SearchExpandRequest();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResults();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977FBA8(v46, v22, type metadata accessor for SearchFeedGapLocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v22;
    v24 = v47;
    (*(v6 + 32))(v11, v23, v47);
    (*(v6 + 16))(v9, v11, v24);
    sub_21977F410(0, &unk_280EE6BE8, sub_218ABE008, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v25 = sub_219BE3014();
    (*(v6 + 8))(v11, v24);
  }

  else
  {
    v46 = type metadata accessor for SearchResults;
    v26 = v19;
    v38 = v19;
    v27 = sub_21977FAD0(v22, v19, type metadata accessor for SearchResults);
    MEMORY[0x28223BE20](v27);
    v28 = v45;
    *(&v38 - 2) = v45;
    type metadata accessor for SearchFeedServiceConfig();
    sub_219BE3204();
    v29 = sub_219BE2E54();
    type metadata accessor for SearchDataManager();
    v41 = sub_219BE3074();

    sub_21977FBA8(v26, v17, type metadata accessor for SearchResults);
    v30 = v42;
    sub_21977FBA8(v43, v42, type metadata accessor for SearchExpandRequest);
    v31 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v32 = (v15 + *(v40 + 80) + v31) & ~*(v40 + 80);
    v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_21977FAD0(v17, v34 + v31, v46);
    sub_21977FAD0(v30, v34 + v32, type metadata accessor for SearchExpandRequest);
    *(v34 + v33) = v44;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
    swift_unknownObjectRetain();
    v35 = v28;
    v36 = sub_219BE2E54();
    v25 = sub_219BE2F64();

    sub_21977FC80(v38, type metadata accessor for SearchResults);
  }

  return v25;
}

uint64_t sub_21977BD90()
{

  sub_219BE2CF4();

  return v1;
}

uint64_t sub_21977BDE4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_219BE0874();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchFeedServiceContext();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E8390(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v12 = v20;
  v11 = v21;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  sub_219BE5314();

  (*(v4 + 104))(v6, *MEMORY[0x277D2E888], v3);
  v13 = type metadata accessor for SearchResults();
  sub_219BDF024();
  v14 = v13[8];
  v15 = sub_219BE04F4();
  (*(*(v15 - 8) + 56))(&v9[v14], 1, 1, v15);
  strcpy(v9, "empty-search");
  v9[13] = 0;
  *(v9 + 7) = -5120;
  *(v9 + 2) = MEMORY[0x277D84F90];
  v16 = &v9[v13[7]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v9[v13[9]] = 0;
  *&v9[v13[10]] = 9;
  v17 = sub_219BED564();
  sub_21977FC80(v9, type metadata accessor for SearchFeedServiceContext);
  return v17;
}

uint64_t sub_21977C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v38 = a3;
  v35 = a2;
  sub_218ABE008();
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BEEA84();
  v33 = *(v36 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchFeedContentConfig();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchFeedServiceContext();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SearchFeedServiceConfig();
  v18 = MEMORY[0x28223BE20](v17);
  v37 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  sub_21977FBA8(a2, v16, type metadata accessor for SearchResults);
  v22 = v17[5];
  v32 = type metadata accessor for SearchFeedContentConfig;
  sub_21977FBA8(a1 + v22, v13, type metadata accessor for SearchFeedContentConfig);
  v23 = *(a1 + v17[6]);
  v24 = *(v9 + 16);
  v25 = a1 + v17[7];
  v26 = v34;
  v27 = v36;
  v24(v34, v25, v36);
  v38 = *(v38 + *(type metadata accessor for SearchExpandRequest() + 24));
  sub_21977FBA8(v16, v21, type metadata accessor for SearchFeedServiceContext);
  sub_21977FBA8(v13, &v21[v17[5]], v32);
  *&v21[v17[6]] = v23;
  v24(&v21[v17[7]], v26, v27);
  v28 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v33 + 8))(v26, v27);
  sub_21977FC80(v13, type metadata accessor for SearchFeedContentConfig);
  sub_21977FC80(v16, type metadata accessor for SearchFeedServiceContext);
  *&v21[v17[8]] = v28;
  *&v21[v17[9]] = v38;
  *&v21[v17[10]] = v40;
  swift_unknownObjectRetain();
  v29 = v37;
  sub_21977C57C(v21, v35, v37);
  sub_2186FF508();
  sub_219BF0F44();
  sub_21977F410(0, &unk_280EE6BE8, sub_218ABE008, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v30 = sub_219BE3014();
  sub_21977FC80(v29, type metadata accessor for SearchFeedServiceConfig);
  sub_21977FC80(v21, type metadata accessor for SearchFeedServiceConfig);
  return v30;
}

uint64_t sub_21977C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v139 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_21977F410(0, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v112 - v6;
  sub_21977F410(0, qword_280ED7D40, type metadata accessor for SearchFeedConfig, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v112 - v8;
  v118 = type metadata accessor for SearchFeedContentConfig();
  MEMORY[0x28223BE20](v118);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchFeedConfig();
  v117 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v119 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977F410(0, qword_280ECA088, type metadata accessor for SearchFeedGroupConfig, v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v112 - v15;
  v17 = type metadata accessor for SearchResultsGroup();
  v156 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v165 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977F634();
  v169 = v19;
  v121 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v155 = (&v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21977F410(0, &qword_280E8E948, sub_21977F634, v4);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v166 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v173 = (&v112 - v24);
  sub_21977F710(0, &qword_280E92298, type metadata accessor for TopResultSearchFeedGroupConfigData, sub_21977F6A0, sub_21977F6D8);
  v153 = v25;
  v171 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v152 = &v112 - v26;
  sub_21977F710(0, &qword_280E923E0, type metadata accessor for SportsSearchFeedGroupConfigData, sub_21977F79C, sub_21977F7D4);
  v151 = v27;
  v167 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v150 = &v112 - v28;
  sub_21977F710(0, &qword_280E92128, type metadata accessor for SavedRecipesSearchFeedGroupConfigData, sub_21977F80C, sub_21977F844);
  v149 = v29;
  v163 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v148 = &v112 - v30;
  sub_21977F710(0, &qword_280E923A0, type metadata accessor for RecipesSearchFeedGroupConfigData, sub_21977F87C, sub_21977F8B4);
  v147 = v31;
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v146 = &v112 - v33;
  sub_21977F710(0, &qword_280E923D8, type metadata accessor for TopicsSearchFeedGroupConfigData, sub_21977F8EC, sub_21977F924);
  v145 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v144 = &v112 - v36;
  sub_21977F710(0, &qword_280E92358, type metadata accessor for ChannelsSearchFeedGroupConfigData, sub_21977F95C, sub_21977F994);
  v143 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v142 = &v112 - v39;
  sub_21977F710(0, &qword_280E92360, type metadata accessor for ArticlesSearchFeedGroupConfigData, sub_21977F9CC, sub_21977FA04);
  v141 = v40;
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v140 = &v112 - v42;
  v170 = type metadata accessor for SearchFeedGroupConfig();
  v161 = *(v170 - 8);
  v43 = MEMORY[0x28223BE20](v170);
  v138 = &v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v137 = &v112 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v154 = &v112 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v162 = &v112 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  *&v168 = &v112 - v52;
  MEMORY[0x28223BE20](v51);
  v172 = &v112 - v53;
  if (sub_218FB8908())
  {
    return sub_21977FBA8(a1, v139, type metadata accessor for SearchFeedServiceConfig);
  }

  v114 = v11;
  v115 = v9;
  v55 = MEMORY[0x277D84FA0];
  v175 = MEMORY[0x277D84FA0];
  result = type metadata accessor for SearchFeedServiceConfig();
  v56 = *(result + 20);
  v116 = a1;
  v57 = a1 + v56;
  v113 = v12;
  v58 = *(v12 + 20);
  v112 = v57;
  v59 = *(v57 + v58);
  v60 = *(v59 + 16);
  v164 = v16;
  v160 = v60;
  if (!v60)
  {
    v63 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v65 = v169;
    v66 = v166;
    v67 = v173;
LABEL_6:
    v171 = v63;
    v163 = v64;
    v61 = 0;
    v172 = *(v122 + 16);
    v64 = *(v172 + 16);
    v68 = (v121 + 56);
    v69 = (v121 + 48);
    v63 = (v161 + 48);
    v70 = &unk_219C09000;
    v168 = xmmword_219C09BA0;
    while (1)
    {
      if (v61 == v64)
      {
        v71 = 1;
        v61 = v64;
        v72 = v165;
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v93 = sub_2191FB510(v70 > 1, v67, 1, v64);
          v94 = v162;
          v64 = v93;
          goto LABEL_24;
        }

        v70 = *(v172 + 16);
        v72 = v165;
        if (v61 >= v70)
        {
          goto LABEL_22;
        }

        v73 = v172 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v61;
        v74 = *(v65 + 48);
        v75 = v155;
        *v155 = v61;
        sub_21977FBA8(v73, v75 + v74, type metadata accessor for SearchResultsGroup);
        v76 = v75;
        v66 = v166;
        sub_21977FAD0(v76, v166, sub_21977F634);
        v71 = 0;
        ++v61;
        v67 = v173;
      }

      (*v68)(v66, v71, 1, v65);
      sub_21977FA3C(v66, v67);
      if ((*v69)(v67, 1, v65) == 1)
      {

        v85 = v112;
        v86 = v119;
        sub_21872AFC8(v112, v119, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v87 = v113;
        sub_21872AFC8(v85 + *(v113 + 24), v86 + *(v113 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
        *(v86 + *(v87 + 20)) = v163;
        v88 = v115;
        sub_21977FBA8(v86, v115, type metadata accessor for SearchFeedConfig);
        (*(v117 + 56))(v88, 0, 1, v87);
        v89 = v85 + *(v118 + 20);
        v90 = v120;
        sub_21977FBA8(v89, v120, type metadata accessor for SearchFeedKnobsConfig);
        v91 = type metadata accessor for SearchFeedKnobsConfig();
        (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
        v92 = v114;
        sub_2193C1C74(v88, v90, v114);
        sub_218FB8C64(v92, v139);
        sub_21977FC80(v92, type metadata accessor for SearchFeedContentConfig);
        return sub_21977FC80(v86, type metadata accessor for SearchFeedConfig);
      }

      v77 = v67;
      v78 = *v67;
      sub_21977FAD0(v77 + *(v65 + 48), v72, type metadata accessor for SearchResultsGroup);
      v79 = v164;
      sub_21977E9A8(v72, v171, v164);
      if ((*v63)(v79, 1, v170) == 1)
      {
        sub_21977FC80(v72, type metadata accessor for SearchResultsGroup);
        sub_21977FB38(v79, qword_280ECA088, type metadata accessor for SearchFeedGroupConfig);
        v65 = v169;
        v67 = v173;
      }

      else
      {
        sub_21977FAD0(v79, v137, type metadata accessor for SearchFeedGroupConfig);
        v80 = sub_21977E8DC(v78, &v175);
        sub_21870F424(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
        v81 = swift_allocObject();
        *(v81 + 16) = v168;
        *(v81 + 32) = v80;
        sub_218C9907C(v81, v138);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_2191FB510(0, v163[2] + 1, 1, v163);
        }

        v65 = v169;
        v83 = v163[2];
        v82 = v163[3];
        if (v83 >= v82 >> 1)
        {
          v163 = sub_2191FB510(v82 > 1, v83 + 1, 1, v163);
        }

        sub_21977FC80(v137, type metadata accessor for SearchFeedGroupConfig);
        sub_21977FC80(v165, type metadata accessor for SearchResultsGroup);
        v84 = v163;
        v163[2] = v83 + 1;
        sub_21977FAD0(v138, v84 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v83, type metadata accessor for SearchFeedGroupConfig);
        v67 = v173;
      }
    }
  }

  v61 = 0;
  v158 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v157 = v59 + v158;
  v136 = (v171 + 4);
  v135 = v171 + 1;
  v134 = (v167 + 32);
  v133 = v167 + 8;
  v132 = v163 + 4;
  v131 = v163 + 1;
  v130 = (v32 + 32);
  v129 = v32 + 8;
  v128 = (v35 + 32);
  v127 = v35 + 8;
  v126 = (v38 + 32);
  v125 = v38 + 8;
  v124 = (v41 + 32);
  v123 = v41 + 8;
  v62 = MEMORY[0x277D84FA0];
  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v65 = v169;
  v159 = v59;
  while (v61 < *(v59 + 16))
  {
    v95 = *(v161 + 72);
    v96 = v172;
    sub_21977FBA8(v157 + v95 * v61, v172, type metadata accessor for SearchFeedGroupConfig);
    sub_21977FBA8(v96, v168, type metadata accessor for SearchFeedGroupConfig);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v167 = v95;
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v98 = v142;
          v99 = v143;
          (*v126)(v142, v168, v143);
          v100 = sub_219BEDD54();
          v101 = &v157;
        }

        else
        {
          v98 = v144;
          v99 = v145;
          (*v128)(v144, v168, v145);
          v100 = sub_219BEDD54();
          v101 = &v159;
        }
      }

      else
      {
        v98 = v140;
        v99 = v141;
        (*v124)(v140, v168, v141);
        v100 = sub_219BEDD54();
        v101 = &v155;
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v98 = v150;
        v99 = v151;
        (*v134)(v150, v168, v151);
        v100 = sub_219BEDD54();
        v101 = &v165;
      }

      else
      {
        v98 = v152;
        v99 = v153;
        (*v136)(v152, v168, v153);
        v100 = sub_219BEDD54();
        v101 = &v167;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v98 = v146;
      v99 = v147;
      (*v130)(v146, v168, v147);
      v100 = sub_219BEDD54();
      v101 = &v161;
    }

    else
    {
      v98 = v148;
      v99 = v149;
      (*v132)(v148, v168, v149);
      v100 = sub_219BEDD54();
      v101 = &v163;
    }

    (**(v101 - 32))(v98, v99);
    if (!v100)
    {
      sub_21977FBA8(v172, v154, type metadata accessor for SearchFeedGroupConfig);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_2191FB510(0, v63[2] + 1, 1, v63);
      }

      v66 = v63[2];
      v111 = v63[3];
      v67 = (v66 + 1);
      if (v66 >= v111 >> 1)
      {
        v93 = sub_2191FB510(v111 > 1, v66 + 1, 1, v63);
        v94 = v154;
        v63 = v93;
      }

      else
      {
        v93 = v63;
        v94 = v154;
      }

      v55 = v62;
      goto LABEL_24;
    }

    v171 = v63;
    v163 = v64;
    v102 = *(v100 + 16);
    if (v102)
    {
      v103 = 0;
      v55 = v175;
      v104 = v62 + 56;
      do
      {
        while (1)
        {
          v105 = *(v100 + 32 + 8 * v103++);
          v106 = sub_219BF7A94();
          v107 = -1 << *(v62 + 32);
          v108 = v106 & ~v107;
          if ((*(v104 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
          {
            break;
          }

LABEL_47:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174 = v55;
          sub_2194A2CF0(v105, v108, isUniquelyReferenced_nonNull_native);
          v55 = v174;
          v175 = v174;
          v62 = v174;
          if (v103 == v102)
          {
            goto LABEL_50;
          }

          v104 = v174 + 56;
        }

        v109 = ~v107;
        while (*(*(v62 + 48) + 8 * v108) != v105)
        {
          v108 = (v108 + 1) & v109;
          if (((*(v104 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      while (v103 != v102);
    }

    v55 = v62;
LABEL_50:

    sub_21977FBA8(v172, v162, type metadata accessor for SearchFeedGroupConfig);
    v64 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_2191FB510(0, v64[2] + 1, 1, v64);
    }

    v65 = v169;
    v63 = v171;
    v66 = v64[2];
    v70 = v64[3];
    v67 = (v66 + 1);
    if (v66 >= v70 >> 1)
    {
      goto LABEL_23;
    }

    v93 = v64;
    v94 = v162;
LABEL_24:
    ++v61;
    sub_21977FC80(v172, type metadata accessor for SearchFeedGroupConfig);
    *(v93 + 16) = v67;
    result = sub_21977FAD0(v94, v93 + v158 + v66 * v167, type metadata accessor for SearchFeedGroupConfig);
    v62 = v55;
    v59 = v159;
    v66 = v166;
    v67 = v173;
    if (v61 == v160)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}