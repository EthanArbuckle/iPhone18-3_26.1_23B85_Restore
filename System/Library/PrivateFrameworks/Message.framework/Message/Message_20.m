uint64_t sub_1B0710F18(uint64_t a1)
{
  v141 = a1;
  v142 = sub_1B0713540;
  v143 = sub_1B039BCF8;
  v144 = sub_1B03FB774;
  v145 = sub_1B03B0DF8;
  v146 = sub_1B03FB774;
  v147 = sub_1B06BCD8C;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B039BCEC;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399260;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B03992D4;
  v157 = sub_1B0713540;
  v158 = sub_1B039BCF8;
  v159 = sub_1B0398F5C;
  v160 = sub_1B0398F5C;
  v161 = sub_1B039BCEC;
  v162 = sub_1B0713540;
  v163 = sub_1B039BCF8;
  v164 = sub_1B07135E4;
  v165 = sub_1B070B324;
  v166 = sub_1B0398F5C;
  v167 = sub_1B0398F5C;
  v168 = sub_1B039BCEC;
  v169 = sub_1B0398F5C;
  v170 = sub_1B0398F5C;
  v171 = sub_1B070B4B4;
  v222 = 0;
  v220 = 0;
  v221 = 0;
  v219 = 0;
  v218[6] = 0;
  v213 = 0;
  v212 = 0;
  v201 = 0;
  v188 = 0;
  v172 = sub_1B0E42E68();
  v174 = *(v172 - 8);
  v173 = v172 - 8;
  v175 = v174;
  v176 = *(v174 + 64);
  v177 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v178 = v62 - v177;
  v179 = sub_1B0E439A8();
  v180 = *(v179 - 8);
  v181 = v179 - 8;
  v182 = (*(v180 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v188);
  v183 = v62 - v182;
  v184 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v185 = v62 - v184;
  v186 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v187 = v62 - v186;
  v189 = sub_1B0E42BE8();
  v190 = *(v189 - 8);
  v191 = v189 - 8;
  v192 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v188);
  v197 = v62 - v192;
  v222 = v62 - v192;
  v219 = a1;
  v195 = type metadata accessor for URLResourceKey();
  v194 = sub_1B0E46A48();
  v193 = v6;
  sub_1B06BD0C8(MEMORY[0x1E695DD60], v6);
  sub_1B06BD0C8(MEMORY[0x1E695DD58], v193 + 1);
  v7 = v194;
  sub_1B0394964();
  v196 = v7;
  sub_1B0694CF0();
  v198 = sub_1B0E45438();
  sub_1B0E42D38();
  v199 = 0;
  v200 = 0;

  v140 = sub_1B0E42BB8();
  if (v8 & 1) != 0 || (v139 = v140, v137 = v140, v213 = v140, v138 = sub_1B0E42BC8(), (v9))
  {
    v47 = v185;
    v48 = sub_1B070E6D8();
    (*(v180 + 16))(v47, v48, v179);
    v70 = v175;
    (*(v174 + 16))(v178, v141, v172);
    v71 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v74 = 7;
    v75 = swift_allocObject();
    (*(v174 + 32))(v75 + v71, v178, v172);
    v83 = sub_1B0E43988();
    v84 = sub_1B0E458E8();
    v72 = 17;
    v77 = swift_allocObject();
    *(v77 + 16) = 34;
    v78 = swift_allocObject();
    *(v78 + 16) = 8;
    v73 = 32;
    v49 = swift_allocObject();
    v50 = v75;
    v76 = v49;
    *(v49 + 16) = v157;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v76;
    v80 = v51;
    *(v51 + 16) = v158;
    *(v51 + 24) = v52;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v79 = sub_1B0E46A48();
    v81 = v53;

    v54 = v77;
    v55 = v81;
    *v81 = v159;
    v55[1] = v54;

    v56 = v78;
    v57 = v81;
    v81[2] = v160;
    v57[3] = v56;

    v58 = v80;
    v59 = v81;
    v81[4] = v161;
    v59[5] = v58;
    sub_1B0394964();

    if (os_log_type_enabled(v83, v84))
    {
      v60 = v199;
      v63 = sub_1B0E45D78();
      v62[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v64 = sub_1B03949A8(0);
      v65 = sub_1B03949A8(1);
      v66 = v218;
      v218[0] = v63;
      v67 = &v217;
      v217 = v64;
      v68 = &v216;
      v216 = v65;
      sub_1B0394A48(2, v218);
      sub_1B0394A48(1, v66);
      v214 = v159;
      v215 = v77;
      sub_1B03949FC(&v214, v66, v67, v68);
      v69 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v214 = v160;
        v215 = v78;
        sub_1B03949FC(&v214, v218, &v217, &v216);
        v62[39] = 0;
        v214 = v161;
        v215 = v80;
        sub_1B03949FC(&v214, v218, &v217, &v216);
        _os_log_impl(&dword_1B0389000, v83, v84, "Unable to get resource values for volume '%{public}s'.", v63, 0xCu);
        sub_1B03998A8(v64);
        sub_1B03998A8(v65);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v83);
    (*(v180 + 8))(v185, v179);
    (*(v190 + 8))(v197, v189);
    goto LABEL_22;
  }

  v136 = v138;
  v135 = v136;
  v212 = v136;
  if (v137 < 0)
  {
    goto LABEL_10;
  }

  v203 = v135;
  v202 = 0x7FFFFFFFFFFFFFFFLL;
  sub_1B0E46B78();
  v205 = v204;
  v206 = 0;
  v134 = v204;
  v133 = v204;
  v132 = v204;
  v201 = v204;
  if (v204 < 0)
  {
LABEL_10:
    v13 = v187;
    v14 = sub_1B070E6D8();
    (*(v180 + 16))(v13, v14, v179);
    v100 = v175;
    (*(v174 + 16))(v178, v141, v172);
    v101 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v110 = 7;
    v103 = swift_allocObject();
    (*(v174 + 32))(v103 + v101, v178, v172);
    v102 = 24;
    v105 = swift_allocObject();
    *(v105 + 16) = v137;
    v111 = swift_allocObject();
    *(v111 + 16) = v135;
    v125 = sub_1B0E43988();
    v126 = sub_1B0E458E8();
    v107 = 17;
    v113 = swift_allocObject();
    *(v113 + 16) = 34;
    v114 = swift_allocObject();
    v108 = 8;
    *(v114 + 16) = 8;
    v109 = 32;
    v15 = swift_allocObject();
    v16 = v103;
    v104 = v15;
    *(v15 + 16) = v142;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v104;
    v115 = v17;
    *(v17 + 16) = v143;
    *(v17 + 24) = v18;
    v116 = swift_allocObject();
    *(v116 + 16) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v108;
    v19 = swift_allocObject();
    v20 = v105;
    v106 = v19;
    *(v19 + 16) = v144;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v106;
    v118 = v21;
    *(v21 + 16) = v145;
    *(v21 + 24) = v22;
    v119 = swift_allocObject();
    *(v119 + 16) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v108;
    v23 = swift_allocObject();
    v24 = v111;
    v112 = v23;
    *(v23 + 16) = v146;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v112;
    v122 = v25;
    *(v25 + 16) = v147;
    *(v25 + 24) = v26;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v121 = sub_1B0E46A48();
    v123 = v27;

    v28 = v113;
    v29 = v123;
    *v123 = v148;
    v29[1] = v28;

    v30 = v114;
    v31 = v123;
    v123[2] = v149;
    v31[3] = v30;

    v32 = v115;
    v33 = v123;
    v123[4] = v150;
    v33[5] = v32;

    v34 = v116;
    v35 = v123;
    v123[6] = v151;
    v35[7] = v34;

    v36 = v117;
    v37 = v123;
    v123[8] = v152;
    v37[9] = v36;

    v38 = v118;
    v39 = v123;
    v123[10] = v153;
    v39[11] = v38;

    v40 = v119;
    v41 = v123;
    v123[12] = v154;
    v41[13] = v40;

    v42 = v120;
    v43 = v123;
    v123[14] = v155;
    v43[15] = v42;

    v44 = v122;
    v45 = v123;
    v123[16] = v156;
    v45[17] = v44;
    sub_1B0394964();

    if (os_log_type_enabled(v125, v126))
    {
      v46 = v199;
      v93 = sub_1B0E45D78();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v94 = sub_1B03949A8(0);
      v95 = sub_1B03949A8(1);
      v96 = &v211;
      v211 = v93;
      v97 = &v210;
      v210 = v94;
      v98 = &v209;
      v209 = v95;
      sub_1B0394A48(2, &v211);
      sub_1B0394A48(3, v96);
      v207 = v148;
      v208 = v113;
      sub_1B03949FC(&v207, v96, v97, v98);
      v99 = v46;
      if (v46)
      {

        __break(1u);
      }

      else
      {
        v207 = v149;
        v208 = v114;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v91 = 0;
        v207 = v150;
        v208 = v115;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v90 = 0;
        v207 = v151;
        v208 = v116;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v89 = 0;
        v207 = v152;
        v208 = v117;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v88 = 0;
        v207 = v153;
        v208 = v118;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v87 = 0;
        v207 = v154;
        v208 = v119;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v86 = 0;
        v207 = v155;
        v208 = v120;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        v85 = 0;
        v207 = v156;
        v208 = v122;
        sub_1B03949FC(&v207, &v211, &v210, &v209);
        _os_log_impl(&dword_1B0389000, v125, v126, "Resource values for volume '%{public}s'. are out of bounds: %ld %lld.", v93, 0x20u);
        sub_1B03998A8(v94);
        sub_1B03998A8(v95);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v125);
    (*(v180 + 8))(v187, v179);
    (*(v190 + 8))(v197, v189);
LABEL_22:
    (*(v174 + 8))(v141, v172);
    v129 = 0;
    v130 = 0;
    v131 = 1;
    return v129;
  }

  v10 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v137);
  v127 = v11;
  v128 = v12;
  v220 = v11;
  v221 = v12;
  (*(v190 + 8))(v197, v189, v10);
  (*(v174 + 8))(v141, v172);
  v129 = v127;
  v130 = v128;
  v131 = 0;
  return v129;
}

uint64_t sub_1B0713540()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0710E30();
}

uint64_t sub_1B07135A4(void *a1)
{
  v1 = a1;
  v4 = sub_1B0E42CC8();

  return v4;
}

