uint64_t sub_1C5B143C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a1;
  v121 = a4;
  v111 = a2;
  v5 = sub_1C5BC8AB4();
  v112 = a3;
  v142 = a3;
  v143 = sub_1C5953670();
  v138 = v5;
  v139 = v5;
  v110 = v5;
  WitnessTable = swift_getWitnessTable();
  v141 = WitnessTable;
  v99 = WitnessTable;
  v6 = type metadata accessor for MotionView();
  v107 = type metadata accessor for MCUINamespace();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v85 - v7;
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v85 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  v10 = sub_1C5BC8AB4();
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v85 - v11;
  v12 = sub_1C5BC8AB4();
  v106 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v85 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  v14 = sub_1C5BC8AB4();
  v108 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v85 - v15;
  v16 = type metadata accessor for MaterialMotionContentObserver(255);
  v88 = v6;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  v89 = v17;
  v136 = v17;
  v137 = v18;
  v101 = v10;
  v90 = swift_getWitnessTable();
  v134 = v90;
  v135 = MEMORY[0x1E697F568];
  v109 = v12;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  v91 = v19;
  v132 = v19;
  v133 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  v120 = v14;
  v138 = v14;
  v139 = v16;
  v122 = v16;
  v119 = v21;
  WitnessTable = v21;
  v141 = v22;
  v118 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v92 = &v85 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  v94 = OpaqueTypeMetadata2;
  v25 = sub_1C5BC8AB4();
  v114 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v85 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v85 - v31;
  v33 = type metadata accessor for MotionAsset();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v85 - v38;
  v117 = sub_1C5BCB804();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v123 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v115 = &v85 - v42;
  sub_1C59400B0(v113, v32, &qword_1EC191EB8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1C5924EF4(v32, &qword_1EC191EB8);
    (*(v114 + 56))(v123, 1, 1, v25);
    v43 = v120;
    v44 = v122;
    v138 = v120;
    v139 = v122;
    v45 = v119;
    v46 = v118;
    WitnessTable = v119;
    v141 = v118;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
    v130 = OpaqueTypeConformance2;
    v131 = v48;
    swift_getWitnessTable();
  }

  else
  {
    v87 = v39;
    sub_1C5A67D1C(v32, v39);
    v49 = sub_1C59C122C(v39, v36);
    MEMORY[0x1EEE9AC00](v49);
    v86 = v27;
    MEMORY[0x1EEE9AC00](v50);
    v51 = v96;
    sub_1C59BDD68(v36, sub_1C5B1C6C8, sub_1C5B1BE7C, 0, 0, v96);
    v52 = v102;
    v53 = v88;
    View.mcui.getter(v88, v102);
    (*(v98 + 8))(v51, v53);
    LOBYTE(v138) = 1;
    v54 = v97;
    v55 = v107;
    MCUINamespace<A>.motionCacheDownload(policy:)();
    (*(v105 + 8))(v52, v55);
    type metadata accessor for TallAssetArtworkBackground();
    v110 = v25;
    v56 = v103;
    v57 = v101;
    sub_1C5BC9D94();
    (*(v100 + 8))(v54, v57);
    v58 = sub_1C5BCAA34();
    MEMORY[0x1EEE9AC00](v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198148);
    sub_1C5B1BEA0();
    v59 = v104;
    v60 = v109;
    sub_1C5BCA2C4();
    v61 = v56;
    v62 = v110;
    (*(v106 + 8))(v61, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
    sub_1C5BC81A4();
    v63 = v92;
    v43 = v120;
    v64 = v122;
    v45 = v119;
    v46 = v118;
    sub_1C5BC9DE4();

    (*(v108 + 8))(v59, v43);
    swift_getKeyPath();
    v126 = 2;
    v138 = v43;
    v139 = v64;
    WitnessTable = v45;
    v141 = v46;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v86;
    v67 = v94;
    sub_1C5BC9DF4();

    (*(v93 + 8))(v63, v67);
    sub_1C59C1338(v87);
    v68 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
    v124 = v65;
    v125 = v68;
    v69 = swift_getWitnessTable();
    v70 = v95;
    v71 = v66;
    sub_1C593EDC0(v66, v62, v69);
    v72 = v114;
    v73 = *(v114 + 8);
    v73(v71, v62);
    sub_1C593EDC0(v70, v62, v69);
    v73(v70, v62);
    v74 = v123;
    v75 = v71;
    v44 = v122;
    (*(v72 + 32))(v123, v75, v62);
    (*(v72 + 56))(v74, 0, 1, v62);
  }

  v76 = v115;
  v77 = v123;
  sub_1C5941600(v123, v115);
  v78 = *(v116 + 8);
  v79 = v77;
  v80 = v117;
  v78(v79, v117);
  v138 = v43;
  v139 = v44;
  WitnessTable = v45;
  v141 = v46;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  v128 = v81;
  v129 = v82;
  v127 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  sub_1C593EDC0(v76, v80, v83);
  return (v78)(v76, v80);
}

void sub_1C5B15318(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TallAssetArtworkBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  swift_getKeyPath();
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v5 = *(v14 + 16);
  v6 = v5;

  v7 = 0uLL;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
    sub_1C5BCA694();
    if (v13 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0), sub_1C5BCA694(), (LOBYTE(v12)))
    {

      v5 = 0;
      v8 = 0;
      v9 = 0;
      v7 = 0uLL;
    }

    else
    {
      v11 = *(a1 + *(v4 + 44));
      v10 = sub_1C5BC8294();
      *&v7 = v11;
      *(&v7 + 1) = v11 / v12;
      v8 = v10 & 1;
      v9 = 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

uint64_t sub_1C5B1550C(uint64_t result)
{
  if ((*(result + 16) & 1) == 0 && (*result != 0.0 || *(result + 8) != 0.0))
  {
    type metadata accessor for TallAssetArtworkBackground();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B155C0()
{
  type metadata accessor for TallAssetArtworkBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5B15654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v0 = sub_1C5B157D0(v2, v3, v2 | (BYTE4(v2) << 32), (v2 & 1) == 0, 0.75) & 1;
  result = sub_1C5BCA694();
  if (v0 != v2)
  {
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B157D0(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    goto LABEL_9;
  }

  v5 = a5 * 0.03;
  if (a5 * 0.03 <= 0.0)
  {
    goto LABEL_6;
  }

  v6 = a5 - v5;
  v7 = v5 + a5;
  if (v6 > v7)
  {
    __break(1u);
LABEL_6:
    v7 = a5;
    v6 = a5;
  }

  if (v6 > *&a1 || v7 < *&a1)
  {
    v8 = a4 & 1;
    goto LABEL_14;
  }

LABEL_9:
  if ((a3 & 0x100000000) != 0 || floorf(*&a3) <= 61.0)
  {
    return 0;
  }

  v8 = a4 & 1;
LABEL_14:
  sub_1C5B195F8(v8, a5);
  return 1;
}

uint64_t sub_1C5B158B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5B15934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008);
  sub_1C5BCA684();
  return v1;
}

uint64_t sub_1C5B15984@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C5B159E0()
{
  type metadata accessor for MaterialMotionContentObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1C5BC7BA4();
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  if (*(v0 + 24))
  {
    v2 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  return v0;
}

uint64_t sub_1C5B15BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195888);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  v8 = v14;
  swift_getKeyPath();
  v14 = v8;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v9 = *(v8 + 16);
  v10 = v9;

  if (v9)
  {
    swift_getKeyPath();
    sub_1C5BC7924();

    sub_1C5924F54(&qword_1EC195890, &unk_1EC199F50);
    v11 = sub_1C5BC8064();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957A0);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC195898, &qword_1EC195888);
    v11 = sub_1C5BC8064();
    (*(v1 + 8))(v3, v0);
  }

  return v11;
}

uint64_t sub_1C5B15EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D8);
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1939C0);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980E8);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v23 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F0);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  v13 = v32;
  swift_getKeyPath();
  v32 = v13;
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v14 = *(v13 + 16);
  v15 = v14;

  if (v14)
  {
    swift_getKeyPath();
    sub_1C5BC7924();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980F8);
    sub_1C5924F54(&qword_1EC1939E0, &qword_1EC1939C0);
    sub_1C5BC8084();
    (*(v26 + 8))(v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980B0);
    sub_1C5BC7ED4();
    (*(v27 + 8))(v8, v6);
    v16 = sub_1C5924F54(&qword_1EC198100, &qword_1EC1980E8);
    v17 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0);
    v18 = v30;
    MEMORY[0x1C694C340](v30, v16, v17);

    (*(v28 + 8))(v10, v18);
    sub_1C5924F54(&qword_1EC198108, &qword_1EC1980F0);
    v19 = v31;
    v20 = sub_1C5BC8064();
    (*(v29 + 8))(v12, v19);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008);
    sub_1C5BC7FD4();
    sub_1C5924F54(&qword_1EC198110, &qword_1EC1980D8);
    v21 = v25;
    v20 = sub_1C5BC8064();
    (*(v24 + 8))(v2, v21);
  }

  return v20;
}

uint64_t sub_1C5B164DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v208 = *(a1 - 8);
  v206 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v194 = v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v5 = v3;
  v189 = v3;
  v203 = sub_1C5BC8AB4();
  v193 = *(v203 - 1);
  MEMORY[0x1EEE9AC00](v203);
  v192 = v138 - v6;
  v207 = v4;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v7 = sub_1C5BC8AB4();
  v257 = *(v5 + 24);
  v258 = MEMORY[0x1E697E070];
  v8 = v257;
  v210 = v257;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v255 = WitnessTable;
  v256 = v10;
  v11 = swift_getWitnessTable();
  v251 = v7;
  v252 = MEMORY[0x1E69E6370];
  v253 = v11;
  v254 = MEMORY[0x1E69E6380];
  v186 = sub_1C5BCA724();
  v187 = swift_getWitnessTable();
  v200 = sub_1C5BC92A4();
  v204 = sub_1C5BC8AB4();
  v188 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204);
  v183 = v138 - v12;
  v205 = sub_1C5BC8AB4();
  v190 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v184 = v138 - v13;
  v196 = sub_1C5BC8AB4();
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v185 = v138 - v14;
  v15 = sub_1C5BC8AB4();
  v16 = sub_1C5953670();
  v249 = v8;
  v250 = v16;
  v17 = swift_getWitnessTable();
  v251 = v15;
  v252 = v15;
  v253 = v17;
  v254 = v17;
  type metadata accessor for MotionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  v18 = sub_1C5BC8AB4();
  v19 = type metadata accessor for MaterialMotionContentObserver(255);
  v20 = swift_getWitnessTable();
  v202 = MEMORY[0x1E6980A18];
  v21 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  v247 = v20;
  v248 = v21;
  v245 = swift_getWitnessTable();
  v246 = MEMORY[0x1E697F568];
  v22 = swift_getWitnessTable();
  v199 = MEMORY[0x1E697EC18];
  v23 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  v243 = v22;
  v244 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  v251 = v18;
  v252 = v19;
  v253 = v24;
  v254 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  sub_1C5BC8AB4();
  v26 = sub_1C5BCB804();
  v251 = v18;
  v252 = v19;
  v253 = v24;
  v254 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  v241 = OpaqueTypeConformance2;
  v242 = v28;
  v240 = swift_getWitnessTable();
  v178 = v26;
  v179 = swift_getWitnessTable();
  v198 = sub_1C5BC8BE4();
  v202 = sub_1C5BC8AB4();
  v181 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v175 = v138 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198160);
  v197 = sub_1C5BC8AB4();
  v180 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v174 = v138 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  v31 = sub_1C5BC8AB4();
  v176 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v173 = v138 - v32;
  v144 = v31;
  v33 = sub_1C5BC8AB4();
  v177 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v171 = v138 - v34;
  v147 = v33;
  v35 = sub_1C5BC8AB4();
  v182 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v201 = v138 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  v155 = v37;
  v172 = MEMORY[0x1E695BED8];
  v38 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  v154 = v38;
  v238 = v210;
  v239 = MEMORY[0x1E697F568];
  v39 = swift_getWitnessTable();
  v138[1] = v39;
  v40 = swift_getWitnessTable();
  v236 = v39;
  v237 = v40;
  v139 = swift_getWitnessTable();
  v234 = v139;
  v235 = v40;
  v140 = swift_getWitnessTable();
  v232 = v140;
  v233 = MEMORY[0x1E697EBF8];
  v41 = swift_getWitnessTable();
  v141 = v41;
  v42 = swift_getWitnessTable();
  v230 = v41;
  v231 = v42;
  v43 = swift_getWitnessTable();
  v145 = v43;
  v44 = sub_1C5924F54(&qword_1EC198168, &qword_1EC198160);
  v228 = v43;
  v229 = v44;
  v45 = swift_getWitnessTable();
  v142 = v45;
  v46 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v226 = v45;
  v227 = v46;
  v143 = swift_getWitnessTable();
  v224 = v143;
  v225 = MEMORY[0x1E69802C0];
  v146 = swift_getWitnessTable();
  v222 = v146;
  v223 = MEMORY[0x1E697E040];
  v148 = v35;
  v149 = swift_getWitnessTable();
  v251 = v37;
  v252 = v35;
  v253 = v38;
  v254 = v149;
  v47 = sub_1C5BC8BB4();
  v156 = v47;
  v162 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v198 = v138 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0);
  v159 = v49;
  v50 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0);
  v158 = v50;
  v157 = swift_getWitnessTable();
  v251 = v49;
  v252 = v47;
  v253 = v50;
  v254 = v157;
  v51 = sub_1C5BC8BB4();
  v170 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v200 = v138 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
  v54 = swift_getWitnessTable();
  v55 = sub_1C5AE9478();
  v251 = v51;
  v252 = v53;
  v56 = v51;
  v150 = v51;
  v151 = v55;
  v152 = v54;
  v153 = v53;
  v253 = v54;
  v254 = v55;
  v57 = v55;
  v167 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v166 = OpaqueTypeMetadata2;
  v172 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v199 = v138 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008);
  v165 = v60;
  v251 = v56;
  v252 = v53;
  v253 = v54;
  v254 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v164 = v61;
  v163 = sub_1C5B1B970();
  v251 = OpaqueTypeMetadata2;
  v252 = v60;
  v253 = v61;
  v254 = v163;
  v62 = swift_getOpaqueTypeMetadata2();
  v63 = *(v62 - 8);
  v168 = v62;
  v169 = v63;
  MEMORY[0x1EEE9AC00](v62);
  v160 = v138 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v161 = v138 - v66;
  v67 = v189;
  v68 = v209;
  v69 = v192;
  v70 = v207;
  v71 = v210;
  sub_1C5BC9D94();
  v217 = v70;
  v72 = v70;
  v218 = v71;
  v219 = v68;
  sub_1C5BCAA54();
  v73 = v183;
  v74 = v203;
  sub_1C5BC9CE4();
  (*(v193 + 8))(v69, v74);
  v214 = v72;
  v215 = v71;
  v75 = v209;
  v216 = v209;
  sub_1C5BCAA54();
  v76 = v184;
  v77 = v204;
  sub_1C5BC9CE4();
  (*(v188 + 8))(v73, v77);
  v78 = v67;
  v79 = v75;
  sub_1C5BCAA54();
  v80 = v205;
  v81 = v185;
  sub_1C5BCA244();
  (*(v190 + 8))(v76, v80);
  sub_1C5BCAA54();
  v211 = v207;
  v212 = v210;
  v213 = v75;
  v82 = v175;
  v83 = v196;
  sub_1C5BCA2C4();
  (*(v191 + 8))(v81, v83);
  sub_1C5BCAA54();
  sub_1C5B1C014();
  v84 = v174;
  v85 = v202;
  sub_1C5BCA2C4();
  (*(v181 + 8))(v82, v85);
  v86 = v173;
  v87 = v197;
  sub_1C5BCA2A4();
  (*(v180 + 8))(v84, v87);
  v88 = v171;
  v89 = v144;
  sub_1C5BC9FC4();
  (*(v176 + 8))(v86, v89);
  sub_1C5BCAA54();
  v90 = v147;
  sub_1C5BCA234();
  (*(v177 + 8))(v88, v90);
  v251 = sub_1C5B15BB0();
  v91 = v208;
  v203 = *(v208 + 16);
  v205 = v208 + 16;
  v92 = v194;
  (v203)(v194, v79, v78);
  v202 = *(v91 + 80);
  v93 = (v202 + 32) & ~v202;
  v94 = swift_allocObject();
  v95 = v207;
  v96 = v210;
  *(v94 + 16) = v207;
  *(v94 + 24) = v96;
  v97 = *(v91 + 32);
  v208 = v91 + 32;
  v204 = v97;
  (v97)(v94 + v93, v92, v78);
  v98 = v148;
  v99 = v201;
  sub_1C5BCA3D4();

  (*(v182 + 8))(v99, v98);
  v100 = v209;
  v251 = sub_1C5B15EC0();
  v101 = v78;
  v102 = v78;
  v103 = v203;
  (v203)(v92, v100, v101);
  v197 = v93;
  v104 = swift_allocObject();
  v105 = v95;
  v106 = v210;
  *(v104 + 16) = v95;
  *(v104 + 24) = v106;
  (v204)(v104 + v93, v92, v102);
  v107 = v156;
  v108 = v198;
  sub_1C5BCA3D4();

  (*(v162 + 8))(v108, v107);
  v109 = v209;
  v110 = v209 + *(v102 + 48);
  v111 = *v110;
  v112 = *(v110 + 8);
  v113 = *(v110 + 16);
  v251 = v111;
  LOBYTE(v252) = v112;
  v253 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  v251 = v220;
  LOBYTE(v252) = v221;
  v114 = v92;
  v103(v92, v109, v102);
  v115 = v197;
  v116 = swift_allocObject();
  *(v116 + 16) = v105;
  v117 = v210;
  *(v116 + 24) = v210;
  v118 = v204;
  (v204)(v116 + v115, v114, v102);
  v119 = v200;
  v120 = v150;
  sub_1C5BCA344();

  (*(v170 + 8))(v119, v120);
  v121 = v209;
  v122 = (v209 + *(v102 + 52));
  v123 = *v122;
  v124 = *(v122 + 4);
  v125 = *(v122 + 1);
  LODWORD(v251) = v123;
  BYTE4(v251) = v124;
  v252 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  sub_1C5BCA694();
  LODWORD(v251) = v220;
  BYTE4(v251) = BYTE4(v220);
  (v203)(v114, v121, v102);
  v126 = swift_allocObject();
  *(v126 + 16) = v207;
  *(v126 + 24) = v117;
  v118(v126 + v115, v114, v102);
  v127 = v160;
  v129 = v165;
  v128 = v166;
  v131 = v163;
  v130 = v164;
  v132 = v199;
  sub_1C5BCA344();

  (*(v172 + 8))(v132, v128);
  v251 = v128;
  v252 = v129;
  v253 = v130;
  v254 = v131;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = v161;
  v135 = v168;
  sub_1C593EDC0(v127, v168, v133);
  v136 = *(v169 + 8);
  v136(v127, v135);
  sub_1C593EDC0(v134, v135, v133);
  return (v136)(v134, v135);
}

uint64_t sub_1C5B17BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (*a4)(uint64_t)@<X3>, double (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  v60 = a6;
  v61 = a1;
  v8 = sub_1C5BC9014();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8AB4();
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v45 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v16 = sub_1C5BC8AB4();
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v45 - v17;
  v68 = a3;
  v69 = MEMORY[0x1E697E070];
  v54 = v14;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v48 = WitnessTable;
  v66 = WitnessTable;
  v67 = v19;
  v20 = swift_getWitnessTable();
  v53 = v16;
  v62 = v16;
  v63 = MEMORY[0x1E69E6370];
  v50 = v20;
  v64 = v20;
  v65 = MEMORY[0x1E69E6380];
  v21 = sub_1C5BCA724();
  v51 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v27 = a3;
  v28 = type metadata accessor for SquareAssetArtworkBackground();
  v29 = v10;
  v30 = v61;
  v31 = (*(v10 + 16))(v13, v61 + *(v28 + 36), a2);
  if (*(v30 + *(v28 + 40) + 8) <= *(v30 + *(v28 + 40)))
  {
    v32.n128_u64[0] = v46(v31);
    v33.n128_u64[0] = v35.n128_u64[0];
    v34.n128_u64[0] = -1.5;
    v35.n128_u64[0] = 1.0;
  }

  else
  {
    v32.n128_u64[0] = v47(v31);
    v33.n128_u64[0] = v35.n128_u64[0];
    v34.n128_u64[0] = 1.0;
    v35.n128_u64[0] = -1.5;
  }

  v36 = v49;
  MEMORY[0x1C694E080](a2, v27, v34, v35, v32, v33);
  (*(v29 + 8))(v13, a2);
  v37 = v57;
  sub_1C5BC9004();
  sub_1C5B1C554(&qword_1EC196DD8, MEMORY[0x1E697F400]);
  v38 = v52;
  v39 = v54;
  v40 = v59;
  sub_1C5B1077C(v37);
  (*(v58 + 8))(v37, v40);
  (*(v56 + 8))(v36, v39);
  LOBYTE(v62) = *(v61 + *(v28 + 40) + 8) <= *(v61 + *(v28 + 40));
  v41 = v53;
  sub_1C5BCA1C4();
  (*(v55 + 8))(v38, v41);
  v42 = swift_getWitnessTable();
  sub_1C593EDC0(v23, v21, v42);
  v43 = *(v51 + 8);
  v43(v23, v21);
  sub_1C593EDC0(v26, v21, v42);
  return (v43)(v26, v21);
}

