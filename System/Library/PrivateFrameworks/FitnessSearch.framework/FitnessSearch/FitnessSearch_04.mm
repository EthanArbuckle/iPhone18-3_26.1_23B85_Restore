uint64_t sub_1E5C7A618()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v2;
  v13 = *(v0 + 72);
  v9 = *(v0 + 8);
  v10 = v1;
  v3 = *(v0 + 88);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v14, v4);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  if (*(&v15 + 1))
  {
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    if (*(v3 + 16))
    {
      v5 = sub_1E5C7D560(v18);
      v7 = v6;
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      if (v7)
      {
        return *(*(v3 + 56) + 8 * v5);
      }
    }

    else
    {
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
    }
  }

  return 0;
}

uint64_t sub_1E5C7A720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552D8, &qword_1E5CA4B60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v31 - v3);
  v5 = v0[5];
  v6 = v0[6];
  v36 = v0[4];
  v37 = v5;
  v38 = v6;
  v7 = v0[1];
  v32 = *v0;
  v33 = v7;
  v8 = v0[3];
  v34 = v0[2];
  v35 = v8;
  v9 = v32;
  v10 = *(v0 + 24);
  v11 = *(v0 + 56);
  v41 = *(v0 + 40);
  v42 = v11;
  v43 = *(v0 + 72);
  v39 = *(v0 + 8);
  v40 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C920();
  v41 = v31[2];
  v42 = v31[3];
  v43 = v31[4];
  v39 = v31[0];
  v40 = v31[1];
  v12 = v38;
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  *(v4 + v13[5]) = v9;
  v14 = (v4 + v13[6]);
  v15 = v42;
  v14[2] = v41;
  v14[3] = v15;
  v14[4] = v43;
  v16 = v40;
  *v14 = v39;
  v14[1] = v16;
  *(v4 + v13[7]) = v12;
  v17 = (v4 + v13[8]);
  *v17 = xmmword_1E5CA4840;
  v17[1] = xmmword_1E5CA4850;

  LODWORD(v31[0]) = sub_1E5C9C330();
  v18 = sub_1E5C9BE60();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552E0, &qword_1E5CA4BA0) + 36)) = v18;
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 5) = v36;
  *(v19 + 6) = v20;
  *(v19 + 7) = v38;
  v21 = v33;
  *(v19 + 1) = v32;
  *(v19 + 2) = v21;
  v22 = v35;
  *(v19 + 3) = v34;
  *(v19 + 4) = v22;
  sub_1E5C7EC68(&v32, v31);
  v23 = sub_1E5C9C9F0();
  v24 = (v4 + *(v1 + 36));
  *v24 = sub_1E5C7EC60;
  v24[1] = v19;
  v24[2] = v23;
  v24[3] = v25;
  v26 = swift_allocObject();
  v27 = v37;
  v26[5] = v36;
  v26[6] = v27;
  v26[7] = v38;
  v28 = v33;
  v26[1] = v32;
  v26[2] = v28;
  v29 = v35;
  v26[3] = v34;
  v26[4] = v29;
  sub_1E5C7EC68(&v32, v31);
  sub_1E5C7ED28();
  sub_1E5C9C700();

  return sub_1E5C3177C(v4, &qword_1ED0552D8, &qword_1E5CA4B60);
}

uint64_t sub_1E5C7AA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5C9BF60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055320, &qword_1E5CA4BB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v56 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055328, &qword_1E5CA4BC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  v17 = *a1;
  if (v17 && (v93[0] = *a2, *(v93[0] + 16)))
  {
    v18 = *(v93[0] + 32);
    v19 = *(v93[0] + 48);
    v20 = *(v93[0] + 80);
    v67 = *(v93[0] + 64);
    v68 = v20;
    v66[0] = v18;
    v66[1] = v19;
    v71 = v67;
    v72 = v20;
    v21 = *(v93[0] + 48);
    v69 = *(v93[0] + 32);
    v70 = v21;
    v74 = v69;
    v75 = v21;
    v76 = v67;
    v77 = v20;
    v59 = v14;

    sub_1E5C3165C(v93, &v61, &qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C2A1B8(v66, &v61);
    v57 = v8;
    v58 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C9C940();
    v73[0] = v74;
    v73[1] = v75;
    v73[2] = v76;
    v73[3] = v77;
    sub_1E5C3177C(v73, &qword_1ED053F80, &qword_1E5C9E528);
    v76 = v63;
    v77 = v64;
    v78 = v65;
    v74 = v61;
    v75 = v62;
    *v11 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
    *(v11 + v22[5]) = v93[0];
    v23 = (v11 + v22[6]);
    v24 = v78;
    v23[3] = v77;
    v23[4] = v24;
    v25 = v76;
    v23[1] = v75;
    v23[2] = v25;
    *v23 = v74;
    v26 = (v11 + v22[7]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (v11 + v22[8]);
    *v27 = xmmword_1E5CA4840;
    v27[1] = xmmword_1E5CA4850;
    *&v61 = sub_1E5C9C790();
    v28 = sub_1E5C9BE60();
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552E0, &qword_1E5CA4BA0) + 36)) = v28;
    LOBYTE(v28) = sub_1E5C9C440();
    sub_1E5C9BDA0();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_1E5C9BF50();
    v37 = sub_1E5C9BE60();
    v38 = sub_1E5C9C9F0();
    v40 = v39;
    LOBYTE(v60[0]) = 0;
    LOBYTE(v79) = v28;
    *(&v79 + 1) = v30;
    *&v80 = v32;
    *(&v80 + 1) = v34;
    *&v81 = v36;
    BYTE8(v81) = 0;
    *&v82 = v37;
    *(&v82 + 1) = v38;
    v83 = v39;
    v41 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055330, &qword_1E5CA4BC8) + 36);
    v42 = v82;
    *(v41 + 2) = v81;
    *(v41 + 3) = v42;
    *(v41 + 8) = v83;
    v43 = v80;
    *v41 = v79;
    *(v41 + 1) = v43;
    v84[0] = v28;
    v85 = v30;
    v86 = v32;
    v87 = v34;
    v88 = v36;
    v89 = 0;
    v90 = v37;
    v91 = v38;
    v92 = v40;
    sub_1E5C3165C(&v79, &v61, &qword_1ED055338, &qword_1E5CA4BD0);
    sub_1E5C3177C(v84, &qword_1ED055338, &qword_1E5CA4BD0);
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055340, &qword_1E5CA4BD8) + 36)) = 0;
    v44 = *(a2 + 24);
    v45 = *(a2 + 56);
    v63 = *(a2 + 40);
    v64 = v45;
    v65 = *(a2 + 72);
    v61 = *(a2 + 8);
    v62 = v44;

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
    MEMORY[0x1E6939210](v60, v46);
    v61 = v60[0];
    v62 = v60[1];
    v63 = v60[2];
    v64 = v60[3];
    KeyPath = swift_getKeyPath();
    v48 = (v11 + *(v57 + 36));
    *v48 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
    *(v48 + *(v49 + 20)) = v17;
    v50 = (v48 + *(v49 + 24));
    v51 = v62;
    *v50 = v61;
    v50[1] = v51;
    v52 = v64;
    v50[2] = v63;
    v50[3] = v52;
    sub_1E5C7EF20();
    sub_1E5C9C6C0();

    sub_1E5C3177C(v11, &qword_1ED055320, &qword_1E5CA4BB8);
    v53 = v58;
    sub_1E5C7F11C(v16, v58);
    return (*(v59 + 56))(v53, 0, 1, v12);
  }

  else
  {
    v55 = *(v14 + 56);

    return v55(a3, 1, 1, v12);
  }
}

uint64_t sub_1E5C7AFD4(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1E5C9C3D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[5];
  v45 = a2[4];
  v46 = v8;
  v47 = a2[6];
  v9 = a2[1];
  v41 = *a2;
  v42 = v9;
  v10 = a2[3];
  v43 = a2[2];
  v44 = v10;
  result = sub_1E5C7A618();
  if ((v12 & 1) == 0)
  {
    v13 = result;
    (*(v4 + 104))(v7, *MEMORY[0x1E697CC28], v3);
    v14 = sub_1E5C9C3C0();
    result = (*(v4 + 8))(v7, v3);
    v15 = 1;
    if ((v14 & 1) == 0)
    {
      v15 = -1;
    }

    v16 = v13 + v15;
    if (__OFADD__(v13, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = *(*a2 + 16);
      if ((v17 - 1) < v16)
      {
        v16 = v17 - 1;
      }

      v18 = v16 & ~(v16 >> 63);
      if (v18 < v17)
      {
        v19 = (*a2 + (v18 << 6));
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v35[2] = v19[4];
        v35[3] = v22;
        v35[0] = v20;
        v35[1] = v21;
        v23 = v19[3];
        v36 = v19[2];
        v37 = v23;
        v24 = v19[5];
        v38 = v19[4];
        v39 = v24;
        v25 = *(a2 + 24);
        v26 = *(a2 + 56);
        v43 = *(a2 + 40);
        v44 = v26;
        v45 = *(a2 + 72);
        v41 = *(a2 + 8);
        v42 = v25;
        v27 = *(a2 + 24);
        v28 = *(a2 + 56);
        v32 = *(a2 + 40);
        v33 = v28;
        v34 = *(a2 + 72);
        v30 = *(a2 + 8);
        v31 = v27;
        v29[0] = v36;
        v29[1] = v37;
        v29[2] = v38;
        v29[3] = v24;
        sub_1E5C2A1B8(v35, v40);
        sub_1E5C3165C(&v41, v40, &qword_1ED055258, &unk_1E5CA4990);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
        sub_1E5C9C910();
        v40[2] = v32;
        v40[3] = v33;
        v40[4] = v34;
        v40[0] = v30;
        v40[1] = v31;
        return sub_1E5C3177C(v40, &qword_1ED055258, &unk_1E5CA4990);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C7B23C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v5 = sub_1E5C9C2A0();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5C9C000();
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5C9CBA0();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v82 - v16;
  v18 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055470, &qword_1E5CA4DE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055468, &qword_1E5CA4DD8);
  v83 = *(v85 - 8);
  v25 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v82 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554A0, &qword_1E5CA4DF8);
  v86 = *(v88 - 8);
  v27 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v82 - v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055458, &qword_1E5CA4DD0);
  v29 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554A8, &qword_1E5CA4E00);
  v100 = *(v31 - 8);
  v101 = v31;
  v32 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v98 = &v82 - v33;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055448, &qword_1E5CA4DC8);
  v34 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v82 - v35;
  v36 = a1[1];
  v137 = *a1;
  v138 = v36;
  v37 = a1[3];
  *v139 = a1[2];
  *&v139[16] = v37;
  v141 = v37;
  v142 = v137;
  v38 = *(a1 + 2);
  v91 = *(a1 + 3);
  v143 = v38;
  v140 = *v139;
  sub_1E5C7E904(a2, &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeButtons);
  v39 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v40 = swift_allocObject();
  sub_1E5C7FCD4(&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for SearchScopeFilters.ScopeButtons);
  v41 = (v40 + ((v20 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v138;
  *v41 = v137;
  v41[1] = v42;
  v43 = *&v139[16];
  v41[2] = *v139;
  v41[3] = v43;
  v108 = &v137;
  v109 = a2;
  v44 = a2;
  sub_1E5C2A1B8(&v137, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554B0, &qword_1E5CA4E08);
  sub_1E5C8014C();
  sub_1E5C9C8A0();
  v45 = v21;
  v46 = &v24[*(v21 + 52)];
  v47 = *&v139[16];
  *(v46 + 2) = *v139;
  *(v46 + 3) = v47;
  v48 = v138;
  *v46 = v137;
  *(v46 + 1) = v48;
  v93 = v18;
  v49 = *(v18 + 28);
  v96 = v44;
  if (*(v44 + v49))
  {
    v120 = v137;
    v121 = v138;
    v122 = *v139;
    v123 = *&v139[16];
    sub_1E5C2A1B8(&v137, &v133);
    SearchResultScope.impression.getter();
    v50 = sub_1E5C9CB70();
    (*(*(v50 - 8) + 56))(v17, 0, 1, v50);
  }

  else
  {
    v51 = sub_1E5C9CB70();
    (*(*(v51 - 8) + 56))(v17, 1, 1, v51);
    sub_1E5C2A1B8(&v137, &v120);
  }

  v52 = v87;
  sub_1E5C9CB80();
  v53 = sub_1E5C27F74(&qword_1ED055478, &qword_1ED055470, &qword_1E5CA4DE0);
  v54 = v82;
  sub_1E5C9C5C0();
  (*(v89 + 8))(v52, v90);
  sub_1E5C3177C(v17, &qword_1ED054020, &qword_1E5CA4DF0);
  sub_1E5C3177C(v24, &qword_1ED055470, &qword_1E5CA4DE0);
  v55 = v92;
  sub_1E5C9BFF0();
  *&v120 = v45;
  *(&v120 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  sub_1E5C7F7C4(&qword_1ED055480, MEMORY[0x1E697C248]);
  v57 = v84;
  v56 = v85;
  v58 = v95;
  sub_1E5C9C610();
  (*(v94 + 8))(v55, v58);
  (*(v83 + 8))(v54, v56);
  v59 = v99;
  v60 = v97;
  v61 = &v97[*(v99 + 36)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055490, &qword_1E5CA4DE8);
  v63 = &v61[*(v62 + 40)];
  sub_1E5C9C050();
  v64 = *MEMORY[0x1E697F468];
  v65 = sub_1E5C9C1C0();
  (*(*(v65 - 8) + 104))(v61, v64, v65);
  v61[*(v62 + 36)] = 0;
  (*(v86 + 32))(v60, v57, v88);
  v66 = v104;
  sub_1E5C9C060();
  v67 = (v96 + *(v93 + 24));
  v68 = v67[3];
  v122 = v67[2];
  v123 = v68;
  v124 = v67[4];
  v69 = v67[1];
  v120 = *v67;
  v121 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v133, v70);
  v71 = *(&v134 + 1);
  v132 = v134;
  v129 = v135;
  v130 = v136;
  v131 = v133;
  if (!*(&v134 + 1))
  {
    v72 = v91;
    if (!v91)
    {
      v120 = v133;
      v121 = v134;
      v122 = v135;
      v123 = v136;
      sub_1E5C2A1B8(&v137, &v116);
      sub_1E5C3177C(&v120, &qword_1ED053F80, &qword_1E5C9E528);
      goto LABEL_12;
    }

    sub_1E5C2A1B8(&v137, &v120);
    goto LABEL_10;
  }

  v121 = v134;
  v122 = v135;
  v123 = v136;
  v116 = v133;
  v117 = v134;
  v118 = v135;
  v119 = v136;
  v120 = v133;
  v72 = v91;
  if (!v91)
  {
    v112 = v120;
    v113 = v121;
    v114 = v122;
    v115 = v123;
    sub_1E5C2A1B8(&v137, v111);
    sub_1E5C3165C(&v120, v111, &qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2A1F0(&v112);
LABEL_10:
    v120 = v131;
    *&v121 = v132;
    *(&v121 + 1) = v71;
    v122 = v129;
    v123 = v130;
    v124 = v142;
    v125 = v143;
    v126 = v72;
    v127 = v140;
    v128 = v141;
    sub_1E5C3177C(&v120, &qword_1ED054150, &unk_1E5CA3E30);
    goto LABEL_12;
  }

  v112 = v142;
  v114 = v140;
  v115 = v141;
  *&v113 = v143;
  *(&v113 + 1) = v91;
  sub_1E5C2A1B8(&v137, v111);
  sub_1E5C3165C(&v120, v111, &qword_1ED053F80, &qword_1E5C9E528);
  _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(&v116, &v112);
  v110[0] = v112;
  v110[1] = v113;
  v110[2] = v114;
  v110[3] = v115;
  sub_1E5C2A1F0(v110);
  v111[0] = v116;
  v111[1] = v117;
  v111[2] = v118;
  v111[3] = v119;
  sub_1E5C2A1F0(v111);
  v112 = v131;
  *&v113 = v132;
  *(&v113 + 1) = v71;
  v114 = v129;
  v115 = v130;
  sub_1E5C3177C(&v112, &qword_1ED053F80, &qword_1E5C9E528);
LABEL_12:
  v73 = sub_1E5C7FF04();
  v74 = sub_1E5C7F7C4(&qword_1ED055498, MEMORY[0x1E697C688]);
  v75 = v98;
  v76 = v106;
  sub_1E5C9C620();
  (*(v105 + 8))(v66, v76);
  sub_1E5C3177C(v60, &qword_1ED055458, &qword_1E5CA4DD0);
  v133 = *&v139[8];
  *&v120 = v59;
  *(&v120 + 1) = v76;
  *&v121 = v73;
  *(&v121 + 1) = v74;
  swift_getOpaqueTypeConformance2();
  sub_1E5C28160();
  v77 = v103;
  v78 = v101;
  sub_1E5C9C6A0();
  (*(v100 + 8))(v75, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1E5CA3380;
  *(v79 + 32) = 0x65706F6353;
  *(v79 + 40) = 0xE500000000000000;
  v80 = *(&v138 + 1);
  *(v79 + 48) = v138;
  *(v79 + 56) = v80;
  sub_1E5C7FDBC();

  sub_1E5C9C5B0();

  return sub_1E5C3177C(v77, &qword_1ED055448, &qword_1E5CA4DC8);
}

uint64_t sub_1E5C7BF74(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v5 = (a1 + *(v4 + 24));
  v6 = v5[1];
  v7 = v5[3];
  v26 = v5[2];
  v27 = v7;
  v8 = v5[3];
  v28 = v5[4];
  v9 = v5[1];
  v25[0] = *v5;
  v25[1] = v9;
  v22 = v26;
  v23 = v8;
  v24 = v5[4];
  v20 = v25[0];
  v21 = v6;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  sub_1E5C2A1B8(a2, v29);
  sub_1E5C3165C(v25, v29, &qword_1ED055258, &unk_1E5CA4990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C910();
  v29[2] = v22;
  v29[3] = v23;
  v29[4] = v24;
  v29[0] = v20;
  v29[1] = v21;
  result = sub_1E5C3177C(v29, &qword_1ED055258, &unk_1E5CA4990);
  v11 = a1 + *(v4 + 28);
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);
    v14 = a2[1];
    v20 = *a2;
    v21 = v14;
    v15 = a2[3];
    v22 = a2[2];
    v23 = v15;
    return v12(&v20);
  }

  return result;
}

uint64_t sub_1E5C7C0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v90 = a3;
  v81 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v87 = *(v81 - 8);
  v4 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v88 = v5;
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE8, &qword_1E5CA3488);
  v6 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v92 = &v77 - v7;
  v8 = sub_1E5C9C4E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554D8, &qword_1E5CA4E18);
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v77 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554C8, &qword_1E5CA4E10);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v77 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554B0, &qword_1E5CA4E08);
  v17 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v77 - v18;
  v91 = a1;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  *&v94 = v19;
  *(&v94 + 1) = v20;
  sub_1E5C28160();

  v21 = sub_1E5C9C580();
  v23 = v22;
  LOBYTE(v20) = v24;
  sub_1E5C9C510();
  sub_1E5C9C4D0();

  (*(v9 + 104))(v12, *MEMORY[0x1E6980EA8], v8);
  sub_1E5C9C500();

  (*(v9 + 8))(v12, v8);
  v25 = sub_1E5C9C550();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v23;
  v33 = v92;
  sub_1E5C2824C(v21, v32, v20 & 1);

  *&v94 = v25;
  *(&v94 + 1) = v27;
  LOBYTE(v95) = v29 & 1;
  *(&v95 + 1) = v31;
  v34 = *MEMORY[0x1E697E728];
  v35 = sub_1E5C9BF80();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  sub_1E5C7F7C4(&qword_1ED054F08, MEMORY[0x1E697E730]);
  result = sub_1E5C9CC00();
  if (result)
  {
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488);
    v37 = v80;
    sub_1E5C9C660();
    sub_1E5C3177C(v33, &qword_1ED054EE8, &qword_1E5CA3488);
    sub_1E5C2824C(v25, v27, v29 & 1);

    v38 = sub_1E5C9C4B0();
    v39 = v83;
    v40 = (v83 + *(v81 + 32));
    v41 = v40[3];
    sub_1E5C9BDA0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0554E8, &unk_1E5CA4E20) + 36);
    *v50 = v38;
    *(v50 + 8) = v43;
    *(v50 + 16) = v45;
    *(v50 + 24) = v47;
    *(v50 + 32) = v49;
    *(v50 + 40) = 0;
    v51 = sub_1E5C9C440();
    v52 = *v40;
    sub_1E5C9BDA0();
    v53 = v37 + *(v79 + 36);
    *v53 = v51;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    v58 = v40[1];
    v59 = v40[2];
    sub_1E5C9C9F0();
    sub_1E5C9C040();
    v60 = v86;
    sub_1E5C6FECC(v37, v86, &qword_1ED0554D8, &qword_1E5CA4E18);
    v61 = (v60 + *(v82 + 36));
    v62 = v99;
    v61[4] = v98;
    v61[5] = v62;
    v61[6] = v100;
    v63 = v95;
    *v61 = v94;
    v61[1] = v63;
    v64 = v97;
    v61[2] = v96;
    v61[3] = v64;
    v65 = sub_1E5C9C890();
    v66 = v39;
    v67 = v89;
    sub_1E5C7E904(v66, v89, type metadata accessor for SearchScopeFilters.ScopeButtons);
    v68 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    sub_1E5C7FCD4(v67, v70 + v68, type metadata accessor for SearchScopeFilters.ScopeButtons);
    v71 = (v70 + v69);
    v72 = v91;
    v73 = v91[1];
    *v71 = *v91;
    v71[1] = v73;
    v74 = *(v72 + 48);
    v71[2] = *(v72 + 32);
    v71[3] = v74;
    v75 = v84;
    sub_1E5C6FECC(v60, v84, &qword_1ED0554C8, &qword_1E5CA4E10);
    v76 = (v75 + *(v85 + 36));
    *v76 = v65;
    v76[1] = sub_1E5C8062C;
    v76[2] = v70;
    sub_1E5C6FECC(v75, v90, &qword_1ED0554B0, &qword_1E5CA4E08);
    return sub_1E5C2A1B8(v72, v93);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C7C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = *a3;
  v7 = *(a3 + 24);
  v36 = *(a3 + 16);
  v8 = *(a3 + 48);
  v45 = *(a3 + 32);
  v46 = v8;
  v9 = (a2 + *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) + 24));
  v10 = v9[3];
  v28 = v9[2];
  v29 = v10;
  v30 = v9[4];
  v11 = v9[1];
  v26 = *v9;
  v27 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v41, v12);
  v13 = *(&v42 + 1);
  v40 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v41;
  if (!*(&v42 + 1))
  {
    if (!v7)
    {
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v29 = v44;
      sub_1E5C2A1B8(a3, &v22);
      sub_1E5C3177C(&v26, &qword_1ED053F80, &qword_1E5C9E528);
      goto LABEL_10;
    }

    sub_1E5C2A1B8(a3, &v26);
LABEL_8:
    v26 = v39;
    *&v27 = v40;
    *(&v27 + 1) = v13;
    v28 = v37;
    v29 = v38;
    v30 = v35;
    v31 = v36;
    v32 = v7;
    v33 = v45;
    v34 = v46;
    result = sub_1E5C3177C(&v26, &qword_1ED054150, &unk_1E5CA3E30);
    a1 = 0;
    goto LABEL_11;
  }

  v27 = v42;
  v28 = v43;
  v29 = v44;
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v26 = v41;
  if (!v7)
  {
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    sub_1E5C2A1B8(a3, v17);
    sub_1E5C3165C(&v26, v17, &qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2A1F0(&v18);
    goto LABEL_8;
  }

  v18 = v35;
  v20 = v45;
  v21 = v46;
  *&v19 = v36;
  *(&v19 + 1) = v7;
  sub_1E5C2A1B8(a3, v17);
  sub_1E5C3165C(&v26, v17, &qword_1ED053F80, &qword_1E5C9E528);
  v14 = _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(&v22, &v18);
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  sub_1E5C2A1F0(v16);
  v17[0] = v22;
  v17[1] = v23;
  v17[2] = v24;
  v17[3] = v25;
  sub_1E5C2A1F0(v17);
  v18 = v39;
  *&v19 = v40;
  *(&v19 + 1) = v13;
  v20 = v37;
  v21 = v38;
  result = sub_1E5C3177C(&v18, &qword_1ED053F80, &qword_1E5C9E528);
  if (v14)
  {
LABEL_10:

    goto LABEL_11;
  }

  a1 = 0;
LABEL_11:
  *a4 = a1;
  return result;
}

