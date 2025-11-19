uint64_t sub_1C5B31E48@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v87) = a2;
  v94 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v72 - v9;
  v10 = _s13FooterButtonsV11ButtonsViewVMa();
  v85 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = (&v72 - v11);
  v12 = sub_1C5BC8AB4();
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v72 - v13;
  v86 = v10;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1C5B34DD0();
  v83 = WitnessTable;
  v113 = WitnessTable;
  v114 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v100 = v12;
  v109 = v12;
  v110 = v8;
  v96 = v16;
  v97 = v8;
  v111 = v16;
  v112 = v17;
  v95 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v72 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v109 = AssociatedTypeWitness;
  v110 = v23;
  v98 = v25;
  v99 = AssociatedConformanceWitness;
  v111 = AssociatedConformanceWitness;
  v112 = v25;
  v79 = type metadata accessor for NowPlayingFooterConfiguration();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v72 - v26;
  v27 = sub_1C5BC92D4();
  v82 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v81 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v80 = &v72 - v30;
  v93 = OpaqueTypeMetadata2;
  v92 = sub_1C5BC92D4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v72 - v31;
  v32 = *a1;
  sub_1C59498C4(*a1);
  v33 = *(a4 + 392);
  swift_unknownObjectRetain();
  v33(&v109, a3, a4);
  swift_unknownObjectRelease();
  LODWORD(v16) = v111;

  sub_1C59498C4(v32);
  if (v16 == 1)
  {
    v34 = *(a4 + 328);
    swift_unknownObjectRetain();
    v35 = v77;
    v34(a3, a4);
    swift_unknownObjectRelease();
    LOBYTE(v109) = v87;
    v36 = v81;
    v37 = v79;
    sub_1C5ABA234(&v109, v79, v81);
    (*(v78 + 8))(v35, v37);
    v101 = v99;
    v102 = v98;
    v38 = swift_getWitnessTable();
    v39 = v80;
    sub_1C593EDC0(v36, v27, v38);
    v40 = *(v82 + 8);
    v40(v36, v27);
    sub_1C593EDC0(v39, v27, v38);
    v41 = v96;
    v42 = v97;
    v109 = v100;
    v110 = v97;
    v43 = v95;
    v111 = v96;
    v112 = v95;
    swift_getOpaqueTypeConformance2();
    v44 = v90;
    sub_1C5950E54(v36, v27);
    v40(v36, v27);
    v40(v39, v27);
    v45 = v42;
    v47 = v98;
    v46 = v99;
LABEL_5:
    v105 = v46;
    v106 = v47;
    v68 = swift_getWitnessTable();
    v109 = v100;
    v110 = v45;
    v111 = v41;
    v112 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v103 = v68;
    v104 = OpaqueTypeConformance2;
    v70 = v92;
    v71 = swift_getWitnessTable();
    sub_1C593EDC0(v44, v70, v71);
    return (*(v91 + 8))(v44, v70);
  }

  v87 = v27;
  v48 = v96;
  v49 = v97;
  v50 = v100;
  swift_unknownObjectRetain();
  v33(&v109, a3, a4);
  swift_unknownObjectRelease();
  v51 = v84;
  v52 = sub_1C5B32944(v109, v110, v84);
  v53 = v88;
  v54 = v86;
  MEMORY[0x1C694E550](v52, v86, &type metadata for PlatformGlassEffectContainerModifier, v83);
  (*(v85 + 8))(v51, v54);
  v55 = *MEMORY[0x1E697E720];
  v56 = sub_1C5BC89B4();
  v57 = v89;
  (*(*(v56 - 8) + 104))(v89, v55, v56);
  sub_1C5B353C0(&qword_1EDA46688, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v59 = v74;
    v60 = v95;
    sub_1C5BC9F54();
    sub_1C5924EF4(v57, &qword_1EC192838);
    (*(v76 + 8))(v53, v50);
    v109 = v50;
    v110 = v49;
    v111 = v48;
    v112 = v60;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v73;
    v63 = v93;
    sub_1C593EDC0(v59, v93, v61);
    v64 = *(v75 + 8);
    v64(v59, v63);
    sub_1C593EDC0(v62, v63, v61);
    v47 = v98;
    v46 = v99;
    v107 = v99;
    v108 = v98;
    v65 = v87;
    swift_getWitnessTable();
    v44 = v90;
    sub_1C5941738(v59, v65, v63);
    v66 = v59;
    v43 = v95;
    v64(v66, v63);
    v67 = v62;
    v45 = v97;
    v64(v67, v63);
    v41 = v96;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B32944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = sub_1C5BC8C84();
  a3[3] = v4;
  v5 = *(_s13FooterButtonsV11ButtonsViewVMa() + 40);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B329DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    swift_beginAccess();
    if (*(v2 + 18))
    {
      v4 = sub_1C5BCA494();
      sub_1C5BCAA54();
      sub_1C5BC85D4();
      result = sub_1C5BC8FA4();
      v7 = v12;
      v6 = v11;
      v8 = v13;
      v9 = vdupq_n_s64(0x100uLL);
      v9.i64[0] = v4;
      v10 = sub_1C5B32B14;
    }

    else
    {
      result = 0;
      v10 = 0;
      v9 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
    }

    *a2 = v9;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 64) = result;
    *(a2 + 72) = v10;
    *(a2 + 80) = 0;
  }

  else
  {
    _s5DebugCMa();
    sub_1C5B353C0(&qword_1EDA4A208, _s5DebugCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B32B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 - 8);
  v51 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C5BC8F34();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10);
  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198648);
  v10 = *(a1 + 16);
  v37 = *(a1 + 24);
  v36 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35[1] = swift_getAssociatedTypeWitness();
  v38 = sub_1C5BCB804();
  type metadata accessor for VibrancyModifier();
  v43 = sub_1C5BC8AB4();
  v45 = sub_1C5BC8AB4();
  v47 = sub_1C5BC92D4();
  v11 = sub_1C5BC92D4();
  v44 = v11;
  v12 = sub_1C5924F54(qword_1EC196B18, &qword_1EC196B10);
  v49 = v12;
  v48 = sub_1C5AB9BD8();
  v64 = v9;
  v65 = &type metadata for NowPlayingButtonID;
  v66 = v11;
  v67 = v12;
  v68 = v48;
  v13 = sub_1C5BCA8C4();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  v19 = *v2;
  sub_1C5950790(v8);
  v20 = v19(v8);
  (*(v41 + 8))(v8, v42);
  v64 = v20;
  swift_getKeyPath();
  v21 = v46;
  (*(v5 + 16))(v46, v3, a1);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = v37;
  *(v23 + 16) = v36;
  *(v23 + 24) = v24;
  (*(v5 + 32))(v23 + v22, v21, a1);
  v25 = sub_1C5B35248();
  v63 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
  v61 = WitnessTable;
  v62 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1C59E7CE0();
  v59 = v28;
  v60 = v29;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E6981E60];
  v30 = swift_getWitnessTable();
  v55 = v25;
  v56 = v30;
  v34 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v54 = v34;
  v31 = swift_getWitnessTable();
  sub_1C593EDC0(v15, v13, v31);
  v32 = *(v52 + 8);
  v32(v15, v13);
  sub_1C593EDC0(v18, v13, v31);
  return (v32)(v18, v13);
}

uint64_t sub_1C5B33194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v110 = a2;
  v125 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v118 = swift_getAssociatedTypeWitness();
  v10 = sub_1C5BCB804();
  v102 = type metadata accessor for VibrancyModifier();
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5BC8AB4();
  v13 = sub_1C5BC92D4();
  v117 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v101 - v14;
  v127 = v10;
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v101 - v16;
  v17 = sub_1C5950C90();
  v167 = &type metadata for NowPlayingLookupID;
  v168 = AssociatedTypeWitness;
  v169 = v17;
  v170 = AssociatedConformanceWitness;
  v126 = AssociatedConformanceWitness;
  v18 = type metadata accessor for ViewProvider();
  v105 = *(v18 - 8);
  v106 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v101 - v19;
  v128 = v11;
  v111 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v101 - v22;
  v123 = v12;
  v115 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v101 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198660);
  MEMORY[0x1EEE9AC00](v27);
  v101 = (&v101 - v28);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198670);
  MEMORY[0x1EEE9AC00](v103);
  v30 = &v101 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198648);
  MEMORY[0x1EEE9AC00](v31);
  v104 = &v101 - v32;
  v124 = v13;
  v33 = sub_1C5BC92D4();
  v121 = *(v33 - 8);
  v122 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v101 - v34;
  v36 = *a1;
  v37 = *(a1 + 8);
  LOBYTE(v34) = *(a1 + 16);
  v119 = v31;
  v120 = v35;
  if ((v34 & 1) == 0)
  {
    if (v36 == 0x726563617073 && v37 == 0xE600000000000000)
    {

      sub_1C5950CE4();
      sub_1C5950CE4();
    }

    else
    {
      v61 = sub_1C5BCBDE4();

      sub_1C5950CE4();
      sub_1C5950CE4();
      if ((v61 & 1) == 0)
      {
        if (v36 == 0x6574756F72 && v37 == 0xE500000000000000)
        {

          sub_1C5950CE4();
          sub_1C5950CE4();
        }

        else
        {
          v78 = sub_1C5BCBDE4();

          sub_1C5950CE4();
          sub_1C5950CE4();
          if ((v78 & 1) == 0)
          {
            v126 = swift_getAssociatedConformanceWitness();
            v149 = v126;
            WitnessTable = swift_getWitnessTable();
            v94 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
            v147 = WitnessTable;
            v148 = v94;
            v95 = swift_getWitnessTable();
            v96 = sub_1C59E7CE0();
            v145 = v95;
            v146 = v96;
            v97 = v123;
            v98 = swift_getWitnessTable();
            v99 = v116;
            v60 = MEMORY[0x1E6981E60];
            sub_1C5941738(v98, v97, MEMORY[0x1E6981E70]);
            sub_1C5B35248();
            v143 = v98;
            v144 = v60;
            v100 = v124;
            swift_getWitnessTable();
            v59 = v120;
            sub_1C5941738(v99, v119, v100);
            (*(v117 + 8))(v99, v100);
            goto LABEL_9;
          }
        }

        KeyPath = swift_getKeyPath();
        v80 = v101;
        *v101 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000);
        swift_storeEnumTagMultiPayload();
        v81 = type metadata accessor for NowPlayingRouteButton.Content(0);
        v82 = (v80 + v81[5]);
        type metadata accessor for NowPlayingRouteObserver();
        sub_1C5B353C0(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
        *v82 = sub_1C5BC8C84();
        v82[1] = v83;
        v84 = v81[6];
        *(v80 + v84) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
        swift_storeEnumTagMultiPayload();
        v85 = v80 + v81[7];
        *v85 = swift_getKeyPath();
        *(v85 + 8) = 0;
        v86 = (v80 + *(v27 + 36));
        *v86 = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v87 = v86 + *(v102 + 20);
        *v87 = swift_getKeyPath();
        v87[8] = 0;
        sub_1C59400B0(v80, v30, &qword_1EC198660);
        swift_storeEnumTagMultiPayload();
        sub_1C5B352D4();
        v88 = v104;
        sub_1C5BC92C4();
        sub_1C5B35248();
        v126 = swift_getAssociatedConformanceWitness();
        v142 = v126;
        v89 = swift_getWitnessTable();
        v90 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
        v140 = v89;
        v141 = v90;
        v91 = swift_getWitnessTable();
        v92 = sub_1C59E7CE0();
        v138 = v91;
        v139 = v92;
        v136 = swift_getWitnessTable();
        v60 = MEMORY[0x1E6981E60];
        v137 = MEMORY[0x1E6981E60];
        swift_getWitnessTable();
        v59 = v120;
        sub_1C5950E54(v88, v119);
        sub_1C5924EF4(v88, &qword_1EC198648);
        v68 = v80;
        v67 = &qword_1EC198660;
        goto LABEL_8;
      }
    }

    *v30 = 0;
    v30[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1C5B352D4();
    v62 = v104;
    sub_1C5BC92C4();
    sub_1C5B35248();
    v126 = swift_getAssociatedConformanceWitness();
    v135 = v126;
    v63 = swift_getWitnessTable();
    v64 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
    v133 = v63;
    v134 = v64;
    v65 = swift_getWitnessTable();
    v66 = sub_1C59E7CE0();
    v131 = v65;
    v132 = v66;
    v129 = swift_getWitnessTable();
    v60 = MEMORY[0x1E6981E60];
    v130 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    v59 = v120;
    sub_1C5950E54(v62, v119);
    v67 = &qword_1EC198648;
    v68 = v62;
LABEL_8:
    sub_1C5924EF4(v68, v67);
    goto LABEL_9;
  }

  sub_1C5950CE4();
  sub_1C5950CE4();

  sub_1C5950CE4();
  sub_1C5950CE4();
  v38 = *(v110 + 16);
  sub_1C5951550();
  v39 = v112;
  sub_1C59498C4(v38);
  v40 = *(a4 + 384);
  swift_unknownObjectRetain();
  v40(v39, a4);
  swift_unknownObjectRelease();
  v167 = v36;
  v168 = v37;
  v41 = v106;
  v42 = v107;
  sub_1C595BC70(&v167, v106);

  (*(v105 + 8))(v20, v41);
  v126 = swift_getAssociatedConformanceWitness();
  v166[2] = v126;
  v43 = v127;
  v44 = swift_getWitnessTable();
  v45 = v109;
  sub_1C5B34268(v43, v44);
  (*(v108 + 8))(v42, v43);
  v167 = v36;
  v168 = v37;
  LOBYTE(v169) = 1;
  NowPlayingButtonID.geometryID.getter(v166);
  v165[0] = v166[0];
  v165[1] = v166[1];
  v46 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
  v163 = v44;
  v164 = v46;
  v47 = v128;
  v48 = swift_getWitnessTable();
  v49 = v114;
  sub_1C5B0A7BC(v165, v47, v48);

  (*(v111 + 8))(v45, v47);
  v50 = sub_1C59E7CE0();
  v161 = v48;
  v162 = v50;
  v51 = v123;
  v52 = swift_getWitnessTable();
  v53 = v113;
  sub_1C593EDC0(v49, v51, v52);
  v54 = *(v115 + 8);
  v54(v49, v51);
  sub_1C593EDC0(v53, v51, v52);
  v55 = v116;
  v56 = MEMORY[0x1E6981E60];
  sub_1C5950E54(v49, v51);
  sub_1C5B35248();
  v159 = v52;
  v160 = v56;
  v57 = v124;
  swift_getWitnessTable();
  v58 = v120;
  sub_1C5941738(v55, v119, v57);
  (*(v117 + 8))(v55, v57);
  v54(v49, v51);
  v54(v53, v51);
  v59 = v58;
  v60 = MEMORY[0x1E6981E60];
LABEL_9:
  v69 = sub_1C5B35248();
  v158 = v126;
  v70 = swift_getWitnessTable();
  v71 = sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
  v156 = v70;
  v157 = v71;
  v72 = swift_getWitnessTable();
  v73 = sub_1C59E7CE0();
  v154 = v72;
  v155 = v73;
  v152 = swift_getWitnessTable();
  v153 = v60;
  v74 = swift_getWitnessTable();
  v150 = v69;
  v151 = v74;
  v75 = v122;
  v76 = swift_getWitnessTable();
  sub_1C593EDC0(v59, v75, v76);
  return (*(v121 + 8))(v59, v75);
}

uint64_t sub_1C5B34268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VibrancyModifier();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v7 = v6 + *(v4 + 20);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  MEMORY[0x1C694E550](v6, a1, v4, a2);
  return sub_1C5B35408(v6);
}

uint64_t sub_1C5B34370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v43 = sub_1C5BCAB54();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198698);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v37 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986A0);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v37 - v6;
  v8 = sub_1C5BC8F34();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC90F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = _UISolariumEnabled();
  sub_1C594C704(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697F600], v10);
  v18 = sub_1C5BC8274();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  v20 = v7;
  if (v17)
  {
    v21 = v46;
    if (v18)
    {
      v22 = v2 + *(type metadata accessor for VibrancyModifier() + 20);
      v23 = *v22;
      if (*(v22 + 8))
      {
        if (v23)
        {
          goto LABEL_9;
        }

LABEL_7:
        v24 = 1;
        v25 = MEMORY[0x1E6981DB8];
        goto LABEL_10;
      }

      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v27 = v38;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v23, 0);
      (*(v39 + 8))(v27, v40);
      if ((v48 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v21 = v46;
    if (v18)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v24 = 0;
  v25 = MEMORY[0x1E6981DF0];
LABEL_10:
  v29 = v42;
  v28 = v43;
  (*(v3 + 104))(v42, *v25, v43);
  (*(v3 + 32))(v21 + *(v41 + 36), v29, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986A8);
  (*(*(v30 - 8) + 16))(v21, v45, v30);
  if (v24)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC1A6AB8;
  }

  else
  {
    v31 = sub_1C5BCA434();
  }

  KeyPath = swift_getKeyPath();
  sub_1C59E7D34(v21, v20, &qword_1EC198698);
  v33 = (v20 + *(v44 + 36));
  *v33 = KeyPath;
  v33[1] = v31;
  if (v24)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6AB8;
  }

  else
  {
    v34 = sub_1C5BCA434();
  }

  v35 = v47;
  sub_1C59E7D34(v20, v47, &qword_1EC1986A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1986B0);
  *(v35 + *(result + 36)) = v34;
  return result;
}

uint64_t sub_1C5B348F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198678);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t NowPlayingFooterLayout.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t NowPlayingFooterLayout.init(compact:regular:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1C5B349DC;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_1C5B349DC(uint64_t a1)
{
  sub_1C5B34C0C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1C5B34A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8F04();
  *a1 = result;
  return result;
}

id sub_1C5B34A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  if (!_UISolariumEnabled())
  {
    sub_1C5BC9994();
    v6 = sub_1C5BC9954();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v3 = sub_1C5BC99A4();
    sub_1C5924EF4(v2, &qword_1EC190F90);
    return v3;
  }

  sub_1C5BC99D4();
  sub_1C5BC9994();
  v3 = sub_1C5BC99E4();

  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v5 = result;
    [result pointSize];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B34C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  v9 = sub_1C5BC8F34();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_1C593F9B0();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938);
  if (v13)
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  if (v13 == 3)
  {
    return a3;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C5B34D20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B34DD0()
{
  result = qword_1EC198570;
  if (!qword_1EC198570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198570);
  }

  return result;
}

unint64_t sub_1C5B34E40()
{
  result = qword_1EC198590;
  if (!qword_1EC198590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198588);
    sub_1C5B34EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198590);
  }

  return result;
}

unint64_t sub_1C5B34EC4()
{
  result = qword_1EC198598;
  if (!qword_1EC198598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1985A0);
    sub_1C5B34F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198598);
  }

  return result;
}

unint64_t sub_1C5B34F50()
{
  result = qword_1EC1985A8;
  if (!qword_1EC1985A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1985B0);
    sub_1C5924F54(&qword_1EC1985B8, qword_1EC1985C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1985A8);
  }

  return result;
}

void sub_1C5B35018()
{
  sub_1C5927B74();
  if (v0 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v1 <= 0x3F)
    {
      sub_1C5B3552C(319, &qword_1EDA4E1B0, MEMORY[0x1E697F228]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for VibrancyModifier()
{
  result = qword_1EC198680;
  if (!qword_1EC198680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B351AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(_s13FooterButtonsV11ButtonsViewVMa() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5B33194(a1, v8, v5, v6, a2);
}

unint64_t sub_1C5B35248()
{
  result = qword_1EC198650;
  if (!qword_1EC198650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198648);
    sub_1C5B352D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198650);
  }

  return result;
}

unint64_t sub_1C5B352D4()
{
  result = qword_1EC198658;
  if (!qword_1EC198658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198660);
    sub_1C5B353C0(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198658);
  }

  return result;
}

uint64_t sub_1C5B353C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B35408(uint64_t a1)
{
  v2 = type metadata accessor for VibrancyModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5B3548C()
{
  sub_1C5B3552C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    sub_1C594F0B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5B3552C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5B3559C()
{
  result = qword_1EC1986B8;
  if (!qword_1EC1986B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1986B0);
    sub_1C5B35654();
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986B8);
  }

  return result;
}

unint64_t sub_1C5B35654()
{
  result = qword_1EC1986C0;
  if (!qword_1EC1986C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1986A0);
    sub_1C5B3570C();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986C0);
  }

  return result;
}

unint64_t sub_1C5B3570C()
{
  result = qword_1EC1986C8;
  if (!qword_1EC1986C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198698);
    sub_1C5924F54(&qword_1EC1986D0, &qword_1EC1986A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1986C8);
  }

  return result;
}

