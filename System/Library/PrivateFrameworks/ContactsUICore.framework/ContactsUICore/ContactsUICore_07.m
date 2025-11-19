uint64_t ContactEntity.birthday.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3303784(a1, &v5 - v3);
  sub_1A34C8D10();
  return sub_1A33037F4(a1);
}

uint64_t sub_1A3303784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33037F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*ContactEntity.birthday.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

void sub_1A33038D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ContactEntity.id.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t static ContactEntity.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A34C95C0();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A34C8FF0();
}

uint64_t ContactEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2];
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  if (!*(v0 + 48))
  {
    sub_1A34CD060();
    sub_1A34C9810();
    sub_1A34CD150();
  }

  sub_1A34C9590();
  (*(v7 + 56))(v3, 1, 1, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7078);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-v9];
  v11 = sub_1A34C8F10();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  return sub_1A34C8F20();
}

uint64_t ContactEntity.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a1;
  v52 = a2;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7080);
  sub_1A34CD060();
  sub_1A34C9810();
  v11 = *MEMORY[0x1E6968DF0];
  v56 = *(v5 + 104);
  v57 = v4;
  v56(v7, v11, v4);
  sub_1A34C95C0();
  v55 = sub_1A34C8D70();
  *a3 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7088);
  sub_1A34CD060();
  sub_1A34C9810();
  v49 = v11;
  v12 = v56;
  v56(v7, v11, v4);
  sub_1A34C95C0();
  sub_1A3304850();
  v54 = sub_1A34C8D40();
  a3[1] = v54;
  sub_1A34CD060();
  sub_1A34C9810();
  v13 = v11;
  v14 = v57;
  v12(v7, v13, v57);
  sub_1A34C95C0();
  v53 = sub_1A34C8D40();
  a3[2] = v53;
  sub_1A34CD060();
  sub_1A34C9810();
  v15 = v49;
  v16 = v14;
  v17 = v56;
  v56(v7, v49, v16);
  sub_1A34C95C0();
  v50 = sub_1A34C8D40();
  a3[3] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7098);
  sub_1A34CD060();
  sub_1A34C9810();
  v17(v7, v15, v57);
  sub_1A34C95C0();
  a3[4] = sub_1A34C8D80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v58, "entityProvider");
  v58[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  v18 = sub_1A34C8AC0();
  v20 = v51;
  v19 = v52;
  a3[7] = v51;
  a3[8] = v19;
  a3[10] = v20;
  a3[11] = v19;
  a3[12] = v18;
  v21 = *MEMORY[0x1E695C258];
  v22 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  a3[9] = [v22 keyVectorWithKey_];
  v23 = sub_1A34C8C80();
  a3[5] = 0;
  a3[6] = 0;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = sub_1A34C8C30();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v48[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v30 = v20;
  v30[1] = v19;
  (*(v31 + 104))(v30, *MEMORY[0x1E6959F80], v28);
  v32 = sub_1A34C8C50();
  v33 = MEMORY[0x1EEE9AC00](v32);
  (*(v35 + 104))(&v48[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6959FC0], v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v48[-v37];
  v39 = sub_1A34C8C70();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7078);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v48[-v41];
  v43 = sub_1A34C8F10();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = sub_1A34C8C40();
  v46 = MEMORY[0x1EEE9AC00](v45);
  (*(v24 + 16))(&v48[-v26], &v48[-v26], v23, v46);
  sub_1A34C8D10();
  (*(v24 + 8))(&v48[-v26], v23);
  v59 = v44;
  sub_1A34C8D10();
  v59 = v44;
  sub_1A34C8D10();
  v59 = v44;
  return sub_1A34C8D10();
}

unint64_t sub_1A3304850()
{
  result = qword_1EB0C7090;
  if (!qword_1EB0C7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7090);
  }

  return result;
}

char *ContactEntity.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v184 = a1;
  v176 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v174 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v175 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v198 = (&v163 - v7);
  v183 = sub_1A34C9550();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A34C95A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7080);
  sub_1A34CD060();
  sub_1A34C9810();
  v22 = *MEMORY[0x1E6968DF0];
  v23 = *(v10 + 104);
  v23(v12, v22, v9);
  sub_1A34C95C0();
  v180 = sub_1A34C8D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7088);
  sub_1A34CD060();
  sub_1A34C9810();
  v23(v12, v22, v9);
  sub_1A34C95C0();
  sub_1A3304850();
  v178 = sub_1A34C8D40();
  sub_1A34CD060();
  sub_1A34C9810();
  v23(v12, v22, v9);
  sub_1A34C95C0();
  v177 = sub_1A34C8D40();
  sub_1A34CD060();
  sub_1A34C9810();
  v23(v12, v22, v9);
  sub_1A34C95C0();
  v173 = sub_1A34C8D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7098);
  sub_1A34CD060();
  sub_1A34C9810();
  v200 = v22;
  v206 = v9;
  *&v205 = v10 + 104;
  v199 = v23;
  v23(v12, v22, v9);
  v202 = v18;
  v203 = v15;
  v204 = v12;
  sub_1A34C95C0();
  v201 = v21;
  v172 = sub_1A34C8D80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v207, "entityProvider");
  HIBYTE(v207[1]) = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  v171 = sub_1A34C8AC0();
  v24 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v24 setStyle_];
  [v24 setFallbackStyle_];
  v25 = v184;
  v26 = [v184 identifier];
  v169 = sub_1A34CD110();
  v168 = v27;

  v170 = v24;
  v28 = [v24 stringFromContact_];
  if (v28)
  {
    v29 = v28;
    v167 = sub_1A34CD110();
    v166 = v30;
  }

  else
  {
    v167 = 0;
    v166 = 0;
  }

  sub_1A34CCE70();
  v31 = v184;
  v165 = sub_1A34CCE60();
  v164 = v32;
  v163 = [v31 keyVector];
  v33 = [v31 namePrefix];
  v197 = sub_1A34CD110();
  v196 = v34;

  v35 = [v31 givenName];
  v195 = sub_1A34CD110();
  v194 = v36;

  v37 = [v31 middleName];
  sub_1A34CD110();

  v38 = [v31 familyName];
  sub_1A34CD110();

  v39 = [v31 nameSuffix];
  sub_1A34CD110();

  v40 = [v31 nickname];
  sub_1A34CD110();

  (*(v182 + 56))(v198, 1, 1, v183);
  v41 = v181;
  sub_1A34C94F0();
  v197 = sub_1A34C8C80();
  v198 = &v163;
  v42 = *(v197 - 8);
  v195 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v163 - v196;
  v45 = sub_1A34C8C30();
  v194 = &v163;
  v46 = *(v45 - 8);
  *&v47 = MEMORY[0x1EEE9AC00](v45).n128_u64[0];
  v49 = (&v163 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = [v31 identifier];
  v51 = sub_1A34CD110();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  (*(v46 + 104))(v49, *MEMORY[0x1E6959F80], v45);
  v54 = sub_1A34C8C50();
  v193 = &v163;
  v55 = *(v54 - 8);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v163 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v182 + 16))(v58, v41, v183, v56);
  (*(v55 + 104))(v58, *MEMORY[0x1E6959FB0], v54);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A8);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v61 = &v163 - v60;
  v62 = sub_1A34C8C70();
  (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7078);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v65 = &v163 - v64;
  v66 = sub_1A34C8F10();
  (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  v67 = sub_1A34C8C40();
  v68 = MEMORY[0x1EEE9AC00](v67);
  v69 = v197;
  (*(v42 + 16))(&v163 - v196, v44, v197, v68);
  sub_1A34C8D10();
  (*(v42 + 8))(v44, v69);
  v70 = [v31 phoneNumbers];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v71 = sub_1A34CD370();

  if (v71 >> 62)
  {
    v72 = sub_1A34CD9B0();
    if (v72)
    {
      goto LABEL_6;
    }

LABEL_19:

    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_19;
  }

LABEL_6:
  v73 = v71;
  v207[0] = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBC94(0, v72 & ~(v72 >> 63), 0);
  if (v72 < 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v75 = v207[0];
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B8);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7790);
  v76 = 0;
  v77 = v73;
  v185 = v73 & 0xC000000000000001;
  v189 = v73;
  v188 = v72;
  v78 = v204;
  v79 = v206;
  v80 = v199;
  do
  {
    v197 = v76;
    if (v185)
    {
      v81 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v81 = *(v77 + 8 * v76 + 32);
    }

    v82 = v81;
    v83 = [v81 identifier];
    v196 = sub_1A34CD110();
    v195 = v84;

    v85 = [v82 label];
    v198 = v75;
    if (v85)
    {
      v86 = v85;
      v194 = sub_1A34CD110();
      v193 = v87;
    }

    else
    {
      v194 = 0;
      v193 = 0;
    }

    v88 = [v82 value];
    v89 = [v88 stringValue];

    v192 = sub_1A34CD110();
    v191 = v90;

    sub_1A34CD060();
    sub_1A34C9810();
    v91 = v200;
    v80(v78, v200, v79);
    v190 = v82;
    sub_1A34C95C0();
    v92 = sub_1A34C8D90();
    sub_1A34CD060();
    sub_1A34C9810();
    v80(v78, v91, v79);
    v93 = v92;
    sub_1A34C95C0();
    v94 = sub_1A34C8D90();
    *&v208 = v194;
    *(&v208 + 1) = v193;
    sub_1A34C8D10();
    *&v208 = v192;
    *(&v208 + 1) = v191;
    sub_1A34C8D10();

    v75 = v198;
    v207[0] = v198;
    v96 = v198[2];
    v95 = v198[3];
    if (v96 >= v95 >> 1)
    {
      sub_1A32EBC94((v95 > 1), v96 + 1, 1);
      v75 = v207[0];
    }

    v76 = v197 + 1;
    v75[2] = (v96 + 1);
    v97 = &v75[4 * v96];
    v97[4] = v93;
    v97[5] = v94;
    v98 = v195;
    v97[6] = v196;
    v97[7] = v98;
    v77 = v189;
  }

  while (v188 != v76);

LABEL_20:
  *&v208 = v75;
  sub_1A34C8D10();
  v99 = [v184 emailAddresses];
  v100 = sub_1A34CD370();

  if (!(v100 >> 62))
  {
    v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_22;
    }

LABEL_35:

    v103 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v101 = sub_1A34CD9B0();
  if (!v101)
  {
    goto LABEL_35;
  }

LABEL_22:
  v102 = v100;
  v207[0] = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBC94(0, v101 & ~(v101 >> 63), 0);
  if (v101 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v103 = v207[0];
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B8);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7790);
  v104 = 0;
  v105 = v102;
  v185 = v102 & 0xC000000000000001;
  v189 = v102;
  v188 = v101;
  v106 = v204;
  v107 = v199;
  do
  {
    v197 = v104;
    if (v185)
    {
      v108 = MEMORY[0x1A58EF310]();
    }

    else
    {
      v108 = *(v105 + 8 * v104 + 32);
    }

    v109 = v108;
    v110 = [v108 identifier];
    v196 = sub_1A34CD110();
    v195 = v111;

    v112 = [v109 label];
    v198 = v103;
    if (v112)
    {
      v113 = v112;
      v194 = sub_1A34CD110();
      v193 = v114;
    }

    else
    {
      v194 = 0;
      v193 = 0;
    }

    v115 = [v109 value];
    v192 = sub_1A34CD110();
    v191 = v116;

    sub_1A34CD060();
    sub_1A34C9810();
    v117 = v200;
    v118 = v206;
    v107(v106, v200, v206);
    v190 = v109;
    sub_1A34C95C0();
    v119 = sub_1A34C8D90();
    sub_1A34CD060();
    sub_1A34C9810();
    v120 = v118;
    v121 = v119;
    v107(v106, v117, v120);
    sub_1A34C95C0();
    v122 = sub_1A34C8D90();
    *&v208 = v194;
    *(&v208 + 1) = v193;
    sub_1A34C8D10();
    *&v208 = v192;
    *(&v208 + 1) = v191;
    sub_1A34C8D10();

    v103 = v198;
    v207[0] = v198;
    v124 = v198[2];
    v123 = v198[3];
    if (v124 >= v123 >> 1)
    {
      sub_1A32EBC94((v123 > 1), v124 + 1, 1);
      v103 = v207[0];
    }

    v104 = v197 + 1;
    v103[2] = (v124 + 1);
    v125 = &v103[4 * v124];
    v125[4] = v121;
    v125[5] = v122;
    v126 = v195;
    v125[6] = v196;
    v125[7] = v126;
    v105 = v189;
  }

  while (v188 != v104);

LABEL_36:
  *&v208 = v103;
  sub_1A34C8D10();
  v127 = [v184 postalAddresses];
  v128 = sub_1A34CD370();

  if (v128 >> 62)
  {
    v129 = sub_1A34CD9B0();
    if (v129)
    {
LABEL_38:
      v207[0] = MEMORY[0x1E69E7CC0];
      result = sub_1A32EBC94(0, v129 & ~(v129 >> 63), 0);
      if ((v129 & 0x8000000000000000) == 0)
      {
        v130 = 0;
        v131 = v207[0];
        v206 = v128 & 0xC000000000000001;
        do
        {
          if (v206)
          {
            v132 = MEMORY[0x1A58EF310](v130, v128);
          }

          else
          {
            v132 = *(v128 + 8 * v130 + 32);
          }

          v133 = v132;
          v134 = [v132 label];
          if (v134)
          {
            v135 = v134;
            v136 = sub_1A34CD110();
            v138 = v137;
          }

          else
          {
            v136 = 0;
            v138 = 0;
          }

          v139 = [v133 value];
          v140 = [v139 formattedAddress];

          v141 = sub_1A34CD110();
          v143 = v142;

          sub_1A332D870(v136, v138, v141, v143, &v208);
          v144 = v208;
          v145 = v209;
          v146 = v210;
          v207[0] = v131;
          v148 = *(v131 + 16);
          v147 = *(v131 + 24);
          if (v148 >= v147 >> 1)
          {
            v205 = v208;
            sub_1A32EBC94((v147 > 1), v148 + 1, 1);
            v144 = v205;
            v131 = v207[0];
          }

          *(v131 + 16) = v148 + 1;
          v149 = v131 + 32 * v148;
          *(v149 + 32) = v144;
          ++v130;
          *(v149 + 48) = v145;
          *(v149 + 56) = v146;
        }

        while (v129 != v130);

        goto LABEL_52;
      }

LABEL_58:
      __break(1u);
      return result;
    }
  }

  else
  {
    v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v129)
    {
      goto LABEL_38;
    }
  }

  v131 = MEMORY[0x1E69E7CC0];
LABEL_52:
  *&v208 = v131;
  v150 = v173;
  sub_1A34C8D10();
  v151 = [v184 birthday];
  v152 = v175;
  if (v151)
  {
    v153 = v151;
    sub_1A34C9230();

    v154 = 0;
  }

  else
  {
    v154 = 1;
  }

  v155 = sub_1A34C9330();
  (*(*(v155 - 8) + 56))(v152, v154, 1, v155);
  sub_1A3303784(v152, v174);
  v156 = v172;
  sub_1A34C8D10();

  sub_1A33037F4(v152);
  result = (*(v182 + 8))(v181, v183);
  v157 = v176;
  v158 = v178;
  *v176 = v180;
  v157[1] = v158;
  v157[2] = v177;
  v157[3] = v150;
  v159 = v167;
  v157[4] = v156;
  v157[5] = v159;
  v160 = v169;
  v157[6] = v166;
  v157[7] = v160;
  v161 = v163;
  v157[8] = v168;
  v157[9] = v161;
  v162 = v164;
  v157[10] = v165;
  v157[11] = v162;
  v157[12] = v171;
  return result;
}

uint64_t sub_1A3306250(uint64_t (*a1)(uint64_t))
{
  v18 = a1;
  v1 = sub_1A34C9550();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34C8C80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C8D00();
  v9 = sub_1A34C8C50();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C8C60();
  (*(v6 + 8))(v8, v5);
  v13 = (*(v10 + 88))(v12, v9);
  if (MEMORY[0x1E6959FB0] && v13 == *MEMORY[0x1E6959FB0])
  {
    (*(v10 + 96))(v12, v9);
    v14 = (*(v2 + 32))(v4, v12, v1);
    v15 = v18(v14);
    (*(v2 + 8))(v4, v1);
    return v15;
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }
}

ValueMetadata *sub_1A33064F8()
{
  if (qword_1EB0C48A0 != -1)
  {
    swift_once();
  }

  return &type metadata for UpdateContactIntent;
}

uint64_t sub_1A3306548@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

uint64_t sub_1A330659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3292050;

  return MEMORY[0x1EEDB3F58](a1, a2, a3, a4);
}