uint64_t sub_1E5C7CB44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5C3165C(a1, &v6 - v4, &qword_1ED054868, &unk_1E5CA12A0);
  return sub_1E5C9C110();
}

uint64_t sub_1E5C7CBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v17 - v9;
  sub_1E5C489B4(v17 - v9);
  v11 = sub_1E5C7F8FC(v10);
  sub_1E5C3177C(v10, &qword_1ED054868, &unk_1E5CA12A0);
  *a2 = sub_1E5C9C1A0();
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  LODWORD(v10) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055430, &unk_1E5CA4D98) + 44);
  v17[3] = *(v2 + *(v4 + 28));
  swift_getKeyPath();
  sub_1E5C7E904(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeButtons);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1E5C7FCD4(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SearchScopeFilters.ScopeButtons);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055438, &qword_1E5CA4DC0);
  sub_1E5C27F74(&qword_1ED055440, &qword_1ED055278, &unk_1E5CA49A0);
  sub_1E5C7A5C4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055448, &qword_1E5CA4DC8);
  v15 = sub_1E5C7FDBC();
  v17[1] = v14;
  v17[2] = v15;
  swift_getOpaqueTypeConformance2();
  return sub_1E5C9C950();
}

uint64_t sub_1E5C7CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C27F74(&qword_1ED055538, &qword_1ED055540, &qword_1E5CA4E68);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_1E5C7CF3C(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_1E5C7CF8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E5C9BFA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v37 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
  v12 = *(a1 + *(v37 + 20));
  type metadata accessor for CGRect(0);
  sub_1E5C9BE90();
  v13 = v44;
  v15 = v45;
  v14 = *&v46;
  v38 = a1;
  sub_1E5C48C08(v11);
  (*(v5 + 104))(v9, *MEMORY[0x1E697E7D0], v4);
  LOBYTE(v12) = sub_1E5C9BF90();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  if (v12)
  {
    v52.origin.x = v13;
    *&v52.origin.y = v15;
    v52.size.height = v14;
    MinX = CGRectGetMinX(v52);
  }

  else
  {
    sub_1E5C9BE80();
    v19 = v18;
    v53.origin.x = v13;
    *&v53.origin.y = v15;
    v53.size.height = v14;
    MinX = v19 - CGRectGetMaxX(v53);
  }

  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1E5C9C1C0();
  (*(*(v21 - 8) + 104))(a2, v20, v21);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055510, &qword_1E5CA4E40) + 36)) = 256;
  v54.origin.x = v13;
  *&v54.origin.y = v15;
  v54.size.height = v14;
  MinY = CGRectGetMinY(v54);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055518, &qword_1E5CA4E48) + 36));
  *v23 = MinX;
  v23[1] = MinY;
  v55.origin.x = v13;
  *&v55.origin.y = v15;
  v55.size.height = v14;
  CGRectGetWidth(v55);
  v56.origin.x = v13;
  *&v56.origin.y = v15;
  v56.size.height = v14;
  CGRectGetHeight(v56);
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055520, &qword_1E5CA4E50) + 36));
  v25 = v50;
  *v24 = v49;
  v24[1] = v25;
  v24[2] = v51;
  v26 = MEMORY[0x1E6939320](0.25, 0.8, 0.0);
  v27 = (v38 + *(v37 + 24));
  v28 = v27[3];
  v41 = v27[2];
  v42 = v28;
  v29 = v27[1];
  v40[0] = *v27;
  v40[1] = v29;
  *v43 = v26;
  *&v43[24] = v29;
  *&v43[40] = v41;
  *&v43[56] = v28;
  *&v43[8] = v40[0];
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055528, &qword_1E5CA4E58) + 36);
  v31 = *&v43[48];
  *(v30 + 32) = *&v43[32];
  *(v30 + 48) = v31;
  *(v30 + 64) = *&v43[64];
  v32 = *&v43[16];
  *v30 = *v43;
  *(v30 + 16) = v32;
  v44 = *&v26;
  v33 = v27[3];
  v47 = v27[2];
  v48 = v33;
  v34 = v27[1];
  v45 = *v27;
  v46 = v34;
  sub_1E5C3165C(v40, v39, &qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C3165C(v43, v39, &qword_1ED055530, &qword_1E5CA4E60);
  return sub_1E5C3177C(&v44, &qword_1ED055530, &qword_1E5CA4E60);
}

uint64_t sub_1E5C7D384@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E5C7E904(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchScopeFilters.ScopeCapsule);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E5C7FCD4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchScopeFilters.ScopeCapsule);
  *a2 = sub_1E5C806D8;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E5C7D498(uint64_t a1)
{
  v2 = sub_1E5C9BFA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C0F0();
}

uint64_t sub_1E5C7D560(unint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1E5C9D0D0();
  if (a1[1])
  {
    v4 = *a1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v7);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v13, v10);
  v11 = sub_1E5C9D110();

  return sub_1E5C7DA3C(a1, v11);
}

unint64_t sub_1E5C7D644(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  v6 = sub_1E5C9D110();

  return sub_1E5C7E6B8(a1, a2, v6);
}