uint64_t BackdropView.init(image:useMask:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

id BackdropView.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for BackdropHostView());
  v4 = v1;
  return sub_1C5B3652C(v1, v2, 1);
}

void BackdropView.updateUIView(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image) = v17;
  v20 = v17;

  sub_1C5B35FB4();
  v21 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask) = v18;
  sub_1C5B36268(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198700);
  v40 = a2;
  sub_1C5BC96C4();
  sub_1C5B36630();
  sub_1C5BC8F44();
  v22 = *(v6 + 8);
  v22(v16, v5);
  v23 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused) = v43;
  v38 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView;
  v24 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (v24)
  {
    v25 = v24;
    if ([v25 isPaused] != *(a1 + v23))
    {
      [v25 setPaused_];
      [v25 setEnableSetNeedsDisplay_];
    }
  }

  sub_1C5BC96C4();
  sub_1C5B36684();
  sub_1C5BC8F44();
  v22(v13, v5);
  v26 = v43;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity) = v43;
  v27 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer;
  v28 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  if (v28)
  {
    v29 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v28 + v29) + 64) = v26;
  }

  sub_1C5BC96C4();
  sub_1C5B366D8();
  sub_1C5BC8F44();
  v22(v10, v5);
  v30 = v42;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration) = v42;
  v31 = *(a1 + v27);
  if (v31)
  {
    v32 = v30;
    v33 = (v31 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
    swift_beginAccess();
    *v33 = v32;
  }

  v34 = v39;
  sub_1C5BC96C4();
  sub_1C5B3672C();
  sub_1C5BC8F44();
  v22(v34, v5);
  v35 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing;
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing) = v41;
  v36 = *(a1 + v38);
  if (v36)
  {
    v37 = [v36 layer];
    [v37 setAllowsDisplayCompositing_];
  }
}

float sub_1C5B35C48()
{
  sub_1C5B36684();
  sub_1C5BC8F44();
  return v1;
}

double sub_1C5B35C84()
{
  sub_1C5B366D8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B35CE0(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

id sub_1C5B35D28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for BackdropHostView());
  v4 = v1;
  return sub_1C5B3652C(v1, v2, 1);
}

uint64_t sub_1C5B35D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B375B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B35DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B375B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B35E44()
{
  sub_1C5B375B8();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t MCUINamespace<A>.backdropIntensity(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t MCUINamespace<A>.backdropCrossfadeDuration(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

void sub_1C5B35FB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  if (!v2)
  {
    return;
  }

  v3 = *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage];
  v4 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image;
  v5 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    v17 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
    goto LABEL_9;
  }

  v17 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (!v5)
  {
LABEL_9:
    v12 = v1;
    v13 = v2;
LABEL_10:
    v14 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
    v15 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused);
    v16 = v5;
    sub_1C5AD6138(v5, 0, (v15 & 1) == 0, 0, 0);

    if (*(v0 + v14) == 1)
    {
      [v17 setNeedsDisplay];
    }

    goto LABEL_12;
  }

  v6 = v0;
  sub_1C592535C(0, &qword_1EDA4E5E0);
  v7 = v17;
  v8 = v2;
  v9 = v5;
  v10 = v3;
  v11 = sub_1C5BCB744();

  if ((v11 & 1) == 0)
  {
    v0 = v6;
    v5 = *(v6 + v4);
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1C5B36124(id a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
  if (a1)
  {
    v5 = a1;
    if (v4)
    {
      sub_1C592535C(0, &qword_1EC198760);
      v6 = v4;
      v5 = v5;
      v7 = sub_1C5BCB744();

      if (v7)
      {
        return;
      }
    }

    [v5 removeFromSuperview];
    v4 = *&v2[v3];
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v10 = v4;
  v8 = [v10 isPaused];
  v9 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
  if (v8 != v2[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused])
  {
    [v10 setPaused_];
    [v10 setEnableSetNeedsDisplay_];
  }

  sub_1C5B35FB4();
  [v2 addSubview_];
}

void sub_1C5B36268(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask) != (a1 & 1))
  {
    if (qword_1EC1908B8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EC1986D8);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "changing useMask on already created BackdropHostView", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    sub_1C5B3637C();
  }
}

id sub_1C5B3652C(void *a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer] = 0;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView] = 0;
  v8 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image] = 0;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused] = 0;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity] = 1045220557;
  *&v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration] = 0x3FE999999999999ALL;
  *&v3[v8] = a1;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_useMask] = a2;
  v3[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_allowsDisplayCompositing] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C5B3637C();

  return v10;
}

unint64_t sub_1C5B36630()
{
  result = qword_1EC198708;
  if (!qword_1EC198708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198708);
  }

  return result;
}

unint64_t sub_1C5B36684()
{
  result = qword_1EDA49238;
  if (!qword_1EDA49238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49238);
  }

  return result;
}

unint64_t sub_1C5B366D8()
{
  result = qword_1EC198730;
  if (!qword_1EC198730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198730);
  }

  return result;
}

unint64_t sub_1C5B3672C()
{
  result = qword_1EC198740;
  if (!qword_1EC198740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198740);
  }

  return result;
}

Swift::Void __swiftcall BackdropHostView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_1C5B3690C(unsigned __int8 *a1)
{
  v3 = v1;
  v4 = *a1;
  if (qword_1EDA4F008 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDA4F010;
  if (qword_1EDA4F010)
  {
    v34 = v2;
    v6 = qword_1EDA4F018;
    v7 = qword_1EDA4F020;
    v8 = qword_1EDA4F028;
    v9 = qword_1EDA4F030;
    v32[0] = qword_1EDA4F010;
    v32[1] = qword_1EDA4F018;
    v32[2] = qword_1EDA4F020;
    v32[3] = qword_1EDA4F028;
    v32[4] = qword_1EDA4F030;
    v33 = byte_1EDA4F038 & 1;
    v31[0] = v4;
    v10 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
    sub_1C5B37660(v5, v6, v7, v8);
    swift_unknownObjectRetain();
    v30 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = v8;
    v12 = Backdrop.CompositeRenderer.init(context:configuration:)(v32, v31);
    v13 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*&v12[v13] + 64) = 1065353216;
    sub_1C5AD6E34();
    v14 = [objc_opt_self() systemGrayColor];
    sub_1C5AD6690(v14, 0);

    sub_1C5AD5488(v9);
    v15 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image);
    v16 = v15;
    sub_1C5AD6138(v15, 0, 0, 0, 0);

    v17 = [objc_allocWithZone(MEMORY[0x1E6974440]) initWithFrame:v5 device:{0.0, 0.0, 0.0, 0.0}];
    if ([v5 supportsFamily_])
    {
      v18 = v8;
      v19 = v7;
      v20 = v4;
      v21 = [objc_opt_self() mainScreen];
      v22 = [v21 maximumFramesPerSecond];

      v4 = v20;
      v7 = v19;
      v8 = v18;
    }

    else
    {
      v23 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
      swift_beginAccess();
      if (v12[v23])
      {
        v22 = 30;
      }

      else
      {
        v22 = 15;
      }
    }

    [v17 setPreferredFramesPerSecond_];
    v24 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
    swift_beginAccess();
    [v17 setColorPixelFormat_];
    [v17 setDelegate_];
    v25 = v17;
    v26 = [v25 layer];
    [v26 setAllowsDisplayCompositing_];

    if (v4)
    {
      [v25 setOpaque_];

      [v25 setClearColor_];
    }

    else
    {
    }

    v27 = v12;
    sub_1C5B3747C(v12);

    v28 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
    *(v3 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView) = v25;
    v29 = v25;
    sub_1C5B36124(v28);

    sub_1C5ADE250(v5, v30, v7, v8);
  }

  else
  {
    sub_1C5B3760C();
    swift_allocError();
    swift_willThrow();
  }
}

id BackdropHostView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BackdropHostView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BackdropHostView.didChangeState(renderer:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView);
  if (v2)
  {
    v8 = v2;
    v4 = [v8 device];
    if (v4)
    {
      if ([v4 supportsFamily_])
      {
        v5 = [objc_opt_self() mainScreen];
        v6 = [v5 maximumFramesPerSecond];
      }

      else
      {
        v7 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
        swift_beginAccess();
        if (*(a1 + v7))
        {
          v6 = 30;
        }

        else
        {
          v6 = 15;
        }
      }

      [v8 setPreferredFramesPerSecond_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1C5B36FF0()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1986D8);
  __swift_project_value_buffer(v0, qword_1EC1986D8);
  return sub_1C5BC7D54();
}

uint64_t View.backdropIsPaused(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MCUINamespace();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  View.mcui.getter(a2, &v8 - v5);
  MCUINamespace<A>.backdropIsPaused(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t View.backdropIntensity(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MCUINamespace();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  View.mcui.getter(a1, &v7 - v4);
  MCUINamespace<A>.backdropIntensity(_:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C5B37278()
{
  result = qword_1EDA4DEE8[0];
  if (!qword_1EDA4DEE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4DEE8);
  }

  return result;
}

uint64_t sub_1C5B372CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_1C5B37328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm_0(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1C5BC8AB4();
  sub_1C5A126A0(a4, a2);
  return swift_getWitnessTable();
}

void sub_1C5B3747C(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer) = a1;
  v4 = a1;

  v5 = *(v1 + v2);
  if (v5)
  {
    v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*(v5 + v6) + 64) = *(v1 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity);
  }

  sub_1C5B35FB4();
}

void sub_1C5B37500()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_renderer) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_intensity) = 1045220557;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_crossfadeDuration) = 0x3FE999999999999ALL;
  sub_1C5BCBBC4();
  __break(1u);
}

unint64_t sub_1C5B375B8()
{
  result = qword_1EDA4DEE0;
  if (!qword_1EDA4DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DEE0);
  }

  return result;
}

unint64_t sub_1C5B3760C()
{
  result = qword_1EC198768;
  if (!qword_1EC198768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198768);
  }

  return result;
}

id sub_1C5B37660(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    return a4;
  }

  return result;
}

unint64_t sub_1C5B376D4()
{
  result = qword_1EC198770;
  if (!qword_1EC198770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198770);
  }

  return result;
}

uint64_t sub_1C5B37728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

uint64_t NowPlayingHostedContentToggleButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1C5951550();
}

uint64_t NowPlayingHostedContentToggleButton.hostedContentID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t sub_1C5B37854(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1C5B378E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C595E9AC();
  *a1 = result & 1;
  return result;
}

void (*sub_1C5B3793C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  sub_1C595EABC();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  type metadata accessor for NowPlayingHostedContentToggleButton();
  swift_getWitnessTable();
  sub_1C5BC7B94();

  v4[5] = sub_1C5B37894();
  return sub_1C5B37AD8;
}

void sub_1C5B37AD8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C5B37B2C();

  free(v1);
}

uint64_t sub_1C5B37B2C()
{
  swift_getKeyPath();
  type metadata accessor for NowPlayingHostedContentToggleButton();
  swift_getWitnessTable();
  sub_1C5BC7B84();
}

uint64_t NowPlayingHostedContentToggleButton.__allocating_init(_:presenting:label:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  NowPlayingHostedContentToggleButton.init(_:presenting:label:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *NowPlayingHostedContentToggleButton.deinit()
{
  v1 = *v0;
  sub_1C5950CE4();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = sub_1C5BC7BB4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t NowPlayingHostedContentToggleButton.__deallocating_deinit()
{
  NowPlayingHostedContentToggleButton.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B37DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v159 = sub_1C5BC92E4();
  v145 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v142 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v128 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = a1;
  v6 = *(a1 + 16);
  v160 = *(a1 + 24);
  v161 = v6;
  v7 = sub_1C5BCA7B4();
  v125 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v107 - v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C595EDD0(&qword_1EC198848, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v172 = v7;
  v173 = v4;
  v174 = WitnessTable;
  v175 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v117 = &v107 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198850);
  v121 = OpaqueTypeMetadata2;
  v13 = sub_1C5BC8AB4();
  v119 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v107 - v14;
  v126 = v7;
  v172 = v7;
  v173 = v4;
  v129 = v4;
  v118 = WitnessTable;
  v174 = WitnessTable;
  v175 = v10;
  v115 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1C5924F54(&qword_1EDA462D0, &qword_1EC198850);
  v114 = OpaqueTypeConformance2;
  v170 = OpaqueTypeConformance2;
  v171 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C595EDD0(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v157 = v13;
  v172 = v13;
  v173 = v159;
  v134 = v17;
  v174 = v17;
  v175 = v18;
  v131 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v132 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v107 - v20;
  v133 = v21;
  v22 = sub_1C5BC8AB4();
  v139 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v138 = &v107 - v23;
  sub_1C5BC97C4();
  v141 = v22;
  v24 = sub_1C5BC8AB4();
  v144 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v107 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC193698);
  v146 = v24;
  v26 = sub_1C5BC8AB4();
  v147 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v107 - v27;
  v148 = v28;
  v151 = sub_1C5BC8AB4();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v107 - v29;
  v113 = sub_1C5BC8F34();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v153;
  v32 = *(v153 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v156 = *(v32 + 16);
  v156(&v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v158, v31, v35);
  sub_1C5BCB1E4();
  v36 = sub_1C5BCB1D4();
  v37 = *(v32 + 80);
  v38 = (v37 + 48) & ~v37;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  *(v39 + 2) = v36;
  *(v39 + 3) = v40;
  v41 = v160;
  *(v39 + 4) = v161;
  *(v39 + 5) = v41;
  v42 = *(v32 + 32);
  v42(&v39[v38], &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v130 = v32 + 16;
  (v156)(&v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v158, v31);
  v43 = sub_1C5BCB1D4();
  v135 = v33;
  v154 = v37;
  v44 = swift_allocObject();
  *(v44 + 2) = v43;
  v45 = v153;
  v46 = v160;
  v47 = v161;
  *(v44 + 3) = MEMORY[0x1E69E85E0];
  *(v44 + 4) = v47;
  *(v44 + 5) = v46;
  v136 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v32 + 32;
  v127 = v42;
  v42(&v44[v38], v136, v45);
  v48 = v158;
  sub_1C5BCA844();
  v49 = v172;
  v50 = v173;
  LODWORD(v109) = v174;
  v51 = *(v48 + 40);
  LOBYTE(v38) = *(v48 + 48);

  if ((v38 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v52 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v53 = v111;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v112 + 8))(v53, v113);
    v51 = v172;
  }

  swift_getKeyPath();
  v172 = v51;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v55 = *(v51 + 24);
  v54 = *(v51 + 32);

  v56 = *(v48 + 64);
  if (!v54)
  {
    if (!v56)
    {
LABEL_13:

      v59 = 0;
      goto LABEL_14;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!v56)
  {
    goto LABEL_11;
  }

  if (v55 == *(v48 + 56) && v54 == v56)
  {
    goto LABEL_13;
  }

  v57 = sub_1C5BCBDE4();

  v59 = 0;
  if ((v57 & 1) == 0)
  {
LABEL_12:
    v59 = *(v48 + *(v45 + 48)) ^ 1;
  }

LABEL_14:
  v110 = v59;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v160;
  *(&v107 - 4) = v161;
  *(&v107 - 3) = v60;
  *(&v107 - 2) = v48;

  v61 = v122;
  v124 = v49;
  v123 = v50;
  sub_1C5BCA7A4();
  v62 = *(v48 + 64);
  v63 = v128;
  v109 = *(v48 + 56);
  *v128 = v109;
  *(v63 + 8) = v62;
  v64 = v129;
  v65 = *(v129 + 20);
  *(v63 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v66 = v63 + *(v64 + 24);
  type metadata accessor for NowPlayingViewModel.Metrics();
  sub_1C595EDD0(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics);
  v108 = v62;

  *v66 = sub_1C5BC8324();
  *(v66 + 8) = v67 & 1;
  v68 = v117;
  v69 = v126;
  sub_1C5BC9E74();
  sub_1C5B3D9A4(v63);
  (*(v125 + 8))(v61, v69);
  v172 = 0xC024000000000000;
  sub_1C5B3DA00();
  v70 = v116;
  v71 = v121;
  sub_1C5BC9E84();
  (*(v120 + 8))(v68, v71);
  v72 = v142;
  v73 = v157;
  v74 = v159;
  v75 = v134;
  v76 = v131;
  sub_1C5AF76C4();
  sub_1C5BC9E04();
  (*(v145 + 8))(v72, v74);
  (*(v119 + 8))(v70, v73);
  v78 = *v48;
  v77 = *(v48 + 8);
  v80 = *(v48 + 16);
  v79 = *(v48 + 24);
  if (*(v48 + 32) == 1)
  {
    v172 = *v48;
    v173 = v77;
    v174 = v80;
    v175 = v79;
    sub_1C593E7D8(v78, v77);
  }

  else
  {

    sub_1C5BCB4E4();
    v81 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v82 = v111;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC4C(v78, v77, v80, v79, 0);
    (*(v112 + 8))(v82, v113);
    v77 = v173;
  }

  v83 = ~v154;
  if (v77 != 1)
  {
    sub_1C593E820(v172, v77);
  }

  v172 = v157;
  v173 = v159;
  v174 = v75;
  v175 = v76;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v138;
  v86 = v133;
  v87 = v155;
  sub_1C5BC9FA4();
  (*(v132 + 8))(v87, v86);
  v172 = 0;
  v173 = 0xE000000000000000;
  sub_1C5BCBA94();

  v172 = 0xD000000000000018;
  v173 = 0x80000001C5BFC150;
  MEMORY[0x1C694F170](v109, v108);
  v88 = v172;
  v89 = v173;
  v168 = v84;
  v169 = MEMORY[0x1E69805B0];
  v90 = v141;
  v91 = swift_getWitnessTable();
  v92 = v140;
  sub_1C595BB1C(v88, v89);

  (*(v139 + 8))(v85, v90);
  v93 = sub_1C595EDD0(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v166 = v91;
  v167 = v93;
  v94 = v146;
  v95 = swift_getWitnessTable();
  v96 = v143;
  sub_1C5BCA304();
  (*(v144 + 8))(v92, v94);
  v97 = sub_1C5924F54(&qword_1EDA46030, qword_1EC193698);
  v164 = v95;
  v165 = v97;
  v98 = v148;
  v99 = swift_getWitnessTable();
  v100 = v149;
  sub_1C5BCA2B4();
  (*(v147 + 8))(v96, v98);
  LOBYTE(v172) = *(v48 + *(v45 + 48));
  v101 = v136;
  (v156)(v136, v48, v45);
  v102 = (v154 + 32) & v83;
  v103 = swift_allocObject();
  v104 = v160;
  *(v103 + 16) = v161;
  *(v103 + 24) = v104;
  v127(v103 + v102, v101, v45);
  v162 = v99;
  v163 = MEMORY[0x1E697E5C0];
  v105 = v151;
  swift_getWitnessTable();
  sub_1C5BCA344();

  return (*(v150 + 8))(v100, v105);
}

uint64_t sub_1C5B39130@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v17;
  }

  swift_getKeyPath();
  v17 = v8;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v12 = *(v8 + 24);
  v11 = *(v8 + 32);

  v13 = *(a1 + 64);
  if (!v11)
  {
    if (!v13)
    {

      v14 = 1;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:

    v14 = 0;
    goto LABEL_14;
  }

  if (v12 == *(a1 + 56) && v11 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C5BCBDE4();
  }

  result = swift_bridgeObjectRelease_n();
LABEL_14:
  *a2 = v14 & 1;
  return result;
}

uint64_t sub_1C5B39388(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C5BC8F34();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToggleButton();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C5BC7D64();
  __swift_project_value_buffer(v13, qword_1EDA5DA78);
  (*(v9 + 16))(v11, a4, v8);
  v14 = sub_1C5BC7D44();
  v15 = sub_1C5BCB4F4();
  v16 = os_log_type_enabled(v14, v15);
  v38 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = a4;
    v39[0] = v34;
    *v17 = 136315394;
    if (v12)
    {
      v18 = 0x69746E6573657250;
    }

    else
    {
      v18 = 0x697373696D736944;
    }

    v19 = v6;
    v20 = sub_1C592ADA8(v18, 0xEA0000000000676ELL, v39);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v22 = *(v11 + 7);
    v21 = *(v11 + 8);
    v23 = *(v9 + 8);

    v23(v11, v8);
    v24 = v22;
    v6 = v19;
    v25 = sub_1C592ADA8(v24, v21, v39);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1C5922000, v14, v15, "%s selected content (id=%{public}s) because its toggle button was tapped", v17, 0x16u);
    v26 = v34;
    swift_arrayDestroy();
    a4 = v35;
    MEMORY[0x1C69510F0](v26, -1, -1);
    MEMORY[0x1C69510F0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v27 = *(a4 + 48);

  if ((v27 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v28 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v29 = v36;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v37 + 8))(v29, v6);
  }

  if (v38)
  {
    v30 = *(a4 + 56);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v39[0] = v30;
  v39[1] = v31;
  sub_1C5A37C44(v39, 1);
}

uint64_t sub_1C5B39790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToggleButton();
  sub_1C593EDC0(a1 + *(v9 + 44), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5B39888(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v17;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + *(type metadata accessor for ToggleButton() + 48));
  swift_getKeyPath();
  v17 = v6;
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v17 = v6;
  swift_getKeyPath();
  sub_1C5BC7B94();

  v12 = *(v6 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v12;
  sub_1C5B3CAD4(v11, v9, v10, isUniquelyReferenced_nonNull_native);
  v14 = *(v6 + 16);
  *(v6 + 16) = v17;
  sub_1C5A36CB8(v14);

  v17 = v6;
  swift_getKeyPath();
  sub_1C5BC7B84();
}

uint64_t sub_1C5B39B1C()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t NowPlayingHostedContentToggleButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1C5BC9374();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1C5BC9624();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198790);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  (*(v11 + 16))(v13, a1, v10, v16);
  sub_1C5B3DAD8(v3, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = (v12 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v19, v13, v10);
  sub_1C5B3DB40(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v34 = a1;
  type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel(0);
  sub_1C595EDD0(&qword_1EC198798, type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel);
  sub_1C5BCA6E4();
  v22 = v30;
  sub_1C5BC9364();
  sub_1C5924F54(&qword_1EC1987A0, &qword_1EC198790);
  sub_1C595EDD0(&qword_1EC1987A8, MEMORY[0x1E697C720]);
  v23 = v28;
  v24 = v31;
  sub_1C5BC9DA4();
  (*(v32 + 8))(v22, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t sub_1C5B3A0AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C5BC95E4();
  *v4 = !*v4;
  v3(v9, 0);
  sub_1C5B39B1C();
  v5 = *a2;
  v6 = a2[1];
  v9[0] = v5;
  v9[1] = v6;

  v7 = sub_1C5BC95F4();
  sub_1C5B3A164(v7, v9, (v7 & 1) == 0);
}

uint64_t sub_1C5B3A164(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(v3 + 16);
  result = swift_beginAccess();
  v9 = *(v7 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_1C596FBD8(v6, v5);
    if (v11 & 1) != 0 && (v12 = *(*(v9 + 56) + 8 * v10), , , *(v12 + 16)) && (v13 = sub_1C5970D3C(), (v14))
    {
      v15 = *(*(v12 + 56) + 16 * v13);

      v16 = a3 & 1;
      v15(&v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C5B3A258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1C5BCAB54();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC9604();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198800);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198808);
  MEMORY[0x1EEE9AC00](v51);
  v58 = &v50 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198810);
  MEMORY[0x1EEE9AC00](v52);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198818);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198820);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  sub_1C5BCA9F4();
  sub_1C5BC8B84();
  sub_1C5B3D714();
  sub_1C595EDD0(&qword_1EC198830, MEMORY[0x1E697EAF0]);
  sub_1C5BCAA04();
  if (sub_1C5BC95F4())
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  (*(v16 + 32))(v24, v18, v15);
  v29 = *(v20 + 44);
  v30 = v50;
  *&v24[v29] = v28;
  sub_1C59E7D34(v24, v27, &qword_1EC198820);
  sub_1C5BC9614();
  if (sub_1C5BC95F4())
  {
    v65 = sub_1C5BCA474();
  }

  else
  {
    v66 = sub_1C5BC93F4();
  }

  v31 = sub_1C5BC85E4();
  (*(v54 + 32))(v8, v30, v55);
  *&v8[*(v53 + 36)] = v31;
  v32 = sub_1C5BC95F4();
  v34 = v61;
  v33 = v62;
  v35 = MEMORY[0x1E6981DC0];
  if ((v32 & 1) == 0)
  {
    v35 = MEMORY[0x1E6981DF0];
  }

  v36 = v59;
  (*(v61 + 104))(v59, *v35, v62);
  v37 = v58;
  (*(v34 + 32))(&v58[*(v51 + 36)], v36, v33);
  sub_1C59E7D34(v8, v37, &qword_1EC198800);
  KeyPath = swift_getKeyPath();
  v39 = v56;
  v40 = &v56[*(v52 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198838) + 28);
  v42 = sub_1C5BC9624();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v40 + v41, a1, v42);
  (*(v43 + 56))(v40 + v41, 0, 1, v42);
  *v40 = KeyPath;
  sub_1C59E7D34(v37, v39, &qword_1EC198808);
  v44 = v60;
  sub_1C59E7D34(v39, v60, &qword_1EC198810);
  v45 = v57;
  sub_1C59400B0(v27, v57, &qword_1EC198820);
  v46 = v63;
  sub_1C59400B0(v44, v63, &qword_1EC198810);
  v47 = v64;
  sub_1C59400B0(v45, v64, &qword_1EC198820);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198840);
  sub_1C59400B0(v46, v47 + *(v48 + 48), &qword_1EC198810);
  sub_1C5924EF4(v44, &qword_1EC198810);
  sub_1C5924EF4(v27, &qword_1EC198820);
  sub_1C5924EF4(v46, &qword_1EC198810);
  return sub_1C5924EF4(v45, &qword_1EC198820);
}

__n128 sub_1C5B3A9C8@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_1C5BC8B84() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1C5BC9044();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #6.0 }

  *a1 = result;
  return result;
}

uint64_t MCUINamespace<A>.hostedContentToggleConfiguration.getter()
{
  sub_1C5B3CFE4();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B3AAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C59400B0(a1, &v9 - v6, &qword_1EC1987B8);
  sub_1C59400B0(v7, v4, &qword_1EC1987B8);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  return sub_1C5924EF4(v7, &qword_1EC1987B8);
}

uint64_t MCUINamespace<A>.hostedContentToggleConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C59400B0(a1, &v5 - v3, &qword_1EC1987B8);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  return sub_1C5924EF4(a1, &qword_1EC1987B8);
}

uint64_t sub_1C5B3ACA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C5BCAA54();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987E8);
  sub_1C5B3A258(v1, a1 + *(v4 + 44));
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987F0) + 36);
  *v5 = 0x3FF0000000000000;
  *(v5 + 4) = 0;
  v6 = sub_1C5BC95F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987F8);
  v8 = a1 + *(result + 36);
  *v8 = 0;
  v8[8] = v6 & 1;
  return result;
}