id CNMutableContact.init(entity:)(uint64_t *a1)
{
  v2 = sub_1A34C9550();
  v125 = *(v2 - 8);
  v126 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v115 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v109 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v109 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v109 - v13;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[3];
  v127 = a1[2];
  v121 = v16;
  v122 = v14;
  v120 = a1[4];
  v123 = a1[6];
  v18 = a1[8];
  v17 = a1[9];
  v19 = a1[12];
  v117 = a1[11];
  v118 = v17;
  v116 = v19;
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v119 = v18;
  v21 = sub_1A34CD0E0();
  v22 = [v20 initWithIdentifier_];

  v23 = sub_1A34C8C80();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v131 = v22;
  v134 = v15;
  sub_1A34C8D00();
  v26 = sub_1A34C8C50();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1A34C8C60();
  v30 = *(v24 + 8);
  v29 = v24 + 8;
  v132 = v23;
  v130 = v30;
  v30(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v133 = v27;
  v128 = *(v27 + 88);
  v129 = v27 + 88;
  v31 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  if (MEMORY[0x1E6959FB0] && v31 == *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v33 = v125;
    v32 = v126;
    v34 = v110;
    (*(v125 + 32))(v110, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
    sub_1A34C9500();
    v36 = v35;
    (*(v33 + 8))(v34, v32);
    if (v36)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

LABEL_7:
  v37 = sub_1A34CD0E0();

  [v131 setNamePrefix_];

  MEMORY[0x1EEE9AC00](v38);
  v39 = sub_1A34C8D00();
  MEMORY[0x1EEE9AC00](v39);
  sub_1A34C8C60();
  v130(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v132);
  v40 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v124 = v29;
  if (MEMORY[0x1E6959FB0] && v40 == *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v42 = v125;
    v41 = v126;
    v43 = v111;
    (*(v125 + 32))(v111, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
    sub_1A34C94A0();
    v45 = v44;
    (*(v42 + 8))(v43, v41);
    if (v45)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

LABEL_13:
  v46 = sub_1A34CD0E0();

  [v131 setGivenName_];

  MEMORY[0x1EEE9AC00](v47);
  v48 = sub_1A34C8D00();
  MEMORY[0x1EEE9AC00](v48);
  sub_1A34C8C60();
  v130(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v132);
  v49 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  if (MEMORY[0x1E6959FB0] && v49 == *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v51 = v125;
    v50 = v126;
    v52 = v112;
    (*(v125 + 32))(v112, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
    sub_1A34C94E0();
    v54 = v53;
    (*(v51 + 8))(v52, v50);
    if (v54)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

LABEL_19:
  v55 = sub_1A34CD0E0();

  [v131 setMiddleName_];

  MEMORY[0x1EEE9AC00](v56);
  v57 = sub_1A34C8D00();
  MEMORY[0x1EEE9AC00](v57);
  sub_1A34C8C60();
  v130(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v132);
  v58 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  if (MEMORY[0x1E6959FB0] && v58 == *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v60 = v125;
    v59 = v126;
    v61 = v113;
    (*(v125 + 32))(v113, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
    sub_1A34C94C0();
    v63 = v62;
    (*(v60 + 8))(v61, v59);
    if (v63)
    {
      goto LABEL_25;
    }
  }

  else
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

LABEL_25:
  v64 = sub_1A34CD0E0();

  [v131 setFamilyName_];

  MEMORY[0x1EEE9AC00](v65);
  v66 = sub_1A34C8D00();
  MEMORY[0x1EEE9AC00](v66);
  sub_1A34C8C60();
  v130(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v132);
  v67 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  if (MEMORY[0x1E6959FB0] && v67 == *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v69 = v125;
    v68 = v126;
    v70 = v114;
    (*(v125 + 32))(v114, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
    sub_1A34C9510();
    v72 = v71;
    (*(v69 + 8))(v70, v68);
    if (v72)
    {
      goto LABEL_31;
    }
  }

  else
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  }

LABEL_31:
  v73 = sub_1A34CD0E0();

  [v131 setNameSuffix_];

  MEMORY[0x1EEE9AC00](v74);
  v75 = sub_1A34C8D00();
  MEMORY[0x1EEE9AC00](v75);
  sub_1A34C8C60();
  v130(&v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v132);
  v76 = v128(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  if (!MEMORY[0x1E6959FB0] || v76 != *MEMORY[0x1E6959FB0])
  {
    (*(v133 + 8))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    goto LABEL_36;
  }

  (*(v133 + 96))(&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v78 = v125;
  v77 = v126;
  v79 = v115;
  (*(v125 + 32))(v115, &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v126);
  sub_1A34C9530();
  v81 = v80;
  (*(v78 + 8))(v79, v77);
  if (!v81)
  {
LABEL_36:
  }

  v82 = sub_1A34CD0E0();

  [v131 setNickname_];

  sub_1A34C8D00();
  v83 = v135;
  v84 = *(v135 + 16);
  v85 = MEMORY[0x1E69E7CC0];
  v86 = 0x1E695C000uLL;
  if (v84)
  {
    v137 = MEMORY[0x1E69E7CC0];
    sub_1A34CDB70();
    v133 = v83;
    v87 = v83 + 56;
    do
    {
      sub_1A34C9010();
      sub_1A34C9010();

      sub_1A34C8D00();
      sub_1A34C8D00();
      v88 = sub_1A34CD0E0();

      v89 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
      v90 = sub_1A34CD0E0();
      v91 = sub_1A34CD0E0();

      [v89 initWithIdentifier:v90 label:v91 value:v88];

      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
      v87 += 32;
      --v84;
    }

    while (v84);

    v86 = 0x1E695C000;
    v85 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
  v93 = sub_1A34CD350();

  [v131 setEmailAddresses_];

  sub_1A34C8D00();

  v94 = v135;
  v95 = *(v135 + 16);
  if (v95)
  {
    v130 = v92;
    v137 = v85;
    sub_1A34CDB70();
    v129 = v94;
    v96 = v94 + 56;
    do
    {
      v134 = v95;
      v133 = *(v96 - 8);
      sub_1A34C9010();
      sub_1A34C9010();

      sub_1A34C8D00();
      v97 = v135;
      if (!v136)
      {
        v97 = 0;
      }

      v132 = v97;
      sub_1A34C8D00();
      v98 = objc_allocWithZone(MEMORY[0x1E695CF50]);
      v99 = v86;
      v100 = sub_1A34CD0E0();

      v101 = [v98 initWithStringValue_];

      v86 = v99;
      v102 = objc_allocWithZone(*(v99 + 3808));
      v103 = sub_1A34CD0E0();
      v104 = sub_1A34CD0E0();

      [v102 initWithIdentifier:v103 label:v104 value:v101];

      v105 = v134;

      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
      v96 += 32;
      v95 = v105 - 1;
    }

    while (v95);
  }

  v106 = sub_1A34CD350();

  v107 = v131;
  [v131 setPhoneNumbers_];

  return v107;
}

ContactsUICore::ContactEntity::PropertyType_optional __swiftcall ContactEntity.PropertyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactEntity.PropertyType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D754E656E6F6870;
  v3 = 1702129518;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x7961646874726962;
  if (v1 != 3)
  {
    v4 = 0x52746361746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x64416C6174736F70;
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

uint64_t sub_1A3307884()
{
  sub_1A34CD1C0();
}

void sub_1A33079C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0x6D754E656E6F6870;
  v5 = 0xE400000000000000;
  v6 = 1702129518;
  if (v2 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961646874726962;
  if (v2 != 3)
  {
    v8 = 0x52746361746E6F63;
    v7 = 0xEF6E6F6974616C65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073736572;
  v10 = 0x6464416C69616D65;
  if (v2 != 1)
  {
    v10 = 0x64416C6174736F70;
    v9 = 0xED00007373657264;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t static ContactEntity.PropertyType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34C95B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v4);
  sub_1A34C95C0();
  (*(v11 + 56))(v3, 1, 1, v10);
  return sub_1A34C8FF0();
}

uint64_t ContactEntity.PropertyType.displayRepresentation.getter()
{
  v1 = *v0;
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E656E6F6870;
  v4 = 0xE400000000000000;
  v5 = 1702129518;
  if (v1 != 5)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x7961646874726962;
  if (v1 != 3)
  {
    v7 = 0x52746361746E6F63;
    v6 = 0xEF6E6F6974616C65;
  }

  if (*v0 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEC00000073736572;
  v9 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v9 = 0x64416C6174736F70;
    v8 = 0xED00007373657264;
  }

  if (*v0)
  {
    v3 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1A58EEA30](v10, v11);

  return sub_1A34C8F00();
}

uint64_t ContactEntity.personRepresentation.getter()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = sub_1A34C8C30();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = v2;
  v6[1] = v1;
  (*(v7 + 104))(v6, *MEMORY[0x1E6959F80], v4);
  v8 = sub_1A34C8C50();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 104))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6959FC0], v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1A34C8C70();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7078);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - v17;
  v19 = sub_1A34C8F10();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);

  return sub_1A34C8C40();
}

uint64_t sub_1A3308224()
{
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(sub_1A34C8C30() - 8);
  v5 = swift_task_alloc();
  *v5 = v3;
  v5[1] = v2;
  (*(v4 + 104))();
  v6 = *(sub_1A34C8C50() - 8);
  swift_task_alloc();
  (*(v6 + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A8);
  v7 = swift_task_alloc();
  v8 = sub_1A34C8C70();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7078);
  v9 = swift_task_alloc();
  v10 = sub_1A34C8F10();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

  sub_1A34C8C40();

  v11 = *(v1 + 8);

  return v11();
}

unint64_t _s14ContactsUICore13ContactEntityV12PropertyTypeO26caseDisplayRepresentationsSDyAE10AppIntents0H14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7160);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7168) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34E3590;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_1A34C8F00();
  v4[v1] = 1;
  sub_1A34C8F00();
  v4[2 * v1] = 2;
  sub_1A34C8F00();
  v4[3 * v1] = 3;
  sub_1A34C8F00();
  v4[4 * v1] = 4;
  sub_1A34C8F00();
  v4[5 * v1] = 5;
  sub_1A34C8F00();
  v4[6 * v1] = 6;
  sub_1A34C8F00();
  v5 = sub_1A33E9A90(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_1A3308738()
{
  result = qword_1EB0C2DE0;
  if (!qword_1EB0C2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2DE0);
  }

  return result;
}

unint64_t sub_1A3308790()
{
  result = qword_1EB0C70C0;
  if (!qword_1EB0C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70C0);
  }

  return result;
}

unint64_t sub_1A33087E8()
{
  result = qword_1EB0C70C8;
  if (!qword_1EB0C70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70C8);
  }

  return result;
}

unint64_t sub_1A330883C()
{
  result = qword_1EB0C70D0;
  if (!qword_1EB0C70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70D0);
  }

  return result;
}

unint64_t sub_1A3308894()
{
  result = qword_1EB0C70D8;
  if (!qword_1EB0C70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70D8);
  }

  return result;
}

unint64_t sub_1A33088F8()
{
  result = qword_1EB0C70E0;
  if (!qword_1EB0C70E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C70E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70E0);
  }

  return result;
}

unint64_t sub_1A3308954()
{
  result = qword_1EB0C70F0;
  if (!qword_1EB0C70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70F0);
  }

  return result;
}

unint64_t sub_1A33089AC()
{
  result = qword_1EB0C70F8;
  if (!qword_1EB0C70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C70F8);
  }

  return result;
}

unint64_t sub_1A3308A04()
{
  result = qword_1EB0C7100;
  if (!qword_1EB0C7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7100);
  }

  return result;
}

unint64_t sub_1A3308A5C()
{
  result = qword_1EB0C7108;
  if (!qword_1EB0C7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7108);
  }

  return result;
}

unint64_t sub_1A3308AC0()
{
  result = qword_1EB0C7110;
  if (!qword_1EB0C7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7110);
  }

  return result;
}

unint64_t sub_1A3308B14()
{
  result = qword_1EB0C7118;
  if (!qword_1EB0C7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7118);
  }

  return result;
}

unint64_t sub_1A3308B68()
{
  result = qword_1EB0C7120;
  if (!qword_1EB0C7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7120);
  }

  return result;
}

unint64_t sub_1A3308BC0()
{
  result = qword_1EB0C7128;
  if (!qword_1EB0C7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7128);
  }

  return result;
}

unint64_t sub_1A3308C58()
{
  result = qword_1EB0C7130;
  if (!qword_1EB0C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7130);
  }

  return result;
}

unint64_t sub_1A3308CB0()
{
  result = qword_1EB0C7138;
  if (!qword_1EB0C7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7138);
  }

  return result;
}

unint64_t sub_1A3308D08()
{
  result = qword_1EB0C7140;
  if (!qword_1EB0C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7140);
  }

  return result;
}

unint64_t sub_1A3308D60()
{
  result = qword_1EB0C7148;
  if (!qword_1EB0C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7148);
  }

  return result;
}

unint64_t sub_1A3308DB8()
{
  result = qword_1EB0C7150;
  if (!qword_1EB0C7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7150);
  }

  return result;
}

uint64_t sub_1A3308E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1A3308E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactEntity.PropertyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactEntity.PropertyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3309040()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7170);
  __swift_project_value_buffer(v6, qword_1EB0C7170);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t static ViewContactCardIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A33092D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7188);
  __swift_project_value_buffer(v10, qword_1EB0C7188);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t static ViewContactCardIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7188);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ViewContactCardIntent.description.setter(uint64_t a1)
{
  if (qword_1EB0C48B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7188);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ViewContactCardIntent.description.modify())()
{
  if (qword_1EB0C48B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7188);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3309814@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7188);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A33098D4(uint64_t a1)
{
  if (qword_1EB0C48B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7188);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1A33099C0(__int128 *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v20 = a1[4];
  v21 = v2;
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v18 = a1[2];
  v19 = v4;
  v7 = a1[5];
  v14 = v20;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  v22 = *(a1 + 12);
  v16 = *(a1 + 12);
  v12 = v18;
  v13 = v1;
  sub_1A330C650(v17, v9);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*ViewContactCardIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3309BB8(uint64_t *a1)
{
  sub_1A330C60C(*a1, a1[1]);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*ViewContactCardIntent.highlightedValue.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3309D70()
{
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*ViewContactCardIntent.highlightedPropertyType.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3309F14()
{
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*ViewContactCardIntent.shouldEdit.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t ViewContactCardIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = v75 - v3;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = sub_1A34C95B0();
  v12 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v106, "entityProvider");
  v106[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A0);
  sub_1A34CD060();
  sub_1A34C9810();
  v15 = *(v5 + 104);
  v80 = *MEMORY[0x1E6968DF0];
  v14 = v80;
  v81 = v4;
  v15(v7, v80, v4);
  v82 = v15;
  v78 = v5 + 104;
  v76 = v7;
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v15(v7, v14, v4);
  v16 = v96;
  sub_1A34C95C0();
  v17 = *(v12 + 56);
  v93 = v12 + 56;
  v94 = v17;
  v17(v16, 0, 1, v98);
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v85 = v19;
  v86 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = sub_1A34C8C20();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v83 = v20;
  v24 = v22(v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v20);
  v84 = v23;
  v79 = v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  (v22)(v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v20, v25);
  v89 = sub_1A34C8FA0();
  v91 = *(*(v89 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v89);
  v92 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = *MEMORY[0x1E695A4F8];
  v29 = *(v28 + 104);
  v88 = v28 + 104;
  v90 = v29;
  v29(v75 - v92, v26);
  sub_1A3308738();
  v97[1] = sub_1A34C8E20();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71B0);
  sub_1A34CD060();
  sub_1A34C9810();
  v30 = v76;
  v31 = v80;
  v32 = v81;
  v33 = v82;
  v82(v76, v80, v81);
  v34 = v30;
  sub_1A34C95C0();
  sub_1A34CD060();
  v75[1] = v10;
  sub_1A34C9810();
  v33(v30, v31, v32);
  v35 = v96;
  sub_1A34C95C0();
  v36 = v94(v35, 0, 1, v98);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v86;
  LOBYTE(v101) = 0;
  v99 = 0u;
  v100 = 0u;
  v38 = v83;
  v39 = v79;
  v40 = v79(v75 - v86, 1, 1, v83);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = v39(v75 - v37, 1, 1, v38, v41);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v90(v75 - v92, v87, v89, v43);
  sub_1A330AF00();
  v97[2] = sub_1A34C8E20();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71C0);
  sub_1A34CD060();
  sub_1A34C9810();
  v44 = v34;
  v45 = v34;
  v46 = v80;
  v47 = v81;
  v48 = v82;
  v82(v45, v80, v81);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v48(v44, v46, v47);
  v49 = v96;
  v50 = v44;
  sub_1A34C95C0();
  v51 = v94(v49, 0, 1, v98);
  LOBYTE(v99) = 7;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v53 = v86;
  v54 = v83;
  v55 = v79;
  v56 = (v79)(v75 - v86, 1, 1, v83, v52);
  v57 = MEMORY[0x1EEE9AC00](v56);
  v58 = v55(v75 - v53, 1, 1, v54, v57);
  v59 = MEMORY[0x1EEE9AC00](v58);
  v90(v75 - v92, v87, v89, v59);
  sub_1A3308C58();
  v97[3] = sub_1A34C8E10();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71C8);
  sub_1A34CD060();
  sub_1A34C9810();
  v60 = v50;
  v61 = v50;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v82(v61, v80, v81);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v64(v60, v62, v63);
  v65 = v96;
  sub_1A34C95C0();
  v94(v65, 0, 1, v98);
  LOBYTE(v99) = 2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D0);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v68 = v75 - v67;
  v69 = sub_1A34CD3D0();
  v70 = (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
  v71 = MEMORY[0x1EEE9AC00](v70);
  v72 = (v79)(v75 - v86, 1, 1, v83, v71);
  v73 = MEMORY[0x1EEE9AC00](v72);
  v90(v75 - v92, v87, v89, v73);
  v97[4] = sub_1A34C8E70();
  LOBYTE(v99) = 0;
  return sub_1A34C8DE0();
}

unint64_t sub_1A330AF00()
{
  result = qword_1EB0C71B8;
  if (!qword_1EB0C71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C71B8);
  }

  return result;
}

uint64_t ViewContactCardIntent.perform()(uint64_t a1)
{
  *(v2 + 376) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  *(v2 + 384) = swift_task_alloc();
  v3 = sub_1A34C9650();
  *(v2 + 392) = v3;
  *(v2 + 400) = *(v3 - 8);
  *(v2 + 408) = swift_task_alloc();
  v4 = sub_1A34C91C0();
  *(v2 + 416) = v4;
  *(v2 + 424) = *(v4 - 8);
  *(v2 + 432) = swift_task_alloc();
  *(v2 + 440) = *v1;
  *(v2 + 456) = *(v1 + 32);
  sub_1A34CD450();
  *(v2 + 464) = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  *(v2 + 472) = v6;
  *(v2 + 480) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A330B0F0, v6, v5);
}

uint64_t sub_1A330B0F0()
{
  sub_1A34C91B0();
  sub_1A34C91A0();
  sub_1A34C8DD0();
  v1 = *(v0 + 504);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = 2003789939;
  }

  else
  {
    v2 = 1953064037;
  }

  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 384);
  MEMORY[0x1A58EA9B0](v2, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71E0);
  sub_1A34C9160();
  *(swift_allocObject() + 16) = xmmword_1A34DAA10;
  sub_1A34C8DD0();
  *(v0 + 176) = *(v0 + 280);
  v6 = *(v0 + 264);
  *(v0 + 144) = *(v0 + 248);
  *(v0 + 160) = v6;
  v7 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v7;
  v8 = *(v0 + 232);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 128) = v8;

  sub_1A330B6A0(v0 + 80);
  sub_1A34C9150();

  sub_1A34C9170();
  sub_1A34C9180();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v9 = *(v0 + 384);

    sub_1A330B6F4(v9);
    sub_1A34C8CC0();
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 384), *(v0 + 392));
    sub_1A34C8AA0();
    v12 = *(*(v0 + 368) + 40);
    *(v0 + 488) = v12;
    v13 = v12;

    v14 = sub_1A34C9600();
    *(v0 + 496) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_1A330B4AC;
    v15 = swift_continuation_init();
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71E8);
    *(v0 + 288) = MEMORY[0x1E69E9820];
    *(v0 + 296) = 1107296256;
    *(v0 + 304) = sub_1A330B75C;
    *(v0 + 312) = &block_descriptor_6;
    *(v0 + 320) = v15;
    [v13 openSensitiveURLInBackground:v14 withOptions:0 completionHandler:v0 + 288];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A330B4AC()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);

  return MEMORY[0x1EEE6DFA0](sub_1A330B5B4, v2, v1);
}