uint64_t sub_1C5B181B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a1;
  v120 = a4;
  v99 = a2;
  v5 = sub_1C5BC8AB4();
  v110 = a3;
  v140 = a3;
  v141 = sub_1C5953670();
  v136 = v5;
  v137 = v5;
  v109 = v5;
  WitnessTable = swift_getWitnessTable();
  v139 = WitnessTable;
  v100 = WitnessTable;
  v6 = type metadata accessor for MotionView();
  v108 = type metadata accessor for MCUINamespace();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v102 = &v83 - v7;
  v96 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v83 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  v10 = sub_1C5BC8AB4();
  v97 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v83 - v11;
  v12 = sub_1C5BC8AB4();
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v83 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  v14 = sub_1C5BC8AB4();
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v83 - v15;
  v16 = type metadata accessor for MaterialMotionContentObserver(255);
  v86 = v6;
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  v88 = v17;
  v134 = v17;
  v135 = v18;
  v98 = v10;
  v87 = swift_getWitnessTable();
  v132 = v87;
  v133 = MEMORY[0x1E697F568];
  v105 = v12;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  v89 = v19;
  v130 = v19;
  v131 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  v119 = v14;
  v136 = v14;
  v137 = v16;
  v121 = v16;
  v118 = v21;
  WitnessTable = v21;
  v139 = v22;
  v117 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v90 = &v83 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  v92 = OpaqueTypeMetadata2;
  v25 = sub_1C5BC8AB4();
  v113 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v83 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v83 - v31;
  v33 = type metadata accessor for MotionAsset();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v83 - v38;
  v116 = sub_1C5BCB804();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v114 = &v83 - v42;
  sub_1C59400B0(v111, v32, &qword_1EC191EB8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1C5924EF4(v32, &qword_1EC191EB8);
    v43 = v112;
    (*(v113 + 56))(v112, 1, 1, v25);
    v44 = v119;
    v45 = v121;
    v136 = v119;
    v137 = v121;
    v46 = v118;
    v47 = v117;
    WitnessTable = v118;
    v139 = v117;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
    v128 = OpaqueTypeConformance2;
    v129 = v49;
    swift_getWitnessTable();
  }

  else
  {
    v85 = v39;
    sub_1C5A67D1C(v32, v39);
    v50 = sub_1C59C122C(v39, v36);
    MEMORY[0x1EEE9AC00](v50);
    v84 = v27;
    MEMORY[0x1EEE9AC00](v51);
    v52 = v94;
    sub_1C59BDD68(v36, sub_1C5B1C6CC, sub_1C5B1C4D0, 0, 0, v94);
    v53 = v102;
    v54 = v86;
    View.mcui.getter(v86, v102);
    (*(v96 + 8))(v52, v54);
    LOBYTE(v136) = 1;
    v55 = v95;
    v56 = v108;
    MCUINamespace<A>.motionCacheDownload(policy:)();
    (*(v106 + 8))(v53, v56);
    v109 = v25;
    v57 = v101;
    v58 = v98;
    sub_1C5BC9D94();
    (*(v97 + 8))(v55, v58);
    v59 = sub_1C5BCAA54();
    MEMORY[0x1EEE9AC00](v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198148);
    sub_1C5B1BEA0();
    v60 = v104;
    v61 = v105;
    sub_1C5BCA2C4();
    v62 = v57;
    v63 = v109;
    (*(v103 + 8))(v62, v61);
    type metadata accessor for SquareAssetArtworkBackground();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
    sub_1C5BC81A4();
    v64 = v90;
    v44 = v119;
    v65 = v121;
    v46 = v118;
    v47 = v117;
    sub_1C5BC9DE4();

    (*(v107 + 8))(v60, v44);
    swift_getKeyPath();
    v124 = 2;
    v136 = v44;
    v137 = v65;
    WitnessTable = v46;
    v139 = v47;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v84;
    v68 = v92;
    sub_1C5BC9DF4();

    (*(v91 + 8))(v64, v68);
    sub_1C59C1338(v85);
    v69 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
    v122 = v66;
    v123 = v69;
    v70 = swift_getWitnessTable();
    v71 = v93;
    sub_1C593EDC0(v67, v63, v70);
    v72 = v113;
    v73 = *(v113 + 8);
    v73(v67, v63);
    sub_1C593EDC0(v71, v63, v70);
    v73(v71, v63);
    v43 = v112;
    v74 = v67;
    v45 = v121;
    (*(v72 + 32))(v112, v74, v63);
    (*(v72 + 56))(v43, 0, 1, v63);
  }

  v75 = v114;
  sub_1C5941600(v43, v114);
  v76 = *(v115 + 8);
  v77 = v43;
  v78 = v116;
  v76(v77, v116);
  v136 = v44;
  v137 = v45;
  WitnessTable = v46;
  v139 = v47;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  v126 = v79;
  v127 = v80;
  v125 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  sub_1C593EDC0(v75, v78, v81);
  return (v76)(v75, v78);
}

void sub_1C5B190FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SquareAssetArtworkBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  swift_getKeyPath();
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v5 = *(v14 + 16);
  v6 = v5;

  v7 = 0.0;
  if (!v5)
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  if (v13 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0), sub_1C5BCA694(), (LOBYTE(v12)))
  {

    v5 = 0;
LABEL_5:
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    goto LABEL_6;
  }

  v11 = (a1 + *(v4 + 40));
  v7 = *v11;
  v10 = v11[1];
  if (v10 <= *v11)
  {
    v7 = v12 * v10;
    v8 = 257;
  }

  else
  {
    v8 = 1;
    v10 = v7 / v12;
  }

  v9 = 0x3FF8000000000000;
LABEL_6:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

uint64_t sub_1C5B192E4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5B19330(uint64_t result)
{
  if ((*(result + 16) & 1) == 0 && (*result != 0.0 || *(result + 8) != 0.0))
  {
    type metadata accessor for SquareAssetArtworkBackground();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
    return sub_1C5BCA6A4();
  }

  return result;
}

uint64_t sub_1C5B193E4()
{
  type metadata accessor for SquareAssetArtworkBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5B19478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v0 = sub_1C5B157D0(v2, v3, v2 | (BYTE4(v2) << 32), (v2 & 1) == 0, 1.0) & 1;
  result = sub_1C5BCA694();
  if (v0 != v2)
  {
    return sub_1C5BCA6A4();
  }

  return result;
}

void sub_1C5B195F8(char a1, double a2)
{
  if (a1)
  {
    if (qword_1EC190890 != -1)
    {
      swift_once();
    }

    v3 = sub_1C5BC7D64();
    __swift_project_value_buffer(v3, qword_1EC1A6D60);
    oslog = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 134218498;
      *(v5 + 4) = a2;
      *(v5 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
      v7 = sub_1C5BCAEA4();
      v9 = sub_1C592ADA8(v7, v8, &v14);

      *(v5 + 14) = v9;
      *(v5 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008);
      v10 = sub_1C5BCAEA4();
      v12 = sub_1C592ADA8(v10, v11, &v14);

      *(v5 + 24) = v12;
      _os_log_impl(&dword_1C5922000, oslog, v4, "Not showing video asset. Expected aspect ratio: %f. Current aspect ratio: %s, current frame rate: %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v6, -1, -1);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_1C5B19820@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v18 = a2;
    v3 = [result tracks];
    sub_1C5B1BE30();
    v4 = sub_1C5BCB054();

    if (v4 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C5BCB984())
    {

      if (!i)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C694FD20](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 assetTrack];

        if (v10)
        {
          v11 = [v10 mediaType];
          v12 = sub_1C5BCAE74();
          v14 = v13;
          if (v12 == sub_1C5BCAE74() && v14 == v15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_23;
          }

          v17 = sub_1C5BCBDE4();

          if (v17)
          {
            result = swift_bridgeObjectRelease_n();
            goto LABEL_23;
          }
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_19:
    result = swift_bridgeObjectRelease_n();
    v10 = 0;
LABEL_23:
    a2 = v18;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1C5B19A40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198118);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *a1;
  if (*a1)
  {
    *(swift_allocObject() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198128);
    swift_allocObject();
    v9 = v8;
    v12 = sub_1C5BC7FE4();
    sub_1C5924F54(&qword_1EC198130, &qword_1EC198128);
    v10 = sub_1C5BC8064();
  }

  else
  {
    v13 = 0;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198008);
    sub_1C5BC7FC4();
    sub_1C5924F54(&qword_1EC198120, &qword_1EC198118);
    v10 = sub_1C5BC8064();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1C5B19C58(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1C5BCB214();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1C5BCB1E4();

  v11 = a3;
  v12 = sub_1C5BCB1D4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = sub_1C5B1BD14;
  v13[5] = v9;
  v13[6] = v11;
  sub_1C5AD0FB8(0, 0, v8, &unk_1C5BE9C50, v13);
}

uint64_t sub_1C5B19DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1C5BCB1E4();
  v6[6] = sub_1C5BCB1D4();
  v8 = sub_1C5BCB194();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5B19E68, v8, v7);
}

uint64_t sub_1C5B19E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198138);
  v1 = sub_1C5BC7BC4();
  v0[9] = v1;
  v2 = sub_1C5BCB1D4();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C5B19F54;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 12, v1, v2, v4);
}