uint64_t sub_1C5B3AD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v35 = a3;
  v7 = sub_1C5BC9374();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C5BC9624();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198790);
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  (*(v13 + 16))(v15, a1, v12, v18);
  sub_1C5B3DAD8(v5, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + *(v29 + 80) + v21) & ~*(v29 + 80);
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v21, v15, v12);
  sub_1C5B3DB40(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  v36 = a1;
  type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel(0);
  sub_1C595EDD0(&qword_1EC198798, type metadata accessor for NowPlayingHostedContentToggleButtonStyle.DefaultLabel);
  sub_1C5BCA6E4();
  v24 = v32;
  sub_1C5BC9364();
  sub_1C5924F54(&qword_1EC1987A0, &qword_1EC198790);
  sub_1C595EDD0(&qword_1EC1987A8, MEMORY[0x1E697C720]);
  v25 = v30;
  v26 = v33;
  sub_1C5BC9DA4();
  (*(v34 + 8))(v24, v26);
  return (*(v31 + 8))(v20, v25);
}

uint64_t sub_1C5B3B17C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  __swift_allocate_value_buffer(v0, qword_1EC198778);
  v1 = __swift_project_value_buffer(v0, qword_1EC198778);
  v2 = sub_1C5BC9624();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1C5B3B21C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1908C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  v3 = __swift_project_value_buffer(v2, qword_1EC198778);
  return sub_1C59400B0(v3, a1, &qword_1EC1987B8);
}

void (*MCUINamespace<A>.hostedContentToggleConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5B3B3C4;
}

void sub_1C5B3B3C4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1C59400B0((*a1)[3], (*a1)[2], &qword_1EC1987B8);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1C59400B0(v3[2], v3[1], &qword_1EC1987B8);
    sub_1C5BC8F54();
    sub_1C5924EF4(v6, &qword_1EC1987B8);
  }

  else
  {
    sub_1C5BC8F54();
  }

  sub_1C5924EF4(v4, &qword_1EC1987B8);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_1C5B3B4D4()
{

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValues.hostedContentToggleConfiguration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1C5BC8F34();
  (*(*(v4 - 8) + 16))(v3, v0, v4);
  sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5924EF4(v3, &qword_1EC191938);
}

uint64_t sub_1C5B3B62C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C5BC8F34();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_1C5B3CFE4();
  sub_1C5BC8F44();
  return sub_1C5924EF4(v4, &qword_1EC191938);
}

uint64_t sub_1C5B3B724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1C59400B0(a1, &v19 - v14, &qword_1EC1987B8);
  sub_1C59400B0(v15, v12, &qword_1EC1987B8);
  v16 = sub_1C5BC8F34();
  v17 = *(*(v16 - 8) + 32);
  v17(v6, a2, v16);
  sub_1C59400B0(v12, v9, &qword_1EC1987B8);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  sub_1C5924EF4(v12, &qword_1EC1987B8);
  sub_1C5924EF4(v15, &qword_1EC1987B8);
  return (v17)(a2, v6, v16);
}

uint64_t EnvironmentValues.hostedContentToggleConfiguration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1C59400B0(a1, &v16 - v11, &qword_1EC1987B8);
  v13 = sub_1C5BC8F34();
  v14 = *(*(v13 - 8) + 32);
  v14(v6, v2, v13);
  sub_1C59400B0(v12, v9, &qword_1EC1987B8);
  sub_1C5B3CFE4();
  sub_1C5BC8F54();
  sub_1C5924EF4(a1, &qword_1EC1987B8);
  sub_1C5924EF4(v12, &qword_1EC1987B8);
  return (v14)(v2, v6, v13);
}

void (*EnvironmentValues.hostedContentToggleConfiguration.modify(void *a1))(void ***a1, char a2)
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
  *v4 = v1;
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
  v5[1] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1987B8) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v5[3] = malloc(v9);
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  v11 = sub_1C5BC8F34();
  v5[6] = v11;
  v12 = *(v11 - 8);
  v5[7] = v12;
  (*(v12 + 16))(v8, v1, v11);
  v5[8] = sub_1C5B3CFE4();
  sub_1C5BC8F44();
  sub_1C5924EF4(v8, &qword_1EC191938);
  return sub_1C5B3BCE8;
}

void sub_1C5B3BCE8(void ***a1, char a2)
{
  v3 = *a1;
  sub_1C59400B0((*a1)[5], (*a1)[4], &qword_1EC1987B8);
  v4 = v3[7];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[1];
  v13 = v3[2];
  v10 = *v3;
  if (a2)
  {
    sub_1C59400B0(v8, v7, &qword_1EC1987B8);
    v11 = *(v4 + 4);
    v11(v9, v10, v6);
    sub_1C59400B0(v7, v13, &qword_1EC1987B8);
    sub_1C5BC8F54();
    sub_1C5924EF4(v7, &qword_1EC1987B8);
    sub_1C5924EF4(v8, &qword_1EC1987B8);
    v11(v10, v9, v6);
    sub_1C5924EF4(v5, &qword_1EC1987B8);
  }

  else
  {
    v12 = *(v4 + 4);
    v12(v9, *v3, v6);
    sub_1C59400B0(v8, v7, &qword_1EC1987B8);
    sub_1C5BC8F54();
    sub_1C5924EF4(v8, &qword_1EC1987B8);
    sub_1C5924EF4(v5, &qword_1EC1987B8);
    v12(v10, v9, v6);
  }

  free(v5);
  free(v8);
  free(v7);
  free(v13);
  free(v9);

  free(v3);
}

unint64_t sub_1C5B3BF18(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C5AB6EF8(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a1 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a1 & 1) == 0)
  {
    v17 = result;
    sub_1C5AF4B04();
    result = v17;
    goto LABEL_8;
  }

  sub_1C5AF1250(v14, a1 & 1);
  result = sub_1C5AB6EF8(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a2;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a2;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t sub_1C5B3C03C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C5AB6FAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = _s17DownloadContainerVMa();
      return sub_1C5B3DBA8(a1, v17 + *(*(v18 - 8) + 72) * v10, _s17DownloadContainerVMa);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1C5AF4DD4();
    goto LABEL_7;
  }

  sub_1C5AF1B18(v13, a3 & 1);
  v20 = sub_1C5AB6FAC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1C5BCBE84();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1C5B3CC58(v10, a2, a1, v16);
}

unint64_t sub_1C5B3C190(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C596FBD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C5AF2290(v16, a4 & 1);
      result = sub_1C596FBD8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C5BCBE84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C5AF5258();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_1C5B3C320(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C5AB97DC(a2);
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
      sub_1C5AF53D4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1C5AF2544(v13, a3 & 1);
    v8 = sub_1C5AB97DC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1C5BCBE84();
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

    return sub_1C593F33C(a1, v19);
  }

  else
  {
    sub_1C5B3CD00(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1C5B3C460(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1C5AB6FF0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1C5AF500C();
      goto LABEL_7;
    }

    sub_1C5AF1E60(v16, a3 & 1);
    v21 = sub_1C5AB6FF0(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C5B3DAD8(a2, v10, type metadata accessor for MotionAssetDownload.AssetKey);
      return sub_1C5B3CE3C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1C5BCBE84();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1C5B3C604(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C596FBD8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MotionAssetDownload.AssetKey(0);
      return sub_1C5B3DBA8(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MotionAssetDownload.AssetKey);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C5AF596C();
    goto LABEL_7;
  }

  sub_1C5AF2EA4(v15, a4 & 1);
  v22 = sub_1C596FBD8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1C5BCBE84();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C5B3CEF0(v12, a2, a3, a1, v18);
}

uint64_t sub_1C5B3C79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C596FBD8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1C596FBD8(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1C5BCBE84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1C5B3C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1C596FBD8(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1C5AF321C(v22, a7 & 1);
      v17 = sub_1C596FBD8(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1C5BCBE84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1C5AF5BCC();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a5;
  v30[1] = a6;
  v31 = (v27[7] + 32 * v17);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

unint64_t sub_1C5B3CAD4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C596FBD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C5AF374C(v16, a4 & 1);
      result = sub_1C596FBD8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C5BCBE84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C5AF5EAC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1C5B3CC58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = _s17DownloadContainerVMa();
  result = sub_1C5B3DB40(a3, v7 + *(*(v8 - 8) + 72) * a1, _s17DownloadContainerVMa);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1C5B3CD00(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C593F33C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1C5B3CD80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1C5B3CE3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  result = sub_1C5B3DB40(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MotionAssetDownload.AssetKey);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C5B3CEF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  result = sub_1C5B3DB40(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for MotionAssetDownload.AssetKey);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1C5B3CFE4()
{
  result = qword_1EC1987B0;
  if (!qword_1EC1987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1987B0);
  }

  return result;
}

void sub_1C5B3D160()
{
  sub_1C5926380(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    sub_1C5926380(319, &qword_1EC1987D0, type metadata accessor for NowPlayingViewModel.Metrics);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B3D22C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 72) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 72) & ~v6);
      }

      v16 = *(v15 + 64);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5B3D3B8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 72) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 72) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 72) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 56) = a2 & 0x7FFFFFFF;
    *(v19 + 64) = 0;
  }

  else
  {
    *(v19 + 64) = a2 - 1;
  }
}

uint64_t sub_1C5B3D648()
{
  result = sub_1C5BC9624();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C5B3D714()
{
  result = qword_1EC198828;
  if (!qword_1EC198828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198828);
  }

  return result;
}

uint64_t sub_1C5B3D768@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1C5B39130(v4, a1);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for ToggleButton() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  sub_1C596AC4C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t sub_1C5B3D908(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ToggleButton() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1C5B39388(a1, v4, v5, v6);
}

uint64_t sub_1C5B3D9A4(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5B3DA00()
{
  result = qword_1EDA45F70;
  if (!qword_1EDA45F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F70);
  }

  return result;
}

uint64_t sub_1C5B3DA54()
{
  v1 = *(type metadata accessor for ToggleButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1C5B39888(v2);
}

uint64_t sub_1C5B3DAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B3DB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B3DBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B3DC10()
{
  v1 = *(sub_1C5BC9624() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_1C5B3A0AC(v0 + v2, v5);
}

uint64_t sub_1C5B3DCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1C5BC9624();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_1C5B3DD48()
{
  result = qword_1EC198858;
  if (!qword_1EC198858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1987F8);
    sub_1C5B3DE00();
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198858);
  }

  return result;
}

unint64_t sub_1C5B3DE00()
{
  result = qword_1EC198860;
  if (!qword_1EC198860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1987F0);
    sub_1C5B3DE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198860);
  }

  return result;
}

unint64_t sub_1C5B3DE8C()
{
  result = qword_1EC198868;
  if (!qword_1EC198868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198870);
    sub_1C5924F54(&qword_1EC198878, &qword_1EC198880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198868);
  }

  return result;
}

uint64_t sub_1C5B3DF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5B3E01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t NowPlayingController.transition(to:animated:)(unsigned __int8 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  swift_unknownObjectRetain();
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136446722;
    v25[0] = v6;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    *(v10 + 18) = 2080;
    NowPlayingController.playerStyle.getter(a4, v25);
    v16 = sub_1C5BCAEA4();
    v18 = sub_1C592ADA8(v16, v17, &v26);

    *(v10 + 20) = v18;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingController requested transition to player style %{public}s. Animated = %{BOOL}d, current style = %s", v10, 0x1Cu);
    swift_arrayDestroy();
    v19 = v12;
    a3 = v11;
    MEMORY[0x1C69510F0](v19, -1, -1);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  result = NowPlayingController.playerStyle.getter(a4, &v26);
  if (v6 != v26)
  {
    if (v6)
    {
      v21 = *((*(a4 + 224))(a3, a4) + 40);

      if (*(v21 + 16) == 1)
      {
        *(v21 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v26 = v21;
        sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa);
        sub_1C5BC7B64();
      }

      v22 = a2 & 1;
    }

    else
    {
      v22 = a2 & 1 | 0xFFFFFF80;
    }

    return sub_1C5B3E824(v22, a3, a4);
  }

  return result;
}

uint64_t sub_1C5B3E468(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);
  swift_unknownObjectRetain();
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v8 = a2[28];
    v9 = v8(a1, a2);
    swift_beginAccess();
    v10 = *(v9 + 177);

    *(v7 + 4) = v10;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1C5922000, v5, v6, "NowPlayingController.togglePlayback() called, old value = %{BOOL}d", v7, 8u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
    v8 = a2[28];
  }

  v11 = v8(a1, a2);
  swift_beginAccess();
  v12 = *(v11 + 177);
  *(v11 + 177) = v12 ^ 1;
  sub_1C596D7EC(v12);

  v13 = v8(a1, a2);
  swift_beginAccess();
  v14 = *(v13 + 177);

  if (v14 == 1)
  {
    return a2[29](a1, a2);
  }

  else
  {
    return a2[30](a1, a2);
  }
}

void NowPlayingController.footerButtonLayout.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1C5B34A18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void NowPlayingController.miniPlayerAccessoryLayout.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1C5B34A18;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_1C5B34A18;
  *(a1 + 24) = 0;
  *(a1 + 32) = sub_1C5B34A18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

uint64_t NowPlayingController.playerStyle.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *((*(a1 + 224))() + 40);

  swift_getKeyPath();
  sub_1C5B3F1D8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
}

uint64_t sub_1C5B3E824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 224))(a2, a3);

  sub_1C5BC7F34();
}

uint64_t NowPlayingController.isDebugEnabled.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 224))() + 136);

  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

uint64_t NowPlayingController.isDebugEnabled.setter(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(a3 + 224))(a2, a3) + 136);

  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  return sub_1C596DBCC(a1, v4, KeyPath, v6, _s5DebugCMa, &qword_1EDA4A208, _s5DebugCMa);
}

uint64_t (*NowPlayingController.isDebugEnabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = NowPlayingController.isDebugEnabled.getter(a2, a3) & 1;
  return sub_1C5B3EA50;
}

uint64_t NowPlayingController.footerConfiguration.getter@<X0>(void *a1@<X8>)
{
  sub_1C5951550();
  sub_1C5950CE4();
  sub_1C5951550();
  sub_1C5950CE4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BEBD50;
  *(v2 + 32) = 0;
  *(v2 + 40) = xmmword_1C5BEBD50;
  *(v2 + 56) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = sub_1C5B3EF2C;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = sub_1C5B3EF2C;
  a1[5] = v2;
}