uint64_t type metadata accessor for DiskSpaceObserver()
{
  v1 = qword_1EB6DEE70;
  if (!qword_1EB6DEE70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B071367C()
{
  v2 = sub_1B0E42E68();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *sub_1B0713798(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

uint64_t sub_1B071381C(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *v2;
  *v2 = a1;
  *(v2 + 2) = a2;
}

unint64_t sub_1B0713910()
{
  v2 = qword_1EB6E1A00;
  if (!qword_1EB6E1A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1A00);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B071398C(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = static MailboxName.== infix(_:_:)(a1, a2, a4, a5);

  if (v14)
  {
    sub_1B0714E4C();
    return (sub_1B0E45ED8() & 1) != 0 && sub_1B06E5FB4(a3 & 1, a6 & 1);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B0713B6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1B071398C(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
}

uint64_t sub_1B0713C1C(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B0713C30(unint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v7 = v6;
  v4 = sub_1B0713BE8();
  v1 = sub_1B0713BFC();
  *(&v7 + 1) = PCG32Random.init(state:inc:)(v4, v1);
  v8 = __PAIR128__(a1, v2);
  sub_1B039E440(&v7);
  return v6;
}

uint64_t sub_1B0713D6C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  sub_1B0714054();
  sub_1B0E44FB8();

  sub_1B039E440(v11);
  v9 = v12;
  if (v11[1])
  {

    return v9 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1B0713EEC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 12);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = static MailboxName.== infix(_:_:)(v9, v10, a2, a3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v8)
  {
    sub_1B0714E4C();
    v4 = sub_1B0E45ED8();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1B0714054()
{
  v2 = qword_1EB6DB1A8;
  if (!qword_1EB6DB1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB1A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07140DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a7;
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v21 = sub_1B0714378;
  v32 = 0;
  v33 = 0;
  v30 = 0u;
  v31 = 0u;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v17);
  v25 = v15 - v16;
  v32 = v8;
  v33 = v9;
  *&v30 = v7;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = v17;
  v13 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = &v26;
  v27 = v18;
  v28 = v19;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
  sub_1B0714054();
  sub_1B0E44FD8();

  return sub_1B039E440(&v29);
}

uint64_t sub_1B0714294(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v17 = a1;
  v10 = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 12);
  v16 = a2;
  v14 = a3;
  v15 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = static MailboxName.== infix(_:_:)(v10, v7, a3, a4);

  result = v11;
  if (v11)
  {
    v12 = v6;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v13, &v12, v5);
  }

  return result;
}

uint64_t sub_1B07143A4(uint64_t a1, int a2, int a3, char a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0;
  v43 = a1;
  v44 = a2;
  v42 = a3;
  v41 = a4 & 1;
  v40 = v4;
  v27 = *v4;
  v24 = v4[1];
  v25 = v4[2];
  v26 = v4[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = sub_1B0713CDC(a1, a2, a3, v27, v24, v25, v26);

  result = v28;
  if (!v28)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0713B20();
    v37 = v6;
    v38 = v7;
    v39 = v8;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v34 = v6;
    v35 = v7;
    v36 = v8;
    v18 = *v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0E452A8();

    if (v19 < v20[3])
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
      sub_1B0E452E8();
    }

    else
    {
      v13 = *v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14 = sub_1B0E452A8();

      if (v14 < 0)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v31 = 0;
      v32 = v14;
      sub_1B039A4F8();
      sub_1B0714728();
      sub_1B0E46588();
      v30 = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A08, &unk_1B0E9AC90);
      v12 = sub_1B0E45398();
      v10 = *v9;
      *v9 = v15;
      v9[1] = v16;
      *(v9 + 16) = v17;

      v12(v29, 0, v11);
    }
  }

  return result;
}

unint64_t sub_1B0714728()
{
  v2 = qword_1EB6DEC88;
  if (!qword_1EB6DEC88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEC88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07147A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B07148E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1B0714AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0714BF0(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B0714DD0()
{
  v2 = qword_1EB6E1A10;
  if (!qword_1EB6E1A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0714E4C()
{
  v2 = qword_1EB6DE1C0;
  if (!qword_1EB6DE1C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0714EC4(uint64_t a1)
{
  v9 = a1;
  v11 = 0;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v4 - v5;
  v6 = (*(*(sub_1B0E45948() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v8 = v4 - v6;
  v11 = v1;
  sub_1B06BB524(v1, v2);
  sub_1B0714FF8(v7, v8);
  v10 = sub_1B0E45958();
  MEMORY[0x1E69E5928](v10);
  v12 = v10;
  sub_1B06BB840(v9);
  MEMORY[0x1E69E5920](v12);
  return v10;
}

uint64_t sub_1B0714FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v94 = a1;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v72 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v28 - v72;
  v74 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v28 - v72);
  v75 = &v28 - v74;
  v118 = &v28 - v74;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v76 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v77 = (&v28 - v76);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
  v78 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v28 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](&v28 - v78);
  v81 = (&v28 - v80);
  v82 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v28 - v82;
  v117 = &v28 - v82;
  v84 = 0;
  v85 = sub_1B0E45918();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v84);
  v89 = &v28 - v88;
  v90 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v28 - v90;
  v92 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v28 - v92;
  v116 = &v28 - v92;
  v95 = sub_1B0E45948();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v28 - v98;
  v100 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v28 - v100;
  v115 = &v28 - v100;
  v114 = v15;
  v102 = *v15;
  if (v102)
  {
    switch(v102)
    {
      case 1:
        (*(v86 + 104))(v91, *MEMORY[0x1E699A638], v85);
        break;
      case 2:
        (*(v86 + 104))(v91, *MEMORY[0x1E699A640], v85);
        break;
      case 3:
        (*(v86 + 104))(v91, *MEMORY[0x1E699A650], v85);
        break;
      case 4:
        (*(v86 + 104))(v91, *MEMORY[0x1E699A658], v85);
        break;
      default:
        (*(v86 + 104))(v91, *MEMORY[0x1E699A630], v85);
        break;
    }
  }

  else
  {
    (*(v86 + 104))(v91, *MEMORY[0x1E699A648], v85);
  }

  (*(v86 + 32))(v93, v91, v85);
  v69 = 0;
  v16 = type metadata accessor for ConnectionStatus.Error(0);
  sub_1B07161B4((v94 + *(v16 + 20)), v77);
  v70 = type metadata accessor for ConnectionStatus.Error.Details(v69);
  if ((*(*(v70 - 8) + 48))(v77, 1) == 1)
  {
    v17 = sub_1B0E45938();
    (*(*(v17 - 8) + 56))(v81, 1);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = *v77;
        v47 = v77[1];
        v41 = v77[2];
        v46 = v77[3];
        v108 = v40;
        v109 = v47;
        v106 = v41;
        v107 = v46;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = v41;
        v19 = v81;
        v20 = v46;
        v21 = v47;
        *v81 = v40;
        v19[1] = v21;
        v19[2] = v18;
        v19[3] = v20;
        v42 = *MEMORY[0x1E699A680];
        v45 = sub_1B0E45938();
        v43 = *(v45 - 8);
        v44 = v45 - 8;
        (*(v43 + 104))(v81, v42);
        (*(v43 + 56))(v81, 0, 1, v45);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v34 = *v77;
          v39 = v77[1];
          v110 = v34;
          v111 = v39;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v22 = v34;
          v23 = v81;
          v24 = v39;
          *v81 = 0;
          v23[1] = 0;
          v23[2] = v22;
          v23[3] = v24;
          v35 = *MEMORY[0x1E699A680];
          v38 = sub_1B0E45938();
          v36 = *(v38 - 8);
          v37 = v38 - 8;
          (*(v36 + 104))(v81, v35);
          (*(v36 + 56))(v81, 0, 1, v38);
        }

        else
        {
          v28 = *v77;
          v33 = v77[1];
          v112 = v28;
          v113 = v33;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v25 = v81;
          v26 = v33;
          *v81 = v28;
          v25[1] = v26;
          v25[2] = 0;
          v25[3] = 0;
          v29 = *MEMORY[0x1E699A680];
          v32 = sub_1B0E45938();
          v30 = *(v32 - 8);
          v31 = v32 - 8;
          (*(v30 + 104))(v81, v29);
          (*(v30 + 56))(v81, 0, 1, v32);
        }
      }
    }

    else
    {
      v64 = sub_1B0E441D8();
      v65 = *(v64 - 8);
      v66 = v64 - 8;
      v67 = (*(v65 + 88))(v77);
      if (v67 == *MEMORY[0x1E6977D68])
      {
        (*(v65 + 96))(v77, v64);
        v103 = *v77;
        *v81 = v103;
        v60 = *MEMORY[0x1E699A678];
        v63 = sub_1B0E45938();
        v61 = *(v63 - 8);
        v62 = v63 - 8;
        (*(v61 + 104))(v81, v60);
        (*(v61 + 56))(v81, 0, 1, v63);
      }

      else if (v67 == *MEMORY[0x1E6977D58])
      {
        (*(v65 + 96))(v77, v64);
        v104 = *v77;
        *v81 = v104;
        v56 = *MEMORY[0x1E699A660];
        v59 = sub_1B0E45938();
        v57 = *(v59 - 8);
        v58 = v59 - 8;
        (*(v57 + 104))(v81, v56);
        (*(v57 + 56))(v81, 0, 1, v59);
      }

      else if (v67 == *MEMORY[0x1E6977D60])
      {
        (*(v65 + 96))(v77, v64);
        v105 = *v77;
        *v81 = v105;
        v52 = *MEMORY[0x1E699A668];
        v55 = sub_1B0E45938();
        v53 = *(v55 - 8);
        v54 = v55 - 8;
        (*(v53 + 104))(v81, v52);
        (*(v53 + 56))(v81, 0, 1, v55);
      }

      else
      {
        v48 = *MEMORY[0x1E699A670];
        v51 = sub_1B0E45938();
        v49 = *(v51 - 8);
        v50 = v51 - 8;
        (*(v49 + 104))(v81, v48);
        (*(v49 + 56))(v81, 0, 1, v51);
        (*(v65 + 8))(v77, v64);
      }
    }
  }

  sub_1B0716400(v81, v83);
  ConnectionStatus.Error.backedOffUntil.getter(v75);
  (*(v86 + 16))(v89, v93, v85);
  sub_1B0716528(v83, v79);
  sub_1B06BC2F4(v75, v73);
  sub_1B0E45928();
  (*(v96 + 32))(v101, v99, v95);
  sub_1B06B97A8(v75);
  sub_1B0716650(v83);
  (*(v86 + 8))(v93, v85);
  (*(v96 + 16))(v71, v101, v95);
  sub_1B06BB840(v94);
  return (*(v96 + 8))(v101, v95);
}

void *sub_1B07161B4(void *a1, void *a2)
{
  v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a2 = *a1;
        v7 = a1[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[1] = v7;
        a2[2] = a1[2];
        v8 = a1[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[3] = v8;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *a2 = *a1;
        if (EnumCaseMultiPayload == 2)
        {
          v6 = a1[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[1] = v6;
        }

        else
        {
          v5 = a1[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[1] = v5;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    (*(v13 + 56))(a2, 0, 1, v12);
  }

  return a2;
}

void *sub_1B0716400(const void *a1, void *a2)
{
  v6 = sub_1B0E45938();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1B0716528(const void *a1, void *a2)
{
  v6 = sub_1B0E45938();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1A18, &unk_1B0E9AD98);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B0716650(uint64_t a1)
{
  v3 = sub_1B0E45938();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B07166F8()
{
  v5 = 0;
  v6 = v0;
  sub_1B07167A8();
  v5 = sub_1B0E44588();
  v4 = &v5;
  BodyStructure.enumerateParts(_:)(sub_1B07169A4, v3);
  v2 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(&v5);
  return v2;
}

unint64_t sub_1B07167A8()
{
  v2 = qword_1EB6DE670;
  if (!qword_1EB6DE670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE670);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B0716820(uint64_t a1, const void *a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  sub_1B07169CC(a2, v8);
  memcpy(__dst, a2, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v14, v3, sizeof(v14));
    return sub_1B0717020(v14);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v13, v5, sizeof(v13));
    memcpy(v15, &v13[1], sizeof(v15));
    sub_1B0717138(v15, v7);
    v16 = v15[9];
    sub_1B0717224(v15);
    if (!v16)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();
    }

    return sub_1B071728C(v13);
  }
}

uint64_t sub_1B07169CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  v24 = *(a1 + 168);
  v25 = *(a1 + 176);
  sub_1B0716BB8(*a1, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  result = a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v21;
  *(a2 + 152) = v22;
  *(a2 + 160) = v23;
  *(a2 + 168) = v24;
  *(a2 + 176) = v25 & 1;
  return result;
}

uint64_t sub_1B0716BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716F5C(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716D54(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1B0716D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716DEC(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t sub_1B0716DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1B0716E6C(result, a2);
    return sub_1B0716EC4(a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1B0716E6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0716EC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0716F14(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B0716F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0716F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    return sub_1B0716DEC(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t *sub_1B0717020(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  if (a1[4])
  {
    v3 = a1[3];

    v4 = a1[4];

    v5 = a1[5];

    if (a1[7] != 1)
    {
      if (a1[7])
      {
        v6 = a1[7];

        v7 = a1[8];

        v8 = a1[9];

        v9 = a1[10];
      }

      if (a1[11])
      {
        v10 = a1[11];

        if (a1[14])
        {
          v11 = a1[13];

          v12 = a1[14];
        }
      }
    }
  }

  return a1;
}

void *sub_1B0717138(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  a2[3] = a1[3];
  v6 = a1[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[4] = v6;
  a2[5] = a1[5];
  v7 = a1[6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[6] = v7;
  a2[7] = a1[7];
  v9 = a1[8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[8] = v9;
  a2[9] = a1[9];
  return result;
}

uint64_t *sub_1B0717224(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[4];

  v5 = a1[6];

  v6 = a1[8];

  return a1;
}

uint64_t *sub_1B071728C(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[5];

  v6 = a1[7];

  v7 = a1[9];

  if (a1[12] != 1)
  {
    v8 = a1[12];

    if (a1[14] != 1)
    {
      if (a1[14])
      {
        v9 = a1[14];

        v10 = a1[15];

        v11 = a1[16];

        v12 = a1[17];
      }

      if (a1[18])
      {
        v13 = a1[18];

        if (a1[21])
        {
          v14 = a1[20];

          v15 = a1[21];
        }
      }
    }
  }

  return a1;
}

uint64_t sub_1B07173D0()
{
  v11 = [objc_opt_self() processInfo];
  inLowPowerMode = [v11 isLowPowerModeEnabled];
  v5 = [objc_opt_self() 0x1FA92D2E8];
  isPluggedIn = [v5 isPluggedIn];
  MEMORY[0x1E69E5920](v5);
  LODWORD(v16) = 0;
  BYTE4(v16) = 1;
  v8 = Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(inLowPowerMode, isPluggedIn, v16);
  v9 = [objc_opt_self() 0x1FA92D2E8];
  v10 = sub_1B07176A0();
  MEMORY[0x1E69E5920](v9);
  v12 = EFProtectedDataAvailable() ^ 1;
  [v11 thermalState];
  v13 = [objc_opt_self() defaultInstance];
  if (v13)
  {
    v4 = v13;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 26;
    LODWORD(v3) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  [v4 unreconciledMessageCount];
  MEMORY[0x1E69E5920](v4);
  v15 = Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(v8, v10, v12);
  MEMORY[0x1E69E5920](v11);
  LOWORD(v14) = v15;
  BYTE2(v14) = BYTE2(v15);
  return v14;
}

uint64_t sub_1B0717708()
{
  LOWORD(v5) = *(v0 + 16);
  BYTE2(v5) = *(v0 + 18);
  result = v5;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

BOOL sub_1B0717754(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = *(a1 + 16);
  BYTE2(v4) = *(a1 + 18);
  LOWORD(v3) = *(a2 + 16);
  BYTE2(v3) = *(a2 + 18);
  return static Environment.__derived_struct_equals(_:_:)(v4, *(a1 + 24), *(a1 + 32), *(a1 + 40), v3, *(a2 + 24), *(a2 + 32), *(a2 + 40));
}

id sub_1B07178A8()
{
  result = sub_1B07178C8();
  qword_1EB6DBAA0 = result;
  return result;
}

id sub_1B07178C8()
{
  _s27ContentProtectionObservableCMa();
  v1 = sub_1B0717918();
  sub_1B0717940();
  return v1;
}

uint64_t sub_1B0717940()
{
  v11 = sub_1B0718144;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v13 = 0;
  v17 = sub_1B0E44238();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v21 = sub_1B0E44288();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v6 - v7;
  v34 = v0;
  MEMORY[0x1E69E5928](v0);
  v9 = v0;
  p_cb = &OBJC_PROTOCOL___EFObserver.cb;
  v8 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue);
  MEMORY[0x1E69E5928](v8);
  EFRegisterContentProtectionObserver();
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  ObservedState = EFContentProtectionGetObservedState();
  v33 = ObservedState;
  v24 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v24);
  v32 = v24;
  v23 = *(v0 + *(p_cb + 326));
  MEMORY[0x1E69E5928](v23);
  MEMORY[0x1E69E5928](v24);
  v1 = swift_allocObject();
  v2 = v11;
  v3 = v1;
  v4 = ObservedState;
  *(v3 + 16) = v24;
  *(v3 + 24) = v4;
  v30 = v2;
  v31 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_3;
  v22 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v13, v20, v16, v22);
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  _Block_release(v22);

  MEMORY[0x1E69E5920](v23);
  return MEMORY[0x1E69E5920](v24);
}

uint64_t *sub_1B0717C58()
{
  if (qword_1EB6DBA90 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBAA0;
}

uint64_t sub_1B0717CB8()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0717D00()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0717D48()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B0717D90()
{
  ObjectType = swift_getObjectType();
  v24 = 0;
  v23 = 0;
  v14 = 0;
  v6 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v6 - v6;
  v7 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v12 = &v6 - v7;
  v8 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v6 - v8;
  v24 = v0;
  v15 = v0;
  sub_1B06CCC58();
  v9 = sub_1B0E44838();
  v10 = v1;
  sub_1B0E44278();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v13);
  *&v15[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_queue] = sub_1B0E45A08();
  v16 = v24;
  v2 = [objc_opt_self() observableObserver];
  *&v16[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer] = v2;
  v17 = *&v24[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observer];
  MEMORY[0x1E69E5928](v17);
  swift_getObjectType();
  v20 = [v17 replay_];
  MEMORY[0x1E69E5920](v17);
  v23 = v20;
  swift_getObjectType();
  v3 = [v20 connect];
  swift_unknownObjectRelease();
  v18 = v24;
  MEMORY[0x1E69E5928](v20);
  swift_getObjectType();
  v4 = ObjectType;
  *&v18[OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable] = v20;
  v22.receiver = v24;
  v22.super_class = v4;
  v21 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x1E69E5928](v21);
  v24 = v21;
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v24);
  return v21;
}

uint64_t sub_1B07180C8(void *a1)
{
  swift_getObjectType();
  sub_1B039A494();
  sub_1B041A044();
  sub_1B041A060(v1);
  [a1 observerDidReceiveResult_];
  return swift_unknownObjectRelease();
}

id sub_1B0718150()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  MEMORY[0x1E69E5928](v0);
  EFUnregisterContentProtectionObserver();
  swift_unknownObjectRelease();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B071826C()
{
  result = sub_1B071828C();
  qword_1EB7381F0 = result;
  return result;
}

id sub_1B071828C()
{
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AB8, &qword_1B0E9AE80);
  sub_1B0E46A48();
  v29 = v0;
  v16 = [objc_opt_self() 0x1FA92D2E8];
  v17 = [v16 lowPowerModeObservable];
  MEMORY[0x1E69E5920](v16);
  *v29 = v17;
  v18 = [objc_opt_self() 0x1FA92D2E8];
  v19 = [v18 pluggedInObservable];
  MEMORY[0x1E69E5920](v18);
  v29[1] = v19;
  v20 = [objc_opt_self() 0x1FA92D2E8];
  v21 = [v20 batteryLevelObservable];
  MEMORY[0x1E69E5920](v20);
  v29[2] = v21;
  v22 = [objc_opt_self() 0x1FA92D2E8];
  v23 = [v22 appIsVisibleObservable];
  MEMORY[0x1E69E5920](v22);
  v29[3] = v23;
  v1 = sub_1B0717C58();
  v24 = *v1;
  MEMORY[0x1E69E5928](*v1);
  v25 = *(v24 + OBJC_IVAR____TtCE7MessageV16IMAP2Persistence11Environment27ContentProtectionObservable_observable);
  MEMORY[0x1E69E5928](v25);
  MEMORY[0x1E69E5920](v24);
  v29[4] = v25;
  v26 = [objc_opt_self() processInfo];
  v27 = [v26 mf_thermalStateObservable];
  MEMORY[0x1E69E5920](v26);
  v29[5] = v27;
  v28 = *sub_1B0718818();

  v30 = *(v28 + 16);
  MEMORY[0x1E69E5928](v30);

  v29[6] = v30;
  v31 = [objc_opt_self() defaultInstance];
  if (v31)
  {
    v14 = v31;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 129;
    LODWORD(v6) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v13 = [v14 unreconciledMessageCountObservable];
  MEMORY[0x1E69E5920](v14);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v29[7] = v12;
  sub_1B0394964();
  v7 = sub_1B0E451A8();

  v9 = [v15 combineLatest_];
  MEMORY[0x1E69E5920](v7);
  v37 = sub_1B0391370;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_1B0391210;
  v36 = &block_descriptor_16_0;
  v8 = _Block_copy(&aBlock);
  v10 = [v9 map_];
  _Block_release(v8);
  MEMORY[0x1E69E5920](v9);
  v11 = [v10 replay];
  MEMORY[0x1E69E5920](v10);
  swift_getObjectType();
  v2 = [v11 connect];
  swift_unknownObjectRelease();
  swift_getObjectType();
  return v11;
}

uint64_t *sub_1B0718818()
{
  if (qword_1EB6DEE60 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DEE68;
}

uint64_t *sub_1B0718878()
{
  if (qword_1EB6DEEB8 != -1)
  {
    swift_once();
  }

  return &qword_1EB7381F0;
}

uint64_t sub_1B07188D8()
{
  v0 = sub_1B0718878();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1B0718910()
{
  result = sub_1B0718930();
  qword_1EB6DEE68 = result;
  return result;
}

uint64_t sub_1B0718930()
{
  _s10ObservableCMa();
  v1 = sub_1B0718980();
  sub_1B07189BC();
  return v1;
}

uint64_t sub_1B07189BC()
{
  v7 = sub_1B0719500;
  v20 = 0;
  v19 = 0;
  v8 = sub_1B0E44238();
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v3 - v9;
  v20 = v0;
  v11 = *(v0 + 24);

  if (v11)
  {
    v6 = v11;
    v5 = v11;
    v19 = v11;
    v4 = *(v11 + 16);
    MEMORY[0x1E69E5928](v4);
    v3[2] = sub_1B0E44458();
    v3[0] = sub_1B0E46A48();
    sub_1B0E44228();
    v2 = v3[0];
    sub_1B0394964();
    v3[1] = v2;
    sub_1B039B924();
    sub_1B0E46028();

    v17 = v7;
    v18 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = 0;
    v15 = sub_1B038C908;
    v16 = &block_descriptor_3;
    _Block_copy(&aBlock);
    v3[3] = sub_1B0E44438();

    sub_1B0E459F8();

    MEMORY[0x1E69E5920](v4);
  }

  return result;
}

uint64_t sub_1B0718BB0()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1B0718BDC()
{
  v46 = sub_1B0719524;
  v22 = sub_1B07193F8;
  v23 = *v0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v24 = 0;
  v50 = 0;
  v40 = 0;
  v25 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v17 - v25;
  v26 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v17 - v26;
  v27 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v17 - v27;
  v43 = sub_1B0E42E68();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v28 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v17 - v28;
  v29 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v28);
  v44 = &v17 - v29;
  v61 = &v17 - v29;
  v60 = v0;
  v31 = NSHomeDirectory();
  sub_1B0E44AD8();
  v30 = v2;
  v32 = 1;
  sub_1B0E42D48();

  MEMORY[0x1E69E5920](v31);
  sub_1B06CCC58();
  v33 = sub_1B0E44838();
  v34 = v3;
  sub_1B0E44278();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v37);
  v4 = sub_1B0E45A08();
  v5 = v38;
  v45 = v4;
  v59 = v4;
  v48 = [objc_opt_self() observableObserver];
  MEMORY[0x1E69E5928](v48);
  v58 = v48;
  MEMORY[0x1E69E5928](v48);
  swift_getObjectType();
  v39 = [v48 replay];
  MEMORY[0x1E69E5920](v48);
  v57 = v39;
  swift_getObjectType();
  v6 = [v39 connect];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v39);
  swift_getObjectType();
  *(v5 + 16) = v39;
  type metadata accessor for DiskSpaceObserver();
  (*(v41 + 16))(v47, v44, v43);
  MEMORY[0x1E69E5928](v45);
  MEMORY[0x1E69E5928](v48);
  v7 = swift_allocObject();
  v8 = v45;
  v9 = v46;
  v10 = v7;
  v11 = v47;
  *(v10 + 16) = v48;
  v49 = sub_1B07100CC(v11, v8, v9, v10);
  MEMORY[0x1E69E5920](v48);
  v56 = v49;
  v55 = v49;
  v21 = v49 == 0;
  if (v49)
  {
    goto LABEL_4;
  }

  v12 = v24;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(1000000000);
  v53 = v13;
  v54 = v14;
  v20 = v51;
  v51[0] = v13;
  v51[1] = v14;
  v15 = sub_1B071952C();
  sub_1B039C030(v20, v22, 0, &unk_1F26AA8E0, MEMORY[0x1E69E73E0], v15, v19, &v52);
  if (!v12)
  {
    v18 = v52;
    v50 = v52;
    v17 = v58;
    MEMORY[0x1E69E5928](v58);
    swift_getObjectType();
    MEMORY[0x1E69E5928](v18);
    [v17 observerDidReceiveResult_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v18);
LABEL_4:

    *(v38 + 24) = v49;

    MEMORY[0x1E69E5920](v39);
    MEMORY[0x1E69E5920](v58);
    MEMORY[0x1E69E5920](v45);
    (*(v41 + 8))(v44, v43);
    return v38;
  }

  MEMORY[0x1E69E5920](*(v38 + 16));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1B07192E4(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[1] = a3;
  v8[0] = a1;
  v8[1] = a2;
  v3 = sub_1B071952C();
  sub_1B039C030(v8, sub_1B07193F8, 0, &unk_1F26AA8E0, MEMORY[0x1E69E73E0], v3, v7, v9);
  v5 = v9[0];
  swift_getObjectType();
  MEMORY[0x1E69E5928](v5);
  [a3 observerDidReceiveResult_];
  swift_unknownObjectRelease();
  return MEMORY[0x1E69E5920](v5);
}

id sub_1B07193F8@<X0>(void *a1@<X8>)
{
  sub_1B071952C();
  v3 = sub_1B0E450C8();
  v1 = sub_1B0E450E8();
  result = sub_1B0719480(v3, v1);
  *a1 = result;
  return result;
}

unint64_t sub_1B071952C()
{
  v2 = qword_1EB6DED80;
  if (!qword_1EB6DED80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DED80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0719590()
{
  v3 = *(v0 + 24);

  if (v3)
  {
    sub_1B070FEF0();
  }

  MEMORY[0x1E69E5920](*(v2 + 16));
  sub_1B0391AD4((v2 + 24));
  return v2;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B0719748()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t _s17EventUpdateHelperVMa()
{
  v1 = qword_1EB6DBDF0;
  if (!qword_1EB6DBDF0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0719834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  updated = _s17EventUpdateHelperVMa();
  return sub_1B04158DC(a3, a4 + *(updated + 20));
}

uint64_t *sub_1B0719880@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v21 = a1;
  v11[1] = a2;
  v5 = v4;
  v14 = v5;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v28 = a3;
  v11[2] = 0;
  v12 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = v11 - v12;
  v13 = (*(*(_s17EventUpdateHelperVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v21);
  v22 = (v11 - v13);
  v27 = v11 - v13;
  v25 = v7;
  v26 = a2;
  v24 = v8;
  v9 = (v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);
  v17 = *v9;
  v18 = v9[1];

  v15 = v14 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v16 = &v23;
  swift_beginAccess();
  sub_1B03F4D78(v15, v19);
  swift_endAccess();
  sub_1B0719834(v17, v18, v19, v22);
  v21(v22);
  return sub_1B0719A40(v22);
}

uint64_t *sub_1B0719A40(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v9 = *(_s17EventUpdateHelperVMa() + 20);
  v3 = sub_1B0E42E68();
  (*(*(v3 - 8) + 8))();
  v10 = _s18MailboxPersistenceVMa();
  MEMORY[0x1E69E5920](*(a1 + v9 + *(v10 + 20)));
  v11 = (a1 + v9 + *(v10 + 24));
  v4 = v11[1];

  v5 = v11[2];

  v6 = v11[3];

  v7 = v11[4];

  return a1;
}

unint64_t sub_1B0719B38(uint64_t a1)
{
  v81 = a1;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v88 = 0;
  v84 = 0;
  v83 = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v17 - v64;
  v66 = sub_1B0E42E68();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v17 - v69;
  v71 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v69);
  v72 = &v17 - v71;
  v73 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v71);
  v74 = &v17 - v73;
  v75 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v81);
  v76 = &v17 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v78 = &v17 - v77;
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v17 - v79;
  v99 = v8;
  v98 = v1;
  objc_opt_self();
  v82 = swift_dynamicCastObjCClass();
  if (v82)
  {
    v57 = v82;
    MEMORY[0x1E69E5928](v82);
    MEMORY[0x1E69E5928](v57);
    v9 = [v57 transferType];
    v60 = &v96;
    v96 = v9;
    v58 = &v95;
    v95 = 2;
    v59 = type metadata accessor for ECTransferMessageActionType();
    v61 = sub_1B071C014();
    if (sub_1B0E46AE8())
    {
      v83 = v57;
      v10 = sub_1B0394868();
      v55 = sub_1B071A9EC(v57, v10 & 1, v62);
      MEMORY[0x1E69E5920](v57);
      MEMORY[0x1E69E5920](v57);
      return v55;
    }

    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5928](v57);
    v94 = [v57 transferType];
    v93 = 3;
    if (sub_1B0E46AE8())
    {
      v84 = v57;
      v11 = sub_1B0394868();
      v54 = sub_1B071B238(v57, v11 & 1, v62);
      MEMORY[0x1E69E5920](v57);
      MEMORY[0x1E69E5920](v57);
      return v54;
    }

    MEMORY[0x1E69E5920](v57);
    v92 = [v57 transferType];
    v91 = 0;
    v53 = sub_1B0E46AE8();
    MEMORY[0x1E69E5928](v57);
    if (v53)
    {
      v52 = 1;
    }

    else
    {
      v90 = [v57 transferType];
      v89 = 1;
      v52 = sub_1B0E46AE8();
    }

    v51 = v52;
    MEMORY[0x1E69E5920](v57);
    if (v51)
    {
      v88 = v57;
      v49 = [v57 itemsToDownload];
      v45 = sub_1B071C094();
      v48 = sub_1B0E451B8();
      v87 = v48;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
      v47 = sub_1B071C0F8();
      v50 = sub_1B0E45748();

      MEMORY[0x1E69E5920](v49);
      if (v50)
      {
        v43 = [v57 itemsToCopy];
        v42 = sub_1B0E451B8();
        v86 = v42;
        v44 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v43);
        if ((v44 & 1) == 0)
        {
          MEMORY[0x1E69E5928](v57);
          v36 = [v57 mailboxURL];
          sub_1B0E42DE8();
          v37 = v67[4];
          v38 = v67 + 4;
          v37(v80, v74, v66);
          MEMORY[0x1E69E5920](v57);
          v39 = v67[7];
          v40 = v67 + 7;
          v39(v80, 0, 1, v66);
          v41 = [v57 destinationMailboxURL];
          if (v41)
          {
            v35 = v41;
            v34 = v41;
            sub_1B0E42DE8();
            v37(v78, v72, v66);
            v39(v78, 0, 1, v66);
            MEMORY[0x1E69E5920](v34);
          }

          else
          {
            v39(v78, 1, 1, v66);
          }

          v31 = &v65[*(v63 + 48)];
          sub_1B071C180(v80, v65);
          sub_1B071C180(v78, v31);
          v32 = v67[6];
          v33 = v67 + 6;
          if (v32(v65, 1, v66) == 1)
          {
            if (v32(v31, 1, v66) == 1)
            {
              sub_1B06E3800(v65);
              v30 = 1;
              goto LABEL_21;
            }
          }

          else
          {
            sub_1B071C180(v65, v76);
            if (v32(v31, 1, v66) != 1)
            {
              v37(v72, v76, v66);
              v37(v70, v31, v66);
              sub_1B071C3D4();
              v29 = sub_1B0E44A28();
              v28 = v67[1];
              v27 = v67 + 1;
              v28(v70, v66);
              v28(v72, v66);
              sub_1B06E3800(v65);
              v30 = v29;
              goto LABEL_21;
            }

            (v67[1])(v76, v66);
          }

          sub_1B071C2A8(v65);
          v30 = 0;
LABEL_21:
          v26 = v30;
          sub_1B06E3800(v78);
          sub_1B06E3800(v80);
          MEMORY[0x1E69E5920](v36);
          if (v26)
          {
            v12 = sub_1B0394868();
            v25 = sub_1B071A9EC(v57, v12 & 1, v62);
            MEMORY[0x1E69E5920](v57);
            return v25;
          }

          else
          {
            v13 = sub_1B0394868();
            v24 = sub_1B071B78C(v57, v13 & 1, v62);
            MEMORY[0x1E69E5920](v57);
            return v24;
          }
        }

        v22 = [v57 itemsToDelete];
        v21 = sub_1B0E451B8();
        v85 = v21;
        v23 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v22);
        if ((v23 & 1) == 0)
        {
          v14 = sub_1B0394868();
          v20 = sub_1B071BD08(v57, v14 & 1, v62);
          MEMORY[0x1E69E5920](v57);
          return v20;
        }
      }

      MEMORY[0x1E69E5920](v57);
      return 0xF000000000000007;
    }

    MEMORY[0x1E69E5920](v57);
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    return 0xF000000000000007;
  }

  v17 = v19;
  MEMORY[0x1E69E5928](v19);
  v97 = v17;
  v15 = sub_1B0394868();
  v18 = sub_1B071BD08(v17, v15 & 1, v62);
  MEMORY[0x1E69E5920](v17);
  return v18;
}

uint64_t *sub_1B071A9EC(void *a1, int a2, uint64_t a3)
{
  v63 = a3;
  v65 = a2;
  v64 = a1;
  v55 = a2;
  v58 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v56 = 0;
  v75 = 0;
  v3 = _s18MailboxPersistenceVMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v58);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v25 - v61;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v25 - v61;
  v66 = sub_1B0E42E68();
  v67 = *(v66 - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  v7 = MEMORY[0x1EEE9AC00](v64);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v25 - v71;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v72 = &v25 - v71;
  v83 = &v25 - v71;
  v82 = v8;
  v81 = v9;
  v80 = v10;
  v73 = [v8 destinationMailboxURL];
  if (v73)
  {
    v54 = v73;
    v53 = v73;
    sub_1B0E42DE8();
    (*(v68 + 32))(v62, v70, v66);
    (*(v68 + 56))(v62, 0, 1, v66);
  }

  else
  {
    (*(v68 + 56))(v62, 1, 1, v66);
  }

  if ((*(v68 + 48))(v62, 1, v66) == 1)
  {
    sub_1B06E3800(v62);
LABEL_14:
    v28 = 0xF000000000000007;
    v29 = v56;
    return v28;
  }

  v11 = v57;
  (*(v68 + 32))(v72, v62, v66);
  updated = _s17EventUpdateHelperVMa();
  sub_1B03F4D78(v63 + *(updated + 20), v11);
  (*(v68 + 16))(v60, v72, v66);
  (*(v68 + 56))(v60, 0, 1, v66);
  v52 = sub_1B07BF5C8(v60);
  v50 = v52;
  v51 = v13;
  sub_1B06E3800(v60);
  sub_1B03F4F08(v57);
  if (!v52)
  {
    (*(v68 + 8))(v72, v66);
    goto LABEL_14;
  }

  v48 = v50;
  v49 = v51;
  v14 = v56;
  v38 = v51;
  v39 = v50;
  v78 = v50;
  v79 = v51;
  v41 = [v64 itemsToCopy];
  v40 = v41;
  v42 = sub_1B071C094();
  v77 = sub_1B0E451B8();
  v15 = v64;
  v43 = &v25;
  MEMORY[0x1EEE9AC00](&v25);
  v44 = &v25 - 4;
  *(&v25 - 2) = v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v17 = sub_1B0E44F58();
  v46 = v14;
  v47 = v17;
  if (!v14)
  {
    v32 = v47;

    sub_1B039E440(&v77);
    v76 = v32;
    v33 = &v25;
    MEMORY[0x1EEE9AC00](&v25);
    v34 = &v25 - 4;
    *(&v25 - 2) = v18;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    sub_1B071CD70();
    v19 = sub_1B0E44F58();
    v36 = 0;
    v37 = v19;
    v30 = v19;
    sub_1B039E440(&v76);
    v75 = v30;
    v74 = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
    sub_1B071CDF8();
    if (sub_1B0E45748())
    {

      (*(v68 + 8))(v72, v66);
      v28 = 0xF000000000000007;
    }

    else
    {
      v26 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = v38;
      v21 = v26;
      *(v26 + 16) = v39;
      *(v21 + 24) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = v55;
      v23 = v26;
      *(v26 + 32) = v30;
      *(v23 + 40) = v22 & 1;
      v27 = v23 | 0x7000000000000000;

      (*(v68 + 8))(v72, v66);
      v28 = v27;
    }

    v29 = v36;
    return v28;
  }

  __break(1u);
  result = v33;
  __break(1u);
  return result;
}

unint64_t sub_1B071B238(uint64_t a1, int a2, uint64_t a3)
{
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v40 = 0;
  v3 = _s18MailboxPersistenceVMa();
  v38 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v30 - v38;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v30 - v41;
  v43 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v30 - v43;
  v48 = sub_1B0E42E68();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v30 - v51;
  v53 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v30 - v53;
  v63 = &v30 - v53;
  v62 = v8;
  v61 = v9 & 1;
  v60 = v10;
  v55 = [v8 sourceMailboxURL];
  if (v55)
  {
    v37 = v55;
    v36 = v55;
    sub_1B0E42DE8();
    (*(v49 + 32))(v44, v52, v48);
    (*(v49 + 56))(v44, 0, 1, v48);
    MEMORY[0x1E69E5920](v36);
  }

  else
  {
    (*(v49 + 56))(v44, 1, 1, v48);
  }

  if ((*(v49 + 48))(v44, 1, v48) == 1)
  {
    sub_1B06E3800(v44);
    return 0xF000000000000007;
  }

  v11 = v39;
  (*(v49 + 32))(v54, v44, v48);
  updated = _s17EventUpdateHelperVMa();
  sub_1B03F4D78(v45 + *(updated + 20), v11);
  (*(v49 + 16))(v42, v54, v48);
  (*(v49 + 56))(v42, 0, 1, v48);
  sub_1B07BF670(v42, &v58);
  sub_1B06E3800(v42);
  sub_1B03F4F08(v39);
  v35 = v58;
  if (v59)
  {
    (*(v49 + 8))(v54, v48);
    return 0xF000000000000007;
  }

  v34 = v35;
  v30 = v35;
  v57 = v35;
  v31 = swift_allocObject();
  v56 = v30;
  v20 = sub_1B0A22770(&v56, v13, v14, v15, v16, v17, v18, v19);
  v21 = v31;
  *(v31 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = sub_1B0E46A48();
  v24 = v31;
  v25 = v49;
  v26 = v48;
  v27 = v23;
  v28 = v54;
  *(v31 + 32) = v27;
  *(v24 + 40) = 0;
  v32 = v24 | 0x8000000000000000;
  (*(v25 + 8))(v28, v26);
  return v32;
}

unint64_t sub_1B071B78C(uint64_t a1, int a2, uint64_t a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v33 = 0;
  v3 = _s18MailboxPersistenceVMa();
  v31 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v19[-v31];
  v34 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v33);
  v35 = &v19[-v34];
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v19[-v36];
  v41 = sub_1B0E42E68();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v19[-v44];
  v46 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v19[-v46];
  v54 = &v19[-v46];
  v53 = v8;
  v52 = v9 & 1;
  v51 = v10;
  v48 = [v8 sourceMailboxURL];
  if (v48)
  {
    v30 = v48;
    v29 = v48;
    sub_1B0E42DE8();
    (*(v42 + 32))(v37, v45, v41);
    (*(v42 + 56))(v37, 0, 1, v41);
    MEMORY[0x1E69E5920](v29);
  }

  else
  {
    (*(v42 + 56))(v37, 1, 1, v41);
  }

  if ((*(v42 + 48))(v37, 1, v41) == 1)
  {
    sub_1B06E3800(v37);
    return 0xF000000000000007;
  }

  v11 = v32;
  (*(v42 + 32))(v47, v37, v41);
  updated = _s17EventUpdateHelperVMa();
  sub_1B03F4D78(v38 + *(updated + 20), v11);
  (*(v42 + 16))(v35, v47, v41);
  (*(v42 + 56))(v35, 0, 1, v41);
  v28 = sub_1B07BF5C8(v35);
  v27 = v13;
  sub_1B06E3800(v35);
  sub_1B03F4F08(v32);
  if (!v28)
  {
    (*(v42 + 8))(v47, v41);
    return 0xF000000000000007;
  }

  v25 = v28;
  v26 = v27;
  v20 = v27;
  v22 = v28;
  v49 = v28;
  v50 = v27;
  v21 = swift_allocObject();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = v21;
  v15 = v20;
  *(v21 + 16) = v22;
  *(v14 + 24) = v15;
  v16 = sub_1B0E46A48();
  v17 = v21;
  *(v21 + 32) = v16;
  *(v17 + 40) = 0;
  v23 = v17 | 0x9000000000000000;

  (*(v42 + 8))(v47, v41);
  return v23;
}

unint64_t sub_1B071BD08(void *a1, int a2, uint64_t a3)
{
  v32 = a1;
  v28 = a2;
  v31 = a3;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v43 = 0;
  v29 = 0;
  v37 = sub_1B0E42E68();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v26 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v21 - v26;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v38 = &v21 - v27;
  v30 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v21 - v30;
  v40 = &v21 - v30;
  v48 = v4;
  v36 = 1;
  v47 = v5 & 1;
  v46 = v6;
  updated = _s17EventUpdateHelperVMa();
  sub_1B03F4D78(v31 + *(updated + 20), v3);
  v39 = [v32 mailboxURL];
  sub_1B0E42DE8();
  (*(v34 + 32))(v38, v33, v37);
  (*(v34 + 56))(v38, 0, v36, v37);
  sub_1B07BF670(v38, &v44);
  sub_1B06E3800(v38);
  MEMORY[0x1E69E5920](v39);
  sub_1B03F4F08(v40);
  v41 = v44;
  if (v45)
  {
    return 0xF000000000000007;
  }

  v25 = v41;
  v22 = v41;
  v43 = v41;
  v23 = swift_allocObject();
  v42 = v22;
  v15 = sub_1B0A22770(&v42, v8, v9, v10, v11, v12, v13, v14);
  v16 = v23;
  *(v23 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = sub_1B0E46A48();
  v19 = v23;
  *(v23 + 32) = v18;
  *(v19 + 40) = 0;
  return v19 | 0x8000000000000000;
}

unint64_t sub_1B071C014()
{
  v2 = qword_1EB6DA7D0;
  if (!qword_1EB6DA7D0)
  {
    type metadata accessor for ECTransferMessageActionType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071C094()
{
  v2 = qword_1EB6DA7E0;
  if (!qword_1EB6DA7E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA7E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B071C0F8()
{
  v2 = qword_1EB6DAED0;
  if (!qword_1EB6DAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAED0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B071C180(const void *a1, void *a2)
{
  v6 = sub_1B0E42E68();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B071C2A8(uint64_t a1)
{
  v4 = sub_1B0E42E68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1B071C3D4()
{
  v2 = qword_1EB6DED30;
  if (!qword_1EB6DED30)
  {
    sub_1B0E42E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071C454()
{
  sub_1B071C540();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B071CEA8();
  sub_1B0E44FD8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return v1;
}

uint64_t sub_1B071C540()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B071C594(uint64_t a1, uint64_t *a2)
{
  result = sub_1B0719B38(*a2);
  if ((result & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1B071C644(result);
  }

  return result;
}

uint64_t sub_1B071C644(unint64_t a1)
{
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v27 = a1;
  if ((((a1 & 4) != 0) | (a1 >> 59) & 0x1E) == 0xE)
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v12 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v13 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = v11;
    v24 = v12;
    v22 = v13;
    v14 = *v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
    v1 = sub_1B071CF30();
    MEMORY[0x1B2727080](&v20, v15, v1);
    sub_1B039E440(&v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AE0, &qword_1B0E9AEC8);
    sub_1B0E465F8();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1AE8, &unk_1B0E9AED0);
      sub_1B0E46608();
      if ((v18 & 0xF000000000000007) == 0xF000000000000007)
      {
        break;
      }

      if ((((v18 & 4) != 0) | (v18 >> 59) & 0x1E) == 0xE)
      {
        v9 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v10 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v8 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((v12 | (v12 << 32)) == (v10 | (v10 << 32)))
        {
          v7 = sub_1B04520BC(v11, v9);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {

          v5 = swift_allocObject();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v5 + 16) = v11;
          *(v5 + 24) = v12;
          *(v5 + 32) = sub_1B0E45238();
          *(v5 + 40) = 0;
          v6 = sub_1B0E45398();
          v3 = *v2;
          *v2 = v5 | 0x7000000000000000;

          v6();

          sub_1B039E440(v21);
        }
      }

      else
      {
      }
    }

    sub_1B039E440(v21);
  }

  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
  return sub_1B0E452E8();
}

uint64_t sub_1B071CB08@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v7);
  result = sub_1B0824FC8(a2, v7);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

unint64_t sub_1B071CBBC()
{
  v2 = qword_1EB6DAEE0;
  if (!qword_1EB6DAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071CC44@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v5 = *a2;
  v6 = a2[1];

  sub_1B071D380();
  v7 = sub_1B092A8B0();
  v9 = v3;

  result = v7;
  *a3 = v7;
  a3[1] = v9;
  return result;
}

unint64_t sub_1B071CD70()
{
  v2 = qword_1EB6DB140;
  if (!qword_1EB6DB140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD0, &qword_1B0E9DE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CDF8()
{
  v2 = qword_1EB6DB348;
  if (!qword_1EB6DB348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1AD8, &unk_1B0E9AEB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CEA8()
{
  v2 = qword_1EB6DAF60;
  if (!qword_1EB6DAF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B071CF30()
{
  v2 = qword_1EB6DB338;
  if (!qword_1EB6DB338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E36B0, &qword_1B0E9AEC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071D008()
{
  v2 = _s18MailboxPersistenceVMa();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B071D0C4(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B071D114(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return *(a3 + 32 + a1);
  }

  result = sub_1B071D1A4(a1, a3);
  __break(1u);
  return result;
}

uint64_t sub_1B071D1A4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  return v6;
}

unint64_t sub_1B071D380()
{
  v2 = qword_1EB6DBBE0;
  if (!qword_1EB6DBBE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B071D410(uint64_t a1, uint64_t a2)
{
  LODWORD(var10_4) = HIDWORD(a1);
  *(&var10_4 + 4) = a2;
  LOBYTE(v3) = BYTE4(a1);
  *(&v3 + 1) = *(&var10_4 + 1);
  return v3;
}

uint64_t sub_1B071D490(uint64_t result, char a2)
{
  *(v2 + 4) = result;
  *(v2 + 12) = a2 & 1;
  return result;
}

BOOL sub_1B071D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v9 = HIDWORD(a1);
  *&v9[4] = a2;
  v6[0] = BYTE4(a1);
  *&v6[1] = *&v9[1];
  *v8 = HIDWORD(a3);
  *&v8[4] = a4;
  v7[0] = BYTE4(a3);
  *&v7[1] = *&v8[1];
  sub_1B0714E4C();
  return (sub_1B0E45ED8() & 1) != 0 && (static Flags.__derived_struct_equals(_:_:)(*v6, v9[8] & 1, __SPAIR64__(*&v8[4], *v7), v8[8] & 1) & 1) != 0;
}

BOOL sub_1B071D658(void *a1, void *a2)
{
  *&v5 = *a1;
  *(&v5 + 5) = *(a1 + 5);
  *&v6 = *a2;
  *(&v6 + 5) = *(a2 + 5);
  LODWORD(v4) = *(&v5 + 5) >> 24;
  BYTE4(v4) = BYTE12(v5);
  LODWORD(v3) = *(&v6 + 5) >> 24;
  BYTE4(v3) = BYTE12(v6);
  return sub_1B071D4CC(v5, v4, v6, v3);
}

uint64_t sub_1B071D75C(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v47 = a2;
  v64 = 0;
  v67 = sub_1B071E4DC;
  v44 = sub_1B071E5E4;
  v45 = sub_1B071E8EC;
  v46 = sub_1B071EFF8;
  v58 = *v2;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v72 = 0u;
  v73 = 0u;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v63);
  v50 = &v26 - v49;
  v51 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v26 - v51;
  v84 = &v26 - v51;
  v53 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v26 - v53;
  v55 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v26 - v55;
  v83 = &v26 - v55;
  v57 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v26 - v57;
  v82 = &v26 - v57;
  v81 = v11;
  v80 = v12;
  v79 = v2;
  sub_1B071DE90(v11, &v26 - v57);
  v61 = sub_1B071DFC8(v62);
  v78 = v61;
  v60 = sub_1B071E140(v63, v61);
  v77 = v60;
  sub_1B071E2CC(v60);

  sub_1B03D09B8(v62);
  v76[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  v13 = sub_1B071E55C();
  v14 = v66;
  v68 = v13;
  result = sub_1B0E44FF8();
  v69 = v14;
  v70 = result;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  v76[0] = v70;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v17 = v69;
  v41 = v16;
  result = sub_1B0E44F58();
  v42 = v17;
  v43 = result;
  if (v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v38 = v43;
  sub_1B039E440(v76);
  v75 = v38;
  v37 = *(v59 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v37);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = sub_1B0E451A8();

  [v37 applySortedFlags_];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);

  v74 = v63;
  v39 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v39);
  v18 = v42;
  result = sub_1B0E44FD8();
  v40 = v18;
  if (v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v72 = sub_1B071E964(v56, v47);
  *(&v72 + 1) = v19;
  *&v73 = v20;
  *(&v73 + 1) = v21;
  v71 = v63;
  MessageIdentifierSet.init()(&type metadata for UID, v39);
  v22 = v40;
  result = sub_1B0E44FD8();
  v35 = v22;
  if (!v22)
  {
    v27 = sub_1B071F1B0(v52, v47);
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v34 = &v72;
    sub_1B07B56DC(v27, v23, v24, v25);

    v33 = *(v59 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    MEMORY[0x1E69E5928](v33);
    v31 = v72;
    v32 = v73;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B639C(v31, *(&v31 + 1), v32, *(&v32 + 1), v47);

    MEMORY[0x1E69E5920](v33);
    sub_1B03D09B8(v52);
    sub_1B071F9F0(v34);
    return sub_1B03D09B8(v56);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B071DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v10 = 0;
  v9 = sub_1B071FA40;
  v16 = 0;
  v15 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v5 - v7;
  v16 = MEMORY[0x1EEE9AC00](v6);
  v15 = v2;
  v14 = v16;
  v3 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  sub_1B071E55C();
  return sub_1B0E44FD8();
}

uint64_t sub_1B071DFC8(uint64_t a1)
{
  v7 = 0;
  v9 = a1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B20, &qword_1B0E9AF60);
  sub_1B0E46A48();
  sub_1B071FB18();
  sub_1B043CF70();
  v7 = sub_1B0E445D8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2 = sub_1B0721160();
  sub_1B0829BE8(a1, v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  sub_1B0746680();
  sub_1B0E45018();
  v4 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B039E440(&v7);
  return v4;
}

uint64_t sub_1B071E140(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v12 = 0;
  v17[3] = 0;
  v17[5] = a1;
  v17[4] = a2;
  v17[2] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
  v11 = v13;
  v14 = sub_1B071E55C();
  v15 = 0;
  v16 = sub_1B0E44FF8();
  v17[0] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v5;
  MEMORY[0x1EEE9AC00](&v5);
  v8 = v4;
  v4[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  v9 = sub_1B0E44F58();
  v6 = v9;

  sub_1B039E440(v17);
  return v6;
}

uint64_t sub_1B071E2CC(uint64_t a1)
{
  v8 = a1;
  v17 = 0;
  v16 = 0;
  v9 = sub_1B0E42E68();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v4 - v12;
  v17 = MEMORY[0x1EEE9AC00](v8);
  v16 = v1;
  v15 = v17;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B40, &unk_1B0E9AF70);
  sub_1B0746730();
  result = sub_1B0E45748();
  if ((result & 1) == 0)
  {
    v3 = v13;
    v6 = *(v7 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
    MEMORY[0x1E69E5928](v6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
    v5 = sub_1B0E451A8();

    (*(v10 + 16))(v3, v7 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v9);
    v4 = sub_1B0E42D58();
    (*(v10 + 8))(v13, v9);
    [v6 reflectSortedFlagChanges:v5 mailboxURL:v4];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
    return MEMORY[0x1E69E5920](v6);
  }

  return result;
}

BOOL sub_1B071E4DC(_DWORD *a1, _DWORD *a2)
{
  v9 = 0;
  v8 = 0;
  v2 = *a1;
  v9 = a1;
  v3 = *a2;
  v8 = a2;
  v7 = v2;
  v6 = v3;
  v4 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v7, &v6, &type metadata for UID, v4);
}

unint64_t sub_1B071E55C()
{
  v2 = qword_1EB6DB368;
  if (!qword_1EB6DB368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1B00, &unk_1B0E9AF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB368);
    return WitnessTable;
  }

  return v2;
}

id sub_1B071E5E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  LODWORD(v4) = *a1;
  *(&v4 + 4) = *(a1 + 4);
  BYTE12(v4) = *(a1 + 12);
  result = sub_1B071E668(v4, *(&v4 + 1), *(a1 + 16));
  *a2 = result;
  return result;
}

id sub_1B071E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v9 = a1;
  v10 = *(&v19 + 4);
  v11 = BYTE4(a2);
  v15 = a1;
  v16 = *(&v19 + 4);
  v17 = BYTE4(a2);
  v18 = a3;
  if (BYTE4(a1) == 2)
  {
    return 0;
  }

  v13 = *(&v19 + 4) & 0xFFFFFFFF01010101;
  v14 = BYTE4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  sub_1B039A494();
  v12[0] = v9;
  v6 = sub_1B07467B8();
  v3 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v12, MEMORY[0x1E69E7668], &type metadata for UID, v6, v3);
  v7 = sub_1B074A93C(v12[1]);
  sub_1B071FB18();
  v4 = sub_1B074A9DC(v10 & 0xFFFFFFFF01010101, v11);
  return sub_1B074A97C(v7, v4);
}

BOOL sub_1B071E8EC(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  v8 = a1;
  v2 = *a2;
  v7 = a2;
  v5 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
}

uint64_t sub_1B071E964(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v53 = a1;
  v55 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v54 = 0;
  v72 = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v56 = v63;
  v58 = *(*(v63 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](0);
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v25 - v60;
  v79 = &v25 - v60;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v25 - v60;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v25 - v60;
  v78 = &v25 - v60;
  v65 = sub_1B0E42E68();
  v66 = *(v65 - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v69 = &v25 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v69;
  v76 = a1;
  v75 = v5;
  v74 = v6;
  if (MessageIdentifierSet.isEmpty.getter())
  {
    v38 = sub_1B07B681C();
    v39 = v21;
    v40 = v22;
    v41 = v23;
    v42 = v54;
    return v38;
  }

  v7 = v54;
  (*(v67 + 16))(v69, v62 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v65);
  v73 = v64;
  v47 = &v25;
  MEMORY[0x1EEE9AC00](&v25);
  v48 = &v25 - 4;
  *(&v25 - 2) = v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v50 = sub_1B074AC8C();
  sub_1B071CEA8();
  v9 = sub_1B0E44F58();
  v51 = v7;
  v52 = v9;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v44 = v52;
  v72 = v52;
  v71 = v52;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
  v45 = v46;
  sub_1B074ACF0();
  if (sub_1B0E45748())
  {
    v26 = sub_1B07B681C();
    v27 = v18;
    v28 = v19;
    v29 = v20;

    (*(v67 + 8))(v69, v65);
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v51;
    return v38;
  }

  v10 = v51;
  v70 = v44;
  v11 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v11);

  sub_1B074AD9C();
  sub_1B0E44FD8();
  v43 = v10;
  if (!v10)
  {

    MessageIdentifierSet.intersection(_:)(v61, v57);
    if (MessageIdentifierSet.isEmpty.getter())
    {
      v30 = sub_1B07B681C();
      v31 = v15;
      v32 = v16;
      v33 = v17;
      sub_1B03D09B8(v57);
      sub_1B03D09B8(v61);

      (*(v67 + 8))(v69, v65);
      v38 = v30;
      v39 = v31;
      v40 = v32;
      v41 = v33;
    }

    else
    {
      v34 = sub_1B07207E0(v57, v44);
      v35 = v12;
      v36 = v13;
      v37 = v14;
      sub_1B03D09B8(v57);
      sub_1B03D09B8(v61);

      (*(v67 + 8))(v69, v65);
      v38 = v34;
      v39 = v35;
      v40 = v36;
      v41 = v37;
    }

    v42 = v43;
    return v38;
  }

LABEL_13:

  __break(1u);
  return result;
}

uint64_t sub_1B071EFF8(uint64_t a1, int *a2)
{
  v13 = 0uLL;
  v14 = 0;
  v15 = a1;
  v7 = *a2;
  v2 = *(a2 + 1);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2);
  LODWORD(v13) = v7;
  *(&v13 + 4) = v2;
  BYTE12(v13) = v3;
  v14 = v4;
  *v10 = v7;
  *&v10[4] = v2;
  v11 = v3;
  v12 = v4;
  result = sub_1B071F0D0(*v10);
  if (result)
  {
    v8 = v7;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v6);
  }

  return result;
}

uint64_t sub_1B071F0D0(uint64_t a1)
{
  if (BYTE4(a1) == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = BYTE5(a1) & 1;
  }

  if (v3 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2 & 1;
}

uint64_t sub_1B071F1B0(uint64_t a1, uint64_t a2)
{
  v69 = &v92;
  v73 = a2;
  v70 = a1;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v71 = 0;
  v103 = 0u;
  v102 = 0u;
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v74 = sub_1B0E42E68();
  v75 = *(v74 - 8);
  v76 = v75;
  v78 = *(v75 + 64);
  v77 = v78;
  MEMORY[0x1EEE9AC00](v74 - 8);
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = &v21 - v80;
  MEMORY[0x1EEE9AC00](&v21 - v80);
  v81 = &v21 - v80;
  v130 = &v21 - v80;
  v129 = a1;
  v128 = v3;
  v127 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.isEmpty.getter())
  {
    v26 = sub_1B07B681C();
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v71;
    return v26;
  }

  v5 = v71;
  v52 = *(v76 + 16);
  v51 = v76 + 16;
  v46 = v52;
  v47 = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v81, (v72 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v74);
  v119[1] = v73;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v48 = v49;
  v50 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v119, v49);
  v118 = v119[0];
  v52(v79, v81, v74);
  v53 = *(v76 + 80);
  v54 = (v53 + 16) & ~v53;
  v61 = swift_allocObject();
  v55 = *(v76 + 32);
  v56 = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v55(v61 + v54, v79, v74);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v57 = v58;
  v63 = 0;
  v59 = sub_1B074AEA4();
  v60 = sub_1B074AF08();
  v62 = &v118;
  sub_1B0E46718();

  sub_1B039E440(v62);
  v111 = v119[2];
  v112 = v119[3];
  v113 = v119[4];
  v114 = v119[5];
  v115 = v119[6];
  v116 = v119[7];
  v117 = v119[8];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  sub_1B0E46738();
  v6 = v69;
  v69[34] = v120;
  v7 = v121;
  v8 = v122;
  v126 = v124;
  v6[37] = v123;
  v6[36] = v8;
  v6[35] = v7;
  v6[14] = v6[34];
  v9 = v6[35];
  v10 = v6[36];
  v11 = v6[37];
  v108 = v126;
  v6[17] = v11;
  v6[16] = v10;
  v6[15] = v9;
  v104 = sub_1B07B681C();
  v105 = v12;
  v106 = v13;
  v107 = v14;
  v65 = &v21;
  MEMORY[0x1EEE9AC00](&v21);
  v66 = &v21 - 4;
  *(&v21 - 2) = v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B78, &qword_1B0E9AF98);
  sub_1B074B040();
  sub_1B0E44FD8();
  v68 = v5;
  if (!v5)
  {
    v40 = v109;
    v31 = v109;
    v41 = v110;
    v32 = v110;
    v102 = v109;
    v103 = v110;
    v97[1] = v73;
    MEMORY[0x1B27270C0](v97, v48, v50);
    v96 = v97[0];
    v46(v79, v81, v74);
    v33 = (v53 + 16) & ~v53;
    v34 = swift_allocObject();
    v55(v34 + v33, v79, v74);
    sub_1B074AC8C();
    v35 = &v96;
    sub_1B0E46718();

    sub_1B039E440(v35);
    v36 = v98;
    v37 = v99;
    v38 = v100;
    v39 = v101;
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v84 = v98;
    v85 = v99;
    v86 = v100;
    v87 = v101;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v82 = v40;
    v83 = v41;

    v42 = &v21;
    MEMORY[0x1EEE9AC00](&v21);
    v43 = &v21 - 4;
    *(&v21 - 2) = v72;
    *(&v21 - 1) = v16;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B88, &unk_1B0E9AFA0);
    sub_1B074B174();
    sub_1B0E44FD8();
    v45 = 0;

    v22 = v88;
    v23 = v89;
    v24 = v90;
    v25 = v91;

    sub_1B074B1FC(v125);
    (*(v76 + 8))(v81, v74);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v45;
    return v26;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t *sub_1B071F9F0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  return a1;
}

uint64_t sub_1B071FA40(uint64_t a1, int *a2)
{
  v13 = 0uLL;
  v14 = 0;
  v15 = a1;
  v7 = *a2;
  v2 = *(a2 + 1);
  v3 = *(a2 + 12);
  v4 = *(a2 + 2);
  LODWORD(v13) = v7;
  *(&v13 + 4) = v2;
  BYTE12(v13) = v3;
  v14 = v4;
  *v10 = v7;
  *&v10[4] = v2;
  v11 = v3;
  v12 = v4;
  result = sub_1B071F0D0(*v10);
  if ((result & 1) == 0)
  {
    v8 = v7;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v6);
  }

  return result;
}

unint64_t sub_1B071FB18()
{
  v2 = qword_1EB6DABE0;
  if (!qword_1EB6DABE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DABE0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B071FB7C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 12);
  v11 = *(a1 + 2);
  LODWORD(v14) = *a1;
  HIDWORD(v14) = v9;
  result = sub_1B071F0D0(v14);
  if (result)
  {
    *a2 = 0;
  }

  else
  {
    sub_1B071FB18();
    sub_1B043CF70();
    sub_1B0E44778();
    LODWORD(v12) = v8;
    *(&v12 + 4) = v9;
    BYTE12(v12) = v10;
    v6 = sub_1B071FDF4(v12, *(&v12 + 1), v11, v13);
    (MEMORY[0x1E69E5920])();
    MEMORY[0x1E69E5928](v6);
    if (v6)
    {
      v4 = [v6 second];
      MEMORY[0x1E69E5920](v6);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v3 = [v5 hasChanges];
      if (v3)
      {
        MEMORY[0x1E69E5928](v6);
        *a2 = v6;
        MEMORY[0x1E69E5920](v5);
        return MEMORY[0x1E69E5920](v6);
      }

      MEMORY[0x1E69E5920](v5);
    }

    *a2 = 0;
    return MEMORY[0x1E69E5920](v6);
  }

  return result;
}

id sub_1B071FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v15 = 0;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27 = a3;
  v12 = a1;
  v13 = BYTE4(a2);
  v22 = a1;
  v23 = *(&v26 + 4);
  v24 = BYTE4(a2);
  v25 = a3;
  v21 = a4;
  if (BYTE4(a1) == 2)
  {
    return 0;
  }

  v19 = *(&v26 + 4) & 0xFFFFFFFF01010101;
  v20 = BYTE4(a2);
  MEMORY[0x1E69E5928](a4);
  if (!a4)
  {
    return 0;
  }

  v18 = a4;
  sub_1B074B258();
  MEMORY[0x1E69E5928](a4);
  v16 = *(&v26 + 4) & 0xFFFFFFFF01010101;
  v17 = v13;
  v8 = sub_1B074A67C(*(&v26 + 4) & 0xFFFFFFFF01010101, v13, a4);
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B10, &unk_1B0E9C4B0);
  sub_1B039A494();
  v14[0] = v12;
  v6 = sub_1B07467B8();
  v4 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v14, MEMORY[0x1E69E7668], &type metadata for UID, v6, v4);
  v7 = sub_1B074A93C(v14[1]);
  MEMORY[0x1E69E5928](v8);
  v9 = sub_1B074A97C(v7, v8);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](a4);
  return v9;
}

id sub_1B072011C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_1B0720178(a2);
  *a3 = result;
  return result;
}

id sub_1B0720178(uint64_t a1)
{
  v11 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v17);
  v16 = &v4 - v15;
  v21 = v2;
  v20 = v1;
  MEMORY[0x1E69E5928](v1);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v10 = v18;
  }

  else
  {
    MEMORY[0x1E69E5920](v17);
    v10 = 0;
  }

  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v8 = v9;
  v5 = v9;
  v19 = v9;
  MEMORY[0x1E69E5928](v9);
  v6 = [v5 mailboxURL];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v5);
  v7 = sub_1B0E42DB8();
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1E69E5920](v6);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v5);
    return 0;
  }

  return v5;
}

uint64_t sub_1B0720380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v3 = _s6LoggerVMa_1();
  v9[0] = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = v9 - v9[0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11);
  v14 = v9 - v10;
  v17 = v4;
  v16 = *v5;
  v15 = v6;
  sub_1B074B69C(v6 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v7);
  sub_1B07204E0(v12, v14);
  sub_1B074B764(v12);
  MessageIdentifierSet.formUnion(_:)(v14, v13);
  return sub_1B03D09B8(v14);
}

uint64_t sub_1B07204E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v14 = a2;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = v26;
  v18 = *(*(v26 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v9 - v19;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v9 - v19;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v24 = &v9 - v19;
  v20 = &v9 - v19;
  v34 = &v9 - v19;
  v33 = v5;
  v32 = v4;
  v22 = [v4 messages];
  v21 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B90, &qword_1B0E9AFB0);
  v31 = sub_1B0E451B8();
  v6 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v6);
  v29 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B98, &qword_1B0E9AFB8);
  sub_1B074B2E4();
  sub_1B0E44FD8();
  v28 = 0;
  sub_1B039E440(&v31);

  v10 = [v15 remoteIDs];
  v30 = sub_1B0E453F8();
  sub_1B03D08AC(v20, v17);
  v11 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v12 = &v9 - 4;
  *(&v9 - 2) = v7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BA8, &qword_1B0E9AFC0);
  sub_1B074B394();
  sub_1B0E44FD8();
  sub_1B039E440(&v30);

  return sub_1B03D09B8(v20);
}

uint64_t sub_1B07207E0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v76 = a1;
  v77 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v95 = 0;
  v93 = 0;
  v83 = 0u;
  v82 = 0u;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v70 = v75;
  v71 = *(*(v75 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v76);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v30 - v73;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v74 = &v30 - v73;
  v100 = &v30 - v73;
  v99 = v4;
  v98 = v5;
  v97 = v2;
  v6 = sub_1B0721160();
  v96 = sub_1B0829BE8(v76, v75, v6);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BB8, &qword_1B0E9AFC8);
  sub_1B0746680();
  v7 = sub_1B0E44F58();
  v80 = 0;
  v81 = v7;
  v63 = v7;
  sub_1B039E440(&v96);
  v95 = v63;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v94 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BC0, &qword_1B0E9AFD0);
  v65 = sub_1B043CF70();
  sub_1B074B41C();
  v8 = sub_1B0E44718();
  v66 = 0;
  v67 = v8;
  v59 = v8;
  v93 = v8;
  v60 = *(v68 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  v9 = v60;
  v10 = sub_1B074B4A4();
  v12 = sub_1B039CA88(sub_1B0721718, 0, v70, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v61 = 0;
  v62 = v12;
  v55 = v12;
  v56 = sub_1B0E451A8();

  v58 = [v60 flagsForRemoteIDs_];
  v57 = v58;

  if (v58)
  {
    v54 = v57;
    v51 = v57;
    sub_1B071FB18();
    v52 = sub_1B0E445A8();

    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v50 = v53;
  if (v53)
  {
    v49 = v50;
  }

  else
  {
    LODWORD(v28) = 0;
    v27 = 162;
    v26 = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v13 = v61;
  v43 = v49;
  v92[1] = v49;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BC8, &qword_1B0E9AFD8);
  v14 = sub_1B074B52C();
  MEMORY[0x1B27270C0](v92, v42, v14);
  v44 = v92[0];

  v91 = v44;
  v15 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = &v30;
  MEMORY[0x1EEE9AC00](&v30);
  v46 = &v26;
  v28 = v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BD8, &unk_1B0E9AFE0);
  sub_1B074B5DC();
  sub_1B0E44FD8();
  v48 = v13;
  if (v13)
  {

    __break(1u);
  }

  else
  {

    sub_1B039E440(&v91);
    if (MessageIdentifierSet.isEmpty.getter())
    {
      *&v31 = sub_1B07B681C();
      *(&v31 + 1) = v22;
      *&v32 = v23;
      *(&v32 + 1) = v24;
      sub_1B03D09B8(v74);

      v35 = v31;
      v36 = v32;
      v37 = v48;
      return v35;
    }

    v17 = v48;
    v88 = v69;
    v84 = sub_1B07B681C();
    v85 = v18;
    v86 = v19;
    v87 = v20;

    v38 = &v30;
    MEMORY[0x1EEE9AC00](&v30);
    v39 = &v26;
    v28 = v68;
    v29 = v21;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B58, &unk_1B0E9AF80);
    sub_1B074AD9C();
    sub_1B0E44FD8();
    v41 = v17;
    if (!v17)
    {

      v33 = v89;
      v34 = v90;
      v82 = v89;
      v83 = v90;
      sub_1B03D09B8(v74);

      v35 = v33;
      v36 = v34;
      v37 = v41;
      return v35;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0721160()
{
  v2 = qword_1EB6DE408;
  if (!qword_1EB6DE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07211E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v6 = *a1;
  v14 = v6;
  v11 = [v6 imapUID];
  v7 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  result = MessageIdentifier.init<A>(exactly:)(&v11, &type metadata for UID, MEMORY[0x1E69E6530], v7, v2, &v12);
  v8 = v12;
  if (v13)
  {
    *a2 = 0x200000000;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    result = sub_1B072136C([v6 serverFlags]);
    LODWORD(v9) = v8;
    *(&v9 + 4) = result;
    BYTE12(v9) = v4 & 1;
    *&v10 = v9;
    *(&v10 + 5) = result >> 8;
    *a2 = v10;
    *(a2 + 8) = *(&v9 + 5) >> 24;
    *(a2 + 12) = v4 & 1;
  }

  return result;
}

unint64_t sub_1B072136C(void *a1)
{
  v7 = [a1 junkLevel];
  if (v7 == 1)
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_junk;
  }

  else if (v7 == 2)
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_notJunk;
  }

  else
  {
    v5 = IMAP2Persistence_Flags_JunkStatus_unknown;
  }

  v3 = [a1 flagged];
  v4 = [a1 flagColor];
  if (v3)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v2 = IMAP2Persistence_Flags_Label_colorOrange;
      }

      else if (v4 == 2)
      {
        v2 = IMAP2Persistence_Flags_Label_colorYellow;
      }

      else if (v4 == 3)
      {
        v2 = IMAP2Persistence_Flags_Label_colorGreen;
      }

      else if (v4 == 4)
      {
        v2 = IMAP2Persistence_Flags_Label_colorBlue;
      }

      else if (v4 == 5)
      {
        v2 = IMAP2Persistence_Flags_Label_colorPurple;
      }

      else if (v4 == 6)
      {
        v2 = IMAP2Persistence_Flags_Label_colorGray;
      }

      else
      {
        v2 = IMAP2Persistence_Flags_Label_colorRed;
      }
    }

    else
    {
      v2 = IMAP2Persistence_Flags_Label_colorRed;
    }
  }

  else
  {
    v2 = IMAP2Persistence_Flags_Label_clear;
  }

  v8 = Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)([a1 read] != 1, objc_msgSend(a1, sel_deleted), objc_msgSend(a1, sel_replied), objc_msgSend(a1, sel_draft), objc_msgSend(a1, sel_forwarded), objc_msgSend(a1, sel_redirected), v5, v2, objc_msgSend(a1, sel_touchedByCleanup));
  MEMORY[0x1E69E5920](a1);
  return v8;
}

uint64_t *sub_1B07216C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v5;
  return result;
}

uint64_t sub_1B0721718@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1B0721828(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v24 = 0;
  v30 = a1;
  v16 = a2[1];
  v17 = a2[2];
  v27 = *a2;
  v28 = v16;
  v29 = v17;
  v26 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v17);
  v25 = sub_1B08252D8(v27, v16);
  result = MEMORY[0x1E69E5920](v17);
  if ((v25 & 0x100000000) == 0)
  {
    v24 = v25;
    v21 = v25;
    sub_1B043CF70();
    sub_1B0E44778();
    if (v22 == 2)
    {
      goto LABEL_8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](v17);
    v4 = sub_1B072136C(v17);
    v7 = v4;
    v8 = BYTE1(v4);
    v9 = BYTE2(v4);
    v10 = BYTE3(v4);
    v11 = BYTE4(v4);
    v12 = BYTE5(v4);
    v13 = BYTE6(v4);
    v14 = HIBYTE(v4);
    v15 = v5 & 1;

    LOWORD(v18) = __PAIR16__(v8, v7);
    BYTE2(v18) = v9;
    BYTE3(v18) = v10;
    BYTE4(v18) = v11;
    BYTE5(v18) = v12;
    BYTE6(v18) = v13;
    HIBYTE(v18) = v14;
    result = static Flags.__derived_struct_equals(_:_:)(v18, v15 & 1, v22 & 0xFFFF010101010101, v23 & 1);
    if (result)
    {
LABEL_8:
      v19 = v25;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      return MessageIdentifierSet.insert(_:)(v20, &v19, v6);
    }
  }

  return result;
}

uint64_t sub_1B0721C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v23 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v4 = _s6LoggerVMa_1();
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v12 - v13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v22 - 8) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v16);
  v24 = &v12 - v17;
  v31 = &v12 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v25 = &v12 - v19;
  v30 = &v12 - v19;
  v29 = v6;
  v20 = *v7;
  v28 = v20;
  v27 = v8;
  v26 = v9;
  sub_1B074B69C(v8 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v10);
  sub_1B07204E0(v21, v25);
  sub_1B074B764(v21);
  MessageIdentifierSet.intersection(_:)(v23, v24);
  sub_1B041C1E8();
  if (static MessageIdentifierSet.__derived_struct_equals(_:_:)())
  {
    sub_1B07B6998(v20);
  }

  else
  {
    sub_1B07B6C10(v24, v20);
  }

  sub_1B03D09B8(v24);
  return sub_1B03D09B8(v25);
}

id sub_1B0721E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_1B0721E7C(a2);
  *a3 = result;
  return result;
}

id sub_1B0721E7C(uint64_t a1)
{
  v11 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v12 = sub_1B0E42E68();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v17);
  v16 = &v4 - v15;
  v21 = v2;
  v20 = v1;
  MEMORY[0x1E69E5928](v1);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v10 = v18;
  }

  else
  {
    MEMORY[0x1E69E5920](v17);
    v10 = 0;
  }

  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v8 = v9;
  v5 = v9;
  v19 = v9;
  MEMORY[0x1E69E5928](v9);
  v6 = [v5 mailboxURL];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v5);
  v7 = sub_1B0E42DB8();
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1E69E5920](v6);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v5);
    return 0;
  }

  return v5;
}