uint64_t sub_1E5C7D6BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
  v42 = a2;
  result = sub_1E5C9CEF0();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      if (v42)
      {
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + (v21 << 6);
        v24 = *(v23 + 8);
        v44 = *v23;
        v25 = *(v23 + 16);
        v26 = *(v23 + 24);
        v45 = *(v23 + 32);
        v46 = *(v23 + 48);
        v43 = *(v22 + 8 * v21);
      }

      else
      {
        v27 = (*(v5 + 48) + (v21 << 6));
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[3];
        v48 = v27[2];
        v49 = v30;
        v47[0] = v28;
        v47[1] = v29;
        v31 = *(*(v5 + 56) + 8 * v21);
        v46 = v30;
        v45 = v48;
        v26 = *(&v29 + 1);
        v25 = v29;
        v24 = *(&v28 + 1);
        v43 = v31;
        v44 = v28;
        sub_1E5C2A1B8(v47, v50);
      }

      v32 = *(v8 + 40);
      sub_1E5C9D0D0();
      sub_1E5C9D0F0();
      if (v24)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v45);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(v47, *(&v46 + 1));
      result = sub_1E5C9D110();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + (v16 << 6);
      *v17 = v44;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v26;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(*(v8 + 56) + 8 * v16) = v43;
      ++*(v8 + 16);
      v5 = v41;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5C7DA3C(unint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchItem();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v8 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v63 - v9;
  v11 = type metadata accessor for SearchContentTile();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v63 - v20;
  v65 = v2;
  v22 = -1 << *(v2 + 32);
  v23 = a2 & ~v22;
  if (((*(v2 + 64 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return v23;
  }

  v24 = v2 + 64;
  v68 = v19;
  v25 = ~v22;
  v77 = *a1;
  v26 = a1[1];
  v81 = a1[2];
  v27 = a1[4];
  v74 = a1[3];
  v72 = v27;
  v28 = a1[6];
  v71 = a1[5];
  v67 = v28;
  v66 = a1[7];
  v29 = v65;
  v75 = v11;
  v83 = v26;
  v64 = v2 + 64;
  while (1)
  {
    v30 = (*(v29 + 48) + (v23 << 6));
    v31 = v30[3];
    v33 = *v30;
    v32 = v30[1];
    *v93 = v30[2];
    *&v93[16] = v31;
    v91 = v33;
    v92 = v32;
    if (*(&v33 + 1))
    {
      break;
    }

    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_4:
    v23 = (v23 + 1) & v25;
    if (((*(v24 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return v23;
    }
  }

  if (!v26)
  {
    goto LABEL_4;
  }

  if (__PAIR128__(*(&v33 + 1), v91) != __PAIR128__(v26, v77))
  {
    v34 = sub_1E5C9D060();
    v26 = v83;
    if ((v34 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_9:
  if (v92 != __PAIR128__(v74, v81))
  {
    v35 = sub_1E5C9D060();
    v26 = v83;
    if ((v35 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (*v93 != v72)
  {
    goto LABEL_4;
  }

  if (*&v93[8] != __PAIR128__(v67, v71))
  {
    v36 = sub_1E5C9D060();
    v26 = v83;
    if ((v36 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v73 = *&v93[24];
  v37 = *(*&v93[24] + 16);
  if (v37 != *(v66 + 16))
  {
    goto LABEL_4;
  }

  v38 = v73;
  if (!v37 || v73 == v66)
  {
    return v23;
  }

  v39 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v79 = v73 + v39;
  v78 = v66 + v39;
  result = sub_1E5C2A1B8(&v91, &v88);
  v41 = 0;
  v42 = v38;
  v76 = v37;
  while (v41 < *(v42 + 16))
  {
    v43 = *(v82 + 72) * v41;
    result = sub_1E5C7E904(v79 + v43, v21, type metadata accessor for SearchContentTile);
    v84 = v41;
    if (v37 == v41)
    {
      goto LABEL_100;
    }

    sub_1E5C7E904(v78 + v43, v18, type metadata accessor for SearchContentTile);
    v44 = &v10[*(v80 + 48)];
    sub_1E5C7E904(v21, v10, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v18, v44, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v25;
      v46 = v68;
      sub_1E5C7E904(v10, v68, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v46, type metadata accessor for SearchItem);
        v25 = v45;
LABEL_91:
        sub_1E5C3177C(v10, &qword_1ED054D18, &unk_1E5CA2B00);
        goto LABEL_95;
      }

      v47 = v69;
      sub_1E5C7FCD4(v44, v69, type metadata accessor for SearchItem);
      v48 = _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(v46, v47);
      sub_1E5C7E96C(v47, type metadata accessor for SearchItem);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v46, type metadata accessor for SearchItem);
      result = sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
      v25 = v45;
      v42 = v73;
      v37 = v76;
      if (!v48)
      {
        goto LABEL_95;
      }

      goto LABEL_20;
    }

    v49 = v70;
    sub_1E5C7E904(v10, v70, type metadata accessor for SearchContentTile);
    v50 = *(v49 + 48);
    *v90 = *(v49 + 32);
    *&v90[16] = v50;
    *&v90[32] = *(v49 + 64);
    v51 = *(v49 + 16);
    v88 = *v49;
    v89 = v51;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C4F8A4(&v88);
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
      goto LABEL_91;
    }

    v52 = *(v44 + 16);
    v85 = *v44;
    v86 = v52;
    v53 = *(v44 + 48);
    *v87 = *(v44 + 32);
    *&v87[16] = v53;
    *&v87[32] = *(v44 + 64);
    if (v88 != v85 && (sub_1E5C9D060() & 1) == 0 || v89 != v86 && (sub_1E5C9D060() & 1) == 0)
    {
      goto LABEL_93;
    }

    if (v90[0] <= 3u)
    {
      if (v90[0] > 1u)
      {
        if (v90[0] == 2)
        {
          v54 = 0x7974696C61646F6DLL;
        }

        else
        {
          v54 = 0x7473696C79616C70;
        }

        v55 = 0xE800000000000000;
      }

      else
      {
        v54 = 0x6169726F74696465;
        v55 = 0xEF73647261632D6CLL;
        if (v90[0])
        {
          v55 = 0xEF736D6574692D6CLL;
        }
      }
    }

    else if (v90[0] <= 5u)
    {
      if (v90[0] == 4)
      {
        v54 = 0x6D6172676F7270;
      }

      else
      {
        v54 = 0x72656E69617274;
      }

      v55 = 0xE700000000000000;
    }

    else if (v90[0] == 6)
    {
      v54 = 0x2D72656E69617274;
      v55 = 0xEC00000073706974;
    }

    else if (v90[0] == 7)
    {
      v54 = 0x65486C6C65737075;
      v55 = 0xEC00000072656461;
    }

    else
    {
      v55 = 0xE700000000000000;
      v54 = 0x74756F6B726F77;
    }

    if (v87[0] <= 3u)
    {
      if (v87[0] > 1u)
      {
        v59 = 0xE800000000000000;
        if (v87[0] == 2)
        {
          if (v54 != 0x7974696C61646F6DLL)
          {
            goto LABEL_75;
          }
        }

        else if (v54 != 0x7473696C79616C70)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      v58 = 0x6169726F74696465;
      v59 = 0xEF73647261632D6CLL;
      if (v87[0])
      {
        v59 = 0xEF736D6574692D6CLL;
        if (v54 != 0x6169726F74696465)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      goto LABEL_71;
    }

    if (v87[0] > 5u)
    {
      if (v87[0] == 6)
      {
        v56 = 0x2D72656E69617274;
        v57 = 1936746868;
LABEL_66:
        v59 = v57 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v54 != v56)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      if (v87[0] == 7)
      {
        v56 = 0x65486C6C65737075;
        v57 = 1919247457;
        goto LABEL_66;
      }

      v59 = 0xE700000000000000;
      v58 = 0x74756F6B726F77;
LABEL_71:
      if (v54 != v58)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    v59 = 0xE700000000000000;
    if (v87[0] == 4)
    {
      if (v54 != 0x6D6172676F7270)
      {
        goto LABEL_75;
      }
    }

    else if (v54 != 0x72656E69617274)
    {
LABEL_75:
      v60 = sub_1E5C9D060();

      v37 = v76;
      if ((v60 & 1) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_76;
    }

LABEL_72:
    if (v55 != v59)
    {
      goto LABEL_75;
    }

    v37 = v76;
LABEL_76:
    if (*&v90[16])
    {
      if (!*&v87[16])
      {
        goto LABEL_92;
      }

      if (*&v90[8] != *&v87[8] && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (*&v87[16])
      {
LABEL_92:

LABEL_93:
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v85);
        sub_1E5C4F8A4(&v88);
LABEL_94:
        sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
LABEL_95:
        sub_1E5C2A1F0(&v91);
        v29 = v65;
        v24 = v64;
        v26 = v83;
        goto LABEL_4;
      }

      swift_bridgeObjectRelease_n();
    }

    v61 = *&v87[32];
    if (*&v90[32])
    {
      if (!*&v87[32])
      {
        goto LABEL_93;
      }

      if (*&v90[24] == *&v87[24])
      {
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v85);
        sub_1E5C4F8A4(&v88);
      }

      else
      {
        v62 = sub_1E5C9D060();
        sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v85);
        sub_1E5C4F8A4(&v88);
        if ((v62 & 1) == 0)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      sub_1E5C7E96C(v18, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
      sub_1E5C4F8A4(&v85);
      sub_1E5C4F8A4(&v88);
      if (v61)
      {
        goto LABEL_94;
      }
    }

    result = sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
LABEL_20:
    v41 = v84 + 1;
    if (v37 == v84 + 1)
    {
      sub_1E5C2A1F0(&v91);
      return v23;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

unint64_t sub_1E5C7E6B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E5C9D060())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1E5C7E770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
  v2 = *v0;
  v3 = sub_1E5C9CEE0();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v28[2] = v18[2];
        v28[3] = v21;
        v28[0] = v20;
        v28[1] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + (v17 << 6));
        v24 = *v18;
        v25 = v18[1];
        v26 = v18[3];
        v23[2] = v18[2];
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        *(*(v4 + 56) + 8 * v17) = v22;
        result = sub_1E5C2A1B8(v28, &v27);
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

uint64_t sub_1E5C7E904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C7E96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_1E5C7EA00(uint64_t *a1, int a2)
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

uint64_t sub_1E5C7EA48(uint64_t result, int a2, int a3)
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

unint64_t sub_1E5C7EAC4()
{
  result = qword_1ED0552A8;
  if (!qword_1ED0552A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552B0, &qword_1E5CA4AA8);
    sub_1E5C7EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552A8);
  }

  return result;
}

unint64_t sub_1E5C7EB50()
{
  result = qword_1ED0552B8;
  if (!qword_1ED0552B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552C0, &qword_1E5CA4AB0);
    sub_1E5C27F74(&qword_1ED0552C8, &qword_1ED0552D0, qword_1E5CA4AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552B8);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[8])
  {
    v4 = v0[6];

    v5 = v0[8];

    v6 = v0[11];

    v7 = v0[12];
  }

  v8 = v0[13];

  v9 = v0[15];

  return swift_deallocObject();
}

unint64_t sub_1E5C7ED28()
{
  result = qword_1ED0552E8;
  if (!qword_1ED0552E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552D8, &qword_1E5CA4B60);
    sub_1E5C7EDE0();
    sub_1E5C27F74(&qword_1ED055310, &qword_1ED055318, &qword_1E5CA4BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552E8);
  }

  return result;
}

unint64_t sub_1E5C7EDE0()
{
  result = qword_1ED0552F0;
  if (!qword_1ED0552F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552E0, &qword_1E5CA4BA0);
    sub_1E5C7F7C4(&qword_1ED0552F8, type metadata accessor for SearchScopeFilters.ScopeButtons);
    sub_1E5C27F74(&qword_1ED055300, &qword_1ED055308, &qword_1E5CA4BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552F0);
  }

  return result;
}

uint64_t sub_1E5C7EEE8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C7EF20()
{
  result = qword_1ED055348;
  if (!qword_1ED055348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055320, &qword_1E5CA4BB8);
    sub_1E5C7EFD8();
    sub_1E5C27F74(&qword_1ED055368, &qword_1ED055370, &unk_1E5CA4C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055348);
  }

  return result;
}

unint64_t sub_1E5C7EFD8()
{
  result = qword_1ED055350;
  if (!qword_1ED055350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055340, &qword_1E5CA4BD8);
    sub_1E5C7F064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055350);
  }

  return result;
}

unint64_t sub_1E5C7F064()
{
  result = qword_1ED055358;
  if (!qword_1ED055358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055330, &qword_1E5CA4BC8);
    sub_1E5C7EDE0();
    sub_1E5C27F74(&qword_1ED055360, &qword_1ED055338, &qword_1E5CA4BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055358);
  }

  return result;
}

uint64_t sub_1E5C7F11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055328, &qword_1E5CA4BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E5C7F1B4()
{
  sub_1E5C7F2CC(319, &qword_1ED0553A8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E5C7F2CC(319, &qword_1ED0553B0, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
    if (v1 <= 0x3F)
    {
      sub_1E5C7F640(319, qword_1EE2C47E0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5C7F2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1E5C7F4E4()
{
  sub_1E5C7F694(319, &qword_1ED0553D0, &qword_1ED054868, &unk_1E5CA12A0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E5C7F640(319, &qword_1ED0553D8, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E5C7F694(319, &qword_1ED0553E0, &qword_1ED053F80, &qword_1E5C9E528, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1E5C7F694(319, &qword_1ED0553E8, &qword_1ED0553F0, &qword_1E5CA4C78, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5C7F640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SearchResultScope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5C7F694(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1E5C7F708()
{
  result = qword_1ED0553F8;
  if (!qword_1ED0553F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055400, &qword_1E5CA4C98);
    sub_1E5C7ED28();
    sub_1E5C7F7C4(&qword_1ED055408, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0553F8);
  }

  return result;
}

uint64_t sub_1E5C7F7C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5C7F80C()
{
  result = qword_1ED055410;
  if (!qword_1ED055410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055418, &qword_1E5CA4CA0);
    sub_1E5C27F74(&qword_1ED055420, &qword_1ED055428, qword_1E5CA4CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055410);
  }

  return result;
}

double sub_1E5C7F8FC(uint64_t a1)
{
  v2 = sub_1E5C9C340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055500, &qword_1E5CA4E38);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v3 + 104))(&v24 - v17, *MEMORY[0x1E697FF40], v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v19 = *(v8 + 56);
  sub_1E5C3165C(a1, v11, &qword_1ED054868, &unk_1E5CA12A0);
  sub_1E5C3165C(v18, &v11[v19], &qword_1ED054868, &unk_1E5CA12A0);
  v20 = *(v3 + 48);
  if (v20(v11, 1, v2) == 1)
  {
    sub_1E5C3177C(v18, &qword_1ED054868, &unk_1E5CA12A0);
    if (v20(&v11[v19], 1, v2) == 1)
    {
      sub_1E5C3177C(v11, &qword_1ED054868, &unk_1E5CA12A0);
      return 20.0;
    }

    goto LABEL_6;
  }

  sub_1E5C3165C(v11, v16, &qword_1ED054868, &unk_1E5CA12A0);
  if (v20(&v11[v19], 1, v2) == 1)
  {
    sub_1E5C3177C(v18, &qword_1ED054868, &unk_1E5CA12A0);
    (*(v3 + 8))(v16, v2);
LABEL_6:
    sub_1E5C3177C(v11, &qword_1ED055500, &qword_1E5CA4E38);
    return 5.0;
  }

  (*(v3 + 32))(v6, &v11[v19], v2);
  sub_1E5C7F7C4(&qword_1ED055508, MEMORY[0x1E697FF50]);
  v22 = sub_1E5C9CC00();
  v23 = *(v3 + 8);
  v23(v6, v2);
  sub_1E5C3177C(v18, &qword_1ED054868, &unk_1E5CA12A0);
  v23(v16, v2);
  sub_1E5C3177C(v11, &qword_1ED054868, &unk_1E5CA12A0);
  result = 20.0;
  if ((v22 & 1) == 0)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_1E5C7FCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C7FD3C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5C7B23C(a1, v6, a2);
}

unint64_t sub_1E5C7FDBC()
{
  result = qword_1ED055450;
  if (!qword_1ED055450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055448, &qword_1E5CA4DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055458, &qword_1E5CA4DD0);
    sub_1E5C9C2A0();
    sub_1E5C7FF04();
    sub_1E5C7F7C4(&qword_1ED055498, MEMORY[0x1E697C688]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C7F7C4(&qword_1ED055408, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055450);
  }

  return result;
}

unint64_t sub_1E5C7FF04()
{
  result = qword_1ED055460;
  if (!qword_1ED055460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055458, &qword_1E5CA4DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055468, &qword_1E5CA4DD8);
    sub_1E5C9C000();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055470, &qword_1E5CA4DE0);
    sub_1E5C27F74(&qword_1ED055478, &qword_1ED055470, &qword_1E5CA4DE0);
    swift_getOpaqueTypeConformance2();
    sub_1E5C7F7C4(&qword_1ED055480, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED055488, &qword_1ED055490, &qword_1E5CA4DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055460);
  }

  return result;
}

uint64_t sub_1E5C800B8()
{
  v1 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5C7BF74(v0 + v2, v3);
}

unint64_t sub_1E5C8014C()
{
  result = qword_1ED0554B8;
  if (!qword_1ED0554B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554B0, &qword_1E5CA4E08);
    sub_1E5C80204();
    sub_1E5C27F74(&qword_1ED0554F0, &qword_1ED0554F8, &qword_1E5CA4E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554B8);
  }

  return result;
}

unint64_t sub_1E5C80204()
{
  result = qword_1ED0554C0;
  if (!qword_1ED0554C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554C8, &qword_1E5CA4E10);
    sub_1E5C80290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554C0);
  }

  return result;
}

unint64_t sub_1E5C80290()
{
  result = qword_1ED0554D0;
  if (!qword_1ED0554D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554D8, &qword_1E5CA4E18);
    sub_1E5C8031C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554D0);
  }

  return result;
}

unint64_t sub_1E5C8031C()
{
  result = qword_1ED0554E0;
  if (!qword_1ED0554E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554E8, &unk_1E5CA4E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EE8, &qword_1E5CA3488);
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554E0);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5C9C340();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  v8 = *(v4 + v1[5]);

  v9 = (v4 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[5])
  {
    v12 = v9[3];

    v13 = v9[5];

    v14 = v9[8];

    v15 = v9[9];
  }

  v16 = (v4 + v1[7]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v18[1];

  v20 = v18[3];

  v21 = v18[6];

  v22 = v18[7];

  return swift_deallocObject();
}

uint64_t sub_1E5C8062C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E5C7C8A8(a1, v2 + v6, v7, a2);
}

uint64_t sub_1E5C806D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchScopeFilters.ScopeCapsule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E5C7CF8C(v4, a1);
}

uint64_t sub_1E5C80794@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1E5C9C360();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  sub_1E5C9C350();
  v17 = &v16[*(v10 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055580, &qword_1E5CA4F20) + 28);
  v19 = *MEMORY[0x1E69816E0];
  v20 = sub_1E5C9C820();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_1E5C9C370();
  sub_1E5C80B7C(v16, v14);
  v21 = v2[2];
  v21(v6, v8, v1);
  v22 = v27;
  sub_1E5C80B7C(v14, v27);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055588, &qword_1E5CA4F58);
  v21((v22 + *(v23 + 48)), v6, v1);
  v24 = v2[1];
  v24(v8, v1);
  sub_1E5C80BEC(v16);
  v24(v6, v1);
  return sub_1E5C80BEC(v14);
}

uint64_t sub_1E5C80A1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5C9C1A0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055568, &qword_1E5CA4ED8);
  sub_1E5C80794(a1 + *(v2 + 44));
  v3 = sub_1E5C9C4C0();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055570, &qword_1E5CA4F10);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_1E5C80AB4(uint64_t a1)
{
  v2 = sub_1E5C9C820();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C080();
}

uint64_t sub_1E5C80B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C80BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5C80C54()
{
  result = qword_1ED055590;
  if (!qword_1ED055590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055570, &qword_1E5CA4F10);
    sub_1E5C27F74(&qword_1ED055598, &qword_1ED0555A0, &qword_1E5CA4F60);
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055590);
  }

  return result;
}

uint64_t SearchHint.makeImpression(grouped:)()
{
  v1 = sub_1E5C9CB20();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1E5C9CB50();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for SearchHint();
  v6 = (v0 + v5[8]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5[7]);

  sub_1E5C9CB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA4830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v11 = (v0 + v5[6]);
  v13 = *v11;
  v12 = v11[1];
  v14 = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  *(inited + 72) = v14;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  strcpy((inited + 96), "hintListItem");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 120) = v14;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v9;

  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v15);
  return sub_1E5C9CB60();
}

uint64_t static SearchHint.makeSuggestionsShelfImpression()()
{
  v0 = sub_1E5C9CB20();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5C9CB50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5C9CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA12B0;
  *(inited + 32) = 0x6973736572706D69;
  v5 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEE00657079546E6FLL;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  sub_1E5C81174(v5);
  sub_1E5C9CB10();
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v6);
  return sub_1E5C9CB60();
}

uint64_t sub_1E5C81174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchItem.editorialCardIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.healthKitActivityTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem() + 40));
}

uint64_t SearchItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.recencyTag.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.referenceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.sampleContentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.streamingArtworkCropCode.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.streamingSubtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.streamingTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchItem() + 96);
  v4 = sub_1E5C9BAA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchItem.type.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchItem() + 100));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchItem.init(identifier:type:referenceIdentifier:editorialCardIdentifier:referenceType:artworkDescriptor:assetLoadState:bookmarked:title:subtitle:detail:healthKitActivityTypes:mediaType:completedCount:isIncompletePlanWorkout:recencyTag:sampleContentIdentifier:streamingArtwork:streamingArtworkCropCode:streamingTitle:streamingSubtitle:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v52 = a3[1];
  v53 = *a3;
  sub_1E5C6FECC(a10, a9, &qword_1ED0555B8, &qword_1E5CA4F78);
  v32 = type metadata accessor for SearchItem();
  *(a9 + v32[5]) = a11;
  *(a9 + v32[6]) = a12;
  *(a9 + v32[7]) = a18;
  sub_1E5C6FECC(a15, a9 + v32[8], &qword_1ED0555C0, &qword_1E5CA4F80);
  v33 = (a9 + v32[9]);
  *v33 = a6;
  v33[1] = a7;
  *(a9 + v32[10]) = a16;
  v34 = (a9 + v32[11]);
  *v34 = a1;
  v34[1] = a2;
  *(a9 + v32[12]) = a19;
  *(a9 + v32[13]) = a17;
  v35 = (a9 + v32[14]);
  *v35 = a20;
  v35[1] = a21;
  v36 = (a9 + v32[15]);
  *v36 = a4;
  v36[1] = a5;
  *(a9 + v32[16]) = a8;
  v37 = (a9 + v32[17]);
  *v37 = a22;
  v37[1] = a23;
  sub_1E5C6FECC(a14, a9 + v32[18], &qword_1ED0555C0, &qword_1E5CA4F80);
  sub_1E5C6FECC(a24, a9 + v32[19], &qword_1ED0555C8, &qword_1E5CA4F88);
  v38 = (a9 + v32[20]);
  *v38 = a25;
  v38[1] = a26;
  v39 = (a9 + v32[21]);
  *v39 = a29;
  v39[1] = a30;
  v40 = (a9 + v32[22]);
  *v40 = a27;
  v40[1] = a28;
  sub_1E5C6FECC(a31, a9 + v32[23], &qword_1ED0555D0, &qword_1E5CA4F90);
  v41 = v32[24];
  v42 = sub_1E5C9BAA0();
  result = (*(*(v42 - 8) + 32))(a9 + v41, a13, v42);
  v44 = (a9 + v32[25]);
  *v44 = v53;
  v44[1] = v52;
  return result;
}