double sub_1C5B3EB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198888);
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_1C5BEBD50;
  *(v0 + 32) = 256;
  return result;
}

uint64_t sub_1C5B3EC4C(uint64_t a1, uint64_t a2)
{
  v7[0] = a2;

  swift_getAtKeyPath();

  if (v8 == a1)
  {
  }

  else
  {
    _s5QueueCMa();
    sub_1C5B3F1D8(qword_1EDA4A0C0, _s5QueueCMa);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v8 = a2;

    v4 = swift_modifyAtReferenceWritableKeyPath();
    *v5 = a1;
    v4(v7, 0);
  }
}

uint64_t sub_1C5B3EDE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C596DBCC(v2, v3, KeyPath, v5, _s5DebugCMa, &qword_1EDA4A208, _s5DebugCMa);
}

uint64_t sub_1C5B3EE94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  *(a4 + 56) = v10;
  *(a4 + 64) = v11;
  sub_1C5951550();
  sub_1C5951550();

  return sub_1C5951550();
}

unint64_t sub_1C5B3F104()
{
  result = qword_1EC198890;
  if (!qword_1EC198890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198890);
  }

  return result;
}

uint64_t sub_1C5B3F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B3F1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NowPlayingViewModel.DurationSnapshot.init(elapsedDuration:duration:bufferedDuration:snapshotTime:rate:isLoading:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2 & 1;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a3;
  return result;
}

void sub_1C5B3F240()
{
  v1 = *(v0 + 17);
  if (*(v0 + 18) > 1u)
  {
    if (*(v0 + 18) != 2)
    {
      return;
    }

    if (*(v0 + 17) > 4u)
    {
      if (v1 != 6)
      {
        return;
      }

      goto LABEL_26;
    }

    if (*(v0 + 17) && v1 == 1)
    {
LABEL_26:
      v2 = [objc_opt_self() currentTraitCollection];
      [v2 displayScale];
    }
  }

  else if (*(v0 + 18))
  {
    if (*(v0 + 17) > 2u || !*(v0 + 17) || v1 == 1)
    {
      goto LABEL_26;
    }
  }

  else if (*(v0 + 17) > 2u)
  {
    if (v1 == 3 || v1 == 4)
    {
      goto LABEL_26;
    }
  }

  else if (*(v0 + 17) && v1 != 1)
  {
    goto LABEL_26;
  }
}

uint64_t sub_1C5B3F75C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = _s21LegacyTimeControlViewVMa();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = _s20FluidTimeControlViewVMa();
  v9 = sub_1C5BC92D4();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  *(&v52 + 1) = &type metadata for Features;
  *&v53[0] = sub_1C5A2E158();
  v12 = swift_allocObject();
  *&v51 = v12;
  *(v12 + 16) = "MediaCoreUI";
  *(v12 + 24) = 11;
  *(v12 + 32) = 2;
  *(v12 + 40) = "FluidScrubber";
  *(v12 + 48) = 13;
  *(v12 + 56) = 2;
  v13 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v51);
  if (v13)
  {
    sub_1C5B3FCD4(&v51);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v51, v8, WitnessTable);
    v39[0] = v51;
    v39[1] = v52;
    v40[0] = v53[0];
    *(v40 + 9) = *(v53 + 9);
    v15 = *(v8 - 8);
    v16 = *(v15 + 8);
    v16(v39, v8);
    v41[0] = v36;
    v41[1] = v37;
    v42[0] = v38[0];
    *(v42 + 9) = *(v38 + 9);
    v51 = v36;
    v52 = v37;
    v53[0] = v38[0];
    *(v53 + 9) = *(v38 + 9);
    sub_1C593EDC0(&v51, v8, WitnessTable);
    v43[0] = v51;
    v43[1] = v52;
    v44[0] = v53[0];
    *(v44 + 9) = *(v53 + 9);
    v17 = *(v15 + 16);
    v17(v49, v41, v8);
    v16(v43, v8);
    v45[0] = v33;
    v45[1] = v34;
    v46[0] = v35[0];
    *(v46 + 9) = *(v35 + 9);
    v30 = v33;
    v31 = v34;
    v32[0] = v35[0];
    *(v32 + 9) = *(v35 + 9);
    v17(&v51, v45, v8);
    swift_getWitnessTable();
    sub_1C5950E54(&v30, v8);
    v47[0] = v30;
    v47[1] = v31;
    v48[0] = v32[0];
    *(v48 + 9) = *(v32 + 9);
    v16(v47, v8);
    v49[0] = v33;
    v49[1] = v34;
    v50[0] = v35[0];
    *(v50 + 9) = *(v35 + 9);
    v16(v49, v8);
    v51 = v36;
    v52 = v37;
    v53[0] = v38[0];
    *(v53 + 9) = *(v38 + 9);
    v18 = &v51;
    v19 = v8;
  }

  else
  {
    sub_1C5B3FDD4(v4);
    v20 = swift_getWitnessTable();
    sub_1C593EDC0(v4, v1, v20);
    v16 = *(v2 + 8);
    v16(v4, v1);
    sub_1C593EDC0(v7, v1, v20);
    swift_getWitnessTable();
    sub_1C5941738(v4, v8, v1);
    v16(v4, v1);
    v18 = v7;
    v19 = v1;
  }

  v16(v18, v19);
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v54 = v21;
  v55 = v22;
  v23 = v28;
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v23, v24);
  return (*(v27 + 8))(v11, v23);
}

uint64_t sub_1C5B3FCD4@<X0>(uint64_t a1@<X8>)
{
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v2, _s11TimeControlCMa);
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v4;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  _s13TrackSectionsCMa(0);
  sub_1C592C1AC(qword_1EDA4AB40, 255, _s13TrackSectionsCMa);
  result = sub_1C5BC8324();
  *(a1 + 48) = result;
  *(a1 + 56) = v6 & 1;
  return result;
}

uint64_t sub_1C5B3FDD4@<X0>(uint64_t *a1@<X8>)
{
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v2, _s11TimeControlCMa);
  *a1 = sub_1C5BC8C84();
  a1[1] = v3;
  a1[2] = sub_1C5BC8C84();
  a1[3] = v4;
  v5 = *(_s21LegacyTimeControlViewVMa() + 40);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B3FEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1988A8);
  v111 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989B8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  type metadata accessor for Scrubber();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
  swift_getWitnessTable();
  sub_1C59BD734();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC1989C0, &qword_1EC1989B8);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  sub_1C5924F54(&qword_1EC1989C8, &qword_1EC1988A8);
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  v112 = v3;
  v113 = v4;
  _s26SegmentPresentationMonitorVMa();
  v5 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v103 = v5;
  v6 = type metadata accessor for ScrubberReader();
  v7 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989D0);
  v8 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v9 = sub_1C5BC8AB4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  v104 = v6;
  v11 = swift_getWitnessTable();
  v149 = v11;
  v150 = MEMORY[0x1E697E5C0];
  v106 = v7;
  v105 = swift_getWitnessTable();
  v147 = v105;
  v148 = sub_1C5924F54(&qword_1EDA46418, &qword_1EC1989D0);
  v110 = v8;
  v108 = swift_getWitnessTable();
  v145 = v108;
  v146 = sub_1C592C1AC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  *&v139 = v9;
  *(&v139 + 1) = v10;
  v92 = swift_getWitnessTable();
  *&v140 = v92;
  v90 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  *(&v140 + 1) = v90;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for MCUINamespace();
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v94 = v10;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v81 - v17;
  v88 = swift_checkMetadataState();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v107 = &v81 - v18;
  v89 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v81 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  v91 = OpaqueTypeMetadata2;
  v21 = sub_1C5BC8AB4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v81 - v25;
  v26 = sub_1C5BC8F34();
  v98 = *(v26 - 8);
  v99 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v114[1];
  v154 = *v114;
  v155 = v28;
  *v156 = v114[2];
  *&v156[9] = *(v114 + 41);
  if (!v154)
  {
    goto LABEL_24;
  }

  v100 = v154;
  v29 = *(v154 + 24);
  swift_beginAccess();
  v30 = *(v29 + 40);
  v157 = *(v29 + 24);
  v158 = v30;
  v159 = *(v29 + 56);
  v160 = *(v29 + 72);
  v31 = *&v156[16];
  v161 = *&v156[16];
  v162 = v156[24];
  LOBYTE(v29) = v156[24];

  if ((v29 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v33 = v97;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v161, &qword_1EC1948D8);
    (*(v98 + 8))(v33, v99);
    v31 = v139;
  }

  swift_getKeyPath();
  *&v139 = v31;
  sub_1C592C1AC(qword_1EDA4AB40, 255, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v34 = *(v31 + 16);

  v85 = v13;
  v95 = v15;
  v82 = v22;
  v83 = v21;
  v101 = v11;
  if (v34 >> 62)
  {
    v35 = sub_1C5BCB984();
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_16:

    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_16;
  }

LABEL_6:
  *&v139 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F0C8(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v80, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
    return result;
  }

  v36 = 0;
  v37 = v139;
  v38 = v34;
  v114 = (v34 & 0xC000000000000001);
  v39 = v34;
  v40 = v35;
  do
  {
    if (v114)
    {
      v41 = MEMORY[0x1C694FD20](v36, v38);
    }

    else
    {
      v41 = *(v38 + 8 * v36 + 32);
    }

    v43 = v41[2];
    v42 = v41[3];
    v44 = v41[4];

    *&v139 = v37;
    v46 = *(v37 + 16);
    v45 = *(v37 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1C5B8F0C8((v45 > 1), v46 + 1, 1);
      v37 = v139;
    }

    ++v36;
    *(v37 + 16) = v46 + 1;
    v47 = (v37 + 24 * v46);
    v47[4] = v43;
    v47[5] = v42;
    v47[6] = v44;
    v38 = v39;
  }

  while (v40 != v36);

LABEL_17:
  v48 = swift_allocObject();
  v50 = v112;
  v49 = v113;
  *(v48 + 16) = v112;
  *(v48 + 24) = v49;
  v51 = v158;
  *(v48 + 32) = v157;
  *(v48 + 48) = v51;
  *(v48 + 64) = v159;
  *(v48 + 80) = v160;
  *(v48 + 88) = v37;
  v52 = v155;
  *(v48 + 96) = v154;
  *(v48 + 112) = v52;
  *(v48 + 128) = *v156;
  *(v48 + 137) = *&v156[9];
  (*(*(v111 - 8) + 16))(&v139, &v154);
  swift_checkMetadataState();
  ScrubberReader.init(content:)(sub_1C5B460CC, v48, &v133);
  v130 = v133;
  v131 = v134;
  v132 = v135;
  swift_beginAccess();
  swift_checkMetadataState();
  sub_1C5BCA2B4();

  v124 = v136;
  v125 = v137;
  *&v126 = v138;
  MEMORY[0x1EEE9AC00](v53);
  *(&v81 - 4) = v50;
  *(&v81 - 3) = v49;
  *(&v81 - 2) = &v154;
  sub_1C5BCAA54();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1989D8);
  sub_1C5B460EC();
  sub_1C5BCA2C4();

  v120 = v141;
  v121 = v142;
  v122 = v143;
  v123 = v144;
  v118 = v139;
  v119 = v140;
  v54 = swift_checkMetadataState();
  v55 = v107;
  sub_1C595BB1C(0xD000000000000019, 0x80000001C5BF61C0);
  v126 = v120;
  v127 = v121;
  v128 = v122;
  v129 = v123;
  v124 = v118;
  v125 = v119;
  (*(*(v54 - 8) + 8))(&v124, v54);
  v56 = *MEMORY[0x1E697E728];
  v57 = sub_1C5BC89B4();
  v58 = v109;
  (*(*(v57 - 8) + 104))(v109, v56, v57);
  sub_1C592C1AC(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
  if ((sub_1C5BCADB4() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v60 = v87;
  v59 = v88;
  v61 = v94;
  v62 = v92;
  v63 = v90;
  sub_1C5BC9F54();
  sub_1C5924EF4(v58, &qword_1EC192838);
  (*(v86 + 8))(v55, v59);
  *&v118 = v59;
  *(&v118 + 1) = v61;
  *&v119 = v62;
  *(&v119 + 1) = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v95;
  v66 = v91;
  View.mcui.getter(v91, v95);
  (*(v89 + 8))(v60, v66);
  BYTE8(v118) = v156[8];
  *&v118 = *v156;
  if (v156[8] == 1)
  {
    v67 = v156[0];
  }

  else
  {
    sub_1C59400B0(&v118, v117, qword_1EC1989E0);
    sub_1C5BCB4E4();
    v68 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v69 = v97;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v118, qword_1EC1989E0);
    (*(v98 + 8))(v69, v99);
    v67 = v117[0];
  }

  v71 = v84;
  v70 = v85;
  v73 = v82;
  v72 = v83;
  v74 = v81;
  v75 = v93;
  MCUINamespace<A>.scrubberForceSensitivityTextToSingleLine(_:)(v67 == 0, OpaqueTypeConformance2, v93);
  (*(v71 + 8))(v65, v70);
  v76 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v115 = OpaqueTypeConformance2;
  v116 = v76;
  v77 = swift_getWitnessTable();
  sub_1C593EDC0(v75, v72, v77);
  v78 = *(v73 + 8);
  v78(v75, v72);
  sub_1C593EDC0(v74, v72, v77);
  return (v78)(v74, v72);
}

uint64_t sub_1C5B4100C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v75 = a5;
  v107 = a4;
  v104 = a3;
  v83 = a1;
  v108 = a7;
  v8 = *(a2 + 3);
  v73 = *(a2 + 2);
  v72 = v8;
  v76 = *(a2 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = v9;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Scrubber();
  v101 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
  v13 = swift_getWitnessTable();
  v14 = sub_1C59BD734();
  *&v117 = v10;
  *(&v117 + 1) = v12;
  *&v118 = v13;
  *(&v118 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v100 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989B8);
  v18 = sub_1C5924F54(&qword_1EC1989C0, &qword_1EC1989B8);
  v93 = v10;
  *&v117 = v10;
  *(&v117 + 1) = v12;
  v87 = v12;
  v85 = v13;
  *&v118 = v13;
  *(&v118 + 1) = v14;
  v84 = v14;
  v19 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = v17;
  *&v117 = v17;
  *(&v117 + 1) = OpaqueTypeMetadata2;
  v105 = OpaqueTypeMetadata2;
  v86 = v18;
  *&v118 = v18;
  *(&v118 + 1) = OpaqueTypeConformance2;
  v80 = OpaqueTypeConformance2;
  v21 = sub_1C5BC8BB4();
  v95 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1988A8);
  v24 = sub_1C5924F54(&qword_1EC1989C8, &qword_1EC1988A8);
  v25 = swift_getWitnessTable();
  v81 = v23;
  *&v117 = v23;
  *(&v117 + 1) = v21;
  v98 = v21;
  v79 = v24;
  *&v118 = v24;
  *(&v118 + 1) = v25;
  v78 = v25;
  v26 = sub_1C5BC8BB4();
  v96 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v71 - v27;
  v28 = v75;
  v29 = v109;
  v30 = _s26SegmentPresentationMonitorVMa();
  v99 = v26;
  v91 = v30;
  v106 = sub_1C5BC8AB4();
  v103 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v94 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v97 = &v71 - v34;
  if (v76 == 2)
  {
    v35 = 0;
    v36 = 0;
    v74 = 0.0;
    v37 = 1;
  }

  else
  {
    v74 = *(a2 + 1);
    v19 = v72;
    v36 = v76;
    v37 = v76;
    v35 = v73;
  }

  LOBYTE(v112) = v37 & 1;
  BYTE1(v112) = v36 & 1;
  BYTE2(v112) = v36 & 1;
  *(&v112 + 1) = v35;
  v38 = 0.0;
  LOBYTE(v113) = v19 & 1;
  v39 = v83;
  if (v76 != 2)
  {
    v38 = *(a2 + 5);
  }

  v40 = v76 == 2;
  MEMORY[0x1EEE9AC00](v33);
  *(&v71 - 4) = v28;
  *(&v71 - 3) = v29;
  v41 = v107;
  v69 = v107;
  v42 = swift_allocObject();
  *(v42 + 16) = v28;
  *(v42 + 24) = v29;
  v43 = v41[1];
  *(v42 + 32) = *v41;
  *(v42 + 48) = v43;
  *(v42 + 64) = v41[2];
  *(v42 + 73) = *(v41 + 41);
  v44 = v104;

  v45 = _s20FluidTimeControlViewVMa();
  (*(*(v45 - 8) + 16))(&v117, v41, v45);
  v70 = WitnessTable;
  v69 = v82;
  v46 = v88;
  Scrubber.init(duration:loadingConfiguration:playbackRate:sections:accessoryView:onScrub:)(v74, v40, &v112, v44, sub_1C5B460C0, v88, v38);
  v47 = a2[1];
  v117 = *a2;
  v118 = v47;
  v119 = a2[2];
  LOBYTE(v120) = *(a2 + 48);
  v48 = swift_allocObject();
  v49 = a2[1];
  *(v48 + 16) = *a2;
  *(v48 + 32) = v49;
  *(v48 + 48) = a2[2];
  *(v48 + 64) = *(a2 + 48);
  *(v48 + 72) = v39;

  v50 = v100;
  v51 = v93;
  sub_1C5BCA344();

  (*(v101 + 8))(v46, v51);
  v52 = *v41;
  if (*v41)
  {
    *&v117 = *(*(v52 + 24) + 88);

    v53 = v90;
    v54 = v105;
    sub_1C5BCA3D4();

    (*(v102 + 8))(v50, v54);
    *&v117 = *(v52 + 16);

    v55 = v92;
    v56 = v98;
    sub_1C5BCA3D4();

    (*(v95 + 8))(v53, v56);

    sub_1C5AC0B08(v57, &v112);
    v58 = v99;
    v59 = swift_getWitnessTable();
    v60 = v94;
    v61 = v91;
    MEMORY[0x1C694E550](&v112, v58, v91, v59);
    v119 = v114;
    v120 = v115;
    v121 = v116;
    v117 = v112;
    v118 = v113;
    (*(*(v61 - 8) + 8))(&v117, v61);
    (*(v96 + 8))(v55, v58);
    v62 = swift_getWitnessTable();
    v110 = v59;
    v111 = v62;
    v63 = v106;
    v64 = swift_getWitnessTable();
    v65 = v97;
    sub_1C593EDC0(v60, v63, v64);
    v66 = *(v103 + 8);
    v66(v60, v63);
    sub_1C593EDC0(v65, v63, v64);
    return (v66)(v65, v63);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v68, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B41C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C5950C90();
  v32 = &type metadata for NowPlayingLookupID;
  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v34 = v8;
  v35 = AssociatedConformanceWitness;
  v9 = type metadata accessor for ViewProvider();
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v25[1] = swift_getAssociatedTypeWitness();
  v13 = sub_1C5BCB804();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  sub_1C59498C4(*(a1 + 16));
  v20 = *(a3 + 384);
  swift_unknownObjectRetain();
  v20(a2, a3);
  swift_unknownObjectRelease();
  v32 = 0xD000000000000014;
  v33 = 0x80000001C5BFC320;
  v21 = v28;
  sub_1C595BC70(&v32, v28);

  (*(v29 + 8))(v12, v21);
  v31 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v16, v13, WitnessTable);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1C593EDC0(v19, v13, WitnessTable);
  return (v23)(v19, v13);
}

uint64_t sub_1C5B41F24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v8 = sub_1C5BC7D64();
      __swift_project_value_buffer(v8, qword_1EDA5DA78);
      v9 = sub_1C5BC7D44();
      v10 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v5;
        _os_log_impl(&dword_1C5922000, v9, v10, "TimeControlView finished scrubbing with time: %f", v11, 0xCu);
        MEMORY[0x1C69510F0](v11, -1, -1);
      }

      if (*a2)
      {

        sub_1C5BC7F34();

        v12 = a3;
        sub_1C59498C4(a2[2]);
        v13 = *(a4 + 264);
        swift_unknownObjectRetain();
        v13(v12, a4, v5);
        return swift_unknownObjectRelease();
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C5BC7D64();
    __swift_project_value_buffer(v15, qword_1EDA5DA78);
    v16 = sub_1C5BC7D44();
    v17 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v5;
      _os_log_impl(&dword_1C5922000, v16, v17, "TimeControlView began scrubbing with time: %f", v18, 0xCu);
      MEMORY[0x1C69510F0](v18, -1, -1);
    }
  }

  if (*a2)
  {

    sub_1C5BC7F34();
  }