uint64_t sub_1B0722084(id *a1)
{
  [*a1 transferType];
  type metadata accessor for ECTransferMessageActionType();
  sub_1B071C014();
  return sub_1B0E46AE8() & 1;
}

uint64_t sub_1B0722104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v12 = a2;
  v13 = a3;
  v24 = 0;
  v23 = sub_1B0722384;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v14);
  v16 = &v12 - v15;
  v35 = &v12 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v12 - v17;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v22 = &v12 - v18;
  v34 = &v12 - v18;
  v33 = v7;
  v19 = *v8;
  v32 = v19;
  v31 = v9;
  v20 = [v19 itemsToDelete];
  sub_1B071C094();
  v30 = sub_1B0E451B8();
  v21 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v10 = v27;
  result = sub_1B0E44FD8();
  v29 = v10;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1B039E440(&v30);
    MEMORY[0x1E69E5920](v20);
    MessageIdentifierSet.intersection(_:)(v13, v16);
    if (static MessageIdentifierSet.__derived_struct_equals(_:_:)())
    {
      sub_1B07B6998(v19);
    }

    else
    {
      sub_1B07B6E28(v16, v19);
    }

    sub_1B03D09B8(v16);
    return sub_1B03D09B8(v22);
  }

  return result;
}

uint64_t sub_1B0722384(uint64_t a1, id *a2)
{
  v12 = 0;
  v10 = 0;
  v13 = a1;
  v12 = *a2;
  v7 = [v12 sourceRemoteID];
  if (v7)
  {
    v5 = sub_1B0E44AD8();
    v6 = v2;
    MEMORY[0x1E69E5920](v7);
    result = sub_1B08252D8(v5, v6);
  }

  else
  {
    result = sub_1B08252D8(0, 0);
  }

  v11 = result;
  if ((result & 0x100000000) == 0)
  {
    v10 = result;
    v8 = result;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return MessageIdentifierSet.insert(_:)(v9, &v8, v4);
  }

  return result;
}