unint64_t sub_1E5C81998(char a1)
{
  result = 0x616F4C7465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6B72616D6B6F6F62;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x696669746E656469;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x707954616964656DLL;
      break;
    case 10:
      result = 0x5479636E65636572;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x636E657265666572;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x656C746974627573;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 18:
    case 19:
      result = 0x6E696D6165727473;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 1701869940;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1E5C81C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C854F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C81C50(uint64_t a1)
{
  v2 = sub_1E5C84EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C81C8C(uint64_t a1)
{
  v2 = sub_1E5C84EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D8, &qword_1E5CA4F98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C84EA8();
  sub_1E5C9D130();
  LOBYTE(v47) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  sub_1E5C84FA4(&qword_1ED0555E8);
  sub_1E5C9D030();
  if (!v2)
  {
    v11 = type metadata accessor for SearchItem();
    LOBYTE(v47) = *(v3 + v11[5]);
    v49 = 1;
    sub_1E5C84EFC();
    sub_1E5C9CFF0();
    v12 = *(v3 + v11[6]);
    LOBYTE(v47) = 2;
    sub_1E5C9CFE0();
    v13 = *(v3 + v11[7]);
    LOBYTE(v47) = 3;
    sub_1E5C9D020();
    v14 = v11[8];
    LOBYTE(v47) = 4;
    sub_1E5C9BAA0();
    sub_1E5C21FD4(&qword_1ED054E10, MEMORY[0x1E6968848]);
    sub_1E5C9CFF0();
    v15 = (v3 + v11[9]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v47) = 5;
    sub_1E5C9CFD0();
    v47 = *(v3 + v11[10]);
    v49 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
    sub_1E5C85048(&qword_1ED055600);
    sub_1E5C9D030();
    v18 = (v3 + v11[11]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v47) = 7;
    sub_1E5C9D000();
    v21 = *(v3 + v11[12]);
    LOBYTE(v47) = 8;
    sub_1E5C9CFE0();
    LOBYTE(v47) = *(v3 + v11[13]);
    v49 = 9;
    sub_1E5C84F50();
    sub_1E5C9CFF0();
    v22 = (v3 + v11[14]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v47) = 10;
    sub_1E5C9CFD0();
    v25 = (v3 + v11[15]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v47) = 11;
    sub_1E5C9D000();
    LOBYTE(v47) = *(v3 + v11[16]);
    v49 = 12;
    sub_1E5C4F390();
    sub_1E5C9D030();
    v28 = (v3 + v11[17]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v47) = 13;
    sub_1E5C9CFD0();
    v31 = v11[18];
    LOBYTE(v47) = 14;
    sub_1E5C9CFF0();
    v46 = v11[19];
    LOBYTE(v47) = 15;
    type metadata accessor for SearchArtwork();
    sub_1E5C21FD4(&qword_1EE2C4338, type metadata accessor for SearchArtwork);
    sub_1E5C9CFF0();
    v32 = (v3 + v11[20]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v47) = 16;
    sub_1E5C9CFD0();
    v35 = (v3 + v11[21]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v47) = 17;
    sub_1E5C9CFD0();
    v38 = (v3 + v11[22]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v47) = 18;
    sub_1E5C9CFD0();
    v46 = v11[23];
    LOBYTE(v47) = 19;
    sub_1E5C9BB30();
    sub_1E5C21FD4(&qword_1ED055610, MEMORY[0x1E6968FB0]);
    sub_1E5C9CFF0();
    v41 = v11[24];
    LOBYTE(v47) = 20;
    sub_1E5C9D030();
    v42 = (v3 + v11[25]);
    v43 = v42[1];
    v47 = *v42;
    v48 = v43;
    v49 = 21;
    sub_1E5C4F3E4();

    sub_1E5C9D030();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SearchItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v71 = sub_1E5C9BAA0();
  v69 = *(v71 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v64 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055618, &qword_1E5CA4FA8);
  v72 = *(v75 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v23 = &v64 - v22;
  v24 = type metadata accessor for SearchItem();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v28 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E5C84EA8();
  v74 = v23;
  v30 = v76;
  sub_1E5C9D120();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v31 = v17;
  v64 = v15;
  v65 = v24;
  v32 = v72;
  v76 = v27;
  LOBYTE(v78) = 0;
  sub_1E5C84FA4(&qword_1ED055620);
  v33 = v73;
  sub_1E5C9CFA0();
  v34 = v76;
  sub_1E5C6FECC(v33, v76, &qword_1ED0555B8, &qword_1E5CA4F78);
  v79 = 1;
  sub_1E5C84FF4();
  sub_1E5C9CF60();
  v35 = v65;
  *(v34 + v65[5]) = v78;
  LOBYTE(v78) = 2;
  *(v34 + v35[6]) = sub_1E5C9CF50();
  LOBYTE(v78) = 3;
  *(v34 + v35[7]) = sub_1E5C9CF90();
  LOBYTE(v78) = 4;
  v36 = v31;
  v37 = sub_1E5C21FD4(&qword_1ED054E28, MEMORY[0x1E6968848]);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v36, v34 + v35[8], &qword_1ED0555C0, &qword_1E5CA4F80);
  LOBYTE(v78) = 5;
  v38 = sub_1E5C9CF40();
  v73 = v37;
  v39 = (v34 + v35[9]);
  *v39 = v38;
  v39[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
  v79 = 6;
  sub_1E5C85048(&qword_1ED055630);
  sub_1E5C9CFA0();
  *(v34 + v35[10]) = v78;
  LOBYTE(v78) = 7;
  v41 = sub_1E5C9CF70();
  v42 = (v34 + v35[11]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v78) = 8;
  v76[v65[12]] = sub_1E5C9CF50();
  v79 = 9;
  sub_1E5C850B4();
  sub_1E5C9CF60();
  v76[v65[13]] = v78;
  LOBYTE(v78) = 10;
  v44 = sub_1E5C9CF40();
  v45 = &v76[v65[14]];
  *v45 = v44;
  v45[1] = v46;
  LOBYTE(v78) = 11;
  v47 = sub_1E5C9CF70();
  v48 = &v76[v65[15]];
  *v48 = v47;
  v48[1] = v49;
  v79 = 12;
  sub_1E5C4F7C4();
  sub_1E5C9CFA0();
  v76[v65[16]] = v78;
  LOBYTE(v78) = 13;
  v50 = sub_1E5C9CF40();
  v51 = &v76[v65[17]];
  *v51 = v50;
  v51[1] = v52;
  LOBYTE(v78) = 14;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v64, &v76[v65[18]], &qword_1ED0555C0, &qword_1E5CA4F80);
  type metadata accessor for SearchArtwork();
  LOBYTE(v78) = 15;
  sub_1E5C21FD4(&qword_1EE2C4320, type metadata accessor for SearchArtwork);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v70, &v76[v65[19]], &qword_1ED0555C8, &qword_1E5CA4F88);
  LOBYTE(v78) = 16;
  v53 = sub_1E5C9CF40();
  v54 = &v76[v65[20]];
  *v54 = v53;
  v54[1] = v55;
  LOBYTE(v78) = 17;
  v56 = sub_1E5C9CF40();
  v57 = &v76[v65[21]];
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v78) = 18;
  v59 = sub_1E5C9CF40();
  v60 = &v76[v65[22]];
  *v60 = v59;
  v60[1] = v61;
  sub_1E5C9BB30();
  LOBYTE(v78) = 19;
  sub_1E5C21FD4(&qword_1ED055640, MEMORY[0x1E6968FB0]);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v66, &v76[v65[23]], &qword_1ED0555D0, &qword_1E5CA4F90);
  LOBYTE(v78) = 20;
  sub_1E5C9CFA0();
  (*(v69 + 32))(&v76[v65[24]], v67, v71);
  v79 = 21;
  sub_1E5C4F818();
  sub_1E5C9CFA0();
  (*(v32 + 8))(v74, v75);
  v62 = v76;
  *&v76[v65[25]] = v78;
  sub_1E5C85108(v62, v68);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return sub_1E5C851D0(v62, type metadata accessor for SearchItem);
}