uint64_t sub_1A330B5B4()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);

  sub_1A34C8CC0();
  (*(v4 + 8))(v3, v5);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A330B6F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A330B75C(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return MEMORY[0x1EEE6DED8](v6);
}

uint64_t (*sub_1A330B84C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33030BC;
}

uint64_t sub_1A330B8C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A330B9E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return ViewContactCardIntent.perform()(a1);
}

void __swiftcall ViewContactCardIntent.HighlightedDetail.init()(ContactsUICore::ViewContactCardIntent::HighlightedDetail *__return_ptr retstr)
{
  retstr->label._countAndFlagsBits = 0;
  retstr->label._object = 0xE000000000000000;
  retstr->value._countAndFlagsBits = 0;
  retstr->value._object = 0xE000000000000000;
  retstr->propertyType = ContactsUICore_ContactEntity_PropertyType_custom;
}

uint64_t static ViewContactCardIntent.HighlightedDetail.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34C95B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v4);
  sub_1A34C95C0();
  (*(v11 + 56))(v3, 1, 1, v10);
  return sub_1A34C8FF0();
}

uint64_t ViewContactCardIntent.HighlightedDetail.displayRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];

  MEMORY[0x1A58EEA30](32, 0xE100000000000000);
  MEMORY[0x1A58EEA30](v1, v2);
  return sub_1A34C8F00();
}

unint64_t sub_1A330BDF8()
{
  result = qword_1EB0C71F0;
  if (!qword_1EB0C71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C71F0);
  }

  return result;
}

unint64_t sub_1A330BE54()
{
  result = qword_1EB0C71F8;
  if (!qword_1EB0C71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C71F8);
  }

  return result;
}

unint64_t sub_1A330BEAC()
{
  result = qword_1EB0C7200;
  if (!qword_1EB0C7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7200);
  }

  return result;
}

unint64_t sub_1A330BF04()
{
  result = qword_1EB0C7208;
  if (!qword_1EB0C7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7208);
  }

  return result;
}

void sub_1A330BFBC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 6;
}

unint64_t sub_1A330BFD8()
{
  result = qword_1EB0C7210;
  if (!qword_1EB0C7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7210);
  }

  return result;
}

unint64_t sub_1A330C030()
{
  result = qword_1EB0C7218;
  if (!qword_1EB0C7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7218);
  }

  return result;
}

unint64_t sub_1A330C088()
{
  result = qword_1EB0C7220;
  if (!qword_1EB0C7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7220);
  }

  return result;
}

unint64_t sub_1A330C164()
{
  result = qword_1EB0C7238;
  if (!qword_1EB0C7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7238);
  }

  return result;
}

unint64_t sub_1A330C1B8()
{
  result = qword_1EB0C7240;
  if (!qword_1EB0C7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7240);
  }

  return result;
}

unint64_t sub_1A330C20C()
{
  result = qword_1EB0C7248;
  if (!qword_1EB0C7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7248);
  }

  return result;
}

unint64_t sub_1A330C264()
{
  result = qword_1EB0C7250;
  if (!qword_1EB0C7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7250);
  }

  return result;
}

unint64_t sub_1A330C2B8()
{
  result = qword_1EB0C2A40;
  if (!qword_1EB0C2A40)
  {
    sub_1A34C9780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A40);
  }

  return result;
}

unint64_t sub_1A330C3D0()
{
  result = qword_1EB0C7268;
  if (!qword_1EB0C7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7268);
  }

  return result;
}

uint64_t sub_1A330C424()
{
  v1 = *v0;
  v2 = v0[1];

  MEMORY[0x1A58EEA30](32, 0xE100000000000000);
  MEMORY[0x1A58EEA30](v1, v2);
  return sub_1A34C8F00();
}

uint64_t sub_1A330C4D0(uint64_t *a1, int a2)
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

uint64_t sub_1A330C518(uint64_t result, int a2, int a3)
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

uint64_t sub_1A330C570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A330C5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A330C60C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A330C6AC()
{
  result = qword_1EB0C7278;
  if (!qword_1EB0C7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7278);
  }

  return result;
}

uint64_t sub_1A330C708()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7280);
  __swift_project_value_buffer(v6, qword_1EB0C7280);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t (*static DeleteContactIntent.title.modify())()
{
  if (qword_1EB0C48B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C95B0();
  __swift_project_value_buffer(v0, qword_1EB0C7280);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A330CA04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7298);
  __swift_project_value_buffer(v10, qword_1EB0C7298);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t sub_1A330CD24@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_1A330CE04(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static DeleteContactIntent.description.modify())()
{
  if (qword_1EB0C48C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7298);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A330CF84@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
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
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_1A330D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

uint64_t sub_1A330D138()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

void (*DeleteContactIntent.entities.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33038D0;
}

uint64_t DeleteContactIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v26 - v3;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v26[0] = sub_1A34C95B0();
  v10 = *(v26[0] - 8);
  MEMORY[0x1EEE9AC00](v26[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v29, "entityProvider");
  v29[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C72C0);
  sub_1A34CD060();
  sub_1A34C9810();
  v11 = *MEMORY[0x1E6968DF0];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v12(v7, v11, v4);
  v13 = v28;
  sub_1A34C95C0();
  (*(v10 + 56))(v13, 0, 1, v26[0]);
  v30 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = sub_1A34C8C20();
  v18 = *(*(v17 - 8) + 56);
  v19 = v18(v26 - v16, 1, 1, v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  (v18)(v26 - v16, 1, 1, v17, v20);
  v21 = sub_1A34C8FA0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A4F8], v22);
  sub_1A3308738();
  result = sub_1A34C8E20();
  v27[1] = result;
  return result;
}

uint64_t DeleteContactIntent.perform()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A330D7EC, 0, 0);
}

uint64_t sub_1A330D7EC()
{
  v1 = v0[9];
  v2 = v0[10];
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1A34C8F70();
  v0[11] = v3;
  v0[12] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v0[6] = MEMORY[0x1E69E7CC0];
  sub_1A330DDB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C72D0);
  sub_1A3284D0C(&qword_1EB0C72D8, &qword_1EB0C72D0);
  sub_1A34CD960();
  v5 = sub_1A34C8F60();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[16] = v6;
  sub_1A34C8F50();
  v0[4] = v1;
  v0[5] = v2;
  v7 = sub_1A34C8C20();
  v0[17] = v7;
  v0[18] = *(v7 - 8);
  v8 = swift_task_alloc();
  v0[19] = v8;
  sub_1A330DE04(v8);
  v9 = swift_task_alloc();
  v0[20] = v9;
  v10 = sub_1A330E4E4();
  *v9 = v0;
  v9[1] = sub_1A330DA94;

  return MEMORY[0x1EEDB2D58](v4, v6, v8, &type metadata for DeleteContactIntent, v10);
}

uint64_t sub_1A330DA94()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[18];
    v3 = v2[19];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[14];
    v8 = v2[15];
    v10 = v2[12];
    v9 = v2[13];
    v11 = v2[11];
    (*(v4 + 8))(v3, v5);
    (*(v8 + 8))(v6, v7);
    (*(v10 + 8))(v9, v11);
    v12 = sub_1A330DD3C;
  }

  else
  {
    v13 = v2[18];
    v14 = v2[19];
    v16 = v2[16];
    v15 = v2[17];
    v17 = v2[14];
    v18 = v2[15];
    v20 = v2[12];
    v19 = v2[13];
    v21 = v2[11];
    (*(v13 + 8))(v14, v15);
    (*(v18 + 8))(v16, v17);
    (*(v20 + 8))(v19, v21);

    v12 = sub_1A330DC84;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1A330DC84()
{
  v1 = v0[21];
  sub_1A34C8DD0();
  sub_1A330E538(v0[7]);

  if (!v1)
  {
    sub_1A34C8CC0();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A330DD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A330DDB8()
{
  result = qword_1EB0C72C8;
  if (!qword_1EB0C72C8)
  {
    sub_1A34C8F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C72C8);
  }

  return result;
}

uint64_t sub_1A330DE04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34CD0A0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34C95A0();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A34C95B0();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v42 - v17;
  sub_1A34C8DD0();
  v18 = v61;
  v19 = *(v61 + 16);
  v52 = a1;
  if (v19)
  {
    v43 = v7;
    v44 = v4;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1A32EBB94(0, v19, 0);
    v20 = v61;
    v42 = v18;
    v21 = (v18 + 64);
    do
    {
      if (v21[2])
      {
        v22 = v21[1];
        v23 = v21[2];
      }

      else
      {
        v24 = v21[5];
        v25 = *(v21 - 1);
        v56 = v21[8];
        v57 = v25;
        v26 = *(v21 - 3);
        v58 = *(v21 - 2);
        v59 = v26;
        v60 = *(v21 - 4);
        sub_1A34C9010();
        sub_1A34C9010();
        sub_1A34C9010();
        sub_1A34C9010();
        sub_1A34C9010();

        v27 = v24;

        sub_1A34C9010();
        sub_1A34CD060();
        sub_1A34C9810();
        v22 = sub_1A34CD150();
        v23 = v28;
      }

      v61 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_1A32EBB94((v29 > 1), v30 + 1, 1);
        v20 = v61;
      }

      *(v20 + 16) = v30 + 1;
      v31 = v20 + 16 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v23;
      v21 += 13;
      --v19;
    }

    while (v19);

    v7 = v43;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v61 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
  sub_1A3284D0C(&qword_1EB0C0270, &qword_1EB0C7380);
  v60 = sub_1A34CD010();

  sub_1A34CD060();
  v32 = type metadata accessor for ContactEntityProvider();
  v33 = v48;
  *v48 = v32;
  v34 = *(v50 + 104);
  v34(v33, *MEMORY[0x1E6968E00], v7);
  sub_1A34C9810();
  sub_1A34C95C0();
  sub_1A34CD090();
  sub_1A34CD080();
  sub_1A34CD070();

  sub_1A34CD080();
  sub_1A34CD0B0();
  sub_1A34C9810();
  v34(v33, *MEMORY[0x1E6968DF0], v7);
  v35 = v45;
  sub_1A34C95C0();
  v36 = v49;
  v37 = *(v49 + 16);
  v38 = v53;
  v39 = v51;
  v37(v46, v53, v51);
  v37(v47, v35, v39);
  sub_1A34C8C10();
  v40 = *(v36 + 8);
  v40(v35, v39);
  return (v40)(v38, v39);
}

unint64_t sub_1A330E4E4()
{
  result = qword_1EB0C72E0;
  if (!qword_1EB0C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C72E0);
  }

  return result;
}

void sub_1A330E538(uint64_t a1)
{
  v28[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A34CDB70();
    v4 = a1 + 64;
    while (1)
    {
      v24 = v1;
      v5 = *(v4 + 40);

      v25 = v5;

      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C9010();
      sub_1A34C8AA0();
      v6 = v26;
      if (qword_1EB0C4900 != -1)
      {
        swift_once();
      }

      v7 = v6[2];
      v8 = sub_1A34CD0E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      v9 = sub_1A34CD350();
      v26 = 0;
      v10 = [v7 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v26];

      if (!v10)
      {
        break;
      }

      v11 = v26;

      [v10 mutableCopy];

      sub_1A34CD920();
      swift_unknownObjectRelease();

      sub_1A330EDD0();
      swift_dynamicCast();
      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
      v4 += 104;
      --v1;
      if (v24 == 1)
      {
        v2 = v27;
        goto LABEL_9;
      }
    }

    v12 = v26;
    sub_1A34C9580();

    swift_willThrow();
  }

  else
  {
LABEL_9:
    v13 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
    if (v2 >> 62)
    {
      goto LABEL_26;
    }

    v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v13 = v13;
      v15 = v13;
      if (!v14)
      {
        break;
      }

      v16 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1A58EF310](v16, v2);
        }

        else
        {
          if (v16 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v13 = *(v2 + 8 * v16 + 32);
        }

        v17 = v13;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v15 deleteContact_];

        ++v16;
        if (v18 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v23 = v13;
      v14 = sub_1A34CD9B0();
      v13 = v23;
    }

LABEL_20:

    sub_1A34C8AA0();
    v19 = *(v28[0] + 2);

    v28[0] = 0;
    v20 = [v19 executeSaveRequest:v15 error:v28];

    if (v20)
    {
      v21 = v28[0];
    }

    else
    {
      v22 = v28[0];
      sub_1A34C9580();

      swift_willThrow();
    }
  }
}

unint64_t sub_1A330EA20()
{
  result = qword_1EB0C72E8;
  if (!qword_1EB0C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C72E8);
  }

  return result;
}

unint64_t sub_1A330EAB4()
{
  result = qword_1EB0C72F0;
  if (!qword_1EB0C72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C72F0);
  }

  return result;
}

unint64_t sub_1A330EB0C()
{
  result = qword_1EB0C72F8;
  if (!qword_1EB0C72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C72F8);
  }

  return result;
}

uint64_t sub_1A330EBC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7280);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A330EC9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return DeleteContactIntent.perform()(a1);
}

unint64_t sub_1A330ED78()
{
  result = qword_1EB0C7300;
  if (!qword_1EB0C7300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7300);
  }

  return result;
}

unint64_t sub_1A330EDD0()
{
  result = qword_1EB0C2B00;
  if (!qword_1EB0C2B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C2B00);
  }

  return result;
}

uint64_t ContactEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  result = sub_1A34C8AC0();
  *a1 = result;
  return result;
}

uint64_t ContactEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A330EEF0, 0, 0);
}

uint64_t sub_1A330EEF0()
{
  v14 = v0;
  if (qword_1EB0C4770 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  v0[5] = __swift_project_value_buffer(v1, qword_1EB0EDAD0);

  v2 = sub_1A34CA230();
  v3 = sub_1A34CD630();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1A58EEBA0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_1A31EE23C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1A31E6000, v2, v3, "[ContactEntityQuery] Querying for identifiers %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  sub_1A34C8AA0();
  v0[6] = v0[2];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1A330F0E0;
  v11 = v0[3];

  return sub_1A3317578(v11);
}

uint64_t sub_1A330F0E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1A330F390;
  }

  else
  {

    v4 = sub_1A330F1FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A330F1FC()
{
  v15 = v0;

  v1 = sub_1A34CA230();
  v2 = sub_1A34CD630();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v4 + 16);

    *(v6 + 12) = 2080;
    v8 = MEMORY[0x1A58EEBA0](v5, MEMORY[0x1E69E6158]);
    v10 = sub_1A31EE23C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1A31E6000, v1, v2, "[ContactEntityQuery] Found %ld matching contacts for identifiers %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];
  v12 = v0[8];

  return v11(v12);
}

uint64_t sub_1A330F390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A330F3F4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  result = sub_1A34C8AC0();
  *a1 = result;
  return result;
}

uint64_t sub_1A330F4A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3311B38;

  return ContactEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A330F534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3292050;

  return MEMORY[0x1EEDB2EB8](a1, a2, a3);
}

uint64_t sub_1A330F5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A330F6A8;

  return MEMORY[0x1EEDB2EC8](a1, a2, a3, a4);
}

uint64_t sub_1A330F6A8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1A330F7A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A330883C();
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_1A330F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3292050;

  return MEMORY[0x1EEDB3B88](a1, a2, a3);
}

uint64_t ContactEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1A330F954, 0, 0);
}

uint64_t sub_1A330F954()
{
  v13 = v0;
  if (qword_1EB0C4770 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  v0[6] = __swift_project_value_buffer(v1, qword_1EB0EDAD0);

  v2 = sub_1A34CA230();
  v3 = sub_1A34CD630();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1A31EE23C(v5, v4, &v12);
    _os_log_impl(&dword_1A31E6000, v2, v3, "[ContactEntityQuery] Querying for matching name %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  sub_1A34C8AA0();
  v0[7] = v0[2];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1A330FB2C;
  v10 = v0[3];
  v9 = v0[4];

  return sub_1A3317968(v10, v9);
}

uint64_t sub_1A330FB2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1A330FDC4;
  }

  else
  {

    v4 = sub_1A330FC48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A330FC48()
{
  v13 = v0;

  v1 = sub_1A34CA230();
  v2 = sub_1A34CD630();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[9];
  if (v3)
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v4 + 16);

    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1A31EE23C(v6, v5, &v12);
    _os_log_impl(&dword_1A31E6000, v1, v2, "[ContactEntityQuery] Found %ld matching contact for string: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v7, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];
  v10 = v0[9];

  return v9(v10);
}

uint64_t sub_1A330FDC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A330FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A330FED0;

  return ContactEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A330FED0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1A330FFE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73B8);
  __swift_allocate_value_buffer(v0, qword_1EB0C7388);
  __swift_project_value_buffer(v0, qword_1EB0C7388);
  sub_1A3308738();
  return sub_1A34C8FD0();
}

uint64_t static ContactEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73B8);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7388);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ContactEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_1EB0C48C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73B8);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7388);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ContactEntityQuery.sortingOptions.modify())()
{
  if (qword_1EB0C48C8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73B8);
  __swift_project_value_buffer(v0, qword_1EB0C7388);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A3310300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73C0);
  __swift_allocate_value_buffer(v0, qword_1EB0C73A0);
  __swift_project_value_buffer(v0, qword_1EB0C73A0);
  type metadata accessor for ContactEntityPropertyComparator();
  sub_1A3308738();
  return sub_1A34C8F40();
}

uint64_t sub_1A3310394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73F0);
  swift_getKeyPath();
  sub_1A34C8ED0();
  sub_1A3308738();
  v0 = sub_1A34C9010();

  swift_getKeyPath();
  sub_1A34C9010();
  sub_1A34C8ED0();
  v1 = sub_1A34C9010();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A34DC310;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for ContactEntityPropertyComparator();
  sub_1A34C9010();
  v3 = sub_1A34C9000();

  return v3;
}

uint64_t sub_1A331052C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73F8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7400);
  swift_allocObject();
  sub_1A33119B0(&qword_1EB0C7408);
  sub_1A3311A74();
  sub_1A3311AD8();
  sub_1A34C8EB0();
  sub_1A3308738();
  sub_1A34C9050();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7430);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DAA10;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7410);
  type metadata accessor for ContactEntityPropertyComparator();
  sub_1A33119B0(&qword_1EB0C7438);
  v6 = sub_1A34C9040();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1A33107A8@<X0>(void *a1@<X8>)
{
  sub_1A34C8D00();
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for ContactEntityPropertyComparator();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ContactEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73C0);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C73A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ContactEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_1EB0C48D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73C0);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C73A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ContactEntityQuery.properties.modify())()
{
  if (qword_1EB0C48D0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73C0);
  __swift_project_value_buffer(v0, qword_1EB0C73A0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ContactEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3311B38;

  return (sub_1A3311220)(a1);
}

uint64_t sub_1A3310B20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73C0);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C73A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3310BEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C73B8);
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7388);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3310CD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A3311B2C;

  return (sub_1A3311220)(a2);
}