id sub_1B07224BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_1B0720178(a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0722510(uint64_t a1, uint64_t a2, int a3)
{
  v18 = a1;
  v26 = a2;
  v16 = a3;
  v20 = sub_1B074B664;
  v22 = sub_1B074B690;
  v3 = *v19;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v17 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v19);
  v24 = v11 - v17;
  v41 = v5;
  v40 = v6;
  v39 = v7 & 1;
  v38 = v4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21 = &v33;
  v34 = v19;
  v35 = v18;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = &v30;
  v31 = v19;
  v32 = v18;
  sub_1B074B69C(v19 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v24);
  v8 = v25;
  v9 = sub_1B0726F34(v26);
  v27 = v8;
  v28 = v9;
  v29 = v8;
  if (v8)
  {
    v11[0] = v29;
    sub_1B074B764(v24);

    return v11[1];
  }

  else
  {
    v14 = v28;
    sub_1B074B764(v24);

    v37 = v14;
    v36 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    sub_1B074B7E4();
    if ((sub_1B0E45748() & 1) == 0)
    {
      return v14;
    }

    v12 = sub_1B0731CB8(v26, v16 & 1);

    return v12;
  }
}

uint64_t *sub_1B0722888(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v940 = v2;
  v886 = v1;
  v913 = v4;
  v912 = v5;
  v938 = v3;
  v887 = v6;
  v930 = 0;
  v990 = 0;
  v989 = 0;
  v988 = 0;
  v987 = 0;
  v986 = 0;
  v985 = 0;
  v984 = 0;
  v983 = 0;
  v982 = 0;
  v981 = 0;
  v980 = 0;
  v979 = 0;
  v978 = 0;
  v977 = 0;
  v976[1] = 0;
  v976[0] = 0;
  v971 = 0;
  v967 = 0;
  v966 = 0;
  v965 = 0;
  v963 = 0;
  v962[1] = 0;
  v962[0] = 0;
  v959 = 0;
  v954 = 0uLL;
  v948 = 0;
  v945 = 0;
  v942 = 0;
  v888 = sub_1B0E439A8();
  v889 = *(v888 - 8);
  v890 = v889;
  v7 = *(v889 + 64);
  MEMORY[0x1EEE9AC00](v888 - 8);
  v891 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  v893 = (*(*(v892 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v892 - 8);
  v894 = &v182 - v893;
  v990 = &v182 - v893;
  v919 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C00, &qword_1B0E9AFF8);
  v895 = v919;
  v896 = (*(*(v919 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v930);
  v897 = &v182 - v896;
  v898 = _s6LoggerVMa_1();
  v899 = *(*(v898 - 8) + 64);
  MEMORY[0x1EEE9AC00](v898 - 8);
  v901 = (v899 + 15) & 0xFFFFFFFFFFFFFFF0;
  v900 = &v182 - v901;
  MEMORY[0x1EEE9AC00](&v182 - v901);
  v902 = &v182 - v901;
  v927 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v903 = v927;
  v908 = *(*(v927 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v930);
  v910 = (v908 + 15) & 0xFFFFFFFFFFFFFFF0;
  v904 = &v182 - v910;
  v989 = &v182 - v910;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v905 = &v182 - v910;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v906 = &v182 - v910;
  v988 = &v182 - v910;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v907 = &v182 - v910;
  v987 = &v182 - v910;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v909 = &v182 - v910;
  MEMORY[0x1EEE9AC00](v13);
  v911 = &v182 - v910;
  v986 = &v182 - v910;
  v937 = sub_1B0E42E68();
  v914 = v937;
  v915 = *(v937 - 8);
  v935 = v915;
  v916 = v915;
  v917 = *(v915 + 64);
  MEMORY[0x1EEE9AC00](v930);
  v936 = &v182 - ((v917 + 15) & 0xFFFFFFFFFFFFFFF0);
  v918 = v936;
  v985 = v936;
  v984 = v938;
  v983 = v14;
  v982 = v15;
  v981 = v1;
  v980 = sub_1B0E46A48();
  v979 = sub_1B0E46A48();
  v926 = swift_allocObject();
  v920 = v926;
  v921 = (v926 + 16);
  v978 = v926 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C08, &qword_1B0E9B000);
  v924 = sub_1B0E46A48();
  v923 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C10, &qword_1B0E9B008);
  v922 = v923;
  v925 = sub_1B043CF70();
  v932 = &type metadata for UID;
  *(v926 + 16) = sub_1B0E445D8();
  v16 = swift_allocBox();
  v931 = v17;
  v928 = v16;
  v929 = v17;
  v977 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v933 = sub_1B0E46A48();
  v934 = sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v933, v932);
  (*(v935 + 16))(v936, v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v937);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v975 = v938;
  v939 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B074B86C();
  sub_1B0E45798();
  for (i = v940; ; i = v210)
  {
    v884 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E36C0, &qword_1B0E9B018);
    sub_1B0E46518();
    v885 = v974;
    if (!v974)
    {
      break;
    }

    v883 = v885;
    v881 = v885;
    v966 = v885;
    v882 = sub_1B0720178(v918);
    if (!v882)
    {
      v867 = sub_1B0721E7C(v918);
      if (v867)
      {
        v866 = v867;
        v857 = v867;
        v963 = v867;
        v864 = [v867 itemsToDelete];
        v858 = sub_1B071C094();
        v859 = v858;
        v863 = sub_1B0E451B8();
        v962[2] = v863;
        v861 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        v860 = v861;
        v862 = sub_1B071C0F8();
        v865 = sub_1B0E45748();

        if ((v865 & 1) == 0)
        {
          MessageIdentifierSet.init()(&type metadata for UID, v934);
          v855 = [v857 itemsToDelete];
          v961 = sub_1B0E451B8();
          sub_1B0E45798();

          for (j = v884; ; j = v848)
          {
            v853 = j;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
            sub_1B0E46518();
            v854 = v960;
            if (!v960)
            {
              break;
            }

            v852 = v854;
            v850 = v854;
            v959 = v854;
            v958 = sub_1B0917A3C();
            v851 = v958;
            if ((v958 & 0x100000000) != 0)
            {
              v844 = [v850 sourceRemoteID];
              if (v844)
              {
                v843 = v844;
                v840 = v844;
                *&v841 = sub_1B0E44AD8();
                *(&v841 + 1) = v21;

                v842 = v841;
              }

              else
              {
                v842 = 0uLL;
              }

              v956 = v842;
              v22 = v850;
              if (*(&v956 + 1))
              {
                v957 = v956;
              }

              else
              {
                v839 = [v850 sourceMessage];
                if (v839)
                {
                  v838 = v839;
                  v836 = v839;
                  swift_getObjectType();
                  v837 = [v836 remoteID];
                  if (v837)
                  {
                    v835 = v837;
                    v831 = v837;
                    *&v832 = sub_1B0E44AD8();
                    *(&v832 + 1) = v23;

                    v833 = v832;
                  }

                  else
                  {
                    v833 = 0uLL;
                  }

                  v830 = v833;
                  swift_unknownObjectRelease();
                  v834 = v830;
                }

                else
                {
                  v834 = 0uLL;
                }

                v955 = v834;
                if (*(&v834 + 1))
                {
                  v957 = v955;
                }

                else
                {
                  *&v957 = sub_1B0E44838();
                  *(&v957 + 1) = v24;
                  if (*(&v955 + 1))
                  {
                    sub_1B03B1198(&v955);
                  }
                }

                if (*(&v956 + 1))
                {
                  sub_1B03B1198(&v956);
                }
              }

              v25 = v891;

              v761 = v957;
              v753 = *(&v957 + 1);
              v954 = v957;
              v754 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
              sub_1B074B69C(v886 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v900);
              (*(v890 + 16))(v25, v900, v888);
              sub_1B074B764(v900);

              sub_1B074B69C(v886 + *v754, v902);
              v26 = (v902 + *(v898 + 20));
              v757 = *v26;
              v758 = *(v26 + 1);
              v759 = *(v26 + 1);
              v760 = *(v26 + 4);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B074B764(v902);

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v756 = 36;
              v800 = 7;
              v27 = swift_allocObject();
              v28 = v758;
              v29 = v759;
              v30 = v760;
              v770 = v27;
              *(v27 + 16) = v757;
              *(v27 + 20) = v28;
              *(v27 + 24) = v29;
              *(v27 + 32) = v30;
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v31 = swift_allocObject();
              v32 = v758;
              v33 = v759;
              v34 = v760;
              v755 = v31;
              *(v31 + 16) = v757;
              *(v31 + 20) = v32;
              *(v31 + 24) = v33;
              *(v31 + 32) = v34;

              v799 = 32;
              v35 = swift_allocObject();
              v36 = v755;
              v783 = v35;
              *(v35 + 16) = sub_1B074E050;
              *(v35 + 24) = v36;
              sub_1B0394868();
              sub_1B0394868();

              v37 = swift_allocObject();
              v38 = v758;
              v39 = v759;
              v40 = v760;
              v792 = v37;
              *(v37 + 16) = v757;
              *(v37 + 20) = v38;
              *(v37 + 24) = v39;
              *(v37 + 32) = v40;

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v41 = swift_allocObject();
              v42 = *(&v761 + 1);
              v801 = v41;
              *(v41 + 16) = v761;
              *(v41 + 24) = v42;
              v829 = sub_1B0E43988();
              v762 = v829;
              v828 = sub_1B0E458E8();
              v763 = v828;
              v795 = 17;
              v804 = swift_allocObject();
              v764 = v804;
              v773 = 16;
              *(v804 + 16) = 16;
              v805 = swift_allocObject();
              v765 = v805;
              v781 = 4;
              *(v805 + 16) = 4;
              v43 = swift_allocObject();
              v766 = v43;
              *(v43 + 16) = sub_1B0394C30;
              v776 = 0;
              *(v43 + 24) = 0;
              v44 = swift_allocObject();
              v45 = v766;
              v806 = v44;
              v767 = v44;
              *(v44 + 16) = sub_1B0394C24;
              *(v44 + 24) = v45;
              v807 = swift_allocObject();
              v768 = v807;
              v779 = 0;
              *(v807 + 16) = 0;
              v808 = swift_allocObject();
              v769 = v808;
              *(v808 + 16) = 1;
              v46 = swift_allocObject();
              v47 = v770;
              v771 = v46;
              *(v46 + 16) = sub_1B074DFFC;
              *(v46 + 24) = v47;
              v48 = swift_allocObject();
              v49 = v771;
              v809 = v48;
              v772 = v48;
              *(v48 + 16) = sub_1B039BA88;
              *(v48 + 24) = v49;
              v810 = swift_allocObject();
              v774 = v810;
              *(v810 + 16) = v773;
              v811 = swift_allocObject();
              v775 = v811;
              *(v811 + 16) = v781;
              v50 = swift_allocObject();
              v51 = v776;
              v777 = v50;
              *(v50 + 16) = sub_1B039BB94;
              *(v50 + 24) = v51;
              v52 = swift_allocObject();
              v53 = v777;
              v812 = v52;
              v778 = v52;
              *(v52 + 16) = sub_1B0394C24;
              *(v52 + 24) = v53;
              v813 = swift_allocObject();
              v780 = v813;
              *(v813 + 16) = v779;
              v814 = swift_allocObject();
              v782 = v814;
              *(v814 + 16) = v781;
              v54 = swift_allocObject();
              v55 = v783;
              v784 = v54;
              *(v54 + 16) = sub_1B039BBA0;
              *(v54 + 24) = v55;
              v56 = swift_allocObject();
              v57 = v784;
              v815 = v56;
              v785 = v56;
              *(v56 + 16) = sub_1B039BC08;
              *(v56 + 24) = v57;
              v816 = swift_allocObject();
              v786 = v816;
              *(v816 + 16) = 112;
              v817 = swift_allocObject();
              v787 = v817;
              v797 = 8;
              *(v817 + 16) = 8;
              v788 = swift_allocObject();
              *(v788 + 16) = 0x786F626C69616DLL;
              v58 = swift_allocObject();
              v59 = v788;
              v818 = v58;
              v789 = v58;
              *(v58 + 16) = sub_1B06BA324;
              *(v58 + 24) = v59;
              v819 = swift_allocObject();
              v790 = v819;
              *(v819 + 16) = 37;
              v820 = swift_allocObject();
              v791 = v820;
              *(v820 + 16) = v797;
              v60 = swift_allocObject();
              v61 = v792;
              v793 = v60;
              *(v60 + 16) = sub_1B074E0E4;
              *(v60 + 24) = v61;
              v62 = swift_allocObject();
              v63 = v793;
              v821 = v62;
              v794 = v62;
              *(v62 + 16) = sub_1B039BCF8;
              *(v62 + 24) = v63;
              v822 = swift_allocObject();
              v796 = v822;
              *(v822 + 16) = 34;
              v823 = swift_allocObject();
              v798 = v823;
              *(v823 + 16) = v797;
              v64 = swift_allocObject();
              v65 = v801;
              v802 = v64;
              *(v64 + 16) = sub_1B070B550;
              *(v64 + 24) = v65;
              v66 = swift_allocObject();
              v67 = v802;
              v826 = v66;
              v803 = v66;
              *(v66 + 16) = sub_1B039BCF8;
              *(v66 + 24) = v67;
              v827 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
              v824 = sub_1B0E46A48();
              v825 = v68;

              v69 = v804;
              v70 = v825;
              *v825 = sub_1B0398F5C;
              v70[1] = v69;

              v71 = v805;
              v72 = v825;
              v825[2] = sub_1B0398F5C;
              v72[3] = v71;

              v73 = v806;
              v74 = v825;
              v825[4] = sub_1B0399178;
              v74[5] = v73;

              v75 = v807;
              v76 = v825;
              v825[6] = sub_1B0398F5C;
              v76[7] = v75;

              v77 = v808;
              v78 = v825;
              v825[8] = sub_1B0398F5C;
              v78[9] = v77;

              v79 = v809;
              v80 = v825;
              v825[10] = sub_1B039BA94;
              v80[11] = v79;

              v81 = v810;
              v82 = v825;
              v825[12] = sub_1B0398F5C;
              v82[13] = v81;

              v83 = v811;
              v84 = v825;
              v825[14] = sub_1B0398F5C;
              v84[15] = v83;

              v85 = v812;
              v86 = v825;
              v825[16] = sub_1B0399178;
              v86[17] = v85;

              v87 = v813;
              v88 = v825;
              v825[18] = sub_1B0398F5C;
              v88[19] = v87;

              v89 = v814;
              v90 = v825;
              v825[20] = sub_1B0398F5C;
              v90[21] = v89;

              v91 = v815;
              v92 = v825;
              v825[22] = sub_1B03991EC;
              v92[23] = v91;

              v93 = v816;
              v94 = v825;
              v825[24] = sub_1B0398F5C;
              v94[25] = v93;

              v95 = v817;
              v96 = v825;
              v825[26] = sub_1B0398F5C;
              v96[27] = v95;

              v97 = v818;
              v98 = v825;
              v825[28] = sub_1B03993BC;
              v98[29] = v97;

              v99 = v819;
              v100 = v825;
              v825[30] = sub_1B0398F5C;
              v100[31] = v99;

              v101 = v820;
              v102 = v825;
              v825[32] = sub_1B0398F5C;
              v102[33] = v101;

              v103 = v821;
              v104 = v825;
              v825[34] = sub_1B039BCEC;
              v104[35] = v103;

              v105 = v822;
              v106 = v825;
              v825[36] = sub_1B0398F5C;
              v106[37] = v105;

              v107 = v823;
              v108 = v825;
              v825[38] = sub_1B0398F5C;
              v108[39] = v107;

              v109 = v825;
              v110 = v826;
              v825[40] = sub_1B039BCEC;
              v109[41] = v110;
              sub_1B0394964();

              if (os_log_type_enabled(v829, v828))
              {
                v111 = v767;
                v112 = v765;
                v113 = v764;
                v729 = v853;
                v725 = sub_1B0E45D78();
                v722 = v725;
                v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
                v726 = sub_1B03949A8(0);
                v724 = v726;
                v727 = sub_1B03949A8(2);
                v953 = v725;
                v952 = v726;
                v951 = v727;
                v728 = &v953;
                sub_1B0394A48(3, &v953);
                sub_1B0394A48(7, v728);
                v114 = v729;
                v949 = sub_1B0398F5C;
                v950 = v113;
                sub_1B03949FC(&v949, v728, &v952, &v951);
                v730 = v114;
                v731 = v113;
                v732 = v112;
                v733 = v111;
                v734 = v768;
                v735 = v769;
                v736 = v772;
                v737 = v774;
                v738 = v775;
                v739 = v778;
                v740 = v780;
                v741 = v782;
                v742 = v785;
                v743 = v786;
                v744 = v787;
                v745 = v789;
                v746 = v790;
                v747 = v791;
                v748 = v794;
                v749 = v796;
                v750 = v798;
                v751 = v803;
                v752 = v114;
                if (v114)
                {
                  v699 = v731;
                  v700 = v732;
                  v701 = v733;
                  v702 = v734;
                  v703 = v735;
                  v704 = v736;
                  v705 = v737;
                  v706 = v738;
                  v707 = v739;
                  v708 = v740;
                  v709 = v741;
                  v710 = v742;
                  v711 = v743;
                  v712 = v744;
                  v713 = v745;
                  v714 = v746;
                  v715 = v747;
                  v716 = v748;
                  v717 = v749;
                  v718 = v750;
                  v719 = v751;
                  v720 = 0;
                  v238 = v751;
                  v237 = v750;
                  v236 = v749;
                  v235 = v748;
                  v234 = v747;
                  v233 = v746;
                  v232 = v745;
                  v231 = v744;
                  v230 = v743;
                  v229 = v742;
                  v228 = v741;
                  v227 = v740;
                  v226 = v739;
                  v225 = v738;
                  v224 = v737;
                  v223 = v736;
                  v222 = v735;
                  v221 = v734;
                  v220 = v733;
                  v219 = v732;

                  __break(1u);
                }

                else
                {
                  v115 = v767;
                  v116 = v765;
                  v117 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v765;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v676 = 0;
                  v677 = v117;
                  v678 = v116;
                  v679 = v115;
                  v680 = v768;
                  v681 = v769;
                  v682 = v772;
                  v683 = v774;
                  v684 = v775;
                  v685 = v778;
                  v686 = v780;
                  v687 = v782;
                  v688 = v785;
                  v689 = v786;
                  v690 = v787;
                  v691 = v789;
                  v692 = v790;
                  v693 = v791;
                  v694 = v794;
                  v695 = v796;
                  v696 = v798;
                  v697 = v803;
                  v698 = 0;
                  v118 = v767;
                  v119 = v765;
                  v120 = v764;
                  v949 = sub_1B0399178;
                  v950 = v767;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v653 = 0;
                  v654 = v120;
                  v655 = v119;
                  v656 = v118;
                  v657 = v768;
                  v658 = v769;
                  v659 = v772;
                  v660 = v774;
                  v661 = v775;
                  v662 = v778;
                  v663 = v780;
                  v664 = v782;
                  v665 = v785;
                  v666 = v786;
                  v667 = v787;
                  v668 = v789;
                  v669 = v790;
                  v670 = v791;
                  v671 = v794;
                  v672 = v796;
                  v673 = v798;
                  v674 = v803;
                  v675 = 0;
                  v121 = v767;
                  v122 = v765;
                  v123 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v768;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v630 = 0;
                  v631 = v123;
                  v632 = v122;
                  v633 = v121;
                  v634 = v768;
                  v635 = v769;
                  v636 = v772;
                  v637 = v774;
                  v638 = v775;
                  v639 = v778;
                  v640 = v780;
                  v641 = v782;
                  v642 = v785;
                  v643 = v786;
                  v644 = v787;
                  v645 = v789;
                  v646 = v790;
                  v647 = v791;
                  v648 = v794;
                  v649 = v796;
                  v650 = v798;
                  v651 = v803;
                  v652 = 0;
                  v124 = v767;
                  v125 = v765;
                  v126 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v769;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v607 = 0;
                  v608 = v126;
                  v609 = v125;
                  v610 = v124;
                  v611 = v768;
                  v612 = v769;
                  v613 = v772;
                  v614 = v774;
                  v615 = v775;
                  v616 = v778;
                  v617 = v780;
                  v618 = v782;
                  v619 = v785;
                  v620 = v786;
                  v621 = v787;
                  v622 = v789;
                  v623 = v790;
                  v624 = v791;
                  v625 = v794;
                  v626 = v796;
                  v627 = v798;
                  v628 = v803;
                  v629 = 0;
                  v127 = v767;
                  v128 = v765;
                  v129 = v764;
                  v949 = sub_1B039BA94;
                  v950 = v772;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v584 = 0;
                  v585 = v129;
                  v586 = v128;
                  v587 = v127;
                  v588 = v768;
                  v589 = v769;
                  v590 = v772;
                  v591 = v774;
                  v592 = v775;
                  v593 = v778;
                  v594 = v780;
                  v595 = v782;
                  v596 = v785;
                  v597 = v786;
                  v598 = v787;
                  v599 = v789;
                  v600 = v790;
                  v601 = v791;
                  v602 = v794;
                  v603 = v796;
                  v604 = v798;
                  v605 = v803;
                  v606 = 0;
                  v130 = v767;
                  v131 = v765;
                  v132 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v774;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v561 = 0;
                  v562 = v132;
                  v563 = v131;
                  v564 = v130;
                  v565 = v768;
                  v566 = v769;
                  v567 = v772;
                  v568 = v774;
                  v569 = v775;
                  v570 = v778;
                  v571 = v780;
                  v572 = v782;
                  v573 = v785;
                  v574 = v786;
                  v575 = v787;
                  v576 = v789;
                  v577 = v790;
                  v578 = v791;
                  v579 = v794;
                  v580 = v796;
                  v581 = v798;
                  v582 = v803;
                  v583 = 0;
                  v133 = v767;
                  v134 = v765;
                  v135 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v775;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v538 = 0;
                  v539 = v135;
                  v540 = v134;
                  v541 = v133;
                  v542 = v768;
                  v543 = v769;
                  v544 = v772;
                  v545 = v774;
                  v546 = v775;
                  v547 = v778;
                  v548 = v780;
                  v549 = v782;
                  v550 = v785;
                  v551 = v786;
                  v552 = v787;
                  v553 = v789;
                  v554 = v790;
                  v555 = v791;
                  v556 = v794;
                  v557 = v796;
                  v558 = v798;
                  v559 = v803;
                  v560 = 0;
                  v136 = v767;
                  v137 = v765;
                  v138 = v764;
                  v949 = sub_1B0399178;
                  v950 = v778;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v515 = 0;
                  v516 = v138;
                  v517 = v137;
                  v518 = v136;
                  v519 = v768;
                  v520 = v769;
                  v521 = v772;
                  v522 = v774;
                  v523 = v775;
                  v524 = v778;
                  v525 = v780;
                  v526 = v782;
                  v527 = v785;
                  v528 = v786;
                  v529 = v787;
                  v530 = v789;
                  v531 = v790;
                  v532 = v791;
                  v533 = v794;
                  v534 = v796;
                  v535 = v798;
                  v536 = v803;
                  v537 = 0;
                  v139 = v767;
                  v140 = v765;
                  v141 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v780;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v492 = 0;
                  v493 = v141;
                  v494 = v140;
                  v495 = v139;
                  v496 = v768;
                  v497 = v769;
                  v498 = v772;
                  v499 = v774;
                  v500 = v775;
                  v501 = v778;
                  v502 = v780;
                  v503 = v782;
                  v504 = v785;
                  v505 = v786;
                  v506 = v787;
                  v507 = v789;
                  v508 = v790;
                  v509 = v791;
                  v510 = v794;
                  v511 = v796;
                  v512 = v798;
                  v513 = v803;
                  v514 = 0;
                  v142 = v767;
                  v143 = v765;
                  v144 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v782;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v469 = 0;
                  v470 = v144;
                  v471 = v143;
                  v472 = v142;
                  v473 = v768;
                  v474 = v769;
                  v475 = v772;
                  v476 = v774;
                  v477 = v775;
                  v478 = v778;
                  v479 = v780;
                  v480 = v782;
                  v481 = v785;
                  v482 = v786;
                  v483 = v787;
                  v484 = v789;
                  v485 = v790;
                  v486 = v791;
                  v487 = v794;
                  v488 = v796;
                  v489 = v798;
                  v490 = v803;
                  v491 = 0;
                  v145 = v767;
                  v146 = v765;
                  v147 = v764;
                  v949 = sub_1B03991EC;
                  v950 = v785;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v446 = 0;
                  v447 = v147;
                  v448 = v146;
                  v449 = v145;
                  v450 = v768;
                  v451 = v769;
                  v452 = v772;
                  v453 = v774;
                  v454 = v775;
                  v455 = v778;
                  v456 = v780;
                  v457 = v782;
                  v458 = v785;
                  v459 = v786;
                  v460 = v787;
                  v461 = v789;
                  v462 = v790;
                  v463 = v791;
                  v464 = v794;
                  v465 = v796;
                  v466 = v798;
                  v467 = v803;
                  v468 = 0;
                  v148 = v767;
                  v149 = v765;
                  v150 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v786;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v423 = 0;
                  v424 = v150;
                  v425 = v149;
                  v426 = v148;
                  v427 = v768;
                  v428 = v769;
                  v429 = v772;
                  v430 = v774;
                  v431 = v775;
                  v432 = v778;
                  v433 = v780;
                  v434 = v782;
                  v435 = v785;
                  v436 = v786;
                  v437 = v787;
                  v438 = v789;
                  v439 = v790;
                  v440 = v791;
                  v441 = v794;
                  v442 = v796;
                  v443 = v798;
                  v444 = v803;
                  v445 = 0;
                  v151 = v767;
                  v152 = v765;
                  v153 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v787;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v400 = 0;
                  v401 = v153;
                  v402 = v152;
                  v403 = v151;
                  v404 = v768;
                  v405 = v769;
                  v406 = v772;
                  v407 = v774;
                  v408 = v775;
                  v409 = v778;
                  v410 = v780;
                  v411 = v782;
                  v412 = v785;
                  v413 = v786;
                  v414 = v787;
                  v415 = v789;
                  v416 = v790;
                  v417 = v791;
                  v418 = v794;
                  v419 = v796;
                  v420 = v798;
                  v421 = v803;
                  v422 = 0;
                  v154 = v767;
                  v155 = v765;
                  v156 = v764;
                  v949 = sub_1B03993BC;
                  v950 = v789;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v377 = 0;
                  v378 = v156;
                  v379 = v155;
                  v380 = v154;
                  v381 = v768;
                  v382 = v769;
                  v383 = v772;
                  v384 = v774;
                  v385 = v775;
                  v386 = v778;
                  v387 = v780;
                  v388 = v782;
                  v389 = v785;
                  v390 = v786;
                  v391 = v787;
                  v392 = v789;
                  v393 = v790;
                  v394 = v791;
                  v395 = v794;
                  v396 = v796;
                  v397 = v798;
                  v398 = v803;
                  v399 = 0;
                  v157 = v767;
                  v158 = v765;
                  v159 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v790;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v354 = 0;
                  v355 = v159;
                  v356 = v158;
                  v357 = v157;
                  v358 = v768;
                  v359 = v769;
                  v360 = v772;
                  v361 = v774;
                  v362 = v775;
                  v363 = v778;
                  v364 = v780;
                  v365 = v782;
                  v366 = v785;
                  v367 = v786;
                  v368 = v787;
                  v369 = v789;
                  v370 = v790;
                  v371 = v791;
                  v372 = v794;
                  v373 = v796;
                  v374 = v798;
                  v375 = v803;
                  v376 = 0;
                  v160 = v767;
                  v161 = v765;
                  v162 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v791;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v331 = 0;
                  v332 = v162;
                  v333 = v161;
                  v334 = v160;
                  v335 = v768;
                  v336 = v769;
                  v337 = v772;
                  v338 = v774;
                  v339 = v775;
                  v340 = v778;
                  v341 = v780;
                  v342 = v782;
                  v343 = v785;
                  v344 = v786;
                  v345 = v787;
                  v346 = v789;
                  v347 = v790;
                  v348 = v791;
                  v349 = v794;
                  v350 = v796;
                  v351 = v798;
                  v352 = v803;
                  v353 = 0;
                  v163 = v767;
                  v164 = v765;
                  v165 = v764;
                  v949 = sub_1B039BCEC;
                  v950 = v794;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v308 = 0;
                  v309 = v165;
                  v310 = v164;
                  v311 = v163;
                  v312 = v768;
                  v313 = v769;
                  v314 = v772;
                  v315 = v774;
                  v316 = v775;
                  v317 = v778;
                  v318 = v780;
                  v319 = v782;
                  v320 = v785;
                  v321 = v786;
                  v322 = v787;
                  v323 = v789;
                  v324 = v790;
                  v325 = v791;
                  v326 = v794;
                  v327 = v796;
                  v328 = v798;
                  v329 = v803;
                  v330 = 0;
                  v166 = v767;
                  v167 = v765;
                  v168 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v796;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v285 = 0;
                  v286 = v168;
                  v287 = v167;
                  v288 = v166;
                  v289 = v768;
                  v290 = v769;
                  v291 = v772;
                  v292 = v774;
                  v293 = v775;
                  v294 = v778;
                  v295 = v780;
                  v296 = v782;
                  v297 = v785;
                  v298 = v786;
                  v299 = v787;
                  v300 = v789;
                  v301 = v790;
                  v302 = v791;
                  v303 = v794;
                  v304 = v796;
                  v305 = v798;
                  v306 = v803;
                  v307 = 0;
                  v169 = v767;
                  v170 = v765;
                  v171 = v764;
                  v949 = sub_1B0398F5C;
                  v950 = v798;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v262 = 0;
                  v263 = v171;
                  v264 = v170;
                  v265 = v169;
                  v266 = v768;
                  v267 = v769;
                  v268 = v772;
                  v269 = v774;
                  v270 = v775;
                  v271 = v778;
                  v272 = v780;
                  v273 = v782;
                  v274 = v785;
                  v275 = v786;
                  v276 = v787;
                  v277 = v789;
                  v278 = v790;
                  v279 = v791;
                  v280 = v794;
                  v281 = v796;
                  v282 = v798;
                  v283 = v803;
                  v284 = 0;
                  v172 = v767;
                  v173 = v765;
                  v174 = v764;
                  v949 = sub_1B039BCEC;
                  v950 = v803;
                  sub_1B03949FC(&v949, &v953, &v952, &v951);
                  v239 = 0;
                  v240 = v174;
                  v241 = v173;
                  v242 = v172;
                  v243 = v768;
                  v244 = v769;
                  v245 = v772;
                  v246 = v774;
                  v247 = v775;
                  v248 = v778;
                  v249 = v780;
                  v250 = v782;
                  v251 = v785;
                  v252 = v786;
                  v253 = v787;
                  v254 = v789;
                  v255 = v790;
                  v256 = v791;
                  v257 = v794;
                  v258 = v796;
                  v259 = v798;
                  v260 = v803;
                  v261 = 0;
                  _os_log_impl(&dword_1B0389000, v762, v763, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found invalid UID '%{public}s' while looking for deleted messages.", v722, 0x35u);
                  sub_1B03998A8(v724);
                  sub_1B03998A8(v727);
                  sub_1B0E45D58();

                  v721 = v239;
                }
              }

              else
              {

                v721 = v853;
              }

              v218 = v721;

              (*(v890 + 8))(v891, v888);

              v848 = v218;
            }

            else
            {
              v849 = v851;
              v845 = v851;
              v948 = v851;
              v946 = v851;
              MessageIdentifierSet.insert(_:)(&v947, &v946, v903);
              v847 = [objc_opt_self() setDeleted];
              v20 = v857;
              v846 = [v857 persistentID];

              sub_1B07413A8(v847, v846, v845, v913, v928, v920, v912);
              v848 = v853;
            }
          }

          sub_1B039E440(v962);
          sub_1B03D08AC(v907, v909);
          v175 = v857;
          v216 = [v857 persistentID];

          v215 = *(v895 + 48);
          sub_1B074BA2C(v909, v897);
          *(v897 + v215) = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
          sub_1B0E452E8();
          sub_1B03D09B8(v907);

          v217 = v853;
LABEL_46:
          v868 = v217;
          goto LABEL_47;
        }
      }

      v214 = sub_1B0829F6C(v918);
      if (v214)
      {
        v213 = v214;
        v212 = v214;
        v965 = v214;
        sub_1B0917CB8(v909);
        v211 = &v964;
        swift_beginAccess();
        MessageIdentifierSet.formUnion(_:)(v909, v903);
        swift_endAccess();
        sub_1B03D09B8(v909);
      }

      v217 = v884;
      goto LABEL_46;
    }

    v880 = v882;
    v876 = v882;
    v945 = v882;
    sub_1B074B69C(v886 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v902);
    sub_1B07204E0(v902, v911);
    sub_1B074B764(v902);
    sub_1B03D08AC(v911, v909);
    v18 = v876;
    v878 = [v876 persistentID];

    v877 = *(v895 + 48);
    sub_1B074BA2C(v909, v897);
    *(v897 + v877) = v878;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C48, &qword_1B0E9B038);
    sub_1B0E452E8();
    sub_1B03D08AC(v911, v909);
    sub_1B074B4A4();
    sub_1B0E45798();
    for (k = v884; ; k = v872)
    {
      v874 = k;
      sub_1B0E46518();
      v875 = v943;
      if (v944)
      {
        break;
      }

      v873 = v875;
      v869 = v875;
      v872 = v874;
      v942 = v875;
      v871 = [v876 flagChange];
      v19 = v876;
      v870 = [v876 persistentID];

      sub_1B07413A8(v871, v870, v869, v913, v928, v920, v912);
    }

    sub_1B03D09B8(v894);
    sub_1B03D09B8(v911);

    v868 = v874;
LABEL_47:
    v210 = v868;
  }

  v207 = v884;
  sub_1B039E440(v976);
  v194 = &v973;
  v205 = 0;
  swift_beginAccess();
  v195 = *v921;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v203 = &type metadata for UID;
  v196 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v972 = v196;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C20, &unk_1B0E9B020);
  v197 = v198;
  v199 = sub_1B074B8F4();
  v200 = &v972;
  v202 = sub_1B0829BE8(&v972, v198, v199);
  v201 = v202;
  sub_1B039E440(v200);
  v971 = v202;
  v970[3] = v202;
  MessageIdentifierSet.init()(v203, v934);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B30, &qword_1B0E9AF68);
  v204 = v206;
  v176 = sub_1B0746680();
  v177 = v207;
  v208 = v176;
  sub_1B0E44FD8();
  v209 = v177;
  if (v177)
  {
    __break(1u);
  }

  else
  {
    v190 = 0;
    v187 = v970;
    swift_beginAccess();
    v188 = *v921;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v189 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v969 = v189;
    sub_1B074B97C();
    sub_1B0E46098();
    MessageIdentifierSet.subtracting(_:)(v906, v904);
    sub_1B03D09B8(v909);
    v178 = v190;
    v968 = v201;
    v191 = &v182;
    MEMORY[0x1EEE9AC00](&v182);
    *(&v182 - 2) = v179;
    v180 = sub_1B0E44F58();
    v192 = v178;
    v193 = v180;
    if (!v178)
    {
      v183 = v193;
      v186 = 0;
      v967 = v193;
      sub_1B03D08AC(v904, v909);
      v184 = v980;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v185 = v979;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07411F4(v183, v909, v184, v185, v887);
      sub_1B03D09B8(v904);
      sub_1B03D09B8(v906);

      (*(v916 + 8))(v918, v914);

      sub_1B039E440(&v979);
      return sub_1B039E440(&v980);
    }
  }

  result = v191;
  __break(1u);
  return result;
}