uint64_t SearchItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E5C9BB30();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v65 - v7;
  v8 = type metadata accessor for SearchArtwork();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v65 - v13;
  v14 = sub_1E5C9BAA0();
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  sub_1E5C9BC50();
  v25 = type metadata accessor for SearchItem();
  v26 = *(v0 + v25[5]);
  v73 = v2;
  sub_1E5C9D0F0();
  if (v26 != 9)
  {
    MEMORY[0x1E69399F0](v26);
  }

  v27 = v74;
  if (*(v0 + v25[6]) != 2)
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();
  MEMORY[0x1E69399F0](*(v0 + v25[7]));
  sub_1E5C3165C(v0 + v25[8], v24, &qword_1ED0555C0, &qword_1E5CA4F80);
  v67 = *(v27 + 48);
  if (v67(v24, 1, v14) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v27 + 32))(v17, v24, v14);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848]);
    sub_1E5C9CBB0();
    (*(v27 + 8))(v17, v14);
  }

  v28 = (v0 + v25[9]);
  if (v28[1])
  {
    v29 = *v28;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v30 = *(v0 + v25[10]);
  MEMORY[0x1E69399F0](*(v30 + 16));
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    do
    {
      v33 = *v32++;
      MEMORY[0x1E69399F0](v33);
      --v31;
    }

    while (v31);
  }

  v34 = (v0 + v25[11]);
  v35 = *v34;
  v36 = v34[1];
  sub_1E5C9CC60();
  if (*(v0 + v25[12]) != 2)
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();
  v37 = *(v0 + v25[13]);
  sub_1E5C9D0F0();
  if (v37 != 4)
  {
    MEMORY[0x1E69399F0](v37);
  }

  v38 = (v0 + v25[14]);
  if (v38[1])
  {
    v39 = *v38;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v40 = (v0 + v25[15]);
  v41 = *v40;
  v42 = v40[1];
  sub_1E5C9CC60();
  v43 = *(v0 + v25[16]);
  sub_1E5C4ED58();
  v44 = (v0 + v25[17]);
  if (v44[1])
  {
    v45 = *v44;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v46 = v74;
  sub_1E5C3165C(v0 + v25[18], v22, &qword_1ED0555C0, &qword_1E5CA4F80);
  if (v67(v22, 1, v14) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v46 + 32))(v17, v22, v14);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848]);
    sub_1E5C9CBB0();
    (*(v46 + 8))(v17, v14);
  }

  v48 = v71;
  v47 = v72;
  v50 = v69;
  v49 = v70;
  v51 = v68;
  sub_1E5C3165C(v1 + v25[19], v68, &qword_1ED0555C8, &qword_1E5CA4F88);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v52 = v65;
    sub_1E5C8516C(v51, v65);
    sub_1E5C9D0F0();
    SearchArtwork.hash(into:)();
    sub_1E5C851D0(v52, type metadata accessor for SearchArtwork);
  }

  v53 = (v1 + v25[20]);
  if (v53[1])
  {
    v54 = *v53;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v55 = (v1 + v25[21]);
  if (v55[1])
  {
    v56 = *v55;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v57 = (v1 + v25[22]);
  if (v57[1])
  {
    v58 = *v57;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C3165C(v1 + v25[23], v48, &qword_1ED0555D0, &qword_1E5CA4F90);
  v59 = v73;
  if ((*(v47 + 48))(v48, 1, v73) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v60 = v66;
    (*(v47 + 32))(v66, v48, v59);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED055648, MEMORY[0x1E6968FB0]);
    sub_1E5C9CBB0();
    (*(v47 + 8))(v60, v59);
  }

  v61 = v25[24];
  sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  v62 = (v1 + v25[25]);
  if (!v62[1])
  {
    return MEMORY[0x1E69399F0](0);
  }

  v63 = *v62;
  MEMORY[0x1E69399F0](1);
  return sub_1E5C9CC60();
}

uint64_t SearchItem.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C83E94()
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C83ED8()
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)();
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C9BB30();
  v159 = *(v4 - 8);
  v160 = v4;
  v5 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v156 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v158 = &v150 - v9;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055670, &qword_1E5CA5240);
  v10 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v161 = &v150 - v11;
  v12 = type metadata accessor for SearchArtwork();
  v164 = *(v12 - 8);
  v13 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v165 = &v150 - v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055678, &qword_1E5CA5248);
  v18 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v150 - v19;
  v20 = sub_1E5C9BAA0();
  v167 = *(v20 - 8);
  v21 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v150 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055680, &unk_1E5CA5250);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v150 - v36;
  sub_1E5C21FD4(&qword_1EE2C4340, type metadata accessor for SearchArtwork);
  if ((sub_1E5C9BC40() & 1) == 0)
  {
    return 0;
  }

  v38 = type metadata accessor for SearchItem();
  v39 = *(v38 + 20);
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  v42 = a1;
  if (v40 == 9)
  {
    if (v41 != 9)
    {
      return 0;
    }
  }

  else if (v40 != v41)
  {
    return 0;
  }

  v43 = v38;
  v44 = *(v38 + 24);
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + v43[7]) != *(a2 + v43[7]))
  {
    return 0;
  }

  v152 = a1;
  v153 = v43;
  v155 = a2;
  v48 = v43[8];
  v49 = *(v31 + 48);
  sub_1E5C3165C(v42 + v48, v37, &qword_1ED0555C0, &qword_1E5CA4F80);
  v154 = v49;
  sub_1E5C3165C(v155 + v48, &v37[v49], &qword_1ED0555C0, &qword_1E5CA4F80);
  v51 = v167 + 48;
  v50 = *(v167 + 48);
  if (v50(v37, 1, v20) != 1)
  {
    sub_1E5C3165C(v37, v30, &qword_1ED0555C0, &qword_1E5CA4F80);
    v150 = v50;
    if (v50(&v37[v154], 1, v20) != 1)
    {
      v151 = v51;
      v57 = v167;
      (*(v167 + 32))(v23, &v37[v154], v20);
      sub_1E5C21FD4(&qword_1ED055690, MEMORY[0x1E6968848]);
      LODWORD(v154) = sub_1E5C9CC00();
      v58 = *(v57 + 8);
      v58(v23, v20);
      v58(v30, v20);
      v53 = v155;
      sub_1E5C3177C(v37, &qword_1ED0555C0, &qword_1E5CA4F80);
      v52 = v150;
      if ((v154 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v167 + 8))(v30, v20);
LABEL_17:
    v54 = &qword_1ED055680;
    v55 = &unk_1E5CA5250;
    v56 = v37;
    goto LABEL_18;
  }

  v151 = v51;
  if (v50(&v37[v154], 1, v20) != 1)
  {
    goto LABEL_17;
  }

  v52 = v50;
  sub_1E5C3177C(v37, &qword_1ED0555C0, &qword_1E5CA4F80);
  v53 = v155;
LABEL_22:
  v60 = v152;
  v59 = v153;
  v61 = v153[9];
  v62 = (v152 + v61);
  v63 = *(v152 + v61 + 8);
  v64 = (v53 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = sub_1E5C9D060();
      v60 = v152;
      v59 = v153;
      if ((v66 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v67 = v60;
  if ((sub_1E5C787A4(*(v60 + v59[10]), *(v53 + v59[10])) & 1) == 0)
  {
    return 0;
  }

  v68 = v153;
  v69 = v153[11];
  v70 = *(v67 + v69);
  v71 = *(v67 + v69 + 8);
  v72 = (v53 + v69);
  if (v70 != *v72 || (v73 = v67, v71 != v72[1]))
  {
    v74 = sub_1E5C9D060();
    v73 = v152;
    v68 = v153;
    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  v75 = v68[12];
  v76 = *(v73 + v75);
  v77 = *(v53 + v75);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      return 0;
    }

LABEL_38:
    v78 = v68[13];
    v79 = *(v73 + v78);
    v80 = *(v53 + v78);
    if (v79 == 4)
    {
      if (v80 != 4)
      {
        return 0;
      }
    }

    else if (v79 != v80)
    {
      return 0;
    }

    v81 = v68[14];
    v82 = (v73 + v81);
    v83 = *(v73 + v81 + 8);
    v84 = (v53 + v81);
    v85 = v84[1];
    if (v83)
    {
      if (!v85)
      {
        return 0;
      }

      if (*v82 != *v84 || v83 != v85)
      {
        v86 = sub_1E5C9D060();
        v73 = v152;
        v68 = v153;
        if ((v86 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v85)
    {
      return 0;
    }

    v87 = v68[15];
    v88 = *(v73 + v87);
    v89 = *(v73 + v87 + 8);
    v90 = (v53 + v87);
    if (v88 != *v90 || v89 != v90[1])
    {
      v91 = sub_1E5C9D060();
      v73 = v152;
      v68 = v153;
      if ((v91 & 1) == 0)
      {
        return 0;
      }
    }

    v92 = v73;
    if ((sub_1E5C762CC(*(v73 + v68[16]), *(v53 + v68[16])) & 1) == 0)
    {
      return 0;
    }

    v93 = v153;
    v94 = v153[17];
    v95 = (v92 + v94);
    v96 = *(v92 + v94 + 8);
    v97 = (v53 + v94);
    v98 = v97[1];
    v99 = v92;
    if (v96)
    {
      if (!v98)
      {
        return 0;
      }

      if (*v95 != *v97 || v96 != v98)
      {
        v100 = sub_1E5C9D060();
        v99 = v152;
        v93 = v153;
        if ((v100 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v98)
    {
      return 0;
    }

    v101 = v93[18];
    v102 = *(v31 + 48);
    sub_1E5C3165C(v99 + v101, v35, &qword_1ED0555C0, &qword_1E5CA4F80);
    sub_1E5C3165C(v155 + v101, &v35[v102], &qword_1ED0555C0, &qword_1E5CA4F80);
    if (v52(v35, 1, v20) == 1)
    {
      if (v52(&v35[v102], 1, v20) == 1)
      {
        sub_1E5C3177C(v35, &qword_1ED0555C0, &qword_1E5CA4F80);
        goto LABEL_67;
      }
    }

    else
    {
      sub_1E5C3165C(v35, v28, &qword_1ED0555C0, &qword_1E5CA4F80);
      if (v52(&v35[v102], 1, v20) != 1)
      {
        v103 = v167;
        (*(v167 + 32))(v23, &v35[v102], v20);
        sub_1E5C21FD4(&qword_1ED055690, MEMORY[0x1E6968848]);
        v104 = sub_1E5C9CC00();
        v105 = *(v103 + 8);
        v105(v23, v20);
        v105(v28, v20);
        sub_1E5C3177C(v35, &qword_1ED0555C0, &qword_1E5CA4F80);
        if ((v104 & 1) == 0)
        {
          return 0;
        }

LABEL_67:
        v106 = v153[19];
        v107 = *(v163 + 48);
        v108 = v166;
        sub_1E5C3165C(v152 + v106, v166, &qword_1ED0555C8, &qword_1E5CA4F88);
        sub_1E5C3165C(v155 + v106, v108 + v107, &qword_1ED0555C8, &qword_1E5CA4F88);
        v109 = *(v164 + 48);
        if (v109(v108, 1, v12) == 1)
        {
          if (v109(v166 + v107, 1, v12) == 1)
          {
            sub_1E5C3177C(v166, &qword_1ED0555C8, &qword_1E5CA4F88);
LABEL_74:
            v116 = v153[20];
            v117 = (v152 + v116);
            v118 = *(v152 + v116 + 8);
            v119 = (v155 + v116);
            v120 = v119[1];
            if (v118)
            {
              if (!v120 || (*v117 != *v119 || v118 != v120) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v120)
            {
              return 0;
            }

            v121 = v153[21];
            v122 = (v152 + v121);
            v123 = *(v152 + v121 + 8);
            v124 = (v155 + v121);
            v125 = v124[1];
            if (v123)
            {
              if (!v125 || (*v122 != *v124 || v123 != v125) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v125)
            {
              return 0;
            }

            v126 = v153[22];
            v127 = (v152 + v126);
            v128 = *(v152 + v126 + 8);
            v129 = (v155 + v126);
            v130 = v129[1];
            if (v128)
            {
              if (!v130 || (*v127 != *v129 || v128 != v130) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v130)
            {
              return 0;
            }

            v131 = v153[23];
            v132 = *(v157 + 48);
            v133 = v161;
            sub_1E5C3165C(v152 + v131, v161, &qword_1ED0555D0, &qword_1E5CA4F90);
            sub_1E5C3165C(v155 + v131, v133 + v132, &qword_1ED0555D0, &qword_1E5CA4F90);
            v134 = *(v159 + 48);
            if (v134(v133, 1, v160) == 1)
            {
              if (v134(v161 + v132, 1, v160) == 1)
              {
                sub_1E5C3177C(v161, &qword_1ED0555D0, &qword_1E5CA4F90);
LABEL_102:
                v144 = v153[24];
                if (sub_1E5C9BA70())
                {
                  v145 = v153[25];
                  v146 = (v152 + v145);
                  v147 = *(v152 + v145 + 8);
                  v148 = (v155 + v145);
                  v149 = v148[1];
                  if (v147)
                  {
                    if (v149)
                    {
                      return *v146 == *v148 && v147 == v149 || (sub_1E5C9D060() & 1) != 0;
                    }
                  }

                  else if (!v149)
                  {
                    swift_bridgeObjectRelease_n();
                    return 1;
                  }
                }

                return 0;
              }
            }

            else
            {
              v135 = v161;
              sub_1E5C3165C(v161, v158, &qword_1ED0555D0, &qword_1E5CA4F90);
              if (v134(v135 + v132, 1, v160) != 1)
              {
                v136 = v159;
                v137 = v161;
                v138 = v161 + v132;
                v139 = v156;
                v140 = v160;
                (*(v159 + 32))(v156, v138, v160);
                sub_1E5C21FD4(&qword_1ED055688, MEMORY[0x1E6968FB0]);
                v141 = v158;
                v142 = sub_1E5C9CC00();
                v143 = *(v136 + 8);
                v143(v139, v140);
                v143(v141, v140);
                sub_1E5C3177C(v137, &qword_1ED0555D0, &qword_1E5CA4F90);
                if ((v142 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_102;
              }

              (*(v159 + 8))(v158, v160);
            }

            v54 = &qword_1ED055670;
            v55 = &qword_1E5CA5240;
            v56 = v161;
LABEL_18:
            sub_1E5C3177C(v56, v54, v55);
            return 0;
          }
        }

        else
        {
          v110 = v166;
          sub_1E5C3165C(v166, v165, &qword_1ED0555C8, &qword_1E5CA4F88);
          if (v109(v110 + v107, 1, v12) != 1)
          {
            v111 = v166;
            v112 = v166 + v107;
            v113 = v162;
            sub_1E5C8516C(v112, v162);
            v114 = v165;
            v115 = _s13FitnessSearch0B7ArtworkV2eeoiySbAC_ACtFZ_0(v165, v113);
            sub_1E5C851D0(v113, type metadata accessor for SearchArtwork);
            sub_1E5C851D0(v114, type metadata accessor for SearchArtwork);
            sub_1E5C3177C(v111, &qword_1ED0555C8, &qword_1E5CA4F88);
            if (!v115)
            {
              return 0;
            }

            goto LABEL_74;
          }

          sub_1E5C851D0(v165, type metadata accessor for SearchArtwork);
        }

        v54 = &qword_1ED055678;
        v55 = &qword_1E5CA5248;
        v56 = v166;
        goto LABEL_18;
      }

      (*(v167 + 8))(v28, v20);
    }

    v54 = &qword_1ED055680;
    v55 = &unk_1E5CA5250;
    v56 = v35;
    goto LABEL_18;
  }

  result = 0;
  if (v77 != 2 && ((v77 ^ v76) & 1) == 0)
  {
    goto LABEL_38;
  }

  return result;
}

unint64_t sub_1E5C84EA8()
{
  result = qword_1ED0555E0;
  if (!qword_1ED0555E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0555E0);
  }

  return result;
}

unint64_t sub_1E5C84EFC()
{
  result = qword_1ED0555F0;
  if (!qword_1ED0555F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0555F0);
  }

  return result;
}

unint64_t sub_1E5C84F50()
{
  result = qword_1ED055608;
  if (!qword_1ED055608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055608);
  }

  return result;
}

uint64_t sub_1E5C84FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0555B8, &qword_1E5CA4F78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C84FF4()
{
  result = qword_1ED055628;
  if (!qword_1ED055628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055628);
  }

  return result;
}

uint64_t sub_1E5C85048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C850B4()
{
  result = qword_1ED055638;
  if (!qword_1ED055638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055638);
  }

  return result;
}

uint64_t sub_1E5C85108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C8516C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C851D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C853F4()
{
  result = qword_1ED055658;
  if (!qword_1ED055658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055658);
  }

  return result;
}

unint64_t sub_1E5C8544C()
{
  result = qword_1ED055660;
  if (!qword_1ED055660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055660);
  }

  return result;
}

unint64_t sub_1E5C854A4()
{
  result = qword_1ED055668;
  if (!qword_1ED055668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055668);
  }

  return result;
}

uint64_t sub_1E5C854F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001E5CA80D0 == a2;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C7465737361 && a2 == 0xEE00657461745364 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEA00000000006465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA7F60 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5CA80F0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA8110 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7F40 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA8130 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA8150 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA8170 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA8190 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEE00656C74695467 || (sub_1E5C9D060() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567 || (sub_1E5C9D060() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 21;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t static SearchHintsResult.empty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x1E69E7CC0];
  a3[3] = a1;
  a3[4] = a2;
}

uint64_t static SearchHintsResult.default(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SearchHint();
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9BB90();
  v12 = &v11[v7[7]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[v7[8]];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v11[v7[9]] = 0;
  v14 = &v11[v7[10]];
  *v14 = a1;
  *(v14 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B48, &qword_1E5CA5260);
  v15 = *(v8 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E5CA12B0;
  sub_1E5C867B8(v11, v17 + v16);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v17;
  a3[3] = a1;
  a3[4] = a2;
  return swift_bridgeObjectRetain_n();
}

uint64_t SearchHintsResult.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchHintsResult.term.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall SearchHintsResult.init(hints:term:identifier:)(FitnessSearch::SearchHintsResult *__return_ptr retstr, Swift::OpaquePointer hints, Swift::String term, Swift::String_optional identifier)
{
  retstr->identifier = identifier;
  retstr->hints = hints;
  retstr->term = term;
}

uint64_t sub_1E5C85DCC()
{
  v1 = 0x73746E6968;
  if (*v0 != 1)
  {
    v1 = 1836213620;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5C85E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C86B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C85E48(uint64_t a1)
{
  v2 = sub_1E5C8681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C85E84(uint64_t a1)
{
  v2 = sub_1E5C8681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHintsResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055698, &qword_1E5CA5268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[2] = v1[3];
  v15 = v10;
  v14[1] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8681C();
  sub_1E5C9D130();
  v20 = 0;
  v12 = v16;
  sub_1E5C9CFD0();
  if (!v12)
  {
    v17 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C86870(&qword_1ED0556B0, &qword_1ED054490);
    sub_1E5C9D030();
    v18 = 2;
    sub_1E5C9D000();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SearchHintsResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556B8, &qword_1E5CA5278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8681C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1E5C9CF40();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
  v26 = 1;
  sub_1E5C86870(&qword_1ED0556C0, &qword_1ED0545C0);
  sub_1E5C9CFA0();
  v14 = v24;
  v25 = 2;
  v15 = sub_1E5C9CF70();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v22;
  *v22 = v23;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v18;
  v19[4] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchHintsResult.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  if (v1[1])
  {
    v6 = *v1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t SearchHintsResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v7, v4);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C86514()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v7, v4);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C865B0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  if (v1[1])
  {
    v6 = *v1;
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C8664C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v7, v4);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((sub_1E5C78800(v4, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t sub_1E5C867B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C8681C()
{
  result = qword_1ED0556A0;
  if (!qword_1ED0556A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556A0);
  }

  return result;
}

uint64_t sub_1E5C86870(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C868F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C868F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C86940()
{
  result = qword_1ED0556C8;
  if (!qword_1ED0556C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556C8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5C869A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5C869F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E5C86A5C()
{
  result = qword_1ED0556D0;
  if (!qword_1ED0556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556D0);
  }

  return result;
}

unint64_t sub_1E5C86AB4()
{
  result = qword_1ED0556D8;
  if (!qword_1ED0556D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556D8);
  }

  return result;
}

unint64_t sub_1E5C86B0C()
{
  result = qword_1ED0556E0;
  if (!qword_1ED0556E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556E0);
  }

  return result;
}

uint64_t sub_1E5C86B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E6968 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t SearchHintsState.hints.getter()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t SearchHintsState.term.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v3 = v0 + 24;
  v2 = *(v0 + 24);
  v1 = *(v3 + 8);

  return v2;
}

Swift::Bool __swiftcall SearchHintsState.containsMatchingHint(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = type metadata accessor for SearchHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556E8, &qword_1E5CA54A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = *(v1 + 16);
  if (!v13)
  {
LABEL_12:
    v19 = 0;
    v20 = 1;
LABEL_14:
    (*(v5 + 56))(v12, v20, 1, v4);
    sub_1E5C86ED0(v12);
    return v19;
  }

  v14 = *(v13 + 16);

  if (!v14)
  {
LABEL_11:

    goto LABEL_12;
  }

  v16 = 0;
  while (v16 < *(v13 + 16))
  {
    sub_1E5C35724(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v8);
    v17 = &v8[*(v4 + 24)];
    v18 = *v17 == countAndFlagsBits && *(v17 + 1) == object;
    if (v18 || (sub_1E5C9D060() & 1) != 0)
    {

      sub_1E5C867B8(v8, v12);
      v20 = 0;
      v19 = 1;
      goto LABEL_14;
    }

    ++v16;
    result = sub_1E5C35788(v8);
    if (v14 == v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C86ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556E8, &qword_1E5CA54A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchHintsState.datasetIdentifier.getter()
{
  if (!v0[2])
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t SearchArtwork.flavorDescriptor.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchArtwork() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t SearchArtwork.init(backgroundColor:flavorDescriptor:height:templateURL:textColor:width:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a2[1];
  v18 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  sub_1E5C6FECC(a1, a7, &qword_1ED0556F0, &qword_1E5CA54B8);
  v14 = type metadata accessor for SearchArtwork();
  v15 = a7 + v14[5];
  *v15 = v18;
  *(v15 + 16) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(a7 + v14[6]) = a3;
  sub_1E5C6FECC(a4, a7 + v14[7], &qword_1ED0555D0, &qword_1E5CA4F90);
  result = sub_1E5C6FECC(a5, a7 + v14[8], &qword_1ED0556F0, &qword_1E5CA54B8);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t sub_1E5C871E0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x6574616C706D6574;
  v4 = 0x6F6C6F4374786574;
  if (v1 != 4)
  {
    v4 = 0x6874646977;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x746867696568;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5C872B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C88F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C872D8(uint64_t a1)
{
  v2 = sub_1E5C87750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C87314(uint64_t a1)
{
  v2 = sub_1E5C87750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F8, &qword_1E5CA54C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C87750();
  sub_1E5C9D130();
  LOBYTE(v26) = 0;
  sub_1E5C9BC30();
  sub_1E5C2201C(&qword_1ED055708, MEMORY[0x1E699DB98]);
  sub_1E5C9CFF0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v25 = v6;
  v24 = type metadata accessor for SearchArtwork();
  v12 = (v3 + *(v24 + 20));
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[5];
  v26 = *v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = 1;
  sub_1E5C877A4();

  sub_1E5C9D030();

  v18 = v24;
  v19 = *(v3 + *(v24 + 24));
  LOBYTE(v26) = 2;
  sub_1E5C9D020();
  v20 = v18[7];
  LOBYTE(v26) = 3;
  sub_1E5C9BB30();
  sub_1E5C2201C(&qword_1ED055610, MEMORY[0x1E6968FB0]);
  sub_1E5C9CFF0();
  v21 = v18[8];
  LOBYTE(v26) = 4;
  sub_1E5C9CFF0();
  v22 = v25;
  v23 = *(v3 + v18[9]);
  LOBYTE(v26) = 5;
  sub_1E5C9D020();
  return (*(v22 + 8))(v9, v5);
}

unint64_t sub_1E5C87750()
{
  result = qword_1ED055700;
  if (!qword_1ED055700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055700);
  }

  return result;
}

unint64_t sub_1E5C877A4()
{
  result = qword_1ED055710;
  if (!qword_1ED055710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055710);
  }

  return result;
}

uint64_t SearchArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055718, &qword_1E5CA54C8);
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = type metadata accessor for SearchArtwork();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5C87750();
  v24 = v46;
  sub_1E5C9D120();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v46 = v6;
  v41 = v11;
  v25 = v21;
  sub_1E5C9BC30();
  LOBYTE(v48) = 0;
  v26 = sub_1E5C2201C(&qword_1ED055720, MEMORY[0x1E699DB98]);
  v27 = v43;
  v28 = v44;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v27, v25, &qword_1ED0556F0, &qword_1E5CA54B8);
  v52 = 1;
  sub_1E5C87DEC();
  sub_1E5C9CFA0();
  v43 = v26;
  v29 = v49;
  v30 = v50;
  v31 = v51;
  v32 = v18;
  v33 = v25 + v18[5];
  *v33 = v48;
  *(v33 + 16) = v29;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  LOBYTE(v48) = 2;
  v34 = sub_1E5C9CF90();
  v35 = v45;
  *(v25 + v18[6]) = v34;
  sub_1E5C9BB30();
  LOBYTE(v48) = 3;
  sub_1E5C2201C(&qword_1ED055640, MEMORY[0x1E6968FB0]);
  v36 = v46;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v36, v25 + v18[7], &qword_1ED0555D0, &qword_1E5CA4F90);
  LOBYTE(v48) = 4;
  v37 = v41;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v37, v25 + v32[8], &qword_1ED0556F0, &qword_1E5CA54B8);
  LOBYTE(v48) = 5;
  v38 = sub_1E5C9CF90();
  (*(v35 + 8))(v17, v28);
  *(v25 + v32[9]) = v38;
  sub_1E5C87E40(v25, v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1E5C87EA4(v25);
}

unint64_t sub_1E5C87DEC()
{
  result = qword_1ED055728;
  if (!qword_1ED055728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055728);
  }

  return result;
}

uint64_t sub_1E5C87E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C87EA4(uint64_t a1)
{
  v2 = type metadata accessor for SearchArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E5C9BB30();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_1E5C9BC30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  sub_1E5C3165C(v1, &v39 - v18, &qword_1ED0556F0, &qword_1E5CA54B8);
  v41 = *(v10 + 48);
  v20 = v41(v19, 1, v9);
  v45 = v13;
  v46 = v10;
  if (v20 == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v10 + 32))(v13, v19, v9);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055730, MEMORY[0x1E699DB98]);
    sub_1E5C9CBB0();
    (*(v10 + 8))(v13, v9);
  }

  v21 = type metadata accessor for SearchArtwork();
  v22 = (v1 + v21[5]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v27 = v1;
  v29 = v22[4];
  v28 = v22[5];
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  v30 = v27;
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v27 + v21[6]));
  sub_1E5C3165C(v27 + v21[7], v8, &qword_1ED0555D0, &qword_1E5CA4F90);
  v32 = v43;
  v31 = v44;
  if ((*(v43 + 48))(v8, 1, v44) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v33 = v40;
    (*(v32 + 32))(v40, v8, v31);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055648, MEMORY[0x1E6968FB0]);
    sub_1E5C9CBB0();
    (*(v32 + 8))(v33, v31);
  }

  v34 = v42;
  sub_1E5C3165C(v30 + v21[8], v42, &qword_1ED0556F0, &qword_1E5CA54B8);
  v35 = v41(v34, 1, v9);
  v37 = v45;
  v36 = v46;
  if (v35 == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v46 + 32))(v45, v34, v9);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055730, MEMORY[0x1E699DB98]);
    sub_1E5C9CBB0();
    (*(v36 + 8))(v37, v9);
  }

  return MEMORY[0x1E69399F0](*(v30 + v21[9]));
}

uint64_t SearchArtwork.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C884A0()
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C884E4()
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)();
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C9BB30();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v79 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055670, &qword_1E5CA5240);
  v10 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v79 - v11;
  v12 = sub_1E5C9BC30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v85 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055750, &unk_1E5CA5730);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v88 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v79 - v27;
  v87 = v26;
  v29 = *(v26 + 48);
  sub_1E5C3165C(a1, &v79 - v27, &qword_1ED0556F0, &qword_1E5CA54B8);
  sub_1E5C3165C(a2, &v28[v29], &qword_1ED0556F0, &qword_1E5CA54B8);
  v30 = *(v13 + 48);
  if (v30(v28, 1, v12) == 1)
  {
    if (v30(&v28[v29], 1, v12) == 1)
    {
      v80 = v13;
      v81 = v30;
      sub_1E5C3177C(v28, &qword_1ED0556F0, &qword_1E5CA54B8);
      goto LABEL_11;
    }

LABEL_6:
    v31 = &qword_1ED055750;
    v32 = &unk_1E5CA5730;
    v33 = v28;
LABEL_7:
    sub_1E5C3177C(v33, v31, v32);
    return 0;
  }

  sub_1E5C3165C(v28, v21, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v30(&v28[v29], 1, v12) == 1)
  {
    (*(v13 + 8))(v21, v12);
    goto LABEL_6;
  }

  v81 = v30;
  v35 = v94;
  (*(v13 + 32))(v94, &v28[v29], v12);
  sub_1E5C2201C(&qword_1ED055758, MEMORY[0x1E699DB98]);
  v36 = sub_1E5C9CC00();
  v80 = v13;
  v37 = *(v13 + 8);
  v37(v35, v12);
  v37(v21, v12);
  sub_1E5C3177C(v28, &qword_1ED0556F0, &qword_1E5CA54B8);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v38 = type metadata accessor for SearchArtwork();
  v82 = a1;
  v83 = v38;
  v39 = *(v38 + 20);
  v40 = a1 + v39;
  v41 = *(a1 + v39);
  v42 = *(a1 + v39 + 8);
  v43 = a2;
  v44 = *(a1 + v39 + 16);
  v45 = *(a1 + v39 + 24);
  v46 = *(v40 + 32);
  v47 = *(v40 + 40);
  v84 = v43;
  v48 = (v43 + v39);
  v50 = v48[2];
  v49 = v48[3];
  v51 = v48[4];
  v52 = v48[5];
  if ((v41 != *v48 || v42 != v48[1]) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if ((v44 != v50 || v45 != v49) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if ((v46 != v51 || v47 != v52) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  v54 = v82;
  v53 = v83;
  v55 = v84;
  if (*(v82 + *(v83 + 24)) != *(v84 + *(v83 + 24)))
  {
    return 0;
  }

  v56 = *(v83 + 28);
  v57 = v91;
  v58 = *(v90 + 48);
  sub_1E5C3165C(v82 + v56, v91, &qword_1ED0555D0, &qword_1E5CA4F90);
  sub_1E5C3165C(v55 + v56, v57 + v58, &qword_1ED0555D0, &qword_1E5CA4F90);
  v60 = v92;
  v59 = v93;
  v61 = *(v92 + 48);
  if (v61(v57, 1, v93) == 1)
  {
    if (v61(v57 + v58, 1, v59) == 1)
    {
      sub_1E5C3177C(v57, &qword_1ED0555D0, &qword_1E5CA4F90);
      goto LABEL_28;
    }

LABEL_26:
    v31 = &qword_1ED055670;
    v32 = &qword_1E5CA5240;
    v33 = v57;
    goto LABEL_7;
  }

  v62 = v89;
  sub_1E5C3165C(v57, v89, &qword_1ED0555D0, &qword_1E5CA4F90);
  if (v61(v57 + v58, 1, v59) == 1)
  {
    (*(v60 + 8))(v62, v59);
    goto LABEL_26;
  }

  v63 = v57 + v58;
  v64 = v86;
  (*(v60 + 32))(v86, v63, v59);
  sub_1E5C2201C(&qword_1ED055688, MEMORY[0x1E6968FB0]);
  v65 = sub_1E5C9CC00();
  v66 = *(v60 + 8);
  v66(v64, v59);
  v66(v62, v59);
  sub_1E5C3177C(v57, &qword_1ED0555D0, &qword_1E5CA4F90);
  v53 = v83;
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v67 = *(v53 + 32);
  v68 = v88;
  v69 = *(v87 + 48);
  sub_1E5C3165C(v54 + v67, v88, &qword_1ED0556F0, &qword_1E5CA54B8);
  v70 = v84 + v67;
  v28 = v68;
  sub_1E5C3165C(v70, v68 + v69, &qword_1ED0556F0, &qword_1E5CA54B8);
  v71 = v81;
  if (v81(v68, 1, v12) == 1)
  {
    if (v71(v68 + v69, 1, v12) == 1)
    {
      sub_1E5C3177C(v68, &qword_1ED0556F0, &qword_1E5CA54B8);
      return *(v54 + *(v53 + 36)) == *(v84 + *(v53 + 36));
    }

    goto LABEL_6;
  }

  v72 = v68;
  v73 = v85;
  sub_1E5C3165C(v72, v85, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v71(&v28[v69], 1, v12) == 1)
  {
    (*(v80 + 8))(v73, v12);
    goto LABEL_6;
  }

  v74 = v80;
  v75 = &v28[v69];
  v76 = v94;
  (*(v80 + 32))(v94, v75, v12);
  sub_1E5C2201C(&qword_1ED055758, MEMORY[0x1E699DB98]);
  v77 = sub_1E5C9CC00();
  v78 = *(v74 + 8);
  v78(v76, v12);
  v78(v73, v12);
  sub_1E5C3177C(v28, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v77)
  {
    return *(v54 + *(v53 + 36)) == *(v84 + *(v53 + 36));
  }

  return 0;
}

unint64_t sub_1E5C88E98()
{
  result = qword_1ED055738;
  if (!qword_1ED055738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055738);
  }

  return result;
}

unint64_t sub_1E5C88EF0()
{
  result = qword_1ED055740;
  if (!qword_1ED055740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055740);
  }

  return result;
}

unint64_t sub_1E5C88F48()
{
  result = qword_1ED055748;
  if (!qword_1ED055748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055748);
  }

  return result;
}