uint64_t sub_1C5B19F54()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1C5B1A140;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1C5B1A0C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1C5B1A0C4()
{

  (*(v0 + 16))(*(v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B1A140()
{

  (*(v0 + 16))(0x100000000);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B1A1BC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6D60);
  __swift_project_value_buffer(v0, qword_1EC1A6D60);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B1A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LockScreenArtworkBackground() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5B1107C(a1, v8, v5, v6, a2);
}

void sub_1C5B1A34C()
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B1A41C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v8 + v10 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v14 = v11 + (v13 & ~v10) + 2;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      v22 = (a1 + v13) & ~v10;
      if (v9 < 0xFE)
      {
        v24 = *(v22 + v11);
        if (v24 >= 2)
        {
          return v24 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23(v22);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_1C5B1A618(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = 8;
  v10 = *(*(a4 + 16) - 8);
  if (v8 > 8)
  {
    v9 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v12;
  }

  v16 = v9 + v13 + 1;
  v17 = v14 + (v16 & ~v13) + 2;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
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

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v14 + (v16 & ~v13) != -2)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v16] & ~v13;
  if (v12 < 0xFE)
  {
    *(v24 + v14) = a2 + 1;
  }

  else
  {
    v25 = *(v11 + 56);

    v25(v24, a2);
  }
}

void sub_1C5B1A8A4()
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1C5B1B094(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790);
          if (v4 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EC198000, qword_1EC198008);
            if (v5 <= 0x3F)
            {
              sub_1C59B5DEC();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B1AA34(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v9 + v14 + 1;
  v18 = *(v8 + 64) + 7;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = *(*(v11 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v18 + (v17 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v19) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v30 = (a1 + v17) & ~v14;
  if (v10 >= v15)
  {
    v33 = *(v8 + 48);

    return v33(v30, v10, v7);
  }

  else
  {
    v31 = (((v18 + v30) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19;
    if (v13 < 0x7FFFFFFE)
    {
      v34 = *((v20 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if ((v34 + 1) >= 2)
      {
        return v34;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v32 = *(v12 + 48);

      return v32(v31);
    }
  }
}

void sub_1C5B1AD2C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v16 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v15 + 84);
  }

  if (v12 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v12;
  }

  v21 = v11 + v17 + 1;
  v22 = v18 + 7;
  v23 = *(v15 + 80) & 0xF8 | 7;
  v24 = (v23 + ((v18 + 7 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v25 = *(*(v13 - 8) + 64) + 7;
  v26 = v25 & 0xFFFFFFF8;
  v27 = (((((v25 & 0xFFFFFFFFFFFFFFF8) + v24 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v30 = 0;
    v31 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((((((v25 & 0xFFFFFFF8) + v24 + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = a3 - v20 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_23:
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          *(a1 + v27) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v27) = 0;
      }

      else if (v30)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v34 = (a1 + v21) & ~v17;
        if (v12 >= v19)
        {
          v37 = *(v14 + 56);

          v37(v34, a2, v12, v9);
        }

        else
        {
          v35 = ((((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23);
          if (v19 >= a2)
          {
            if (v16 < 0x7FFFFFFE)
            {
              v40 = ((v35 + v25) & 0xFFFFFFFFFFFFFFF8);
              if (a2 > 0x7FFFFFFE)
              {
                *v40 = 0;
                *v40 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v40 = a2;
              }
            }

            else
            {
              v38 = *(v15 + 56);
              v39 = (((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23;

              v38(v39, a2);
            }
          }

          else if (v26 != -8)
          {
            v36 = ~v19 + a2;
            bzero(((((v22 + v34) & 0xFFFFFFFFFFFFFFF8) + v23 + 16) & ~v23), (v26 + 8));
            *v35 = v36;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if (v27)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  if (v27)
  {
    v33 = ~v20 + a2;
    bzero(a1, v27);
    *a1 = v33;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      *(a1 + v27) = v32;
    }

    else
    {
      *(a1 + v27) = v32;
    }
  }

  else if (v30)
  {
    *(a1 + v27) = v32;
  }
}

void sub_1C5B1B094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5B1B0F8()
{
  sub_1C5B1B094(319, &qword_1EC195428, type metadata accessor for MotionAsset, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1C5B1B094(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1C5A7B478(319, &qword_1EDA45FF0, &qword_1EC195790);
          if (v4 <= 0x3F)
          {
            sub_1C5A7B478(319, &qword_1EC198000, qword_1EC198008);
            if (v5 <= 0x3F)
            {
              sub_1C59B5DEC();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B1B290(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C5BC7A24() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (v13 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v9 + v14 + 1;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = *(*(v11 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_33;
  }

  v21 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + (((v18 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v19) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v17 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v17 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v30 = (a1 + v18) & ~v14;
  if (v10 >= v16)
  {
    v33 = *(v8 + 48);

    return v33(v30, v10, v7);
  }

  else
  {
    v31 = (((v30 + v15) & 0xFFFFFFFFFFFFFFF8) + v19 + 24) & ~v19;
    if (v13 < 0x7FFFFFFE)
    {
      v34 = *((v20 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      if ((v34 + 1) >= 2)
      {
        return v34;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v32 = *(v12 + 48);

      return v32(v31);
    }
  }
}

void sub_1C5B1B584(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C5BC7A24() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  if (v16 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v15 + 84);
  }

  if (v12 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v12;
  }

  v21 = v11 + v17 + 1;
  v22 = *(v15 + 80) & 0xF8 | 7;
  v23 = *(*(v13 - 8) + 64) + 7;
  v24 = v23 & 0xFFFFFFF8;
  v25 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v28 = 0;
    v29 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_23:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v32 = (a1 + v21) & ~v17;
        if (v12 >= v19)
        {
          v35 = *(v14 + 56);

          v35(v32, a2, v12, v9);
        }

        else
        {
          v33 = ((((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22);
          if (v19 >= a2)
          {
            if (v16 < 0x7FFFFFFE)
            {
              v38 = ((v33 + v23) & 0xFFFFFFFFFFFFFFF8);
              if (a2 > 0x7FFFFFFE)
              {
                *v38 = 0;
                *v38 = a2 - 0x7FFFFFFF;
              }

              else
              {
                *v38 = a2;
              }
            }

            else
            {
              v36 = *(v15 + 56);
              v37 = (((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22;

              v36(v37, a2);
            }
          }

          else if (v24 != -8)
          {
            v34 = ~v19 + a2;
            bzero(((((v32 + v18) & 0xFFFFFFFFFFFFFFF8) + v22 + 24) & ~v22), (v24 + 8));
            *v33 = v34;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if ((((((v23 & 0xFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v31 = ~v20 + a2;
    bzero(a1, (((((v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + (((v21 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v22) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

unint64_t sub_1C5B1B970()
{
  result = qword_1EC1980C0;
  if (!qword_1EC1980C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1980C0);
  }

  return result;
}

unint64_t sub_1C5B1BA10()
{
  result = qword_1EC1980C8;
  if (!qword_1EC1980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1980C8);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TallAssetArtworkBackground();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (v0 + v3);
  v5 = type metadata accessor for MotionAsset();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v6 = sub_1C5BC7A24();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
    }
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 36), v1);
  v7 = v4 + *(v2 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748);

  return swift_deallocObject();
}

uint64_t sub_1C5B1BD14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = BYTE4(a1);
  v4 = a1;
  v6 = BYTE5(a1) & 1;
  return v2(&v4);
}

uint64_t sub_1C5B1BD68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592ABD4;

  return sub_1C5B19DC8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1C5B1BE30()
{
  result = qword_1EC198140;
  if (!qword_1EC198140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC198140);
  }

  return result;
}

unint64_t sub_1C5B1BEA0()
{
  result = qword_1EC198150;
  if (!qword_1EC198150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198148);
    sub_1C5B1BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198150);
  }

  return result;
}

unint64_t sub_1C5B1BF24()
{
  result = qword_1EC198158;
  if (!qword_1EC198158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198158);
  }

  return result;
}

unint64_t sub_1C5B1C014()
{
  result = qword_1EC198170;
  if (!qword_1EC198170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198170);
  }

  return result;
}

uint64_t sub_1C5B1C094(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1C5B1C168(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SquareAssetArtworkBackground();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (v0 + v3);
  v5 = type metadata accessor for MotionAsset();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v6 = sub_1C5BC7A24();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
    }
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 36), v1);
  v7 = v4 + *(v2 + 44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748);

  return swift_deallocObject();
}

uint64_t sub_1C5B1C554(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5B1C5D0()
{
  result = qword_1EC198188;
  if (!qword_1EC198188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198180);
    sub_1C5924F54(&qword_1EC198190, &qword_1EC198178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198188);
  }

  return result;
}

uint64_t ParallaxHeader.init(parallaxBackground:content:fixedBackground:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  type metadata accessor for ParallaxContext();
  sub_1C5ACB060();
  *a6 = sub_1C5BC8324();
  *(a6 + 8) = v12 & 1;
  v23 = a5;
  v13 = type metadata accessor for ParallaxHeader();
  v14 = (a6 + v13[20]);
  sub_1C5BCA684();
  *v14 = a4;
  v14[1] = v23;
  v15 = (a6 + v13[21]);
  sub_1C5BCA684();
  *v15 = a4;
  v15[1] = v23;
  v16 = (a6 + v13[22]);
  sub_1C5BCA684();
  *v16 = a4;
  v16[1] = v23;
  v17 = a6 + v13[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  v18 = sub_1C5BCA684();
  *v17 = a4;
  *(v17 + 8) = v23 & 1;
  *(v17 + 16) = a7;
  v19 = a1(v18);
  v20 = a2(v19);
  return a3(v20);
}

uint64_t ParallaxHeader.init<>(parallaxBackground:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for ParallaxContext();
  sub_1C5ACB060();
  *a3 = sub_1C5BC8324();
  *(a3 + 8) = v6 & 1;
  v14 = a2;
  v15 = MEMORY[0x1E6981E70];
  v16 = MEMORY[0x1E6981E70];
  v7 = type metadata accessor for ParallaxHeader();
  v8 = (a3 + v7[20]);
  sub_1C5BCA684();
  *v8 = a2;
  v8[1] = v15;
  v9 = (a3 + v7[21]);
  sub_1C5BCA684();
  *v9 = a2;
  v9[1] = v15;
  v10 = (a3 + v7[22]);
  sub_1C5BCA684();
  *v10 = a2;
  v10[1] = v15;
  v11 = a3 + v7[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  v12 = sub_1C5BCA684();
  *v11 = v14;
  *(v11 + 8) = v15 & 1;
  *(v11 + 16) = v16;
  return a1(v12);
}

uint64_t sub_1C5B1CA4C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1C5B1CB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  return v1;
}

double sub_1C5B1CC4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  return v1;
}

uint64_t sub_1C5B1CD6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  return v1;
}

uint64_t sub_1C5B1CDD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA6B4();
  return v1;
}

void sub_1C5B1CE48()
{
  v0 = sub_1C5B1CC4C() + 50.0;
  v1 = sub_1C5B1CA4C();
  swift_getKeyPath();
  sub_1C5ACB060();
  sub_1C5BC7B74();

  v2 = *(v1 + 48);

  v3 = sub_1C5B1CB8C() - v2 - v0;
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1C5B1CB8C() + 0.0 - v2;
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (v4 > v6)
  {
    __break(1u);
  }
}

void sub_1C5B1CF40(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v5 + 72), v2, v3);
  LODWORD(v2) = swift_dynamicCast();
  sub_1C5B1CE48();
  if (v2)
  {
    if (v7 < 0.0)
    {
      __break(1u);
    }
  }
}

uint64_t ParallaxHeader.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v136 = *(a1 - 1);
  *&v144 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v134 = v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v143 = *(v4 + 16);
  v150 = sub_1C5BC8AB4();
  v139 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v131 = v101 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1941D8);
  v149 = sub_1C5BC8AB4();
  v138 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v133 = v101 - v6;
  v151 = sub_1C5BC8AB4();
  v140 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v132 = v101 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198198);
  v146 = sub_1C5BC8AB4();
  v141 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v135 = v101 - v8;
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8);
  v127 = sub_1C5BC8AB4();
  v9 = a1[7];
  v129 = a1[4];
  v130 = v9;
  v145 = sub_1C5BC8BE4();
  v126 = sub_1C5BC8AB4();
  v10 = a1[3];
  v148 = a1;
  v128 = v10;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8);
  sub_1C5BC8AB4();
  v101[0] = a1[5];
  v209 = v101[0];
  v210 = MEMORY[0x1E697E270];
  v11 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v208 = MEMORY[0x1E697E070];
  v12 = swift_getWitnessTable();
  v13 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0);
  v205 = v12;
  v206 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8);
  v203 = v14;
  v204 = v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v201 = v16;
  v202 = v17;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v199 = v18;
  v200 = v19;
  v197 = swift_getWitnessTable();
  v198 = MEMORY[0x1E69802C0];
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0);
  v195 = v20;
  v196 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8);
  v193 = v22;
  v194 = v23;
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0);
  v24 = sub_1C5BC8AB4();
  v120 = MEMORY[0x1E697E378];
  v25 = swift_getWitnessTable();
  v26 = sub_1C5924F54(&qword_1EDA46118, &qword_1EC1943A0);
  v191 = v25;
  v192 = v26;
  v124 = v24;
  v125 = swift_getWitnessTable();
  sub_1C5BC8BE4();
  v27 = sub_1C5BC8AB4();
  v127 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v118 = v101 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981E0);
  v111 = v27;
  v29 = sub_1C5BC8AB4();
  v126 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v117 = v101 - v30;
  v31 = v101[0];
  v189 = v101[0];
  v190 = MEMORY[0x1E697F568];
  v32 = swift_getWitnessTable();
  v101[1] = v32;
  v33 = sub_1C5924F54(&qword_1EC1941D0, &qword_1EC1941D8);
  v187 = v32;
  v188 = v33;
  v34 = swift_getWitnessTable();
  v101[2] = v34;
  v35 = sub_1C5953670();
  v185 = v34;
  v186 = v35;
  v36 = swift_getWitnessTable();
  v103 = v36;
  v37 = sub_1C5924F54(&qword_1EC1981E8, &qword_1EC198198);
  v183 = v36;
  v184 = v37;
  v38 = swift_getWitnessTable();
  v106 = v38;
  v39 = swift_getWitnessTable();
  v181 = v38;
  v182 = v39;
  v147 = v11;
  v40 = swift_getWitnessTable();
  v108 = v40;
  v41 = sub_1C5924F54(&qword_1EC1981F0, &qword_1EC1981E0);
  v179 = v40;
  v180 = v41;
  v110 = v29;
  v109 = swift_getWitnessTable();
  v166 = v29;
  v167 = v109;
  v112 = MEMORY[0x1E697D010];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v113 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v104 = v101 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  v102 = sub_1C5BC8AB4();
  v114 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v105 = v101 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  v116 = sub_1C5BC8AB4();
  v122 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v145 = v101 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196078);
  v121 = sub_1C5BC8AB4();
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v115 = v101 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v119 = v101 - v47;
  v48 = v148;
  v49 = v137;
  v50 = v131;
  v51 = v143;
  sub_1C5BC9ED4();
  v52 = v136;
  v53 = v134;
  (*(v136 + 16))(v134, v49, v48);
  v54 = v52;
  v55 = (*(v52 + 80) + 64) & ~*(v52 + 80);
  v56 = swift_allocObject();
  *&v57 = v51;
  *(&v57 + 1) = v128;
  *&v58 = v129;
  *(&v58 + 1) = v31;
  v143 = v58;
  v144 = v57;
  *(v56 + 16) = v57;
  *(v56 + 32) = v58;
  v59 = v48;
  v60 = v48[6];
  v61 = v130;
  *(v56 + 48) = v60;
  *(v56 + 56) = v61;
  (*(v54 + 32))(v56 + v55, v53, v59);
  sub_1C5B1E3E8();
  sub_1C59AEC40();
  v62 = v133;
  v63 = v150;
  sub_1C5BCA084();

  (*(v139 + 8))(v50, v63);
  v64 = v132;
  v65 = v149;
  sub_1C5BCA254();
  (*(v138 + 8))(v62, v65);
  v157 = v144;
  v158 = v143;
  v159 = v60;
  v160 = v61;
  v161 = v49;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198200);
  sub_1C5924F54(&qword_1EC198208, &qword_1EC198200);
  v66 = v135;
  v67 = v151;
  sub_1C5BCA2C4();
  (*(v140 + 8))(v64, v67);
  v152 = v144;
  v153 = v143;
  v154 = v60;
  v155 = v61;
  v156 = v49;
  sub_1C5BCAA54();
  v68 = v118;
  v69 = v146;
  sub_1C5BCA2C4();
  (*(v141 + 8))(v66, v69);
  LOBYTE(v166) = 1;
  sub_1C5B1EEA8();
  v70 = v117;
  v71 = v111;
  sub_1C5BC9D44();
  (*(v127 + 8))(v68, v71);
  sub_1C5BC8554();
  v72 = v104;
  v74 = v109;
  v73 = v110;
  sub_1C5BC9FD4();
  (*(v126 + 8))(v70, v73);
  *&v211 = sub_1C5BCA484();
  v166 = v73;
  v167 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v105;
  v77 = OpaqueTypeMetadata2;
  sub_1C5BCA004();

  (*(v113 + 8))(v72, v77);
  v78 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  v211 = 0u;
  v212 = 0u;
  v213 = 0;
  v177 = OpaqueTypeConformance2;
  v178 = v78;
  v79 = v102;
  v80 = swift_getWitnessTable();
  sub_1C5BC9EE4();
  (*(v114 + 8))(v76, v79);
  v81 = sub_1C5B1CDD8();
  v83 = v82;
  v85 = v84;
  LOBYTE(v76) = v86;
  v175 = 0;
  v176 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC198218);
  sub_1C5BCA854();
  v87 = v166;
  v88 = v167;
  v89 = v168;
  v215 = v76 & 1;
  v214 = v169;
  v166 = v81;
  v167 = v83;
  v168 = v85;
  v169 = v76 & 1;
  *v170 = v175;
  *&v170[3] = *(&v175 + 3);
  v171 = v87;
  v172 = v88;
  v173 = v89;
  v174 = v214;
  sub_1C5BCAA54();
  v90 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  v164 = v80;
  v165 = v90;
  v91 = v116;
  v92 = swift_getWitnessTable();
  sub_1C5AA1E4C();
  v93 = v115;
  v94 = v145;
  sub_1C5BC9D04();

  (*(v122 + 8))(v94, v91);
  v95 = sub_1C5924F54(&qword_1EC1963C8, &qword_1EC196078);
  v162 = v92;
  v163 = v95;
  v96 = v121;
  v97 = swift_getWitnessTable();
  v98 = v119;
  sub_1C593EDC0(v93, v96, v97);
  v99 = *(v123 + 8);
  v99(v93, v96);
  sub_1C593EDC0(v98, v96, v97);
  return (v99)(v98, v96);
}

uint64_t sub_1C5B1E324()
{
  type metadata accessor for ParallaxHeader();
  type metadata accessor for ParallaxHeader();
  return sub_1C5B1CD0C();
}

unint64_t sub_1C5B1E3E8()
{
  result = qword_1EC1981F8;
  if (!qword_1EC1981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1981F8);
  }

  return result;
}

uint64_t sub_1C5B1E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1)@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v13 = type metadata accessor for ParallaxHeader();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v25;
  *(v19 + 6) = v24;
  *(v19 + 7) = v20;
  result = (*(v14 + 32))(&v19[v18], v17, v13);
  v22 = v26;
  *v26 = sub_1C5B21838;
  v22[1] = v19;
  return result;
}

uint64_t sub_1C5B1E5C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v28 = a8;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v13 = type metadata accessor for ParallaxHeader();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v27 = sub_1C5BCA484();
  v30 = v27;
  sub_1C5BC86C4();
  v29 = v17;
  (*(v14 + 16))(v16, a1, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v26;
  *(v19 + 6) = v25;
  *(v19 + 7) = v20;
  (*(v14 + 32))(&v19[v18], v16, v13);
  sub_1C59AEC40();
  v21 = v28;
  sub_1C5BCA334();

  v22 = sub_1C5B1CB8C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982F0);
  *(v21 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_1C5B1E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a3;
  v46 = a4;
  v47 = a8;
  *&v76 = a2;
  *(&v76 + 1) = a3;
  v77 = a4;
  v78 = a5;
  v44 = a5;
  v79 = a6;
  v80 = a7;
  v13 = type metadata accessor for ParallaxHeader();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  (*(v14 + 16))(&v40 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = v46;
  *(v19 + 5) = a5;
  v20 = v41;
  *(v19 + 6) = a6;
  *(v19 + 7) = v20;
  (*(v14 + 32))(&v19[v18], v17, v13);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0);
  v43 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8);
  v45 = sub_1C5BC8AB4();
  v46 = sub_1C5BC8BE4();
  v41 = sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0);
  v42 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8);
  sub_1C5BC8AB4();
  v71 = v44;
  v72 = MEMORY[0x1E697E270];
  WitnessTable = swift_getWitnessTable();
  v70 = MEMORY[0x1E697E070];
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0);
  v67 = v21;
  v68 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8);
  v65 = v23;
  v66 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v63 = v25;
  v64 = v26;
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v61 = v27;
  v62 = v28;
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x1E69802C0];
  v29 = swift_getWitnessTable();
  v30 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0);
  v57 = v29;
  v58 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8);
  v55 = v31;
  v56 = v32;
  swift_getWitnessTable();
  *&v76 = sub_1C5BC8864();
  *(&v76 + 1) = v33;
  v34 = sub_1C5BC8874();
  v35 = swift_getWitnessTable();
  View.mcui.getter(v34, &v50);

  v54 = v50;
  v53 = 3;
  type metadata accessor for MCUINamespace();
  MCUINamespace<A>.motionCollection(policy:)();

  v50 = v73;
  v51 = v74;
  v52 = v75;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0);
  v36 = sub_1C5BC8AB4();
  v37 = sub_1C5924F54(&qword_1EDA46118, &qword_1EC1943A0);
  v48 = v35;
  v49 = v37;
  v38 = swift_getWitnessTable();
  sub_1C593EDC0(&v50, v36, v38);

  v73 = v76;
  v74 = v77;
  v75 = v78;
  sub_1C593EDC0(&v73, v36, v38);
}

unint64_t sub_1C5B1EEA8()
{
  result = qword_1EC198210;
  if (!qword_1EC198210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198210);
  }

  return result;
}

uint64_t sub_1C5B1EF48@<X0>(uint64_t a1@<X1>, double a2@<X2>, double a3@<X3>, double a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v151 = a6;
  v150 = a5;
  v145 = a8;
  v147 = a2;
  v12 = sub_1C5BC8AB4();
  v117 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - v13;
  v15 = sub_1C5BC8AB4();
  v120 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v111 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0);
  v114 = v15;
  v17 = sub_1C5BC8AB4();
  v127 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v111 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8);
  v116 = v17;
  v19 = sub_1C5BC8AB4();
  v136 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v111 - v20;
  v148 = a4;
  v149 = a7;
  v21 = sub_1C5BC8BE4();
  v138 = v19;
  v140 = v21;
  v22 = sub_1C5BC8AB4();
  v143 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v111 - v23;
  v24 = a3;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v25 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  v123 = v25;
  v119 = WitnessTable;
  v27 = sub_1C5BC8BE4();
  v144 = v22;
  v122 = v27;
  v28 = sub_1C5BC8AB4();
  v126 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v121 = &v111 - v29;
  v128 = v30;
  v31 = sub_1C5BC8AB4();
  v129 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v111 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0);
  v130 = v31;
  v33 = sub_1C5BC8AB4();
  v135 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v131 = &v111 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8);
  v137 = v33;
  v141 = sub_1C5BC8AB4();
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v132 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v111 - v37;
  v38 = sub_1C5BC9314();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC9484();
  sub_1C5BC86D4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v39 + 8))(v41, v38);
  v176.origin.x = v43;
  v176.origin.y = v45;
  v176.size.width = v47;
  v176.size.height = v49;
  MinY = 0.0;
  if (CGRectGetMinX(v176) >= 0.0)
  {
    v177.origin.x = v43;
    v177.origin.y = v45;
    v177.size.width = v47;
    v177.size.height = v49;
    MinY = CGRectGetMinY(v177);
  }

  v170 = v147;
  v171 = v24;
  v146 = v24;
  v51 = v150;
  v172 = v148;
  v173 = v150;
  v174 = v151;
  v175 = v149;
  v52 = type metadata accessor for ParallaxHeader();
  v53 = sub_1C5B1CB8C();
  v54 = (MinY + v53) / v53;
  if (MinY <= 0.0)
  {
    v54 = 1.0;
  }

  if (v53 == 0.0)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = v54;
  }

  sub_1C5B1FF2C();
  v57 = v56;
  v115 = v52;
  sub_1C5BCA264();
  sub_1C5BCABC4();
  v168 = v51;
  v169 = MEMORY[0x1E697E270];
  v58 = MEMORY[0x1E697E858];
  v59 = swift_getWitnessTable();
  v60 = v118;
  sub_1C5BC9E54();
  (*(v117 + 8))(v14, v12);
  v61 = COERCE_DOUBLE(sub_1C5B1CD6C());
  if (v62)
  {
    v63 = 1.79769313e308;
  }

  else
  {
    v63 = v61;
  }

  sub_1C5BCABC4();
  v170 = v63;
  v171 = v55;
  v172 = v55;
  v173 = v64;
  v174 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982D0);
  v166 = v59;
  v167 = MEMORY[0x1E697E070];
  v66 = v114;
  v67 = swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1982D8, &qword_1EC1982D0);
  v68 = v124;
  sub_1C5BCA3A4();
  (*(v120 + 8))(v60, v66);
  v170 = MinY;
  v69 = sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0);
  v164 = v67;
  v165 = v69;
  v113 = v58;
  v70 = v116;
  v71 = swift_getWitnessTable();
  sub_1C5B1E3E8();
  v72 = v134;
  sub_1C5BC9D44();
  (*(v127 + 8))(v68, v70);
  v73 = sub_1C5BCAA44();
  v120 = v74;
  v75 = v149;
  v112 = a1;
  v124 = &v111;
  MEMORY[0x1EEE9AC00](v73);
  v76 = v147;
  v77 = *&v146;
  *(&v111 - 8) = v147;
  *(&v111 - 7) = v77;
  v78 = v148;
  *(&v111 - 6) = v148;
  *(&v111 - 5) = v51;
  v79 = v151;
  *(&v111 - 4) = v151;
  *(&v111 - 3) = v75;
  *(&v111 - 2) = v80;
  v127 = MEMORY[0x1E6980758];
  v81 = sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8);
  v162 = v71;
  v163 = v81;
  v82 = v138;
  v83 = swift_getWitnessTable();
  v84 = v142;
  sub_1C5BCA2C4();
  v85 = (*(v136 + 8))(v72, v82);
  v138 = &v111;
  MEMORY[0x1EEE9AC00](v85);
  v86 = *&v146;
  *(&v111 - 8) = v76;
  *(&v111 - 7) = v86;
  v87 = v150;
  *(&v111 - 6) = v78;
  *(&v111 - 5) = v87;
  *(&v111 - 4) = v79;
  *(&v111 - 3) = v75;
  *(&v111 - 2) = v112;
  *(&v111 - 1) = v57;
  sub_1C5BCAA54();
  v88 = swift_getWitnessTable();
  v160 = v83;
  v161 = v88;
  v89 = v144;
  v90 = swift_getWitnessTable();
  v91 = v121;
  sub_1C5BCA2C4();
  (*(v143 + 8))(v84, v89);
  v92 = swift_getWitnessTable();
  v158 = v90;
  v159 = v92;
  v93 = v128;
  v94 = swift_getWitnessTable();
  v95 = v125;
  sub_1C5BC9FC4();
  (*(v126 + 8))(v91, v93);
  v170 = v57;
  v156 = v94;
  v157 = MEMORY[0x1E69802C0];
  v96 = v130;
  v97 = swift_getWitnessTable();
  sub_1C5B21694();
  v98 = v131;
  sub_1C5BC9D44();
  (*(v129 + 8))(v95, v96);
  sub_1C5B1CF40(v115);
  v170 = v99;
  v171 = v100;
  v101 = sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0);
  v154 = v97;
  v155 = v101;
  v102 = v137;
  v103 = swift_getWitnessTable();
  sub_1C5B216E8();
  v104 = v132;
  sub_1C5BC9D44();
  (*(v135 + 8))(v98, v102);
  v105 = sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8);
  v152 = v103;
  v153 = v105;
  v106 = v141;
  v107 = swift_getWitnessTable();
  v108 = v133;
  sub_1C593EDC0(v104, v106, v107);
  v109 = *(v139 + 8);
  v109(v104, v106);
  sub_1C593EDC0(v108, v106, v107);
  return (v109)(v108, v106);
}

void sub_1C5B1FF2C()
{
  if (sub_1C5B1CB8C() != 0.0)
  {
    sub_1C5B1CE48();
    sub_1C5B1CE48();
  }
}

uint64_t sub_1C5B1FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for ParallaxHeader();
  sub_1C593EDC0(a1 + *(v19 + 76), a4, a7);
  sub_1C593EDC0(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t sub_1C5B200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v27 = a8;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v14 = sub_1C5BCA7D4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1C5BC9134();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = a1;
  v35 = a9;
  sub_1C5BCA7C4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v17, v14, WitnessTable);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_1C593EDC0(v20, v14, WitnessTable);
  return (v22)(v20, v14);
}

uint64_t sub_1C5B20340@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a7;
  v45 = a5;
  v44 = a4;
  v43 = a2;
  v50 = a8;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v11 = type metadata accessor for ParallaxHeader();
  v12 = *(v11 - 8);
  v41 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v13;
  v14 = sub_1C5BC8AB4();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  v16 = sub_1C5BC8AB4();
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v38 - v22;
  v23 = a6;
  sub_1C5BCA2B4();
  v24 = v40;
  (*(v12 + 16))(v40, a1, v11);
  v25 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v43;
  *(v26 + 3) = a3;
  v27 = v45;
  *(v26 + 4) = v44;
  *(v26 + 5) = v27;
  v28 = v46;
  *(v26 + 6) = v23;
  *(v26 + 7) = v28;
  (*(v12 + 32))(&v26[v25], v24, v11);
  v58 = v23;
  v59 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  sub_1C59AEC40();
  v30 = v39;
  sub_1C5BC9FE4();

  (*(v47 + 8))(v30, v14);
  v31 = sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
  v56 = WitnessTable;
  v57 = v31;
  v32 = swift_getWitnessTable();
  v33 = v42;
  sub_1C593EDC0(v20, v16, v32);
  v34 = v48;
  v35 = *(v48 + 8);
  v35(v20, v16);
  v54 = 0;
  v55 = 0;
  v60 = &v54;
  v36 = v49;
  (*(v34 + 16))(v49, v33, v16);
  v61 = v36;
  v53[0] = MEMORY[0x1E6981840];
  v53[1] = v16;
  v51 = MEMORY[0x1E6981838];
  v52 = v32;
  sub_1C594226C(&v60, 2uLL, v53);
  v35(v33, v16);
  return (v35)(v36, v16);
}

uint64_t sub_1C5B2086C@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC86C4();
  *a1 = v3;
  return result;
}

void sub_1C5B20898(double *a1)
{
  v1 = *a1;
  type metadata accessor for ParallaxHeader();
  if (v1 != sub_1C5B1CC4C())
  {
    sub_1C5B1CCAC();
  }
}