uint64_t sub_1B0726E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v12);
  sub_1B07B639C(a1, a2, a3, a4, a6);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1B0726F34(uint64_t a1)
{
  v2647 = v2821;
  v2763 = MEMORY[0x1EEE9AC00](a1);
  v2764 = v3;
  v2765 = v4;
  v2766 = v5;
  v2767 = v6;
  v2768 = v7;
  v2780 = v2;
  v2648 = sub_1B074E050;
  v2649 = sub_1B0394C30;
  v2650 = sub_1B0394C24;
  v2651 = sub_1B074DFFC;
  v2652 = sub_1B039BA88;
  v2653 = sub_1B039BB94;
  v2654 = sub_1B0394C24;
  v2655 = sub_1B039BBA0;
  v2656 = sub_1B039BC08;
  v2657 = 0x786F626C69616DLL;
  v2658 = sub_1B06BA324;
  v2659 = sub_1B074E0E4;
  v2660 = sub_1B039BCF8;
  v2661 = sub_1B074E560;
  v2662 = sub_1B03B0DF8;
  v2663 = sub_1B074E744;
  v2664 = sub_1B03B0DF8;
  v2665 = sub_1B03FB774;
  v2666 = sub_1B03B0DF8;
  v2667 = sub_1B03FB774;
  v2668 = sub_1B03B0DF8;
  v2669 = sub_1B0398F5C;
  v2670 = sub_1B0398F5C;
  v2671 = sub_1B0399178;
  v2672 = sub_1B0398F5C;
  v2673 = sub_1B0398F5C;
  v2674 = sub_1B039BA94;
  v2675 = sub_1B0398F5C;
  v2676 = sub_1B0398F5C;
  v2677 = sub_1B0399178;
  v2678 = sub_1B0398F5C;
  v2679 = sub_1B0398F5C;
  v2680 = sub_1B03991EC;
  v2681 = sub_1B0398F5C;
  v2682 = sub_1B0398F5C;
  v2683 = sub_1B03993BC;
  v2684 = sub_1B0398F5C;
  v2685 = sub_1B0398F5C;
  v2686 = sub_1B039BCEC;
  v2687 = sub_1B0398F5C;
  v2688 = sub_1B0398F5C;
  v2689 = sub_1B0399260;
  v2690 = sub_1B0398F5C;
  v2691 = sub_1B0398F5C;
  v2692 = sub_1B0399260;
  v2693 = sub_1B0398F5C;
  v2694 = sub_1B0398F5C;
  v2695 = sub_1B0399260;
  v2696 = sub_1B0398F5C;
  v2697 = sub_1B0398F5C;
  v2698 = sub_1B0399260;
  v2699 = sub_1B074E050;
  v2700 = sub_1B0394C24;
  v2701 = sub_1B074DFFC;
  v2702 = sub_1B039BA88;
  v2703 = sub_1B0394C24;
  v2704 = sub_1B039BBA0;
  v2705 = sub_1B039BC08;
  v2706 = sub_1B06BA324;
  v2707 = sub_1B074E0E4;
  v2708 = sub_1B039BCF8;
  v2709 = sub_1B074E560;
  v2710 = sub_1B03B0DF8;
  v2711 = sub_1B074E744;
  v2712 = sub_1B03B0DF8;
  v2713 = sub_1B03FB774;
  v2714 = sub_1B03B0DF8;
  v2715 = sub_1B0398F5C;
  v2716 = sub_1B0398F5C;
  v2717 = sub_1B0399178;
  v2718 = sub_1B0398F5C;
  v2719 = sub_1B0398F5C;
  v2720 = sub_1B039BA94;
  v2721 = sub_1B0398F5C;
  v2722 = sub_1B0398F5C;
  v2723 = sub_1B0399178;
  v2724 = sub_1B0398F5C;
  v2725 = sub_1B0398F5C;
  v2726 = sub_1B03991EC;
  v2727 = sub_1B0398F5C;
  v2728 = sub_1B0398F5C;
  v2729 = sub_1B03993BC;
  v2730 = sub_1B0398F5C;
  v2731 = sub_1B0398F5C;
  v2732 = sub_1B039BCEC;
  v2733 = sub_1B0398F5C;
  v2734 = sub_1B0398F5C;
  v2735 = sub_1B0399260;
  v2736 = sub_1B0398F5C;
  v2737 = sub_1B0398F5C;
  v2738 = sub_1B0399260;
  v2739 = sub_1B0398F5C;
  v2740 = sub_1B0398F5C;
  v2741 = sub_1B0399260;
  v2817 = 0;
  v2816 = 0;
  v2815 = 0;
  v2813 = 0;
  v2814 = 0;
  v2811 = 0;
  v2812 = 0;
  v2810 = 0;
  v2809 = 0;
  v2808 = 0;
  v2778 = v2807;
  memset(v2807, 0, sizeof(v2807));
  v2801 = 0;
  v2769 = 0;
  v2742 = _s6LoggerVMa_1();
  v2743 = (*(*(v2742 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v2744 = v654 - v2743;
  v2745 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v2746 = v654 - v2745;
  v2747 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v2748 = v654 - v2747;
  v2749 = sub_1B0E439A8();
  v2750 = *(v2749 - 8);
  v2751 = v2749 - 8;
  v2752 = (*(v2750 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v2769);
  v2753 = v654 - v2752;
  v2754 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v2755 = v654 - v2754;
  v14 = _s21UnfilteredFlagChangesVMa();
  v2756 = *(v14 - 8);
  v2757 = v2756;
  v2758 = *(v2756 + 64);
  v2759 = (v2758 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v2760 = v654 - v2759;
  v2761 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v654 - v2759);
  v2762 = v654 - v2761;
  v2817 = v654 - v2761;
  v2770 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v2774 = *(*(v2770 - 8) + 64);
  v2771 = (v2774 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v2769);
  v2772 = v654 - v2771;
  v2773 = (v2774 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v2775 = v654 - v2773;
  v2776 = (v2774 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v2777 = v654 - v2776;
  v2816 = v654 - v2776;
  v2815 = v18;
  v2813 = v19;
  v2814 = v20;
  v2811 = v21;
  v2812 = v22;
  v2810 = v23;
  v2809 = v1;
  v2808 = sub_1B0E46A48();
  v24 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v24);
  v2805 = 0;
  v2806 = 4;
  v2779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  for (i = v2780; ; i = v675)
  {
    v2646 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    sub_1B0E46518();
    if (v2804)
    {
      v658 = v2646;
      goto LABEL_34;
    }

    sub_1B03D08AC(v2777, v2775);
    v25 = v2646;
    v2764(v2763, v2775);
    v2644 = v25;
    v2645 = v25;
    if (v25)
    {
      v654[1] = v2645;
      sub_1B03D09B8(v2775);
      sub_1B03D09B8(v2777);
      sub_1B039E440(&v2808);
      return v2541;
    }

    sub_1B03D09B8(v2775);
    sub_1B0735EEC(v2772);
    MessageIdentifierSet.formUnion(_:)(v2772, v2770);
    sub_1B03D09B8(v2772);
    if (sub_1B0736144())
    {
      sub_1B074E258(v2762);
      v658 = v2644;
      goto LABEL_34;
    }

    sub_1B0736314(&v2818);
    v2639 = v2819;
    v2640 = v2820;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2766(v2639, *(&v2639 + 1), v2640, *(&v2640 + 1));

    v2641 = v2819;
    v2642 = v2820;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2643 = sub_1B07B7040(v2641, *(&v2641 + 1), v2642, *(&v2642 + 1));

    if (v2643)
    {
      (*(v2750 + 16))(v2755, v2768, v2749);
      sub_1B074B69C(v2768, v2748);
      sub_1B074B69C(v2748, v2746);
      sub_1B074E41C(v2748, v2744);
      v26 = (v2746 + *(v2742 + 20));
      v2579 = *v26;
      v2580 = *(v26 + 1);
      v2581 = *(v26 + 1);
      v2582 = *(v26 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v2746);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v2578 = 36;
      v2604 = 7;
      v27 = swift_allocObject();
      v28 = v2580;
      v29 = v2581;
      v30 = v2582;
      v2586 = v27;
      *(v27 + 16) = v2579;
      *(v27 + 20) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = swift_allocObject();
      v32 = v2580;
      v33 = v2581;
      v34 = v2582;
      v2577 = v31;
      *(v31 + 16) = v2579;
      *(v31 + 20) = v32;
      *(v31 + 24) = v33;
      *(v31 + 32) = v34;

      v2603 = 32;
      v35 = swift_allocObject();
      v36 = v2577;
      v2591 = v35;
      *(v35 + 16) = v2699;
      *(v35 + 24) = v36;
      sub_1B0394868();
      sub_1B0394868();

      v37 = swift_allocObject();
      v38 = v2580;
      v39 = v2581;
      v40 = v2582;
      v41 = v37;
      v42 = v2744;
      v2595 = v41;
      *(v41 + 16) = v2579;
      *(v41 + 20) = v38;
      *(v41 + 24) = v39;
      *(v41 + 32) = v40;
      sub_1B074B764(v42);
      v2583 = &v2818;
      sub_1B074E4B4(&v2818, v2787);
      v2597 = swift_allocObject();
      memcpy((v2597 + 16), v2583, 0x28uLL);
      sub_1B074E568(v2762, v2760);
      v2584 = (*(v2757 + 80) + 16) & ~*(v2757 + 80);
      v2599 = swift_allocObject();
      sub_1B074E678(v2760, (v2599 + v2584));
      v2593 = 24;
      v2605 = swift_allocObject();
      *(v2605 + 16) = v2763;
      v2637 = sub_1B0E43988();
      v2638 = sub_1B0E458C8();
      v2601 = 17;
      v2607 = swift_allocObject();
      v2588 = 16;
      *(v2607 + 16) = 16;
      v2608 = swift_allocObject();
      v2590 = 4;
      *(v2608 + 16) = 4;
      v43 = swift_allocObject();
      v2585 = v43;
      *(v43 + 16) = v2649;
      *(v43 + 24) = 0;
      v44 = swift_allocObject();
      v45 = v2585;
      v2609 = v44;
      *(v44 + 16) = v2700;
      *(v44 + 24) = v45;
      v2610 = swift_allocObject();
      *(v2610 + 16) = 0;
      v2611 = swift_allocObject();
      *(v2611 + 16) = 1;
      v46 = swift_allocObject();
      v47 = v2586;
      v2587 = v46;
      *(v46 + 16) = v2701;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v2587;
      v2612 = v48;
      *(v48 + 16) = v2702;
      *(v48 + 24) = v49;
      v2613 = swift_allocObject();
      *(v2613 + 16) = v2588;
      v2614 = swift_allocObject();
      *(v2614 + 16) = v2590;
      v50 = swift_allocObject();
      v2589 = v50;
      *(v50 + 16) = v2653;
      *(v50 + 24) = 0;
      v51 = swift_allocObject();
      v52 = v2589;
      v2615 = v51;
      *(v51 + 16) = v2703;
      *(v51 + 24) = v52;
      v2616 = swift_allocObject();
      *(v2616 + 16) = 0;
      v2617 = swift_allocObject();
      *(v2617 + 16) = v2590;
      v53 = swift_allocObject();
      v54 = v2591;
      v2592 = v53;
      *(v53 + 16) = v2704;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v2592;
      v2618 = v55;
      *(v55 + 16) = v2705;
      *(v55 + 24) = v56;
      v2619 = swift_allocObject();
      *(v2619 + 16) = 112;
      v2620 = swift_allocObject();
      v2602 = 8;
      *(v2620 + 16) = 8;
      v2594 = swift_allocObject();
      *(v2594 + 16) = v2657;
      v57 = swift_allocObject();
      v58 = v2594;
      v2621 = v57;
      *(v57 + 16) = v2706;
      *(v57 + 24) = v58;
      v2622 = swift_allocObject();
      *(v2622 + 16) = 37;
      v2623 = swift_allocObject();
      *(v2623 + 16) = v2602;
      v59 = swift_allocObject();
      v60 = v2595;
      v2596 = v59;
      *(v59 + 16) = v2707;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v2596;
      v2624 = v61;
      *(v61 + 16) = v2708;
      *(v61 + 24) = v62;
      v2625 = swift_allocObject();
      *(v2625 + 16) = 0;
      v2626 = swift_allocObject();
      *(v2626 + 16) = v2602;
      v63 = swift_allocObject();
      v64 = v2597;
      v2598 = v63;
      *(v63 + 16) = v2709;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v2598;
      v2627 = v65;
      *(v65 + 16) = v2710;
      *(v65 + 24) = v66;
      v2628 = swift_allocObject();
      *(v2628 + 16) = 0;
      v2629 = swift_allocObject();
      *(v2629 + 16) = v2602;
      v67 = swift_allocObject();
      v68 = v2599;
      v2600 = v67;
      *(v67 + 16) = v2711;
      *(v67 + 24) = v68;
      v69 = swift_allocObject();
      v70 = v2600;
      v2630 = v69;
      *(v69 + 16) = v2712;
      *(v69 + 24) = v70;
      v2631 = swift_allocObject();
      *(v2631 + 16) = 0;
      v2632 = swift_allocObject();
      *(v2632 + 16) = v2602;
      v71 = swift_allocObject();
      v72 = v2605;
      v2606 = v71;
      *(v71 + 16) = v2713;
      *(v71 + 24) = v72;
      v73 = swift_allocObject();
      v74 = v2606;
      v2634 = v73;
      *(v73 + 16) = v2714;
      *(v73 + 24) = v74;
      v2636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v2633 = sub_1B0E46A48();
      v2635 = v75;

      v76 = v2607;
      v77 = v2635;
      *v2635 = v2715;
      v77[1] = v76;

      v78 = v2608;
      v79 = v2635;
      v2635[2] = v2716;
      v79[3] = v78;

      v80 = v2609;
      v81 = v2635;
      v2635[4] = v2717;
      v81[5] = v80;

      v82 = v2610;
      v83 = v2635;
      v2635[6] = v2718;
      v83[7] = v82;

      v84 = v2611;
      v85 = v2635;
      v2635[8] = v2719;
      v85[9] = v84;

      v86 = v2612;
      v87 = v2635;
      v2635[10] = v2720;
      v87[11] = v86;

      v88 = v2613;
      v89 = v2635;
      v2635[12] = v2721;
      v89[13] = v88;

      v90 = v2614;
      v91 = v2635;
      v2635[14] = v2722;
      v91[15] = v90;

      v92 = v2615;
      v93 = v2635;
      v2635[16] = v2723;
      v93[17] = v92;

      v94 = v2616;
      v95 = v2635;
      v2635[18] = v2724;
      v95[19] = v94;

      v96 = v2617;
      v97 = v2635;
      v2635[20] = v2725;
      v97[21] = v96;

      v98 = v2618;
      v99 = v2635;
      v2635[22] = v2726;
      v99[23] = v98;

      v100 = v2619;
      v101 = v2635;
      v2635[24] = v2727;
      v101[25] = v100;

      v102 = v2620;
      v103 = v2635;
      v2635[26] = v2728;
      v103[27] = v102;

      v104 = v2621;
      v105 = v2635;
      v2635[28] = v2729;
      v105[29] = v104;

      v106 = v2622;
      v107 = v2635;
      v2635[30] = v2730;
      v107[31] = v106;

      v108 = v2623;
      v109 = v2635;
      v2635[32] = v2731;
      v109[33] = v108;

      v110 = v2624;
      v111 = v2635;
      v2635[34] = v2732;
      v111[35] = v110;

      v112 = v2625;
      v113 = v2635;
      v2635[36] = v2733;
      v113[37] = v112;

      v114 = v2626;
      v115 = v2635;
      v2635[38] = v2734;
      v115[39] = v114;

      v116 = v2627;
      v117 = v2635;
      v2635[40] = v2735;
      v117[41] = v116;

      v118 = v2628;
      v119 = v2635;
      v2635[42] = v2736;
      v119[43] = v118;

      v120 = v2629;
      v121 = v2635;
      v2635[44] = v2737;
      v121[45] = v120;

      v122 = v2630;
      v123 = v2635;
      v2635[46] = v2738;
      v123[47] = v122;

      v124 = v2631;
      v125 = v2635;
      v2635[48] = v2739;
      v125[49] = v124;

      v126 = v2632;
      v127 = v2635;
      v2635[50] = v2740;
      v127[51] = v126;

      v128 = v2634;
      v129 = v2635;
      v2635[52] = v2741;
      v129[53] = v128;
      sub_1B0394964();

      if (os_log_type_enabled(v2637, v2638))
      {
        v130 = v2614;
        v131 = v2613;
        v132 = v2612;
        v133 = v2611;
        v134 = v2610;
        v135 = v2609;
        v136 = v2608;
        v2543 = sub_1B0E45D78();
        v2542 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v2544 = sub_1B03949A8(0);
        v2545 = sub_1B03949A8(1);
        v2546 = &v2786;
        v2786 = v2543;
        v2547 = &v2785;
        v2785 = v2544;
        v2548 = &v2784;
        v2784 = v2545;
        sub_1B0394A48(3, &v2786);
        sub_1B0394A48(9, v2546);
        v137 = v2644;
        v2782 = v2715;
        v2783 = v2607;
        sub_1B03949FC(&v2782, v2546, v2547, v2548);
        v2549 = v137;
        v2550 = v2607;
        v2551 = v136;
        v2552 = v135;
        v2553 = v134;
        v2554 = v133;
        v2555 = v132;
        v2556 = v131;
        v2557 = v130;
        v2558 = v2615;
        v2559 = v2616;
        v2560 = v2617;
        v2561 = v2618;
        v2562 = v2619;
        v2563 = v2620;
        v2564 = v2621;
        v2565 = v2622;
        v2566 = v2623;
        v2567 = v2624;
        v2568 = v2625;
        v2569 = v2626;
        v2570 = v2627;
        v2571 = v2628;
        v2572 = v2629;
        v2573 = v2630;
        v2574 = v2631;
        v2575 = v2632;
        v2576 = v2634;
        if (v137)
        {
          v2513 = v2550;
          v2514 = v2551;
          v2515 = v2552;
          v2516 = v2553;
          v2517 = v2554;
          v2518 = v2555;
          v2519 = v2556;
          v2520 = v2557;
          v2521 = v2558;
          v2522 = v2559;
          v2523 = v2560;
          v2524 = v2561;
          v2525 = v2562;
          v2526 = v2563;
          v2527 = v2564;
          v2528 = v2565;
          v2529 = v2566;
          v2530 = v2567;
          v2531 = v2568;
          v2532 = v2569;
          v2533 = v2570;
          v2534 = v2571;
          v2535 = v2572;
          v2536 = v2573;
          v2537 = v2574;
          v2538 = v2575;
          v2539 = v2576;
          v1784 = v2576;
          v1783 = v2575;
          v1782 = v2574;
          v1781 = v2573;
          v1780 = v2572;
          v1779 = v2571;
          v1778 = v2570;
          v1777 = v2569;
          v1776 = v2568;
          v1775 = v2567;
          v1774 = v2566;
          v1773 = v2565;
          v1772 = v2564;
          v1771 = v2563;
          v1770 = v2562;
          v1769 = v2561;
          v1768 = v2560;
          v1767 = v2559;
          v1766 = v2558;
          v1765 = v2557;
          v1764 = v2556;
          v1763 = v2555;
          v1762 = v2554;
          v1761 = v2553;
          v1760 = v2552;
          v1759 = v2551;

          __break(1u);
        }

        else
        {
          v138 = v2614;
          v139 = v2613;
          v140 = v2612;
          v141 = v2611;
          v142 = v2610;
          v143 = v2609;
          v144 = v2608;
          v2782 = v2716;
          v2783 = v2608;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2485 = 0;
          v2486 = v2607;
          v2487 = v144;
          v2488 = v143;
          v2489 = v142;
          v2490 = v141;
          v2491 = v140;
          v2492 = v139;
          v2493 = v138;
          v2494 = v2615;
          v2495 = v2616;
          v2496 = v2617;
          v2497 = v2618;
          v2498 = v2619;
          v2499 = v2620;
          v2500 = v2621;
          v2501 = v2622;
          v2502 = v2623;
          v2503 = v2624;
          v2504 = v2625;
          v2505 = v2626;
          v2506 = v2627;
          v2507 = v2628;
          v2508 = v2629;
          v2509 = v2630;
          v2510 = v2631;
          v2511 = v2632;
          v2512 = v2634;
          v145 = v2614;
          v146 = v2613;
          v147 = v2612;
          v148 = v2611;
          v149 = v2610;
          v150 = v2609;
          v151 = v2608;
          v2782 = v2717;
          v2783 = v2609;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2457 = 0;
          v2458 = v2607;
          v2459 = v151;
          v2460 = v150;
          v2461 = v149;
          v2462 = v148;
          v2463 = v147;
          v2464 = v146;
          v2465 = v145;
          v2466 = v2615;
          v2467 = v2616;
          v2468 = v2617;
          v2469 = v2618;
          v2470 = v2619;
          v2471 = v2620;
          v2472 = v2621;
          v2473 = v2622;
          v2474 = v2623;
          v2475 = v2624;
          v2476 = v2625;
          v2477 = v2626;
          v2478 = v2627;
          v2479 = v2628;
          v2480 = v2629;
          v2481 = v2630;
          v2482 = v2631;
          v2483 = v2632;
          v2484 = v2634;
          v152 = v2614;
          v153 = v2613;
          v154 = v2612;
          v155 = v2611;
          v156 = v2610;
          v157 = v2609;
          v158 = v2608;
          v2782 = v2718;
          v2783 = v2610;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2429 = 0;
          v2430 = v2607;
          v2431 = v158;
          v2432 = v157;
          v2433 = v156;
          v2434 = v155;
          v2435 = v154;
          v2436 = v153;
          v2437 = v152;
          v2438 = v2615;
          v2439 = v2616;
          v2440 = v2617;
          v2441 = v2618;
          v2442 = v2619;
          v2443 = v2620;
          v2444 = v2621;
          v2445 = v2622;
          v2446 = v2623;
          v2447 = v2624;
          v2448 = v2625;
          v2449 = v2626;
          v2450 = v2627;
          v2451 = v2628;
          v2452 = v2629;
          v2453 = v2630;
          v2454 = v2631;
          v2455 = v2632;
          v2456 = v2634;
          v159 = v2614;
          v160 = v2613;
          v161 = v2612;
          v162 = v2611;
          v163 = v2610;
          v164 = v2609;
          v165 = v2608;
          v2782 = v2719;
          v2783 = v2611;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2401 = 0;
          v2402 = v2607;
          v2403 = v165;
          v2404 = v164;
          v2405 = v163;
          v2406 = v162;
          v2407 = v161;
          v2408 = v160;
          v2409 = v159;
          v2410 = v2615;
          v2411 = v2616;
          v2412 = v2617;
          v2413 = v2618;
          v2414 = v2619;
          v2415 = v2620;
          v2416 = v2621;
          v2417 = v2622;
          v2418 = v2623;
          v2419 = v2624;
          v2420 = v2625;
          v2421 = v2626;
          v2422 = v2627;
          v2423 = v2628;
          v2424 = v2629;
          v2425 = v2630;
          v2426 = v2631;
          v2427 = v2632;
          v2428 = v2634;
          v166 = v2614;
          v167 = v2613;
          v168 = v2612;
          v169 = v2611;
          v170 = v2610;
          v171 = v2609;
          v172 = v2608;
          v2782 = v2720;
          v2783 = v2612;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2373 = 0;
          v2374 = v2607;
          v2375 = v172;
          v2376 = v171;
          v2377 = v170;
          v2378 = v169;
          v2379 = v168;
          v2380 = v167;
          v2381 = v166;
          v2382 = v2615;
          v2383 = v2616;
          v2384 = v2617;
          v2385 = v2618;
          v2386 = v2619;
          v2387 = v2620;
          v2388 = v2621;
          v2389 = v2622;
          v2390 = v2623;
          v2391 = v2624;
          v2392 = v2625;
          v2393 = v2626;
          v2394 = v2627;
          v2395 = v2628;
          v2396 = v2629;
          v2397 = v2630;
          v2398 = v2631;
          v2399 = v2632;
          v2400 = v2634;
          v173 = v2614;
          v174 = v2613;
          v175 = v2612;
          v176 = v2611;
          v177 = v2610;
          v178 = v2609;
          v179 = v2608;
          v2782 = v2721;
          v2783 = v2613;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2345 = 0;
          v2346 = v2607;
          v2347 = v179;
          v2348 = v178;
          v2349 = v177;
          v2350 = v176;
          v2351 = v175;
          v2352 = v174;
          v2353 = v173;
          v2354 = v2615;
          v2355 = v2616;
          v2356 = v2617;
          v2357 = v2618;
          v2358 = v2619;
          v2359 = v2620;
          v2360 = v2621;
          v2361 = v2622;
          v2362 = v2623;
          v2363 = v2624;
          v2364 = v2625;
          v2365 = v2626;
          v2366 = v2627;
          v2367 = v2628;
          v2368 = v2629;
          v2369 = v2630;
          v2370 = v2631;
          v2371 = v2632;
          v2372 = v2634;
          v180 = v2614;
          v181 = v2613;
          v182 = v2612;
          v183 = v2611;
          v184 = v2610;
          v185 = v2609;
          v186 = v2608;
          v2782 = v2722;
          v2783 = v2614;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2317 = 0;
          v2318 = v2607;
          v2319 = v186;
          v2320 = v185;
          v2321 = v184;
          v2322 = v183;
          v2323 = v182;
          v2324 = v181;
          v2325 = v180;
          v2326 = v2615;
          v2327 = v2616;
          v2328 = v2617;
          v2329 = v2618;
          v2330 = v2619;
          v2331 = v2620;
          v2332 = v2621;
          v2333 = v2622;
          v2334 = v2623;
          v2335 = v2624;
          v2336 = v2625;
          v2337 = v2626;
          v2338 = v2627;
          v2339 = v2628;
          v2340 = v2629;
          v2341 = v2630;
          v2342 = v2631;
          v2343 = v2632;
          v2344 = v2634;
          v187 = v2614;
          v188 = v2613;
          v189 = v2612;
          v190 = v2611;
          v191 = v2610;
          v192 = v2609;
          v193 = v2608;
          v2782 = v2723;
          v2783 = v2615;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2289 = 0;
          v2290 = v2607;
          v2291 = v193;
          v2292 = v192;
          v2293 = v191;
          v2294 = v190;
          v2295 = v189;
          v2296 = v188;
          v2297 = v187;
          v2298 = v2615;
          v2299 = v2616;
          v2300 = v2617;
          v2301 = v2618;
          v2302 = v2619;
          v2303 = v2620;
          v2304 = v2621;
          v2305 = v2622;
          v2306 = v2623;
          v2307 = v2624;
          v2308 = v2625;
          v2309 = v2626;
          v2310 = v2627;
          v2311 = v2628;
          v2312 = v2629;
          v2313 = v2630;
          v2314 = v2631;
          v2315 = v2632;
          v2316 = v2634;
          v194 = v2614;
          v195 = v2613;
          v196 = v2612;
          v197 = v2611;
          v198 = v2610;
          v199 = v2609;
          v200 = v2608;
          v2782 = v2724;
          v2783 = v2616;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2261 = 0;
          v2262 = v2607;
          v2263 = v200;
          v2264 = v199;
          v2265 = v198;
          v2266 = v197;
          v2267 = v196;
          v2268 = v195;
          v2269 = v194;
          v2270 = v2615;
          v2271 = v2616;
          v2272 = v2617;
          v2273 = v2618;
          v2274 = v2619;
          v2275 = v2620;
          v2276 = v2621;
          v2277 = v2622;
          v2278 = v2623;
          v2279 = v2624;
          v2280 = v2625;
          v2281 = v2626;
          v2282 = v2627;
          v2283 = v2628;
          v2284 = v2629;
          v2285 = v2630;
          v2286 = v2631;
          v2287 = v2632;
          v2288 = v2634;
          v201 = v2614;
          v202 = v2613;
          v203 = v2612;
          v204 = v2611;
          v205 = v2610;
          v206 = v2609;
          v207 = v2608;
          v2782 = v2725;
          v2783 = v2617;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2233 = 0;
          v2234 = v2607;
          v2235 = v207;
          v2236 = v206;
          v2237 = v205;
          v2238 = v204;
          v2239 = v203;
          v2240 = v202;
          v2241 = v201;
          v2242 = v2615;
          v2243 = v2616;
          v2244 = v2617;
          v2245 = v2618;
          v2246 = v2619;
          v2247 = v2620;
          v2248 = v2621;
          v2249 = v2622;
          v2250 = v2623;
          v2251 = v2624;
          v2252 = v2625;
          v2253 = v2626;
          v2254 = v2627;
          v2255 = v2628;
          v2256 = v2629;
          v2257 = v2630;
          v2258 = v2631;
          v2259 = v2632;
          v2260 = v2634;
          v208 = v2614;
          v209 = v2613;
          v210 = v2612;
          v211 = v2611;
          v212 = v2610;
          v213 = v2609;
          v214 = v2608;
          v2782 = v2726;
          v2783 = v2618;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2205 = 0;
          v2206 = v2607;
          v2207 = v214;
          v2208 = v213;
          v2209 = v212;
          v2210 = v211;
          v2211 = v210;
          v2212 = v209;
          v2213 = v208;
          v2214 = v2615;
          v2215 = v2616;
          v2216 = v2617;
          v2217 = v2618;
          v2218 = v2619;
          v2219 = v2620;
          v2220 = v2621;
          v2221 = v2622;
          v2222 = v2623;
          v2223 = v2624;
          v2224 = v2625;
          v2225 = v2626;
          v2226 = v2627;
          v2227 = v2628;
          v2228 = v2629;
          v2229 = v2630;
          v2230 = v2631;
          v2231 = v2632;
          v2232 = v2634;
          v215 = v2614;
          v216 = v2613;
          v217 = v2612;
          v218 = v2611;
          v219 = v2610;
          v220 = v2609;
          v221 = v2608;
          v2782 = v2727;
          v2783 = v2619;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2177 = 0;
          v2178 = v2607;
          v2179 = v221;
          v2180 = v220;
          v2181 = v219;
          v2182 = v218;
          v2183 = v217;
          v2184 = v216;
          v2185 = v215;
          v2186 = v2615;
          v2187 = v2616;
          v2188 = v2617;
          v2189 = v2618;
          v2190 = v2619;
          v2191 = v2620;
          v2192 = v2621;
          v2193 = v2622;
          v2194 = v2623;
          v2195 = v2624;
          v2196 = v2625;
          v2197 = v2626;
          v2198 = v2627;
          v2199 = v2628;
          v2200 = v2629;
          v2201 = v2630;
          v2202 = v2631;
          v2203 = v2632;
          v2204 = v2634;
          v222 = v2614;
          v223 = v2613;
          v224 = v2612;
          v225 = v2611;
          v226 = v2610;
          v227 = v2609;
          v228 = v2608;
          v2782 = v2728;
          v2783 = v2620;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2149 = 0;
          v2150 = v2607;
          v2151 = v228;
          v2152 = v227;
          v2153 = v226;
          v2154 = v225;
          v2155 = v224;
          v2156 = v223;
          v2157 = v222;
          v2158 = v2615;
          v2159 = v2616;
          v2160 = v2617;
          v2161 = v2618;
          v2162 = v2619;
          v2163 = v2620;
          v2164 = v2621;
          v2165 = v2622;
          v2166 = v2623;
          v2167 = v2624;
          v2168 = v2625;
          v2169 = v2626;
          v2170 = v2627;
          v2171 = v2628;
          v2172 = v2629;
          v2173 = v2630;
          v2174 = v2631;
          v2175 = v2632;
          v2176 = v2634;
          v229 = v2614;
          v230 = v2613;
          v231 = v2612;
          v232 = v2611;
          v233 = v2610;
          v234 = v2609;
          v235 = v2608;
          v2782 = v2729;
          v2783 = v2621;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2121 = 0;
          v2122 = v2607;
          v2123 = v235;
          v2124 = v234;
          v2125 = v233;
          v2126 = v232;
          v2127 = v231;
          v2128 = v230;
          v2129 = v229;
          v2130 = v2615;
          v2131 = v2616;
          v2132 = v2617;
          v2133 = v2618;
          v2134 = v2619;
          v2135 = v2620;
          v2136 = v2621;
          v2137 = v2622;
          v2138 = v2623;
          v2139 = v2624;
          v2140 = v2625;
          v2141 = v2626;
          v2142 = v2627;
          v2143 = v2628;
          v2144 = v2629;
          v2145 = v2630;
          v2146 = v2631;
          v2147 = v2632;
          v2148 = v2634;
          v236 = v2614;
          v237 = v2613;
          v238 = v2612;
          v239 = v2611;
          v240 = v2610;
          v241 = v2609;
          v242 = v2608;
          v2782 = v2730;
          v2783 = v2622;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2093 = 0;
          v2094 = v2607;
          v2095 = v242;
          v2096 = v241;
          v2097 = v240;
          v2098 = v239;
          v2099 = v238;
          v2100 = v237;
          v2101 = v236;
          v2102 = v2615;
          v2103 = v2616;
          v2104 = v2617;
          v2105 = v2618;
          v2106 = v2619;
          v2107 = v2620;
          v2108 = v2621;
          v2109 = v2622;
          v2110 = v2623;
          v2111 = v2624;
          v2112 = v2625;
          v2113 = v2626;
          v2114 = v2627;
          v2115 = v2628;
          v2116 = v2629;
          v2117 = v2630;
          v2118 = v2631;
          v2119 = v2632;
          v2120 = v2634;
          v243 = v2614;
          v244 = v2613;
          v245 = v2612;
          v246 = v2611;
          v247 = v2610;
          v248 = v2609;
          v249 = v2608;
          v2782 = v2731;
          v2783 = v2623;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2065 = 0;
          v2066 = v2607;
          v2067 = v249;
          v2068 = v248;
          v2069 = v247;
          v2070 = v246;
          v2071 = v245;
          v2072 = v244;
          v2073 = v243;
          v2074 = v2615;
          v2075 = v2616;
          v2076 = v2617;
          v2077 = v2618;
          v2078 = v2619;
          v2079 = v2620;
          v2080 = v2621;
          v2081 = v2622;
          v2082 = v2623;
          v2083 = v2624;
          v2084 = v2625;
          v2085 = v2626;
          v2086 = v2627;
          v2087 = v2628;
          v2088 = v2629;
          v2089 = v2630;
          v2090 = v2631;
          v2091 = v2632;
          v2092 = v2634;
          v250 = v2614;
          v251 = v2613;
          v252 = v2612;
          v253 = v2611;
          v254 = v2610;
          v255 = v2609;
          v256 = v2608;
          v2782 = v2732;
          v2783 = v2624;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2037 = 0;
          v2038 = v2607;
          v2039 = v256;
          v2040 = v255;
          v2041 = v254;
          v2042 = v253;
          v2043 = v252;
          v2044 = v251;
          v2045 = v250;
          v2046 = v2615;
          v2047 = v2616;
          v2048 = v2617;
          v2049 = v2618;
          v2050 = v2619;
          v2051 = v2620;
          v2052 = v2621;
          v2053 = v2622;
          v2054 = v2623;
          v2055 = v2624;
          v2056 = v2625;
          v2057 = v2626;
          v2058 = v2627;
          v2059 = v2628;
          v2060 = v2629;
          v2061 = v2630;
          v2062 = v2631;
          v2063 = v2632;
          v2064 = v2634;
          v257 = v2614;
          v258 = v2613;
          v259 = v2612;
          v260 = v2611;
          v261 = v2610;
          v262 = v2609;
          v263 = v2608;
          v2782 = v2733;
          v2783 = v2625;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v2009 = 0;
          v2010 = v2607;
          v2011 = v263;
          v2012 = v262;
          v2013 = v261;
          v2014 = v260;
          v2015 = v259;
          v2016 = v258;
          v2017 = v257;
          v2018 = v2615;
          v2019 = v2616;
          v2020 = v2617;
          v2021 = v2618;
          v2022 = v2619;
          v2023 = v2620;
          v2024 = v2621;
          v2025 = v2622;
          v2026 = v2623;
          v2027 = v2624;
          v2028 = v2625;
          v2029 = v2626;
          v2030 = v2627;
          v2031 = v2628;
          v2032 = v2629;
          v2033 = v2630;
          v2034 = v2631;
          v2035 = v2632;
          v2036 = v2634;
          v264 = v2614;
          v265 = v2613;
          v266 = v2612;
          v267 = v2611;
          v268 = v2610;
          v269 = v2609;
          v270 = v2608;
          v2782 = v2734;
          v2783 = v2626;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1981 = 0;
          v1982 = v2607;
          v1983 = v270;
          v1984 = v269;
          v1985 = v268;
          v1986 = v267;
          v1987 = v266;
          v1988 = v265;
          v1989 = v264;
          v1990 = v2615;
          v1991 = v2616;
          v1992 = v2617;
          v1993 = v2618;
          v1994 = v2619;
          v1995 = v2620;
          v1996 = v2621;
          v1997 = v2622;
          v1998 = v2623;
          v1999 = v2624;
          v2000 = v2625;
          v2001 = v2626;
          v2002 = v2627;
          v2003 = v2628;
          v2004 = v2629;
          v2005 = v2630;
          v2006 = v2631;
          v2007 = v2632;
          v2008 = v2634;
          v271 = v2614;
          v272 = v2613;
          v273 = v2612;
          v274 = v2611;
          v275 = v2610;
          v276 = v2609;
          v277 = v2608;
          v2782 = v2735;
          v2783 = v2627;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1953 = 0;
          v1954 = v2607;
          v1955 = v277;
          v1956 = v276;
          v1957 = v275;
          v1958 = v274;
          v1959 = v273;
          v1960 = v272;
          v1961 = v271;
          v1962 = v2615;
          v1963 = v2616;
          v1964 = v2617;
          v1965 = v2618;
          v1966 = v2619;
          v1967 = v2620;
          v1968 = v2621;
          v1969 = v2622;
          v1970 = v2623;
          v1971 = v2624;
          v1972 = v2625;
          v1973 = v2626;
          v1974 = v2627;
          v1975 = v2628;
          v1976 = v2629;
          v1977 = v2630;
          v1978 = v2631;
          v1979 = v2632;
          v1980 = v2634;
          v278 = v2614;
          v279 = v2613;
          v280 = v2612;
          v281 = v2611;
          v282 = v2610;
          v283 = v2609;
          v284 = v2608;
          v2782 = v2736;
          v2783 = v2628;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1925 = 0;
          v1926 = v2607;
          v1927 = v284;
          v1928 = v283;
          v1929 = v282;
          v1930 = v281;
          v1931 = v280;
          v1932 = v279;
          v1933 = v278;
          v1934 = v2615;
          v1935 = v2616;
          v1936 = v2617;
          v1937 = v2618;
          v1938 = v2619;
          v1939 = v2620;
          v1940 = v2621;
          v1941 = v2622;
          v1942 = v2623;
          v1943 = v2624;
          v1944 = v2625;
          v1945 = v2626;
          v1946 = v2627;
          v1947 = v2628;
          v1948 = v2629;
          v1949 = v2630;
          v1950 = v2631;
          v1951 = v2632;
          v1952 = v2634;
          v285 = v2614;
          v286 = v2613;
          v287 = v2612;
          v288 = v2611;
          v289 = v2610;
          v290 = v2609;
          v291 = v2608;
          v2782 = v2737;
          v2783 = v2629;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1897 = 0;
          v1898 = v2607;
          v1899 = v291;
          v1900 = v290;
          v1901 = v289;
          v1902 = v288;
          v1903 = v287;
          v1904 = v286;
          v1905 = v285;
          v1906 = v2615;
          v1907 = v2616;
          v1908 = v2617;
          v1909 = v2618;
          v1910 = v2619;
          v1911 = v2620;
          v1912 = v2621;
          v1913 = v2622;
          v1914 = v2623;
          v1915 = v2624;
          v1916 = v2625;
          v1917 = v2626;
          v1918 = v2627;
          v1919 = v2628;
          v1920 = v2629;
          v1921 = v2630;
          v1922 = v2631;
          v1923 = v2632;
          v1924 = v2634;
          v292 = v2614;
          v293 = v2613;
          v294 = v2612;
          v295 = v2611;
          v296 = v2610;
          v297 = v2609;
          v298 = v2608;
          v2782 = v2738;
          v2783 = v2630;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1869 = 0;
          v1870 = v2607;
          v1871 = v298;
          v1872 = v297;
          v1873 = v296;
          v1874 = v295;
          v1875 = v294;
          v1876 = v293;
          v1877 = v292;
          v1878 = v2615;
          v1879 = v2616;
          v1880 = v2617;
          v1881 = v2618;
          v1882 = v2619;
          v1883 = v2620;
          v1884 = v2621;
          v1885 = v2622;
          v1886 = v2623;
          v1887 = v2624;
          v1888 = v2625;
          v1889 = v2626;
          v1890 = v2627;
          v1891 = v2628;
          v1892 = v2629;
          v1893 = v2630;
          v1894 = v2631;
          v1895 = v2632;
          v1896 = v2634;
          v299 = v2614;
          v300 = v2613;
          v301 = v2612;
          v302 = v2611;
          v303 = v2610;
          v304 = v2609;
          v305 = v2608;
          v2782 = v2739;
          v2783 = v2631;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1841 = 0;
          v1842 = v2607;
          v1843 = v305;
          v1844 = v304;
          v1845 = v303;
          v1846 = v302;
          v1847 = v301;
          v1848 = v300;
          v1849 = v299;
          v1850 = v2615;
          v1851 = v2616;
          v1852 = v2617;
          v1853 = v2618;
          v1854 = v2619;
          v1855 = v2620;
          v1856 = v2621;
          v1857 = v2622;
          v1858 = v2623;
          v1859 = v2624;
          v1860 = v2625;
          v1861 = v2626;
          v1862 = v2627;
          v1863 = v2628;
          v1864 = v2629;
          v1865 = v2630;
          v1866 = v2631;
          v1867 = v2632;
          v1868 = v2634;
          v306 = v2614;
          v307 = v2613;
          v308 = v2612;
          v309 = v2611;
          v310 = v2610;
          v311 = v2609;
          v312 = v2608;
          v2782 = v2740;
          v2783 = v2632;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1813 = 0;
          v1814 = v2607;
          v1815 = v312;
          v1816 = v311;
          v1817 = v310;
          v1818 = v309;
          v1819 = v308;
          v1820 = v307;
          v1821 = v306;
          v1822 = v2615;
          v1823 = v2616;
          v1824 = v2617;
          v1825 = v2618;
          v1826 = v2619;
          v1827 = v2620;
          v1828 = v2621;
          v1829 = v2622;
          v1830 = v2623;
          v1831 = v2624;
          v1832 = v2625;
          v1833 = v2626;
          v1834 = v2627;
          v1835 = v2628;
          v1836 = v2629;
          v1837 = v2630;
          v1838 = v2631;
          v1839 = v2632;
          v1840 = v2634;
          v313 = v2614;
          v314 = v2613;
          v315 = v2612;
          v316 = v2611;
          v317 = v2610;
          v318 = v2609;
          v319 = v2608;
          v2782 = v2741;
          v2783 = v2634;
          sub_1B03949FC(&v2782, &v2786, &v2785, &v2784);
          v1785 = 0;
          v1786 = v2607;
          v1787 = v319;
          v1788 = v318;
          v1789 = v317;
          v1790 = v316;
          v1791 = v315;
          v1792 = v314;
          v1793 = v313;
          v1794 = v2615;
          v1795 = v2616;
          v1796 = v2617;
          v1797 = v2618;
          v1798 = v2619;
          v1799 = v2620;
          v1800 = v2621;
          v1801 = v2622;
          v1802 = v2623;
          v1803 = v2624;
          v1804 = v2625;
          v1805 = v2626;
          v1806 = v2627;
          v1807 = v2628;
          v1808 = v2629;
          v1809 = v2630;
          v1810 = v2631;
          v1811 = v2632;
          v1812 = v2634;
          _os_log_impl(&dword_1B0389000, v2637, v2638, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld messages with flag changes (%ld unfiltered) (limit %ld).", v2543, 0x49u);
          sub_1B03998A8(v2544);
          sub_1B03998A8(v2545);
          sub_1B0E45D58();

          v2540 = v1785;
        }
      }

      else
      {

        v2540 = v2644;
      }

      v1757 = v2540;
      MEMORY[0x1E69E5920](v2637);
      (*(v2750 + 8))(v2755, v2749);
      v1758 = v1757;
      goto LABEL_22;
    }

    v320 = v2647;
    v1749 = &v2818;
    v1747 = v2826;
    *(v2647 + 7) = v2819;
    *(v320 + 8) = v2820;
    sub_1B074E30C(v2826, v2803);
    v1748 = v2826[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B071F9F0(v1747);
    v1751 = sub_1B0E45C48();
    v1752 = sub_1B074E39C();
    v1755 = sub_1B0E454A8();

    v321 = v1749;
    v322 = v2647;
    v323 = *(v1749 + 1);
    v1750 = v2825;
    *(v2647 + 5) = v323;
    *(v322 + 6) = *(v321 + 3);
    sub_1B074E30C(v2825, v2802);
    v1753 = v2825[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B071F9F0(v1750);
    v1754 = sub_1B0E44628();

    result = v1755;
    v1756 = v1755 + v1754;
    if (__OFADD__(v1755, v1754))
    {
      break;
    }

    v2801 = v1756;
    (*(v2750 + 16))(v2753, v2768, v2749);
    sub_1B074B69C(v2768, v2748);
    sub_1B074B69C(v2748, v2746);
    sub_1B074E41C(v2748, v2744);
    v326 = (v2746 + *(v2742 + 20));
    v1682 = *v326;
    v1683 = *(v326 + 1);
    v1684 = *(v326 + 1);
    v1685 = *(v326 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v2746);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1681 = 36;
    v1709 = 7;
    v327 = swift_allocObject();
    v328 = v1683;
    v329 = v1684;
    v330 = v1685;
    v1689 = v327;
    *(v327 + 16) = v1682;
    *(v327 + 20) = v328;
    *(v327 + 24) = v329;
    *(v327 + 32) = v330;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v331 = swift_allocObject();
    v332 = v1683;
    v333 = v1684;
    v334 = v1685;
    v1680 = v331;
    *(v331 + 16) = v1682;
    *(v331 + 20) = v332;
    *(v331 + 24) = v333;
    *(v331 + 32) = v334;

    v1708 = 32;
    v335 = swift_allocObject();
    v336 = v1680;
    v1694 = v335;
    *(v335 + 16) = v2648;
    *(v335 + 24) = v336;
    sub_1B0394868();
    sub_1B0394868();

    v337 = swift_allocObject();
    v338 = v1683;
    v339 = v1684;
    v340 = v1685;
    v341 = v337;
    v342 = v2744;
    v1698 = v341;
    *(v341 + 16) = v1682;
    *(v341 + 20) = v338;
    *(v341 + 24) = v339;
    *(v341 + 32) = v340;
    sub_1B074B764(v342);
    v1686 = &v2818;
    sub_1B074E4B4(&v2818, v2800);
    v1700 = swift_allocObject();
    memcpy((v1700 + 16), v1686, 0x28uLL);
    sub_1B074E568(v2762, v2760);
    v1687 = (*(v2757 + 80) + 16) & ~*(v2757 + 80);
    v1702 = swift_allocObject();
    sub_1B074E678(v2760, (v1702 + v1687));
    v1696 = 24;
    v1704 = swift_allocObject();
    *(v1704 + 16) = v2763;
    v1710 = swift_allocObject();
    *(v1710 + 16) = v1756;
    v1745 = sub_1B0E43988();
    v1746 = sub_1B0E458C8();
    v1706 = 17;
    v1712 = swift_allocObject();
    v1691 = 16;
    *(v1712 + 16) = 16;
    v1713 = swift_allocObject();
    v1693 = 4;
    *(v1713 + 16) = 4;
    v343 = swift_allocObject();
    v1688 = v343;
    *(v343 + 16) = v2649;
    *(v343 + 24) = 0;
    v344 = swift_allocObject();
    v345 = v1688;
    v1714 = v344;
    *(v344 + 16) = v2650;
    *(v344 + 24) = v345;
    v1715 = swift_allocObject();
    *(v1715 + 16) = 0;
    v1716 = swift_allocObject();
    *(v1716 + 16) = 1;
    v346 = swift_allocObject();
    v347 = v1689;
    v1690 = v346;
    *(v346 + 16) = v2651;
    *(v346 + 24) = v347;
    v348 = swift_allocObject();
    v349 = v1690;
    v1717 = v348;
    *(v348 + 16) = v2652;
    *(v348 + 24) = v349;
    v1718 = swift_allocObject();
    *(v1718 + 16) = v1691;
    v1719 = swift_allocObject();
    *(v1719 + 16) = v1693;
    v350 = swift_allocObject();
    v1692 = v350;
    *(v350 + 16) = v2653;
    *(v350 + 24) = 0;
    v351 = swift_allocObject();
    v352 = v1692;
    v1720 = v351;
    *(v351 + 16) = v2654;
    *(v351 + 24) = v352;
    v1721 = swift_allocObject();
    *(v1721 + 16) = 0;
    v1722 = swift_allocObject();
    *(v1722 + 16) = v1693;
    v353 = swift_allocObject();
    v354 = v1694;
    v1695 = v353;
    *(v353 + 16) = v2655;
    *(v353 + 24) = v354;
    v355 = swift_allocObject();
    v356 = v1695;
    v1723 = v355;
    *(v355 + 16) = v2656;
    *(v355 + 24) = v356;
    v1724 = swift_allocObject();
    *(v1724 + 16) = 112;
    v1725 = swift_allocObject();
    v1707 = 8;
    *(v1725 + 16) = 8;
    v1697 = swift_allocObject();
    *(v1697 + 16) = v2657;
    v357 = swift_allocObject();
    v358 = v1697;
    v1726 = v357;
    *(v357 + 16) = v2658;
    *(v357 + 24) = v358;
    v1727 = swift_allocObject();
    *(v1727 + 16) = 37;
    v1728 = swift_allocObject();
    *(v1728 + 16) = v1707;
    v359 = swift_allocObject();
    v360 = v1698;
    v1699 = v359;
    *(v359 + 16) = v2659;
    *(v359 + 24) = v360;
    v361 = swift_allocObject();
    v362 = v1699;
    v1729 = v361;
    *(v361 + 16) = v2660;
    *(v361 + 24) = v362;
    v1730 = swift_allocObject();
    *(v1730 + 16) = 0;
    v1731 = swift_allocObject();
    *(v1731 + 16) = v1707;
    v363 = swift_allocObject();
    v364 = v1700;
    v1701 = v363;
    *(v363 + 16) = v2661;
    *(v363 + 24) = v364;
    v365 = swift_allocObject();
    v366 = v1701;
    v1732 = v365;
    *(v365 + 16) = v2662;
    *(v365 + 24) = v366;
    v1733 = swift_allocObject();
    *(v1733 + 16) = 0;
    v1734 = swift_allocObject();
    *(v1734 + 16) = v1707;
    v367 = swift_allocObject();
    v368 = v1702;
    v1703 = v367;
    *(v367 + 16) = v2663;
    *(v367 + 24) = v368;
    v369 = swift_allocObject();
    v370 = v1703;
    v1735 = v369;
    *(v369 + 16) = v2664;
    *(v369 + 24) = v370;
    v1736 = swift_allocObject();
    *(v1736 + 16) = 0;
    v1737 = swift_allocObject();
    *(v1737 + 16) = v1707;
    v371 = swift_allocObject();
    v372 = v1704;
    v1705 = v371;
    *(v371 + 16) = v2665;
    *(v371 + 24) = v372;
    v373 = swift_allocObject();
    v374 = v1705;
    v1738 = v373;
    *(v373 + 16) = v2666;
    *(v373 + 24) = v374;
    v1739 = swift_allocObject();
    *(v1739 + 16) = 0;
    v1740 = swift_allocObject();
    *(v1740 + 16) = v1707;
    v375 = swift_allocObject();
    v376 = v1710;
    v1711 = v375;
    *(v375 + 16) = v2667;
    *(v375 + 24) = v376;
    v377 = swift_allocObject();
    v378 = v1711;
    v1742 = v377;
    *(v377 + 16) = v2668;
    *(v377 + 24) = v378;
    v1744 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v1741 = sub_1B0E46A48();
    v1743 = v379;

    v380 = v1712;
    v381 = v1743;
    *v1743 = v2669;
    v381[1] = v380;

    v382 = v1713;
    v383 = v1743;
    v1743[2] = v2670;
    v383[3] = v382;

    v384 = v1714;
    v385 = v1743;
    v1743[4] = v2671;
    v385[5] = v384;

    v386 = v1715;
    v387 = v1743;
    v1743[6] = v2672;
    v387[7] = v386;

    v388 = v1716;
    v389 = v1743;
    v1743[8] = v2673;
    v389[9] = v388;

    v390 = v1717;
    v391 = v1743;
    v1743[10] = v2674;
    v391[11] = v390;

    v392 = v1718;
    v393 = v1743;
    v1743[12] = v2675;
    v393[13] = v392;

    v394 = v1719;
    v395 = v1743;
    v1743[14] = v2676;
    v395[15] = v394;

    v396 = v1720;
    v397 = v1743;
    v1743[16] = v2677;
    v397[17] = v396;

    v398 = v1721;
    v399 = v1743;
    v1743[18] = v2678;
    v399[19] = v398;

    v400 = v1722;
    v401 = v1743;
    v1743[20] = v2679;
    v401[21] = v400;

    v402 = v1723;
    v403 = v1743;
    v1743[22] = v2680;
    v403[23] = v402;

    v404 = v1724;
    v405 = v1743;
    v1743[24] = v2681;
    v405[25] = v404;

    v406 = v1725;
    v407 = v1743;
    v1743[26] = v2682;
    v407[27] = v406;

    v408 = v1726;
    v409 = v1743;
    v1743[28] = v2683;
    v409[29] = v408;

    v410 = v1727;
    v411 = v1743;
    v1743[30] = v2684;
    v411[31] = v410;

    v412 = v1728;
    v413 = v1743;
    v1743[32] = v2685;
    v413[33] = v412;

    v414 = v1729;
    v415 = v1743;
    v1743[34] = v2686;
    v415[35] = v414;

    v416 = v1730;
    v417 = v1743;
    v1743[36] = v2687;
    v417[37] = v416;

    v418 = v1731;
    v419 = v1743;
    v1743[38] = v2688;
    v419[39] = v418;

    v420 = v1732;
    v421 = v1743;
    v1743[40] = v2689;
    v421[41] = v420;

    v422 = v1733;
    v423 = v1743;
    v1743[42] = v2690;
    v423[43] = v422;

    v424 = v1734;
    v425 = v1743;
    v1743[44] = v2691;
    v425[45] = v424;

    v426 = v1735;
    v427 = v1743;
    v1743[46] = v2692;
    v427[47] = v426;

    v428 = v1736;
    v429 = v1743;
    v1743[48] = v2693;
    v429[49] = v428;

    v430 = v1737;
    v431 = v1743;
    v1743[50] = v2694;
    v431[51] = v430;

    v432 = v1738;
    v433 = v1743;
    v1743[52] = v2695;
    v433[53] = v432;

    v434 = v1739;
    v435 = v1743;
    v1743[54] = v2696;
    v435[55] = v434;

    v436 = v1740;
    v437 = v1743;
    v1743[56] = v2697;
    v437[57] = v436;

    v438 = v1742;
    v439 = v1743;
    v1743[58] = v2698;
    v439[59] = v438;
    sub_1B0394964();

    if (os_log_type_enabled(v1745, v1746))
    {
      v440 = v1722;
      v441 = v1721;
      v442 = v1720;
      v443 = v1719;
      v444 = v1718;
      v445 = v1717;
      v446 = v1716;
      v1643 = sub_1B0E45D78();
      v1642 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v1644 = sub_1B03949A8(0);
      v1645 = sub_1B03949A8(1);
      v1646 = &v2792;
      v2792 = v1643;
      v1647 = &v2791;
      v2791 = v1644;
      v1648 = &v2790;
      v2790 = v1645;
      sub_1B0394A48(3, &v2792);
      sub_1B0394A48(10, v1646);
      v447 = v2644;
      v2788 = v2669;
      v2789 = v1712;
      sub_1B03949FC(&v2788, v1646, v1647, v1648);
      v1649 = v447;
      v1650 = v1712;
      v1651 = v1713;
      v1652 = v1714;
      v1653 = v1715;
      v1654 = v446;
      v1655 = v445;
      v1656 = v444;
      v1657 = v443;
      v1658 = v442;
      v1659 = v441;
      v1660 = v440;
      v1661 = v1723;
      v1662 = v1724;
      v1663 = v1725;
      v1664 = v1726;
      v1665 = v1727;
      v1666 = v1728;
      v1667 = v1729;
      v1668 = v1730;
      v1669 = v1731;
      v1670 = v1732;
      v1671 = v1733;
      v1672 = v1734;
      v1673 = v1735;
      v1674 = v1736;
      v1675 = v1737;
      v1676 = v1738;
      v1677 = v1739;
      v1678 = v1740;
      v1679 = v1742;
      if (v447)
      {
        v1612 = v1679;
        v1610 = v1651;
        v1609 = v1650;
        v1611 = v1651;
        v1613 = v1652;
        v1614 = v1653;
        v1615 = v1654;
        v1616 = v1655;
        v1617 = v1656;
        v1618 = v1657;
        v1619 = v1658;
        v1620 = v1659;
        v1621 = v1660;
        v1622 = v1661;
        v1623 = v1662;
        v1624 = v1663;
        v1625 = v1664;
        v1626 = v1665;
        v1627 = v1666;
        v1628 = v1667;
        v1629 = v1668;
        v1630 = v1669;
        v1631 = v1670;
        v1632 = v1671;
        v1633 = v1672;
        v1634 = v1673;
        v1635 = v1674;
        v1636 = v1675;
        v1637 = v1676;
        v1638 = v1677;
        v1639 = v1678;
        v1640 = v1679;
        v709 = v1679;
        v708 = v1678;
        v707 = v1677;
        v706 = v1676;
        v705 = v1675;
        v704 = v1674;
        v703 = v1673;
        v702 = v1672;
        v701 = v1671;
        v700 = v1670;
        v699 = v1669;
        v698 = v1668;
        v697 = v1667;
        v696 = v1666;
        v695 = v1665;
        v694 = v1664;
        v693 = v1663;
        v692 = v1662;
        v691 = v1661;
        v690 = v1660;
        v689 = v1659;
        v688 = v1658;
        v687 = v1657;
        v686 = v1656;
        v685 = v1655;
        v684 = v1654;
        v683 = v1653;
        v682 = v1652;
        v681 = v1651;

        __break(1u);
      }

      else
      {
        v448 = v1722;
        v449 = v1721;
        v450 = v1720;
        v451 = v1719;
        v452 = v1718;
        v453 = v1717;
        v454 = v1716;
        v2788 = v2670;
        v2789 = v1713;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1578 = 0;
        v1579 = v1712;
        v1580 = v1713;
        v1581 = v1714;
        v1582 = v1715;
        v1583 = v454;
        v1584 = v453;
        v1585 = v452;
        v1586 = v451;
        v1587 = v450;
        v1588 = v449;
        v1589 = v448;
        v1590 = v1723;
        v1591 = v1724;
        v1592 = v1725;
        v1593 = v1726;
        v1594 = v1727;
        v1595 = v1728;
        v1596 = v1729;
        v1597 = v1730;
        v1598 = v1731;
        v1599 = v1732;
        v1600 = v1733;
        v1601 = v1734;
        v1602 = v1735;
        v1603 = v1736;
        v1604 = v1737;
        v1605 = v1738;
        v1606 = v1739;
        v1607 = v1740;
        v1608 = v1742;
        v455 = v1722;
        v456 = v1721;
        v457 = v1720;
        v458 = v1719;
        v459 = v1718;
        v460 = v1717;
        v461 = v1716;
        v2788 = v2671;
        v2789 = v1714;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1547 = 0;
        v1548 = v1712;
        v1549 = v1713;
        v1550 = v1714;
        v1551 = v1715;
        v1552 = v461;
        v1553 = v460;
        v1554 = v459;
        v1555 = v458;
        v1556 = v457;
        v1557 = v456;
        v1558 = v455;
        v1559 = v1723;
        v1560 = v1724;
        v1561 = v1725;
        v1562 = v1726;
        v1563 = v1727;
        v1564 = v1728;
        v1565 = v1729;
        v1566 = v1730;
        v1567 = v1731;
        v1568 = v1732;
        v1569 = v1733;
        v1570 = v1734;
        v1571 = v1735;
        v1572 = v1736;
        v1573 = v1737;
        v1574 = v1738;
        v1575 = v1739;
        v1576 = v1740;
        v1577 = v1742;
        v462 = v1722;
        v463 = v1721;
        v464 = v1720;
        v465 = v1719;
        v466 = v1718;
        v467 = v1717;
        v468 = v1716;
        v2788 = v2672;
        v2789 = v1715;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1516 = 0;
        v1517 = v1712;
        v1518 = v1713;
        v1519 = v1714;
        v1520 = v1715;
        v1521 = v468;
        v1522 = v467;
        v1523 = v466;
        v1524 = v465;
        v1525 = v464;
        v1526 = v463;
        v1527 = v462;
        v1528 = v1723;
        v1529 = v1724;
        v1530 = v1725;
        v1531 = v1726;
        v1532 = v1727;
        v1533 = v1728;
        v1534 = v1729;
        v1535 = v1730;
        v1536 = v1731;
        v1537 = v1732;
        v1538 = v1733;
        v1539 = v1734;
        v1540 = v1735;
        v1541 = v1736;
        v1542 = v1737;
        v1543 = v1738;
        v1544 = v1739;
        v1545 = v1740;
        v1546 = v1742;
        v469 = v1722;
        v470 = v1721;
        v471 = v1720;
        v472 = v1719;
        v473 = v1718;
        v474 = v1717;
        v475 = v1716;
        v2788 = v2673;
        v2789 = v1716;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1485 = 0;
        v1486 = v1712;
        v1487 = v1713;
        v1488 = v1714;
        v1489 = v1715;
        v1490 = v475;
        v1491 = v474;
        v1492 = v473;
        v1493 = v472;
        v1494 = v471;
        v1495 = v470;
        v1496 = v469;
        v1497 = v1723;
        v1498 = v1724;
        v1499 = v1725;
        v1500 = v1726;
        v1501 = v1727;
        v1502 = v1728;
        v1503 = v1729;
        v1504 = v1730;
        v1505 = v1731;
        v1506 = v1732;
        v1507 = v1733;
        v1508 = v1734;
        v1509 = v1735;
        v1510 = v1736;
        v1511 = v1737;
        v1512 = v1738;
        v1513 = v1739;
        v1514 = v1740;
        v1515 = v1742;
        v476 = v1722;
        v477 = v1721;
        v478 = v1720;
        v479 = v1719;
        v480 = v1718;
        v481 = v1717;
        v482 = v1716;
        v2788 = v2674;
        v2789 = v1717;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1454 = 0;
        v1455 = v1712;
        v1456 = v1713;
        v1457 = v1714;
        v1458 = v1715;
        v1459 = v482;
        v1460 = v481;
        v1461 = v480;
        v1462 = v479;
        v1463 = v478;
        v1464 = v477;
        v1465 = v476;
        v1466 = v1723;
        v1467 = v1724;
        v1468 = v1725;
        v1469 = v1726;
        v1470 = v1727;
        v1471 = v1728;
        v1472 = v1729;
        v1473 = v1730;
        v1474 = v1731;
        v1475 = v1732;
        v1476 = v1733;
        v1477 = v1734;
        v1478 = v1735;
        v1479 = v1736;
        v1480 = v1737;
        v1481 = v1738;
        v1482 = v1739;
        v1483 = v1740;
        v1484 = v1742;
        v483 = v1722;
        v484 = v1721;
        v485 = v1720;
        v486 = v1719;
        v487 = v1718;
        v488 = v1717;
        v489 = v1716;
        v2788 = v2675;
        v2789 = v1718;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1423 = 0;
        v1424 = v1712;
        v1425 = v1713;
        v1426 = v1714;
        v1427 = v1715;
        v1428 = v489;
        v1429 = v488;
        v1430 = v487;
        v1431 = v486;
        v1432 = v485;
        v1433 = v484;
        v1434 = v483;
        v1435 = v1723;
        v1436 = v1724;
        v1437 = v1725;
        v1438 = v1726;
        v1439 = v1727;
        v1440 = v1728;
        v1441 = v1729;
        v1442 = v1730;
        v1443 = v1731;
        v1444 = v1732;
        v1445 = v1733;
        v1446 = v1734;
        v1447 = v1735;
        v1448 = v1736;
        v1449 = v1737;
        v1450 = v1738;
        v1451 = v1739;
        v1452 = v1740;
        v1453 = v1742;
        v490 = v1722;
        v491 = v1721;
        v492 = v1720;
        v493 = v1719;
        v494 = v1718;
        v495 = v1717;
        v496 = v1716;
        v2788 = v2676;
        v2789 = v1719;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1392 = 0;
        v1393 = v1712;
        v1394 = v1713;
        v1395 = v1714;
        v1396 = v1715;
        v1397 = v496;
        v1398 = v495;
        v1399 = v494;
        v1400 = v493;
        v1401 = v492;
        v1402 = v491;
        v1403 = v490;
        v1404 = v1723;
        v1405 = v1724;
        v1406 = v1725;
        v1407 = v1726;
        v1408 = v1727;
        v1409 = v1728;
        v1410 = v1729;
        v1411 = v1730;
        v1412 = v1731;
        v1413 = v1732;
        v1414 = v1733;
        v1415 = v1734;
        v1416 = v1735;
        v1417 = v1736;
        v1418 = v1737;
        v1419 = v1738;
        v1420 = v1739;
        v1421 = v1740;
        v1422 = v1742;
        v497 = v1722;
        v498 = v1721;
        v499 = v1720;
        v500 = v1719;
        v501 = v1718;
        v502 = v1717;
        v503 = v1716;
        v2788 = v2677;
        v2789 = v1720;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1361 = 0;
        v1362 = v1712;
        v1363 = v1713;
        v1364 = v1714;
        v1365 = v1715;
        v1366 = v503;
        v1367 = v502;
        v1368 = v501;
        v1369 = v500;
        v1370 = v499;
        v1371 = v498;
        v1372 = v497;
        v1373 = v1723;
        v1374 = v1724;
        v1375 = v1725;
        v1376 = v1726;
        v1377 = v1727;
        v1378 = v1728;
        v1379 = v1729;
        v1380 = v1730;
        v1381 = v1731;
        v1382 = v1732;
        v1383 = v1733;
        v1384 = v1734;
        v1385 = v1735;
        v1386 = v1736;
        v1387 = v1737;
        v1388 = v1738;
        v1389 = v1739;
        v1390 = v1740;
        v1391 = v1742;
        v504 = v1722;
        v505 = v1721;
        v506 = v1720;
        v507 = v1719;
        v508 = v1718;
        v509 = v1717;
        v510 = v1716;
        v2788 = v2678;
        v2789 = v1721;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1330 = 0;
        v1331 = v1712;
        v1332 = v1713;
        v1333 = v1714;
        v1334 = v1715;
        v1335 = v510;
        v1336 = v509;
        v1337 = v508;
        v1338 = v507;
        v1339 = v506;
        v1340 = v505;
        v1341 = v504;
        v1342 = v1723;
        v1343 = v1724;
        v1344 = v1725;
        v1345 = v1726;
        v1346 = v1727;
        v1347 = v1728;
        v1348 = v1729;
        v1349 = v1730;
        v1350 = v1731;
        v1351 = v1732;
        v1352 = v1733;
        v1353 = v1734;
        v1354 = v1735;
        v1355 = v1736;
        v1356 = v1737;
        v1357 = v1738;
        v1358 = v1739;
        v1359 = v1740;
        v1360 = v1742;
        v511 = v1722;
        v512 = v1721;
        v513 = v1720;
        v514 = v1719;
        v515 = v1718;
        v516 = v1717;
        v517 = v1716;
        v2788 = v2679;
        v2789 = v1722;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1299 = 0;
        v1300 = v1712;
        v1301 = v1713;
        v1302 = v1714;
        v1303 = v1715;
        v1304 = v517;
        v1305 = v516;
        v1306 = v515;
        v1307 = v514;
        v1308 = v513;
        v1309 = v512;
        v1310 = v511;
        v1311 = v1723;
        v1312 = v1724;
        v1313 = v1725;
        v1314 = v1726;
        v1315 = v1727;
        v1316 = v1728;
        v1317 = v1729;
        v1318 = v1730;
        v1319 = v1731;
        v1320 = v1732;
        v1321 = v1733;
        v1322 = v1734;
        v1323 = v1735;
        v1324 = v1736;
        v1325 = v1737;
        v1326 = v1738;
        v1327 = v1739;
        v1328 = v1740;
        v1329 = v1742;
        v518 = v1722;
        v519 = v1721;
        v520 = v1720;
        v521 = v1719;
        v522 = v1718;
        v523 = v1717;
        v524 = v1716;
        v2788 = v2680;
        v2789 = v1723;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1268 = 0;
        v1269 = v1712;
        v1270 = v1713;
        v1271 = v1714;
        v1272 = v1715;
        v1273 = v524;
        v1274 = v523;
        v1275 = v522;
        v1276 = v521;
        v1277 = v520;
        v1278 = v519;
        v1279 = v518;
        v1280 = v1723;
        v1281 = v1724;
        v1282 = v1725;
        v1283 = v1726;
        v1284 = v1727;
        v1285 = v1728;
        v1286 = v1729;
        v1287 = v1730;
        v1288 = v1731;
        v1289 = v1732;
        v1290 = v1733;
        v1291 = v1734;
        v1292 = v1735;
        v1293 = v1736;
        v1294 = v1737;
        v1295 = v1738;
        v1296 = v1739;
        v1297 = v1740;
        v1298 = v1742;
        v525 = v1722;
        v526 = v1721;
        v527 = v1720;
        v528 = v1719;
        v529 = v1718;
        v530 = v1717;
        v531 = v1716;
        v2788 = v2681;
        v2789 = v1724;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1237 = 0;
        v1238 = v1712;
        v1239 = v1713;
        v1240 = v1714;
        v1241 = v1715;
        v1242 = v531;
        v1243 = v530;
        v1244 = v529;
        v1245 = v528;
        v1246 = v527;
        v1247 = v526;
        v1248 = v525;
        v1249 = v1723;
        v1250 = v1724;
        v1251 = v1725;
        v1252 = v1726;
        v1253 = v1727;
        v1254 = v1728;
        v1255 = v1729;
        v1256 = v1730;
        v1257 = v1731;
        v1258 = v1732;
        v1259 = v1733;
        v1260 = v1734;
        v1261 = v1735;
        v1262 = v1736;
        v1263 = v1737;
        v1264 = v1738;
        v1265 = v1739;
        v1266 = v1740;
        v1267 = v1742;
        v532 = v1722;
        v533 = v1721;
        v534 = v1720;
        v535 = v1719;
        v536 = v1718;
        v537 = v1717;
        v538 = v1716;
        v2788 = v2682;
        v2789 = v1725;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1206 = 0;
        v1207 = v1712;
        v1208 = v1713;
        v1209 = v1714;
        v1210 = v1715;
        v1211 = v538;
        v1212 = v537;
        v1213 = v536;
        v1214 = v535;
        v1215 = v534;
        v1216 = v533;
        v1217 = v532;
        v1218 = v1723;
        v1219 = v1724;
        v1220 = v1725;
        v1221 = v1726;
        v1222 = v1727;
        v1223 = v1728;
        v1224 = v1729;
        v1225 = v1730;
        v1226 = v1731;
        v1227 = v1732;
        v1228 = v1733;
        v1229 = v1734;
        v1230 = v1735;
        v1231 = v1736;
        v1232 = v1737;
        v1233 = v1738;
        v1234 = v1739;
        v1235 = v1740;
        v1236 = v1742;
        v539 = v1722;
        v540 = v1721;
        v541 = v1720;
        v542 = v1719;
        v543 = v1718;
        v544 = v1717;
        v545 = v1716;
        v2788 = v2683;
        v2789 = v1726;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1175 = 0;
        v1176 = v1712;
        v1177 = v1713;
        v1178 = v1714;
        v1179 = v1715;
        v1180 = v545;
        v1181 = v544;
        v1182 = v543;
        v1183 = v542;
        v1184 = v541;
        v1185 = v540;
        v1186 = v539;
        v1187 = v1723;
        v1188 = v1724;
        v1189 = v1725;
        v1190 = v1726;
        v1191 = v1727;
        v1192 = v1728;
        v1193 = v1729;
        v1194 = v1730;
        v1195 = v1731;
        v1196 = v1732;
        v1197 = v1733;
        v1198 = v1734;
        v1199 = v1735;
        v1200 = v1736;
        v1201 = v1737;
        v1202 = v1738;
        v1203 = v1739;
        v1204 = v1740;
        v1205 = v1742;
        v546 = v1722;
        v547 = v1721;
        v548 = v1720;
        v549 = v1719;
        v550 = v1718;
        v551 = v1717;
        v552 = v1716;
        v2788 = v2684;
        v2789 = v1727;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1144 = 0;
        v1145 = v1712;
        v1146 = v1713;
        v1147 = v1714;
        v1148 = v1715;
        v1149 = v552;
        v1150 = v551;
        v1151 = v550;
        v1152 = v549;
        v1153 = v548;
        v1154 = v547;
        v1155 = v546;
        v1156 = v1723;
        v1157 = v1724;
        v1158 = v1725;
        v1159 = v1726;
        v1160 = v1727;
        v1161 = v1728;
        v1162 = v1729;
        v1163 = v1730;
        v1164 = v1731;
        v1165 = v1732;
        v1166 = v1733;
        v1167 = v1734;
        v1168 = v1735;
        v1169 = v1736;
        v1170 = v1737;
        v1171 = v1738;
        v1172 = v1739;
        v1173 = v1740;
        v1174 = v1742;
        v553 = v1722;
        v554 = v1721;
        v555 = v1720;
        v556 = v1719;
        v557 = v1718;
        v558 = v1717;
        v559 = v1716;
        v2788 = v2685;
        v2789 = v1728;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1113 = 0;
        v1114 = v1712;
        v1115 = v1713;
        v1116 = v1714;
        v1117 = v1715;
        v1118 = v559;
        v1119 = v558;
        v1120 = v557;
        v1121 = v556;
        v1122 = v555;
        v1123 = v554;
        v1124 = v553;
        v1125 = v1723;
        v1126 = v1724;
        v1127 = v1725;
        v1128 = v1726;
        v1129 = v1727;
        v1130 = v1728;
        v1131 = v1729;
        v1132 = v1730;
        v1133 = v1731;
        v1134 = v1732;
        v1135 = v1733;
        v1136 = v1734;
        v1137 = v1735;
        v1138 = v1736;
        v1139 = v1737;
        v1140 = v1738;
        v1141 = v1739;
        v1142 = v1740;
        v1143 = v1742;
        v560 = v1722;
        v561 = v1721;
        v562 = v1720;
        v563 = v1719;
        v564 = v1718;
        v565 = v1717;
        v566 = v1716;
        v2788 = v2686;
        v2789 = v1729;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1082 = 0;
        v1083 = v1712;
        v1084 = v1713;
        v1085 = v1714;
        v1086 = v1715;
        v1087 = v566;
        v1088 = v565;
        v1089 = v564;
        v1090 = v563;
        v1091 = v562;
        v1092 = v561;
        v1093 = v560;
        v1094 = v1723;
        v1095 = v1724;
        v1096 = v1725;
        v1097 = v1726;
        v1098 = v1727;
        v1099 = v1728;
        v1100 = v1729;
        v1101 = v1730;
        v1102 = v1731;
        v1103 = v1732;
        v1104 = v1733;
        v1105 = v1734;
        v1106 = v1735;
        v1107 = v1736;
        v1108 = v1737;
        v1109 = v1738;
        v1110 = v1739;
        v1111 = v1740;
        v1112 = v1742;
        v567 = v1722;
        v568 = v1721;
        v569 = v1720;
        v570 = v1719;
        v571 = v1718;
        v572 = v1717;
        v573 = v1716;
        v2788 = v2687;
        v2789 = v1730;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1051 = 0;
        v1052 = v1712;
        v1053 = v1713;
        v1054 = v1714;
        v1055 = v1715;
        v1056 = v573;
        v1057 = v572;
        v1058 = v571;
        v1059 = v570;
        v1060 = v569;
        v1061 = v568;
        v1062 = v567;
        v1063 = v1723;
        v1064 = v1724;
        v1065 = v1725;
        v1066 = v1726;
        v1067 = v1727;
        v1068 = v1728;
        v1069 = v1729;
        v1070 = v1730;
        v1071 = v1731;
        v1072 = v1732;
        v1073 = v1733;
        v1074 = v1734;
        v1075 = v1735;
        v1076 = v1736;
        v1077 = v1737;
        v1078 = v1738;
        v1079 = v1739;
        v1080 = v1740;
        v1081 = v1742;
        v574 = v1722;
        v575 = v1721;
        v576 = v1720;
        v577 = v1719;
        v578 = v1718;
        v579 = v1717;
        v580 = v1716;
        v2788 = v2688;
        v2789 = v1731;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v1020 = 0;
        v1021 = v1712;
        v1022 = v1713;
        v1023 = v1714;
        v1024 = v1715;
        v1025 = v580;
        v1026 = v579;
        v1027 = v578;
        v1028 = v577;
        v1029 = v576;
        v1030 = v575;
        v1031 = v574;
        v1032 = v1723;
        v1033 = v1724;
        v1034 = v1725;
        v1035 = v1726;
        v1036 = v1727;
        v1037 = v1728;
        v1038 = v1729;
        v1039 = v1730;
        v1040 = v1731;
        v1041 = v1732;
        v1042 = v1733;
        v1043 = v1734;
        v1044 = v1735;
        v1045 = v1736;
        v1046 = v1737;
        v1047 = v1738;
        v1048 = v1739;
        v1049 = v1740;
        v1050 = v1742;
        v581 = v1722;
        v582 = v1721;
        v583 = v1720;
        v584 = v1719;
        v585 = v1718;
        v586 = v1717;
        v587 = v1716;
        v2788 = v2689;
        v2789 = v1732;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v989 = 0;
        v990 = v1712;
        v991 = v1713;
        v992 = v1714;
        v993 = v1715;
        v994 = v587;
        v995 = v586;
        v996 = v585;
        v997 = v584;
        v998 = v583;
        v999 = v582;
        v1000 = v581;
        v1001 = v1723;
        v1002 = v1724;
        v1003 = v1725;
        v1004 = v1726;
        v1005 = v1727;
        v1006 = v1728;
        v1007 = v1729;
        v1008 = v1730;
        v1009 = v1731;
        v1010 = v1732;
        v1011 = v1733;
        v1012 = v1734;
        v1013 = v1735;
        v1014 = v1736;
        v1015 = v1737;
        v1016 = v1738;
        v1017 = v1739;
        v1018 = v1740;
        v1019 = v1742;
        v588 = v1722;
        v589 = v1721;
        v590 = v1720;
        v591 = v1719;
        v592 = v1718;
        v593 = v1717;
        v594 = v1716;
        v2788 = v2690;
        v2789 = v1733;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v958 = 0;
        v959 = v1712;
        v960 = v1713;
        v961 = v1714;
        v962 = v1715;
        v963 = v594;
        v964 = v593;
        v965 = v592;
        v966 = v591;
        v967 = v590;
        v968 = v589;
        v969 = v588;
        v970 = v1723;
        v971 = v1724;
        v972 = v1725;
        v973 = v1726;
        v974 = v1727;
        v975 = v1728;
        v976 = v1729;
        v977 = v1730;
        v978 = v1731;
        v979 = v1732;
        v980 = v1733;
        v981 = v1734;
        v982 = v1735;
        v983 = v1736;
        v984 = v1737;
        v985 = v1738;
        v986 = v1739;
        v987 = v1740;
        v988 = v1742;
        v595 = v1722;
        v596 = v1721;
        v597 = v1720;
        v598 = v1719;
        v599 = v1718;
        v600 = v1717;
        v601 = v1716;
        v2788 = v2691;
        v2789 = v1734;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v927 = 0;
        v928 = v1712;
        v929 = v1713;
        v930 = v1714;
        v931 = v1715;
        v932 = v601;
        v933 = v600;
        v934 = v599;
        v935 = v598;
        v936 = v597;
        v937 = v596;
        v938 = v595;
        v939 = v1723;
        v940 = v1724;
        v941 = v1725;
        v942 = v1726;
        v943 = v1727;
        v944 = v1728;
        v945 = v1729;
        v946 = v1730;
        v947 = v1731;
        v948 = v1732;
        v949 = v1733;
        v950 = v1734;
        v951 = v1735;
        v952 = v1736;
        v953 = v1737;
        v954 = v1738;
        v955 = v1739;
        v956 = v1740;
        v957 = v1742;
        v602 = v1722;
        v603 = v1721;
        v604 = v1720;
        v605 = v1719;
        v606 = v1718;
        v607 = v1717;
        v608 = v1716;
        v2788 = v2692;
        v2789 = v1735;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v896 = 0;
        v897 = v1712;
        v898 = v1713;
        v899 = v1714;
        v900 = v1715;
        v901 = v608;
        v902 = v607;
        v903 = v606;
        v904 = v605;
        v905 = v604;
        v906 = v603;
        v907 = v602;
        v908 = v1723;
        v909 = v1724;
        v910 = v1725;
        v911 = v1726;
        v912 = v1727;
        v913 = v1728;
        v914 = v1729;
        v915 = v1730;
        v916 = v1731;
        v917 = v1732;
        v918 = v1733;
        v919 = v1734;
        v920 = v1735;
        v921 = v1736;
        v922 = v1737;
        v923 = v1738;
        v924 = v1739;
        v925 = v1740;
        v926 = v1742;
        v609 = v1722;
        v610 = v1721;
        v611 = v1720;
        v612 = v1719;
        v613 = v1718;
        v614 = v1717;
        v615 = v1716;
        v2788 = v2693;
        v2789 = v1736;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v865 = 0;
        v866 = v1712;
        v867 = v1713;
        v868 = v1714;
        v869 = v1715;
        v870 = v615;
        v871 = v614;
        v872 = v613;
        v873 = v612;
        v874 = v611;
        v875 = v610;
        v876 = v609;
        v877 = v1723;
        v878 = v1724;
        v879 = v1725;
        v880 = v1726;
        v881 = v1727;
        v882 = v1728;
        v883 = v1729;
        v884 = v1730;
        v885 = v1731;
        v886 = v1732;
        v887 = v1733;
        v888 = v1734;
        v889 = v1735;
        v890 = v1736;
        v891 = v1737;
        v892 = v1738;
        v893 = v1739;
        v894 = v1740;
        v895 = v1742;
        v616 = v1722;
        v617 = v1721;
        v618 = v1720;
        v619 = v1719;
        v620 = v1718;
        v621 = v1717;
        v622 = v1716;
        v2788 = v2694;
        v2789 = v1737;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v834 = 0;
        v835 = v1712;
        v836 = v1713;
        v837 = v1714;
        v838 = v1715;
        v839 = v622;
        v840 = v621;
        v841 = v620;
        v842 = v619;
        v843 = v618;
        v844 = v617;
        v845 = v616;
        v846 = v1723;
        v847 = v1724;
        v848 = v1725;
        v849 = v1726;
        v850 = v1727;
        v851 = v1728;
        v852 = v1729;
        v853 = v1730;
        v854 = v1731;
        v855 = v1732;
        v856 = v1733;
        v857 = v1734;
        v858 = v1735;
        v859 = v1736;
        v860 = v1737;
        v861 = v1738;
        v862 = v1739;
        v863 = v1740;
        v864 = v1742;
        v623 = v1722;
        v624 = v1721;
        v625 = v1720;
        v626 = v1719;
        v627 = v1718;
        v628 = v1717;
        v629 = v1716;
        v2788 = v2695;
        v2789 = v1738;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v803 = 0;
        v804 = v1712;
        v805 = v1713;
        v806 = v1714;
        v807 = v1715;
        v808 = v629;
        v809 = v628;
        v810 = v627;
        v811 = v626;
        v812 = v625;
        v813 = v624;
        v814 = v623;
        v815 = v1723;
        v816 = v1724;
        v817 = v1725;
        v818 = v1726;
        v819 = v1727;
        v820 = v1728;
        v821 = v1729;
        v822 = v1730;
        v823 = v1731;
        v824 = v1732;
        v825 = v1733;
        v826 = v1734;
        v827 = v1735;
        v828 = v1736;
        v829 = v1737;
        v830 = v1738;
        v831 = v1739;
        v832 = v1740;
        v833 = v1742;
        v630 = v1722;
        v631 = v1721;
        v632 = v1720;
        v633 = v1719;
        v634 = v1718;
        v635 = v1717;
        v636 = v1716;
        v2788 = v2696;
        v2789 = v1739;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v772 = 0;
        v773 = v1712;
        v774 = v1713;
        v775 = v1714;
        v776 = v1715;
        v777 = v636;
        v778 = v635;
        v779 = v634;
        v780 = v633;
        v781 = v632;
        v782 = v631;
        v783 = v630;
        v784 = v1723;
        v785 = v1724;
        v786 = v1725;
        v787 = v1726;
        v788 = v1727;
        v789 = v1728;
        v790 = v1729;
        v791 = v1730;
        v792 = v1731;
        v793 = v1732;
        v794 = v1733;
        v795 = v1734;
        v796 = v1735;
        v797 = v1736;
        v798 = v1737;
        v799 = v1738;
        v800 = v1739;
        v801 = v1740;
        v802 = v1742;
        v637 = v1722;
        v638 = v1721;
        v639 = v1720;
        v640 = v1719;
        v641 = v1718;
        v642 = v1717;
        v643 = v1716;
        v2788 = v2697;
        v2789 = v1740;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v741 = 0;
        v742 = v1712;
        v743 = v1713;
        v744 = v1714;
        v745 = v1715;
        v746 = v643;
        v747 = v642;
        v748 = v641;
        v749 = v640;
        v750 = v639;
        v751 = v638;
        v752 = v637;
        v753 = v1723;
        v754 = v1724;
        v755 = v1725;
        v756 = v1726;
        v757 = v1727;
        v758 = v1728;
        v759 = v1729;
        v760 = v1730;
        v761 = v1731;
        v762 = v1732;
        v763 = v1733;
        v764 = v1734;
        v765 = v1735;
        v766 = v1736;
        v767 = v1737;
        v768 = v1738;
        v769 = v1739;
        v770 = v1740;
        v771 = v1742;
        v644 = v1722;
        v645 = v1721;
        v646 = v1720;
        v647 = v1719;
        v648 = v1718;
        v649 = v1717;
        v650 = v1716;
        v2788 = v2698;
        v2789 = v1742;
        sub_1B03949FC(&v2788, &v2792, &v2791, &v2790);
        v710 = 0;
        v711 = v1712;
        v712 = v1713;
        v713 = v1714;
        v714 = v1715;
        v715 = v650;
        v716 = v649;
        v717 = v648;
        v718 = v647;
        v719 = v646;
        v720 = v645;
        v721 = v644;
        v722 = v1723;
        v723 = v1724;
        v724 = v1725;
        v725 = v1726;
        v726 = v1727;
        v727 = v1728;
        v728 = v1729;
        v729 = v1730;
        v730 = v1731;
        v731 = v1732;
        v732 = v1733;
        v733 = v1734;
        v734 = v1735;
        v735 = v1736;
        v736 = v1737;
        v737 = v1738;
        v738 = v1739;
        v739 = v1740;
        v740 = v1742;
        _os_log_impl(&dword_1B0389000, v1745, v1746, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Found %ld messages with flag changes (%ld unfiltered) (limit %ld). Found %ld no-op flag change actions.", v1643, 0x53u);
        sub_1B03998A8(v1644);
        sub_1B03998A8(v1645);
        sub_1B0E45D58();

        v1641 = v710;
      }
    }

    else
    {

      v1641 = v2644;
    }

    v680 = v1641;
    MEMORY[0x1E69E5920](v1745);
    (*(v2750 + 8))(v2753, v2749);
    v1758 = v680;
LABEL_22:
    v675 = v1758;
    v2824 = v2818;
    sub_1B074E7A8(&v2824, &v2799);
    v677 = &v2798;
    v2798 = v2824;
    v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1BE8, &qword_1B0ECD5D0);
    sub_1B074E7E0();
    sub_1B0E452D8();
    v678 = v2808;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v679 = sub_1B0E452A8();

    if (v679 >= v2763)
    {
      goto LABEL_31;
    }

    v673 = &v2818;
    v672 = &v2823;
    v2823 = v2818;
    sub_1B074E7A8(&v2823, &v2797);
    v2796[5] = v2823;
    sub_1B074B7E4();
    v674 = sub_1B0E45748();
    sub_1B039E440(v672);
    sub_1B074E4B4(v673, v2796);
    if (v674)
    {
      v651 = v2647;
      v667 = v2822;
      *(v2647 + 2) = v2819;
      *(v651 + 3) = v2820;
      sub_1B074E30C(v2822, v2795);
      v669 = v2822[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B071F9F0(v667);
      v668 = sub_1B0E45C48();
      sub_1B074E39C();
      v670 = sub_1B0E454F8();

      v671 = v670 ^ 1;
    }

    else
    {
      v671 = 1;
    }

    v666 = v671;
    v665 = &v2818;
    sub_1B074E868(&v2818);
    sub_1B074E4B4(v665, v2794);
    if (v666)
    {
      v664 = 1;
    }

    else
    {
      v652 = v2647;
      v660 = v2821;
      *v2647 = v2819;
      *(v652 + 1) = v2820;
      sub_1B074E30C(v2821, v2793);
      v662 = v2821[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B071F9F0(v660);
      v661 = sub_1B0E45C48();
      v653 = sub_1B074E39C();
      v663 = MEMORY[0x1B27267E0](v662, v661, v2770, v653);

      v664 = v663 ^ 1;
    }

    v659 = v664;
    sub_1B074E868(&v2818);
    if ((v659 & 1) == 0)
    {
LABEL_31:
      sub_1B074E868(&v2818);
      sub_1B074E258(v2762);
      v658 = v675;
LABEL_34:
      v656 = v658;
      v655 = &v2808;
      v657 = v2808;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D09B8(v2777);
      sub_1B039E440(v655);
      return v657;
    }

    sub_1B074E868(&v2818);
    sub_1B074E258(v2762);
  }

  __break(1u);
  return result;
}