uint64_t sub_1E5C88F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA81B0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5C891AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5C891F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5C8926C(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055868, &qword_1E5CA5920);
  v3 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v62[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055870, &qword_1E5CA5928);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v62[-v11];
  v82 = sub_1E5C9BA80();
  v12 = *(v82 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v82);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v62[-v17];
  v73 = sub_1E5C9BAA0();
  v19 = *(v73 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v73);
  v90 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v62[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055878, &qword_1E5CA5930);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v81 = &v62[-v27];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A48, &qword_1E5CA5890);
  v28 = *(*(v86 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v62[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v72 = &v62[-v32];
  v84 = a1;
  v79 = *(a1 + 16);
  if (v79)
  {
    v70 = v18;
    v63 = v16;
    v33 = 0;
    v88 = (v12 + 48);
    v89 = (v19 + 16);
    v69 = (v12 + 32);
    v67 = (v12 + 8);
    v77 = (v19 + 8);
    v78 = (v31 + 56);
    v71 = v31;
    v76 = (v31 + 48);
    v92 = MEMORY[0x1E69E7CC0];
    v34 = v73;
    v68 = v24;
    while (1)
    {
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055880, &qword_1E5CA5938) - 8);
      v36 = v84 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33;
      v37 = *v89;
      (*v89)(v24, v85, v34);
      sub_1E5C9BCF0();
      v87 = v38;
      v37(v90, v24, v34);
      sub_1E5C8B814(&qword_1ED055888, MEMORY[0x1E6968848]);
      v39 = v91;
      sub_1E5C9BA90();
      v40 = *v88;
      v41 = v82;
      if ((*v88)(v39, 1, v82) == 1)
      {
        goto LABEL_8;
      }

      v75 = v33;
      v42 = v70;
      v74 = *v69;
      v74(v70, v91, v41);
      v37(v90, v24, v34);
      v43 = v83;
      sub_1E5C9BA90();
      if (v40(v43, 1, v41) == 1)
      {
        break;
      }

      v46 = v63;
      v74(v63, v83, v41);
      sub_1E5C8B814(&qword_1ED055890, MEMORY[0x1E69687E8]);
      result = sub_1E5C9CBF0();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v48 = v41;
      v49 = v64;
      v50 = v41;
      v51 = v74;
      v74(v64, v42, v50);
      v52 = v66;
      v51(v49 + *(v66 + 48), v46, v48);
      v53 = v65;
      sub_1E5C3165C(v49, v65, &qword_1ED055868, &qword_1E5CA5920);
      v87 = *(v52 + 48);
      v45 = v81;
      v51(v81, v53, v48);
      v54 = *v67;
      (*v67)(&v53[v87], v48);
      sub_1E5C6FECC(v49, v53, &qword_1ED055868, &qword_1E5CA5920);
      v51(v45 + *(v86 + 36), &v53[*(v52 + 48)], v48);
      v54(v53, v48);
      v44 = 0;
      v34 = v73;
      v24 = v68;
      v33 = v75;
LABEL_11:
      v55 = v86;
      (*v78)(v45, v44, 1, v86);
      (*v77)(v24, v34);
      if ((*v76)(v45, 1, v55) == 1)
      {
        sub_1E5C3177C(v45, &qword_1ED055878, &qword_1E5CA5930);
      }

      else
      {
        v56 = v72;
        sub_1E5C6FECC(v45, v72, &qword_1ED054A48, &qword_1E5CA5890);
        sub_1E5C6FECC(v56, v80, &qword_1ED054A48, &qword_1E5CA5890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1E5C4E5F8(0, v92[2] + 1, 1, v92);
        }

        v58 = v92[2];
        v57 = v92[3];
        v59 = v71;
        if (v58 >= v57 >> 1)
        {
          v61 = sub_1E5C4E5F8(v57 > 1, v58 + 1, 1, v92);
          v59 = v71;
          v92 = v61;
        }

        v60 = v92;
        v92[2] = v58 + 1;
        sub_1E5C6FECC(v80, v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, &qword_1ED054A48, &qword_1E5CA5890);
      }

      if (v79 == ++v33)
      {
        return v92;
      }
    }

    (*v67)(v42, v41);
    v39 = v83;
    v34 = v73;
    v24 = v68;
    v33 = v75;
LABEL_8:
    sub_1E5C3177C(v39, &qword_1ED055870, &qword_1E5CA5928);
    v44 = 1;
    v45 = v81;
    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E5C89BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055850, &qword_1E5CA58A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v12 - v3;
  v5 = sub_1E5C9BB00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_1ED065C88);
  __swift_project_value_buffer(v5, qword_1ED065C88);
  sub_1E5C9BAF0();
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E5C8B7C0();
  sub_1E5C9BAD0();

  (*(v6 + 8))(v10, v5);
  v12[1] = sub_1E5C9C7B0();
  sub_1E5C9BAE0();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E5C89DA4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055860, &qword_1E5CA5918);
  return sub_1E5C9CC00() & 1;
}

uint64_t sub_1E5C89E08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055780, &qword_1E5CA57F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557F0, &qword_1E5CA5820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v28 = *a1;
  if (v28)
  {
    v26[2] = v28;
    v27 = *(a1 + 1);
    v14 = a1[5];
    v25 = v11;
    v15 = swift_allocObject();
    v24 = v4;
    v16 = *(a1 + 1);
    v15[1] = *a1;
    v15[2] = v16;
    v15[3] = *(a1 + 2);
    sub_1E5C3165C(&v28, v26, &qword_1ED0557F8, &unk_1E5CA5828);
    sub_1E5C3165C(&v28, v26, &qword_1ED0557F8, &unk_1E5CA5828);
    sub_1E5C5AD88(&v27, v26);

    v17 = a2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C9BBA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055800, &unk_1E5CA5838);
    sub_1E5C27F74(&qword_1ED055808, &qword_1ED0556A8, &qword_1E5CA5270);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    v19 = sub_1E5C8B354();
    v26[0] = v18;
    v26[1] = v19;
    swift_getOpaqueTypeConformance2();
    sub_1E5C8B814(&qword_1ED055810, type metadata accessor for SearchHint);
    sub_1E5C9C960();
    sub_1E5C8B294();
    v20 = v24;
    sub_1E5C9C5A0();
    (*(v5 + 8))(v8, v20);
    (*(v25 + 32))(v17, v13, v9);
    return (*(v25 + 56))(v17, 0, 1, v9);
  }

  else
  {
    v22 = *(v11 + 56);

    return v22(a2, 1, 1, v9);
  }
}

uint64_t sub_1E5C8A1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = sub_1E5C9CBA0();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for SearchHint();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557B0, &qword_1E5CA5808);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v18 = &v55 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557A0, &qword_1E5CA5800);
  v19 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055818, &qword_1E5CA5848);
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v55 - v24;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055790, &qword_1E5CA57F8);
  v25 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v26;
  v71 = *a2;
  v70 = *(a2 + 1);
  v27 = a2[5];
  sub_1E5C35724(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v30 = *(a2 + 1);
  v29[1] = *a2;
  v29[2] = v30;
  v29[3] = *(a2 + 2);
  sub_1E5C867B8(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v67 = a2;
  v68 = a1;
  sub_1E5C3165C(&v71, v69, &qword_1ED0557F8, &unk_1E5CA5828);
  sub_1E5C5AD88(&v70, v69);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055820, &qword_1E5CA5850);
  sub_1E5C27F74(&qword_1ED055828, &qword_1ED055820, &qword_1E5CA5850);
  sub_1E5C9C8A0();
  v31 = sub_1E5C9C7D0();
  KeyPath = swift_getKeyPath();
  v33 = &v18[*(v56 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  SearchHint.makeImpression(grouped:)();
  v34 = sub_1E5C9CB70();
  (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
  v35 = v61;
  sub_1E5C9CB80();
  sub_1E5C8B4E4();
  sub_1E5C9C5C0();
  (*(v64 + 8))(v35, v65);
  sub_1E5C3177C(v11, &qword_1ED054020, &qword_1E5CA4DF0);
  sub_1E5C3177C(v18, &qword_1ED0557B0, &qword_1E5CA5808);
  v36 = sub_1E5C9C1F0();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = &v21[*(v59 + 36)];
  *v38 = v36;
  v38[1] = sub_1E5C8B75C;
  v38[2] = v37;
  v39 = *(a1 + *(v13 + 36));
  sub_1E5C9BE10();
  sub_1E5C8B41C();
  v40 = v57;
  sub_1E5C9C680();
  sub_1E5C3177C(v21, &qword_1ED0557A0, &qword_1E5CA5800);
  LOBYTE(v21) = sub_1E5C9C480();
  v41 = a2[1];
  sub_1E5C9BDA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v58;
  (*(v62 + 32))(v58, v40, v63);
  v51 = v50 + *(v60 + 36);
  *v51 = v21;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1E5CA12B0;
  v69[0] = v39;
  *(v52 + 32) = sub_1E5C9D050();
  *(v52 + 40) = v53;
  sub_1E5C8B354();
  sub_1E5C9C5B0();

  return sub_1E5C3177C(v50, &qword_1ED055790, &qword_1E5CA57F8);
}

uint64_t sub_1E5C8A8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5C9BAA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5C8A944(a2, *(a1 + 16), *(a1 + 24), &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1E5C9C570();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v12;
  return result;
}

uint64_t sub_1E5C8A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v47 = sub_1E5C9BA60();
  v40 = *(v47 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A48, &qword_1E5CA5890);
  v42 = *(v45 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055830, &qword_1E5CA5898);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v44 = sub_1E5C9BB00();
  v20 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v21 = (a1 + *(type metadata accessor for SearchHint() + 24));
  v22 = *v21;
  v23 = v21[1];

  sub_1E5C9BAF0();
  v48 = a4;
  v24 = v43;
  sub_1E5C9BAB0();
  result = sub_1E5C9CC70();
  if (result >= 2)
  {

    MEMORY[0x1E6938610](v24, a3, MEMORY[0x1E69E67B0]);
    sub_1E5C9BCE0();
    v26 = *(v13 + 8);
    v37 = v13 + 8;
    v35 = v26;
    v26(v17, v12);
    v49[0] = v22;
    v49[1] = v23;
    sub_1E5C8B76C();
    sub_1E5C27F74(&qword_1ED055840, &qword_1ED055830, &qword_1E5CA5898);
    v36 = v19;
    v38 = v12;
    v27 = sub_1E5C9CBD0();
    v28 = sub_1E5C8926C(v27, v48);

    v39 = v28;
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v43 = *(v42 + 72);
      v42 = v40 + 104;
      v41 = *MEMORY[0x1E69686E8];
      v40 += 8;
      v31 = v46;
      do
      {
        sub_1E5C3165C(v30, v11, &qword_1ED054A48, &qword_1E5CA5890);
        sub_1E5C27F74(&qword_1ED055848, &qword_1ED054A48, &qword_1E5CA5890);
        v32 = sub_1E5C9BAC0();
        v33 = v11;
        if (qword_1ED053E10 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v44, qword_1ED065C88);
        v34 = v47;
        (*v42)(v31, v41, v47);
        sub_1E5C9BB10();
        (*v40)(v31, v34);
        v32(v49, 0);
        sub_1E5C3177C(v33, &qword_1ED054A48, &qword_1E5CA5890);
        v30 += v43;
        --v29;
        v11 = v33;
      }

      while (v29);
    }

    v35(v36, v38);
  }

  return result;
}

uint64_t sub_1E5C8AE64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C810();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C8AEAC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1E5C9BEF0();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055760, &qword_1E5CA57D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055768, &qword_1E5CA57E0);
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - v13;
  v15 = v1[1];
  v29[0] = *v1;
  v29[1] = v15;
  v29[2] = v1[2];
  v24 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055770, &qword_1E5CA57E8);
  sub_1E5C8B1D4();
  sub_1E5C9C530();
  sub_1E5C9BEE0();
  v16 = sub_1E5C27F74(&qword_1ED0557E0, &qword_1ED055760, &qword_1E5CA57D8);
  v17 = MEMORY[0x1E697C048];
  sub_1E5C9C770();
  (*(v22 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v25 = v6;
  v26 = v2;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1E5C8B5C8();
  v18 = v21;
  sub_1E5C9C5F0();
  return (*(v11 + 8))(v14, v18);
}

unint64_t sub_1E5C8B1D4()
{
  result = qword_1ED055778;
  if (!qword_1ED055778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055770, &qword_1E5CA57E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055780, &qword_1E5CA57F0);
    sub_1E5C8B294();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055778);
  }

  return result;
}