uint64_t ContactEntityQuery.init(entityProvider:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  sub_1A34C9010();
  sub_1A34C8AB0();
}

uint64_t sub_1A3310E50(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A3310E9C(a1, a2);
  sub_1A3310FCC(&unk_1F161A590);
  return v3;
}

uint64_t sub_1A3310E9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1A33110B8(v5, 0);
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

  result = sub_1A34CDB30();
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
        v10 = sub_1A34CD230();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A33110B8(v10, 0);
        result = sub_1A34CDA90();
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

uint64_t sub_1A3310FCC(uint64_t result)
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

  result = sub_1A331112C(result, v11, 1, v3);
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

void *sub_1A33110B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A331112C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7440);
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

uint64_t sub_1A3311220(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A3311244, 0, 0);
}

uint64_t sub_1A3311244()
{
  v15 = v0;
  if (qword_1EB0C4770 != -1)
  {
    swift_once();
  }

  v1 = sub_1A34CA250();
  v0[5] = __swift_project_value_buffer(v1, qword_1EB0EDAD0);

  v2 = sub_1A34CA230();
  v3 = sub_1A34CD630();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for ContactEntityPropertyComparator();
    v8 = MEMORY[0x1A58EEBA0](v4, v7);
    v10 = sub_1A31EE23C(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1A31E6000, v2, v3, "[ContactEntityQuery] Querying for matching property query %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  sub_1A34C8AA0();
  v0[6] = v0[2];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1A3311438;
  v12 = v0[3];

  return sub_1A3318218(v12);
}

uint64_t sub_1A3311438(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1A3311B34;
  }

  else
  {

    v4 = sub_1A3311554;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A3311554()
{
  v16 = v0;

  v1 = sub_1A34CA230();
  v2 = sub_1A34CD630();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v4 + 16);

    *(v6 + 12) = 2080;
    v8 = type metadata accessor for ContactEntityPropertyComparator();
    v9 = MEMORY[0x1A58EEBA0](v5, v8);
    v11 = sub_1A31EE23C(v9, v10, &v15);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1A31E6000, v1, v2, "[ContactEntityQuery] Found %ld matching contact for comparators: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1A58F1010](v7, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = v0[8];

  return v12(v13);
}

unint64_t sub_1A33116F0()
{
  result = qword_1EB0C73C8;
  if (!qword_1EB0C73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C73C8);
  }

  return result;
}

unint64_t sub_1A3311748()
{
  result = qword_1EB0C73D0;
  if (!qword_1EB0C73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C73D0);
  }

  return result;
}

unint64_t sub_1A33117A0()
{
  result = qword_1EB0C73D8;
  if (!qword_1EB0C73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C73D8);
  }

  return result;
}

unint64_t sub_1A33117FC()
{
  result = qword_1EB0C73E0;
  if (!qword_1EB0C73E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C73E8);
    sub_1A31EB75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C73E0);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1A34C9010();
  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1A34C9010();

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ContactEntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ContactEntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A33119B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7410);
    sub_1A3311A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3311A20()
{
  result = qword_1EB0C7418;
  if (!qword_1EB0C7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7418);
  }

  return result;
}

unint64_t sub_1A3311A74()
{
  result = qword_1EB0C7420;
  if (!qword_1EB0C7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7420);
  }

  return result;
}

unint64_t sub_1A3311AD8()
{
  result = qword_1EB0C7428;
  if (!qword_1EB0C7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7428);
  }

  return result;
}

uint64_t sub_1A3311B4C()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7448);
  __swift_project_value_buffer(v6, qword_1EB0C7448);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t static SearchInContactsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A3311DE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7460);
  __swift_project_value_buffer(v10, qword_1EB0C7460);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t static SearchInContactsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7460);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchInContactsIntent.description.setter(uint64_t a1)
{
  if (qword_1EB0C48E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7460);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchInContactsIntent.description.modify())()
{
  if (qword_1EB0C48E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7460);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3312320@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7460);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A33123E0(uint64_t a1)
{
  if (qword_1EB0C48E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7460);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1A33124A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C74C0);
  v0 = sub_1A34C8EA0();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E695A230], v0);
  qword_1EB0C7478 = v3;
  return result;
}

uint64_t static SearchInContactsIntent.searchScopes.getter()
{
  if (qword_1EB0C48E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SearchInContactsIntent.searchScopes.setter(uint64_t a1)
{
  if (qword_1EB0C48E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB0C7478 = a1;
}

uint64_t (*static SearchInContactsIntent.searchScopes.modify())()
{
  if (qword_1EB0C48E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A331270C@<X0>(void *a1@<X8>)
{
  if (qword_1EB0C48E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB0C7478;
}

uint64_t sub_1A331278C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB0C48E8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB0C7478 = v1;
}

uint64_t sub_1A3312838(char *a1)
{
  v2 = sub_1A34C8EF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v3 + 16);
  v8 = v7(&v11 - v6, a1, v2, v5);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v7(&v11 - v6, &v11 - v6, v2, v9);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
  (*(v3 + 8))(&v11 - v6, v2);
}

uint64_t SearchInContactsIntent.criteria.setter(uint64_t a1)
{
  v2 = sub_1A34C8EF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8DE0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SearchInContactsIntent.criteria.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t SearchInContactsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v23 - v3;
  v4 = sub_1A34C95A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v23[0] = sub_1A34C95B0();
  v10 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v26, "entityProvider");
  v26[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7480);
  sub_1A34CD060();
  sub_1A34C9810();
  v11 = *MEMORY[0x1E6968DF0];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v12(v7, v11, v4);
  v13 = v25;
  sub_1A34C95C0();
  (*(v10 + 56))(v13, 0, 1, v23[0]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v23 - v15;
  v17 = sub_1A34C8C20();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = sub_1A34C8FA0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 104))(v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A4F8], v19);
  result = sub_1A34C8E30();
  v24[1] = result;
  return result;
}

uint64_t SearchInContactsIntent.perform()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  sub_1A34CD450();
  *(v2 + 48) = sub_1A34CD440();
  v4 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A33130D4, v4, v3);
}

uint64_t sub_1A33130D4()
{

  sub_1A34C8AA0();
  v1 = *(*(v0 + 16) + 24);
  swift_unknownObjectRetain();

  if (v1)
  {
    v2 = sub_1A34C8EF0();
    v3 = *(v2 - 8);
    v4 = swift_task_alloc();
    sub_1A34C8DD0();
    sub_1A34C8EE0();
    (*(v3 + 8))(v4, v2);
    v5 = sub_1A34CD0E0();

    [v1 searchForString_];

    sub_1A34C8CC0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A331328C();
    swift_allocError();
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1A331328C()
{
  result = qword_1EB0C7488;
  if (!qword_1EB0C7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7488);
  }

  return result;
}

unint64_t sub_1A33132E4()
{
  result = qword_1EB0C7490;
  if (!qword_1EB0C7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7490);
  }

  return result;
}

unint64_t sub_1A331333C()
{
  result = qword_1EB0C7498;
  if (!qword_1EB0C7498)
  {
    sub_1A34C8EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7498);
  }

  return result;
}

uint64_t sub_1A3313388(uint64_t a1)
{
  v2 = sub_1A34C8EF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8DE0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1A3313478(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33030BC;
}

unint64_t sub_1A33134F0()
{
  result = qword_1EB0C74A0;
  if (!qword_1EB0C74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C74A0);
  }

  return result;
}

unint64_t sub_1A3313548()
{
  result = qword_1EB0C74A8;
  if (!qword_1EB0C74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C74A8);
  }

  return result;
}

unint64_t sub_1A33135A0()
{
  result = qword_1EB0C74B0;
  if (!qword_1EB0C74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C74B0);
  }

  return result;
}

uint64_t sub_1A3313654@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A33136FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return SearchInContactsIntent.perform()(a1);
}

unint64_t sub_1A33137EC()
{
  result = qword_1EB0C74B8;
  if (!qword_1EB0C74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C74B8);
  }

  return result;
}

uint64_t sub_1A3313840()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C74C8);
  __swift_project_value_buffer(v6, qword_1EB0C74C8);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t (*static CreateContactIntent.title.modify())()
{
  if (qword_1EB0C48F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C95B0();
  __swift_project_value_buffer(v0, qword_1EB0C74C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A3313B3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C74E0);
  __swift_project_value_buffer(v10, qword_1EB0C74E0);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t (*static CreateContactIntent.description.modify())()
{
  if (qword_1EB0C48F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C74E0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3313F58()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.namePrefix.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3314138()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.givenName.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3314318()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.middleName.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33144F8()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.familyName.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33030BC;
}

uint64_t sub_1A33146D8()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.nameSuffix.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A33148B8()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.phoneNumber.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t sub_1A3314A98()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*CreateContactIntent.emailAddress.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t CreateContactIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v104 = v95 - v3;
  v102 = sub_1A34C95A0();
  v4 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v6 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = sub_1A34C95B0();
  v9 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70A0);
  strcpy(v122, "entityProvider");
  v122[15] = -18;
  sub_1A34CDA40();
  sub_1A34C8AF0();
  sub_1A34C8AE0();
  *a1 = sub_1A34C8AC0();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C74F8);
  sub_1A34CD060();
  sub_1A34C9810();
  v12 = *MEMORY[0x1E6968DF0];
  v13 = *(v4 + 104);
  v14 = v102;
  v13(v6, v12, v102);
  v101 = v13;
  v103 = v4 + 104;
  v15 = v11;
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v13(v6, v12, v14);
  v16 = v104;
  sub_1A34C95C0();
  v108 = *(v9 + 56);
  v98 = v9 + 56;
  v108(v16, 0, 1, v107);
  v123 = 0;
  v124 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C75B0);
  v97 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v95 - v105;
  v99 = sub_1A34CD050();
  v20 = *(v99 - 8);
  v100 = *(v20 + 56);
  v109 = v20 + 56;
  v100(v19, 1, 1, v99);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  v111 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v106 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v95 - v106;
  v119 = sub_1A34C8C20();
  v24 = *(v119 - 8);
  v118 = *(v24 + 56);
  v120 = v24 + 56;
  v118(v23, 1, 1, v119);
  v114 = sub_1A34C8FA0();
  v116 = *(*(v114 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v114);
  v117 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = *MEMORY[0x1E695A4F8];
  v28 = *(v27 + 104);
  v113 = v27 + 104;
  v115 = v28;
  v28(v95 - v117, v25);
  v110[1] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v29 = v12;
  v96 = v12;
  v30 = v12;
  v31 = v102;
  v32 = v101;
  v101(v6, v30, v102);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v32(v6, v29, v31);
  v33 = v104;
  sub_1A34C95C0();
  v34 = v107;
  v35 = (v108)(v33, 0, 1, v107);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v123 = 0;
  v124 = 0;
  v37 = (v100)(v95 - v105, 1, 1, v99, v36);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v39 = (v118)(v95 - v106, 1, 1, v119, v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v115(v95 - v117, v112, v114, v40);
  v110[2] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v41 = v96;
  v42 = v102;
  v43 = v101;
  v101(v6, v96, v102);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v43(v6, v41, v42);
  v44 = v104;
  sub_1A34C95C0();
  v45 = (v108)(v44, 0, 1, v34);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v123 = 0;
  v124 = 0;
  v47 = (v100)(v95 - v105, 1, 1, v99, v46);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = (v118)(v95 - v106, 1, 1, v119, v48);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v115(v95 - v117, v112, v114, v50);
  v95[1] = v15;
  v110[3] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v51 = v96;
  v52 = v102;
  v53 = v101;
  v101(v6, v96, v102);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v53(v6, v51, v52);
  v54 = v104;
  sub_1A34C95C0();
  v55 = (v108)(v54, 0, 1, v107);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v123 = 0;
  v124 = 0;
  v57 = v99;
  v58 = (v100)(v95 - v105, 1, 1, v99, v56);
  v59 = MEMORY[0x1EEE9AC00](v58);
  v60 = (v118)(v95 - v106, 1, 1, v119, v59);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v115(v95 - v117, v112, v114, v61);
  v110[4] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v62 = v96;
  v63 = v102;
  v64 = v101;
  v101(v6, v96, v102);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v64(v6, v62, v63);
  v65 = v104;
  sub_1A34C95C0();
  v66 = (v108)(v65, 0, 1, v107);
  v67 = MEMORY[0x1EEE9AC00](v66);
  v123 = 0;
  v124 = 0;
  v68 = v57;
  v69 = v100;
  v70 = (v100)(v95 - v105, 1, 1, v68, v67);
  v71 = MEMORY[0x1EEE9AC00](v70);
  v72 = (v118)(v95 - v106, 1, 1, v119, v71);
  v73 = MEMORY[0x1EEE9AC00](v72);
  v115(v95 - v117, v112, v114, v73);
  v110[5] = sub_1A34C8E60();
  sub_1A34CD060();
  sub_1A34C9810();
  v74 = v96;
  v75 = v101;
  v101(v6, v96, v63);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v75(v6, v74, v63);
  v76 = v104;
  sub_1A34C95C0();
  v77 = (v108)(v76, 0, 1, v107);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v123 = 0;
  v124 = 0;
  v79 = v69(v95 - v105, 1, 1, v99, v78);
  v80 = MEMORY[0x1EEE9AC00](v79);
  v81 = (v118)(v95 - v106, 1, 1, v119, v80);
  v82 = MEMORY[0x1EEE9AC00](v81);
  v115(v95 - v117, v112, v114, v82);
  v83 = sub_1A34C8E60();
  v84 = v110;
  v110[6] = v83;
  sub_1A34CD060();
  sub_1A34C9810();
  v85 = v96;
  v86 = v102;
  v87 = v101;
  v101(v6, v96, v102);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v87(v6, v85, v86);
  sub_1A34C95C0();
  v88 = (v108)(v76, 0, 1, v107);
  v89 = MEMORY[0x1EEE9AC00](v88);
  v123 = 0;
  v124 = 0;
  v90 = (v100)(v95 - v105, 1, 1, v99, v89);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v92 = (v118)(v95 - v106, 1, 1, v119, v91);
  v93 = MEMORY[0x1EEE9AC00](v92);
  v115(v95 - v117, v112, v114, v93);
  result = sub_1A34C8E60();
  v84[7] = result;
  return result;
}

uint64_t CreateContactIntent.perform()(uint64_t a1)
{
  *(v2 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  v3 = sub_1A34C9650();
  *(v2 + 368) = v3;
  *(v2 + 376) = *(v3 - 8);
  *(v2 + 384) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  *(v2 + 392) = v4;
  *(v2 + 400) = v5;
  *(v2 + 232) = *(v1 + 1);
  *(v2 + 248) = *(v1 + 3);
  *(v2 + 264) = *(v1 + 5);
  *(v2 + 280) = v1[7];

  return MEMORY[0x1EEE6DFA0](sub_1A331621C, 0, 0);
}

uint64_t sub_1A331621C()
{
  *(v0 + 224) = *(v0 + 400);
  v1 = sub_1A3316730();
  v2 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  [v2 addContact:v1 toContainerWithIdentifier:0];
  sub_1A34C8AA0();
  v3 = *(*(v0 + 328) + 16);

  *(v0 + 336) = 0;
  v4 = [v3 executeSaveRequest:v2 error:v0 + 336];

  v5 = *(v0 + 336);
  v6 = *(v0 + 360);
  if (v4)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 376);
    v9 = v5;
    sub_1A34CDAD0();

    v10 = [v1 identifier];
    v11 = sub_1A34CD110();
    v13 = v12;

    MEMORY[0x1A58EEA30](v11, v13);

    sub_1A34C9640();

    result = (*(v8 + 48))(v6, 1, v7);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 392);
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    v18 = *(v0 + 360);

    (*(v17 + 32))(v15, v18, v16);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 368);
    v21 = *(v0 + 376);
    [v1 copy];
    sub_1A34CD920();
    swift_unknownObjectRelease();
    sub_1A31EC194(0, &qword_1ED854E70);
    swift_dynamicCast();
    ContactEntity.init(_:)(*(v0 + 320), (v0 + 16));
    v23 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v24 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v24;
    *(v0 + 216) = *(v0 + 112);
    v25 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v25;
    *(v0 + 152) = v23;
    v26 = sub_1A34C8CD0();
    v27 = v1;
    v28 = *(v26 - 8);
    v29 = swift_task_alloc();
    (*(v21 + 16))(v19, v20, v22);
    sub_1A34C8CE0();
    sub_1A31EB75C();
    sub_1A3316F88();
    sub_1A34C8CA0();

    (*(v28 + 8))(v29, v26);
    (*(v21 + 8))(v20, v22);
    sub_1A330B6A0(v0 + 16);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = v5;
    sub_1A34C9580();

    swift_willThrow();

    v30 = *(v0 + 8);
  }

  return v30();
}

void *sub_1A3316730()
{
  v1 = sub_1A34C9330();
  v57 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v49[0] = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v49 - v6;
  v54 = v0[5];
  v8 = v0[7];
  v56 = v0[6];
  v61 = v8;
  sub_1A34C8AA0();

  v9 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_1A34C8DD0();
  v10 = v63;
  sub_1A34C8DD0();
  v59 = v63;
  sub_1A34C8DD0();
  v49[1] = v62;
  v58 = v63;
  sub_1A34C8DD0();
  v49[2] = v62;
  v55 = v63;
  v11 = v57;
  sub_1A34C8DD0();
  v49[3] = v62;
  v54 = v63;
  sub_1A34C8DD0();
  v49[4] = v62;
  v56 = v63;
  sub_1A34C8DD0();
  v49[5] = v62;
  v61 = v63;
  v12 = *(v11 + 56);
  v52 = v7;
  v51 = v1;
  v12(v7, 1, 1, v1);
  v50 = v9;
  [v9 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  v13 = v64;
  v14 = v10 != 0;
  v53 = v10;
  if (v10)
  {
    v15 = sub_1A34CD0E0();
    [v13 setNamePrefix_];
  }

  if (v59)
  {
    v16 = sub_1A34CD0E0();
    [v13 setGivenName_];

    v14 = 1;
  }

  v17 = v60;
  v18 = v61;
  v19 = v56;
  if (v58)
  {
    v20 = sub_1A34CD0E0();
    [v13 setMiddleName_];

    v14 = 1;
  }

  if (v55)
  {
    v21 = sub_1A34CD0E0();
    [v13 setFamilyName_];

    v14 = 1;
  }

  if (v54)
  {
    v22 = sub_1A34CD0E0();
    [v13 setNameSuffix_];

    v14 = 1;
  }

  v23 = 0x1FAE38000;
  if (v19)
  {
    v24 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v25 = sub_1A34CD0E0();
    v26 = [v24 initWithStringValue_];

    v27 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A34DAA30;
    *(inited + 32) = v27;
    v29 = v27;
    v30 = [v13 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v31 = sub_1A34CD370();

    v62 = v31;
    sub_1A33B938C(inited);
    v18 = v61;
    v32 = sub_1A34CD350();

    [v13 setPhoneNumbers_];

    v17 = v60;
    v23 = 0x1FAE38000uLL;
    v14 = 1;
  }

  if (v18)
  {
    v33 = v23;
    v34 = sub_1A34CD0E0();
    v35 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) (v33 + 3576)];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1A34DAA30;
    *(v36 + 32) = v35;
    v37 = v35;
    v38 = [v13 emailAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
    v39 = sub_1A34CD370();

    v62 = v39;
    sub_1A33B9360(v36);
    v17 = v60;
    v40 = sub_1A34CD350();

    [v13 setEmailAddresses_];

    v14 = 1;
  }

  v41 = v52;
  sub_1A3303784(v52, v17);
  v42 = v57;
  v43 = v17;
  v44 = v17;
  v45 = v51;
  if ((*(v57 + 48))(v43, 1, v51) == 1)
  {
    sub_1A33037F4(v44);
    if (!v14)
    {
      sub_1A33173D4();
      swift_allocError();
      swift_willThrow();

      sub_1A33037F4(v41);
      return v13;
    }
  }

  else
  {
    v46 = v49[0];
    (*(v42 + 32))(v49[0], v44, v45);
    v47 = sub_1A34C9220();
    [v13 setBirthday_];

    (*(v42 + 8))(v46, v45);
  }

  sub_1A33037F4(v41);
  return v13;
}

unint64_t sub_1A3316F88()
{
  result = qword_1EB0C7500;
  if (!qword_1EB0C7500)
  {
    sub_1A34C8CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7500);
  }

  return result;
}