LABEL_16:
  _s11TimeControlCMa();
  sub_1C592C1AC(&qword_1EDA4B070, v19, _s11TimeControlCMa);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

void sub_1C5B421FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7AC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  if (*(a1 + 48) != 2)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = *a1;
    v11 = *(a1 + 8);
    sub_1C5BC7AB4();
    sub_1C5BC7A54();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = v12 + v9 * (v14 - v10);
    if (v11 < v15)
    {
      v15 = v11;
    }

    if (v15 < 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v15;
    }
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C5BC7D64();
  __swift_project_value_buffer(v16, qword_1EDA5DA78);

  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136446722;
    v21 = *(a1 + 16);
    v28[0] = *a1;
    v28[1] = v21;
    v28[2] = *(a1 + 32);
    v29 = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191E68);
    v22 = sub_1C5BCAEA4();
    v24 = sub_1C592ADA8(v22, v23, &v30);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v8;
    *(v19 + 22) = 2082;
    *&v28[0] = a2;
    v25 = sub_1C5BCAEA4();
    v27 = sub_1C592ADA8(v25, v26, &v30);

    *(v19 + 24) = v27;
    _os_log_impl(&dword_1C5922000, v17, v18, "TimeControlView received snapshot %{public}s, setting playhead to %f via ScrubberProxy %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v20, -1, -1);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  ScrubberProxy.seek(to:)(v8);
}

void sub_1C5B424DC(char *a1)
{
  v1 = *a1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EDA5DA78);

  v3 = sub_1C5BC7D44();
  v4 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_1C5BCAEA4();
    v9 = sub_1C592ADA8(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C5922000, v3, v4, "TimeControlView received changed interaction state, updating scrubber via proxy %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1C69510F0](v6, -1, -1);
    MEMORY[0x1C69510F0](v5, -1, -1);
  }

  LOBYTE(v10) = v1;
  ScrubberProxy._pptChangeScrubberInteractionState(to:)(&v10);
}

uint64_t sub_1C5B42654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 24);
    result = swift_beginAccess();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (*(v3 + 16))
    {
      sub_1C5BC9964();
      v9 = sub_1C5BC9B44();
      v11 = v10;
      v13 = v12;
      sub_1C5BCA494();
      v5 = sub_1C5BC9BC4();
      v6 = v14;
      v16 = v15;
      v8 = v17;
      sub_1C5953BD8(v9, v11, v13 & 1);

      v7 = v16 & 1;
    }

    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v18, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B427D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v74 = a1;
  v73 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = v2;
  v72 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 32);
  v5 = *(v3 + 24);
  v6 = _s21LegacyTimeControlViewV9TimedViewVMa();
  v7 = sub_1C5B45F08();
  WitnessTable = swift_getWitnessTable();
  v99 = &type metadata for MCUIText;
  v100 = v6;
  v101 = v7;
  v102 = WitnessTable;
  v9 = sub_1C5BCA794();
  v81 = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v10 = type metadata accessor for ContentBelowSliderStyle();
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v99 = v9;
  v100 = v10;
  v101 = v11;
  v102 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  v76 = sub_1C5BC8AB4();
  v75 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80);
  v77 = sub_1C5BC8AB4();
  v78 = _s33HeadlessTimeControlSliderModifierVMa();
  v13 = sub_1C5BC8AB4();
  v99 = v9;
  v100 = v10;
  v101 = v11;
  v102 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = MEMORY[0x1E697EBB8];
  v14 = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v94 = v14;
  v95 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C5924F54(&qword_1EDA460B8, &qword_1EC193B28);
  v92 = v16;
  v93 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  v90 = v18;
  v91 = v19;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
  v86 = v20;
  v87 = v21;
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v84 = v22;
  v85 = v23;
  v24 = swift_getWitnessTable();
  v25 = v81;
  v99 = v81;
  v100 = v13;
  v75 = v13;
  v26 = v4;
  v101 = v4;
  v102 = v24;
  v27 = v79;
  v28 = _s19HeadlessTimeControlVMa();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v69 - v33;
  v35 = sub_1C5BC92D4();
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v69 - v38;
  v40 = *v27;
  if (*v27)
  {
    v76 = v39;
    v77 = v37;
    v78 = v36;
    v41 = *(v40 + 24);
    swift_beginAccess();
    if (*(v41 + 16))
    {
      sub_1C5BC9964();
      v42 = sub_1C5BC9B44();
      v44 = v43;
      v46 = v45;
      v99 = sub_1C5BCA494();
      v47 = sub_1C5BC9BC4();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      sub_1C5953BD8(v42, v44, v46 & 1);

      v99 = v47;
      v100 = v49;
      LOBYTE(v101) = v51 & 1;
      v102 = v53;
      swift_getWitnessTable();
      v54 = v76;
      sub_1C5950E54(&v99, MEMORY[0x1E6981148]);
      sub_1C5953BD8(v47, v49, v51 & 1);
    }

    else
    {
      v55 = v73;
      v56 = *(v73 + 16);
      v70 = v34;
      v57 = v72;
      v79 = v24;
      v58 = v74;
      v56(v72, v27, v74);
      v59 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v25;
      *(v60 + 24) = v26;
      (*(v55 + 32))(v60 + v59, v57, v58);
      sub_1C59B8DD4(sub_1C5B45F5C, v60, v25, v75, v26, v79, v31);
      v61 = swift_getWitnessTable();
      v62 = v70;
      sub_1C593EDC0(v31, v28, v61);
      v63 = *(v29 + 8);
      v63(v31, v28);
      sub_1C593EDC0(v62, v28, v61);
      v54 = v76;
      sub_1C5941738(v31, MEMORY[0x1E6981148], v28);
      v63(v31, v28);
      v63(v62, v28);
    }

    v64 = swift_getWitnessTable();
    v82 = MEMORY[0x1E6981138];
    v83 = v64;
    v65 = v78;
    v66 = swift_getWitnessTable();
    sub_1C593EDC0(v54, v65, v66);
    return (*(v77 + 8))(v54, v65);
  }

  else
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v68, _s11TimeControlCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B43220@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a2;
  v148 = a1;
  v142 = a5;
  v147 = _s33HeadlessTimeControlSliderModifierVMa();
  v141 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v140 = v97 - v7;
  v8 = sub_1C5BC89D4();
  v138 = *(v8 - 8);
  v139 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v137 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1C5BC90F4();
  v132 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = v97 - v12;
  v136 = sub_1C5BCAB54();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v131 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = sub_1C5BCB804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = v14;
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ContentBelowSliderStyle();
  v114 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v98 = v97 - v16;
  v17 = _s21LegacyTimeControlViewV9TimedViewVMa();
  v18 = sub_1C5B45F08();
  v19 = swift_getWitnessTable();
  v156 = &type metadata for MCUIText;
  v157 = v17;
  v158 = v18;
  v159 = v19;
  v20 = sub_1C5BCA794();
  v143 = v20;
  v103 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v97 - v21;
  v23 = swift_getWitnessTable();
  v100 = v23;
  v145 = v15;
  v99 = swift_getWitnessTable();
  v156 = v20;
  v157 = v15;
  v158 = v23;
  v159 = v99;
  v108 = MEMORY[0x1E697CE38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v110 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v144 = v97 - v24;
  sub_1C5BC8BC4();
  v105 = sub_1C5BC8AB4();
  v113 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v101 = v97 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  v106 = sub_1C5BC8AB4();
  v117 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = v97 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28);
  v109 = sub_1C5BC8AB4();
  v121 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v146 = v97 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  v118 = sub_1C5BC8AB4();
  v123 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v107 = v97 - v28;
  v119 = sub_1C5BC8AB4();
  v124 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = v97 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80);
  v122 = sub_1C5BC8AB4();
  v127 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v116 = v97 - v30;
  v31 = sub_1C5BC8AB4();
  v32 = *(v31 - 8);
  v128 = v31;
  v129 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v120 = v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v125 = v97 - v35;
  v36 = v148[5];
  v37 = v148[6];
  v161 = v148[4];
  v156 = v161;
  v157 = v36;
  v158 = v37;
  v38 = a3;
  v153[2] = a3;
  v39 = a4;
  v153[3] = a4;
  v153[4] = v148;
  v152[2] = v38;
  v152[3] = a4;
  v40 = v38;
  v41 = v39;
  v152[4] = v148;
  sub_1C5B46010(&v161, &v155);
  v42 = sub_1C5B4606C();

  v43 = MEMORY[0x1E69E63B0];
  sub_1C5B4448C(MEMORY[0x1E69E63B0], v42, &v155);
  v154 = v155;
  sub_1C5B4486C(&v156, &v154, sub_1C5B442E8, 0, sub_1C5B45FF8, v153, sub_1C5B46004, v152, v22, CGSizeMake, 0, &type metadata for MCUIText, v17, v43, v18, v19, v42, v42);
  v149 = v40;
  v150 = v41;
  v97[1] = v40;
  v97[2] = v41;
  v151 = v134;
  v44 = v98;
  sub_1C5AE3470(1, sub_1C5B460C0, v98);
  v45 = v143;
  v46 = v145;
  v48 = v99;
  v47 = v100;
  sub_1C5BC9E64();
  (*(v114 + 8))(v44, v46);
  (*(v103 + 8))(v22, v45);
  _s21LegacyTimeControlViewVMa();
  v49 = v130;
  sub_1C594C704(v130);
  v50 = v132;
  v51 = v126;
  v52 = v135;
  (*(v132 + 104))(v126, *MEMORY[0x1E697F600], v135);
  LOBYTE(v44) = sub_1C5BC8274();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v49, v52);
  v54 = v133;
  v55 = MEMORY[0x1E6981DB8];
  if ((v44 & 1) == 0)
  {
    v55 = MEMORY[0x1E6981DF0];
  }

  v56 = v131;
  v57 = v136;
  (*(v133 + 104))(v131, *v55, v136);
  v156 = v143;
  v157 = v145;
  v158 = v47;
  v159 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v101;
  v60 = v56;
  v61 = OpaqueTypeMetadata2;
  v62 = v144;
  sub_1C5BCA394();
  (*(v54 + 8))(v60, v57);
  (*(v110 + 8))(v62, v61);
  v153[18] = OpaqueTypeConformance2;
  v153[19] = MEMORY[0x1E697EBB8];
  v63 = v105;
  v64 = swift_getWitnessTable();
  v65 = v102;
  sub_1C5AE355C();
  (*(v113 + 8))(v59, v63);
  v145 = MEMORY[0x1E6980A18];
  v66 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v153[16] = v64;
  v153[17] = v66;
  v67 = v106;
  v68 = swift_getWitnessTable();
  sub_1C5AE360C();
  (*(v117 + 8))(v65, v67);
  swift_getKeyPath();
  v69 = v137;
  v70 = v138;
  v71 = v139;
  (*(v138 + 104))(v137, *MEMORY[0x1E697E7D0], v139);
  v72 = sub_1C5924F54(&qword_1EDA460B8, &qword_1EC193B28);
  v153[14] = v68;
  v153[15] = v72;
  v73 = v109;
  v74 = swift_getWitnessTable();
  v75 = v107;
  v76 = v69;
  v77 = v146;
  sub_1C5BC9DF4();

  (*(v70 + 8))(v76, v71);
  (*(v121 + 8))(v77, v73);
  sub_1C5BCAA54();
  v78 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  v153[12] = v74;
  v153[13] = v78;
  v79 = v118;
  v80 = swift_getWitnessTable();
  v81 = v115;
  sub_1C5BCA234();
  (*(v123 + 8))(v75, v79);
  sub_1C5BCA524();
  v153[10] = v80;
  v153[11] = MEMORY[0x1E697E040];
  v82 = v119;
  v83 = swift_getWitnessTable();
  v84 = v116;
  sub_1C5BC9D84();

  (*(v124 + 8))(v81, v82);
  _s26HeadlessTimeControlContextVMa();
  v85 = v140;
  sub_1C59B8F74(v140);
  v86 = sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
  v153[8] = v83;
  v153[9] = v86;
  v87 = v122;
  v88 = swift_getWitnessTable();
  v89 = v120;
  v90 = v147;
  MEMORY[0x1C694E550](v85, v87, v147, v88);
  (*(v141 + 8))(v85, v90);
  (*(v127 + 8))(v84, v87);
  v91 = swift_getWitnessTable();
  v153[6] = v88;
  v153[7] = v91;
  v92 = v128;
  v93 = swift_getWitnessTable();
  v94 = v125;
  sub_1C593EDC0(v89, v92, v93);
  v95 = *(v129 + 8);
  v95(v89, v92);
  sub_1C593EDC0(v94, v92, v93);
  return (v95)(v94, v92);
}

uint64_t sub_1C5B442E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C5BC9024();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = "Slider to adjust playback progress.";
  *(a1 + 40) = 35;
  *(a1 + 48) = 2;
  return result;
}

uint64_t sub_1C5B44354(uint64_t a1)
{
  v1 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = v1;
  v2 = _s21LegacyTimeControlViewV9TimedViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v5, v2, WitnessTable);
  v5 = v7;
  v6 = v8;
  sub_1C593EDC0(&v5, v2, WitnessTable);
}

uint64_t sub_1C5B443F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v5 = *(a1 + 72);
  v6 = v1;
  v2 = _s21LegacyTimeControlViewV9TimedViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v5, v2, WitnessTable);
  v5 = v7;
  v6 = v8;
  sub_1C593EDC0(&v5, v2, WitnessTable);
}

uint64_t sub_1C5B4448C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, char *a3@<X8>)
{
  v36 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v35 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - v8;
  v33 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v17);
  swift_getAssociatedConformanceWitness();
  sub_1C5BCBE34();
  sub_1C5BCBDC4();
  sub_1C5BCBE34();
  sub_1C5BCBDC4();
  v18 = *(*(v15 + 24) + 8);
  result = sub_1C5BCAD94();
  if (result)
  {
    v20 = v33;
    v30[1] = v18;
    v21 = *(v33 + 32);
    v22 = v31;
    v21(v31, v14, a1);
    v23 = v35;
    v21(&v22[*(v35 + 48)], v11, a1);
    v24 = v34;
    v25 = v32;
    (*(v34 + 16))(v32, v22, v23);
    v26 = *(v23 + 48);
    v21(v36, v25, a1);
    v27 = *(v20 + 8);
    v27(&v25[v26], a1);
    (*(v24 + 32))(v25, v22, v23);
    v28 = *(v23 + 48);
    v29 = sub_1C5BCADA4();
    v21(&v36[*(v29 + 36)], &v25[v28], a1);
    return (v27)(v25, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B4486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v35 = a8;
  v36 = a7;
  v32[7] = a6;
  v33 = a5;
  v40 = a3;
  v41 = a4;
  v32[0] = a1;
  v37 = a9;
  v38 = a11;
  v39 = a10;
  v32[5] = a18;
  v32[6] = a15;
  v34 = a12;
  v32[4] = a13;
  v32[2] = a17;
  v32[3] = a16;
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v20);
  v32[1] = a14;
  v21 = sub_1C5BCADA4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v32 - v23;
  v25 = sub_1C5BCA864();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  (*(v26 + 16))(v32 - v28, a1, v25, v27);
  v29 = (*(v22 + 16))(v24, a2, v21);
  v30 = v33(v29);
  v36(v30);
  sub_1C5BCA784();
  (*(v22 + 8))(a2, v21);
  return (*(v26 + 8))(v32[0], v25);
}

uint64_t sub_1C5B44B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - v12);
  v38 = a1;
  v39 = a2;
  sub_1C594A23C();

  v14 = sub_1C5BC9CA4();
  v16 = v15;
  v18 = v17;
  sub_1C5BC9A44();
  v34 = sub_1C5BC9C14();
  v20 = v19;
  v35 = v21;
  v36 = v22;

  sub_1C5953BD8(v14, v16, v18 & 1);

  sub_1C5BCA494();
  v23 = sub_1C5BCA4B4();

  v24 = *(v5 + 36);
  v25 = *MEMORY[0x1E6981DB8];
  v26 = sub_1C5BCAB54();
  (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
  *v13 = v23;
  LODWORD(v25) = sub_1C5BC9404();
  sub_1C59400B0(v13, v10, &unk_1EC196170);
  LODWORD(v38) = v25;
  sub_1C59400B0(v10, v7, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v27 = sub_1C5BC85E4();
  v28 = sub_1C5BC85E4();
  sub_1C5924EF4(v10, &unk_1EC196170);
  sub_1C5924EF4(v13, &unk_1EC196170);
  v29 = v34;
  v38 = v34;
  v39 = v20;
  LOBYTE(v24) = v35 & 1;
  v40 = v35 & 1;
  v41 = v36;
  v42 = v27;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD8);
  sub_1C5A48F48();
  v30 = v37;
  sub_1C5BC9F94();
  sub_1C5953BD8(v29, v20, v24);

  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198A68) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198A70);
  sub_1C5BC8C14();
  result = swift_getKeyPath();
  *v31 = result;
  return result;
}

uint64_t sub_1C5B44EB4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  if (v2 != *(v3 + 16))
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v5, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C5B44F68(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v4, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  *(v1 + 16) = v2;
  return result;
}

void (*sub_1C5B4501C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_1C5B450A8;
}

void sub_1C5B450A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  if (v3 != *(v2 + 16))
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v4, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    v2 = v1[3];
  }

  *(v2 + 16) = v3;

  free(v1);
}

__n128 sub_1C5B45158@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 40);
  *a2 = *(v3 + 24);
  *(a2 + 16) = v5;
  result = *(v3 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1C5B451B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v11[0] = *a1;
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v12 = v8;
  sub_1C596D6D0(v11);
  result = swift_beginAccess();
  *(v9 + 24) = v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  return result;
}

__n128 sub_1C5B45240@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void (*sub_1C5B45298(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  swift_beginAccess();
  v5 = *(v1 + 72);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  return sub_1C5B45338;
}

void sub_1C5B45338(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  v8 = *(*a1 + 48);
  v10[0] = **a1;
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  sub_1C596D6D0(v10);
  v9 = v1[10];
  *(v9 + 24) = v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;

  free(v1);
}

double sub_1C5B45418()
{
  swift_beginAccess();
  v1 = 0.0;
  if (*(v0 + 72) != 2)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    sub_1C5BC7A54();
    v7 = v5 + v2 * (v6 - v3);
    if (v4 < v7)
    {
      v7 = v4;
    }

    if (v7 >= 0.0)
    {
      return v7;
    }
  }

  return v1;
}

uint64_t sub_1C5B454B0()
{

  sub_1C5BC7F34();
}

uint64_t NowPlayingViewModel.PlaybackPosition.deinit()
{

  return v0;
}

uint64_t NowPlayingViewModel.PlaybackPosition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B4555C()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EDA5DB18 = result;
  unk_1EDA5DB20 = v4;
  return result;
}

uint64_t sub_1C5B4569C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11TimeControlCMa();
    sub_1C592C1AC(&qword_1EDA4B070, v1, _s11TimeControlCMa);
    sub_1C5BC7F24();

    sub_1C5BC7FA4();
  }

  return result;
}

uint64_t sub_1C5B45774()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B457D4@<X0>(uint64_t *a1@<X8>)
{
  _s11TimeControlCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t NowPlayingViewModel.DurationSnapshot.init(elapsedDuration:duration:snapshotTime:rate:isLoading:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = result;
  return result;
}

uint64_t NowPlayingViewModel.DurationSnapshot.debugDescription.getter()
{
  v1 = *(v0 + 48);
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000011, 0x80000001C5BFC170);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BFC190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
  v2 = sub_1C5BCAEA4();
  MEMORY[0x1C694F170](v2);

  MEMORY[0x1C694F170](0x687370616E73202CLL, 0xEF3D656D6954746FLL);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x3D65746172202CLL, 0xE700000000000000);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x64616F4C7369202CLL, 0xEC0000003D676E69);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v3, v4);

  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

uint64_t _s11MediaCoreUI19NowPlayingViewModelC16DurationSnapshotV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (*(a1 + 24))
  {
    if (v5 != v8)
    {
      v6 = 0;
    }

    if (v6 != 1 || v4 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v5 != v8 || v4 != v7)
    {
      return 0;
    }
  }

  return *(a1 + 48) ^ *(a2 + 48) ^ 1u;
}

uint64_t sub_1C5B45C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1C5B45D60()
{
  sub_1C59BA0C8();
  if (v0 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v1 <= 0x3F)
    {
      sub_1C594F100();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5B45E2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B45F08()
{
  result = qword_1EDA46DD0;
  if (!qword_1EDA46DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46DD0);
  }

  return result;
}

uint64_t sub_1C5B45F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(_s21LegacyTimeControlViewVMa() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5B43220(a1, v8, v5, v6, a2);
}

unint64_t sub_1C5B4606C()
{
  result = qword_1EDA45F30;
  if (!qword_1EDA45F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F30);
  }

  return result;
}