unint64_t sub_1E5C8B294()
{
  result = qword_1ED055788;
  if (!qword_1ED055788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055780, &qword_1E5CA57F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    sub_1E5C8B354();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055788);
  }

  return result;
}

unint64_t sub_1E5C8B354()
{
  result = qword_1ED055798;
  if (!qword_1ED055798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557A0, &qword_1E5CA5800);
    sub_1E5C8B41C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055798);
  }

  return result;
}

unint64_t sub_1E5C8B41C()
{
  result = qword_1ED0557A8;
  if (!qword_1ED0557A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557A0, &qword_1E5CA5800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557B0, &qword_1E5CA5808);
    sub_1E5C8B4E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557A8);
  }

  return result;
}

unint64_t sub_1E5C8B4E4()
{
  result = qword_1ED0557B8;
  if (!qword_1ED0557B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557B0, &qword_1E5CA5808);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810);
    sub_1E5C27F74(&qword_1ED0557D0, &qword_1ED0557D8, &qword_1E5CA5818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557B8);
  }

  return result;
}

unint64_t sub_1E5C8B5C8()
{
  result = qword_1ED0557E8;
  if (!qword_1ED0557E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557E8);
  }

  return result;
}

uint64_t sub_1E5C8B624()
{
  v1 = *(type metadata accessor for SearchHint() - 8);
  v2 = *(v0 + 56);
  return (*(v0 + 48))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
}

uint64_t sub_1E5C8B704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C0C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C8B730(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5C9C0D0();
}

unint64_t sub_1E5C8B76C()
{
  result = qword_1ED055838;
  if (!qword_1ED055838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055838);
  }

  return result;
}

unint64_t sub_1E5C8B7C0()
{
  result = qword_1ED055858;
  if (!qword_1ED055858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055858);
  }

  return result;
}

uint64_t sub_1E5C8B814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5C8B86C()
{
  if (*v0)
  {
    result = 1684632167;
  }

  else
  {
    result = 0x6E6F676F6874726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C8B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61;
  if (v6 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684632167 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C8B988(uint64_t a1)
{
  v2 = sub_1E5C8BDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8B9C4(uint64_t a1)
{
  v2 = sub_1E5C8BDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8BA00(uint64_t a1)
{
  v2 = sub_1E5C8BE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8BA3C(uint64_t a1)
{
  v2 = sub_1E5C8BE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8BA78(uint64_t a1)
{
  v2 = sub_1E5C8BE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8BAB4(uint64_t a1)
{
  v2 = sub_1E5C8BE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingSectionLayout.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055898, &qword_1E5CA5940);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0558A0, &qword_1E5CA5948);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0558A8, &qword_1E5CA5950);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8BDAC();
  sub_1E5C9D130();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5C8BE00();
    sub_1E5C9CFC0();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5C8BE54();
    sub_1E5C9CFC0();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5C8BDAC()
{
  result = qword_1ED0558B0;
  if (!qword_1ED0558B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558B0);
  }

  return result;
}

unint64_t sub_1E5C8BE00()
{
  result = qword_1ED0558B8;
  if (!qword_1ED0558B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558B8);
  }

  return result;
}

unint64_t sub_1E5C8BE54()
{
  result = qword_1ED0558C0;
  if (!qword_1ED0558C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558C0);
  }

  return result;
}

uint64_t sub_1E5C8BEC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5C8BF80(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t SearchLandingSectionLayout.hashValue.getter(char a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1 & 1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C8BF80(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055908, &qword_1E5CA5CC0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055910, &qword_1E5CA5CC8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055918, &unk_1E5CA5CD0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8BDAC();
  v15 = v32;
  sub_1E5C9D120();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5C9CFB0();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E5C448A4();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5C9CE90();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v24 = &type metadata for SearchLandingSectionLayout;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E5C8BE00();
    sub_1E5C9CF20();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5C8BE54();
    sub_1E5C9CF20();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5C8C440()
{
  result = qword_1ED0558C8;
  if (!qword_1ED0558C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558C8);
  }

  return result;
}

unint64_t sub_1E5C8C4D8()
{
  result = qword_1ED0558D0;
  if (!qword_1ED0558D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558D0);
  }

  return result;
}

unint64_t sub_1E5C8C530()
{
  result = qword_1ED0558D8;
  if (!qword_1ED0558D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558D8);
  }

  return result;
}

unint64_t sub_1E5C8C588()
{
  result = qword_1ED0558E0;
  if (!qword_1ED0558E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558E0);
  }

  return result;
}

unint64_t sub_1E5C8C5E0()
{
  result = qword_1ED0558E8;
  if (!qword_1ED0558E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558E8);
  }

  return result;
}

unint64_t sub_1E5C8C638()
{
  result = qword_1ED0558F0;
  if (!qword_1ED0558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558F0);
  }

  return result;
}

unint64_t sub_1E5C8C690()
{
  result = qword_1ED0558F8;
  if (!qword_1ED0558F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558F8);
  }

  return result;
}

unint64_t sub_1E5C8C6E8()
{
  result = qword_1ED055900;
  if (!qword_1ED055900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055900);
  }

  return result;
}

uint64_t sub_1E5C8C740()
{
  if (*v0)
  {
    result = 0x746C75736572;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C8C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C8C848(uint64_t a1)
{
  v2 = sub_1E5C8D708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C884(uint64_t a1)
{
  v2 = sub_1E5C8D708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8C8C0(uint64_t a1)
{
  v2 = sub_1E5C8D7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C8FC(uint64_t a1)
{
  v2 = sub_1E5C8D7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8C938(uint64_t a1)
{
  v2 = sub_1E5C8D75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C974(uint64_t a1)
{
  v2 = sub_1E5C8D75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHintsState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055920, &qword_1E5CA5CE0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055928, &qword_1E5CA5CE8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055930, &qword_1E5CA5CF0);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v23 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v17 = v1[2];
  v16 = v1[3];
  v25 = v1[4];
  v26 = v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8D708();
  sub_1E5C9D130();
  if (v17)
  {
    LOBYTE(v32) = 1;
    sub_1E5C8D75C();
    v19 = v31;
    sub_1E5C9CFC0();
    v32 = v28;
    v33 = v27;
    v34 = v17;
    v35 = v26;
    v36 = v25;
    sub_1E5C3DAB0();
    v20 = v30;
    sub_1E5C9D030();
    (*(v29 + 8))(v6, v20);
    return (*(v11 + 8))(v14, v19);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1E5C8D7B0();
    v22 = v31;
    sub_1E5C9CFC0();
    (*(v23 + 8))(v10, v24);
    return (*(v11 + 8))(v14, v22);
  }
}

uint64_t SearchHintsState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055950, &qword_1E5CA5CF8);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055958, &qword_1E5CA5D00);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055960, &unk_1E5CA5D08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E5C8D708();
  v19 = v45;
  sub_1E5C9D120();
  if (!v19)
  {
    v45 = v13;
    v21 = v43;
    v20 = v44;
    v22 = sub_1E5C9CFB0();
    v23 = (2 * *(v22 + 16)) | 1;
    v50 = v22;
    v51 = v22 + 32;
    v52 = 0;
    v53 = v23;
    v24 = sub_1E5C448A4();
    if (v24 == 2 || v52 != v53 >> 1)
    {
      v28 = sub_1E5C9CE90();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
      *v30 = &type metadata for SearchHintsState;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v45 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        LOBYTE(v46) = 1;
        sub_1E5C8D75C();
        v25 = v16;
        v26 = v7;
        sub_1E5C9CF20();
        v27 = v45;
        sub_1E5C4078C();
        v34 = v26;
        v35 = v41;
        sub_1E5C9CFA0();
        (*(v42 + 8))(v34, v35);
        (*(v27 + 8))(v25, v12);
        swift_unknownObjectRelease();
        v36 = v46;
        v37 = v47;
        v38 = v48;
        v39 = v49;
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_1E5C8D7B0();
        sub_1E5C9CF20();
        v33 = v45;
        (*(v21 + 8))(v11, v8);
        (*(v33 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v36 = 0uLL;
      }

      *v20 = v36;
      *(v20 + 16) = v37;
      *(v20 + 24) = v38;
      *(v20 + 32) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t SearchHintsState.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  if (!v3)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  v7 = v1[4];
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v5)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t SearchHintsState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1E5C9D0D0();
  if (v4)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9D0F0();
    if (v2)
    {
      sub_1E5C9CC60();
    }

    sub_1E5C2AB00(v7, v4);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8D380(uint64_t a1)
{
  v3 = v1[2];
  if (!v3)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  v7 = v1[4];
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v5)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C8D450()
{
  sub_1E5C9D0D0();
  v1 = v0[2];
  if (v1)
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[3];
    v5 = v0[4];
    MEMORY[0x1E69399F0](1);
    sub_1E5C9D0F0();
    if (v3)
    {
      sub_1E5C9CC60();
    }

    sub_1E5C2AB00(v7, v1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B10HintsStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v5)
  {
    if (!v10)
    {
      sub_1E5C30DB8(*a1, v2, 0);
      sub_1E5C30DB8(v8, v7, 0);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    sub_1E5C3210C(*a2, a2[1], v10);
    sub_1E5C3210C(v3, v2, v5);
    sub_1E5C30DB8(v3, v2, v5);
    sub_1E5C30DB8(v8, v7, v10);
    v12 = 0;
    return v12 & 1;
  }

  v15[0] = *a1;
  v15[1] = v2;
  v15[2] = v5;
  v15[3] = v4;
  v15[4] = v6;
  v14[0] = v8;
  v14[1] = v7;
  v14[2] = v10;
  v14[3] = v9;
  v14[4] = v11;
  sub_1E5C3210C(v8, v7, v10);
  sub_1E5C3210C(v3, v2, v5);
  sub_1E5C3210C(v8, v7, v10);
  sub_1E5C3210C(v3, v2, v5);
  v12 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(v15, v14);
  sub_1E5C30DB8(v3, v2, v5);
  sub_1E5C30DB8(v8, v7, v10);
  sub_1E5C30DB8(v8, v7, v10);
  sub_1E5C30DB8(v3, v2, v5);
  return v12 & 1;
}

unint64_t sub_1E5C8D708()
{
  result = qword_1ED055938;
  if (!qword_1ED055938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055938);
  }

  return result;
}

unint64_t sub_1E5C8D75C()
{
  result = qword_1ED055940;
  if (!qword_1ED055940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055940);
  }

  return result;
}

unint64_t sub_1E5C8D7B0()
{
  result = qword_1ED055948;
  if (!qword_1ED055948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055948);
  }

  return result;
}

unint64_t sub_1E5C8D808()
{
  result = qword_1ED055968;
  if (!qword_1ED055968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055968);
  }

  return result;
}

uint64_t sub_1E5C8D85C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E5C8D8AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_1E5C8D908(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5C8D978()
{
  result = qword_1ED055970;
  if (!qword_1ED055970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055970);
  }

  return result;
}

unint64_t sub_1E5C8D9D0()
{
  result = qword_1ED055978;
  if (!qword_1ED055978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055978);
  }

  return result;
}

unint64_t sub_1E5C8DA28()
{
  result = qword_1ED055980;
  if (!qword_1ED055980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055980);
  }

  return result;
}

unint64_t sub_1E5C8DA80()
{
  result = qword_1ED055988;
  if (!qword_1ED055988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055988);
  }

  return result;
}

unint64_t sub_1E5C8DAD8()
{
  result = qword_1ED055990;
  if (!qword_1ED055990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055990);
  }

  return result;
}

unint64_t sub_1E5C8DB30()
{
  result = qword_1ED055998;
  if (!qword_1ED055998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055998);
  }

  return result;
}

unint64_t sub_1E5C8DB88()
{
  result = qword_1ED0559A0;
  if (!qword_1ED0559A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559A0);
  }

  return result;
}

unint64_t sub_1E5C8DBE0()
{
  result = qword_1ED0559A8;
  if (!qword_1ED0559A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559A8);
  }

  return result;
}

uint64_t static SearchResultScope.makeShelfImpression()()
{
  v0 = sub_1E5C9CB20();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5C9CB50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5C9CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  *(inited + 32) = 1701667182;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000001E5CA8080;
  *(inited + 72) = v5;
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v5;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v6);
  return sub_1E5C9CB60();
}

uint64_t SearchResultScope.impression.getter()
{
  v1 = sub_1E5C9CB20();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1E5C9CB50();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];

  sub_1E5C9CB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_1E5CA4830;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6973736572706D69;
  v12 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = v7;
  *(inited + 120) = v12;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v11;
  *(inited + 143) = -18;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v13);
  return sub_1E5C9CB60();
}

uint64_t SearchResultScope.category.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  LODWORD(result) = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0();
  if (result == 9)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1E5C8E0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
    v3 = sub_1E5C9CF00();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 48);
      v18 = *(v4 + 32);
      v19 = v6;
      v20 = *(v4 + 64);
      v7 = *(v4 + 16);
      v17[0] = *v4;
      v17[1] = v7;
      v21 = v17[0];
      v22 = v7;
      v23 = v18;
      v24 = v6;
      sub_1E5C3165C(v17, v16, &qword_1ED0559B8, &qword_1E5CA6138);
      result = sub_1E5C7D560(&v21);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + (result << 6));
      v11 = v22;
      *v10 = v21;
      v10[1] = v11;
      v12 = v24;
      v10[2] = v23;
      v10[3] = v12;
      *(v3[7] + 8 * result) = v20;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5C8E204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559B0, &qword_1E5CA6130);
    v3 = sub_1E5C9CF00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5C3165C(v4, &v13, &qword_1ED0555B0, &qword_1E5CA4F70);
      v5 = v13;
      v6 = v14;
      result = sub_1E5C7D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E5C8E334(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1E5C8E334(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E5C8E344()
{
  v1 = *v0;
  v2 = 0x6D6F436863746566;
  v3 = 0x7571655265676170;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7272456863746566;
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

uint64_t sub_1E5C8E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C8F440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C8E434(uint64_t a1)
{
  v2 = sub_1E5C8ECEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E470(uint64_t a1)
{
  v2 = sub_1E5C8ECEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E4AC(uint64_t a1)
{
  v2 = sub_1E5C8EE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E4E8(uint64_t a1)
{
  v2 = sub_1E5C8EE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E524(uint64_t a1)
{
  v2 = sub_1E5C8EE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E560(uint64_t a1)
{
  v2 = sub_1E5C8EE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E59C(uint64_t a1)
{
  v2 = sub_1E5C8EDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E5D8(uint64_t a1)
{
  v2 = sub_1E5C8EDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E614(uint64_t a1)
{
  v2 = sub_1E5C8ED94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E650(uint64_t a1)
{
  v2 = sub_1E5C8ED94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E68C(uint64_t a1)
{
  v2 = sub_1E5C8ED40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E6C8(uint64_t a1)
{
  v2 = sub_1E5C8ED40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingAction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  v43 = a3;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559C0, &qword_1E5CA6140);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559C8, &qword_1E5CA6148);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559D0, &qword_1E5CA6150);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559D8, &qword_1E5CA6158);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559E0, &qword_1E5CA6160);
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559E8, &unk_1E5CA6168);
  v46 = *(v22 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v31 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8ECEC();
  sub_1E5C9D130();
  if (!v44)
  {
    v48 = 0;
    sub_1E5C8EE90();
    sub_1E5C9CFC0();
    v47 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
    sub_1E5C74D1C(&qword_1ED0550E0, &qword_1ED0550E8);
    sub_1E5C9D030();
    (*(v41 + 8))(v21, v18);
    return (*(v46 + 8))(v25, v22);
  }

  if (v44 == 1)
  {
    v49 = 1;
    sub_1E5C8EE3C();
    sub_1E5C9CFC0();
    sub_1E5C9D000();
    (*(v42 + 8))(v17, v14);
    return (*(v46 + 8))(v25, v22);
  }

  if (v45 | v43)
  {
    if (v45 ^ 1 | v43)
    {
      v52 = 4;
      sub_1E5C8ED40();
      v28 = v38;
      sub_1E5C9CFC0();
      v30 = v39;
      v29 = v40;
    }

    else
    {
      v51 = 3;
      sub_1E5C8ED94();
      v28 = v35;
      sub_1E5C9CFC0();
      v30 = v36;
      v29 = v37;
    }
  }

  else
  {
    v50 = 2;
    sub_1E5C8EDE8();
    v28 = v32;
    sub_1E5C9CFC0();
    v30 = v33;
    v29 = v34;
  }

  (*(v30 + 8))(v28, v29);
  return (*(v46 + 8))(v25, v22);
}

unint64_t sub_1E5C8ECEC()
{
  result = qword_1ED0559F0;
  if (!qword_1ED0559F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559F0);
  }

  return result;
}

unint64_t sub_1E5C8ED40()
{
  result = qword_1ED0559F8;
  if (!qword_1ED0559F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559F8);
  }

  return result;
}

unint64_t sub_1E5C8ED94()
{
  result = qword_1ED055A00;
  if (!qword_1ED055A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A00);
  }

  return result;
}

unint64_t sub_1E5C8EDE8()
{
  result = qword_1ED055A08;
  if (!qword_1ED055A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A08);
  }

  return result;
}

unint64_t sub_1E5C8EE3C()
{
  result = qword_1ED055A10;
  if (!qword_1ED055A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A10);
  }

  return result;
}

unint64_t sub_1E5C8EE90()
{
  result = qword_1ED055A18;
  if (!qword_1ED055A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A18);
  }

  return result;
}

uint64_t SearchLandingAction.init(from:)(uint64_t *a1)
{
  result = sub_1E5C8F618(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E5C8EF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5C8F618(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t SearchLandingAction.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C9CC60();
    }

    else
    {
      if (a2 | a3)
      {
        if (a2 ^ 1 | a3)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      return MEMORY[0x1E69399F0](v7);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C2AD0C(a1, a2);
  }
}

uint64_t SearchLandingAction.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E5C9D0D0();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x1E69399F0](v6);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v8, a1);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8F0F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (v1 | v2)
      {
        if (v1 ^ 1 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1E69399F0](v4);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v6, v1);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8F1B8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    v4 = *(v1 + 8);
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C9CC60();
    }

    else
    {
      if (v3 | v4)
      {
        if (v3 ^ 1 | v4)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      return MEMORY[0x1E69399F0](v6);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C2AD0C(a1, v3);
  }
}

uint64_t sub_1E5C8F294()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (v1 | v2)
      {
        if (v1 ^ 1 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1E69399F0](v4);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v6, v1);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B13LandingActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return sub_1E5C767A0(a1, a4);
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5C9D060();
  }
}