unint64_t sub_1A3316FD8()
{
  result = qword_1EB0C7508;
  if (!qword_1EB0C7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7508);
  }

  return result;
}

unint64_t sub_1A3317030()
{
  result = qword_1EB0C7510;
  if (!qword_1EB0C7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7510);
  }

  return result;
}

unint64_t sub_1A33170FC()
{
  result = qword_1EB0C7518;
  if (!qword_1EB0C7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7518);
  }

  return result;
}

uint64_t sub_1A3317150@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C48F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C74C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A3317210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return CreateContactIntent.perform()(a1);
}

uint64_t sub_1A33172DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A3317324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3317384(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C7528);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A33173D4()
{
  result = qword_1EB0C7538;
  if (!qword_1EB0C7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7538);
  }

  return result;
}

id sub_1A3317428()
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB0C4900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1A34CD0E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v3 = sub_1A34CD350();
  v8[0] = 0;
  v4 = [v1 unifiedContactWithIdentifier:v2 keysToFetch:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1A34C9580();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1A3317578(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A3317608, 0, 0);
}

uint64_t sub_1A3317608()
{
  v31 = v0;
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EB0C4900 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = objc_opt_self();
  v3 = sub_1A34CD350();
  v4 = [v2 predicateForContactsWithIdentifiers_];

  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v6 = sub_1A34CD350();
  v0[2] = 0;
  v7 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v6 error:v0 + 2];

  v8 = v0[2];
  if (v7)
  {
    sub_1A31EE0D8();
    v9 = sub_1A34CD370();
    v10 = v8;

    if (v9 >> 62)
    {
      v11 = sub_1A34CD9B0();
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_6:
        v27 = MEMORY[0x1E69E7CC0];
        sub_1A32EBCB4(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);
        }

        v12 = 0;
        v13 = v27;
        if ((v9 & 0xC000000000000001) == 0)
        {
          goto LABEL_9;
        }

LABEL_8:
        for (i = MEMORY[0x1A58EF310](v12, v9); ; i = *(v9 + 8 * v12 + 32))
        {
          ContactEntity.init(_:)(i, v28);
          v16 = *(v27 + 16);
          v15 = *(v27 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1A32EBCB4((v15 > 1), v16 + 1, 1);
          }

          *(v27 + 16) = v16 + 1;
          v17 = v27 + 104 * v16;
          v18 = v28[0];
          v19 = v28[2];
          *(v17 + 48) = v28[1];
          *(v17 + 64) = v19;
          *(v17 + 32) = v18;
          v20 = v28[3];
          v21 = v28[4];
          v22 = v28[5];
          *(v17 + 128) = v29;
          *(v17 + 96) = v21;
          *(v17 + 112) = v22;
          *(v17 + 80) = v20;
          if (v11 - 1 == v12)
          {
            break;
          }

          ++v12;
          if ((v9 & 0xC000000000000001) != 0)
          {
            goto LABEL_8;
          }

LABEL_9:
          ;
        }

        goto LABEL_21;
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v26 = v0[1];

    return v26(v13);
  }

  v23 = v8;
  sub_1A34C9580();

  swift_willThrow();
  v24 = v0[1];

  return v24();
}

uint64_t sub_1A3317968(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A33179FC, 0, 0);
}

uint64_t sub_1A33179FC()
{
  v78 = v0;
  v77 = *MEMORY[0x1E69E9840];
  if (qword_1EB0C4900 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = sub_1A34CD0E0();
  v4 = [v2 predicateForContactsMatchingName_];

  v5 = *(v1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v7 = sub_1A34CD350();
  v0[2] = 0;
  v8 = &selRef_iCloudSignedInToUseNicknames;
  v9 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v7 error:v0 + 2];

  v10 = v0[2];
  if (!v9)
  {
    v25 = v10;
    sub_1A34C9580();

    swift_willThrow();
    goto LABEL_18;
  }

  sub_1A31EE0D8();
  v11 = sub_1A34CD370();
  v12 = v10;

  if (v11 >> 62)
  {
    v13 = sub_1A34CD9B0();
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_22:

    v15 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_41:

LABEL_42:
      v48 = v0[1];

      return v48(v15);
    }

    goto LABEL_23;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_6:
  v69 = MEMORY[0x1E69E7CC0];
  sub_1A32EBCB4(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
LABEL_60:
    v35 = sub_1A34CD9B0();
    goto LABEL_26;
  }

  v68 = v2;
  v14 = 0;
  v15 = v69;
  if ((v11 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  for (i = MEMORY[0x1A58EF310](v14, v11); ; i = *(v11 + 8 * v14 + 32))
  {
    ContactEntity.init(_:)(i, &v70);
    v69 = v15;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1A32EBCB4((v17 > 1), v18 + 1, 1);
      v15 = v69;
    }

    *(v15 + 16) = v18 + 1;
    v19 = v15 + 104 * v18;
    v20 = v70;
    v21 = v72;
    *(v19 + 48) = v71;
    *(v19 + 64) = v21;
    *(v19 + 32) = v20;
    v22 = v73;
    v23 = v74;
    v24 = v75;
    *(v19 + 128) = v76;
    *(v19 + 96) = v23;
    *(v19 + 112) = v24;
    *(v19 + 80) = v22;
    if (v13 - 1 == v14)
    {
      break;
    }

    ++v14;
    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    ;
  }

  v2 = v68;
  v8 = 0x1E76EC000;
  if (*(v15 + 16))
  {
    goto LABEL_41;
  }

LABEL_23:

  v28 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v29 = sub_1A34CD0E0();
  v30 = [v28 initWithStringValue_];

  v11 = [v2 predicateForContactsMatchingPhoneNumber:v30 prefixHint:0 groupIdentifiers:0 limitToOneResult:0];
  v31 = sub_1A34CD350();
  v0[2] = 0;
  v32 = [v5 *(v8 + 680)];

  v33 = v0[2];
  if (!v32)
  {
    v47 = v33;
    sub_1A34C9580();

    swift_willThrow();
    v4 = v11;
    goto LABEL_18;
  }

  v67 = v2;
  v8 = sub_1A34CD370();
  v34 = v33;

  if (v8 >> 62)
  {
    goto LABEL_60;
  }

  v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  v66 = v11;
  if (v35)
  {
    v69 = MEMORY[0x1E69E7CC0];
    v36 = &v69;
    sub_1A32EBCB4(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    v37 = 0;
    v15 = v69;
    if ((v8 & 0xC000000000000001) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    for (j = MEMORY[0x1A58EF310](v37, v8); ; j = *(v8 + 8 * v37 + 32))
    {
      ContactEntity.init(_:)(j, &v70);
      v69 = v15;
      v40 = *(v15 + 16);
      v39 = *(v15 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1A32EBCB4((v39 > 1), v40 + 1, 1);
        v15 = v69;
      }

      *(v15 + 16) = v40 + 1;
      v41 = v15 + 104 * v40;
      v42 = v70;
      v43 = v72;
      *(v41 + 48) = v71;
      *(v41 + 64) = v43;
      *(v41 + 32) = v42;
      v44 = v73;
      v45 = v74;
      v46 = v75;
      *(v41 + 128) = v76;
      *(v41 + 96) = v45;
      *(v41 + 112) = v46;
      *(v41 + 80) = v44;
      if (v35 - 1 == v37)
      {
        break;
      }

      ++v37;
      if ((v8 & 0xC000000000000001) != 0)
      {
        goto LABEL_29;
      }

LABEL_30:
      ;
    }

    v11 = v66;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  if (*(v15 + 16))
  {

    goto LABEL_41;
  }

  v49 = sub_1A34CD0E0();
  v2 = [v67 predicateForContactsMatchingEmailAddress_];

  v50 = sub_1A34CD350();
  v0[2] = 0;
  v51 = [v5 unifiedContactsMatchingPredicate:v2 keysToFetch:v50 error:v0 + 2];

  v52 = v0[2];
  if (v51)
  {
    v6 = sub_1A34CD370();
    v53 = v52;

    v36 = v66;
    if (!(v6 >> 62))
    {
      v54 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
LABEL_48:
        v69 = MEMORY[0x1E69E7CC0];
        sub_1A32EBCB4(0, v54 & ~(v54 >> 63), 0);
        if (v54 < 0)
        {
          __break(1u);
        }

        v55 = 0;
        v15 = v69;
        if ((v6 & 0xC000000000000001) == 0)
        {
          goto LABEL_51;
        }

LABEL_50:
        for (k = MEMORY[0x1A58EF310](v55, v6); ; k = *(v6 + 8 * v55 + 32))
        {
          ContactEntity.init(_:)(k, &v70);
          v69 = v15;
          v58 = *(v15 + 16);
          v57 = *(v15 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1A32EBCB4((v57 > 1), v58 + 1, 1);
            v15 = v69;
          }

          *(v15 + 16) = v58 + 1;
          v59 = v15 + 104 * v58;
          v60 = v70;
          v61 = v72;
          *(v59 + 48) = v71;
          *(v59 + 64) = v61;
          *(v59 + 32) = v60;
          v62 = v73;
          v63 = v74;
          v64 = v75;
          *(v59 + 128) = v76;
          *(v59 + 96) = v63;
          *(v59 + 112) = v64;
          *(v59 + 80) = v62;
          if (v54 - 1 == v55)
          {
            break;
          }

          ++v55;
          if ((v6 & 0xC000000000000001) != 0)
          {
            goto LABEL_50;
          }

LABEL_51:
          ;
        }

        goto LABEL_42;
      }

LABEL_63:

      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }

LABEL_62:
    v54 = sub_1A34CD9B0();
    if (v54)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  v65 = v52;
  sub_1A34C9580();

  swift_willThrow();
  v4 = v2;
LABEL_18:

  v26 = v0[1];

  return v26();
}

uint64_t sub_1A3318218(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A33182A8, 0, 0);
}

uint64_t sub_1A33182A8()
{
  v30 = v0;
  v29 = *MEMORY[0x1E69E9840];
  v1 = v0[3];
  if (!*(v1 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  if (qword_1EB0C4900 != -1)
  {
    swift_once();
    v1 = v0[3];
  }

  v2 = *(type metadata accessor for ContactEntityPropertyComparator() - 8);
  v3 = sub_1A3318834(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = v3;
  v6 = *(v0[4] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v7 = sub_1A34CD350();
  v0[2] = 0;
  v8 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:v0 + 2];

  v9 = v0[2];
  if (v8)
  {
    sub_1A31EE0D8();
    v10 = sub_1A34CD370();
    v11 = v9;

    if (v10 >> 62)
    {
      v12 = sub_1A34CD9B0();
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_8:
        sub_1A32EBCB4(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
        }

        v13 = 0;
        if ((v10 & 0xC000000000000001) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        for (i = MEMORY[0x1A58EF310](v13, v10); ; i = *(v10 + 8 * v13 + 32))
        {
          ContactEntity.init(_:)(i, v27);
          v16 = *(v4 + 16);
          v15 = *(v4 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1A32EBCB4((v15 > 1), v16 + 1, 1);
          }

          *(v4 + 16) = v16 + 1;
          v17 = v4 + 104 * v16;
          v18 = v27[0];
          v19 = v27[2];
          *(v17 + 48) = v27[1];
          *(v17 + 64) = v19;
          *(v17 + 32) = v18;
          v20 = v27[3];
          v21 = v27[4];
          v22 = v27[5];
          *(v17 + 128) = v28;
          *(v17 + 96) = v21;
          *(v17 + 112) = v22;
          *(v17 + 80) = v20;
          if (v12 - 1 == v13)
          {
            break;
          }

          ++v13;
          if ((v10 & 0xC000000000000001) != 0)
          {
            goto LABEL_10;
          }

LABEL_11:
          ;
        }

        goto LABEL_24;
      }
    }

LABEL_24:
    v26 = v0[1];

    return v26(v4);
  }

  v23 = v9;
  sub_1A34C9580();

  swift_willThrow();
  v24 = v0[1];

  return v24();
}

id sub_1A331861C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34E49B0;
  v1 = *MEMORY[0x1E695C240];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C330];
  v4 = *MEMORY[0x1E695C208];
  *(v0 + 48) = *MEMORY[0x1E695C330];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C1D0];
  *(v0 + 64) = *MEMORY[0x1E695C1D0];
  v6 = objc_opt_self();
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = [v6 descriptorForRequiredKeysForStyle_];
  v13 = *MEMORY[0x1E695C360];
  *(v0 + 72) = v12;
  *(v0 + 80) = v13;
  qword_1EB0EDD28 = v0;

  return v13;
}

uint64_t ContactEntityProvider.__allocating_init(contactStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1A31EADB4(a1, 0);

  return v2;
}

id *ContactEntityProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

unint64_t sub_1A33187E0()
{
  result = qword_1EB0C7548;
  if (!qword_1EB0C7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7548);
  }

  return result;
}

id sub_1A3318834(uint64_t a1)
{
  v2 = sub_1A34C9550();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ContactEntityPropertyComparator();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1A3318C48(a1, &v32 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = objc_opt_self();
      v20 = objc_allocWithZone(MEMORY[0x1E695CF50]);
      v21 = sub_1A34CD0E0();

      v22 = [v20 initWithStringValue_];

      v23 = [v19 predicateForContactsMatchingPhoneNumber:v22 prefixHint:0 groupIdentifiers:0 limitToOneResult:0];
    }

    else
    {
      v26 = objc_opt_self();
      v27 = sub_1A34CD0E0();

      v23 = [v26 predicateForContactsMatchingEmailAddress_];
    }
  }

  else
  {
    sub_1A3318C48(a1, v14);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1A3318D08(v14, v11);
      sub_1A3318D78(v11, v8);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_1A3318DE8(v11);
        sub_1A3318DE8(v8);
        sub_1A3318CAC(v17);
        return 0;
      }

      (*(v3 + 32))(v5, v8, v2);
      v29 = objc_opt_self();
      v30 = sub_1A34C9520();
      v31 = [v29 localizedStringFromPersonNameComponents:v30 style:0 options:0];

      sub_1A34CD110();
      (*(v3 + 8))(v5, v2);
      sub_1A3318DE8(v11);
    }

    v24 = objc_opt_self();
    v25 = sub_1A34CD0E0();

    v23 = [v24 predicateForContactsMatchingName_];

    sub_1A3318CAC(v17);
  }

  return v23;
}

uint64_t sub_1A3318C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactEntityPropertyComparator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3318CAC(uint64_t a1)
{
  v2 = type metadata accessor for ContactEntityPropertyComparator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3318D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3318D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3318DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C70B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static FetchContactIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB0C7550 = a1;
  return result;
}

uint64_t sub_1A3318F3C()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0C7558);
  __swift_project_value_buffer(v0, qword_1EB0C7558);
  return sub_1A34CA240();
}

uint64_t sub_1A3318FF8()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7570);
  __swift_project_value_buffer(v6, qword_1EB0C7570);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t sub_1A3319228@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_1A33192CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7588);
  __swift_project_value_buffer(v10, qword_1EB0C7588);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t static FetchContactIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4918 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7588);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static FetchContactIntent.description.setter(uint64_t a1)
{
  if (qword_1EB0C4918 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7588);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static FetchContactIntent.description.modify())()
{
  if (qword_1EB0C4918 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7588);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A3319808@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4918 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7588);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A33198C8(uint64_t a1)
{
  if (qword_1EB0C4918 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7588);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1A33199C4()
{

  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*FetchContactIntent.identifiers.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A33030BC;
}

uint64_t FetchContactIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - v2;
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = sub_1A34C95B0();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75A8);
  sub_1A34CD060();
  sub_1A34C9810();
  v10 = *MEMORY[0x1E6968DF0];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_1A34C95C0();
  sub_1A34CD060();
  sub_1A34C9810();
  v11(v6, v10, v3);
  v12 = v27;
  sub_1A34C95C0();
  (*(v9 + 56))(v12, 0, 1, v26);
  v30 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C75B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1A34CD050();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = sub_1A34C8C20();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = sub_1A34C8FA0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E695A4F8], v22);
  result = sub_1A34C8E60();
  *v29 = result;
  return result;
}

uint64_t FetchContactIntent.perform()(uint64_t a1)
{
  v2[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ContactFetchResultEntity();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v3 = sub_1A34CA250();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[22] = v4;
  v2[23] = v5;
  sub_1A34CD450();
  v2[24] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A331A1A8, v7, v6);
}