void sub_1C5B20904()
{
  sub_1C5B2104C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1C5B210A4();
          if (v4 <= 0x3F)
          {
            sub_1C5B210F4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B209FC(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 < a2)
  {
    v20 = ((((((((v19 + ((v18 + ((v14 + v15 + ((v13 + 9) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v37 = v17 + (v29 | v28);
    return (v37 + 1);
  }

LABEL_32:
  v30 = (a1 + v13 + 9) & ~v13;
  if (v6 != v17)
  {
    v32 = (v30 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v33 = *(v8 + 48);
      v34 = *(v8 + 84);
      v35 = a3[3];

      return v33(v32, v34, v35);
    }

    v32 = (v18 + v32) & ~v16;
    if (v12 == v17)
    {
      v33 = *(v11 + 48);
      v34 = *(v11 + 84);
      v35 = a3[4];

      return v33(v32, v34, v35);
    }

    v36 = *(((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v31 = *(v5 + 48);

  return v31(v30);
}

unsigned int *sub_1C5B20CE8(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a4[4] - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v10 <= v12)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v16 + v17;
  v21 = ((((((((v18 + 7 + ((v16 + v17 + ((v14 + v15 + ((v13 + 9) & ~v13)) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v21);
      result = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(result + v21) = v26;
      }

      else
      {
        *(result + v21) = v26;
      }
    }

    else if (v24)
    {
      *(result + v21) = v26;
    }

    return result;
  }

  v22 = a3 - v19;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  result = ((result + v13 + 9) & ~v13);
  if (v6 == v19)
  {
    v29 = *(v5 + 56);

    return v29(result);
  }

  v30 = (result + v14 + v15) & ~v15;
  if (v9 == v19)
  {
    v31 = *(v8 + 56);

    return v31(v30);
  }

  else
  {
    result = ((v20 + v30) & ~v17);
    if (v12 == v19)
    {
      v29 = *(v11 + 56);

      return v29(result);
    }

    v32 = ((result + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = a2 - 0x7FFFFFFF;
      v32[1] = 0;
    }

    else
    {
      v32[1] = a2;
    }
  }

  return result;
}

void sub_1C5B2104C()
{
  if (!qword_1EC1982A0)
  {
    type metadata accessor for ParallaxContext();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1982A0);
    }
  }
}

void sub_1C5B210A4()
{
  if (!qword_1EDA45FF8)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FF8);
    }
  }
}

void sub_1C5B210F4()
{
  if (!qword_1EDA45FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FF0);
    }
  }
}

double sub_1C5B211B8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1C5BC9B14();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetHeight(v16);
  sub_1C5BC9B04();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_1C5B2129C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5B21324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B215FC();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5B21388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B215FC();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5B213EC(uint64_t a1)
{
  v2 = sub_1C5B215FC();

  return MEMORY[0x1EEDE4410](a1, v2);
}

char *sub_1C5B21438(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *sub_1C5B21488(double *a1, void *(*a2)(double *__return_ptr))
{
  v4 = *a1;
  v5 = a2(&v10);
  v6 = v4 + v10;
  v7 = a1[1];
  result = (a2)(&v10, v5);
  v9 = v7 + v11;
  if (v6 > v7 + v11)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = v9;
  }

  return result;
}

unint64_t sub_1C5B21550()
{
  result = qword_1EC1982B8;
  if (!qword_1EC1982B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982B8);
  }

  return result;
}

unint64_t sub_1C5B215A8()
{
  result = qword_1EC1982C0;
  if (!qword_1EC1982C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982C0);
  }

  return result;
}

unint64_t sub_1C5B215FC()
{
  result = qword_1EC1982C8;
  if (!qword_1EC1982C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982C8);
  }

  return result;
}

unint64_t sub_1C5B21694()
{
  result = qword_1EC1982E0;
  if (!qword_1EC1982E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982E0);
  }

  return result;
}

unint64_t sub_1C5B216E8()
{
  result = qword_1EC1982E8;
  if (!qword_1EC1982E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1982E8);
  }

  return result;
}

void sub_1C5B21774(double *a1)
{
  type metadata accessor for ParallaxHeader();

  sub_1C5B20898(a1);
}

uint64_t sub_1C5B21850(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for ParallaxHeader() - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C5B21930()
{
  type metadata accessor for ParallaxHeader();
  type metadata accessor for ParallaxHeader();
  return sub_1C5B1CBEC();
}

uint64_t sub_1C5B21A00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for NowPlayingRouteObserver();
    sub_1C59315F8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  return result;
}

uint64_t sub_1C5B21AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B21B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = a3;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C596C0AC;
    aBlock[3] = a4;
    v9 = _Block_copy(aBlock);

    [v7 getActiveRouteWithCompletion_];
    _Block_release(v9);
  }

  return result;
}

uint64_t sub_1C5B21C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1C5BCB1E4();
  v5[8] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B21CD0, v7, v6);
}

uint64_t sub_1C5B21CD0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[7];
    if (v1)
    {
      v2 = v0[7];
    }

    else
    {
      v2 = [objc_opt_self() systemRoute];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_1C5BC8034();

    v4 = v0[5];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[5] = v2;

    v5 = v2;
    sub_1C5BC8044();
    sub_1C596C294(v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B21E50()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver__route;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1C5B21F20()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v0;
  result = [v2 endpointObject];
  if (result)
  {
    v5 = result;
    v6 = [result outputDevices];

    if (v6)
    {
      sub_1C592535C(0, &qword_1EC198308);
      v7 = sub_1C5BCB054();

      v13 = v3;
      if (v7 >> 62)
      {
LABEL_26:
        v8 = sub_1C5BCB984();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      while (v8 != v9)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C694FD20](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v3 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (([v10 isLocalDevice] & 1) == 0 || objc_msgSend(v3, sel_deviceType) == 3)
        {

          v12 = 1;
          goto LABEL_22;
        }

        v11 = [v3 deviceSubtype];

        ++v9;
        if (v11 == 14)
        {

          v12 = 1;
          goto LABEL_21;
        }
      }

      v12 = 0;
LABEL_21:
      v3 = v13;
    }

    else
    {
      v12 = 0;
    }

LABEL_22:

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B22190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592ABD4;

  return sub_1C5B21C38(a1, v4, v5, v7, v6);
}

uint64_t sub_1C5B2225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1C59AD990(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0u;
  *(v4 + 16) = v9;
  *(v4 + 40) = 0u;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;

  v10 = sub_1C5BCAE44();

  v11 = sub_1C5BCAE44();

  v12 = PPSCreateTelemetryIdentifier();

  if (v12)
  {
    v13 = MEMORY[0x1E69E6B70];
  }

  else
  {
    v13 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v15[3] = v13;
  swift_beginAccess();
  sub_1C59AB3E0(v15, v4 + 24);
  swift_endAccess();
  return v4;
}

void sub_1C5B22370(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1C59AB370((v1 + 3), v22);
  if (v22[3])
  {
    if (swift_dynamicCast())
    {
      if (qword_1EC1908A8 != -1)
      {
        swift_once();
      }

      v4 = sub_1C5BC7D64();
      __swift_project_value_buffer(v4, qword_1EC198320);

      v5 = sub_1C5BC7D44();
      v6 = sub_1C5BCB4C4();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v22[0] = v8;
        *v7 = 136446722;
        v9 = v2[9];
        v10 = v2[10];

        v11 = sub_1C592ADA8(v9, v10, v22);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2082;
        v13 = v2[7];
        v12 = v2[8];

        v14 = sub_1C592ADA8(v13, v12, v22);

        *(v7 + 14) = v14;
        *(v7 + 22) = 2082;
        v15 = sub_1C5BCACC4();
        v17 = sub_1C592ADA8(v15, v16, v22);

        *(v7 + 24) = v17;
        _os_log_impl(&dword_1C5922000, v5, v6, "Will report subsystem=%{public}s category=%{public}s payload=%{public}s", v7, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v8, -1, -1);
        MEMORY[0x1C69510F0](v7, -1, -1);
      }

      sub_1C5A0F590(a1);
      v18 = sub_1C5BCACA4();

      PPSSendTelemetry();
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C592BE5C(v22);
  }

  if (qword_1EC1908A8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C5BC7D64();
  __swift_project_value_buffer(v19, qword_1EC198320);
  v18 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4D4();
  if (os_log_type_enabled(v18, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C5922000, v18, v20, "Telemetry identifier for power log is not available. Reporting is not possible.", v21, 2u);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

LABEL_13:
}

uint64_t sub_1C5B226B8()
{

  sub_1C592BE5C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B2272C()
{
  type metadata accessor for PowerLogReporter();
  v0 = swift_allocObject();
  result = sub_1C5B2225C(0x61447265646E6552, 0xEA00000000006174, 0xD000000000000013, 0x80000001C5BFBE60);
  qword_1EC198310 = v0;
  return result;
}

uint64_t sub_1C5B22798(double a1, double a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5B227B8, 0, 0);
}

uint64_t sub_1C5B227B8()
{
  if (qword_1EC190898 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001C5BFBE60;
  v4 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  strcpy((inited + 80), "TimestampValue");
  *(inited + 95) = -18;
  *(inited + 120) = v4;
  *(inited + 96) = v1;
  v5 = sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8);
  swift_arrayDestroy();
  sub_1C5B22370(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B2292C()
{
  type metadata accessor for PowerLogReporter();
  v0 = swift_allocObject();
  result = sub_1C5B2225C(0x61447265646E6552, 0xEA00000000006174, 0xD000000000000016, 0x80000001C5BFBE40);
  qword_1EC198318 = v0;
  return result;
}

uint64_t sub_1C5B22998(double a1, double a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5B229B8, 0, 0);
}

uint64_t sub_1C5B229B8()
{
  if (qword_1EC1908A0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001C5BFBE40;
  v4 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  strcpy((inited + 80), "TimestampValue");
  *(inited + 95) = -18;
  *(inited + 120) = v4;
  *(inited + 96) = v1;
  v5 = sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8);
  swift_arrayDestroy();
  sub_1C5B22370(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C5B22B2C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC198320);
  __swift_project_value_buffer(v0, qword_1EC198320);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B22BA4()
{
  v0 = _s11ContentViewVMa_0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C5B22D0C(v3);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v3, v0, WitnessTable);
  v8 = *(v1 + 8);
  v8(v3, v0);
  sub_1C593EDC0(v6, v0, WitnessTable);
  return (v8)(v6, v0);
}

uint64_t sub_1C5B22D0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa);
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v3;
  _s17TransportControlsCMa();
  sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa);
  *(a1 + 32) = sub_1C5BC8C84();
  *(a1 + 40) = v4;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 121) = 0;
  *(a1 + 128) = swift_getKeyPath();
  *(a1 + 136) = 0;
  *(a1 + 144) = swift_getKeyPath();
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v5 = _s11ContentViewVMa_0();
  v6 = *(v5 + 56);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 60);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B22ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s20ContentAndHeaderViewVMa();
  _s28ControlsAndFooterButtonsViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198340);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v106 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1C5BCA7D4();
  v107 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v94 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  v108 = v4;
  v6 = sub_1C5BC8AB4();
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v94 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  v113 = v6;
  v118 = sub_1C5BC8AB4();
  v115 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v94 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198348);
  MEMORY[0x1EEE9AC00](v95);
  v101 = (&v94 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198350);
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v94 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198358);
  MEMORY[0x1EEE9AC00](v109);
  v114 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v94 - v16;
  v17 = sub_1C5BC8F34();
  v121 = *(v17 - 8);
  v122 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v3;
  v128 = v2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v96 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  v153 = AssociatedConformanceWitness;
  v154 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
  v151 = v21;
  v152 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v149 = v23;
  v150 = v24;
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x1E6980A30];
  v146 = swift_getWitnessTable();
  swift_getWitnessTable();
  v98 = sub_1C5BC92A4();
  v25 = sub_1C5BC8AB4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v94 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40);
  v29 = sub_1C5BC8AB4();
  v99 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v123 = &v94 - v30;
  sub_1C5BC97C4();
  v126 = sub_1C5BC8AB4();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v97 = &v94 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v94 - v35;
  v138 = sub_1C5BCA484();
  v130 = v128;
  v131 = v127;
  v36 = v100;
  v132 = v100;
  sub_1C5BCAA54();
  sub_1C5BC9CE4();

  v138 = 0x746E65746E6F63;
  v139 = 0xE700000000000000;
  v37 = v36;
  v38 = *(v36 + 128);
  v39 = v37;
  LODWORD(v96) = *(v37 + 136);
  if ((v96 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v41 = v120;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v38, 0);
    (*(v121 + 8))(v41, v122);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  v42 = swift_getWitnessTable();
  v144 = MEMORY[0x1E6981580];
  v145 = v42;
  v43 = swift_getWitnessTable();
  sub_1C59B7328();
  sub_1C5BCA114();

  (*(v26 + 8))(v28, v25);
  v44 = v39;
  v46 = *(v39 + 144);
  v45 = *(v39 + 152);
  if (*(v39 + 160) != 1)
  {

    sub_1C5BCB4E4();
    v47 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v48 = v120;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v46, v45, 0);
    (*(v121 + 8))(v48, v122);
    if (!v139)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v138 = *(v39 + 144);
  v139 = v45;

  if (v45)
  {
LABEL_7:
  }

LABEL_8:
  v49 = v38;
  v50 = sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40);
  v142 = v43;
  v143 = v50;
  v51 = swift_getWitnessTable();
  v52 = v97;
  v53 = v123;
  sub_1C5BCA094();
  v99[1](v53, v29);
  v54 = sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v140 = v51;
  v141 = v54;
  v55 = v126;
  v56 = swift_getWitnessTable();
  sub_1C593EDC0(v52, v55, v56);
  v57 = (v124 + 8);
  v58 = *(v124 + 8);
  (v58)(v52, v55);
  v59 = *(v44 + 32);
  if (v59)
  {
    swift_beginAccess();
    v60 = *(v59 + 58);
    v61 = v110;
    v62 = v103;
    v123 = v57;
    v98 = v56;
    v99 = v58;
    if (v60)
    {
      v63 = 1;
    }

    else
    {
      *v101 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
      swift_storeEnumTagMultiPayload();
      if ((v96 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v64 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v65 = v120;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5942458(v49, 0);
        (*(v121 + 8))(v65, v122);
        v49 = v137[7];
      }

      v66 = sub_1C5BC9664();
      sub_1C5BCABD4();
      v67 = v101;
      v68 = v101 + *(v95 + 36);
      *v68 = 0x736C6F72746E6F63;
      *(v68 + 1) = 0xE800000000000000;
      *(v68 + 2) = v49;
      *(v68 + 6) = v66;
      *(v68 + 4) = v69;
      *(v68 + 5) = v70;
      v68[48] = 0;
      sub_1C5B2CC28();
      v71 = v94;
      sub_1C5BCA094();
      sub_1C5924EF4(v67, &qword_1EC198348);
      v72 = (v71 + *(v62 + 36));
      *v72 = sub_1C592899C;
      v72[1] = 0;
      sub_1C5B2CD10(v71, v61);
      v63 = 0;
    }

    v73 = (*(v102 + 56))(v61, v63, 1, v62);
    MEMORY[0x1EEE9AC00](v73);
    v74 = v127;
    *(&v94 - 4) = v128;
    *(&v94 - 3) = v74;
    *(&v94 - 2) = v44;
    sub_1C5BC9134();
    v75 = v105;
    sub_1C5BCA7C4();
    v76 = v108;
    v77 = swift_getWitnessTable();
    v78 = v111;
    sub_1C5B7B220();
    (*(v107 + 8))(v75, v76);
    sub_1C5BCAAA4();
    swift_beginAccess();
    LOBYTE(v137[0]) = *(v59 + 58);
    v79 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
    v137[5] = v77;
    v137[6] = v79;
    v80 = v113;
    v81 = swift_getWitnessTable();
    v82 = v61;
    v83 = v117;
    sub_1C5BCA384();

    (*(v112 + 8))(v78, v80);
    v84 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    v137[3] = v81;
    v137[4] = v84;
    v85 = v118;
    v127 = swift_getWitnessTable();
    v86 = v116;
    sub_1C593EDC0(v83, v85, v127);
    v87 = v115;
    v128 = *(v115 + 8);
    (v128)(v83, v85);
    v88 = v125;
    v89 = v126;
    (*(v124 + 16))(v125, v129, v126);
    v137[0] = v88;
    v90 = v114;
    sub_1C59400B0(v82, v114, &qword_1EC198358);
    v137[1] = v90;
    (*(v87 + 16))(v83, v86, v85);
    v137[2] = v83;
    v136[0] = v89;
    v136[1] = v109;
    v136[2] = v85;
    v133 = v98;
    v134 = sub_1C5B2D3A0(&qword_1EC198368, &qword_1EC198358, &unk_1C5BEA700, sub_1C5B2CD8C);
    v135 = v127;
    sub_1C594226C(v137, 3uLL, v136);
    v91 = v128;
    (v128)(v86, v85);
    sub_1C5924EF4(v82, &qword_1EC198358);
    v92 = v99;
    (v99)(v129, v89);
    (v91)(v83, v85);
    sub_1C5924EF4(v90, &qword_1EC198358);
    return (v92)(v125, v89);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B24130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a4;
  v118 = sub_1C5BC90F4();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v111 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v104 - v9;
  v10 = sub_1C5BC8284();
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a2;
  v134 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v104 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  v124 = AssociatedTypeWitness;
  v14 = sub_1C5BC8AB4();
  v110 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v104 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  v137 = v14;
  v16 = sub_1C5BC8AB4();
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v104 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v136 = v16;
  v18 = sub_1C5BC8AB4();
  v119 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v104 - v19;
  v135 = v20;
  v21 = sub_1C5BC8AB4();
  v125 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v115 = &v104 - v26;
  v27 = sub_1C5BC8F34();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C5BCB804();
  v127 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v104 - v34;
  v36 = *(a1 + 144);
  v37 = *(a1 + 152);
  v132 = a1;
  v38 = *(a1 + 160);
  v128 = v21;
  if (v38 == 1)
  {
    v178 = v36;
    v179 = v37;
  }

  else
  {

    sub_1C5BCB4E4();
    v39 = v35;
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v35 = v39;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v36, v37, 0);
    (*(v28 + 8))(v30, v27);
    v37 = v179;
  }

  v129 = v31;
  v41 = MEMORY[0x1E6980A30];
  if (v37)
  {
    v104 = v28;
    v105 = v27;
    v106 = v35;
    v42 = v178;
    v44 = v132;
    v43 = v133;
    v45 = v134;
    sub_1C59498C4(*v132);
    v46 = *(v45 + 320);
    swift_unknownObjectRetain();
    v46(&v153, v43, v45);
    swift_unknownObjectRelease();
    v149 = v153;
    v147 = v42;
    v148 = v37;
    v47 = sub_1C5A36B84();
    v48 = v124;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *&v157 = &type metadata for NowPlayingHostedContentID;
    *(&v157 + 1) = v48;
    *&v158 = v47;
    *(&v158 + 1) = AssociatedConformanceWitness;
    v50 = type metadata accessor for ContentLookup();
    v51 = v107;
    sub_1C5A1EAEC(&v147, v50);

    swift_getKeyPath();
    *(v160 + 10) = *(v44 + 106);
    v52 = *(v44 + 6);
    v159 = *(v44 + 5);
    v160[0] = v52;
    v53 = *(v44 + 4);
    v157 = *(v44 + 3);
    v158 = v53;
    if (BYTE9(v160[1]))
    {
      v54 = *(v44 + 6);
      v155 = *(v44 + 5);
      v156[0] = v54;
      *(v156 + 9) = *(v44 + 105);
      v55 = *(v44 + 4);
      v153 = *(v44 + 3);
      v154 = v55;
    }

    else
    {

      sub_1C5BCB4E4();
      v65 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v157, &unk_1EC194DE0);
      (*(v104 + 8))(v30, v105);
    }

    v151 = v155;
    v152[0] = v156[0];
    *(v152 + 9) = *(v156 + 9);
    v149 = v153;
    v150 = v154;
    DeviceMetrics.padding.getter(&v147);
    v146 = v148;
    v132 = AssociatedConformanceWitness;
    sub_1C5BC9DF4();

    (*(v108 + 8))(v51, v48);
    _s11ContentViewVMa_0();
    v66 = v109;
    sub_1C594C704(v109);
    v67 = v116;
    v68 = v111;
    v69 = v118;
    (*(v116 + 104))(v111, *MEMORY[0x1E697F600], v118);
    v70 = sub_1C5BC8274();
    v71 = *(v67 + 8);
    v71(v68, v69);
    v71(v66, v69);
    v72 = v137;
    if (v70)
    {
      v74 = v121;
      v73 = v122;
      v75 = v123;
      (*(v122 + 104))(v121, *MEMORY[0x1E697DBA8], v123);
    }

    else
    {
      v74 = v121;
      sub_1C59421E4(v121);
      v73 = v122;
      v75 = v123;
    }

    v76 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
    v144 = v132;
    v145 = v76;
    WitnessTable = swift_getWitnessTable();
    v78 = v112;
    v79 = v131;
    sub_1C5BC9DC4();
    (*(v73 + 8))(v74, v75);
    (*(v110 + 8))(v79, v72);
    sub_1C5A399B8();
    v80 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
    v142 = WitnessTable;
    v143 = v80;
    v81 = v136;
    v82 = swift_getWitnessTable();
    v83 = v117;
    sub_1C5BC9D74();

    (*(v114 + 8))(v78, v81);
    sub_1C5BC98B4();
    sub_1C5BC8AC4();
    v84 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v140 = v82;
    v141 = v84;
    v85 = v135;
    v86 = swift_getWitnessTable();
    v87 = v113;
    sub_1C5BC9F84();
    (*(v119 + 8))(v83, v85);
    v138 = v86;
    v41 = MEMORY[0x1E6980A30];
    v139 = MEMORY[0x1E6980A30];
    v88 = v128;
    v89 = swift_getWitnessTable();
    v90 = v115;
    sub_1C593EDC0(v87, v88, v89);
    v91 = v125;
    v92 = *(v125 + 8);
    v92(v87, v88);
    v93 = v120;
    sub_1C593EDC0(v90, v88, v89);
    v92(v90, v88);
    v94 = v126;
    (*(v91 + 32))(v126, v93, v88);
    (*(v91 + 56))(v94, 0, 1, v88);
    v35 = v106;
    sub_1C5941600(v94, v106);
    v63 = *(v127 + 8);
    v64 = v94;
  }

  else
  {
    v56 = v126;
    (*(v125 + 56))(v126, 1, 1, v128);
    v57 = swift_getAssociatedConformanceWitness();
    v58 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
    v132 = v57;
    v176 = v57;
    v177 = v58;
    v59 = swift_getWitnessTable();
    v60 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
    v174 = v59;
    v175 = v60;
    v61 = swift_getWitnessTable();
    v62 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v172 = v61;
    v173 = v62;
    v170 = swift_getWitnessTable();
    v171 = v41;
    swift_getWitnessTable();
    sub_1C5941600(v56, v35);
    v63 = *(v127 + 8);
    v64 = v56;
  }

  v95 = v41;
  v96 = v129;
  v63(v64, v129);
  v97 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  v168 = v132;
  v169 = v97;
  v98 = swift_getWitnessTable();
  v99 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
  v166 = v98;
  v167 = v99;
  v100 = swift_getWitnessTable();
  v101 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v164 = v100;
  v165 = v101;
  v162 = swift_getWitnessTable();
  v163 = v95;
  v161 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  sub_1C593EDC0(v35, v96, v102);
  return (v63)(v35, v96);
}

double MCUINamespace<A>.nowPlayingHorizontalPadding.getter()
{
  sub_1C5B25094();
  sub_1C5BC8F44();
  return v1;
}

unint64_t sub_1C5B25094()
{
  result = qword_1EC198338;
  if (!qword_1EC198338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198338);
  }

  return result;
}

double sub_1C5B250E8@<D0>(double *a1@<X8>)
{
  sub_1C5B25094();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5B251C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v51 = a4;
  v6 = _s28ControlsAndFooterButtonsViewVMa();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = sub_1C5BC8AB4();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198340);
  v12 = sub_1C5BC8AB4();
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v37 - v13;
  v42 = v14;
  v50 = sub_1C5BC8AB4();
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v37 - v19;
  sub_1C5B2598C(&v76);
  v20 = _s20ContentAndHeaderViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v76, v20, WitnessTable);
  v96[6] = v82;
  v96[7] = v83;
  v96[8] = v84;
  v97 = v85;
  v96[2] = v78;
  v96[3] = v79;
  v96[4] = v80;
  v96[5] = v81;
  v96[0] = v76;
  v96[1] = v77;
  v43 = *(v20 - 8);
  v47 = *(v43 + 8);
  v48 = v43 + 8;
  v47(v96, v20);
  sub_1C5B25A50(v8);
  sub_1C5BC98A4();
  v21 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v37 + 8))(v8, v6);
  v53 = a2;
  v54 = a3;
  v22 = v38;
  v55 = v38;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198388);
  v74 = v21;
  v75 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  sub_1C5B2CE50();
  sub_1C5BC9CE4();
  (*(v39 + 8))(v11, v9);
  if (*(v22 + 32))
  {
    swift_beginAccess();
    sub_1C5BCAA54();
    v24 = sub_1C5924F54(qword_1EC1983C8, &qword_1EC198340);
    v69[4] = v23;
    v69[5] = v24;
    v25 = v42;
    v26 = swift_getWitnessTable();
    v27 = v40;
    v28 = v52;
    sub_1C5BCA234();
    (*(v41 + 8))(v28, v25);
    v69[2] = v26;
    v69[3] = MEMORY[0x1E697E040];
    v29 = v50;
    v30 = swift_getWitnessTable();
    v31 = v46;
    sub_1C593EDC0(v27, v29, v30);
    v32 = v45;
    v33 = *(v45 + 8);
    v33(v27, v29);
    v70[6] = v92;
    v70[7] = v93;
    v70[8] = v94;
    v70[2] = v88;
    v70[3] = v89;
    v70[4] = v90;
    v70[5] = v91;
    v70[0] = v86;
    v70[1] = v87;
    v65 = v92;
    v66 = v93;
    v67 = v94;
    v61 = v88;
    v62 = v89;
    v63 = v90;
    v64 = v91;
    v71 = v95;
    v68 = v95;
    v59 = v86;
    v60 = v87;
    v69[0] = &v59;
    v34 = v49;
    (*(v32 + 16))(v49, v31, v29);
    v69[1] = v34;
    (*(v43 + 16))(&v76, v70, v20);
    v58[0] = v20;
    v58[1] = v29;
    v56 = WitnessTable;
    v57 = v30;
    sub_1C594226C(v69, 2uLL, v58);
    v33(v31, v29);
    v72[6] = v92;
    v72[7] = v93;
    v72[8] = v94;
    v73 = v95;
    v72[2] = v88;
    v72[3] = v89;
    v72[4] = v90;
    v72[5] = v91;
    v72[0] = v86;
    v72[1] = v87;
    v35 = v47;
    v47(v72, v20);
    v33(v34, v29);
    v82 = v65;
    v83 = v66;
    v84 = v67;
    v85 = v68;
    v78 = v61;
    v79 = v62;
    v80 = v63;
    v81 = v64;
    v76 = v59;
    v77 = v60;
    return v35(&v76, v20);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B2598C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa);
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v3;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 105) = 0;
  *(a1 + 112) = swift_getKeyPath();
  *(a1 + 120) = 0;
  result = swift_getKeyPath();
  *(a1 + 128) = result;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1C5B25A50@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 73) = 0;
  v2 = _s28ControlsAndFooterButtonsViewVMa();
  v3 = *(v2 + 36);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v4 = (a1 + *(v2 + 40));
  _s17TransportControlsCMa();
  sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa);
  result = sub_1C5BC8C84();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t sub_1C5B25B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 128);
  if (*(a1 + 136) == 1)
  {
    v26 = *(a1 + 128);
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v9, 0);
    (*(v5 + 8))(v7, v4);
    v9 = v26;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  v16 = sub_1C5BC8AC4();
  v17 = sub_1C5BC9894();
  *&v20 = v8;
  *(&v20 + 1) = 0x736C6F72746E6F63;
  *&v21 = 0xE800000000000000;
  *(&v21 + 1) = v9;
  LODWORD(v22) = v11;
  *(&v22 + 1) = v13;
  *v23 = v15;
  v23[8] = 1;
  *&v23[16] = v16;
  v23[24] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1983B0);
  sub_1C5B2CFBC();
  sub_1C5BCA094();
  v24[2] = v22;
  v25[0] = *v23;
  *(v25 + 9) = *&v23[9];
  v24[0] = v20;
  v24[1] = v21;
  sub_1C5924EF4(v24, &qword_1EC1983B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198388);
  v19 = (a2 + *(result + 36));
  *v19 = sub_1C592899C;
  v19[1] = 0;
  return result;
}