unint64_t sub_1C5B460EC()
{
  result = qword_1EDA46020;
  if (!qword_1EDA46020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46020);
  }

  return result;
}

uint64_t sub_1C5B46190()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B46210()
{
  result = qword_1EC198A78;
  if (!qword_1EC198A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD8);
    sub_1C5A48F48();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198A78);
  }

  return result;
}

uint64_t NowPlayingViews.artwork.getter()
{
  v4 = sub_1C5A4D7D8();
  v5 = v0 & 1;
  v1 = _s24HeaderArtworkPlaceholderVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v4, v1, WitnessTable);

  v4 = v6;
  v5 = v7;
  sub_1C593EDC0(&v4, v1, WitnessTable);
}

uint64_t NowPlayingViews.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(*(a1 + 24) + 224))(*(a1 + 16), *(a1 + 24));
  result = sub_1C5BC8C84();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

double DeviceMetrics.padding.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 18);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v3)
  {
    v10 = v3;
    v11 = *(v1 + 19);
    v12 = *(v1 + 35);
    *v13 = *(v1 + 51);
    *&v13[14] = *(v1 + 65);
    sub_1C5B4B10C(&v6);
  }

  else
  {
    v10 = 0;
    v11 = *(v1 + 19);
    v12 = *(v1 + 35);
    *v13 = *(v1 + 51);
    *&v13[14] = *(v1 + 65);
    sub_1C5B4B00C(&v6);
  }

  result = *&v6;
  v5 = v7;
  *a1 = v6;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1C5B46508@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5B46548()
{
  _s36FullScreenContentView_CompactRegularVMa();
  _s37FullScreenContentView_RegularExtendedVMa();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1C5BCA574();
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v0 = sub_1C5BCA584();
  v1 = swift_getWitnessTable();
  sub_1C593EDC0(&v3, v0, v1);
  sub_1C5B4B89C(v3, *(&v3 + 1), v4, v5, v6);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  sub_1C593EDC0(&v11, v0, v1);
  return sub_1C5B4B89C(v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t sub_1C5B46760(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v73 = a1;
  }

  else
  {
    sub_1C5950E48(a1, 0);
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5950E44(a1, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a1) = v73;
  }

  v13 = MEMORY[0x1E6981E60];
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_1C5B0633C(&v69);
      v53 = v69;
      v54 = v70;
      v55 = v71;
      v19 = _s37FullScreenContentView_RegularExtendedVMa();
      WitnessTable = swift_getWitnessTable();
      v42 = v19;
      v21 = WitnessTable;
      v43 = WitnessTable;
      sub_1C593EDC0(&v53, v19, WitnessTable);
      sub_1C59CC0D8(v53, *(&v53 + 1), v54, v55);
      v22 = v60;
      v23 = v61;
      v44 = a4;
      v24 = v62;
      v69 = v60;
      v70 = v61;
      LOBYTE(v71) = v62;
      sub_1C593EDC0(&v69, v19, v21);
      v25 = v69;
      v26 = v70;
      LOBYTE(v19) = v71;
      v27 = v23;
      v13 = MEMORY[0x1E6981E60];
      sub_1C5B4B8BC(v22, *(&v22 + 1), v27, v24);
      sub_1C59CC0D8(v25, *(&v25 + 1), v26, v19);
      v69 = v57;
      v70 = v58;
      LOBYTE(v71) = v59;
      sub_1C5B4B8BC(v57, *(&v57 + 1), v58, v59);
      v28 = _s36FullScreenContentView_CompactRegularVMa();
      v29 = swift_getWitnessTable();
      v30 = v43;
      sub_1C5941738(&v69, v28, v42);
      sub_1C59CC0D8(v69, *(&v69 + 1), v70, v71);
      v49 = v53;
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v31 = sub_1C5BC92D4();
      v47 = v29;
      v48 = v30;
      swift_getWitnessTable();
      sub_1C5950E54(&v49, v31);
      sub_1C5B4B8AC(v49, *(&v49 + 1), v50, v51, v52);
      sub_1C59CC0D8(v57, *(&v57 + 1), v58, v59);
      sub_1C59CC0D8(v60, *(&v60 + 1), v61, v62);
    }

    else
    {
      _s36FullScreenContentView_CompactRegularVMa();
      _s37FullScreenContentView_RegularExtendedVMa();
      v32 = sub_1C5BC92D4();
      v33 = swift_getWitnessTable();
      v34 = swift_getWitnessTable();
      v67 = v33;
      v68 = v34;
      v35 = swift_getWitnessTable();
      sub_1C5941738(v35, v32, MEMORY[0x1E6981E70]);
    }
  }

  else
  {
    CGSizeMake(a3, a4);
    v14 = _s36FullScreenContentView_CompactRegularVMa();
    v15 = swift_getWitnessTable();
    v16 = sub_1C593EDC0(v15, v14, v15);
    sub_1C593EDC0(v16, v14, v15);
    _s37FullScreenContentView_RegularExtendedVMa();
    v17 = swift_getWitnessTable();
    sub_1C5950E54(v17, v14);
    v49 = v53;
    v50 = v54;
    v51 = v55;
    v52 = v56;
    v18 = sub_1C5BC92D4();
    v45 = v15;
    v46 = v17;
    swift_getWitnessTable();
    sub_1C5950E54(&v49, v18);
    sub_1C5B4B8AC(v49, *(&v49 + 1), v50, v51, v52);
  }

  _s36FullScreenContentView_CompactRegularVMa();
  _s37FullScreenContentView_RegularExtendedVMa();
  sub_1C5BC92D4();
  v36 = sub_1C5BC92D4();
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v65 = v37;
  v66 = v38;
  v63 = swift_getWitnessTable();
  v64 = v13;
  v39 = swift_getWitnessTable();
  sub_1C593EDC0(&v69, v36, v39);
  return sub_1C5B4B89C(v69, *(&v69 + 1), v70, v71, v72);
}

uint64_t sub_1C5B46EC0@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C5B46EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v85 = sub_1C5BC9374();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC8F34();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BC92E4();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BB0);
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BB8);
  v72 = *(v20 - 8);
  v73 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v63 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BC0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v63 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BC8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v63 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v63 - v24;
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v94[0] = xmmword_1EC1A6D80;
  v94[1] = *&qword_1EC1A6D90;
  v95 = qword_1EC1A6DA0;
  (*(v14 + 16))(&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  *(v26 + 16) = v28;
  *(v26 + 24) = v27;
  v29 = (*(v14 + 32))(v26 + v25, &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  MEMORY[0x1EEE9AC00](v29);
  *(&v63 - 4) = v28;
  *(&v63 - 3) = v27;
  *(&v63 - 2) = v94;
  *(&v63 - 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD8);
  sub_1C5B4B958();
  sub_1C5BCA6E4();
  v30 = v69;
  sub_1C5BC8C54();
  sub_1C5924F54(&qword_1EC198BF8, &qword_1EC198BB0);
  sub_1C5B4BDD4(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v31 = v66;
  v32 = v68;
  v33 = v71;
  sub_1C5BC9E04();
  (*(v70 + 8))(v30, v33);
  (*(v67 + 8))(v19, v32);
  v34 = sub_1C5BC98A4();
  *&v97[10] = *(v3 + 74);
  v35 = v3[4];
  v96[2] = v3[3];
  *v97 = v35;
  v36 = v3[2];
  v96[0] = v3[1];
  v96[1] = v36;
  if (v97[25])
  {
    v37 = v3[3];
    v93[0] = v3[4];
    *(v93 + 9) = *(v3 + 73);
    v38 = v3[1];
    v91 = v3[2];
    v92 = v37;
    v90 = v38;
  }

  else
  {

    sub_1C5BCB4E4();
    v39 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v40 = v63;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B4BA10(v96);
    (*(v64 + 8))(v40, v65);
  }

  v41 = v74;
  v88 = v92;
  v89[0] = v93[0];
  *(v89 + 9) = *(v93 + 9);
  v86 = v90;
  v87 = v91;
  sub_1C5B48084();
  sub_1C5BC8174();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v75;
  (*(v72 + 32))(v75, v31, v73);
  v51 = v50 + *(v41 + 36);
  *v51 = v34;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  *&v86 = sub_1C5BCAE94();
  *(&v86 + 1) = v53;
  sub_1C5B4BA78();
  sub_1C594A23C();
  v54 = v77;
  sub_1C5BCA034();

  sub_1C5924EF4(v50, &qword_1EC198BC0);
  v55 = [objc_opt_self() mainBundle];
  v56 = sub_1C5949F2C();
  v58 = v57;

  *&v86 = v56;
  *(&v86 + 1) = v58;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD00000000000001BLL, 0x80000001C5BFC3F0);
  sub_1C5B4BBC4();
  v59 = v79;
  sub_1C5BCA164();

  sub_1C5924EF4(v54, &qword_1EC198BC8);
  v60 = v82;
  sub_1C5BC9364();
  sub_1C5B4BBF4(&qword_1EC198C10, &qword_1EC198BD0, &unk_1C5BECA38, sub_1C5B4BBC4);
  sub_1C5B4BDD4(&qword_1EC1987A8, MEMORY[0x1E697C720]);
  v61 = v85;
  sub_1C5BC9DA4();
  (*(v83 + 8))(v60, v61);
  return sub_1C5924EF4(v59, &qword_1EC198BD0);
}

uint64_t sub_1C5B479A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C59498C4(*a1);
  v6 = 0;
  swift_unknownObjectRetain();
  NowPlayingController.transition(to:animated:)(&v6, 1, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B47A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v6 = sub_1C5BCAA34();
  v8 = v7;
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BD8) + 36);
  sub_1C5B47B34(a1, a2, a3, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BF0);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  *(a4 + 40) = v19;
  *(a4 + 48) = v20;
  return result;
}

uint64_t sub_1C5B47B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v54 = a4;
  v49 = sub_1C5BC90F4();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &KeyPath - v9;
  v52 = sub_1C5BC8284();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C18);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &KeyPath - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C20);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &KeyPath - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C5BC9044();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C28) + 36)];
  v21 = v59;
  *v20 = v58;
  *(v20 + 1) = v21;
  *(v20 + 2) = v60;
  v22 = *(a1 + 24);
  v23 = [objc_opt_self() systemGrayColor];
  v56 = sub_1C5BCA424();
  v57 = v22;
  v53 = a1;
  sub_1C5B4BCA8(a1, v55);

  v24 = sub_1C5BC85E4();
  v25 = sub_1C5BC85E4();

  v26 = &v15[*(v13 + 44)];
  *v26 = v24;
  v26[1] = v25;
  KeyPath = swift_getKeyPath();
  _s19HeaderDismissButtonVMa();
  sub_1C594C704(v10);
  v27 = v49;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F600], v49);
  LOBYTE(v13) = sub_1C5BC8274();
  v28 = *(v5 + 8);
  v28(v7, v27);
  v28(v10, v27);
  if (v13)
  {
    v29 = v50;
    v31 = v51;
    v30 = v52;
    (*(v50 + 104))(v51, *MEMORY[0x1E697DBB8], v52);
  }

  else
  {
    v31 = v51;
    sub_1C59421E4(v51);
    v30 = v52;
    v29 = v50;
  }

  v32 = &v17[*(v46 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130);
  (*(v29 + 32))(v32 + *(v33 + 28), v31, v30);
  *v32 = KeyPath;
  sub_1C59E7D34(v15, v17, &qword_1EC198C18);
  LOBYTE(v32) = sub_1C5BC9894();
  sub_1C5BC8174();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v54;
  sub_1C59E7D34(v17, v54, &qword_1EC198C20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C30);
  v44 = v42 + *(result + 36);
  *v44 = v32;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  return result;
}

void sub_1C5B48084()
{
  if (*(v0 + 18) <= 1u && !*(v0 + 18) && *(v0 + 17) && *(v0 + 17) == 1)
  {
    v1 = [objc_opt_self() currentTraitCollection];
    [v1 displayScale];
  }
}

uint64_t sub_1C5B4816C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 89) = 0;
  v3 = _s19HeaderDismissButtonVMa();
  v4 = *(v3 + 40);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 44);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5B4825C()
{
  _s7ArtworkCMa();
  sub_1C5B4BDD4(qword_1EDA49C50, _s7ArtworkCMa);

  return sub_1C5BC88C4();
}

uint64_t sub_1C5B482DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v31 = a1;
  v39 = a3;
  v4 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC90D4();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s27DefaultArtworkContainerViewVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  v11 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v12 = sub_1C5BC8AB4();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v30 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v30 - v18;
  v46 = sub_1C5BCA484();
  sub_1C5BCAA34();
  v40 = v31;
  v41 = a2;
  v19 = MEMORY[0x1E6981580];
  sub_1C5BCA2C4();

  sub_1C5BC9094();
  WitnessTable = swift_getWitnessTable();
  v44 = v19;
  v45 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_1C5BCA134();
  (*(v33 + 8))(v10, v34);
  (*(*(v11 - 8) + 8))(v47, v11);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v47[0] = sub_1C5BCAE94();
  v47[1] = v23;
  sub_1C594A23C();
  v24 = v35;
  sub_1C5BC8A14();

  v25 = *(v37 + 8);
  v25(v14, v12);
  v26 = sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v42 = v21;
  v43 = v26;
  v27 = swift_getWitnessTable();
  v28 = v36;
  sub_1C593EDC0(v24, v12, v27);
  v25(v24, v12);
  sub_1C593EDC0(v28, v12, v27);
  return (v25)(v28, v12);
}

uint64_t sub_1C5B48818()
{
  sub_1C5A5D810(v4);
  v0 = _s27DefaultArtworkContainerViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v4, v0, WitnessTable);
  v2 = *(*(v0 - 8) + 8);
  v2(v4, v0);
  sub_1C593EDC0(v5, v0, WitnessTable);
  return (v2)(v5, v0);
}

uint64_t sub_1C5B48908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v28 = *(a1 + 16);
  v29 = a2;
  v27 = v3;
  _s19DefaultMetadataViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s15ContextMenuViewVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC89E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA714();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = v4;
  v40 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v25 = sub_1C5BC8BE4();
  v6 = sub_1C5BC8AB4();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v23 = *v2;
  v16 = *(v2 + 2);
  v17 = *(v2 + 24);
  v39 = sub_1C5BCA484();
  sub_1C5BCAA44();
  v30 = v28;
  v31 = v27;
  v32 = v23;
  v33 = v16;
  v34 = v17;
  sub_1C5BCA2C4();

  sub_1C5BCAA54();
  v18 = swift_getWitnessTable();
  v37 = MEMORY[0x1E6981580];
  v38 = v18;
  v19 = swift_getWitnessTable();
  sub_1C5BCA234();
  (*(v26 + 8))(v8, v6);
  v35 = v19;
  v36 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v20);
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_1C593EDC0(v15, v9, v20);
  return (v21)(v15, v9);
}

uint64_t sub_1C5B48E40@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a2;
  v50 = a7;
  v51 = a1;
  v11 = sub_1C5BC96A4();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC8F34();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19DefaultMetadataViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v52 = a5;
  v54 = a6;
  v15 = _s15ContextMenuViewVMa();
  WitnessTable = swift_getWitnessTable();
  v59 = v15;
  v60 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1C5BC89E4();
  v59 = v15;
  v60 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  v59 = OpaqueTypeMetadata2;
  v60 = v18;
  v61 = OpaqueTypeConformance2;
  v62 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v21 = sub_1C5BCAB74();
  v47 = swift_getWitnessTable();
  v48 = v21;
  v22 = sub_1C5BCA714();
  v49 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v25 = swift_getWitnessTable();
  v59 = v22;
  v60 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v44 - v31;
  v55 = a4;
  if (a4)
  {
    v33 = a3;
    if (a3 == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v34 = a3;
    sub_1C5950E48(a3, 0);
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v36 = v44;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5950E44(v34, 0);
    (*(v45 + 8))(v36, v46);
    v33 = v59;
    a3 = v34;
    if (v59 == 3)
    {
LABEL_7:
      v37 = sub_1C5BC8FC4();
      goto LABEL_8;
    }
  }

  if (v33 != 1)
  {
    goto LABEL_7;
  }

  v37 = sub_1C5BC8F94();
LABEL_8:
  MEMORY[0x1EEE9AC00](v37);
  v38 = v54;
  *(&v44 - 6) = v52;
  *(&v44 - 5) = v38;
  v39 = v53;
  *(&v44 - 4) = v51;
  *(&v44 - 3) = v39;
  *(&v44 - 2) = a3;
  *(&v44 - 8) = v55 & 1;
  sub_1C5BCA704();
  v40 = v56;
  sub_1C5BC9694();
  sub_1C5BCA0C4();
  (*(v57 + 8))(v40, v58);
  (*(v49 + 8))(v24, v22);
  v59 = v22;
  v60 = v25;
  v41 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v29, v26, v41);
  v42 = *(v27 + 8);
  v42(v29, v26);
  sub_1C593EDC0(v32, v26, v41);
  return (v42)(v32, v26);
}

uint64_t sub_1C5B49484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v92 = a4;
  v7 = sub_1C5BC89E4();
  v76 = v7;
  v91 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC89B4();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15ContextMenuViewVMa();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v60 - v12;
  WitnessTable = swift_getWitnessTable();
  v100 = v11;
  v101 = WitnessTable;
  v71 = v11;
  v72 = WitnessTable;
  v14 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v85 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v70 = &v60 - v16;
  v100 = v11;
  v101 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = OpaqueTypeConformance2;
  v73 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  v100 = OpaqueTypeMetadata2;
  v101 = v7;
  v102 = OpaqueTypeConformance2;
  v103 = v73;
  v80 = MEMORY[0x1E697CDE0];
  v78 = swift_getOpaqueTypeMetadata2();
  v83 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v66 = &v60 - v18;
  v69 = sub_1C5BC8AB4();
  v84 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v60 - v19;
  sub_1C5BC97C4();
  v79 = sub_1C5BC8AB4();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v68 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v60 - v22;
  v61 = a3;
  v65 = _s19DefaultMetadataViewVMa();
  v23 = sub_1C5BC8AB4();
  v24 = *(v23 - 8);
  v94 = v23;
  v95 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v60 - v27;
  sub_1C59498C4(a1);
  v28 = *(a3 + 224);
  swift_unknownObjectRetain();
  v28(a2, a3);
  swift_unknownObjectRelease();

  sub_1C59498C4(a1);
  swift_unknownObjectRetain();
  v28(a2, v61);
  swift_unknownObjectRelease();

  sub_1C59DD5C4(&v100);
  v29 = v65;
  v30 = swift_getWitnessTable();
  v31 = v93;
  sub_1C5BCA184();
  (*(*(v29 - 8) + 8))(&v100, v29);
  v62 = sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v99[6] = v30;
  v99[7] = v62;
  v32 = v94;
  v63 = swift_getWitnessTable();
  sub_1C593EDC0(v31, v32, v63);
  v64 = *(v95 + 8);
  v65 = v95 + 8;
  v64(v31, v32);
  v33 = v82;
  sub_1C5A309FC(v82);
  v35 = v88;
  v34 = v89;
  v36 = v86;
  (*(v88 + 104))(v86, *MEMORY[0x1E697E6E8], v89);
  v38 = v70;
  v37 = v71;
  sub_1C5BC9F44();
  (*(v35 + 8))(v36, v34);
  (*(v87 + 8))(v33, v37);
  v39 = v90;
  sub_1C5BC8C44();
  v40 = v66;
  v42 = v75;
  v41 = v76;
  v44 = v73;
  v43 = v74;
  sub_1C5BC9E04();
  (*(v91 + 8))(v39, v41);
  (*(v85 + 8))(v38, v42);
  sub_1C5BC8F94();
  v100 = v42;
  v101 = v41;
  v102 = v43;
  v103 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v67;
  v47 = v78;
  sub_1C5BC9F04();
  (*(v83 + 8))(v40, v47);
  v99[4] = v45;
  v99[5] = MEMORY[0x1E69805A0];
  v48 = v69;
  v49 = swift_getWitnessTable();
  v50 = v68;
  sub_1C5BCA184();
  (*(v84 + 8))(v46, v48);
  v99[2] = v49;
  v99[3] = v62;
  v51 = v79;
  v52 = swift_getWitnessTable();
  v53 = v77;
  sub_1C593EDC0(v50, v51, v52);
  v54 = v81;
  v55 = *(v81 + 8);
  v55(v50, v51);
  v56 = v93;
  v57 = v94;
  (*(v95 + 16))(v93, v96, v94);
  v100 = v56;
  (*(v54 + 16))(v50, v53, v51);
  v101 = v50;
  v99[0] = v57;
  v99[1] = v51;
  v97 = v63;
  v98 = v52;
  sub_1C594226C(&v100, 2uLL, v99);
  v55(v53, v51);
  v58 = v64;
  v64(v96, v57);
  v55(v50, v51);
  return v58(v56, v57);
}