uint64_t sub_1A331A1A8()
{
  v73 = v0;
  v72[2] = *MEMORY[0x1E69E9840];

  if (qword_1EB0C4778 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_1EB0EDAE8);
  (*(v3 + 16))(v1, v4, v2);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  sub_1A34C8DD0();
  sub_1A34C9EE0();

  sub_1A34C9EA0();
  if (qword_1EB0C4908 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[20], qword_1EB0C7558);
  sub_1A34C9010();
  v5 = sub_1A34CA230();
  v6 = sub_1A34CD660();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72[0] = v8;
    *v7 = 136315138;
    sub_1A34C8DD0();
    v9 = MEMORY[0x1A58EEBA0](v0[14], MEMORY[0x1E69E6158]);
    v11 = v10;

    v12 = sub_1A31EE23C(v9, v11, v72);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A31E6000, v5, v6, "Search for identifiers: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v7, -1, -1);
  }

  v13 = v0[23];
  v14 = sub_1A34C9E70();
  sub_1A331ACB0(v14, v15);

  v16 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v72[0] = v13;
  sub_1A331B324();
  v17 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v18 = sub_1A34CD350();

  v19 = [v17 initWithKeysToFetch_];

  v20 = objc_opt_self();
  sub_1A34C8DD0();
  v21 = sub_1A34CD350();

  v22 = [v20 predicateForContactsWithIdentifiers_];

  [v19 setPredicate_];
  v0[10] = MEMORY[0x1E69E7CC0];
  v23 = swift_allocObject();
  *(v23 + 16) = v0 + 10;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1A331C890;
  *(v24 + 24) = v23;
  v0[6] = sub_1A331C898;
  v0[7] = v24;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A331B8EC;
  v0[5] = &block_descriptor_7;
  v25 = _Block_copy(v0 + 2);
  sub_1A34C9010();

  v0[11] = 0;
  v26 = [v16 enumerateContactsWithFetchRequest:v19 error:v0 + 11 usingBlock:v25];
  _Block_release(v25);
  v27 = v0[11];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v26)
  {
    v28 = objc_opt_self();
    sub_1A31EE0D8();

    v29 = sub_1A34CD350();

    v30 = [v28 dataWithContacts_];

    v31 = sub_1A34C9690();
    v33 = v32;

    sub_1A31EC1E0(v31, v33);
    v34 = sub_1A34CA230();
    v35 = sub_1A34CD630();
    v71 = v33;
    v70 = v16;
    v69 = v19;
    if (!os_log_type_enabled(v34, v35))
    {
      sub_1A31EC234(v31, v33);
      v40 = v33;
LABEL_23:
      v45 = v0[19];
      v67 = v0[18];
      v66 = v45;
      v65 = v0[16];

      ContactFetchResultEntity.init()(v45);
      v46 = sub_1A34C8BD0();
      v47 = *(v46 - 8);
      v48 = swift_task_alloc();
      sub_1A31EC1E0(v31, v40);
      sub_1A34C8DD0();
      v0[13] = v0[12];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
      sub_1A329A208();
      v49 = sub_1A34CD010();
      v51 = v50;

      v72[0] = v49;
      v72[1] = v51;
      MEMORY[0x1A58EEA30](0x746361746E6F632ELL, 0xEC00000061746144);
      v52 = sub_1A34CA200();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v68 = v31;
      sub_1A34C8BB0();
      swift_task_alloc();
      (*(v47 + 16))();
      sub_1A34C8D10();
      (*(v47 + 8))(v48, v46);

      sub_1A331C8C8(v66, v67);
      v53 = sub_1A34CA230();
      v54 = sub_1A34CD630();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v0[18];
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v72[0] = v58;
        *v57 = 136380675;
        v59 = ContactFetchResultEntity.description.getter();
        v61 = v60;
        sub_1A331C92C(v56);
        v62 = sub_1A31EE23C(v59, v61, v72);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_1A31E6000, v53, v54, "Result: %{private}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1A58F1010](v58, -1, -1);
        MEMORY[0x1A58F1010](v57, -1, -1);
      }

      else
      {

        sub_1A331C92C(v56);
      }

      v63 = v0[19];
      sub_1A331CF24(&qword_1EB0C75C8, type metadata accessor for ContactFetchResultEntity);
      sub_1A34C8CB0();

      sub_1A31EC234(v68, v71);
      sub_1A331C92C(v63);

      sub_1A34C9E80();

      v39 = v0[1];
      goto LABEL_27;
    }

    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v37 != 2)
      {
        v38 = 0;
        goto LABEL_22;
      }

      v42 = *(v31 + 16);
      v41 = *(v31 + 24);
      v43 = __OFSUB__(v41, v42);
      v38 = v41 - v42;
      if (!v43)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v37)
    {
      v38 = BYTE6(v33);
LABEL_22:
      *(v36 + 4) = v38;
      v44 = v36;
      v40 = v71;
      sub_1A31EC234(v31, v71);
      _os_log_impl(&dword_1A31E6000, v34, v35, "Encoded contact data: %ld bytes", v44, 0xCu);
      MEMORY[0x1A58F1010](v44, -1, -1);
      goto LABEL_23;
    }

    LODWORD(v38) = HIDWORD(v31) - v31;
    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v38 = v38;
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
  }

  sub_1A34C9580();

  swift_willThrow();

  sub_1A34C9E80();

  v39 = v0[1];
LABEL_27:

  return v39();
}

void sub_1A331ACB0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1A34CD0E0();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v21 = 0u;
    v22 = 0u;
LABEL_13:
    sub_1A32F751C(&v21);
    return;
  }

  v7 = sub_1A34CD0E0();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast() && v19)
  {
    if (qword_1EB0C4768 != -1)
    {
      swift_once();
    }

    v9 = sub_1A34CA250();
    __swift_project_value_buffer(v9, qword_1EB0EDAB8);

    sub_1A34C9010();
    v10 = sub_1A34CA230();
    v11 = sub_1A34CD660();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v21 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_1A31EE23C(a1, a2, &v21);
      *(v12 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C76A8);
      v14 = sub_1A34CD160();
      v16 = v15;

      v17 = sub_1A31EE23C(v14, v16, &v21);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v19;
      _os_log_impl(&dword_1A31E6000, v10, v11, "%s %s sleeping %lu secs before fetch", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    else
    {
    }

    if (DWORD1(v19))
    {
      __break(1u);
    }

    else
    {
      v18 = 1000000 * v19;
      if ((v18 & 0xFFFFFFFF00000000) == 0)
      {
        usleep(v18);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1A331AFDC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1A34CD0E0();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v21 = 0u;
    v22 = 0u;
LABEL_13:
    sub_1A32F751C(&v21);
    return;
  }

  v7 = sub_1A34CD0E0();
  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast() && v19)
  {
    if (qword_1EB0C4768 != -1)
    {
      swift_once();
    }

    v9 = sub_1A34CA250();
    __swift_project_value_buffer(v9, qword_1EB0EDAB8);

    sub_1A34C9010();
    sub_1A34C9010();
    v10 = sub_1A34CA230();
    v11 = sub_1A34CD660();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v21 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_1A31EE23C(a1, a2, &v21);
      *(v12 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7698);
      v14 = sub_1A34CD160();
      v16 = v15;

      v17 = sub_1A31EE23C(v14, v16, &v21);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v19;
      _os_log_impl(&dword_1A31E6000, v10, v11, "%s %s sleeping %lu secs before fetch", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    else
    {
    }

    if (DWORD1(v19))
    {
      __break(1u);
    }

    else
    {
      v18 = 1000000 * v19;
      if ((v18 & 0xFFFFFFFF00000000) == 0)
      {
        usleep(v18);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A331B324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34E4B10;
  v85 = *MEMORY[0x1E695C258];
  v1 = *MEMORY[0x1E695C2D8];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v1;
  v2 = *MEMORY[0x1E695C300];
  v3 = *MEMORY[0x1E695C240];
  v4 = MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C300];
  *(v0 + 56) = v3;
  v5 = *v4;
  v6 = *MEMORY[0x1E695C230];
  *(v0 + 64) = *v4;
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C390];
  v8 = *MEMORY[0x1E695C308];
  *(v0 + 80) = *MEMORY[0x1E695C390];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C310];
  v84 = *MEMORY[0x1E695C348];
  v10 = *MEMORY[0x1E695C348];
  v11 = MEMORY[0x1E695C350];
  *(v0 + 96) = *MEMORY[0x1E695C310];
  *(v0 + 104) = v10;
  v12 = *v11;
  v88 = *MEMORY[0x1E695C340];
  v13 = *MEMORY[0x1E695C340];
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  v83 = *MEMORY[0x1E695C328];
  v91 = *MEMORY[0x1E695C358];
  v14 = *MEMORY[0x1E695C358];
  *(v0 + 128) = *MEMORY[0x1E695C328];
  *(v0 + 136) = v14;
  v82 = *MEMORY[0x1E695C1F8];
  v90 = *MEMORY[0x1E695C2C8];
  v15 = *MEMORY[0x1E695C2C8];
  v16 = MEMORY[0x1E695C1C0];
  *(v0 + 144) = *MEMORY[0x1E695C1F8];
  *(v0 + 152) = v15;
  v86 = *v16;
  v94 = *MEMORY[0x1E695C1D0];
  v17 = *MEMORY[0x1E695C1D0];
  *(v0 + 160) = v86;
  *(v0 + 168) = v17;
  v89 = *MEMORY[0x1E695C318];
  v98 = *MEMORY[0x1E695C320];
  v18 = *MEMORY[0x1E695C320];
  *(v0 + 176) = *MEMORY[0x1E695C318];
  *(v0 + 184) = v18;
  v87 = *MEMORY[0x1E695C278];
  v96 = *MEMORY[0x1E695C400];
  v19 = *MEMORY[0x1E695C400];
  v20 = MEMORY[0x1E695C270];
  *(v0 + 192) = *MEMORY[0x1E695C278];
  *(v0 + 200) = v19;
  v92 = *v20;
  v100 = *MEMORY[0x1E695C410];
  v21 = *MEMORY[0x1E695C410];
  *(v0 + 208) = v92;
  *(v0 + 216) = v21;
  v95 = *MEMORY[0x1E695C330];
  v105 = *MEMORY[0x1E695C208];
  v22 = *MEMORY[0x1E695C208];
  *(v0 + 224) = *MEMORY[0x1E695C330];
  *(v0 + 232) = v22;
  v93 = *MEMORY[0x1E695C360];
  v103 = *MEMORY[0x1E695C1F0];
  v23 = *MEMORY[0x1E695C1F0];
  v24 = MEMORY[0x1E695C418];
  *(v0 + 240) = *MEMORY[0x1E695C360];
  *(v0 + 248) = v23;
  v99 = *v24;
  v25 = *v24;
  v26 = *MEMORY[0x1E695C3A8];
  v109 = *MEMORY[0x1E695C3A8];
  *(v0 + 256) = v25;
  *(v0 + 264) = v26;
  v102 = *MEMORY[0x1E695C3D0];
  v27 = *MEMORY[0x1E695C2B0];
  v113 = *MEMORY[0x1E695C2B0];
  *(v0 + 272) = *MEMORY[0x1E695C3D0];
  *(v0 + 280) = v27;
  v28 = *MEMORY[0x1E695C1E0];
  v108 = *MEMORY[0x1E695C1E0];
  *(v0 + 288) = v1;
  *(v0 + 296) = v28;
  v97 = *MEMORY[0x1E695C3F8];
  v107 = *MEMORY[0x1E695C1E8];
  v29 = *MEMORY[0x1E695C1E8];
  *(v0 + 304) = *MEMORY[0x1E695C3F8];
  *(v0 + 312) = v29;
  v101 = *MEMORY[0x1E695C2E0];
  v30 = *MEMORY[0x1E695C1D8];
  v112 = *MEMORY[0x1E695C1D8];
  *(v0 + 320) = *MEMORY[0x1E695C2E0];
  *(v0 + 328) = v30;
  v106 = *MEMORY[0x1E695C298];
  v31 = *MEMORY[0x1E695C280];
  v115 = *MEMORY[0x1E695C280];
  *(v0 + 336) = *MEMORY[0x1E695C298];
  *(v0 + 344) = v31;
  v104 = *MEMORY[0x1E695C2E8];
  *(v0 + 352) = *MEMORY[0x1E695C2E8];
  *(v0 + 360) = @"imageBackgroundColorsData";
  v110 = *MEMORY[0x1E695C420];
  v32 = *MEMORY[0x1E695C3C8];
  v116 = *MEMORY[0x1E695C3C8];
  *(v0 + 368) = *MEMORY[0x1E695C420];
  *(v0 + 376) = v32;
  v114 = *MEMORY[0x1E695C3C0];
  v33 = *MEMORY[0x1E695C338];
  v119 = *MEMORY[0x1E695C338];
  *(v0 + 384) = *MEMORY[0x1E695C3C0];
  *(v0 + 392) = v33;
  v111 = *MEMORY[0x1E695C238];
  v118 = *MEMORY[0x1E695C200];
  *(v0 + 400) = *MEMORY[0x1E695C238];
  *(v0 + 408) = v118;
  v117 = objc_opt_self();
  v34 = v1;
  v35 = v85;
  v36 = v2;
  v37 = v3;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v84;
  v44 = v12;
  v45 = v88;
  v46 = v83;
  v47 = v91;
  v48 = v82;
  v49 = v90;
  v50 = v86;
  v51 = v94;
  v52 = v89;
  v53 = v98;
  v54 = v87;
  v55 = v96;
  v56 = v92;
  v57 = v100;
  v58 = v95;
  v59 = v105;
  v60 = v93;
  v61 = v103;
  v62 = v99;
  v63 = v109;
  v64 = v102;
  v65 = v113;
  v66 = v108;
  v67 = v97;
  v68 = v107;
  v69 = v101;
  v70 = v112;
  v71 = v106;
  v72 = v115;
  v73 = v104;
  v74 = @"imageBackgroundColorsData";
  v75 = v110;
  v76 = v116;
  v77 = v114;
  v78 = v119;
  v79 = v111;
  v80 = v118;
  *(v0 + 416) = [v117 descriptorForRequiredKeysForStyle_];
  return v0;
}

uint64_t sub_1A331B850(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x1A58EEB60]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A34CD390();
  }

  return sub_1A34CD3B0();
}

void sub_1A331B8EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t ContactFetchResultEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_1A34C95A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A34C95B0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A34C8A90();
  v12 = *(type metadata accessor for ContactFetchResultEntity() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75D0);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v6 + 104))(v8, *MEMORY[0x1E6968DF0], v5);
  sub_1A34C95C0();
  *(a1 + v12) = sub_1A34C8D50();
  v13 = sub_1A34C8BD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = sub_1A34CA200();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = sub_1A34C8BB0();
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v14 + 16))(&v21[-v16], &v21[-v16], v13, v19);
  sub_1A34C8D10();
  return (*(v14 + 8))(&v21[-v16], v13);
}

uint64_t ContactFetchResultEntity.contactData.setter(uint64_t a1)
{
  type metadata accessor for ContactFetchResultEntity();
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34C8D10();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1A331BE18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4910 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7570);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A331BF04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3292050;

  return FetchContactIntent.perform()(a1);
}

uint64_t static ContactFetchResultEntity.typeDisplayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A34C95A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A34C95B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A34C95C0();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A34C8FF0();
}

uint64_t ContactFetchResultEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34C9780();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A331C364(char *a1)
{
  v2 = sub_1A34C8BD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v3 + 16);
  v7(&v11 - v6, a1, v2, v5);
  ResultEntity = type metadata accessor for ContactFetchResultEntity();
  v9 = MEMORY[0x1EEE9AC00](ResultEntity);
  v7(&v11 - v6, &v11 - v6, v2, v9);
  sub_1A34C8D10();
  return (*(v3 + 8))(&v11 - v6, v2);
}

uint64_t (*ContactFetchResultEntity.contactData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContactFetchResultEntity();
  *(v3 + 32) = sub_1A34C8CF0();
  return sub_1A3309020;
}

uint64_t ContactFetchResultEntity.description.getter()
{
  sub_1A34CDAD0();

  v9[0] = 0xD000000000000027;
  v9[1] = 0x80000001A350DF10;
  v0 = sub_1A34C8BD0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactFetchResultEntity();
  sub_1A34C8D00();
  v4 = sub_1A34C8BA0();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_1A34C9670();
  MEMORY[0x1A58EEA30](v7);

  sub_1A31EC234(v4, v6);
  return v9[0];
}

uint64_t type metadata accessor for ContactFetchResultEntity()
{
  result = qword_1EB0C7660;
  if (!qword_1EB0C7660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A331C8C8(uint64_t a1, uint64_t a2)
{
  ResultEntity = type metadata accessor for ContactFetchResultEntity();
  (*(*(ResultEntity - 8) + 16))(a2, a1, ResultEntity);
  return a2;
}

uint64_t sub_1A331C92C(uint64_t a1)
{
  ResultEntity = type metadata accessor for ContactFetchResultEntity();
  (*(*(ResultEntity - 8) + 8))(a1, ResultEntity);
  return a1;
}

unint64_t sub_1A331C98C()
{
  result = qword_1EB0C75D8;
  if (!qword_1EB0C75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C75D8);
  }

  return result;
}

unint64_t sub_1A331C9E4()
{
  result = qword_1EB0C75E0;
  if (!qword_1EB0C75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C75E0);
  }

  return result;
}

unint64_t sub_1A331CA3C()
{
  result = qword_1EB0C75E8;
  if (!qword_1EB0C75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C75E8);
  }

  return result;
}

void sub_1A331CDF0()
{
  sub_1A34C9780();
  if (v0 <= 0x3F)
  {
    sub_1A331CE74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A331CE74()
{
  if (!qword_1EB0C7670)
  {
    sub_1A34C8BD0();
    sub_1A331CED8();
    v0 = sub_1A34C8DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C7670);
    }
  }
}

unint64_t sub_1A331CED8()
{
  result = qword_1EB0C7960;
  if (!qword_1EB0C7960)
  {
    sub_1A34C8BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C7960);
  }

  return result;
}

uint64_t sub_1A331CF24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A331CF98()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A32EBCB4(0, v2, 0);
    v3 = v17;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      ContactEntity.init(identifier:)(v5, v6, v18);
      v8 = *(v17 + 16);
      v7 = *(v17 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A32EBCB4((v7 > 1), v8 + 1, 1);
      }

      *(v17 + 16) = v8 + 1;
      v9 = v17 + 104 * v8;
      v10 = v18[0];
      v11 = v18[2];
      *(v9 + 48) = v18[1];
      *(v9 + 64) = v11;
      *(v9 + 32) = v10;
      v12 = v18[3];
      v13 = v18[4];
      v14 = v18[5];
      *(v9 + 128) = v19;
      *(v9 + 96) = v13;
      *(v9 + 112) = v14;
      *(v9 + 80) = v12;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v15 = *(v0 + 8);

  return v15(v3);
}

uint64_t sub_1A331D0E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3311B38;

  return ContactEntityIDPassthroughQuery.entities(for:)(a1);
}

uint64_t sub_1A331D174(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A331D4E4();
  *v5 = v2;
  v5[1] = sub_1A3292C58;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t ContactEntityIDPassthroughQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A331D248, 0, 0);
}

uint64_t sub_1A331D248()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C76B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;

  ContactEntity.init(identifier:)(v1, v2, (v3 + 32));
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A331D2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A331D320, 0, 0);
}