uint64_t sub_1C5B25DB8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v95 = v2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  _s18HoveringHeaderViewVMa();
  sub_1C5BCB804();
  v6 = _s18DefaultContentViewVMa_0();
  v7 = _s29MatchedGeometrySourceModifierVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v8 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v84 = v8;
  v9 = sub_1C5BCA7D4();
  v85 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v81 - v10;
  v93 = v11;
  v12 = sub_1C5BC8AB4();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v81 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198450);
  v101 = v6;
  v16 = sub_1C5BC8AB4();
  _s10HeaderViewVMa();
  v17 = sub_1C5BCB804();
  v141[53] = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v87 = v17;
  v19 = sub_1C5BC8BE4();
  v100 = v16;
  v96 = v19;
  v97 = sub_1C5BC8AB4();
  v94 = v7;
  v20 = sub_1C5BC8AB4();
  v92 = v12;
  v98 = v20;
  v21 = sub_1C5BC92D4();
  v90 = *(v21 - 8);
  v91 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v81 - v22;
  v23 = *(v1 + 112);
  v142[6] = *(v1 + 96);
  v142[7] = v23;
  v142[8] = *(v1 + 128);
  v24 = *(v1 + 48);
  v142[2] = *(v1 + 32);
  v142[3] = v24;
  v25 = *(v1 + 80);
  v142[4] = *(v1 + 64);
  v142[5] = v25;
  v26 = *(v1 + 16);
  v142[0] = *v1;
  v143 = *(v1 + 144);
  v142[1] = v26;
  v141[3] = &type metadata for Features;
  v141[4] = sub_1C5A2E158();
  v27 = swift_allocObject();
  v141[0] = v27;
  *(v27 + 16) = "MediaCoreUI";
  *(v27 + 24) = 11;
  *(v27 + 32) = 2;
  *(v27 + 40) = "HoveringChapterPicker";
  *(v27 + 48) = 21;
  *(v27 + 56) = 2;
  v28 = sub_1C5BC7C14();
  v29 = __swift_destroy_boxed_opaque_existential_0(v141);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v29);
    *(&v81 - 4) = v4;
    *(&v81 - 3) = v5;
    *(&v81 - 2) = v142;
    sub_1C5BC9134();
    v30 = v82;
    sub_1C5BCA7C4();
    v31 = v93;
    v32 = swift_getWitnessTable();
    v33 = v86;
    sub_1C5A45C68(v31, v32);
    (*(v85 + 8))(v30, v31);
    v34 = sub_1C5B09990();
    v108 = v32;
    v109 = v34;
    v35 = v92;
    v36 = swift_getWitnessTable();
    v37 = v89;
    sub_1C593EDC0(v33, v35, v36);
    v38 = *(v88 + 8);
    v38(v33, v35);
    sub_1C593EDC0(v37, v35, v36);
    v39 = swift_getWitnessTable();
    v40 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450);
    v106 = v39;
    v107 = v40;
    v41 = swift_getWitnessTable();
    v42 = swift_getWitnessTable();
    v104 = v41;
    v105 = v42;
    v43 = swift_getWitnessTable();
    v44 = swift_getWitnessTable();
    v102 = v43;
    v103 = v44;
    swift_getWitnessTable();
    sub_1C5950E54(v33, v35);
    v38(v33, v35);
    v38(v89, v35);
  }

  else
  {
    sub_1C59498C4(*&v142[0]);
    v89 = v18;
    v45 = *(v5 + 224);
    swift_unknownObjectRetain();
    v46 = v45(v4, v5);
    swift_unknownObjectRelease();
    sub_1C5B27524(v46, v140);
    v47 = sub_1C5BCAA34();
    v84 = v48;
    v85 = v47;
    v86 = &v81;
    MEMORY[0x1EEE9AC00](v47);
    *(&v81 - 4) = v4;
    *(&v81 - 3) = v5;
    *(&v81 - 2) = v142;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198458);
    v49 = v101;
    v88 = swift_getWitnessTable();
    sub_1C5B2D3A0(&qword_1EC198460, &qword_1EC198458, &unk_1C5BEA9C8, sub_1C5B2D41C);
    sub_1C5BCA2C4();
    v131[4] = *&v140[64];
    v131[5] = *&v140[80];
    v131[6] = *&v140[96];
    v132 = *&v140[112];
    v131[0] = *v140;
    v131[1] = *&v140[16];
    v131[2] = *&v140[32];
    v131[3] = *&v140[48];
    (*(*(v49 - 8) + 8))(v131, v49);
    memcpy(v139, v141, 0x118uLL);
    v50 = sub_1C5BCAA34();
    MEMORY[0x1EEE9AC00](v50);
    *(&v81 - 4) = v4;
    *(&v81 - 3) = v5;
    *(&v81 - 2) = v142;
    v51 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450);
    v128 = v88;
    v129 = v51;
    v52 = v100;
    v53 = swift_getWitnessTable();
    sub_1C5BCA2C4();
    memcpy(v133, v139, sizeof(v133));
    (*(*(v52 - 8) + 8))(v133, v52);
    memcpy(v139, v140, 0x198uLL);
    KeyPath = swift_getKeyPath();
    v138[0] = KeyPath;
    LOBYTE(v138[1]) = 0;
    v55 = swift_getWitnessTable();
    v126 = v53;
    v127 = v55;
    v56 = v97;
    v57 = swift_getWitnessTable();
    MEMORY[0x1C694E550](v141, v138, v56, v94, v57);
    sub_1C5942458(KeyPath, 0);
    memcpy(v134, v139, sizeof(v134));
    (*(*(v56 - 8) + 8))(v134, v56);
    memcpy(v140, v141, sizeof(v140));
    v58 = swift_getWitnessTable();
    v124 = v57;
    v125 = v58;
    v59 = v98;
    v60 = swift_getWitnessTable();
    sub_1C593EDC0(v140, v59, v60);
    memcpy(v135, v140, 0x1A1uLL);
    v61 = *(v59 - 8);
    v62 = *(v61 + 8);
    v62(v135, v59);
    memcpy(v136, v130, 0x1A1uLL);
    memcpy(v141, v130, 0x1A1uLL);
    sub_1C593EDC0(v141, v59, v60);
    memcpy(v137, v141, 0x1A1uLL);
    v63 = *(v61 + 16);
    v63(v140, v136, v59);
    v62(v137, v59);
    memcpy(v138, v123, 0x1A1uLL);
    memcpy(v122, v123, 0x1A1uLL);
    v63(v141, v138, v59);
    v64 = swift_getWitnessTable();
    v65 = sub_1C5B09990();
    v120 = v64;
    v121 = v65;
    v66 = v92;
    swift_getWitnessTable();
    sub_1C5941738(v122, v66, v59);
    memcpy(v139, v122, 0x1A1uLL);
    v62(v139, v59);
    memcpy(v140, v123, sizeof(v140));
    v62(v140, v59);
    memcpy(v141, v130, 0x1A1uLL);
    v62(v141, v59);
  }

  v67 = swift_getWitnessTable();
  v68 = sub_1C5B09990();
  v118 = v67;
  v119 = v68;
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v71 = sub_1C5924F54(&qword_1EC198498, &qword_1EC198450);
  v116 = v70;
  v117 = v71;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v114 = v72;
  v115 = v73;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v112 = v74;
  v113 = v75;
  v76 = swift_getWitnessTable();
  v110 = v69;
  v111 = v76;
  v77 = v91;
  v78 = swift_getWitnessTable();
  v79 = v99;
  sub_1C593EDC0(v99, v77, v78);
  return (*(v90 + 8))(v79, v77);
}

uint64_t sub_1C5B26C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = a2;
  v6 = _s18HoveringHeaderViewVMa();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C5BCB804();
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v48 - v16;
  v106 = *(a1 + 128);
  v50 = a1;
  v107 = *(a1 + 144);
  if (v107 != 1)
  {
    sub_1C59400B0(&v106, &v97, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v25 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v106, qword_1EC1984A0);
    (*(v11 + 8))(v13, v10);
    if (*(&v88 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v52[7](v58, 1, 1, v6);
    swift_getWitnessTable();
    v21 = a3;
    goto LABEL_6;
  }

  v17 = *(&v106 + 1);
  v88 = v106;
  sub_1C59400B0(&v106, &v97, qword_1EC1984A0);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:

  v18 = v49;
  sub_1C5A3D91C(v49);
  WitnessTable = swift_getWitnessTable();
  v20 = v51;
  sub_1C593EDC0(v18, v6, WitnessTable);
  v21 = a3;
  v22 = v52;
  v23 = v52[1];
  (v23)(v18, v6);
  sub_1C593EDC0(v20, v6, WitnessTable);
  (v23)(v20, v6);
  v24 = v58;
  (v22[4])(v58, v18, v6);
  v22[7](v24, 0, 1, v6);
LABEL_6:
  v26 = v54;
  v27 = v58;
  sub_1C5941600(v58, v54);
  v28 = v53;
  v29 = *(v53 + 8);
  v51 = (v53 + 8);
  v52 = v29;
  (v29)(v27, v57);
  v30 = v56;
  sub_1C59498C4(*v50);
  v50 = v6;
  v31 = *(v21 + 224);
  swift_unknownObjectRetain();
  v32 = v31(v30, v21);
  swift_unknownObjectRelease();
  sub_1C5B27524(v32, &v88);
  KeyPath = swift_getKeyPath();
  *&v86[0] = KeyPath;
  BYTE8(v86[0]) = 0;
  v34 = _s18DefaultContentViewVMa_0();
  v35 = _s29MatchedGeometrySourceModifierVMa();
  v36 = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v97, v86, v34, v35, v36);
  sub_1C5942458(KeyPath, 0);
  v82[4] = v92;
  v82[5] = v93;
  v82[6] = v94;
  v83 = v95;
  v82[0] = v88;
  v82[1] = v89;
  v82[2] = v90;
  v82[3] = v91;
  (*(*(v34 - 8) + 8))(v82, v34);
  v94 = v103;
  v95 = v104;
  v96 = v105;
  v90 = v99;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v88 = v97;
  v89 = v98;
  v37 = sub_1C5BC8AB4();
  v38 = swift_getWitnessTable();
  v72[2] = v36;
  v72[3] = v38;
  v56 = swift_getWitnessTable();
  sub_1C593EDC0(&v88, v37, v56);
  v84[6] = v94;
  v84[7] = v95;
  v85 = v96;
  v84[2] = v90;
  v84[3] = v91;
  v84[4] = v92;
  v84[5] = v93;
  v84[0] = v88;
  v84[1] = v89;
  v39 = *(v37 - 8);
  v40 = *(v39 + 8);
  v40(v84, v37);
  v41 = v57;
  v42 = v58;
  (*(v28 + 16))(v58, v26, v57);
  v86[6] = v79;
  v86[7] = v80;
  v86[2] = v75;
  v86[3] = v76;
  v86[4] = v77;
  v86[5] = v78;
  v86[0] = v73;
  v86[1] = v74;
  v69 = v79;
  v70 = v80;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v87 = v81;
  v71 = v81;
  v63 = v73;
  v64 = v74;
  v72[0] = v42;
  v72[1] = &v63;
  v43 = v42;
  (*(v39 + 16))(&v97, v86, v37);
  v62[0] = v41;
  v62[1] = v37;
  v59 = swift_getWitnessTable();
  v44 = v41;
  v60 = swift_getWitnessTable();
  v61 = v56;
  sub_1C594226C(v72, 2uLL, v62);
  v94 = v79;
  v95 = v80;
  v96 = v81;
  v90 = v75;
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v88 = v73;
  v89 = v74;
  v40(&v88, v37);
  v45 = v41;
  v46 = v52;
  (v52)(v26, v45);
  v103 = v69;
  v104 = v70;
  v105 = v71;
  v99 = v65;
  v100 = v66;
  v101 = v67;
  v102 = v68;
  v97 = v63;
  v98 = v64;
  v40(&v97, v37);
  return (v46)(v43, v44);
}

uint64_t sub_1C5B27524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 81) = 0;
  *(a2 + 88) = swift_getKeyPath();
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  MEMORY[0x1C694C860](v3, 0.0, -130.0);
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8644();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  MEMORY[0x1C694C860](v4, 0.0, -300.0);
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8644();

  v5 = sub_1C5BC85F4();

  *(a2 + 112) = v5;
  return result;
}