uint64_t sub_1E5C8F440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F436863746566 && a2 == 0xEE00646574656C70;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7272456863746566 && a2 == 0xEA0000000000726FLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7571655265676170 && a2 == 0xED00006465747365 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA81D0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C8F618(uint64_t *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AA0, &qword_1E5CA6860);
  v48 = *(v50 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v41 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AA8, &qword_1E5CA6868);
  v51 = *(v49 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v41 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AB0, &qword_1E5CA6870);
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v52 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AB8, &qword_1E5CA6878);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AC0, &qword_1E5CA6880);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AC8, &qword_1E5CA6888);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v55 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5C8ECEC();
  v24 = v56;
  sub_1E5C9D120();
  if (!v24)
  {
    v56 = v15;
    v25 = v52;
    v26 = v53;
    v42 = v12;
    v27 = v54;
    v28 = sub_1E5C9CFB0();
    v29 = (2 * *(v28 + 16)) | 1;
    v57 = v28;
    v58 = v28 + 32;
    v59 = 0;
    v60 = v29;
    v30 = sub_1E5C3AAF4();
    if (v30 == 5 || v59 != v60 >> 1)
    {
      v31 = sub_1E5C9CE90();
      swift_allocError();
      v32 = v16;
      v34 = v33;
      v23 = v20;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
      *v34 = &type metadata for SearchLandingAction;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v31 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v17 + 8))(v23, v32);
      swift_unknownObjectRelease();
    }

    else if (v30 <= 1u)
    {
      if (v30)
      {
        LOBYTE(v61) = 1;
        sub_1E5C8EE3C();
        v39 = v11;
        sub_1E5C9CF20();
        v40 = v47;
        v23 = sub_1E5C9CF70();
        (*(v46 + 8))(v39, v40);
        (*(v17 + 8))(v20, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1E5C8EE90();
        v37 = v56;
        sub_1E5C9CF20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
        sub_1E5C74D1C(&qword_1ED055178, &qword_1ED055180);
        v38 = v42;
        sub_1E5C9CFA0();
        (*(v44 + 8))(v37, v38);
        (*(v17 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v23 = v61;
      }
    }

    else if (v30 == 2)
    {
      LOBYTE(v61) = 2;
      sub_1E5C8EDE8();
      sub_1E5C9CF20();
      (*(v43 + 8))(v25, v45);
      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v23 = 0;
    }

    else if (v30 == 3)
    {
      LOBYTE(v61) = 3;
      sub_1E5C8ED94();
      sub_1E5C9CF20();
      (*(v51 + 8))(v26, v49);
      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v23 = 1;
    }

    else
    {
      LOBYTE(v61) = 4;
      sub_1E5C8ED40();
      sub_1E5C9CF20();
      (*(v48 + 8))(v27, v50);
      (*(v17 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v23 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return v23;
}

unint64_t sub_1E5C8FEA0()
{
  result = qword_1ED055A20;
  if (!qword_1ED055A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B13LandingActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1E5C8FF84()
{
  result = qword_1ED055A28;
  if (!qword_1ED055A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A28);
  }

  return result;
}

unint64_t sub_1E5C8FFDC()
{
  result = qword_1ED055A30;
  if (!qword_1ED055A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A30);
  }

  return result;
}

unint64_t sub_1E5C90034()
{
  result = qword_1ED055A38;
  if (!qword_1ED055A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A38);
  }

  return result;
}

unint64_t sub_1E5C9008C()
{
  result = qword_1ED055A40;
  if (!qword_1ED055A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A40);
  }

  return result;
}

unint64_t sub_1E5C900E4()
{
  result = qword_1ED055A48;
  if (!qword_1ED055A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A48);
  }

  return result;
}

unint64_t sub_1E5C9013C()
{
  result = qword_1ED055A50;
  if (!qword_1ED055A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A50);
  }

  return result;
}

unint64_t sub_1E5C90194()
{
  result = qword_1ED055A58;
  if (!qword_1ED055A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A58);
  }

  return result;
}

unint64_t sub_1E5C901EC()
{
  result = qword_1ED055A60;
  if (!qword_1ED055A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A60);
  }

  return result;
}

unint64_t sub_1E5C90244()
{
  result = qword_1ED055A68;
  if (!qword_1ED055A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A68);
  }

  return result;
}

unint64_t sub_1E5C9029C()
{
  result = qword_1ED055A70;
  if (!qword_1ED055A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A70);
  }

  return result;
}

unint64_t sub_1E5C902F4()
{
  result = qword_1ED055A78;
  if (!qword_1ED055A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A78);
  }

  return result;
}

unint64_t sub_1E5C9034C()
{
  result = qword_1ED055A80;
  if (!qword_1ED055A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A80);
  }

  return result;
}

unint64_t sub_1E5C903A4()
{
  result = qword_1ED055A88;
  if (!qword_1ED055A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A88);
  }

  return result;
}

unint64_t sub_1E5C903FC()
{
  result = qword_1ED055A90;
  if (!qword_1ED055A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A90);
  }

  return result;
}

unint64_t sub_1E5C90454()
{
  result = qword_1ED055A98;
  if (!qword_1ED055A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A98);
  }

  return result;
}

uint64_t sub_1E5C904A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054848, qword_1E5CA1168);
  v5 = sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t TVSearchView.init(store:landingCanvasView:resultsCanvasView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = sub_1E5C25FF4;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for TVSearchView();
  v11 = *(v10 + 52);

  v13 = a3(v12);
  v14 = a5 + *(v10 + 56);
  a4(v13);
}

uint64_t sub_1E5C90660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AE8, &qword_1E5CA6898);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v25 = v2;
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v12 = v28;
  if (v28)
  {
    v22 = v11;
    v23 = v7;
    v24 = a2;
    v14 = v26;
    v13 = v27;

    sub_1E5C30DB8(v14, v13, v12);
    v26 = v12;
    (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25, a1);
    v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v16 = swift_allocObject();
    v17 = *(a1 + 32);
    *(v16 + 16) = *(a1 + 16);
    *(v16 + 32) = v17;
    (*(v5 + 32))(v16 + v15, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C9BBA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557C8, &qword_1E5CA5810);
    sub_1E5C27F74(&qword_1ED055808, &qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810);
    sub_1E5C92BB8();
    v18 = v22;
    v7 = v23;
    a2 = v24;
    sub_1E5C9C960();
    (*(v8 + 32))(a2, v18, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a2, v19, 1, v7);
}

uint64_t sub_1E5C909AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v33 = a7;
  v13 = type metadata accessor for SearchHint();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v15 = type metadata accessor for TVSearchView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  (*(v16 + 16))(&v28 - v18, a2, v15);
  v20 = a1;
  sub_1E5C35724(a1, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + *(v29 + 80) + v21) & ~*(v29 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  v25 = v31;
  *(v23 + 2) = a3;
  *(v23 + 3) = v24;
  v26 = v32;
  *(v23 + 4) = v25;
  *(v23 + 5) = v26;
  (*(v16 + 32))(&v23[v21], v19, v15);
  sub_1E5C867B8(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &v23[v22]);
  v34 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055820, &qword_1E5CA5850);
  sub_1E5C27F74(&qword_1ED055828, &qword_1ED055820, &qword_1E5CA5850);
  return sub_1E5C9C8A0();
}

uint64_t sub_1E5C90C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  type metadata accessor for TVSearchView();
  sub_1E5C904A8();
  sub_1E5C35724(a2, v14);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v14);
}

uint64_t sub_1E5C90D2C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SearchHint() + 24));
  v3 = *v1;
  v4 = v1[1];
  sub_1E5C28160();

  return sub_1E5C9C840();
}

uint64_t TVSearchView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v114 = *(a1 - 1);
  v123 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v122 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5C9CC20();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5C9C2C0();
  v112 = *(v10 - 8);
  v113 = v10;
  v11 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  v13 = a1[2];
  v126 = a1[3];
  v127 = v13;
  v14 = a1[4];
  v128 = a1[5];
  v129 = v14;
  v152 = v13;
  v153 = v126;
  v154 = v14;
  v155 = v128;
  v87 = type metadata accessor for TVSearchableView();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E5C9BDB0();
  v89 = *(v15 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - v17;
  v19 = sub_1E5C9BFB0();
  v88 = *(v19 - 8);
  v20 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - v21;
  v23 = sub_1E5C9BFB0();
  v106 = *(v23 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v84 - v25;
  v84 = swift_getWitnessTable();
  v150 = v84;
  v151 = MEMORY[0x1E697E5D8];
  v121 = MEMORY[0x1E697E858];
  v85 = swift_getWitnessTable();
  v148 = v85;
  v149 = MEMORY[0x1E6980A30];
  v26 = swift_getWitnessTable();
  v152 = v23;
  v153 = v26;
  v90 = v26;
  v91 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v100 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v116 = &v84 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
  v96 = v30;
  v152 = v23;
  v153 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v94 = sub_1E5C91B1C();
  v152 = OpaqueTypeMetadata2;
  v153 = v30;
  v154 = OpaqueTypeConformance2;
  v155 = v94;
  v98 = MEMORY[0x1E697D060];
  v97 = swift_getOpaqueTypeMetadata2();
  v99 = *(v97 - 8);
  v32 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v84 - v33;
  v101 = sub_1E5C9BFB0();
  v105 = *(v101 - 8);
  v34 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v119 = &v84 - v35;
  v104 = sub_1E5C9BFB0();
  v109 = *(v104 - 8);
  v36 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v84 - v37;
  v108 = sub_1E5C9BFB0();
  v110 = *(v108 - 8);
  v38 = *(v110 + 64);
  v39 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v107 = &v84 - v41;
  v136 = v127;
  v137 = v126;
  v138 = v129;
  v139 = v128;
  v140 = v124;
  sub_1E5C9C430();
  sub_1E5C9BDC0();
  sub_1E5C9C440();
  sub_1E5C9C710();
  (*(v89 + 8))(v18, v15);
  sub_1E5C9C440();
  sub_1E5C9BFC0();
  sub_1E5C9C670();
  (*(v88 + 8))(v22, v19);
  sub_1E5C904A8();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E5C9C930();
  v89 = v154;
  sub_1E5C9C2B0();
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [objc_opt_self() bundleForClass_];
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v44 = sub_1E5C9C540();
  v46 = v45;
  LOBYTE(OpaqueTypeConformance2) = v47 & 1;
  v48 = v91;
  v49 = v118;
  sub_1E5C9C600();
  sub_1E5C2824C(v44, v46, OpaqueTypeConformance2);

  (*(v112 + 8))(v125, v113);
  (*(v106 + 8))(v49, v48);
  v130 = v127;
  v131 = v126;
  v132 = v129;
  v133 = v128;
  v50 = v124;
  v134 = v124;
  v52 = v92;
  v51 = v93;
  v54 = v95;
  v53 = v96;
  v55 = v94;
  v56 = v116;
  sub_1E5C9C690();
  (*(v100 + 8))(v56, v51);
  v57 = v117;
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  LOBYTE(v56) = v147;
  v152 = v51;
  v153 = v53;
  v154 = v54;
  v155 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v97;
  sub_1E5C4C370(v56, v97, v58);
  (*(v99 + 8))(v52, v59);
  v60 = v114;
  v125 = *(v114 + 16);
  v61 = v122;
  (v125)(v122, v50, v57);
  v62 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v63 = swift_allocObject();
  v64 = v126;
  v63[2] = v127;
  v63[3] = v64;
  v65 = v128;
  v63[4] = v129;
  v63[5] = v65;
  v118 = *(v60 + 32);
  (v118)(v63 + v62, v61, v57);
  v66 = sub_1E5C92110();
  v145 = v58;
  v146 = v66;
  v67 = v101;
  v68 = swift_getWitnessTable();
  v69 = v119;
  sub_1E5C9C730();

  (*(v105 + 8))(v69, v67);
  v70 = v122;
  (v125)(v122, v124, v57);
  v71 = swift_allocObject();
  v72 = v126;
  v71[2] = v127;
  v71[3] = v72;
  v73 = v128;
  v71[4] = v129;
  v71[5] = v73;
  (v118)(v71 + v62, v70, v57);
  v74 = MEMORY[0x1E69805D0];
  v143 = v68;
  v144 = MEMORY[0x1E69805D0];
  v75 = v104;
  v76 = swift_getWitnessTable();
  v77 = v102;
  v78 = v120;
  sub_1E5C9C630();

  (*(v109 + 8))(v78, v75);
  v141 = v76;
  v142 = v74;
  v79 = v108;
  v80 = swift_getWitnessTable();
  v81 = v107;
  sub_1E5C28390(v77, v79, v80);
  v82 = *(v110 + 8);
  v82(v77, v79);
  sub_1E5C28390(v81, v79, v80);
  return (v82)(v81, v79);
}

unint64_t sub_1E5C91B1C()
{
  result = qword_1ED055AD8;
  if (!qword_1ED055AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
    sub_1E5C91BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AD8);
  }

  return result;
}

unint64_t sub_1E5C91BA0()
{
  result = qword_1ED055AE0;
  if (!qword_1ED055AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AE8, &qword_1E5CA6898);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AE0);
  }

  return result;
}

uint64_t sub_1E5C91C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v40 = *(a3 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37[1] = v14;
  v38 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v14;
  v18 = v17;
  v37[0] = v17;
  v19 = v14;
  v20 = type metadata accessor for TVSearchableView();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v37 - v26;
  v42 = a2;
  v43 = a3;
  v44 = v18;
  v45 = v19;
  v28 = type metadata accessor for TVSearchView();
  v29 = sub_1E5C904A8();
  v30 = *(v11 + 16);
  v31 = v38;
  v30(v38, a1 + *(v28 + 52), a2);
  v32 = a1 + *(v28 + 56);
  v33 = v39;
  (*(v40 + 16))(v39, v32, a3);
  sub_1E5C482C8(v29, v31, v33, a2, a3, v25);
  WitnessTable = swift_getWitnessTable();
  sub_1E5C28390(v25, v20, WitnessTable);
  v35 = *(v21 + 8);
  v35(v25, v20);
  sub_1E5C28390(v27, v20, WitnessTable);
  return (v35)(v27, v20);
}

uint64_t sub_1E5C91F38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1E5C91C50(v1[6], v1[2], v1[3], a1);
}

unint64_t sub_1E5C91F48()
{
  result = qword_1ED055AF0;
  if (!qword_1ED055AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AF0);
  }

  return result;
}

uint64_t sub_1E5C91F9C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B00, &unk_1E5CA69E0);
  return sub_1E5C9CC00() & 1;
}

uint64_t sub_1E5C92000()
{

  swift_getAtKeyPath();
}

uint64_t sub_1E5C92060@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  type metadata accessor for SearchAction();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5C920B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  v4 = type metadata accessor for TVSearchView();
  return sub_1E5C90660(v4, a1);
}

unint64_t sub_1E5C92110()
{
  result = qword_1ED055AF8;
  if (!qword_1ED055AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AF8);
  }

  return result;
}

uint64_t sub_1E5C92164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SearchAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for TVSearchView();
  sub_1E5C904A8();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v12);
}

uint64_t sub_1E5C92254()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TVSearchView() - 8);
  return sub_1E5C92164(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v1, v2, v3, v4);
}

uint64_t sub_1E5C922F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5C9233C(uint64_t a1)
{
  sub_1E5C92918();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E5C923E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5C92604(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5C92918()
{
  if (!qword_1EE2C40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054848, qword_1E5CA1168);
    sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168);
    v0 = sub_1E5C9BDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C40C0);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for TVSearchView() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  sub_1E5C277E8();
  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v9 - 8) + 8))(v4 + v2[16]);
  return swift_deallocObject();
}