uint64_t sub_1A331D320()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C76B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA10;

  ContactEntity.init(identifier:)(v1, v2, (v4 + 32));
  *v3 = v4;
  v5 = v0[1];

  return v5();
}

unint64_t sub_1A331D3DC()
{
  result = qword_1EB0C76B8;
  if (!qword_1EB0C76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C76B8);
  }

  return result;
}

unint64_t sub_1A331D434()
{
  result = qword_1EB0C76C0;
  if (!qword_1EB0C76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C76C0);
  }

  return result;
}

unint64_t sub_1A331D48C()
{
  result = qword_1EB0C76C8;
  if (!qword_1EB0C76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C76C8);
  }

  return result;
}

unint64_t sub_1A331D4E4()
{
  result = qword_1EB0C76D0;
  if (!qword_1EB0C76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C76D0);
  }

  return result;
}

uint64_t type metadata accessor for ContactEntityPropertyComparator()
{
  result = qword_1EB0C76D8;
  if (!qword_1EB0C76D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A331D5E4()
{
  sub_1A331D650();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1A331D650()
{
  if (!qword_1EB0C76E8)
  {
    sub_1A34C9550();
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C76E8);
    }
  }
}

uint64_t sub_1A331D6A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A34CD9B0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1A32EBB94(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A58EF310](0, a1);
    result = sub_1A34CD0F0();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1A34CD0F0();
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1A331D854(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A34CD9B0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBBF4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A58EF310](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A32EBBF4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A31FA144(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A32EBBF4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A31FA144(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A331DA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A32EBC14(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7A10);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1A32EBC14((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A331DB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A32EBCD4(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A32EBCD4((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for ContactLikenessKindAppEnum;
      v12 = sub_1A3327AF0();
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_1A31EE568(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A331DC3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A32EBBF4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C79C0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A32EBBF4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1A31FA144(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A331DD4C()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0C76F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB0C76F0);
  if (qword_1EB0C4780 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB0EDB00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static FetchContactAvatarIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB0C7708 = a1;
  return result;
}

uint64_t sub_1A331DF00()
{
  v0 = sub_1A34C95A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A34C95B0();
  __swift_allocate_value_buffer(v6, qword_1EB0C7710);
  __swift_project_value_buffer(v6, qword_1EB0C7710);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A34C95C0();
}

uint64_t static FetchContactAvatarIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4928 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C95B0();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7710);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A331E198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A34C95A0();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34C9840();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A34CD0C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A34C95B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A34C8E80();
  __swift_allocate_value_buffer(v10, qword_1EB0C7728);
  __swift_project_value_buffer(v10, qword_1EB0C7728);
  sub_1A34CD060();
  sub_1A34C9810();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A34C95C0();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A34C8E90();
}

uint64_t static FetchContactAvatarIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4930 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7728);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static FetchContactAvatarIntent.description.setter(uint64_t a1)
{
  if (qword_1EB0C4930 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7728);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static FetchContactAvatarIntent.description.modify())()
{
  if (qword_1EB0C4930 != -1)
  {
    swift_once();
  }

  v0 = sub_1A34C8E80();
  __swift_project_value_buffer(v0, qword_1EB0C7728);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A331E6D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4930 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7728);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A331E794(uint64_t a1)
{
  if (qword_1EB0C4930 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34C8E80();
  v3 = __swift_project_value_buffer(v2, qword_1EB0C7728);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1A331E890()
{

  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C8DE0();
}

uint64_t (*FetchContactAvatarIntent.identifiers.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t (*FetchContactAvatarIntent.kinds.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_1A34C8DC0();
  return sub_1A3309020;
}

uint64_t FetchContactAvatarIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C72B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v39 = &v29 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75A8);
  v35 = sub_1A34C95B0();
  v4 = *(v35 - 8);
  v34 = *(v4 + 56);
  v36 = v4 + 56;
  v34(v3, 1, 1, v35);
  v40 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C75B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1A34CD050();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v29 - v33;
  v12 = sub_1A34C8C20();
  v32 = *(*(v12 - 8) + 56);
  v32(v11, 1, 1, v12);
  v13 = sub_1A34C8FA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v31 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = *MEMORY[0x1E695A4F8];
  v29 = *(v14 + 104);
  v29(&v29 - v31, v16);
  v17 = v39;
  v18 = sub_1A34C8E50();
  v19 = v38;
  *v38 = v18;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7740);
  v20 = (v34)(v17, 1, 1, v35);
  v40 = 0;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = v32;
  v23 = v33;
  v24 = (v32)(&v29 - v33, 1, 1, v12, v21);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v22(&v29 - v23, 1, 1, v12, v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  (v29)(&v29 - v31, v30, v13, v27);
  sub_1A3325B88();
  result = sub_1A34C8E00();
  v19[1] = result;
  return result;
}

uint64_t FetchContactAvatarIntent.perform()(uint64_t a1)
{
  *(v2 + 192) = a1;
  v3 = sub_1A34C95A0();
  *(v2 + 200) = v3;
  *(v2 + 208) = *(v3 - 8);
  *(v2 + 216) = swift_task_alloc();
  sub_1A34C9840();
  *(v2 + 224) = swift_task_alloc();
  sub_1A34CD0C0();
  *(v2 + 232) = swift_task_alloc();
  sub_1A34C95B0();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = type metadata accessor for ContactAvatarFetchResultEntity(0);
  *(v2 + 256) = swift_task_alloc();
  v4 = sub_1A34CA250();
  *(v2 + 264) = v4;
  *(v2 + 272) = *(v4 - 8);
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = *v1;
  sub_1A34CD450();
  *(v2 + 312) = sub_1A34CD440();
  v6 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A331F128, v6, v5);
}

uint64_t sub_1A331F128()
{
  v88 = v0;
  v87[1] = *MEMORY[0x1E69E9840];

  if (qword_1EB0C4780 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v4 = __swift_project_value_buffer(v2, qword_1EB0EDB00);
  (*(v3 + 16))(v1, v4, v2);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  sub_1A34C8DD0();
  sub_1A331DB54(v0[14]);

  sub_1A34C9EF0();

  sub_1A34C8DD0();
  v5 = sub_1A34C9EE0();

  sub_1A34C9EA0();
  if (qword_1EB0C4920 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[33], qword_1EB0C76F0);
  sub_1A34C9010();
  sub_1A34C9010();
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD660();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v87[0] = v9;
    *v8 = 136315394;
    sub_1A34C8DD0();
    v10 = MEMORY[0x1A58EEBA0](v0[22], &type metadata for ContactLikenessKindAppEnum);
    v12 = v11;

    v13 = sub_1A31EE23C(v10, v12, v87);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    sub_1A34C8DD0();
    v14 = MEMORY[0x1A58EEBA0](v0[23], MEMORY[0x1E69E6158]);
    v16 = v15;

    v17 = sub_1A31EE23C(v14, v16, v87);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Search for %s for identifiers: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v9, -1, -1);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  v18 = v0[37];
  v19 = v0[38];
  v20 = sub_1A34C9E70();
  sub_1A331AFDC(v20, v21);

  v22 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v22 setIncludeAcceptedIntroductions_];
  v82 = v22;
  v85 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  sub_1A34C8DD0();
  v24 = sub_1A331FE50(v0[16]);

  *(inited + 32) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A34E5180;
  v26 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v27 = *MEMORY[0x1E695C3C8];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  v86 = v5;
  v28 = *MEMORY[0x1E695C330];
  v29 = *MEMORY[0x1E695C208];
  *(v25 + 48) = *MEMORY[0x1E695C330];
  *(v25 + 56) = v29;
  *(inited + 40) = v25;
  v30 = v27;
  v31 = v28;
  v32 = v29;
  sub_1A3320158(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7760);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v34 = sub_1A34CD350();

  v35 = [v33 initWithKeysToFetch_];

  v36 = objc_opt_self();
  sub_1A34C8DD0();
  v37 = sub_1A34CD350();

  v38 = [v36 predicateForContactsWithIdentifiers_];

  [v35 setPredicate_];
  v39 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v39 setStyle_];
  v0[18] = MEMORY[0x1E69E7CC0];
  v40 = swift_allocObject();
  v40[2] = v86;
  v40[3] = v18;
  v40[4] = v19;
  v40[5] = v39;
  v40[6] = v0 + 18;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1A3325BFC;
  *(v41 + 24) = v40;
  v0[12] = sub_1A3325C0C;
  v0[13] = v41;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1A331B8EC;
  v0[11] = &block_descriptor_8;
  v42 = _Block_copy(v0 + 8);
  sub_1A34C9010();
  sub_1A34C9010();
  sub_1A34C9010();
  v43 = v39;
  sub_1A34C9010();

  v0[19] = 0;
  v44 = [v85 enumerateContactsWithFetchRequest:v35 error:v0 + 19 usingBlock:v42];
  _Block_release(v42);
  v45 = v0[19];
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  v83 = v43;
  aBlock = v35;
  if (v44)
  {
    v46 = v0[31];
    v47 = v0[27];
    v48 = v0[26];
    v76 = v0[32];
    v77 = v0[25];
    v79 = objc_opt_self();
    v49 = [v79 currentEnvironment];
    v50 = [v49 timeProvider];

    [v50 timestamp];
    v52 = v51;
    swift_unknownObjectRelease();
    sub_1A34C8A90();
    v53 = *(v46 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7770);
    sub_1A34CD060();
    sub_1A34C9810();
    (*(v48 + 104))(v47, *MEMORY[0x1E6968DF0], v77);
    sub_1A34C95C0();
    sub_1A3325C3C(&qword_1EB0C7778, type metadata accessor for ContactAvatarEntity);
    *(v76 + v53) = sub_1A34C8D40();
    v0[20] = MEMORY[0x1E69E7CC0];
    sub_1A34C8D10();
    v0[21] = v0[18];

    sub_1A34C8D10();
    v54 = [v79 currentEnvironment];
    v55 = [v54 timeProvider];

    [v55 timestamp];
    v57 = v56;
    swift_unknownObjectRelease();
    sub_1A34C9EB0();
    sub_1A34C9010();
    v58 = sub_1A34CA230();
    v59 = sub_1A34CD660();

    v60 = os_log_type_enabled(v58, v59);
    v62 = v0[34];
    v61 = v0[35];
    v63 = v0[33];
    if (v60)
    {
      v64 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v87[0] = v78;
      *v64 = 136315394;
      v81 = v61;
      v65 = sub_1A34C9E70();
      v80 = v63;
      v67 = sub_1A31EE23C(v65, v66, v87);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = [objc_opt_self() stringForTimeInterval_];
      v69 = sub_1A34CD110();
      v71 = v70;

      v72 = sub_1A31EE23C(v69, v71, v87);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_1A31E6000, v58, v59, "%s Time to make result: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v78, -1, -1);
      MEMORY[0x1A58F1010](v64, -1, -1);

      (*(v62 + 8))(v81, v80);
    }

    else
    {

      (*(v62 + 8))(v61, v63);
    }

    v74 = v0[32];
    sub_1A3325C3C(&unk_1EB0C7780, type metadata accessor for ContactAvatarFetchResultEntity);
    sub_1A34C8CB0();

    sub_1A3327994(v74, type metadata accessor for ContactAvatarFetchResultEntity);

    sub_1A34C9E80();

    v73 = v0[1];
  }

  else
  {
    sub_1A34C9580();

    swift_willThrow();

    sub_1A34C9E80();

    v73 = v0[1];
  }

  return v73();
}

uint64_t sub_1A331FE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v29 = *MEMORY[0x1E695C420];
  v27 = *MEMORY[0x1E695C400];
  v28 = *MEMORY[0x1E695C1C8];
  v26 = *MEMORY[0x1E695C268];
  v3 = *MEMORY[0x1E695C410];
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *v2++;
    v5 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    if (v6 <= 1)
    {
      v8 = swift_allocObject();
      if (v5)
      {
        *(v8 + 16) = xmmword_1A34DC310;
        *(v8 + 32) = v3;
        v14 = objc_opt_self();
        v15 = v3;
        *(v8 + 40) = [v14 descriptorForRequiredKeysForStyle_];
      }

      else
      {
        *(v8 + 16) = xmmword_1A34DAA30;
        *(v8 + 32) = v3;
        v10 = v3;
      }
    }

    else if (v5 == 2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1A34DC310;
      *(v8 + 32) = v27;
      *(v8 + 40) = v26;
      v11 = v27;
      v12 = v26;
    }

    else
    {
      v7 = swift_allocObject();
      v8 = v7;
      *(v7 + 16) = xmmword_1A34DAA30;
      v9 = (v5 == 3 ? v28 : v29);
      *(v7 + 32) = v9;
      v13 = v9;
    }

    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v4 >> 62;
    if (v4 >> 62)
    {
      v25 = sub_1A34CD9B0();
      v19 = v25 + v16;
      if (__OFADD__(v25, v16))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_24;
      }

      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v16)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }
    }

    else if (v17)
    {
LABEL_24:
      sub_1A34CD9B0();
    }

    result = sub_1A34CDB00();
    v4 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_26:
    if ((*(v21 + 24) >> 1) - *(v21 + 16) < v16)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
    swift_arrayInitWithCopy();

    if (v16 >= 1)
    {
      v22 = *(v21 + 16);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v21 + 16) = v24;
    }

LABEL_4:
    if (!--v1)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1A3320158(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v27 = a1 + 32;
  v3 = &unk_1EB0C7760;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_1A34CD9B0();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_1A34CD9B0();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1A34CD9B0();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1A34CDB00();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1A32D0FF4(&qword_1EB0CA390, v3);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v18 = sub_1A329988C(v29, i, v5);
        v19 = v3;
        v21 = *v20;
        swift_unknownObjectRetain();
        (v18)(v29, 0);
        *(v16 + 8 * i) = v21;
        v3 = v19;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v7 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v7);
      v24 = v22 + v7;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_1A34CD9B0();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_1A332042C(void *a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, char *a6, size_t *a7)
{
  v320 = a6;
  v326 = a5;
  v314 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C75C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v317 = &v307 - v11;
  v324 = type metadata accessor for ContactAvatarEntity(0);
  v319 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v308 = &v307 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v310 = (&v307 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v307 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v312 = &v307 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v311 = &v307 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v315 = (&v307 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v313 = &v307 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v316 = (&v307 - v27);
  v28 = sub_1A34CA250();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v321 = &v307 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v307 - v32;
  sub_1A34C9EB0();
  sub_1A34C9010();
  v34 = a1;
  v35 = sub_1A34CA230();
  v36 = sub_1A34CD660();

  v37 = os_log_type_enabled(v35, v36);
  v325 = v28;
  v327 = v34;
  v322 = a3;
  v323 = v29;
  v318 = a7;
  v309 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v328 = v39;
    *v38 = 136315394;
    v40 = sub_1A34C9E70();
    v42 = sub_1A31EE23C(v40, v41, &v328);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = [v34 identifier];
    v44 = sub_1A34CD110();
    v46 = v45;

    v47 = sub_1A31EE23C(v44, v46, &v328);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_1A31E6000, v35, v36, "%s Will process contact %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v39, -1, -1);
    MEMORY[0x1A58F1010](v38, -1, -1);
  }

  (*(v29 + 8))(v33, v28);
  sub_1A34C8DD0();
  v48 = *(v328 + 2);
  v49 = (v328 + 32);
  while (1)
  {
    if (!v48)
    {

LABEL_16:
      sub_1A34C8DD0();
      v74 = *(v328 + 2);
      v75 = (v328 + 32);
      while (1)
      {
        if (!v74)
        {

          v78 = v326;
          goto LABEL_33;
        }

        v77 = *v75;
        if (v77 > 1 && v77 != 3 && v77 != 4)
        {
          break;
        }

        v76 = sub_1A34CDE30();

        ++v75;
        --v74;
        if (v76)
        {
          goto LABEL_27;
        }
      }

LABEL_27:

      v80 = [v327 thumbnailImageData];
      v78 = v326;
      if (v80)
      {
        v81 = v80;
        v82 = sub_1A34C9690();
        v84 = v83;

        if (qword_1EB0C4920 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v325, qword_1EB0C76F0);
        v85 = v327;
        sub_1A31EC1E0(v82, v84);
        v86 = v320;
        sub_1A31EC1E0(v82, v84);
        v87 = sub_1A34CA230();
        v88 = sub_1A34CD660();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = v82;
          v90 = swift_slowAlloc();
          v326 = swift_slowAlloc();
          v328 = v326;
          *v90 = 136315907;
          v91 = [v85 identifier];
          v92 = sub_1A34CD110();
          v94 = v93;

          v95 = sub_1A31EE23C(v92, v94, &v328);

          *(v90 + 4) = v95;
          *(v90 + 12) = 2081;
          v96 = [v86 stringFromContact_];
          if (v96)
          {
            v97 = v96;
            v98 = sub_1A34CD110();
            v100 = v99;
          }

          else
          {
            v98 = 0x656D616E206F6ELL;
            v100 = 0xE700000000000000;
          }

          v186 = sub_1A31EE23C(v98, v100, &v328);

          *(v90 + 14) = v186;
          *(v90 + 22) = 2048;
          v187 = v84 >> 62;
          v82 = v89;
          if ((v84 >> 62) > 1)
          {
            if (v187 == 2)
            {
              v189 = v85;
              v191 = *(v89 + 16);
              v190 = *(v89 + 24);
              sub_1A31EC234(v82, v84);
              v188 = v190 - v191;
              if (__OFSUB__(v190, v191))
              {
                goto LABEL_132;
              }

              v85 = v189;
            }

            else
            {
              sub_1A31EC234(v89, v84);
              v188 = 0;
            }
          }

          else if (v187)
          {
            v247 = HIDWORD(v89);
            sub_1A31EC234(v82, v84);
            LODWORD(v188) = v247 - v82;
            if (__OFSUB__(v247, v82))
            {
              goto LABEL_133;
            }

            v188 = v188;
          }

          else
          {
            sub_1A31EC234(v89, v84);
            v188 = BYTE6(v84);
          }

          *(v90 + 24) = v188;
          sub_1A31EC234(v82, v84);
          *(v90 + 32) = 2048;
          v248 = [v85 imageBackgroundColorsData];
          if (v248)
          {
            v249 = v248;
            v250 = sub_1A34C9690();
            v252 = v251;

            v253 = v252;
            v254 = v252 >> 62;
            if ((v252 >> 62) <= 1)
            {
              if (v254)
              {
                sub_1A31EC234(v250, v252);

                LODWORD(v255) = HIDWORD(v250) - v250;
                if (__OFSUB__(HIDWORD(v250), v250))
                {
                  goto LABEL_135;
                }

                v255 = v255;
              }

              else
              {
                sub_1A31EC234(v250, v252);

                v255 = BYTE6(v252);
              }

LABEL_121:
              *(v90 + 34) = v255;

              _os_log_impl(&dword_1A31E6000, v87, v88, "Found avatar for contact %s (%{private}s, %ld bytes, background colors: %ld bytes", v90, 0x2Au);
              v259 = v326;
              swift_arrayDestroy();
              MEMORY[0x1A58F1010](v259, -1, -1);
              MEMORY[0x1A58F1010](v90, -1, -1);
LABEL_122:

              ContactAvatarEntity.init()(v315);
              v260 = [v85 identifier];
              v261 = sub_1A34CD110();
              v263 = v262;

              v328 = v261;
              v329 = v263;
              sub_1A34C8D10();
              v313 = sub_1A34C8BD0();
              v314 = v85;
              v316 = &v307;
              v264 = *(v313 - 8);
              v265 = v264[8];
              MEMORY[0x1EEE9AC00](v313);
              v312 = (v265 + 15) & 0xFFFFFFFFFFFFFFF0;
              v266 = &v307 - v312;
              sub_1A31EC1E0(v82, v84);
              v267 = [v85 identifier];
              v268 = sub_1A34CD110();
              v270 = v269;

              v328 = v268;
              v329 = v270;
              MEMORY[0x1A58EEA30](0x7261746176612ELL, 0xE700000000000000);
              v271 = v317;
              sub_1A34CA1E0();
              v272 = sub_1A34CA200();
              (*(*(v272 - 8) + 56))(v271, 0, 1, v272);
              v326 = v82;
              v320 = v84;
              v273 = sub_1A34C8BB0();
              v310 = &v307;
              v274 = v315;
              v275 = MEMORY[0x1EEE9AC00](v273);
              v276 = v312;
              v317 = v264[2];
              v277 = v266;
              v278 = v266;
              v279 = v313;
              (v317)(&v307 - v312, v278, v313, v275);
              sub_1A34C8D10();
              v280 = v264[1];
              v281 = v280(v277, v279);
              v316 = &v307;
              MEMORY[0x1EEE9AC00](v281);
              v282 = sub_1A3322E74(v314);
              v314 = &v307;
              v283 = MEMORY[0x1EEE9AC00](v282);
              (v317)(&v307 - v276, &v307 - v276, v279, v283);
              sub_1A34C8D10();
              v280(&v307 - v276, v279);
              LOBYTE(v328) = 2;
              sub_1A34C8D10();
              v284 = v311;
              sub_1A33278CC(v274, v311);
              v285 = v318;
              v286 = *v318;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v285 = v286;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v286 = sub_1A3298908(0, v286[2] + 1, 1, v286);
                *v285 = v286;
              }

              v149 = v323;
              v179 = v321;
              v288 = v319;
              v290 = v286[2];
              v289 = v286[3];
              v117 = v327;
              if (v290 >= v289 >> 1)
              {
                *v285 = sub_1A3298908(v289 > 1, v290 + 1, 1, v286);
              }

              sub_1A31EC234(v326, v320);
              v291 = *v285;
              *(v291 + 16) = v290 + 1;
              sub_1A3327930(v284, v291 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v290);
              sub_1A3327994(v315, type metadata accessor for ContactAvatarEntity);
              goto LABEL_127;
            }

            if (v254 == 2)
            {
              v256 = v85;
              v258 = *(v250 + 16);
              v257 = *(v250 + 24);
              sub_1A31EC234(v250, v253);

              v255 = v257 - v258;
              if (__OFSUB__(v257, v258))
              {
                goto LABEL_134;
              }

              v85 = v256;
              goto LABEL_121;
            }

            sub_1A31EC234(v250, v252);
          }

          v255 = 0;
          goto LABEL_121;
        }

        sub_1A31EC234(v82, v84);
        sub_1A31EC234(v82, v84);
        goto LABEL_122;
      }

LABEL_33:
      sub_1A34C8DD0();
      v101 = *(v328 + 2);
      v102 = v328 + 32;
      while (1)
      {
        if (!v101)
        {

          goto LABEL_51;
        }

        if (*v102 <= 2u && *v102 && *v102 != 2)
        {
          break;
        }

        v103 = sub_1A34CDE30();

        ++v102;
        --v101;
        if (v103)
        {
          goto LABEL_50;
        }
      }

LABEL_50:

      v328 = v314;
      v329 = v78;
      v110 = sub_1A3323314(v327);
      if (v111 >> 60 != 15)
      {
        v320 = v111;
        v326 = v110;
        if (qword_1EB0C4920 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v325, qword_1EB0C76F0);
        v118 = v327;
        v119 = sub_1A34CA230();
        v120 = sub_1A34CD660();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v328 = v122;
          *v121 = 136315138;
          v123 = [v118 identifier];
          v124 = sub_1A34CD110();
          v126 = v125;

          v127 = sub_1A31EE23C(v124, v126, &v328);

          *(v121 + 4) = v127;
          _os_log_impl(&dword_1A31E6000, v119, v120, "Found monogram for contact %s", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x1A58F1010](v122, -1, -1);
          MEMORY[0x1A58F1010](v121, -1, -1);
        }

        v128 = v312;
        ContactAvatarEntity.init()(v312);
        v129 = [v118 identifier];
        v130 = sub_1A34CD110();
        v132 = v131;

        v328 = v130;
        v329 = v132;
        sub_1A34C8D10();
        v133 = sub_1A34C8BD0();
        v316 = &v307;
        v134 = *(v133 - 8);
        v135 = *(v134 + 64);
        MEMORY[0x1EEE9AC00](v133);
        v315 = ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
        v136 = (&v307 - v315);
        sub_1A31EC1E0(v326, v320);
        v137 = [v118 identifier];
        v138 = sub_1A34CD110();
        v140 = v139;

        v328 = v138;
        v329 = v140;
        MEMORY[0x1A58EEA30](0x6172676F6E6F6D2ELL, 0xE90000000000006DLL);
        v141 = v317;
        sub_1A34CA1E0();
        v142 = sub_1A34CA200();
        (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
        v143 = sub_1A34C8BB0();
        v144 = MEMORY[0x1EEE9AC00](v143);
        (*(v134 + 16))(&v307 - v315, v136, v133, v144);
        sub_1A34C8D10();
        (*(v134 + 8))(v136, v133);
        LOBYTE(v328) = 1;
        sub_1A34C8D10();
        v145 = v309;
        sub_1A33278CC(v128, v309);
        v146 = v318;
        v147 = *v318;
        v148 = swift_isUniquelyReferenced_nonNull_native();
        *v146 = v147;
        if ((v148 & 1) == 0)
        {
          v147 = sub_1A3298908(0, v147[2] + 1, 1, v147);
          *v146 = v147;
        }

        v149 = v323;
        v117 = v327;
        v150 = v319;
        v152 = v147[2];
        v151 = v147[3];
        if (v152 >= v151 >> 1)
        {
          *v146 = sub_1A3298908(v151 > 1, v152 + 1, 1, v147);
        }

        sub_1A31EEE60(v326, v320);
        v153 = *v146;
        *(v153 + 16) = v152 + 1;
        sub_1A3327930(v145, v153 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v152);
        sub_1A3327994(v312, type metadata accessor for ContactAvatarEntity);
LABEL_94:
        v179 = v321;
        goto LABEL_127;
      }

LABEL_51:
      sub_1A34C8DD0();
      v112 = *(v328 + 2);
      v113 = (v328 + 32);
      while (1)
      {
        if (!v112)
        {

          v116 = v325;
          v117 = v327;
          goto LABEL_88;
        }

        v115 = *v113;
        if (v115 <= 2 && v115 != 1 && v115 != 2)
        {
          break;
        }

        v114 = sub_1A34CDE30();

        ++v113;
        --v112;
        if (v114)
        {
          goto LABEL_87;
        }
      }

LABEL_87:

      v328 = v314;
      v329 = v78;
      v117 = v327;
      v192 = sub_1A332372C(v327);
      v326 = v193;
      v116 = v325;
      if (v193 >> 60 != 15)
      {
        if (qword_1EB0C4920 != -1)
        {
          v306 = v325;
          swift_once();
          v116 = v306;
        }

        __swift_project_value_buffer(v116, qword_1EB0C76F0);
        v210 = v117;
        v211 = sub_1A34CA230();
        v212 = sub_1A34CD660();

        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v328 = v214;
          *v213 = 136315138;
          v215 = [v210 identifier];
          v216 = sub_1A34CD110();
          v218 = v217;

          v219 = sub_1A31EE23C(v216, v218, &v328);

          *(v213 + 4) = v219;
          _os_log_impl(&dword_1A31E6000, v211, v212, "Found silhouette for contact %s", v213, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v214);
          MEMORY[0x1A58F1010](v214, -1, -1);
          MEMORY[0x1A58F1010](v213, -1, -1);
        }

        v220 = v310;
        ContactAvatarEntity.init()(v310);
        v221 = [v210 identifier];
        v222 = sub_1A34CD110();
        v224 = v223;

        v328 = v222;
        v329 = v224;
        sub_1A34C8D10();
        v225 = sub_1A34C8BD0();
        v316 = &v307;
        v226 = *(v225 - 8);
        v227 = *(v226 + 64);
        MEMORY[0x1EEE9AC00](v225);
        v315 = ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
        v228 = (&v307 - v315);
        sub_1A31EC1E0(v192, v326);
        v229 = [v210 identifier];
        v230 = sub_1A34CD110();
        v232 = v231;

        v328 = v230;
        v329 = v232;
        MEMORY[0x1A58EEA30](0x65756F686C69732ELL, 0xEB00000000657474);
        v233 = v317;
        sub_1A34CA1E0();
        v234 = sub_1A34CA200();
        (*(*(v234 - 8) + 56))(v233, 0, 1, v234);
        v320 = v192;
        v235 = sub_1A34C8BB0();
        v236 = MEMORY[0x1EEE9AC00](v235);
        (*(v226 + 16))(&v307 - v315, v228, v225, v236);
        sub_1A34C8D10();
        (*(v226 + 8))(v228, v225);
        LOBYTE(v328) = 0;
        sub_1A34C8D10();
        v237 = v220;
        v238 = v308;
        sub_1A33278CC(v237, v308);
        v239 = v318;
        v240 = *v318;
        v241 = swift_isUniquelyReferenced_nonNull_native();
        *v239 = v240;
        if ((v241 & 1) == 0)
        {
          v240 = sub_1A3298908(0, v240[2] + 1, 1, v240);
          *v239 = v240;
        }

        v149 = v323;
        v179 = v321;
        v242 = v319;
        v244 = v240[2];
        v243 = v240[3];
        if (v244 >= v243 >> 1)
        {
          *v239 = sub_1A3298908(v243 > 1, v244 + 1, 1, v240);
        }

        sub_1A31EEE60(v320, v326);
        v245 = *v239;
        *(v245 + 16) = v244 + 1;
        sub_1A3327930(v238, v245 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v244);
        v185 = v310;
        goto LABEL_104;
      }

LABEL_88:
      if (qword_1EB0C4920 != -1)
      {
        v305 = v116;
        swift_once();
        v116 = v305;
      }

      __swift_project_value_buffer(v116, qword_1EB0C76F0);
      v194 = v117;
      v195 = v320;
      v196 = sub_1A34CA230();
      v197 = sub_1A34CD660();

      if (!os_log_type_enabled(v196, v197))
      {

        v149 = v323;
        goto LABEL_94;
      }

      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v328 = v199;
      *v198 = 136315395;
      v200 = [v194 identifier];
      v201 = sub_1A34CD110();
      v203 = v202;

      v204 = sub_1A31EE23C(v201, v203, &v328);

      *(v198 + 4) = v204;
      *(v198 + 12) = 2081;
      v205 = [v195 stringFromContact_];
      if (v205)
      {
        v206 = v205;
        v207 = sub_1A34CD110();
        v209 = v208;
      }

      else
      {
        v207 = 0x656D616E206F6ELL;
        v209 = 0xE700000000000000;
      }

      v149 = v323;
      v179 = v321;
      v246 = sub_1A31EE23C(v207, v209, &v328);

      *(v198 + 14) = v246;
      _os_log_impl(&dword_1A31E6000, v196, v197, "Found contact %s (%{private}s, but no likeness", v198, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v199, -1, -1);
      MEMORY[0x1A58F1010](v198, -1, -1);

      v117 = v327;
      goto LABEL_127;
    }

    v51 = *v49;
    if (v51 >= 4)
    {
      break;
    }

    v50 = sub_1A34CDE30();

    ++v49;
    --v48;
    if (v50)
    {
      goto LABEL_10;
    }
  }