void sub_1C5B277B4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1C5BC9014();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - v7;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a1 + 128);
  v82 = *(a1 + 144);
  v12 = v81;
  if (v82 != 1)
  {
    sub_1C59400B0(&v81, &v68, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v14 = v9;
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v9 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v81, qword_1EC1984A0);
    (*(v14 + 8))(v11, v8);
    v13 = *(&v76 + 1);
    v12 = v76;
    if (*(&v76 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:

    goto LABEL_14;
  }

  v13 = *(&v81 + 1);
  v76 = v81;
  sub_1C59400B0(&v81, &v68, qword_1EC1984A0);
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v12 == 0x6575657571 && v13 == 0xE500000000000000)
  {

    goto LABEL_9;
  }

  v16 = sub_1C5BCBDE4();

  if ((v16 & 1) == 0)
  {
LABEL_14:
    sub_1C5B2D628(&v68);
LABEL_20:
    v44 = v74;
    a2[6] = v73;
    a2[7] = v44;
    a2[8] = v75;
    v45 = v71[0];
    a2[2] = v70;
    a2[3] = v45;
    v46 = v72;
    a2[4] = v71[1];
    a2[5] = v46;
    v47 = v69;
    *a2 = v68;
    a2[1] = v47;
    return;
  }

LABEL_9:
  v80 = *(a1 + 120);
  v17 = *(a1 + 112);
  v79 = v17;
  if ((v80 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v18 = v9;
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v9 = v18;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v79, &qword_1EC191B48);
    (*(v18 + 8))(v11, v8);
    v17 = v68;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    swift_beginAccess();
    v21 = *(v20 + 32);
    v49 = v9;
    v53 = v17;
    if (v21)
    {
      swift_beginAccess();
      v52 = *(v20 + 24) < 1;
    }

    else
    {
      v52 = 0;
    }

    v51 = sub_1C5BC9664();
    sub_1C5BCABD4();
    v23 = v22;
    v25 = v24;
    v50 = sub_1C5BC9884();
    *(v78 + 10) = *(a1 + 90);
    v26 = *(a1 + 48);
    v77[0] = *(a1 + 32);
    v77[1] = v26;
    v27 = *(a1 + 80);
    v77[2] = *(a1 + 64);
    v78[0] = v27;
    if (BYTE9(v78[1]))
    {
      *(&v66[1] + 8) = *(a1 + 56);
      *(&v66[2] + 8) = *(a1 + 72);
      *(&v66[3] + 8) = *(a1 + 88);
      BYTE8(v66[4]) = *(a1 + 104);
      *(v66 + 8) = *(a1 + 40);
      *&v66[0] = *&v77[0];
    }

    else
    {
      sub_1C59400B0(v77, &v68, &qword_1EC191B58);
      sub_1C5BCB4E4();
      v28 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v77, &qword_1EC191B58);
      (*(v49 + 8))(v11, v8);
    }

    v69 = v66[1];
    v70 = v66[2];
    v71[0] = v66[3];
    *(v71 + 9) = *(&v66[3] + 9);
    v68 = v66[0];
    DeviceMetrics.padding.getter(&v58);
    sub_1C5BC8174();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v67 = 0;
    v37 = sub_1C5BC8AC4();
    v38 = sub_1C5BC9894();
    v39 = v55;
    sub_1C5BC9004();
    v41 = v56;
    v40 = v57;
    (*(v56 + 16))(v54, v39, v57);
    sub_1C5B2D644(&qword_1EC196DD8, MEMORY[0x1E697F400]);
    v42 = sub_1C5BC8674();
    (*(v41 + 8))(v39, v40);
    *&v58 = 0x49676E6979616C70;
    *(&v58 + 1) = 0xEB000000006D6574;
    *&v59 = v53;
    DWORD2(v59) = v51;
    *&v60 = v23;
    *(&v60 + 1) = v25;
    LOBYTE(v61) = v52;
    BYTE8(v61) = v50;
    *&v62 = v30;
    *(&v62 + 1) = v32;
    *&v63 = v34;
    *(&v63 + 1) = v36;
    LOBYTE(v64[0]) = 0;
    *(v64 + 8) = xmmword_1C5BE1450;
    *(&v64[1] + 1) = v37;
    LOBYTE(v65) = v38;
    *(&v65 + 1) = v42;
    CGSizeMake(&v58, v43);
    v73 = v64[0];
    v74 = v64[1];
    v75 = v65;
    v70 = v60;
    v71[0] = v61;
    v71[1] = v62;
    v72 = v63;
    v68 = v58;
    v69 = v59;
    goto LABEL_20;
  }

  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa);
  sub_1C5BC8C74();
  __break(1u);
}

uint64_t sub_1C5B27EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 128);
  v52 = *(a1 + 144);
  v9 = v51;
  if (v52 == 1)
  {
    v10 = *(&v51 + 1);
    v50 = v51;
    sub_1C59400B0(&v51, &v44, qword_1EC1984A0);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1C59400B0(&v51, &v44, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    v27 = v9;
    v12 = v11;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v51, qword_1EC1984A0);
    (*(v6 + 8))(v8, v5);
    v10 = *(&v50 + 1);
    v9 = v50;
    if (!*(&v50 + 1))
    {
LABEL_7:
      *&v43[0] = 1;
      _s10HeaderViewVMa();
      memset(v43 + 8, 0, 98);
      swift_getWitnessTable();
      sub_1C5941600(v43, &v44);
LABEL_15:
      v41 = v48;
      v42[0] = v49[0];
      *(v42 + 10) = *(v49 + 10);
      v37 = v44;
      v38 = v45;
      v39 = v46;
      v40 = v47;
      _s10HeaderViewVMa();
      v23 = sub_1C5BCB804();
      WitnessTable = swift_getWitnessTable();
      v24 = swift_getWitnessTable();
      sub_1C593EDC0(&v37, v23, v24);
      v43[4] = v41;
      v43[5] = v42[0];
      *(&v43[5] + 10) = *(v42 + 10);
      v43[0] = v37;
      v43[1] = v38;
      v43[2] = v39;
      v43[3] = v40;
      return (*(*(v23 - 8) + 8))(v43, v23);
    }
  }

  *(&v45 + 1) = &type metadata for Features;
  *&v46 = sub_1C5A2E158();
  v13 = swift_allocObject();
  *&v44 = v13;
  *(v13 + 16) = "MediaCoreUI";
  *(v13 + 24) = 11;
  *(v13 + 32) = 2;
  *(v13 + 40) = "HoveringChapterPicker";
  *(v13 + 48) = 21;
  *(v13 + 56) = 2;
  v14 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (v14)
  {

    goto LABEL_7;
  }

  if (v9 == 0x6575657571 && v10 == 0xE500000000000000)
  {
  }

  else
  {
    v15 = sub_1C5BCBDE4();

    v16 = 0;
    if ((v15 & 1) == 0)
    {
LABEL_14:
      sub_1C59B5F20(v16 & 1, &v44);
      v18 = _s10HeaderViewVMa();
      v27 = a2;
      v19 = v18;
      v20 = swift_getWitnessTable();
      sub_1C593EDC0(&v44, v19, v20);
      v32[4] = v48;
      v33[0] = v49[0];
      *(v33 + 10) = *(v49 + 10);
      v32[0] = v44;
      v32[1] = v45;
      v32[2] = v46;
      v32[3] = v47;
      v21 = *(*(v19 - 8) + 8);
      v21(v32, v19);
      v48 = v43[4];
      v49[0] = v43[5];
      *(v49 + 10) = *(&v43[5] + 10);
      v44 = v43[0];
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      sub_1C593EDC0(&v44, v19, v20);
      v34[3] = v47;
      v34[4] = v48;
      v35[0] = v49[0];
      *(v35 + 10) = *(v49 + 10);
      v34[0] = v44;
      v34[1] = v45;
      v34[2] = v46;
      v21(v34, v19);
      v48 = v30[6];
      v49[0] = v31[0];
      *(v49 + 10) = *(v31 + 10);
      v44 = v30[2];
      v45 = v30[3];
      v46 = v30[4];
      v47 = v30[5];
      sub_1C5941600(&v44, v29);
      v41 = v48;
      v42[0] = v49[0];
      *(v42 + 10) = *(v49 + 10);
      v37 = v44;
      v38 = v45;
      v39 = v46;
      v40 = v47;
      v22 = sub_1C5BCB804();
      (*(*(v22 - 8) + 8))(&v37, v22);
      v48 = v29[4];
      v49[0] = v30[0];
      *(v49 + 10) = *(v30 + 10);
      v44 = v29[0];
      v45 = v29[1];
      v46 = v29[2];
      v47 = v29[3];
      goto LABEL_15;
    }
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    swift_beginAccess();
    v16 = *(v17 + 32) ^ 1;
    goto LABEL_14;
  }

  _s5QueueCMa();
  sub_1C5B2D644(qword_1EDA4A0C0, _s5QueueCMa);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5B2855C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[2] = a1;
  v23[3] = a6;
  _s29MatchedGeometrySourceModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198528);
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v23[6] = a4;
  v23[7] = a5;
  v23[8] = a2;
  v24 = a3 & 1;
  sub_1C5BCAA54();
  v23[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198530);
  WitnessTable = swift_getWitnessTable();
  sub_1C5B2CF08(&qword_1EC198538, &qword_1EC198530, &unk_1C5BEAC78, sub_1C5B2CFEC);
  sub_1C5BC9CE4();
  v19 = sub_1C5924F54(&qword_1EC198540, &qword_1EC198528);
  v25 = WitnessTable;
  v26 = v19;
  v20 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v20);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1C593EDC0(v16, v10, v20);
  return (v21)(v16, v10);
}

uint64_t sub_1C5B28814(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  if (a2)
  {
    v19 = a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a1, 0);
    (*(v5 + 8))(v7, v4);
    a1 = v19;
  }

  v10 = sub_1C5BC9664();
  sub_1C5BCABD4();
  *&v14 = v8;
  *(&v14 + 1) = 0x746E65746E6F63;
  *&v15 = 0xE700000000000000;
  *(&v15 + 1) = a1;
  *v16 = v10;
  *&v16[8] = v11;
  *&v16[16] = v12;
  v16[24] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1983C0);
  sub_1C5B2CFEC();
  sub_1C5BCA094();
  v17[0] = v14;
  v17[1] = v15;
  v18[0] = *v16;
  *(v18 + 9) = *&v16[9];
  return sub_1C5924EF4(v17, &qword_1EC1983C0);
}

uint64_t sub_1C5B28A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s21FullScreenArtworkViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v23 = v4;
  _s33DefaultMetadataAndContextMenuViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s10BannerViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  v22[1] = swift_getWitnessTable();
  v5 = sub_1C5BCA7D4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = v2[5];
  v44 = v2[4];
  v45 = v15;
  v46 = v2[6];
  v47 = *(v2 + 14);
  v16 = v2[1];
  v40 = *v2;
  v41 = v16;
  v17 = v2[3];
  v42 = v2[2];
  v43 = v17;
  v27 = v3;
  v28 = v23;
  v29 = &v40;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  sub_1C5BC98B4();
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  sub_1C5B2A63C();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v24 + 8))(v7, v5);
  v30 = WitnessTable;
  v31 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v19);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_1C593EDC0(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t sub_1C5B28E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s21FullScreenArtworkViewVMa();
  sub_1C5BC97C4();
  v101 = sub_1C5BC8AB4();
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v84 - v16;
  v86 = *a1;

  v99 = a2;
  v95 = a3;
  *&v188 = sub_1C5B4BFA0(v17, a2, a3);
  v92 = v18;
  v93 = v7;
  *(&v188 + 1) = v18;
  v232 = *(a1 + 11);
  v87 = a1;
  v233 = *(a1 + 104);
  v19 = *(&v232 + 1);
  v20 = v232;
  v96 = v233;
  v94 = *(&v232 + 1);
  if (v233 != 1)
  {
    sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v21 = v8;
    v22 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v232, qword_1EC1984A0);
    v8 = v21;
    (*(v21 + 8))(v10, v7);
    if (!*(&v180 + 1))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v180 = v232;
  sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
  if (v19)
  {
LABEL_5:
  }

LABEL_6:
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA094();

  v24 = sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v217 = WitnessTable;
  v218 = v24;
  v25 = v101;
  v88 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v25, v88);
  v89 = *(v97 + 8);
  v90 = v97 + 8;
  v89(v14, v25);
  v26 = v8;
  if (v96)
  {
    v215 = v20;
    v27 = v94;
    v216 = v94;
    sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
    v28 = v27;
  }

  else
  {
    sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v232, qword_1EC1984A0);
    (*(v26 + 8))(v10, v93);
    v28 = v216;
  }

  v92 = v26;
  v30 = MEMORY[0x1E697E5D8];
  if (v28)
  {

    _s33DefaultMetadataAndContextMenuViewVMa();
    sub_1C5BC8AB4();
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    memset(v199, 0, sizeof(v199));
    *&v200 = 0;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
    sub_1C5BC8AB4();
    v104 = swift_getWitnessTable();
    v105 = v30;
    v31 = swift_getWitnessTable();
    v32 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v102 = v31;
    v103 = v32;
    swift_getWitnessTable();
    sub_1C5941600(&v196, &v209);
  }

  else
  {
    v85 = v20;
    sub_1C5B46508(&v137);
    v222 = v137;
    *&v223 = v138;
    BYTE8(v223) = BYTE8(v138);
    sub_1C5BC9884();
    v33 = *(v87 + 1);
    *&v231[10] = *(v87 + 66);
    v34 = *(v87 + 3);
    v230[0] = v33;
    v230[1] = v34;
    v35 = *(v87 + 7);
    v230[2] = *(v87 + 5);
    *v231 = v35;
    if (v231[25])
    {
      v36 = *(v87 + 1);
      *(&v179[1] + 8) = *(v87 + 2);
      v37 = *(v87 + 4);
      *(&v179[2] + 8) = *(v87 + 3);
      *(&v179[3] + 8) = v37;
      BYTE8(v179[4]) = *(v87 + 80);
      *(v179 + 8) = v36;
      *&v179[0] = v33;
    }

    else
    {
      sub_1C59400B0(v230, &v196, &qword_1EC191B58);
      sub_1C5BCB4E4();
      v38 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v230, &qword_1EC191B58);
      (*(v92 + 8))(v10, v93);
    }

    v198 = v179[2];
    v199[0] = v179[3];
    *(v199 + 9) = *(&v179[3] + 9);
    v197 = v179[1];
    v196 = v179[0];
    DeviceMetrics.padding.getter(&v188);
    _s33DefaultMetadataAndContextMenuViewVMa();
    v39 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v40 = v223;
    v41 = BYTE8(v223);
    swift_unknownObjectRelease();
    sub_1C5942458(v40, v41);
    v198 = v122;
    v199[0] = v123[0];
    *(v199 + 9) = *(v123 + 9);
    v197 = v121;
    v196 = v120;
    v42 = sub_1C5BC8AB4();
    v207 = v39;
    v208 = MEMORY[0x1E697E5D8];
    v43 = swift_getWitnessTable();
    sub_1C5BC9D74();
    v177 = v198;
    v178[0] = v199[0];
    *(v178 + 9) = *(v199 + 9);
    v176 = v197;
    v175 = v196;
    (*(*(v42 - 8) + 8))(&v175, v42);
    v182 = v190;
    v183 = v191;
    v184 = v192;
    *&v185 = v193;
    v180 = v188;
    v181 = v189;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
    v44 = sub_1C5BC8AB4();
    v45 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v205 = v43;
    v206 = v45;
    v46 = swift_getWitnessTable();
    sub_1C593EDC0(&v180, v44, v46);
    v161 = v183;
    v162 = v184;
    *&v163 = v185;
    v158 = v180;
    v159 = v181;
    v160 = v182;
    v47 = *(*(v44 - 8) + 8);
    v47(&v158, v44);
    v182 = v198;
    v183 = v199[0];
    v184 = v199[1];
    *&v185 = v200;
    v180 = v196;
    v181 = v197;
    sub_1C593EDC0(&v180, v44, v46);
    v168 = v182;
    v169 = v183;
    v170 = v184;
    *&v171 = v185;
    v166 = v180;
    v167 = v181;
    v47(&v166, v44);
    v127 = v152;
    v128 = v153;
    v129 = v154;
    *&v130 = v155;
    v125 = v150;
    v126 = v151;
    sub_1C5941600(&v125, &v142);
    v182 = v127;
    v183 = v128;
    v184 = v129;
    *&v185 = v130;
    v180 = v125;
    v181 = v126;
    v48 = sub_1C5BCB804();
    (*(*(v48 - 8) + 8))(&v180, v48);
    v211 = v144;
    v212 = v145;
    v213 = v146;
    v214 = v147;
    v209 = v142;
    v210 = v143;
    v20 = v85;
  }

  v49 = v94;
  v50 = v92;
  if (v96)
  {
    v203 = v20;
    v204 = v94;
    sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
  }

  else
  {
    sub_1C59400B0(&v232, &v196, qword_1EC1984A0);
    sub_1C5BCB4E4();
    v51 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v232, qword_1EC1984A0);
    (*(v50 + 8))(v10, v93);
    v49 = v204;
  }

  if (v49)
  {

    sub_1C5B2D890(&v188);
    v186 = v194;
    v187[0] = v195[0];
    *(v187 + 9) = *(v195 + 9);
    v182 = v190;
    v183 = v191;
    v185 = v193;
    v184 = v192;
    v181 = v189;
    v180 = v188;
    _s10BannerViewVMa();
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v108 = swift_getWitnessTable();
    v52 = MEMORY[0x1E697E5D8];
    v109 = MEMORY[0x1E697E5D8];
    v106 = swift_getWitnessTable();
    v107 = v52;
    swift_getWitnessTable();
    sub_1C5941600(&v180, &v196);
  }

  else
  {

    sub_1C5B304C8(&v219);
    v229 = v221;
    v227 = v220;
    v228 = BYTE8(v220);
    v226 = v219;
    v196 = v219;
    v197 = v220;
    v198 = v221;
    sub_1C5BC98A4();
    _s10BannerViewVMa();
    v53 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    sub_1C5924EF4(&v226, &unk_1EC197E30);
    sub_1C5924EF4(&v227, &qword_1EC194400);
    v54 = sub_1C5BC8C94();
    (*(*(v54 - 8) + 8))(&v229, v54);
    v177 = v179[2];
    v178[0] = v179[3];
    v178[1] = v179[4];
    *(&v178[1] + 9) = *(&v179[4] + 9);
    v175 = v179[0];
    v176 = v179[1];
    sub_1C5BC9884();
    v55 = *(v87 + 1);
    *(v225 + 10) = *(v87 + 66);
    v56 = *(v87 + 3);
    v222 = v55;
    v223 = v56;
    v57 = *(v87 + 7);
    v224 = *(v87 + 5);
    v225[0] = v57;
    if (BYTE9(v225[1]))
    {
      v58 = *(v87 + 1);
      *(&v174[1] + 8) = *(v87 + 2);
      v59 = *(v87 + 4);
      *(&v174[2] + 8) = *(v87 + 3);
      *(&v174[3] + 8) = v59;
      BYTE8(v174[4]) = *(v87 + 80);
      *(v174 + 8) = v58;
      *&v174[0] = v222;
    }

    else
    {
      sub_1C59400B0(&v222, &v196, &qword_1EC191B58);
      sub_1C5BCB4E4();
      v60 = v10;
      v61 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v222, &qword_1EC191B58);
      (*(v92 + 8))(v60, v93);
    }

    v198 = v174[2];
    v199[0] = v174[3];
    *(v199 + 9) = *(&v174[3] + 9);
    v197 = v174[1];
    v196 = v174[0];
    DeviceMetrics.padding.getter(&v188);
    v62 = sub_1C5BC8AB4();
    v135 = v53;
    v63 = MEMORY[0x1E697E5D8];
    v136 = MEMORY[0x1E697E5D8];
    v64 = swift_getWitnessTable();
    sub_1C5BCA2F4();
    v139 = v177;
    v140 = v178[0];
    v141[0] = v178[1];
    *(v141 + 9) = *(&v178[1] + 9);
    v137 = v175;
    v138 = v176;
    (*(*(v62 - 8) + 8))(&v137, v62);
    v201 = v186;
    v202[0] = v187[0];
    *(v202 + 9) = *(v187 + 9);
    v198 = v182;
    v199[0] = v183;
    v200 = v185;
    v199[1] = v184;
    v197 = v181;
    v196 = v180;
    v65 = sub_1C5BC8AB4();
    v133 = v64;
    v134 = v63;
    v66 = swift_getWitnessTable();
    sub_1C593EDC0(&v196, v65, v66);
    v148 = v201;
    v149[0] = v202[0];
    *(v149 + 9) = *(v202 + 9);
    v144 = v198;
    v145 = v199[0];
    v146 = v199[1];
    v147 = v200;
    v142 = v196;
    v143 = v197;
    v67 = *(*(v65 - 8) + 8);
    v67(&v142, v65);
    v201 = v194;
    v202[0] = v195[0];
    *(v202 + 9) = *(v195 + 9);
    v198 = v190;
    v199[0] = v191;
    v200 = v193;
    v199[1] = v192;
    v197 = v189;
    v196 = v188;
    sub_1C593EDC0(&v196, v65, v66);
    v156 = v201;
    v157[0] = v202[0];
    *(v157 + 9) = *(v202 + 9);
    v152 = v198;
    v153 = v199[0];
    v154 = v199[1];
    v155 = v200;
    v150 = v196;
    v151 = v197;
    v67(&v150, v65);
    v164 = v131;
    v165[0] = v132[0];
    *(v165 + 9) = *(v132 + 9);
    v161 = v128;
    v163 = v130;
    v162 = v129;
    v159 = v126;
    v160 = v127;
    v158 = v125;
    CGSizeMake(&v158, v68);
    v201 = v164;
    v202[0] = v165[0];
    *(v202 + 9) = *(v165 + 9);
    v198 = v160;
    v199[0] = v161;
    v200 = v163;
    v199[1] = v162;
    v197 = v159;
    v196 = v158;
    sub_1C5941600(&v196, &v120);
    v172 = v201;
    v173[0] = v202[0];
    *(v173 + 9) = *(v202 + 9);
    v168 = v198;
    v169 = v199[0];
    v171 = v200;
    v170 = v199[1];
    v167 = v197;
    v166 = v196;
    v69 = sub_1C5BCB804();
    (*(*(v69 - 8) + 8))(&v166, v69);
    v201 = v123[3];
    v202[0] = v124[0];
    *(v202 + 9) = *(v124 + 9);
    v198 = v122;
    v199[0] = v123[0];
    v200 = v123[2];
    v199[1] = v123[1];
    v197 = v121;
    v196 = v120;
  }

  v70 = v98;
  v71 = v101;
  (*(v97 + 16))();
  v161 = v212;
  v162 = v213;
  *&v163 = v214;
  v158 = v209;
  v159 = v210;
  v160 = v211;
  *&v150 = v70;
  *(&v150 + 1) = &v158;
  v186 = v201;
  v187[0] = v202[0];
  *(v187 + 9) = *(v202 + 9);
  v182 = v198;
  v183 = v199[0];
  v185 = v200;
  v184 = v199[1];
  v181 = v197;
  v180 = v196;
  *&v151 = &v180;
  _s33DefaultMetadataAndContextMenuViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v97 = sub_1C5BC8AB4();
  v72 = sub_1C5BCB804();
  v73 = *(v72 - 8);
  (*(v73 + 16))(&v188, &v209, v72);
  _s10BannerViewVMa();
  sub_1C5BC8AB4();
  v99 = sub_1C5BC8AB4();
  v74 = sub_1C5BCB804();
  v75 = *(v74 - 8);
  (*(v75 + 16))(&v188, &v196, v74);
  *&v142 = v71;
  *(&v142 + 1) = v72;
  *&v143 = v74;
  *&v125 = v88;
  v118 = swift_getWitnessTable();
  v76 = MEMORY[0x1E697E5D8];
  v119 = MEMORY[0x1E697E5D8];
  v77 = swift_getWitnessTable();
  v78 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v116 = v77;
  v117 = v78;
  v115 = swift_getWitnessTable();
  *(&v125 + 1) = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v114 = v76;
  v111 = swift_getWitnessTable();
  v112 = v76;
  v110 = swift_getWitnessTable();
  *&v126 = swift_getWitnessTable();
  sub_1C594226C(&v150, 3uLL, &v142);
  v79 = *(v75 + 8);
  v79(&v196, v74);
  v80 = *(v73 + 8);
  v80(&v209, v72);
  v81 = v101;
  v82 = v89;
  v89(v100, v101);
  v194 = v186;
  v195[0] = v187[0];
  *(v195 + 9) = *(v187 + 9);
  v190 = v182;
  v191 = v183;
  v193 = v185;
  v192 = v184;
  v189 = v181;
  v188 = v180;
  v79(&v188, v74);
  v168 = v160;
  v169 = v161;
  v170 = v162;
  *&v171 = v163;
  v166 = v158;
  v167 = v159;
  v80(&v166, v72);
  return v82(v98, v81);
}