uint64_t sub_1C5B49F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a6;
  _s18HeaderMetadataViewVMa();
  _s15ContextMenuViewVMa();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = sub_1C5BC89E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1C5BC8FC4();
  v23 = a4;
  v24 = a5;
  v25 = a1;
  v26 = v20;
  v27 = v21;
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_1C593EDC0(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_1C5B4A200@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_1C5BC89E4();
  v43 = v1;
  *&v53 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C5BC89B4();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15ContextMenuViewVMa();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v35 - v6;
  WitnessTable = swift_getWitnessTable();
  v62 = v5;
  v63 = WitnessTable;
  v8 = WitnessTable;
  v40 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v39 = &v35 - v10;
  v62 = v5;
  v63 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeConformance2;
  v41 = sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  v62 = OpaqueTypeMetadata2;
  v63 = v1;
  *&v64 = OpaqueTypeConformance2;
  *(&v64 + 1) = v41;
  v44 = MEMORY[0x1E697CDE0];
  v12 = swift_getOpaqueTypeMetadata2();
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v35 - v16;

  v59 = sub_1C59DDD40();
  v60 = v17;
  *&v61 = v18;
  *(&v61 + 1) = v19;
  v20 = _s18HeaderMetadataViewVMa();
  v36 = v20;
  v37 = swift_getWitnessTable();
  sub_1C593EDC0(&v59, v20, v37);

  swift_unknownObjectRelease();
  v21 = v46;
  sub_1C5A309FC(v46);
  v23 = v50;
  v22 = v51;
  v24 = v48;
  (*(v50 + 104))(v48, *MEMORY[0x1E697E6E8], v51);
  v25 = v39;
  sub_1C5BC9F44();
  (*(v23 + 8))(v24, v22);
  (*(v49 + 8))(v21, v5);
  v26 = v52;
  sub_1C5BC8C44();
  v27 = v43;
  v28 = v42;
  v29 = v41;
  sub_1C5BC9E04();
  (*(v53 + 8))(v26, v27);
  (*(v47 + 8))(v25, OpaqueTypeMetadata2);
  v59 = OpaqueTypeMetadata2;
  v60 = v27;
  *&v61 = v28;
  *(&v61 + 1) = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_1C593EDC0(v14, v12, v30);
  v32 = v45;
  v33 = *(v45 + 8);
  v33(v14, v12);
  v59 = v62;
  v60 = v63;
  v53 = v64;
  v61 = v64;
  v58[0] = &v59;
  (*(v32 + 16))(v14, v31, v12);
  v58[1] = v14;
  swift_unknownObjectRetain();

  v57[0] = v36;
  v57[1] = v12;
  v55 = v37;
  v56 = v30;
  sub_1C594226C(v58, 2uLL, v57);
  v33(v31, v12);
  swift_unknownObjectRelease();

  v33(v14, v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B4A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v3 = sub_1C5BC90F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1C5BC8284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlayingColorSchemeModifier();
  v24 = v2;
  sub_1C594C704(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697F600], v3);
  v14 = sub_1C5BC8274();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  if (v14 & 1) != 0 || (sub_1C59416B4(v27), v16 = v28, __swift_project_boxed_opaque_existential_0(v27, v28), LOBYTE(v16) = sub_1C596CB78(v16), __swift_destroy_boxed_opaque_existential_0(v27), (v16))
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E697DBA8], v10);
  }

  else
  {
    sub_1C59421E4(v13);
  }

  KeyPath = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BA0);
  v19 = v25;
  v20 = (v25 + *(v18 + 36));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130);
  (*(v11 + 32))(v20 + *(v21 + 28), v13, v10);
  *v20 = KeyPath;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198BA8);
  return (*(*(v22 - 8) + 16))(v19, v26, v22);
}

uint64_t sub_1C5B4ABDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingColorSchemeModifier();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v7 = *(v4 + 20);
  *(v6 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v8 = v6 + *(v4 + 24);
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  MEMORY[0x1C694E550](v6, a1, v4, a2);
  return sub_1C5B4B494(v6);
}

uint64_t sub_1C5B4AD14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v11 - v1);
  v3 = sub_1C5BCA9E4();
  MEMORY[0x1EEE9AC00](v3);
  if (_UISolariumEnabled())
  {
    sub_1C5BCA9B4();
    result = sub_1C5BC85E4();
    v5 = xmmword_1C5BEC530;
    v6 = 13.0;
  }

  else
  {
    if (qword_1EC190678 != -1)
    {
      swift_once();
    }

    v7 = qword_1EC1A6AC0;
    v8 = *(v0 + 36);
    v9 = *MEMORY[0x1E6981DB8];
    v10 = sub_1C5BCAB54();
    (*(*(v10 - 8) + 104))(v2 + v8, v9, v10);
    *v2 = v7;
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);

    result = sub_1C5BC85E4();
    v5 = xmmword_1C5BEC520;
    v6 = 10.0;
  }

  xmmword_1EC1A6D80 = v5;
  qword_1EC1A6D90 = *&v6;
  qword_1EC1A6D98 = result;
  qword_1EC1A6DA0 = 0x4040000000000000;
  return result;
}

double static DeviceMetrics.Padding.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC1908D8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EC198A98;
  *a1 = xmmword_1EC198A88;
  *(a1 + 16) = result;
  return result;
}

void sub_1C5B4B00C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  if (v2 == 9)
  {
    goto LABEL_2;
  }

  v4 = *(v1 + 24);
  if ((*(v1 + 32) & 1) == 0 && v4 == 1 || !*(v1 + 17))
  {
    v3 = 33.0;
    goto LABEL_17;
  }

  if (v2 != 3 || (v4 ? (v5 = 1) : (v5 = *(v1 + 32)), (v5 & 1) != 0))
  {
LABEL_2:
    v3 = 19.0;
  }

  else
  {
    v6 = a1;
    v7 = [objc_opt_self() currentTraitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = 1.0;
    if (v9 >= 1.0)
    {
      v10 = v9;
      if ((~*&v9 & 0x7FF0000000000000) == 0)
      {
        v10 = 1.0;
        if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v10 = v9;
        }
      }
    }

    v3 = 1.0 / v10 + 17.0;
    a1 = v6;
  }

LABEL_17:
  *a1 = xmmword_1C5BDB0F0;
  *(a1 + 16) = v3;
}

void sub_1C5B4B10C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 17);
  v4 = *(v1 + 18);
  if (v4 != 1)
  {
    v7 = [objc_opt_self() currentTraitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = 1.0;
    if (v9 >= 1.0)
    {
      v10 = v9;
      if ((~*&v9 & 0x7FF0000000000000) == 0)
      {
        v10 = 1.0;
        if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v10 = v9;
        }
      }
    }

    v6 = 1.0 / v10 + 54.0;
    v5 = 0.0;
    if (v4 && v4 != 3)
    {
      if (v3 <= 4 && ((1 << v3) & 0x16) != 0)
      {
        v5 = 34.0;
      }

      else
      {
        v5 = 14.0;
      }
    }

    goto LABEL_29;
  }

  v5 = 25.0;
  if (*(v1 + 17) <= 3u)
  {
    if (v3 - 1 >= 2)
    {
      v6 = 80.0;
      if (*(v1 + 17) && v3 != 3)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

LABEL_24:
    v6 = 80.0;
    v5 = 45.0;
    goto LABEL_29;
  }

  if (v3 == 4)
  {
    goto LABEL_24;
  }

  if (v3 == 6)
  {
    *&v15 = 79.0;
    goto LABEL_27;
  }

  if (v3 != 5)
  {
LABEL_25:
    *&v15 = 80.0;
LABEL_27:
    v6 = *&v15;
    v5 = 27.0;
    goto LABEL_29;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 1.0;
  if (v13 >= 1.0)
  {
    v14 = v13;
    if ((~*&v13 & 0x7FF0000000000000) == 0)
    {
      v14 = 1.0;
      if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v14 = v13;
      }
    }
  }

  v6 = 1.0 / v14 + 80.0;
LABEL_29:
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

uint64_t sub_1C5B4B300()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_witness_table_11MediaCoreUI20NowPlayingControllerRzlAA0dE4ViewV24HeaderArtworkPlaceholderVyx_G05SwiftC00G0HPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_1C5B4B3C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for NowPlayingColorSchemeModifier()
{
  result = qword_1EDA477B0;
  if (!qword_1EDA477B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5B4B494(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingColorSchemeModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C5B4B500(uint64_t a1)
{
  v1 = *(a1 + 17);
  v2 = *(a1 + 18);
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_1EC1A6D80 + 1);
  if (v2 > 1)
  {
    v8 = 0.0;
    v9 = 6.0;
    if (v1 < 3)
    {
      v9 = 12.0;
    }

    if (v2 == 2)
    {
      v8 = v9;
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_17;
    }

    if (!v1)
    {
      v8 = 12.0;
      return v3 + v8;
    }

    if (v1 != 1)
    {
LABEL_17:
      v8 = 6.0;
    }

    else
    {
      v4 = [objc_opt_self() currentTraitCollection];
      [v4 displayScale];
      v6 = v5;

      v7 = 1.0;
      if (v6 >= 1.0)
      {
        v7 = v6;
        if ((~*&v6 & 0x7FF0000000000000) == 0)
        {
          v7 = 1.0;
          if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v7 = v6;
          }
        }
      }

      v8 = 1.0 / v7 + 5.0;
    }
  }

  return v3 + v8;
}

void sub_1C5B4B674()
{
  sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
    if (v1 <= 0x3F)
    {
      sub_1C5B4B748();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B4B748()
{
  if (!qword_1EDA46778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A460);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46778);
    }
  }
}

uint64_t sub_1C5B4B7AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B4B89C(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1C5B4B8AC(result, a2, a3, a4, HIBYTE(a4) & 1);
  }

  return result;
}

uint64_t sub_1C5B4B8AC(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    return sub_1C59CC0D8(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1C5B4B8BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C5B4B8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(_s19HeaderDismissButtonVMa() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1C5B479A0(v4, v1, v2);
}

unint64_t sub_1C5B4B958()
{
  result = qword_1EC198BE0;
  if (!qword_1EC198BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BD8);
    sub_1C594C97C();
    sub_1C5924F54(&qword_1EC198BE8, &qword_1EC198BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198BE0);
  }

  return result;
}

uint64_t sub_1C5B4BA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5B4BA78()
{
  result = qword_1EC198C00;
  if (!qword_1EC198C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BB0);
    sub_1C5BC92E4();
    sub_1C5924F54(&qword_1EC198BF8, &qword_1EC198BB0);
    sub_1C5B4BDD4(&qword_1EDA462E0, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C00);
  }

  return result;
}

uint64_t sub_1C5B4BBF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B4BCF0()
{
  result = qword_1EC198C38;
  if (!qword_1EC198C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BA0);
    sub_1C5924F54(&qword_1EC198C40, &qword_1EC198BA8);
    sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C38);
  }

  return result;
}