LABEL_10:

  v52 = [v327 wallpaper];
  if (!v52)
  {
    goto LABEL_16;
  }

  v53 = v52;
  v54 = [v52 posterArchiveData];
  v55 = sub_1A34C9690();
  v57 = v56;

  if (qword_1EB0C4920 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v325, qword_1EB0C76F0);
  sub_1A31EC1E0(v55, v57);
  v58 = v327;
  sub_1A31EC1E0(v55, v57);
  v59 = v320;
  v60 = sub_1A34CA230();
  v61 = sub_1A34CD660();

  v62 = os_log_type_enabled(v60, v61);
  v307 = v53;
  if (!v62)
  {
    v79 = v58;
    sub_1A31EC234(v55, v57);
    sub_1A31EC234(v55, v57);
LABEL_74:

    v155 = v55;
    v156 = v57;
    v157 = v316;
    ContactAvatarEntity.init()(v316);
    v158 = [v79 identifier];
    v159 = sub_1A34CD110();
    v161 = v160;

    v328 = v159;
    v329 = v161;
    sub_1A34C8D10();
    v162 = sub_1A34C8BD0();
    v315 = &v307;
    v163 = *(v162 - 8);
    v164 = *(v163 + 64);
    MEMORY[0x1EEE9AC00](v162);
    v314 = ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v165 = &v307 - v314;
    v166 = v156;
    sub_1A31EC1E0(v155, v156);
    v167 = [v79 &selRef_initWithEditorColorPalette_];
    v168 = sub_1A34CD110();
    v170 = v169;

    v328 = v168;
    v329 = v170;
    MEMORY[0x1A58EEA30](0x726574736F702ELL, 0xE700000000000000);
    v171 = v317;
    sub_1A34CA1E0();
    v172 = sub_1A34CA200();
    (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
    v326 = v155;
    v320 = v166;
    v173 = sub_1A34C8BB0();
    v174 = MEMORY[0x1EEE9AC00](v173);
    (*(v163 + 16))(&v307 - v314, v165, v162, v174);
    sub_1A34C8D10();
    (*(v163 + 8))(v165, v162);
    LOBYTE(v328) = 4;
    sub_1A34C8D10();
    LOBYTE(v328) = [v307 contentIsSensitive];
    sub_1A34C8D10();
    v175 = v313;
    sub_1A33278CC(v157, v313);
    v176 = v318;
    v177 = *v318;
    v178 = swift_isUniquelyReferenced_nonNull_native();
    *v176 = v177;
    if ((v178 & 1) == 0)
    {
      v177 = sub_1A3298908(0, v177[2] + 1, 1, v177);
      *v176 = v177;
    }

    v149 = v323;
    v179 = v321;
    v180 = v319;
    v182 = v177[2];
    v181 = v177[3];
    v183 = v326;
    if (v182 >= v181 >> 1)
    {
      *v176 = sub_1A3298908(v181 > 1, v182 + 1, 1, v177);
    }

    sub_1A31EC234(v183, v320);
    v184 = *v176;
    *(v184 + 16) = v182 + 1;
    sub_1A3327930(v175, v184 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v182);
    v185 = v316;
LABEL_104:
    sub_1A3327994(v185, type metadata accessor for ContactAvatarEntity);
    v117 = v327;
LABEL_127:
    sub_1A34C9EB0();
    sub_1A34C9010();
    v292 = v117;
    v293 = sub_1A34CA230();
    v294 = sub_1A34CD660();

    if (os_log_type_enabled(v293, v294))
    {
      v295 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v328 = v296;
      *v295 = 136315394;
      v297 = sub_1A34C9E70();
      v299 = sub_1A31EE23C(v297, v298, &v328);

      *(v295 + 4) = v299;
      *(v295 + 12) = 2080;
      v300 = [v292 identifier];
      v301 = sub_1A34CD110();
      v303 = v302;

      v304 = sub_1A31EE23C(v301, v303, &v328);

      *(v295 + 14) = v304;
      _os_log_impl(&dword_1A31E6000, v293, v294, "%s Did process contact %s", v295, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v296, -1, -1);
      MEMORY[0x1A58F1010](v295, -1, -1);
    }

    (*(v149 + 8))(v179, v325);
    return;
  }

  LODWORD(v326) = v61;
  v63 = swift_slowAlloc();
  v320 = swift_slowAlloc();
  v328 = v320;
  *v63 = 136315651;
  v64 = [v58 identifier];
  v65 = sub_1A34CD110();
  v67 = v66;

  v68 = sub_1A31EE23C(v65, v67, &v328);

  *(v63 + 4) = v68;
  *(v63 + 12) = 2081;
  v69 = [v59 stringFromContact_];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1A34CD110();
    v73 = v72;
  }

  else
  {
    v71 = 0x656D616E206F6ELL;
    v73 = 0xE700000000000000;
  }

  v104 = sub_1A31EE23C(v71, v73, &v328);

  *(v63 + 14) = v104;
  *(v63 + 22) = 2048;
  v105 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v105 == 2)
    {
      v108 = *(v55 + 16);
      v107 = *(v55 + 24);
      sub_1A31EC234(v55, v57);
      v106 = v107 - v108;
      if (__OFSUB__(v107, v108))
      {
        __break(1u);
        goto LABEL_131;
      }

      v79 = v58;
      v109 = v326;
    }

    else
    {
      v79 = v58;
      sub_1A31EC234(v55, v57);
      v106 = 0;
LABEL_72:
      v109 = v326;
    }

    *(v63 + 24) = v106;
    sub_1A31EC234(v55, v57);
    _os_log_impl(&dword_1A31E6000, v60, v109, "Found poster for contact %s (%{private}s, %ld bytes", v63, 0x20u);
    v154 = v320;
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v154, -1, -1);
    MEMORY[0x1A58F1010](v63, -1, -1);
    goto LABEL_74;
  }

  if (!v105)
  {
    v79 = v58;
    sub_1A31EC234(v55, v57);
    v106 = BYTE6(v57);
    goto LABEL_72;
  }

  sub_1A31EC234(v55, v57);
  LODWORD(v106) = HIDWORD(v55) - v55;
  if (!__OFSUB__(HIDWORD(v55), v55))
  {
    v79 = v58;
    v106 = v106;
    goto LABEL_72;
  }

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
}