void sub_1C5B2A63C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[10] = *(v0 + 66);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);
  v15[2] = *(v0 + 40);
  *v16 = v6;
  v15[0] = *(v0 + 8);
  v15[1] = v5;
  if (v16[25])
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14[0] = v8;
    *(v14 + 9) = *(v0 + 65);
    v11 = *(v0 + 8);
    v12 = v7;
    if (!BYTE1(v7))
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5924EF4(v15, &unk_1EC194DE0);
  (*(v2 + 8))(v4, v1);
  if (BYTE1(v12))
  {
LABEL_3:
    v9 = [objc_opt_self() currentTraitCollection];
    [v9 displayScale];
  }
}

uint64_t sub_1C5B2A8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1C5BC8F34();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v64 = a1;
  v6 = *(a1 + 16);
  v7 = *(v5 + 24);
  _s15TimeControlViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa();
  v66 = v6;
  v89 = v7;
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata3();
  v8 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v63[1] = v8;
  v65 = WitnessTable;
  v10 = sub_1C5BCA7D4();
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  v13 = sub_1C5BC8AB4();
  v68 = v10;
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E697E5D8];
  v67 = v14;
  v117 = v14;
  v118 = MEMORY[0x1E697E5D8];
  v72 = v11;
  v71 = swift_getWitnessTable();
  v115 = v71;
  v116 = v15;
  v16 = swift_getWitnessTable();
  v85 = MEMORY[0x1E697FEC8];
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E697E270];
  v17 = swift_getWitnessTable();
  *&v108[0] = v12;
  *(&v108[0] + 1) = v13;
  *&v108[1] = v16;
  *(&v108[1] + 1) = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v88 = v63 - v19;
  sub_1C5BC9414();
  v20 = sub_1C5BC8AB4();
  v82 = v13;
  v83 = v12;
  *&v108[0] = v12;
  *(&v108[0] + 1) = v13;
  v77 = v16;
  *&v108[1] = v16;
  v21 = v63[0];
  v73 = v17;
  *(&v108[1] + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = swift_getWitnessTable();
  v112 = MEMORY[0x1E697E5C0];
  v23 = swift_getWitnessTable();
  v84 = OpaqueTypeMetadata2;
  v85 = OpaqueTypeConformance2;
  *&v108[0] = OpaqueTypeMetadata2;
  v81 = v20;
  *(&v108[0] + 1) = v20;
  *&v108[1] = OpaqueTypeConformance2;
  *(&v108[1] + 1) = v23;
  v78 = swift_getOpaqueTypeMetadata2();
  v69 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v70 = v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = v63 - v26;
  v27 = *(v21 + *(v64 + 40));
  if (v27)
  {
    v28 = swift_beginAccess();
    LODWORD(v64) = *(v27 + 58);
    MEMORY[0x1EEE9AC00](v28);
    v29 = v66;
    v63[-4] = v66;
    v63[-3] = v89;
    v63[-2] = v21;
    v31 = v30;
    LOBYTE(v63[-1]) = v30;
    sub_1C5BC9134();
    swift_checkMetadataState();
    sub_1C5BCA7C4();
    memcpy(v105, v106, sizeof(v105));
    sub_1C5BC9884();
    *&v110[10] = *(v21 + 58);
    v32 = v21[3];
    v109[2] = v21[2];
    *v110 = v32;
    v33 = v21[1];
    v109[0] = *v21;
    v109[1] = v33;
    v80 = v23;
    if (v110[25])
    {
      v34 = v21[3];
      v103 = v21[2];
      v104[0] = v34;
      *(v104 + 9) = *(v21 + 57);
      v35 = *v21;
      v102 = v21[1];
      v101 = v35;
    }

    else
    {

      sub_1C5BCB4E4();
      v36 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v37 = v74;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v109, &unk_1EC194DE0);
      (*(v75 + 8))(v37, v76);
    }

    v108[2] = v103;
    v108[3] = v104[0];
    *(&v108[3] + 9) = *(v104 + 9);
    v108[1] = v102;
    v108[0] = v101;
    DeviceMetrics.padding.getter(v92);
    v38 = swift_checkMetadataState();
    sub_1C5BCA2F4();
    memcpy(v98, v105, 0x13AuLL);
    (*(*(v38 - 8) + 8))(v98, v38);
    memcpy(v97, v107, sizeof(v97));
    sub_1C5BC98B4();
    *(v100 + 10) = *(v21 + 58);
    v39 = v21[3];
    v99[2] = v21[2];
    v100[0] = v39;
    v40 = *v21;
    v99[1] = v21[1];
    v99[0] = v40;
    v41 = v29;
    if (BYTE9(v100[1]))
    {
      v42 = v21[3];
      v95 = v21[2];
      v96[0] = v42;
      *(v96 + 9) = *(v21 + 57);
      v43 = *v21;
      v94 = v21[1];
      v93 = v43;
    }

    else
    {

      sub_1C5BCB4E4();
      v44 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v45 = v74;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v99, &unk_1EC194DE0);
      (*(v75 + 8))(v45, v76);
    }

    v46 = v89;
    v92[2] = v95;
    v92[3] = v96[0];
    *(&v92[3] + 9) = *(v96 + 9);
    v92[0] = v93;
    v92[1] = v94;
    DeviceMetrics.padding.getter(v90);
    v47 = swift_checkMetadataState();
    sub_1C5BCA2F4();
    memcpy(v91, v97, 0x169uLL);
    (*(*(v47 - 8) + 8))(v91, v47);
    memcpy(v90, v108, 0x199uLL);
    v48 = sub_1C5BCAAA4();
    MEMORY[0x1EEE9AC00](v48);
    v63[-4] = v41;
    v63[-3] = v46;
    LOBYTE(v63[-2]) = v31;
    v49 = swift_checkMetadataState();
    swift_checkMetadataState();
    sub_1C5BCA374();

    memcpy(v92, v90, 0x199uLL);
    (*(*(v49 - 8) + 8))(v92, v49);
    v50 = v69;
    v51 = sub_1C5BCAAA4();
    MEMORY[0x1EEE9AC00](v51);
    v63[-4] = v41;
    v63[-3] = v46;
    LOBYTE(v63[-2]) = v31;
    v52 = swift_checkMetadataState();
    v53 = v70;
    v55 = v84;
    v54 = v85;
    v56 = v80;
    v57 = v88;
    sub_1C5BCA374();

    (*(v86 + 8))(v57, v55);
    v90[0] = v55;
    v90[1] = v52;
    v90[2] = v54;
    v90[3] = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v60 = v78;
    v59 = v79;
    sub_1C593EDC0(v53, v78, v58);
    v61 = *(v50 + 8);
    v61(v53, v60);
    sub_1C593EDC0(v59, v60, v58);
    return (v61)(v59, v60);
  }

  else
  {
    _s17TransportControlsCMa();
    sub_1C5B2D644(&qword_1EDA4A620, _s17TransportControlsCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B2B46C@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGSizeMake(a3, a4);
  LODWORD(v34) = sub_1C5BC98B4();
  *&v115[10] = *(a1 + 58);
  v13 = a1[3];
  v114[2] = a1[2];
  *v115 = v13;
  v14 = a1[1];
  v114[0] = *a1;
  v114[1] = v14;
  if (v115[25])
  {
    v15 = a1[3];
    v100 = a1[2];
    v101[0] = v15;
    *(v101 + 9) = *(a1 + 57);
    v16 = *a1;
    v99 = a1[1];
    v98 = v16;
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    v33 = v9;
    v18 = v17;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v114, &unk_1EC194DE0);
    (*(v10 + 8))(v12, v33);
  }

  v90 = v100;
  v91[0] = v101[0];
  *(v91 + 9) = *(v101 + 9);
  v89 = v99;
  v88 = v98;
  sub_1C5B3F240();
  _s15TimeControlViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v94 = v102;
  v95 = v103;
  v96 = v104;
  v97 = v105;
  sub_1C5BC8AB4();
  v72 = WitnessTable;
  v73 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  sub_1C5BCA264();
  v88 = v106;
  v89 = v107;
  v90 = v108;
  v91[0] = v109;
  v21 = sub_1C5BC8AB4();
  v33 = v21;
  v70 = v20;
  v71 = MEMORY[0x1E697E270];
  v34 = swift_getWitnessTable();
  sub_1C593EDC0(&v88, v21, v34);
  sub_1C5ACE3D0(a2 & 1, &v88);
  v22 = _s12ControlsViewVMa();
  v31 = swift_getWitnessTable();
  sub_1C593EDC0(&v88, v22, v31);
  v74[4] = v91[1];
  v74[5] = v92[0];
  v74[6] = v92[1];
  v75 = v93;
  v74[0] = v88;
  v74[1] = v89;
  v74[2] = v90;
  v74[3] = v91[0];
  v23 = *(v22 - 8);
  v32 = *(v23 + 8);
  v32(v74, v22);
  sub_1C5B30EA8(&v88);
  v24 = _s13FooterButtonsVMa();
  v25 = swift_getWitnessTable();
  sub_1C593EDC0(&v88, v24, v25);
  v76[4] = v91[1];
  v77[0] = v92[0];
  *(v77 + 10) = *(v92 + 10);
  v76[0] = v88;
  v76[1] = v89;
  v76[2] = v90;
  v76[3] = v91[0];
  v26 = *(v24 - 8);
  v27 = *(v26 + 8);
  v27(v76, v24);
  v54[0] = v110;
  v54[1] = v111;
  v54[2] = v112;
  v54[3] = v113;
  v78[4] = v66;
  v78[5] = v67;
  v78[6] = v68;
  v78[0] = v62;
  v78[1] = v63;
  v78[2] = v64;
  v78[3] = v65;
  v48 = v64;
  v49 = v65;
  v46 = v62;
  v47 = v63;
  v51 = v67;
  v52 = v68;
  v50 = v66;
  v80[1] = v57;
  v80[0] = v56;
  *(v81 + 10) = *(v61 + 10);
  v81[0] = v61[0];
  v80[4] = v60;
  v80[2] = v58;
  v80[3] = v59;
  v79 = v69;
  v53 = v69;
  v55[0] = v54;
  v55[1] = &v46;
  v40 = v56;
  v41 = v57;
  *(v45 + 10) = *(v61 + 10);
  v44 = v60;
  v45[0] = v61[0];
  v42 = v58;
  v43 = v59;
  v55[2] = &v40;
  (*(v23 + 16))(&v88, v78, v22);
  (*(v26 + 16))(&v88, v80, v24);
  v39[0] = v33;
  v39[1] = v22;
  v39[2] = v24;
  v36 = v34;
  v37 = v31;
  v38 = v25;
  sub_1C594226C(v55, 3uLL, v39);
  v82[4] = v60;
  v83[0] = v61[0];
  *(v83 + 10) = *(v61 + 10);
  v82[0] = v56;
  v82[1] = v57;
  v82[3] = v59;
  v82[2] = v58;
  v27(v82, v24);
  v84[4] = v66;
  v84[5] = v67;
  v84[6] = v68;
  v85 = v69;
  v84[0] = v62;
  v84[1] = v63;
  v84[2] = v64;
  v84[3] = v65;
  v28 = v32;
  v32(v84, v22);
  v86[4] = v44;
  v87[0] = v45[0];
  *(v87 + 10) = *(v45 + 10);
  v86[0] = v40;
  v86[1] = v41;
  v86[3] = v43;
  v86[2] = v42;
  v27(v86, v24);
  v91[1] = v50;
  v92[0] = v51;
  v92[1] = v52;
  v93 = v53;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  v91[0] = v49;
  return v28(&v88, v22);
}

uint64_t sub_1C5B2BBF8()
{
  _s15TimeControlViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa();
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  v0 = sub_1C5BC8AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA264();
  v11[0] = WitnessTable;
  v11[1] = MEMORY[0x1E697E270];
  v8 = swift_getWitnessTable();
  sub_1C593EDC0(v3, v0, v8);
  v9 = *(v1 + 8);
  v9(v3, v0);
  sub_1C593EDC0(v6, v0, v8);
  return (v9)(v6, v0);
}

uint64_t sub_1C5B2BEB8()
{
  _s15TimeControlViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa();
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  v0 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  v1 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E697E5D8];
  v16[10] = WitnessTable;
  v16[11] = MEMORY[0x1E697E5D8];
  v16[8] = swift_getWitnessTable();
  v16[9] = v3;
  v4 = swift_getWitnessTable();
  v16[6] = swift_getWitnessTable();
  v16[7] = MEMORY[0x1E697E270];
  v16[2] = v0;
  v16[3] = v1;
  v16[4] = v4;
  v16[5] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC9414();
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = swift_getWitnessTable();
  sub_1C5BCA2B4();
  v16[0] = v12;
  v16[1] = MEMORY[0x1E697E5C0];
  v13 = swift_getWitnessTable();
  sub_1C593EDC0(v8, v5, v13);
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_1C593EDC0(v11, v5, v13);
  return (v14)(v11, v5);
}

uint64_t (*MCUINamespace<A>.nowPlayingHorizontalPadding.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C5B25094();
  sub_1C5BC8F44();
  return sub_1C5B2C2B4;
}

double EnvironmentValues.nowPlayingHorizontalPadding.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v3, &qword_1EC191938);
  return *&v6[1];
}

double sub_1C5B2C3DC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1C5BC8F34();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v6, &qword_1EC191938);
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t sub_1C5B2C4E0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = *a1;
  v8 = sub_1C5BC8F34();
  v9 = *(*(v8 - 8) + 32);
  v9(v6, a2, v8);
  v11[1] = v7;
  sub_1C5B25094();
  sub_1C5BC8F54();
  return (v9)(a2, v6, v8);
}

uint64_t EnvironmentValues.nowPlayingHorizontalPadding.setter(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(*(v7 - 8) + 32);
  v8(v6, v2, v7);
  *&v10[1] = a1;
  sub_1C5B25094();
  sub_1C5BC8F54();
  return (v8)(v2, v6, v7);
}

void (*EnvironmentValues.nowPlayingHorizontalPadding.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[5] = v7;
  v9 = sub_1C5BC8F34();
  v5[6] = v9;
  v10 = *(v9 - 8);
  v5[7] = v10;
  (*(v10 + 16))(v8, v1, v9);
  v5[8] = sub_1C5B25094();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938);
  *v5 = v5[1];
  return sub_1C5B2C85C;
}

void sub_1C5B2C85C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *((*a1)[7] + 32);
  v5((*a1)[5], (*a1)[4], (*a1)[6]);
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[4];
  v9 = 3;
  if (a2)
  {
    v9 = 2;
  }

  v3[v9] = v4;
  sub_1C5BC8F54();
  v5(v8, v6, v7);
  free(v6);

  free(v3);
}