uint64_t sub_1C5B4BDD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B4BE1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B4BE70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B4BFA4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C5BC8F34() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((((((*(v6 + 64) + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_1C5B4C204(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC8F34() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((((((*(v8 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
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
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1C5B4C4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a7;
  v71 = a6;
  v70 = a4;
  v81 = a3;
  v80 = a2;
  v77 = a1;
  v82 = a8;
  v12 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  v78 = *(v12 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a4;
  v88 = a5;
  v69 = a5;
  v89 = a6;
  v90 = a7;
  v74 = _s23MiniPlayerAccessoryViewVMa();
  v73 = *(v74 - 8);
  v75 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v58 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48);
  _s24BackwardsTransportButtonVMa();
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa();
  sub_1C5BC92D4();
  v61 = _s23ForwardsTransportButtonVMa();
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v62 = sub_1C5BC92D4();
  v59 = sub_1C5BC92D4();
  v60 = _s15ContextMenuViewVMa();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC92D4();
  v63 = sub_1C5BC92D4();
  v64 = sub_1C5BC92D4();
  v65 = sub_1C5BCA584();
  v66 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v67 = sub_1C5BC8AB4();
  v68 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v114 = WitnessTable;
  v115 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  v112 = v18;
  v113 = v19;
  v20 = swift_getWitnessTable();
  v110 = v17;
  v111 = v20;
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getWitnessTable();
  v107 = v22;
  v108 = v23;
  v105 = swift_getWitnessTable();
  v106 = MEMORY[0x1E6981E60];
  v24 = swift_getWitnessTable();
  v103 = v21;
  v104 = v24;
  v102 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v101 = v83;
  v25 = swift_getWitnessTable();
  v26 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v98 = v25;
  v99 = v26;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E697E040];
  v27 = v68;
  v28 = swift_getWitnessTable();
  v87 = v27;
  v29 = v27;
  v88 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50);
  v30 = sub_1C5BC8AB4();
  v31 = sub_1C5BC92E4();
  v66 = v31;
  v87 = v29;
  v88 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  v94 = OpaqueTypeConformance2;
  v95 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50);
  v92 = v34;
  v93 = v35;
  v67 = v30;
  v36 = swift_getWitnessTable();
  v65 = v36;
  v64 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v87 = v30;
  v88 = v31;
  v89 = v36;
  v90 = v64;
  v63 = MEMORY[0x1E697CDE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = OpaqueTypeMetadata2;
  v38 = sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48);
  v61 = v38;
  v60 = sub_1C594F984();
  v87 = v84;
  v88 = &type metadata for NowPlayingMiniPlayerAccessoryID;
  v89 = OpaqueTypeMetadata2;
  v90 = v38;
  v91 = v60;
  v39 = sub_1C5BCA8C4();
  v68 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v59 = v58 - v43;
  v86 = v77;
  v58[1] = swift_getKeyPath();
  v44 = v73;
  v45 = v72;
  v46 = v74;
  (*(v73 + 16))(v72, v80, v74);
  v47 = v76;
  sub_1C5948550(v81, v76);
  v48 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v49 = (v75 + *(v78 + 80) + v48) & ~*(v78 + 80);
  v50 = swift_allocObject();
  v51 = v69;
  *(v50 + 2) = v70;
  *(v50 + 3) = v51;
  v52 = v83;
  *(v50 + 4) = v71;
  *(v50 + 5) = v52;
  (*(v44 + 32))(&v50[v48], v45, v46);
  sub_1C5B50394(v47, &v50[v49]);

  v87 = v67;
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v57 = swift_getOpaqueTypeConformance2();
  sub_1C5BCA8A4();
  v85 = v57;
  v53 = swift_getWitnessTable();
  v54 = v59;
  sub_1C593EDC0(v42, v39, v53);
  v55 = *(v68 + 8);
  v55(v42, v39);
  sub_1C593EDC0(v54, v39, v53);
  return (v55)(v54, v39);
}

uint64_t sub_1C5B4D08C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v128 = a8;
  v129 = a7;
  v106 = a5;
  v115 = a4;
  v122 = a3;
  v117 = a1;
  v118 = a2;
  v133 = sub_1C5BC92E4();
  v127 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v126 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC8C04();
  v124 = *(v10 - 8);
  v125 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BC89B4();
  v120 = *(v12 - 8);
  v121 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24BackwardsTransportButtonVMa();
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa();
  v98 = sub_1C5BC92D4();
  v116 = a6;
  OpaqueTypeMetadata2 = _s23ForwardsTransportButtonVMa();
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v105 = sub_1C5BC92D4();
  v97 = sub_1C5BC92D4();
  v99 = _s15ContextMenuViewVMa();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v103 = sub_1C5BCB804();
  v104 = sub_1C5BC92D4();
  sub_1C5BC92D4();
  v132 = sub_1C5BC92D4();
  v131 = sub_1C5BCA584();
  v114 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v110 = &v82 - v14;
  v130 = sub_1C5BC8AB4();
  v113 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v109 = &v82 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v16 = sub_1C5BC8AB4();
  v111 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v82 - v17;
  v102 = v16;
  v18 = sub_1C5BC8AB4();
  v112 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v82 - v19;
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v167 = WitnessTable;
  v168 = v21;
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  v165 = v23;
  v166 = v24;
  v25 = swift_getWitnessTable();
  v163 = v22;
  v164 = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v162 = swift_getAssociatedConformanceWitness();
  v28 = swift_getWitnessTable();
  v160 = v27;
  v161 = v28;
  v158 = swift_getWitnessTable();
  v159 = MEMORY[0x1E6981E60];
  v29 = swift_getWitnessTable();
  v156 = v26;
  v157 = v29;
  v97 = swift_getWitnessTable();
  v155 = v97;
  v99 = swift_getWitnessTable();
  v153 = v99;
  v154 = v129;
  v30 = swift_getWitnessTable();
  v98 = v30;
  v31 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v151 = v30;
  v152 = v31;
  AssociatedConformanceWitness = swift_getWitnessTable();
  v149 = AssociatedConformanceWitness;
  v150 = MEMORY[0x1E697E040];
  v32 = v18;
  v33 = swift_getWitnessTable();
  v141 = v18;
  v142 = v33;
  v84 = v18;
  v85 = v33;
  v34 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v96 = &v82 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  v36 = sub_1C5BC8AB4();
  v105 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v95 = &v82 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50);
  v91 = v36;
  v38 = sub_1C5BC8AB4();
  v104 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v94 = &v82 - v39;
  v141 = v32;
  v142 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeConformance2;
  v41 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  v147 = OpaqueTypeConformance2;
  v148 = v41;
  v42 = swift_getWitnessTable();
  v90 = v42;
  v43 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50);
  v145 = v42;
  v146 = v43;
  v44 = swift_getWitnessTable();
  v87 = v44;
  v86 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v141 = v38;
  v142 = v133;
  v143 = v44;
  v144 = v86;
  v92 = MEMORY[0x1E697CDE0];
  v45 = swift_getOpaqueTypeMetadata2();
  v93 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v83 = &v82 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v89 = &v82 - v48;
  v49 = v116;
  v50 = *(v117 + 16);
  v51 = v115;
  v52 = v106;
  v134 = v115;
  v135 = v106;
  v53 = v129;
  v136 = v116;
  v137 = v129;
  v138 = *v117;
  v139 = v50;
  v54 = v118;
  v140 = v118;
  v55 = v110;
  sub_1C5BCA574();
  v141 = v51;
  v142 = v52;
  v143 = v49;
  v144 = v53;
  v56 = _s23MiniPlayerAccessoryViewVMa();
  v57 = v109;
  v58 = v131;
  MEMORY[0x1C694E550](v54 + *(v56 + 52), v131, v52, v99);
  (*(v114 + 8))(v55, v58);
  type metadata accessor for NowPlayingMiniPlayerSpecs();
  v59 = v108;
  v60 = v130;
  sub_1C5BCA1F4();
  (*(v113 + 8))(v57, v60);
  sub_1C5BCAA54();
  v61 = v107;
  v62 = v102;
  sub_1C5950FCC();
  (*(v111 + 8))(v59, v62);
  v63 = v119;
  v64 = v120;
  v65 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x1E697E6E8], v121);
  v66 = v96;
  v67 = v84;
  sub_1C5BC9F44();
  (*(v64 + 8))(v63, v65);
  (*(v112 + 8))(v61, v67);
  sub_1C594E11C();
  v68 = v95;
  v69 = OpaqueTypeMetadata2;
  sub_1C5BC9E84();
  (*(v103 + 8))(v66, v69);
  v70 = v123;
  sub_1C5BC8BF4();
  sub_1C5B50530();
  v71 = v94;
  v72 = v91;
  sub_1C5BC9E94();
  (*(v124 + 8))(v70, v125);
  (*(v105 + 8))(v68, v72);
  v73 = v126;
  v74 = v133;
  v76 = v86;
  v75 = v87;
  sub_1C5AF76C4();
  v77 = v83;
  sub_1C5BC9E04();
  (*(v127 + 8))(v73, v74);
  (*(v104 + 8))(v71, v38);
  v141 = v38;
  v142 = v74;
  v143 = v75;
  v144 = v76;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v89;
  sub_1C593EDC0(v77, v45, v78);
  v80 = *(v93 + 8);
  v80(v77, v45);
  sub_1C593EDC0(v79, v45, v78);
  return (v80)(v79, v45);
}

uint64_t sub_1C5B4DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v233 = a6;
  *&v234 = a8;
  v244 = a4;
  v229 = a3;
  *&v231 = a1;
  v242 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v279 = &type metadata for NowPlayingLookupID;
  *(&v279 + 1) = AssociatedTypeWitness;
  *&v280 = v13;
  *(&v280 + 1) = AssociatedConformanceWitness;
  v15 = type metadata accessor for ViewProvider();
  v222 = *(v15 - 8);
  v223 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v221 = v212 - v16;
  v237 = AssociatedTypeWitness;
  v235 = swift_getAssociatedTypeWitness();
  v17 = sub_1C5BCB804();
  v225 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v224 = v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  *&v232 = v212 - v20;
  v21 = _s15ContextMenuViewVMa();
  v22 = sub_1C5BC92D4();
  v226 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v230 = v212 - v23;
  v251 = v24;
  v25 = sub_1C5BC92D4();
  v227 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v228 = v212 - v27;
  v248 = v21;
  v215 = *(v21 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v214 = v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v213 = v212 - v30;
  v31 = type metadata accessor for NowPlayingRouteButton.Content(0);
  MEMORY[0x1EEE9AC00](v31);
  v216 = (v212 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v247 = _s23ForwardsTransportButtonVMa();
  v217 = v31;
  v33 = sub_1C5BC92D4();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v218 = v212 - v35;
  v36 = _s24BackwardsTransportButtonVMa();
  v37 = _s21TransportControlsViewV22MiniPlayerCenterButtonVMa();
  v246 = v36;
  v250 = v37;
  v249 = sub_1C5BC92D4();
  v238 = v33;
  v38 = sub_1C5BC92D4();
  v220 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v219 = v212 - v39;
  v241 = v25;
  v40 = sub_1C5BC92D4();
  v239 = *(v40 - 8);
  v240 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v243 = v212 - v41;
  v245 = v38;
  v236 = AssociatedConformanceWitness;
  if (v229)
  {

    sub_1C5950CE4();
    v42 = a5;
    v43 = v231;
    sub_1C5950CE4();

    sub_1C5950CE4();
    sub_1C5950CE4();

    sub_1C5950CE4();
    sub_1C5950CE4();

    sub_1C5950CE4();
    sub_1C5950CE4();

    sub_1C5950CE4();
    sub_1C5950CE4();
    *&v279 = v42;
    *(&v279 + 1) = v233;
    *&v280 = a7;
    *(&v280 + 1) = v234;
    v44 = *(v244 + *(_s23MiniPlayerAccessoryViewVMa() + 72));
    sub_1C5951550();
    sub_1C59498C4(v44);
    v45 = *(a7 + 384);
    swift_unknownObjectRetain();
    v46 = v221;
    v45(v42, a7);
    swift_unknownObjectRelease();
    *&v279 = v43;
    *(&v279 + 1) = a2;
    v47 = v223;
    v48 = v224;
    sub_1C595BC70(&v279, v223);

    (*(v222 + 8))(v46, v47);
    v244 = swift_getAssociatedConformanceWitness();
    v359 = v244;
    WitnessTable = swift_getWitnessTable();
    v50 = v232;
    sub_1C593EDC0(v48, v17, WitnessTable);
    v237 = *(v225 + 8);
    v237(v48, v17);
    sub_1C593EDC0(v50, v17, WitnessTable);
    v51 = v248;
    v52 = swift_getWitnessTable();
    v53 = v230;
    sub_1C5941738(v48, v51, v17);
    v357 = v52;
    v358 = WitnessTable;
    v54 = swift_getWitnessTable();
    v55 = v228;
    sub_1C5950E54(v53, v251);
    (*(v226 + 8))(v53, v251);
    v56 = swift_getWitnessTable();
    v57 = swift_getWitnessTable();
    v355 = v56;
    v356 = v57;
    v58 = swift_getWitnessTable();
    v59 = swift_getWitnessTable();
    v60 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    v353 = v59;
    v354 = v60;
    v61 = swift_getWitnessTable();
    v351 = v58;
    v352 = v61;
    v62 = v245;
    swift_getWitnessTable();
    v349 = v54;
    v350 = MEMORY[0x1E6981E60];
    v63 = v241;
    swift_getWitnessTable();
    v64 = v243;
    sub_1C5941738(v55, v62, v63);
    (*(v227 + 8))(v55, v63);
    v65 = v237;
    v237(v48, v17);
    v65(v232, v17);
    v66 = v64;
    goto LABEL_8;
  }

  *&v232 = v34;
  v68 = v230;
  v67 = v231;
  v212[1] = v17;
  if (v231 == 0x647261776B636142 && a2 == 0xE900000000000073)
  {

    sub_1C5950CE4();
    sub_1C5950CE4();
    v69 = v244;
LABEL_7:
    *&v279 = a5;
    *(&v279 + 1) = v233;
    *&v280 = a7;
    *(&v280 + 1) = v234;
    v71 = _s23MiniPlayerAccessoryViewVMa();
    sub_1C59498C4(*(v69 + *(v71 + 72)));
    v72 = v38;
    v73 = *(a7 + 224);
    swift_unknownObjectRetain();
    v73(a5, a7);
    swift_unknownObjectRelease();

    *&v279 = sub_1C59519CC();
    *(&v279 + 1) = v74;
    *&v280 = v75;
    *(&v280 + 1) = v76;
    v77 = v246;
    v78 = swift_getWitnessTable();
    sub_1C593EDC0(&v279, v77, v78);

    swift_unknownObjectRelease();
    v233 = *(&v288 + 1);
    v279 = v288;
    v234 = v289;
    v280 = v289;
    sub_1C593EDC0(&v279, v77, v78);
    *&v231 = *(&v284 + 1);
    v274 = v284;
    v232 = v285;
    v275 = v285;
    v79 = swift_getWitnessTable();
    sub_1C5950E54(&v274, v77);
    v274 = v279;
    v275 = v280;
    v276 = v281;
    v277 = v282;
    v278 = v283;
    v261 = v78;
    v262 = v79;
    v80 = v249;
    v81 = swift_getWitnessTable();
    v82 = swift_getWitnessTable();
    v83 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    v259 = v82;
    v260 = v83;
    v84 = swift_getWitnessTable();
    v85 = v219;
    sub_1C5950E54(&v274, v80);
    sub_1C5950F4C(v274, *(&v274 + 1), v275, *(&v275 + 1), v276, v277, v278);
    v257 = v81;
    v258 = v84;
    swift_getWitnessTable();
    v86 = swift_getWitnessTable();
    v244 = swift_getAssociatedConformanceWitness();
    v256 = v244;
    v87 = swift_getWitnessTable();
    v254 = v86;
    v255 = v87;
    v252 = swift_getWitnessTable();
    v253 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    v66 = v243;
    sub_1C5950E54(v85, v72);
    (*(v220 + 8))(v85, v72);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v70 = sub_1C5BCBDE4();

  sub_1C5950CE4();
  sub_1C5950CE4();
  v69 = v244;
  if (v70)
  {
    goto LABEL_7;
  }

  if (v67 == 0x7265746E6543 && a2 == 0xE600000000000000)
  {

    sub_1C5950CE4();
    sub_1C5950CE4();
    v101 = v250;
LABEL_13:
    *&v279 = a5;
    *(&v279 + 1) = v233;
    *&v280 = a7;
    *(&v280 + 1) = v234;
    v103 = _s23MiniPlayerAccessoryViewVMa();
    sub_1C59498C4(*(v69 + *(v103 + 72)));
    v104 = *(a7 + 224);
    swift_unknownObjectRetain();
    v104(a5, a7);
    swift_unknownObjectRelease();

    sub_1C5950CEC(&v279);
    v274 = v279;
    v275 = v280;
    v276 = v281;
    v277 = v282;
    v105 = swift_getWitnessTable();
    v244 = v105;
    sub_1C593EDC0(&v274, v101, v105);
    v106 = v276;
    v107 = v277;

    swift_unknownObjectRelease();
    sub_1C5950E44(v106, v107);
    v108 = v290;
    LOBYTE(v107) = v291;
    v279 = v288;
    v234 = v289;
    v280 = v289;
    v281 = v290;
    v282 = v291;
    sub_1C593EDC0(&v279, v101, v105);
    v109 = v101;
    v110 = v281;
    v111 = v246;
    v112 = v282;
    swift_unknownObjectRetain();

    sub_1C5950E48(v108, v107);

    swift_unknownObjectRelease();
    sub_1C5950E44(v110, v112);
    v113 = v286;
    LOBYTE(v107) = v287;
    v274 = v284;
    v275 = v285;
    v276 = v286;
    v277 = v287;
    swift_unknownObjectRetain();

    sub_1C5950E48(v113, v107);
    v114 = swift_getWitnessTable();
    v115 = v244;
    sub_1C5941738(&v274, v111, v109);
    v116 = v276;
    v117 = v277;

    swift_unknownObjectRelease();
    sub_1C5950E44(v116, v117);
    v274 = v279;
    v275 = v280;
    v276 = v281;
    v277 = v282;
    v278 = v283;
    v272 = v114;
    v273 = v115;
    v118 = v249;
    v119 = swift_getWitnessTable();
    v120 = swift_getWitnessTable();
    v121 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    v270 = v120;
    v271 = v121;
    v122 = swift_getWitnessTable();
    v123 = v219;
    sub_1C5950E54(&v274, v118);
    sub_1C5950F4C(v274, *(&v274 + 1), v275, *(&v275 + 1), v276, v277, v278);
    v268 = v119;
    v269 = v122;
    v124 = v245;
    swift_getWitnessTable();
    v125 = swift_getWitnessTable();
    v244 = swift_getAssociatedConformanceWitness();
    v267 = v244;
    v126 = swift_getWitnessTable();
    v265 = v125;
    v266 = v126;
    v263 = swift_getWitnessTable();
    v264 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    v66 = v243;
    sub_1C5950E54(v123, v124);
    (*(v220 + 8))(v123, v124);
    v127 = v286;
    v128 = v287;

    swift_unknownObjectRelease();
    sub_1C5950E44(v127, v128);
    v129 = v290;
    v130 = v291;

    swift_unknownObjectRelease();
    sub_1C5950E44(v129, v130);
    goto LABEL_8;
  }

  v102 = sub_1C5BCBDE4();

  sub_1C5950CE4();
  sub_1C5950CE4();
  v101 = v250;
  if (v102)
  {
    goto LABEL_13;
  }

  if (v67 == 0x7364726177726F46 && a2 == 0xE800000000000000)
  {

    sub_1C5950CE4();
    sub_1C5950CE4();
    v131 = v249;
    v133 = v233;
    v132 = v234;
LABEL_18:
    *&v279 = a5;
    *(&v279 + 1) = v133;
    *&v280 = a7;
    *(&v280 + 1) = v132;
    v135 = _s23MiniPlayerAccessoryViewVMa();
    sub_1C59498C4(*(v244 + *(v135 + 72)));
    v136 = *(a7 + 224);
    swift_unknownObjectRetain();
    v136(a5, a7);
    swift_unknownObjectRelease();

    *&v274 = sub_1C59519CC();
    *(&v274 + 1) = v137;
    *&v275 = v138;
    *(&v275 + 1) = v139;
    v140 = v247;
    v141 = swift_getWitnessTable();
    sub_1C593EDC0(&v274, v140, v141);

    swift_unknownObjectRelease();
    v233 = *(&v279 + 1);
    v288 = v279;
    v234 = v280;
    v289 = v280;
    sub_1C593EDC0(&v288, v140, v141);
    v288 = v274;
    v231 = v275;
    v289 = v275;
    v142 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    v143 = v218;
    sub_1C5950E54(&v288, v140);
    v144 = swift_getWitnessTable();
    v145 = swift_getWitnessTable();
    v301 = v144;
    v302 = v145;
    v146 = swift_getWitnessTable();
    v299 = v141;
    v300 = v142;
    v147 = v131;
    v148 = v238;
    v149 = swift_getWitnessTable();
    v150 = v219;
    sub_1C5941738(v143, v147, v148);
    (*(v232 + 8))(v143, v148);
    v297 = v146;
    v298 = v149;
    v151 = v245;
    swift_getWitnessTable();
    v152 = swift_getWitnessTable();
    v244 = swift_getAssociatedConformanceWitness();
    v296 = v244;
    v153 = swift_getWitnessTable();
    v294 = v152;
    v295 = v153;
    v292 = swift_getWitnessTable();
    v293 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    v66 = v243;
    sub_1C5950E54(v150, v151);
    (*(v220 + 8))(v150, v151);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v134 = sub_1C5BCBDE4();

  sub_1C5950CE4();
  sub_1C5950CE4();
  v131 = v249;
  v133 = v233;
  v132 = v234;
  if (v134)
  {
    goto LABEL_18;
  }

  if (v67 == 0x7475426574756F52 && a2 == 0xEB000000006E6F74)
  {

    sub_1C5950CE4();
    sub_1C5950CE4();
    v154 = v243;
LABEL_23:
    v66 = v154;
    KeyPath = swift_getKeyPath();
    v157 = v216;
    *v216 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000);
    swift_storeEnumTagMultiPayload();
    v158 = v217;
    v159 = (v157 + *(v217 + 20));
    type metadata accessor for NowPlayingRouteObserver();
    sub_1C594F9D8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
    *v159 = sub_1C5BC8C84();
    v159[1] = v160;
    v161 = *(v158 + 24);
    *(v157 + v161) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
    swift_storeEnumTagMultiPayload();
    v162 = v157 + *(v158 + 28);
    *v162 = swift_getKeyPath();
    v162[8] = 0;
    v163 = v247;
    v164 = swift_getWitnessTable();
    v165 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
    v166 = v218;
    sub_1C5941738(v157, v163, v158);
    v167 = swift_getWitnessTable();
    v168 = swift_getWitnessTable();
    v312 = v167;
    v313 = v168;
    v169 = v249;
    v170 = swift_getWitnessTable();
    v310 = v164;
    v311 = v165;
    v171 = v238;
    v172 = swift_getWitnessTable();
    v173 = v219;
    sub_1C5941738(v166, v169, v171);
    (*(v232 + 8))(v166, v171);
    v308 = v170;
    v309 = v172;
    v174 = v245;
    swift_getWitnessTable();
    v175 = swift_getWitnessTable();
    v244 = swift_getAssociatedConformanceWitness();
    v307 = v244;
    v176 = swift_getWitnessTable();
    v305 = v175;
    v306 = v176;
    v303 = swift_getWitnessTable();
    v304 = MEMORY[0x1E6981E60];
    swift_getWitnessTable();
    sub_1C5950E54(v173, v174);
    (*(v220 + 8))(v173, v174);
    sub_1C5B50BC0(v216, type metadata accessor for NowPlayingRouteButton.Content);
    goto LABEL_8;
  }

  v155 = sub_1C5BCBDE4();

  sub_1C5950CE4();
  sub_1C5950CE4();
  v154 = v243;
  if (v155)
  {
    goto LABEL_23;
  }

  if (v67 == 0x4D747865746E6F43 && a2 == 0xEB00000000756E65)
  {

    sub_1C5950CE4();
    sub_1C5950CE4();
  }

  else
  {
    v177 = sub_1C5BCBDE4();

    sub_1C5950CE4();
    sub_1C5950CE4();
    if ((v177 & 1) == 0)
    {
      v199 = swift_getWitnessTable();
      v244 = swift_getAssociatedConformanceWitness();
      v335 = v244;
      v200 = swift_getWitnessTable();
      v333 = v199;
      v334 = v200;
      v201 = v251;
      v202 = swift_getWitnessTable();
      v203 = v228;
      sub_1C5941738(v202, v201, MEMORY[0x1E6981E70]);
      v204 = swift_getWitnessTable();
      v205 = swift_getWitnessTable();
      v331 = v204;
      v332 = v205;
      v206 = swift_getWitnessTable();
      v207 = swift_getWitnessTable();
      v208 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
      v329 = v207;
      v330 = v208;
      v209 = swift_getWitnessTable();
      v327 = v206;
      v328 = v209;
      v210 = v245;
      swift_getWitnessTable();
      v325 = v202;
      v326 = MEMORY[0x1E6981E60];
      v211 = v241;
      swift_getWitnessTable();
      v66 = v243;
      sub_1C5941738(v203, v210, v211);
      (*(v227 + 8))(v203, v211);
      goto LABEL_8;
    }
  }

  v178 = v214;
  sub_1C5A309FC(v214);
  v179 = v248;
  v180 = swift_getWitnessTable();
  v181 = v213;
  sub_1C593EDC0(v178, v179, v180);
  v182 = *(v215 + 8);
  v215 += 8;
  *&v234 = v182;
  v182(v178, v179);
  sub_1C593EDC0(v181, v179, v180);
  v244 = swift_getAssociatedConformanceWitness();
  v324 = v244;
  v183 = swift_getWitnessTable();
  sub_1C5950E54(v178, v179);
  v322 = v180;
  v323 = v183;
  v184 = v251;
  v185 = v68;
  v186 = swift_getWitnessTable();
  v187 = v68;
  v188 = MEMORY[0x1E6981E60];
  sub_1C5950E54(v187, v184);
  (*(v226 + 8))(v185, v184);
  v189 = swift_getWitnessTable();
  v190 = swift_getWitnessTable();
  v320 = v189;
  v321 = v190;
  v191 = swift_getWitnessTable();
  v192 = swift_getWitnessTable();
  v193 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  v318 = v192;
  v319 = v193;
  v194 = swift_getWitnessTable();
  v316 = v191;
  v317 = v194;
  v195 = v245;
  swift_getWitnessTable();
  v314 = v186;
  v315 = v188;
  v196 = v241;
  swift_getWitnessTable();
  v66 = v243;
  v197 = v228;
  sub_1C5941738(v228, v195, v196);
  (*(v227 + 8))(v197, v196);
  v198 = v234;
  (v234)(v214, v179);
  v198(v213, v179);
LABEL_8:
  v88 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v347 = v88;
  v348 = v89;
  v90 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v92 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  v345 = v91;
  v346 = v92;
  v93 = swift_getWitnessTable();
  v343 = v90;
  v344 = v93;
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v342 = v244;
  v96 = swift_getWitnessTable();
  v340 = v95;
  v341 = v96;
  v338 = swift_getWitnessTable();
  v339 = MEMORY[0x1E6981E60];
  v97 = swift_getWitnessTable();
  v336 = v94;
  v337 = v97;
  v98 = v240;
  v99 = swift_getWitnessTable();
  sub_1C593EDC0(v66, v98, v99);
  return (*(v239 + 8))(v66, v98);
}

uint64_t sub_1C5B50394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B503F8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s23MiniPlayerAccessoryViewVMa() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for NowPlayingMiniPlayerSpecs() - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1C5B4D08C(a1, v2 + v10, v13, v5, v6, v7, v8, a2);
}

unint64_t sub_1C5B50530()
{
  result = qword_1EDA45FC0;
  if (!qword_1EDA45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45FC0);
  }

  return result;
}

uint64_t sub_1C5B50584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a3;
  v46 = a2;
  v10 = _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa();
  sub_1C5BC97C4();
  v50 = v10;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  v17 = sub_1C5BCB804();
  v51 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v43 - v21;
  swift_beginAccess();
  v22 = *(a1 + 32);
  if (v22 == 255)
  {
    (*(v12 + 56))(v19, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v36 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v62 = WitnessTable;
    v63 = v36;
    swift_getWitnessTable();
  }

  else
  {
    v45 = a6;
    v44 = v17;
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v56 = &type metadata for NowPlayingViewModel.LeadingTransportButtonConfiguration;
    v57 = sub_1C5A6CAD0();
    *&v54 = v24;
    *(&v54 + 1) = v23;
    v55 = v22 & 1;
    swift_beginAccess();
    v25 = *(a1 + 57);
    sub_1C59525FC(v24, v23, v22);
    v26 = sub_1C59498C4(v46);
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v26;
    swift_unknownObjectRetain();
    v28 = v27;
    v17 = v44;
    sub_1C5973B04(&v54, v25, sub_1C5B50C20, v28, v58);
    v29 = v50;
    v30 = swift_getWitnessTable();
    sub_1C595BB1C(0xD000000000000022, 0x80000001C5BFC430);
    (*(*(v29 - 8) + 8))(v58, v29);
    v31 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v52 = v30;
    v53 = v31;
    v32 = swift_getWitnessTable();
    v33 = v48;
    sub_1C593EDC0(v14, v11, v32);
    v34 = *(v12 + 8);
    v34(v14, v11);
    sub_1C593EDC0(v33, v11, v32);
    v34(v33, v11);
    (*(v12 + 32))(v19, v14, v11);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  v37 = v49;
  sub_1C5941600(v19, v49);
  v38 = *(v51 + 8);
  v38(v19, v17);
  v39 = swift_getWitnessTable();
  v40 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v60 = v39;
  v61 = v40;
  v59 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v37, v17, v41);
  return (v38)(v37, v17);
}