void sub_1C5B2C9A8()
{
  sub_1C5BC8C94();
  if (v0 <= 0x3F)
  {
    sub_1C5AB422C();
    if (v1 <= 0x3F)
    {
      sub_1C5A1A4F8();
      if (v2 <= 0x3F)
      {
        sub_1C5933828(319, &qword_1EDA467C8);
        if (v3 <= 0x3F)
        {
          sub_1C5933828(319, &qword_1EDA46730);
          if (v4 <= 0x3F)
          {
            sub_1C5B2CB44();
            if (v5 <= 0x3F)
            {
              sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
              if (v6 <= 0x3F)
              {
                sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C5B2CB44()
{
  if (!qword_1EDA46780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46780);
    }
  }
}

unint64_t sub_1C5B2CC28()
{
  result = qword_1EC198360;
  if (!qword_1EC198360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198348);
    sub_1C5B2D644(&qword_1EC194AA8, type metadata accessor for NowPlayingContrastSensitiveBackdrop);
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198360);
  }

  return result;
}

uint64_t sub_1C5B2CD10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B2CD8C()
{
  result = qword_1EC198370;
  if (!qword_1EC198370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198350);
    sub_1C5B2CF08(&qword_1EC198378, &qword_1EC198380, &unk_1C5BEA718, sub_1C5B2CC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198370);
  }

  return result;
}

unint64_t sub_1C5B2CE50()
{
  result = qword_1EC198390;
  if (!qword_1EC198390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198388);
    sub_1C5B2CF08(&qword_1EC198398, &qword_1EC1983A0, &unk_1C5BEA728, sub_1C5B2CFBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198390);
  }

  return result;
}

uint64_t sub_1C5B2CF08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C5B2D644(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B2CFEC()
{
  result = qword_1EC1983B8;
  if (!qword_1EC1983B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1983C0);
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1983B8);
  }

  return result;
}

void sub_1C5B2D0A4()
{
  sub_1C5933828(319, &qword_1EDA467C8);
  if (v0 <= 0x3F)
  {
    sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_1C5A1A4F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5B2D194()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C5B2D204(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C5B2D260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5B2D3A0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B2D41C()
{
  result = qword_1EC198468;
  if (!qword_1EC198468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198470);
    sub_1C5B2D500(&qword_1EC198478, &qword_1EC198480, &unk_1C5BEA9D8, sub_1C5B2D584);
    sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198468);
  }

  return result;
}

uint64_t sub_1C5B2D500(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B2D584()
{
  result = qword_1EC198488;
  if (!qword_1EC198488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198490);
    sub_1C5AD49A0();
    sub_1C5A25B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198488);
  }

  return result;
}

double sub_1C5B2D628(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C5B2D644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B2D6B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B2D6F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1C5B2D758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C5B2D7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C5B2D890(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1C5B2D8BC()
{
  type metadata accessor for MotionEnabledState();
  v0 = swift_allocObject();
  result = sub_1C5B2DC80();
  off_1EDA4B358 = v0;
  return result;
}

uint64_t static MotionEnabledState.shared.getter()
{
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C5B2D958()
{
  swift_getKeyPath();
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  swift_beginAccess();
}

uint64_t sub_1C5B2DA10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C5B2DAD0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C5A49D7C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5B2DC18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_1C5B2DC80()
{
  v1 = v0;
  v90 = sub_1C5BCB5F4();
  v95 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v80 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v96 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v81 = &v70 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198548);
  v79 = *(v83 - 1);
  MEMORY[0x1EEE9AC00](v83);
  v78 = &v70 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198550);
  v85 = *(v86 - 1);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v70 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v70 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558);
  v76 = *(v77 - 1);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v70 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198560);
  v71 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198568);
  v87 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDA5DE70;
  *(v0 + 16) = qword_1EDA5DE70;
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  v99 = v0 + 24;
  *(v0 + 32) = 0;
  v16 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v17 = v15;
  v82 = v16;
  sub_1C5BC7BA4();
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DB60);
  swift_retain_n();
  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v98 = v12;
    v23 = v22;
    v104 = v22;
    *v21 = 67109378;
    swift_getKeyPath();
    v100 = v1;
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
    sub_1C5BC7B74();

    v24 = *(v1 + 33);

    *(v21 + 4) = v24;

    *(v21 + 8) = 2082;
    v25 = sub_1C5B2FB28();
    v27 = sub_1C592ADA8(v25, v26, &v104);

    *(v21 + 10) = v27;
    _os_log_impl(&dword_1C5922000, v19, v20, "isMotionEnabled was initialized to %{BOOL}d by default. attributesDescription=(%{public}s)", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v12 = v98;
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

  else
  {
  }

  sub_1C5B2F6D0();
  v28 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1C5BC7924();

  v97 = sub_1C5929CA0();
  v29 = sub_1C5BCB5A4();
  v104 = v29;
  v98 = sub_1C5BCB594();
  v30 = *(v98 - 8);
  v92 = *(v30 + 56);
  v31 = v30 + 56;
  v32 = v94;
  v92(v94, 1, 1, v98);
  v93 = v31;
  sub_1C5924F54(&qword_1EDA45D78, &qword_1EC198560);
  v88 = sub_1C5B30464(&qword_1EDA4E630, sub_1C5929CA0);
  v33 = v89;
  sub_1C5BC80D4();
  sub_1C5924EF4(v32, &unk_1EC199F20);

  (*(v71 + 8))(v11, v33);
  swift_allocObject();
  swift_weakInit();
  v89 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468C0, &qword_1EC198568);

  sub_1C5BC8114();

  (*(v87 + 8))(v14, v12);
  swift_getKeyPath();
  v104 = v1;
  v34 = sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  v87 = v34;
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v35 = v72;
  sub_1C5BC8004();
  swift_endAccess();
  v36 = sub_1C5BCB5A4();
  v104 = v36;
  v37 = v92;
  v92(v32, 1, 1, v98);
  v71 = MEMORY[0x1E695C068];
  sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8);
  v38 = v75;
  v39 = v74;
  sub_1C5BC80D4();
  sub_1C5924EF4(v32, &unk_1EC199F20);

  (*(v73 + 8))(v35, v39);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558);
  v40 = v77;
  sub_1C5BC8114();

  (*(v76 + 8))(v38, v40);
  swift_getKeyPath();
  v104 = v1;
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1998E0);
  v41 = v78;
  sub_1C5BC8004();
  swift_endAccess();
  v42 = sub_1C5BCB5A4();
  v104 = v42;
  v43 = v94;
  v37(v94, 1, 1, v98);
  sub_1C5924F54(&qword_1EDA46858, &qword_1EC198548);
  v44 = v84;
  v45 = v83;
  sub_1C5BC80D4();
  sub_1C5924EF4(v43, &unk_1EC199F20);

  (v79)[1](v41, v45);
  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA468D8, &qword_1EC198550);
  v46 = v86;
  sub_1C5BC8114();

  (*(v85 + 8))(v44, v46);
  swift_getKeyPath();
  v104 = v1;
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  v101 = *MEMORY[0x1E696A7D8];
  v47 = v101;
  v78 = sub_1C5BCB624();
  v48 = *MEMORY[0x1E69DD918];
  v102 = v78;
  v103 = v48;
  v49 = objc_opt_self();
  v86 = v49;
  v79 = v48;
  v77 = v47;
  v50 = [v49 defaultCenter];
  v51 = v80;
  sub_1C5BCB604();

  v52 = sub_1C5BCB5A4();
  v104 = v52;
  v53 = v94;
  v92(v94, 1, 1, v98);
  v85 = sub_1C5B30464(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
  v54 = v81;
  v55 = v90;
  sub_1C5BC80D4();
  sub_1C5924EF4(v53, &unk_1EC199F20);

  v56 = *(v95 + 8);
  v95 += 8;
  v84 = v56;
  (v56)(v51, v55);
  swift_allocObject();
  swift_weakInit();
  v89 = sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440);
  v57 = v91;
  sub_1C5BC8114();

  v58 = *(v96 + 8);
  v96 += 8;
  v83 = v58;
  (v58)(v54, v57);
  swift_getKeyPath();
  v104 = v1;
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  v78 = v78;
  v59 = [v86 defaultCenter];
  sub_1C5BCB604();

  v60 = sub_1C5BCB5A4();
  v104 = v60;
  v61 = v94;
  v92(v94, 1, 1, v98);
  v62 = v90;
  sub_1C5BC80D4();
  sub_1C5924EF4(v61, &unk_1EC199F20);

  (v84)(v51, v62);
  swift_allocObject();
  swift_weakInit();
  v63 = v91;
  sub_1C5BC8114();

  (v83)(v54, v63);
  swift_getKeyPath();
  v104 = v1;
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  v64 = v79;
  v65 = [v86 defaultCenter];
  sub_1C5BCB604();

  v66 = sub_1C5BCB5A4();
  v104 = v66;
  v92(v61, 1, 1, v98);
  v67 = v90;
  sub_1C5BC80D4();
  sub_1C5924EF4(v61, &unk_1EC199F20);

  (v84)(v51, v67);
  swift_allocObject();
  swift_weakInit();
  v68 = v91;
  sub_1C5BC8114();

  (v83)(v54, v68);
  swift_getKeyPath();
  v104 = v1;
  sub_1C5BC7B74();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B94();

  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v104 = v1;
  swift_getKeyPath();
  sub_1C5BC7B84();

  type metadata accessor for Name(0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1C5B2F3AC(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5B2F4BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5B2F6D0();
  }

  return result;
}

uint64_t sub_1C5B2F514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1C5B2F5E4()
{
  swift_getKeyPath();
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  return *(v0 + 33);
}

uint64_t type metadata accessor for MotionEnabledState()
{
  result = qword_1EDA4E478;
  if (!qword_1EDA4E478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5B2F6D0()
{
  v1 = v0;
  if (*(v0 + 32) & 1) != 0 || UIAccessibilityIsReduceMotionEnabled() || (sub_1C5BCB614() & 1) == 0 || (v2 = [objc_opt_self() processInfo], v3 = objc_msgSend(v2, sel_isLowPowerModeEnabled), v2, (v3) || (v4 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v5 = objc_msgSend(v4, sel_motionMode), v4, !v5) || v5 == 1 && (v6 = objc_msgSend(objc_opt_self(), sel_sharedMonitor), objc_msgSend(v6, sel_networkType), v6, !ICEnvironmentNetworkTypeIsWiFi()) || (swift_getKeyPath(), swift_getKeyPath(), sub_1C5BC8034(), , , (v17))
  {
    v7 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C5BC8034();

    v7 = v17 < 0x1E;
  }

  swift_getKeyPath();
  v17 = v1;
  sub_1C5B30464(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  if (v7 != *(v1 + 33))
  {
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA5DB60);

    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 67109634;
      swift_getKeyPath();
      sub_1C5BC7B74();

      *(v11 + 4) = *(v1 + 33);

      *(v11 + 8) = 1024;
      *(v11 + 10) = v7;
      *(v11 + 14) = 2082;
      v13 = sub_1C5B2FB28();
      v15 = sub_1C592ADA8(v13, v14, &v17);

      *(v11 + 16) = v15;
      _os_log_impl(&dword_1C5922000, v9, v10, "Updated isMotionEnabled from %{BOOL}d to %{BOOL}d: attributesDescription=(%{public}s)", v11, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C69510F0](v12, -1, -1);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    else
    {
    }

    if (v7 == *(v1 + 33))
    {
      *(v1 + 33) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v17 = v1;
      sub_1C5BC7B64();
    }
  }
}

uint64_t sub_1C5B2FB28()
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x7272656665447369, 0xEB000000003D6465);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v1, v2);

  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BFBF20);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = !IsReduceMotionEnabled;
  if (IsReduceMotionEnabled)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v5, v6);

  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFBF40);
  v7 = sub_1C5BCB614();
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v9, v10);

  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BFBF60);
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 isLowPowerModeEnabled];

  if (v12)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v13, v14);

  MEMORY[0x1C694F170](0x4D6E6F69746F6D20, 0xEC0000003D65646FLL);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = [v15 motionMode];

  v17 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v17);

  MEMORY[0x1C694F170](0xD000000000000016, 0x80000001C5BFBF80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v16)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v18, v19);

  MEMORY[0x1C694F170](0x6C616D7265687420, 0xEE003D6C6576654CLL);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v20 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v20);

  return 0;
}

uint64_t MotionEnabledState.deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MotionEnabledState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI18MotionEnabledState___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B2FFBC(void *a1)
{
  v1 = a1;
  v2 = sub_1C5B2FFF0();

  return v2;
}

uint64_t sub_1C5B2FFF0()
{
  v1 = sub_1C5BCAE44();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C5924EF4(v7, &qword_1EC191700);
  }

  return 2;
}

uint64_t static MotionViewDeferral.isDeferred.getter()
{
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  return *(off_1EDA4B358 + 32);
}

void sub_1C5B30130(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EDA4B350 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDA4B358 + 32);
  *(off_1EDA4B358 + 32) = v1;
  if (v1 != v2)
  {
    sub_1C5B2F6D0();
  }
}

void static MotionViewDeferral.isDeferred.setter(char a1)
{
  if (qword_1EDA4B350 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(off_1EDA4B358 + 32);
  *(off_1EDA4B358 + 32) = a1 & 1;
  if (v1 != (a1 & 1))
  {
    sub_1C5B2F6D0();
  }
}

void (*static MotionViewDeferral.isDeferred.modify(uint64_t a1))(unsigned __int8 *a1)
{
  if (qword_1EDA4B350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = off_1EDA4B358;
  *a1 = off_1EDA4B358;
  *(a1 + 8) = v1[32];
  return sub_1C5B3029C;
}

void sub_1C5B3029C(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 32);
  *(*a1 + 32) = v1;
  if (v1 != v2)
  {
    sub_1C5B2F6D0();
  }
}

uint64_t sub_1C5B302F4()
{
  result = sub_1C5BC7BB4();
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

uint64_t sub_1C5B30464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B304C8@<X0>(uint64_t a1@<X8>)
{
  _s6BannerCMa();
  sub_1C5B30D60(qword_1EDA49FB8, v2, _s6BannerCMa);
  v3 = sub_1C5BC88C4();
  v5 = v4;
  _s12PresentationCMa();
  sub_1C5B30D60(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  v6 = sub_1C5BC8324();
  v8 = v7;
  result = sub_1C5BC8C84();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8 & 1;
  *(a1 + 32) = result;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1C5B305DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v4 = *(a1 + 24);
  v47 = *(a1 + 16);
  v48 = v4;
  v57 = &type metadata for NowPlayingLookupID;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = type metadata accessor for ViewProvider();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v40 - v5;
  v52 = AssociatedConformanceWitness;
  v54 = AssociatedTypeWitness;
  v49 = swift_getAssociatedTypeWitness();
  v6 = sub_1C5BCB804();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v9;
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BCB804();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v62 = *(v3 + 24);
  v20 = *(v3 + 16);
  v61 = v20;
  v21 = v62;

  if ((v21 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v41 = v10;
    v22 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B30E40(&v61);
    (*(v11 + 8))(v13, v41);
    v20 = v57;
  }

  swift_getKeyPath();
  v57 = v20;
  sub_1C5B30D60(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v23 = BYTE1(v20[1].Kind);

  if (v23 == 1 && (v24 = *(v3 + 8), swift_beginAccess(), *(v24 + 16) == 1))
  {
    v26 = v47;
    v25 = v48;
    sub_1C59498C4(*(v3 + 32));
    v27 = *(v25 + 384);
    swift_unknownObjectRetain();
    v28 = v42;
    v27(v26, v25);
    swift_unknownObjectRelease();
    v56[0] = 0x72656E6E6142;
    v56[1] = 0xE600000000000000;
    v29 = v46;
    v30 = v45;
    sub_1C595BC70(v56, v45);

    (*(v43 + 8))(v28, v30);
    v31 = swift_getAssociatedConformanceWitness();
    v55 = v31;
    WitnessTable = swift_getWitnessTable();
    v33 = v44;
    sub_1C593EDC0(v29, v6, WitnessTable);
    v34 = v53;
    v54 = v15;
    v35 = *(v53 + 8);
    v35(v29, v6);
    sub_1C593EDC0(v33, v6, WitnessTable);
    v35(v33, v6);
    v15 = v54;
    v36 = v51;
    (*(v34 + 32))(v51, v29, v6);
    (*(v34 + 56))(v36, 0, 1, v6);
  }

  else
  {
    v36 = v51;
    (*(v53 + 56))(v51, 1, 1, v6);
    v31 = swift_getAssociatedConformanceWitness();
    v56[4] = v31;
    swift_getWitnessTable();
  }

  sub_1C5941600(v36, v19);
  v37 = *(v15 + 8);
  v37(v36, v14);
  v56[3] = v31;
  v56[2] = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  sub_1C593EDC0(v19, v14, v38);
  return (v37)(v19, v14);
}

uint64_t sub_1C5B30D24@<X0>(uint64_t *a1@<X8>)
{
  _s6BannerCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5B30D60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C5B30DA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B30E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B30EA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  _s5DebugCMa();
  sub_1C5B353C0(&qword_1EDA4A208, _s5DebugCMa);
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v3;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 105) = 0;
  return result;
}

uint64_t sub_1C5B30F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = swift_getAssociatedTypeWitness();
  sub_1C5BC92D4();
  _s13FooterButtonsV11ButtonsViewVMa();
  v4 = sub_1C5BC8AB4();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  WitnessTable = swift_getWitnessTable();
  v137 = sub_1C5B34DD0();
  v97 = v4;
  v5 = swift_getWitnessTable();
  v6 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1C5BC92D4();
  v89 = v3;
  v90 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135 = swift_getAssociatedConformanceWitness();
  *&v138 = v4;
  *(&v138 + 1) = v96;
  *&v139 = v5;
  *(&v139 + 1) = v6;
  v132 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v7;
  v77[1] = swift_getWitnessTable();
  v8 = sub_1C5BCA714();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v77 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v100 = v8;
  v10 = sub_1C5BC8AB4();
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v77 - v11;
  v12 = sub_1C5BC8AB4();
  v86 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = v77 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198578);
  AssociatedTypeWitness = v12;
  v14 = sub_1C5BC8AB4();
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v87 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = v77 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = v77 - v19;
  v20 = sub_1C5BC8F34();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v14;
  v95 = sub_1C5BCB804();
  v24 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = v77 - v27;
  v28 = v98[5];
  *&v140[32] = v98[4];
  *&v140[48] = v28;
  *&v140[58] = *(v98 + 90);
  v29 = v98[1];
  v138 = *v98;
  v139 = v29;
  v30 = v98[3];
  *v140 = v98[2];
  *&v140[16] = v30;
  v98 = sub_1C5B34A7C();
  v141[0] = *v140;
  v141[1] = *&v140[16];
  v141[2] = *&v140[32];
  v142[0] = *&v140[48];
  *(v142 + 10) = *&v140[58];
  v31 = *v140;
  v147 = v140[72];
  v145 = *&v140[40];
  v146 = *&v140[56];
  v143 = *&v140[8];
  v144 = *&v140[24];
  v97 = v10;
  if ((v140[73] & 1) == 0)
  {
    sub_1C59400B0(v141, v126, &qword_1EC191B58);
    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v141, &qword_1EC191B58);
    v35 = *(v21 + 8);
    v35(v23, v20);
    v32 = BYTE10(v127);
    if (BYTE10(v127) != 3)
    {
      v46 = sub_1C5BC8FA4();
      v88 = v24;
      v47 = v46;
      sub_1C59400B0(v141, v126, &qword_1EC191B58);
      sub_1C5BCB4E4();
      v48 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v10 = v97;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v141, &qword_1EC191B58);
      v35(v23, v20);
      result = v47;
      v24 = v88;
      goto LABEL_7;
    }

LABEL_5:

    v36 = v93;
    (*(v92 + 56))(v93, 1, 1, v96);
    v37 = swift_getWitnessTable();
    v38 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    v124 = v37;
    v125 = v38;
    v122 = swift_getWitnessTable();
    v39 = MEMORY[0x1E697E040];
    v123 = MEMORY[0x1E697E040];
    v40 = swift_getWitnessTable();
    v41 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578);
    v120 = v40;
    v121 = v41;
    swift_getWitnessTable();
    v42 = v24;
    v43 = v94;
    sub_1C5941600(v36, v94);
    v44 = *(v42 + 8);
    v45 = v95;
    v44(v36, v95);
LABEL_10:
    v72 = swift_getWitnessTable();
    v73 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    v118 = v72;
    v119 = v73;
    v116 = swift_getWitnessTable();
    v117 = v39;
    v74 = swift_getWitnessTable();
    v75 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578);
    v114 = v74;
    v115 = v75;
    v113 = swift_getWitnessTable();
    v76 = swift_getWitnessTable();
    sub_1C593EDC0(v43, v45, v76);
    return (v44)(v43, v45);
  }

  v127 = *&v140[8];
  v128 = *&v140[24];
  v129 = *&v140[40];
  v130 = *&v140[56];
  v131 = v140[72];
  v126[10] = *v140;
  v32 = v140[18];
  if (v140[18] == 3)
  {
    goto LABEL_5;
  }

  result = sub_1C5BC8FA4();
  v109 = v144;
  v110 = v145;
  v111 = v146;
  v112 = v147;
  v108 = v143;
  v107 = v31;
LABEL_7:
  v88 = v24;
  if (BYTE10(v108) - 1 < 2 || !BYTE10(v108))
  {
    MEMORY[0x1EEE9AC00](result);
    v50 = v89;
    v49 = v90;
    v77[-4] = v89;
    v77[-3] = v49;
    v77[-2] = &v138;
    LOBYTE(v77[-1]) = v32;
    v51 = v78;
    sub_1C5BCA704();

    v52 = v100;
    v53 = swift_getWitnessTable();
    v54 = v80;
    sub_1C5BCA1F4();

    (*(v79 + 8))(v51, v52);
    sub_1C5BCAA54();
    v55 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    v105 = v53;
    v106 = v55;
    v56 = swift_getWitnessTable();
    v57 = v84;
    sub_1C5BCA234();
    (*(v81 + 8))(v54, v10);
    sub_1C5BC9144();
    v58 = sub_1C5BC8FA4();
    v82 = v77;
    MEMORY[0x1EEE9AC00](v58);
    v59 = v90;
    v77[-4] = v50;
    v77[-3] = v59;
    v77[-2] = &v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198588);
    v103 = v56;
    v104 = MEMORY[0x1E697E040];
    v60 = AssociatedTypeWitness;
    v61 = swift_getWitnessTable();
    sub_1C5B34E40();
    v62 = v83;
    sub_1C5BCA2C4();

    (*(v86 + 8))(v57, v60);
    v63 = sub_1C5924F54(&qword_1EC198580, &qword_1EC198578);
    v101 = v61;
    v102 = v63;
    v64 = v96;
    v65 = swift_getWitnessTable();
    v66 = v85;
    sub_1C593EDC0(v62, v64, v65);
    v67 = v92;
    v68 = *(v92 + 8);
    v69 = v62;
    v39 = MEMORY[0x1E697E040];
    v68(v69, v64);
    v70 = v87;
    sub_1C593EDC0(v66, v64, v65);
    v68(v66, v64);
    v71 = v93;
    (*(v67 + 32))(v93, v70, v64);
    (*(v67 + 56))(v71, 0, 1, v64);
    v43 = v94;
    sub_1C5941600(v71, v94);
    v44 = *(v88 + 8);
    v45 = v95;
    v44(v71, v95);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}