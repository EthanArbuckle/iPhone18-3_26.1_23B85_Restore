void sub_1C5AFC298(uint64_t *a1)
{
  v2 = sub_1C5BC81D4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _CAPackageView();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - v12;
  v14 = a1[3];
  v15 = *(v14 + 40);
  if (v15)
  {
    v39 = a1[3];
    v37 = *(v14 + 32);
    v16 = qword_1EDA46990;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DA60);
    sub_1C5967CB0(a1, v13);
    sub_1C5967CB0(a1, v11);
    sub_1C5967CB0(a1, v8);

    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4F4();

    v38 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v36[0] = v18;
      v36[1] = v2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136446978;
      v22 = sub_1C592ADA8(v37, v15, &v40);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      v23 = *(v13 + 3);
      if (*(v23 + 24))
      {
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
      }

      else
      {
        v24 = 7104878;
        v25 = 0xE300000000000000;
      }

      sub_1C5972028(v13);
      v26 = sub_1C592ADA8(v24, v25, &v40);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2082;
      sub_1C594C72C(v4);
      v27 = sub_1C5BCAEA4();
      v29 = v28;
      sub_1C5972028(v11);
      v30 = sub_1C592ADA8(v27, v29, &v40);

      *(v20 + 24) = v30;
      *(v20 + 32) = 2082;
      if (v8[1])
      {
        v31 = *v8;
        v32 = v8[1];
      }

      else
      {
        v31 = 7104878;
        v32 = 0xE300000000000000;
      }

      sub_1C5972028(v8);
      v33 = sub_1C592ADA8(v31, v32, &v40);

      *(v20 + 34) = v33;
      v34 = v36[0];
      _os_log_impl(&dword_1C5922000, v36[0], v38, "%{public}s: %{public}s CAPackageView scene phase changed to %{public}s, updating state to %{public}s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v21, -1, -1);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    else
    {

      sub_1C5972028(v8);
      sub_1C5972028(v11);
      sub_1C5972028(v13);
    }
  }

  v35 = a1[1];
  if (v35)
  {
    sub_1C5972084(*a1, v35);
  }
}

id sub_1C5AFC7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5AFC840()
{
  sub_1C59676E0();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AFC87C()
{
  sub_1C59676E0();

  return sub_1C5BC8F54();
}

void sub_1C5AFC914(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for _CAPackageView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C5AFBF5C(a1, a2, v6);
}

uint64_t objectdestroy_91Tm()
{

  sub_1C5AFC9D8();

  return swift_deallocObject();
}

unint64_t sub_1C5AFCA80()
{
  result = qword_1EC197920;
  if (!qword_1EC197920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197910);
    sub_1C5954190(qword_1EDA4C088, type metadata accessor for _CAPackageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197920);
  }

  return result;
}

uint64_t sub_1C5AFCB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = sub_1C5BC9534();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_1C5BC9544();
  MEMORY[0x1C694E550](v15, a6, v13, a8);
}

uint64_t ToastView.init(action:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToastView();
  v9 = a4 + v8[10];
  type metadata accessor for CGRect(0);
  sub_1C5BCA684();
  *v9 = v14;
  *(v9 + 16) = v15;
  *(v9 + 32) = v16;
  v10 = a4 + v8[11];
  sub_1C5BC8484();
  *v10 = v14;
  *(v10 + 8) = *(&v14 + 1);
  *(v10 + 16) = v15;
  v11 = (a4 + v8[9]);
  *v11 = a1;
  v11[1] = a2;
  v12 = sub_1C5974664(a1, a2);
  a3(v12);
  return sub_1C59A5824(a1, a2);
}

uint64_t ToastView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v176 = sub_1C5BC90D4();
  v178 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197928);
  MEMORY[0x1EEE9AC00](v190);
  v193 = &v125 - v5;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197930);
  v175 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v174 = &v125 - v6;
  v195 = *(a1 - 8);
  v189 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v171 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = a1;
  v9 = *(a1 + 24);
  v191 = *(a1 + 16);
  v10 = v191;
  v11 = v9;
  v192 = v9;
  v127 = type metadata accessor for ToastView.Specs();
  v155 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v125 - v12;
  v13 = type metadata accessor for ToastViewLabelStyle(0);
  v183 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C5BC8AB4();
  v158 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v125 - v18;
  v216 = v11;
  v217 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v182 = WitnessTable;
  v181 = sub_1C5AFED04(&qword_1EC197938, type metadata accessor for ToastViewLabelStyle);
  v212 = v17;
  v213 = v13;
  v128 = v17;
  v214 = WitnessTable;
  v215 = v181;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v154 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v180 = &v125 - v20;
  v21 = sub_1C5BC8AB4();
  v156 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v125 - v22;
  v131 = v21;
  v23 = sub_1C5BC8AB4();
  v157 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v125 - v24;
  v133 = v23;
  v25 = sub_1C5BC8AB4();
  v161 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v125 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192EE8);
  v136 = v25;
  v27 = sub_1C5BC8AB4();
  v160 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v125 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190FC8);
  v137 = v27;
  v29 = sub_1C5BC8AB4();
  v162 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v125 - v30;
  v139 = v29;
  v31 = sub_1C5BC8AB4();
  v163 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v153 = &v125 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194958);
  v141 = v31;
  v184 = sub_1C5BC8AB4();
  v170 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v188 = &v125 - v33;
  v212 = v17;
  v213 = v183;
  v214 = v182;
  v215 = v181;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v210 = OpaqueTypeConformance2;
  v211 = MEMORY[0x1E697EBF8];
  v130 = swift_getWitnessTable();
  v34 = MEMORY[0x1E697E5D8];
  v208 = v130;
  v209 = MEMORY[0x1E697E5D8];
  v132 = swift_getWitnessTable();
  v206 = v132;
  v207 = v34;
  v35 = swift_getWitnessTable();
  v134 = v35;
  v36 = sub_1C5924F54(&qword_1EC192EE0, &qword_1EC192EE8);
  v204 = v35;
  v205 = v36;
  v37 = swift_getWitnessTable();
  v135 = v37;
  v38 = sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
  v202 = v37;
  v203 = v38;
  v138 = swift_getWitnessTable();
  v200 = v138;
  v201 = MEMORY[0x1E697E280];
  v39 = swift_getWitnessTable();
  v140 = v39;
  v40 = sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958);
  v198 = v39;
  v199 = v40;
  v41 = v184;
  v42 = swift_getWitnessTable();
  v146 = v42;
  v149 = sub_1C5924F54(&qword_1EC197940, &qword_1EC197930);
  v212 = v41;
  v213 = v187;
  v214 = v42;
  v215 = v149;
  v43 = swift_getOpaqueTypeMetadata2();
  v165 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v186 = &v125 - v44;
  sub_1C5BC97C4();
  v167 = v43;
  v169 = sub_1C5BC8AB4();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v166 = &v125 - v48;
  v49 = v152;
  v50 = v148;
  v51 = v191;
  (*(v152 + 16))(v148, v194, v191, v47);
  v52 = v185;
  sub_1C5AFE6CC();
  v53 = v144;
  sub_1C5BCA2B4();
  (*(v49 + 8))(v50, v51);
  v54 = v126;
  sub_1C5AFE734(v126);
  v55 = v127;
  v56 = v159;
  sub_1C5AFEA30(v54 + *(v127 + 40), v159);
  v57 = *(v155 + 1);
  v57(v54, v55);
  v155 = v57;
  v58 = v128;
  sub_1C5BC9D34();
  sub_1C5AFEAB4(v56);
  (*(v158 + 8))(v53, v58);
  v59 = v52;
  sub_1C5AFE734(v54);
  v60 = v54;
  v57(v54, v55);
  sub_1C5BCAA54();
  v61 = OpaqueTypeMetadata2;
  v62 = v142;
  v63 = v180;
  sub_1C5BCA244();
  (*(v154 + 8))(v63, v61);
  sub_1C5BC98C4();
  sub_1C5AFE734(v60);
  v64 = v60;
  v65 = v55;
  v66 = v55;
  v67 = v155;
  v155(v60, v66);
  v68 = v143;
  v69 = v131;
  sub_1C5BCA2F4();
  (*(v156 + 8))(v62, v69);
  sub_1C5BC98E4();
  sub_1C5AFE734(v64);
  v67(v64, v65);
  v70 = v147;
  v71 = v133;
  sub_1C5BCA2F4();
  (*(v157 + 8))(v68, v71);
  sub_1C5AFE734(v64);
  v72 = *(v64 + *(v65 + 44));

  v67(v64, v65);
  v212 = v72;
  sub_1C5BC9894();
  v73 = v150;
  v74 = v136;
  sub_1C5BC9CF4();

  (*(v161 + 8))(v70, v74);
  v75 = v194;
  sub_1C5AFE734(v64);
  v67(v64, v65);
  v76 = v151;
  v77 = v137;
  sub_1C5BC9EA4();
  (*(v160 + 8))(v73, v77);
  sub_1C5BCA474();
  sub_1C5BCA4B4();

  v78 = v153;
  v79 = v139;
  sub_1C5BCA284();

  (*(v162 + 8))(v76, v79);
  type metadata accessor for CGRect(0);
  v81 = v80;
  v82 = v195;
  v182 = *(v195 + 16);
  v183 = v195 + 16;
  v83 = v171;
  v84 = v75;
  v85 = v59;
  v182(v171, v75, v59);
  v181 = *(v82 + 80);
  v86 = v82;
  v87 = (v181 + 32) & ~v181;
  v88 = swift_allocObject();
  v89 = v192;
  *(v88 + 16) = v191;
  *(v88 + 24) = v89;
  v180 = *(v86 + 32);
  v195 = v86 + 32;
  v90 = v83;
  (v180)(v88 + v87, v83, v85);
  sub_1C5AFED04(&unk_1EDA45DD0, type metadata accessor for CGRect);
  v91 = v141;
  sub_1C5AFCB44(v81, sub_1C5AFEB10, 0, sub_1C5AFEC78, v88, v141, v81, v140);

  (*(v163 + 8))(v78, v91);
  sub_1C5BC9474();
  sub_1C5BC82B4();
  v92 = v85;
  LODWORD(v162) = sub_1C5AFEDB4();
  v173 = v93;
  v172 = v94;
  v163 = v95;
  v96 = v182;
  v182(v90, v84, v85);
  v97 = swift_allocObject();
  v98 = v191;
  v99 = v192;
  *(v97 + 16) = v191;
  *(v97 + 24) = v99;
  v100 = v180;
  (v180)(v97 + v87, v90, v92);
  v101 = v190;
  v102 = v193;
  v103 = &v193[*(v190 + 44)];
  *v103 = v162 & 1;
  *(v103 + 1) = v173;
  *(v103 + 2) = v172;
  *(v103 + 3) = v163;
  v104 = &v102[*(v101 + 48)];
  *v104 = sub_1C5AFEEBC;
  *(v104 + 1) = v97;
  v96(v90, v194, v92);
  v105 = v146;
  v106 = swift_allocObject();
  *(v106 + 16) = v98;
  *(v106 + 24) = v99;
  v107 = v149;
  v100(v106 + v87, v90, v92);
  v108 = v187;
  sub_1C5924F54(&qword_1EC197948, &qword_1EC197928);
  v109 = v174;
  v110 = v193;
  sub_1C5BCA8D4();

  v111 = v184;
  sub_1C5924EF4(v110, &qword_1EC197928);
  sub_1C5BC8334();
  v112 = v188;
  sub_1C5BCA0B4();
  (*(v175 + 8))(v109, v108);
  (*(v170 + 8))(v112, v111);
  if (*(v194 + *(v185 + 36)))
  {
    v113 = v177;
    sub_1C5BC90B4();
    v114 = v176;
  }

  else
  {
    v212 = MEMORY[0x1E69E7CC0];
    sub_1C5AFED04(&unk_1EDA46330, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193270);
    sub_1C5924F54(&qword_1EDA45EB8, &qword_1EC193270);
    v113 = v177;
    v114 = v176;
    sub_1C5BCB8F4();
  }

  v212 = v111;
  v213 = v108;
  v214 = v105;
  v215 = v107;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = v164;
  v117 = v167;
  v118 = v186;
  sub_1C5BCA134();
  (*(v178 + 8))(v113, v114);
  (*(v165 + 8))(v118, v117);
  v119 = sub_1C5AFED04(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v196 = v115;
  v197 = v119;
  v120 = v169;
  v121 = swift_getWitnessTable();
  v122 = v166;
  sub_1C593EDC0(v116, v120, v121);
  v123 = *(v168 + 8);
  v123(v116, v120);
  sub_1C593EDC0(v122, v120, v121);
  return (v123)(v122, v120);
}

uint64_t sub_1C5AFE6CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BC0);
  sub_1C5BC8494();
  return v1;
}

uint64_t sub_1C5AFE734@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 >= 2)
  {
    if (v6 == 6)
    {
      sub_1C5BC9944();
      sub_1C5BC9974();
      v8 = sub_1C5BC99E4();

      v9 = sub_1C5BC9A54();
      *v4 = v8;
      v4[1] = v9;
      v21 = 0x402C000000000000;
      sub_1C5A3B53C();
      sub_1C5BC84C4();
      *(v4 + *(v2 + 28)) = 0x4020000000000000;
      v21 = sub_1C5BCA484();
      v10 = sub_1C5BC85E4();
      *a1 = xmmword_1C5BE88D0;
      *(a1 + 16) = 0x4038000000000000;
      v11 = type metadata accessor for ToastView.Specs();
      result = sub_1C5B01718(v4, a1 + v11[10]);
      *(a1 + v11[11]) = v10;
      *(a1 + v11[12]) = 0x403E000000000000;
    }

    else
    {
      if (qword_1EC1905B0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EC1A6A20);
      v13 = sub_1C5BC7D44();
      v14 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v6;
        v21 = v16;
        *v15 = 136315138;
        type metadata accessor for UIUserInterfaceIdiom(0);
        v17 = sub_1C5BCAEA4();
        v19 = sub_1C592ADA8(v17, v18, &v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1C5922000, v13, v14, "Unsupported userInterfaceIdiom=%s. Defaulting to iOS specs", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1C69510F0](v16, -1, -1);
        MEMORY[0x1C69510F0](v15, -1, -1);
      }

      return sub_1C5B0137C(a1);
    }
  }

  else
  {

    return sub_1C5B0137C(a1);
  }

  return result;
}

uint64_t sub_1C5AFEA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5AFEAB4(uint64_t a1)
{
  v2 = type metadata accessor for ToastViewLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AFEB10@<X0>(void *a1@<X8>)
{
  v2 = sub_1C5BC9304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC9474();
  sub_1C5BC86D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1C5AFEC78()
{
  type metadata accessor for ToastView();

  return sub_1C5AFEC1C();
}

uint64_t sub_1C5AFED04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5AFEDB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BC0);
  sub_1C5BC84A4();
  return v1;
}

uint64_t sub_1C5AFEE24(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToastView();
  if (*(a4 + *(result + 36)))
  {
    v7 = sub_1C5AFEF60();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_1C5BC82E4();
    v16.x = v14;
    v16.y = v15;
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    result = CGRectContainsPoint(v17, v16);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C5AFEEBC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for ToastView() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5AFEE24(a1, a2, a3, v8);
}

double sub_1C5AFEF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BB8);
  sub_1C5BCA694();
  return v1;
}

uint64_t sub_1C5AFEFC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ToastView();
  v4 = sub_1C5AFEF60();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C5BC82E4();
  v15.x = v11;
  v15.y = v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  result = CGRectContainsPoint(v16, v15);
  if (result)
  {
    v14 = (a2 + *(v3 + 36));
    if (*v14)
    {
      return (*v14)();
    }
  }

  return result;
}

uint64_t sub_1C5AFF070(uint64_t a1)
{
  v3 = *(type metadata accessor for ToastView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1C5AFEFC4(a1, v4);
}

__n128 ToastView.init<>(_:headnote:systemImage:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C5974664(a12, a13);
  type metadata accessor for CGRect(0);
  sub_1C5BCA684();
  sub_1C5BC8484();
  v15 = sub_1C5BCA5C4();
  sub_1C59A5824(a12, a13);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12 != 0;
  *(a9 + 72) = v15;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = v24;
  *(a9 + 112) = v25;
  *(a9 + 128) = v26;
  *(a9 + 136) = v24;
  *(a9 + 144) = *(&v24 + 1);
  result = v25;
  *(a9 + 152) = v25;
  return result;
}

uint64_t ToastView.init<A>(_:headnote:action:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v14 = a3 & 1;
  sub_1C5974664(a9, a10);
  type metadata accessor for ToastViewLabelContent();
  swift_getWitnessTable();
  ToastView.init(action:content:)(a9, a10, sub_1C5AFF5F4, a8);
  sub_1C5953BD8(a1, a2, v14);

  sub_1C596F908(a4, a5, a6, a7);
  return sub_1C59A5824(a9, a10);
}

uint64_t sub_1C5AFF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(__n128), uint64_t a13, uint64_t a14)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v36 = a5;
  v37 = a1;
  v41 = a3;
  v46 = a9;
  v47 = a2;
  v40 = a12;
  v38 = a4;
  v39 = a14;
  v17 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ToastViewLabelContent();
  v42 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v40(v24);
  v27 = v47;
  *v22 = a1;
  *(v22 + 1) = v27;
  v28 = v41 & 1;
  v22[16] = v41 & 1;
  *(v22 + 3) = a4;
  *(v22 + 4) = a5;
  v30 = v43;
  v29 = v44;
  *(v22 + 5) = v43;
  *(v22 + 6) = v29;
  v31 = v45;
  *(v22 + 7) = v45;
  v22[64] = a10 != 0;
  (*(v17 + 32))(&v22[*(v20 + 44)], v19, v39);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v22, v20, WitnessTable);
  sub_1C596F94C(v36, v30, v29, v31);
  sub_1C59AEE34(v37, v47, v28);
  v33 = *(v42 + 8);

  v33(v22, v20);
  sub_1C593EDC0(v26, v20, WitnessTable);
  return (v33)(v26, v20);
}

uint64_t ToastViewLabelContent.body.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197950);
  v4 = *(a1 + 16);
  v5 = sub_1C5AFF834();
  v6 = *(a1 + 24);
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v7 = sub_1C5BCA614();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v21 = v4;
  v22 = v6;
  v23 = v1;
  v18 = v4;
  v19 = v6;
  v20 = v1;
  sub_1C5BCA604();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_1C593EDC0(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

unint64_t sub_1C5AFF834()
{
  result = qword_1EC197958;
  if (!qword_1EC197958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197950);
    sub_1C5924F54(&qword_1EC197960, qword_1EC197968);
    sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197958);
  }

  return result;
}

uint64_t sub_1C5AFF918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC197968);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  *v10 = sub_1C5BC9144();
  *(v10 + 1) = 0xBFF0000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B60);
  sub_1C5AFFA54(a1, a2, a3, &v10[*(v11 + 44)]);
  if (a1[7])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_1C59E7D34(v10, a4, qword_1EC197968);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197950);
  v15 = a4 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v12;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_1C5AFFA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35[-v11];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  if (v16)
  {
    sub_1C59AEE34(a1[4], a1[5], v15 & 1);

    sub_1C5BC9A44();
    v38 = v16;
    v17 = sub_1C5BC9C14();
    v39 = a3;
    v19 = v18;
    v42 = a4;
    v43 = v9;
    v21 = v20;

    sub_1C5BC9984();
    v37 = sub_1C5BC9B44();
    v40 = a1;
    v41 = v12;
    v23 = v22;
    v25 = v24;
    sub_1C5953BD8(v17, v19, v21 & 1);

    v45 = sub_1C5BC9404();
    v26 = v37;
    v27 = sub_1C5BC9BC4();
    v29 = v28;
    v36 = v30;
    v16 = v31;
    v32 = v23;
    v12 = v41;
    sub_1C5953BD8(v26, v32, v25 & 1);

    sub_1C5953BD8(v13, v14, v15 & 1);

    v15 = v36 & 1;
    a4 = v42;
    sub_1C59AEE34(v27, v29, v36 & 1);

    v13 = v27;
    v14 = v29;
    v9 = v43;
  }

  type metadata accessor for ToastViewLabelContent();
  sub_1C5AFFD44(v12);
  sub_1C59400B0(v12, v9, &qword_1EC197B68);
  *a4 = v13;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B70);
  sub_1C59400B0(v9, a4 + *(v33 + 48), &qword_1EC197B68);
  sub_1C596F94C(v13, v14, v15, v16);
  sub_1C596F908(v13, v14, v15, v16);
  sub_1C5924EF4(v12, &qword_1EC197B68);
  sub_1C5924EF4(v9, &qword_1EC197B68);
  return sub_1C596F908(v13, v14, v15, v16);
}

uint64_t sub_1C5AFFD44@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8FC4();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B78);
  return sub_1C5AFFF34(v1, a1 + *(v3 + 44));
}

uint64_t sub_1C5AFFDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToastViewLabelContent();
  sub_1C593EDC0(a1 + *(v9 + 44), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5AFFF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B80);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B88);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (*(a1 + 64) == 1)
  {
    v30 = sub_1C5BCA5A4();
    v29 = sub_1C5BC9404();
    v18 = *(v34 + 36);
    v31 = v6;
    v19 = &v5[v18];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78);
    v32 = v10;
    v21 = *(v20 + 28);
    v22 = *MEMORY[0x1E69816C8];
    v23 = sub_1C5BCA5D4();
    v24 = v19 + v21;
    v10 = v32;
    (*(*(v23 - 8) + 104))(v24, v22, v23);
    *v19 = swift_getKeyPath();
    *v5 = v30;
    *(v5 + 2) = v29;
    sub_1C5B015A8();
    v25 = v33;
    sub_1C5BCA094();
    sub_1C5924EF4(v5, &qword_1EC197B80);
    sub_1C59E7D34(v25, v13, &qword_1EC197B88);
    (*(v35 + 56))(v13, 0, 1, v31);
  }

  else
  {
    (*(v35 + 56))(&v28[-v12], 1, 1, v6);
  }

  sub_1C59400B0(v13, v10, &qword_1EC197B90);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B98);
  sub_1C59400B0(v10, a2 + *(v26 + 48), &qword_1EC197B90);
  sub_1C59AEE34(v14, v15, v16);

  sub_1C59AEE34(v14, v15, v16);

  sub_1C5924EF4(v13, &qword_1EC197B90);
  sub_1C5924EF4(v10, &qword_1EC197B90);
  sub_1C5953BD8(v14, v15, v16);
}

void sub_1C5B00300()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C59F4E0C();
    if (v1 <= 0x3F)
    {
      sub_1C5B00720();
      if (v2 <= 0x3F)
      {
        sub_1C5B00C1C(319, qword_1EC1979F8, MEMORY[0x1E69E6370], MEMORY[0x1E697BF20]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5B003DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C5B00538(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19[2] = 0;
          v19[3] = 0;
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[2] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1C5B00720()
{
  if (!qword_1EC1979F0)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1979F0);
    }
  }
}

void sub_1C5B00778()
{
  sub_1C5B00C1C(319, &qword_1EC197A80, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B00834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 65) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 33) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1C5B009C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 65) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      if (v10)
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
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
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
        a1[2] = BYTE2(v18);
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
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 33) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void sub_1C5B00C1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5B00C94()
{
  sub_1C5A3B4E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5B00D40()
{
  result = type metadata accessor for ToastViewLabelStyle.Specs(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C5B00DAC()
{
  sub_1C5B00E78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ToastViewLabelStyle.Specs(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5B00E78()
{
  if (!qword_1EC197B28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC197B28);
    }
  }
}

uint64_t sub_1C5B00EF4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B40);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B48);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B50);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  sub_1C5BC94B4();
  v22 = *a1;
  KeyPath = swift_getKeyPath();
  v24 = &v12[*(v10 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;

  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v12, v18, &qword_1EC197B48);
  v25 = &v18[*(v14 + 44)];
  v26 = v46;
  *(v25 + 4) = v45;
  *(v25 + 5) = v26;
  *(v25 + 6) = v47;
  v27 = v42;
  *v25 = v41;
  *(v25 + 1) = v27;
  v28 = v44;
  *(v25 + 2) = v43;
  *(v25 + 3) = v28;
  sub_1C59E7D34(v18, v21, &qword_1EC197B50);
  sub_1C5BC94C4();
  v29 = a1[1];
  v30 = swift_getKeyPath();
  v31 = &v8[*(v4 + 44)];
  *v31 = v30;
  v31[1] = v29;
  v32 = v38;
  sub_1C59400B0(v21, v38, &qword_1EC197B50);
  v33 = v39;
  sub_1C59400B0(v8, v39, &qword_1EC197B40);
  v34 = v40;
  sub_1C59400B0(v32, v40, &qword_1EC197B50);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B58);
  sub_1C59400B0(v33, v34 + *(v35 + 48), &qword_1EC197B40);

  sub_1C5924EF4(v8, &qword_1EC197B40);
  sub_1C5924EF4(v21, &qword_1EC197B50);
  sub_1C5924EF4(v33, &qword_1EC197B40);
  return sub_1C5924EF4(v32, &qword_1EC197B50);
}

uint64_t sub_1C5B01274@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToastViewLabelStyle.Specs(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  sub_1C5BC84D4();
  *a1 = sub_1C5BC8FC4();
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B30);
  sub_1C5B00EF4(v1, a1 + *(v3 + 44));
  v4 = sub_1C5BC98F4();
  sub_1C5BC8174();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B38);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1C5B0137C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BCA9E4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5BC9924();
  sub_1C5BC9994();
  v7 = sub_1C5BC99E4();

  sub_1C5BC9904();
  sub_1C5BC9994();
  v8 = sub_1C5BC99E4();

  *v6 = v7;
  v6[1] = v8;
  v12[1] = 0x4010000000000000;
  sub_1C5A3B53C();
  sub_1C5BC84C4();
  *(v6 + *(v4 + 36)) = 0x4020000000000000;
  sub_1C5BCA9C4();
  v9 = sub_1C5BC85E4();
  *a1 = xmmword_1C5BE88E0;
  *(a1 + 16) = 0x4034000000000000;
  v10 = type metadata accessor for ToastView.Specs();
  result = sub_1C5B01718(v6, a1 + v10[10]);
  *(a1 + v10[11]) = v9;
  *(a1 + v10[12]) = 0x402C000000000000;
  return result;
}

uint64_t sub_1C5B01544@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C5BC8EE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1C5B015A8()
{
  result = qword_1EC197BA0;
  if (!qword_1EC197BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197B80);
    sub_1C5B01660();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BA0);
  }

  return result;
}

unint64_t sub_1C5B01660()
{
  result = qword_1EC197BA8;
  if (!qword_1EC197BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197BB0);
    sub_1C5924F54(&qword_1EDA461E8, &qword_1EC1956C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BA8);
  }

  return result;
}

uint64_t sub_1C5B01718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B0177C()
{
  result = qword_1EC197BC8;
  if (!qword_1EC197BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197B38);
    sub_1C5924F54(&qword_1EC197BD0, qword_1EC197BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BC8);
  }

  return result;
}

uint64_t sub_1C5B01834@<X0>(void *a1@<X8>)
{
  v3 = sub_1C5B01964();
  if (v4)
  {
    v5 = sub_1C5BCAC04();
    v6 = *(*(v5 - 8) + 16);
    v7 = v5;
    v8 = a1;
    v9 = v1;

    return v6(v8, v9, v7);
  }

  v11 = v3;
  result = UIAnimationDragCoefficient();
  v13 = v12 * v11;
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 < 9.2234e18)
  {
    *a1 = v13;
    v14 = *MEMORY[0x1E69E7F28];
    v15 = sub_1C5BCAC04();
    v6 = *(*(v15 - 8) + 104);
    v7 = v15;
    v8 = a1;
    v9 = v14;

    return v6(v8, v9, v7);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C5B01964()
{
  v1 = v0;
  v2 = sub_1C5BC7D64();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC04();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v28 - v13);
  v15 = *(v6 + 16);
  v15(&v28 - v13, v1, v5);
  LODWORD(result) = (*(v6 + 88))(v14, v5);
  if (result == *MEMORY[0x1E69E7F48])
  {
    v17 = *(v6 + 96);
    v6 += 96;
    v17(v14, v5);
    result = 1000000000 * *v14;
    if ((*v14 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F38])
  {
    v18 = *(v6 + 96);
    v6 += 96;
    v18(v14, v5);
    result = 1000000 * *v14;
    if ((*v14 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F30])
  {
    (*(v6 + 96))(v14, v5);
    result = 1000 * *v14;
    if ((*v14 * 1000) >> 64 != result >> 63)
    {
      __break(1u);
    }
  }

  else if (result == *MEMORY[0x1E69E7F28])
  {
    (*(v6 + 96))(v14, v5);
    return *v14;
  }

  else
  {
    if (result != *MEMORY[0x1E69E7F40])
    {
      sub_1C5BC7D54();
      v15(v12, v1, v5);
      v19 = sub_1C5BC7D44();
      v31 = sub_1C5BCB4E4();
      if (os_log_type_enabled(v19, v31))
      {
        v20 = swift_slowAlloc();
        v29 = v19;
        v21 = v20;
        v30 = swift_slowAlloc();
        v33 = v30;
        *v21 = 136315394;
        *(v21 + 4) = sub_1C592ADA8(0xD000000000000014, 0x80000001C5BFBC00, &v33);
        *(v21 + 12) = 2080;
        v15(v9, v12, v5);
        v28 = sub_1C5BCAEA4();
        v23 = v22;
        v24 = *(v6 + 8);
        v24(v12, v5);
        v25 = sub_1C592ADA8(v28, v23, &v33);

        *(v21 + 14) = v25;
        v26 = v29;
        _os_log_impl(&dword_1C5922000, v29, v31, "Unhandled case for %s: %s", v21, 0x16u);
        v27 = v30;
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v27, -1, -1);
        MEMORY[0x1C69510F0](v21, -1, -1);
      }

      else
      {

        v24 = *(v6 + 8);
        v24(v12, v5);
      }

      (*(v32 + 8))(v4, v2);
      v24(v14, v5);
    }

    return 0;
  }

  return result;
}

id sub_1C5B01E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1C5B01F08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A03B48(v1);
}

uint64_t sub_1C5B01F64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a5;
  *(a4 + 8) = a1;
  v7 = type metadata accessor for MaterialChinModifier();
  v11 = a2(v7, v8, v9, v10);
  a3(v11);
  return sub_1C5B021A8(sub_1C5B0222C, 0);
}

uint64_t sub_1C5B02044@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void (*a8)(uint64_t)@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a5;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a8;
  v22 = a10;
  v24 = a6;
  v25 = a7;
  v26 = a11;
  v27 = a12;
  v15 = type metadata accessor for MaterialChinModifier();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v21 - v17;
  v19 = a1;
  sub_1C5B01F64(a1, a2, v21[0], v18, a9);
  MEMORY[0x1C694E550](v18, *(v23 + 16), v15, v22);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1C5B021A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5B0222C()
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
    sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  if (*(v0 + 24))
  {
    v2 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();
  }

  return v0;
}

uint64_t sub_1C5B0240C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v80 = a3;
  v78 = *(a2 - 1);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C60);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68);
  v75 = a2[2];
  sub_1C5BC8AB4();
  v73 = a2[3];
  sub_1C5BC8AB4();
  v72 = a2[5];
  v95 = v72;
  v96 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197C70, &qword_1EC197C60);
  v5 = sub_1C5BC87C4();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v54 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  v7 = sub_1C5BC8AB4();
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0);
  v10 = sub_1C5924F54(&qword_1EC197C78, &qword_1EC197C60);
  WitnessTable = swift_getWitnessTable();
  v93 = v10;
  v94 = WitnessTable;
  v12 = swift_getWitnessTable();
  v56 = v12;
  v13 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v91 = v12;
  v92 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1C5B052E0();
  v87 = v7;
  v88 = v9;
  v16 = v7;
  v57 = v7;
  v60 = v9;
  v89 = v14;
  v90 = v15;
  v59 = v14;
  v17 = v15;
  v58 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = OpaqueTypeMetadata2;
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v61 = &v54 - v19;
  v20 = type metadata accessor for MaterialMotionContentObserver(255);
  v64 = v20;
  v87 = v16;
  v88 = v9;
  v89 = v14;
  v90 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeConformance2;
  v62 = sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  v87 = OpaqueTypeMetadata2;
  v88 = v20;
  v89 = OpaqueTypeConformance2;
  v90 = v62;
  v66 = MEMORY[0x1E69811C8];
  v22 = swift_getOpaqueTypeMetadata2();
  v67 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  v28 = v81;
  v29 = *v81;
  v30 = a2[4];
  v31 = swift_allocObject();
  *&v32 = v75;
  *(&v32 + 1) = v73;
  v55 = v32;
  *&v33 = v30;
  *(&v33 + 1) = v72;
  v54 = v33;
  *(v31 + 16) = v32;
  *(v31 + 32) = v33;
  *(v31 + 48) = v29;
  v83 = v32;
  v84 = v33;
  v85 = v76;
  v86 = v28;
  v34 = v28;
  v35 = v69;
  sub_1C5B02D8C(sub_1C5B05394, v82, v69);

  v36 = v68;
  sub_1C5BCA2A4();
  (*(v71 + 8))(v35, v5);
  v37 = v34;
  v87 = v34[1];
  v38 = v87;
  v39 = v78;
  v40 = v77;
  (*(v78 + 16))(v77, v37, a2);
  v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v43 = v54;
  *(v42 + 16) = v55;
  *(v42 + 32) = v43;
  (*(v39 + 32))(v42 + v41, v40, a2);
  v44 = v38;
  v45 = v61;
  v46 = v57;
  sub_1C5BCA344();

  (*(v74 + 8))(v36, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  v47 = v65;
  v48 = v64;
  v49 = v63;
  v50 = v62;
  sub_1C5BC9DE4();

  (*(v70 + 8))(v45, v47);
  v87 = v47;
  v88 = v48;
  v89 = v49;
  v90 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v24, v22, v51);
  v52 = *(v67 + 8);
  v52(v24, v22);
  sub_1C593EDC0(v27, v22, v51);
  return (v52)(v27, v22);
}

uint64_t sub_1C5B02D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for MaterialChinModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C5BCAB74();
  v7 = sub_1C5B055D0();
  WitnessTable = swift_getWitnessTable();
  return sub_1C59485B4(a1, a2, &type metadata for MaterialChinLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_1C5B02F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68);
  v43 = sub_1C5BC8AB4();
  v51 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v13;
  v47 = sub_1C5BC8AB4();
  v72 = a6;
  v73 = MEMORY[0x1E697E040];
  v45 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v49 = sub_1C5BC8BE4();
  v44 = sub_1C5BC8AB4();
  v50 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v16;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  type metadata accessor for MaterialChinModifier();
  swift_getWitnessTable();
  v17 = sub_1C5BC9394();
  v38 = v17;
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v37 - v20;
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(a1, v17, v40);
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197C90);
  sub_1C5B05458();
  v21 = v42;
  sub_1C5BCA2C4();
  sub_1C5BCAA34();
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a2;
  v22 = sub_1C5924F54(&qword_1EC197CD0, &qword_1EC197C68);
  v67[4] = a5;
  v67[5] = v22;
  v23 = v43;
  v24 = swift_getWitnessTable();
  v25 = v41;
  sub_1C5BCA2C4();
  (*(v51 + 8))(v21, v23);
  v26 = swift_getWitnessTable();
  v67[2] = v24;
  v67[3] = v26;
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_1C593EDC0(v25, v27, v28);
  v30 = v50;
  v31 = *(v50 + 8);
  v31(v25, v27);
  v32 = v53;
  v33 = v39;
  v34 = v38;
  (*(v54 + 16))(v53, v39, v38);
  v68 = v32;
  (*(v30 + 16))(v25, v29, v27);
  v69 = v25;
  v67[0] = v34;
  v67[1] = v27;
  v65 = v40;
  v66 = v28;
  sub_1C594226C(&v68, 2uLL, v67);
  v31(v29, v27);
  v35 = *(v54 + 8);
  v35(v33, v34);
  v31(v25, v27);
  return (v35)(v53, v34);
}

uint64_t sub_1C5B03568@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *&v17 = a1;
  *(&v17 + 1) = a2;
  type metadata accessor for MaterialChinModifier();
  sub_1C5B0370C(&v18);
  v4 = v20;
  if (v20 == 255)
  {
    v6 = 0;
    v5 = 0;
    v9 = 0;
    v14 = 0;
    v7 = 0;
    v8 = 0;
    result = 0;
    v15 = 0;
    v12 = 0;
    v10 = 0;
    v13 = 0uLL;
  }

  else
  {
    v6 = v18;
    v5 = v19;
    sub_1C59B5E3C(v18, v19, v20 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8);
    sub_1C5BCA684();
    KeyPath = swift_getKeyPath();
    v7 = swift_getKeyPath();
    sub_1C5BCA684();
    v8 = *(&v17 + 1);
    v9 = sub_1C5BCA484();
    sub_1C5A5FC9C(v6, v5, v4);
    v10 = v4 & 1;
    result = swift_getKeyPath();
    v12 = v17;
    v13 = v17;
    v14 = KeyPath;
    v15 = 2;
  }

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = 0;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = v12;
  *(a3 + 88) = v8;
  *(a3 + 96) = result;
  *(a3 + 104) = v15;
  return result;
}

void sub_1C5B0370C(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  swift_getKeyPath();
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v2 = *(v7 + 24);
  v3 = v2;

  sub_1C5BC81A4();
  swift_getKeyPath();
  sub_1C5BC7B74();

  v4 = *(v7 + 16);
  v5 = v4;

  if (v2)
  {
    v6 = v4 == 0;
  }

  else
  {

    v4 = 0;
    v6 = -1;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
}

uint64_t sub_1C5B03884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  type metadata accessor for MaterialChinModifier();
  sub_1C5BCAA54();
  sub_1C5BCA234();
  v19[0] = a5;
  v19[1] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_1C593EDC0(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

void sub_1C5B03A54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MaterialChinModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0);
  sub_1C5BC81A4();
  swift_getKeyPath();
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v3 = *(a2 + 24);
  v4 = v3;

  v5 = *(a1 + 8);
  if (v3)
  {
    if (v5)
    {
      sub_1C5B051EC();
      v6 = v5;
      v7 = sub_1C5BCB744();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    sub_1C5BC81A4();
    v8 = v5;
    sub_1C5A03B48(v5);

    return;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

double sub_1C5B03BCC(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v23 = a2;
  v24 = a1;
  v6 = sub_1C5BC8944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C5BC8744();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22[-v15];
  sub_1C5B03E08(&v22[-v15], v13);
  v17 = *(v11 + 8);
  v17(v13, v10);
  v18 = (a4 & 1) != 0 || *&a3 == 0.0;
  v26 = v23 & 1;
  v25 = v18;
  sub_1C5BC8704();
  sub_1C5BC8924();
  v20 = v19;
  sub_1C5BC8934();
  (*(v7 + 8))(v9, v6);
  v17(v16, v10);
  return v20;
}

uint64_t sub_1C5B03E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1C5BC8894();
  sub_1C5B056F4(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (sub_1C5BCB414() == 2)
  {
    sub_1C5BC3A0C(v11);
    v12 = sub_1C5BC8744();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1C5B0568C(v11);
    }

    else
    {
      (*(v13 + 32))(a1, v11, v12);
      if ((sub_1C5BCB404() & 1) == 0)
      {
        sub_1C5BCB424();
        sub_1C5B056F4(qword_1EC197CE8, MEMORY[0x1E697E3C0]);
        sub_1C5BCAD54();
        v14 = sub_1C5BCB484();
        (*(v13 + 16))(a2);
        return v14(&v27, 0);
      }

      (*(v13 + 8))(a1, v12);
    }
  }

  v16 = 1702195828;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1C5BCBA94();
  v29 = v27;
  v30 = v28;
  MEMORY[0x1C694F170](0xD00000000000001DLL, 0x80000001C5BFBC20);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v27 = sub_1C5BCB414();
  v17 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v17);

  MEMORY[0x1C694F170](0xD000000000000021, 0x80000001C5BFBC40);
  sub_1C5BC3A0C(v8);
  v18 = sub_1C5BC8744();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v8, 1, v18);
  sub_1C5B0568C(v8);
  if (v20 == 1)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v20 == 1)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v21, v22);

  MEMORY[0x1C694F170](0x203A6E696863202CLL, 0xE800000000000000);
  if (sub_1C5BCB404())
  {
    (*(v19 + 56))(v26, 1, 1, v18);
    v23 = 0xE500000000000000;
    v16 = 0x65736C6166;
  }

  else
  {
    sub_1C5BCB424();
    sub_1C5B056F4(qword_1EC197CE8, MEMORY[0x1E697E3C0]);
    sub_1C5BCAD54();
    v24 = sub_1C5BCB484();
    v25 = v26;
    (*(v19 + 16))(v26);
    v24(&v27, 0);
    (*(v19 + 56))(v25, 0, 1, v18);
    v23 = 0xE400000000000000;
  }

  sub_1C5B0568C(v26);
  MEMORY[0x1C694F170](v16, v23);

  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C5B043C8(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v28 = a1;
  v29 = sub_1C5BC8944();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC8744();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v28 - v23;
  sub_1C5B03E08(&v28 - v23, v21);
  v25 = (a4 & 1) != 0 || *&a3 == 0.0;
  v35 = a2 & 1;
  v34 = v25;
  sub_1C5BC8704();
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  CGRectGetMidX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMinY(v37);
  sub_1C5BCABB4();
  sub_1C5BC8924();
  sub_1C5BC8934();
  v33 = 0;
  v32 = 0;
  sub_1C5BC8724();
  sub_1C5BC8924();
  sub_1C5BC8934();
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  CGRectGetMidX(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  CGRectGetMinY(v39);
  sub_1C5BC8934();
  sub_1C5BCABB4();
  v31 = 0;
  v30 = 0;
  sub_1C5BC8724();
  (*(v15 + 8))(v17, v29);
  v26 = *(v19 + 8);
  v26(v21, v18);
  return (v26)(v24, v18);
}

void (*sub_1C5B04738(uint64_t *a1))(void *a1)
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

uint64_t sub_1C5B04840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double, uint64_t, uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v22 = a2;
  v23 = a3;
  v24 = a13;
  v16 = type metadata accessor for MCUINamespace();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  View.mcui.getter(a6, &v21 - v18);
  v24(a1, v22, v23, v25, v26, v16, v27, v28, a9, a10, a11, a12);
  return (*(v17 + 8))(v19, v16);
}

void sub_1C5B04990()
{
  sub_1C5B05238(319, &qword_1EC192F78, sub_1C5B051EC, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C5B05238(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5B04ABC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v36 = *(a3 + 24);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v12 = *(v11 - 8);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  if (*(v12 + 84) <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v12 + 80) & 0xF8 | 7;
  if (v17 < a2)
  {
    v19 = ((*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v18 + ((v14 + v15 + ((v13 + 16) & ~v13)) & ~v15)) & ~v18) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v17 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_32;
      }

      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

LABEL_32:
  v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v17 <= 0x7FFFFFFE)
  {
    v29 = *v28;
    if (*v28 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    if ((v29 + 1) >= 2)
    {
      return v29;
    }

    else
    {
      return 0;
    }
  }

  v30 = (v28 + v13 + 8) & ~v13;
  if (v7 == v17)
  {
    v31 = *(v6 + 48);
    v32 = v7;
    v33 = v5;

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v14 + v15) & ~v15;
  if (v9 == v17)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v36;

    return v31(v30, v32, v33);
  }

  v34 = *(v12 + 48);
  v35 = (v30 + v16 + v18) & ~v18;

  return v34(v35);
}

void sub_1C5B04E2C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v39 = *(a4 + 24);
  v40 = *(a4 + 16);
  v7 = *(v40 - 8);
  v41 = v7;
  v8 = *(v7 + 84);
  v9 = *(v39 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  v13 = *(v12 - 8);
  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (*(v13 + 84) <= 0x7FFFFFFEu)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v11;
  }

  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = ((*(*(v12 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = ((v17 + v20 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & ~v20) + v21;
  if (v19 >= a3)
  {
    v25 = 0;
    v26 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    if (v22)
    {
      v28 = ~v19 + a2;
      bzero(a1, ((v17 + v20 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & ~v20) + v21);
      *a1 = v28;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v25)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = a3 - v19 + 1;
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

  v26 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v22) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_38;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v19 <= 0x7FFFFFFE)
  {
    *v29 = a2;
    return;
  }

  v30 = (v29 + v14 + 8) & ~v14;
  if (v8 == v19)
  {
    v31 = *(v41 + 56);
    v32 = a2;
    v33 = v8;
    v34 = v40;

LABEL_46:
    v31(v30, v32, v33, v34);
    return;
  }

  v30 = (v30 + v15 + v16) & ~v16;
  if (v10 == v19)
  {
    v31 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v34 = v39;

    goto LABEL_46;
  }

  v35 = ((v30 + v17 + v20) & ~v20);
  if (v18 >= a2)
  {
    v38 = *(v13 + 56);

    v38(v35, a2);
  }

  else if (v21)
  {
    v36 = ~v18 + a2;
    v37 = v35;
    bzero(v35, v21);
    *v37 = v36;
  }
}

unint64_t sub_1C5B051EC()
{
  result = qword_1EDA4E5E0;
  if (!qword_1EDA4E5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E5E0);
  }

  return result;
}

void sub_1C5B05238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5B052E0()
{
  result = qword_1EC197C80;
  if (!qword_1EC197C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0);
    sub_1C5B056F4(&qword_1EC197C88, sub_1C5B051EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197C80);
  }

  return result;
}

void sub_1C5B053A4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MaterialChinModifier() - 8);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  sub_1C5B03A54(v3, v1);
}

unint64_t sub_1C5B05458()
{
  result = qword_1EC197C98;
  if (!qword_1EC197C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C90);
    sub_1C5B054DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197C98);
  }

  return result;
}

unint64_t sub_1C5B054DC()
{
  result = qword_1EC197CA0;
  if (!qword_1EC197CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197CA8);
    sub_1C5924F54(&qword_1EC197CB0, &qword_1EC197CB8);
    sub_1C5924F54(&qword_1EC197CC0, &qword_1EC197CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CA0);
  }

  return result;
}

unint64_t sub_1C5B055D0()
{
  result = qword_1EC197CD8;
  if (!qword_1EC197CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CD8);
  }

  return result;
}

unint64_t sub_1C5B05638()
{
  result = qword_1EC197CE0;
  if (!qword_1EC197CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CE0);
  }

  return result;
}

uint64_t sub_1C5B0568C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B056F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C5B05750()
{
  if (*(v0 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v0 + 18) > 2u)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1C5B0586C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v29 = v4;
  v5 = sub_1C5BC8F34();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v30 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v31 = v11;
  v32 = v12;
  sub_1C5BC9134();
  _s11ContentViewVMa();
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  memcpy(v49, v50, sizeof(v49));
  sub_1C5BC9884();
  v27 = v10;
  v26 = v5;
  if (v10 == 1)
  {
    v46 = v8;
    v47 = v30;
    v48 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = v5;
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C59CC0D8(v8, v30, v9, 0);
    (*(v28 + 8))(v7, v13);
  }

  v15 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  memcpy(v45, v49, 0x12AuLL);
  (*(*(v15 - 8) + 8))(v45, v15);
  memcpy(v44, v51, sizeof(v44));
  sub_1C5BC98B4();
  if (v27)
  {
    v41 = v8;
    v42 = v30;
    v43 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C59CC0D8(v8, v30, v9, 0);
    (*(v28 + 8))(v7, v26);
  }

  v18 = sub_1C5BC8AB4();
  v19 = MEMORY[0x1E697E5D8];
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  memcpy(v38, v44, 0x159uLL);
  (*(*(v18 - 8) + 8))(v38, v18);
  memcpy(v40, v52, 0x189uLL);
  v21 = sub_1C5BC8AB4();
  v34 = v20;
  v35 = v19;
  v22 = swift_getWitnessTable();
  sub_1C593EDC0(v40, v21, v22);
  memcpy(v39, v40, 0x189uLL);
  v23 = *(*(v21 - 8) + 8);
  v23(v39, v21);
  memcpy(v33, v53, 0x189uLL);
  sub_1C593EDC0(v33, v21, v22);
  memcpy(v40, v33, 0x189uLL);
  return (v23)(v40, v21);
}

uint64_t sub_1C5B05DC4()
{
  sub_1C5B06210(&v59);
  v0 = _s11ContentViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v59, v0, WitnessTable);
  v45[8] = v66;
  v45[9] = v67;
  v46 = v68;
  v45[4] = v63;
  v45[5] = *v64;
  v45[6] = *&v64[16];
  v45[7] = v65;
  v45[0] = v59;
  v45[1] = v60;
  v45[2] = v61;
  v45[3] = v62;
  v1 = *(v0 - 8);
  v8 = *(v1 + 8);
  v8(v45, v0);
  sub_1C5B30EA8(&v59);
  v2 = _s13FooterButtonsVMa();
  v3 = swift_getWitnessTable();
  sub_1C593EDC0(&v59, v2, v3);
  v47[4] = v63;
  v48[0] = *v64;
  *(v48 + 10) = *&v64[10];
  v47[0] = v59;
  v47[1] = v60;
  v47[2] = v61;
  v47[3] = v62;
  v4 = *(v2 - 8);
  v5 = *(v4 + 8);
  v5(v47, v2);
  v49[8] = v42;
  v49[9] = v43;
  v49[4] = v38;
  v49[5] = v39;
  v49[7] = v41;
  v49[6] = v40;
  v49[0] = v34;
  v49[1] = v35;
  v49[2] = v36;
  v49[3] = v37;
  v24 = v42;
  v25 = v43;
  v50 = v44;
  v26 = v44;
  v20 = v38;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  v16 = v34;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v51[4] = v32;
  v52[0] = v33[0];
  *(v52 + 10) = *(v33 + 10);
  v51[0] = v28;
  v51[1] = v29;
  v51[3] = v31;
  v51[2] = v30;
  v10 = v28;
  v11 = v29;
  v14 = v32;
  v15[0] = v33[0];
  v12 = v30;
  v13 = v31;
  *(v15 + 10) = *(v33 + 10);
  v27[0] = &v16;
  v27[1] = &v10;
  (*(v1 + 16))(&v59, v49, v0);
  (*(v4 + 16))(&v59, v51, v2);
  v9[0] = v0;
  v9[1] = v2;
  sub_1C594226C(v27, 2uLL, v9);
  v53[4] = v32;
  v54[0] = v33[0];
  *(v54 + 10) = *(v33 + 10);
  v53[0] = v28;
  v53[1] = v29;
  v53[3] = v31;
  v53[2] = v30;
  v5(v53, v2);
  v55[8] = v42;
  v55[9] = v43;
  v56 = v44;
  v55[4] = v38;
  v55[5] = v39;
  v55[7] = v41;
  v55[6] = v40;
  v55[0] = v34;
  v55[1] = v35;
  v55[3] = v37;
  v55[2] = v36;
  v8(v55, v0);
  v57[4] = v14;
  v58[0] = v15[0];
  *(v58 + 10) = *(v15 + 10);
  v57[0] = v10;
  v57[1] = v11;
  v57[3] = v13;
  v57[2] = v12;
  v5(v57, v2);
  v66 = v24;
  v67 = v25;
  v68 = v26;
  v63 = v20;
  *v64 = v21;
  v65 = v23;
  *&v64[16] = v22;
  v59 = v16;
  v60 = v17;
  v62 = v19;
  v61 = v18;
  return v8(&v59, v0);
}

uint64_t sub_1C5B06210@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 89) = 0;
  *(a1 + 96) = swift_getKeyPath();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  type metadata accessor for WindowProperties();
  sub_1C5937F18(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  *(a1 + 120) = sub_1C5BC8324();
  *(a1 + 128) = v3 & 1;
  *(a1 + 136) = swift_getKeyPath();
  *(a1 + 144) = 0;
  _s13TrackSectionsCMa(0);
  sub_1C5937F18(qword_1EDA4AB40, _s13TrackSectionsCMa);
  result = sub_1C5BC8324();
  *(a1 + 152) = result;
  *(a1 + 160) = v5 & 1;
  return result;
}

uint64_t sub_1C5B0633C@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5B06378@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  if (*(v1 + 112) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v7, v8, 0);
    result = (*(v4 + 8))(v6, v3);
    v7 = v12[0];
    v8 = v12[1];
  }

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  a1[1] = v8;
  return result;
}

double sub_1C5B064E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1C5B065A0();
  result = -2.0;
  if (!v3)
  {
    if (v1 != 0x6575657571 || (result = -16.0, v2 != 0xE500000000000000))
    {
      v5 = sub_1C5BCBDE4();
      result = 0.0;
      if (v5)
      {
        return -16.0;
      }
    }
  }

  return result;
}

BOOL sub_1C5B065A0()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v14[3] = &type metadata for Features;
  v14[4] = sub_1C5A2E158();
  v7 = swift_allocObject();
  v14[0] = v7;
  *(v7 + 16) = "MediaCoreUI";
  *(v7 + 24) = 11;
  *(v7 + 32) = 2;
  *(v7 + 40) = "HoveringChapterPicker";
  *(v7 + 48) = 21;
  *(v7 + 56) = 2;
  v8 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(v14);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v5 = v14[0];
  }

  swift_getKeyPath();
  v14[0] = v5;
  sub_1C5937F18(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v10 = *(v5 + 16);

  if (v10 >> 62)
  {
    v11 = sub_1C5BCB984();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v11 != 0;
}

uint64_t sub_1C5B0680C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197D70);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s18DefaultContentViewVMa();
  _s19TrackSectionsButtonVMa();
  _s28TrackSectionsPlatterModifierVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedTypeWitness();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197D78, &qword_1EC197D70);
  v7 = sub_1C5BC87C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(v2 + 144);
  v32[8] = *(v2 + 128);
  v32[9] = v14;
  v33 = *(v2 + 160);
  v15 = *(v2 + 80);
  v32[4] = *(v2 + 64);
  v32[5] = v15;
  v16 = *(v2 + 112);
  v32[6] = *(v2 + 96);
  v32[7] = v16;
  v17 = *(v2 + 16);
  v32[0] = *v2;
  v32[1] = v17;
  v18 = *(v2 + 48);
  v32[2] = *(v2 + 32);
  v32[3] = v18;
  sub_1C5B099F4();
  v31 = sub_1C5BCAB44();
  v26 = v5;
  v27 = v4;
  v28 = v32;
  v19 = sub_1C5B0993C();
  WitnessTable = swift_getWitnessTable();
  sub_1C59485B4(sub_1C5B09930, v25, MEMORY[0x1E6981D78], v6, v19, WitnessTable, v10);

  v29 = sub_1C5924F54(&qword_1EC197D88, &qword_1EC197D70);
  v30 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, v21);
  v22 = *(v8 + 8);
  v22(v10, v7);
  sub_1C593EDC0(v13, v7, v21);
  return (v22)(v13, v7);
}

uint64_t sub_1C5B06C80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a4;
  v7 = sub_1C5BC8F34();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19TrackSectionsButtonVMa();
  _s28TrackSectionsPlatterModifierVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedTypeWitness();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v9 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v97 = v9;
  v10 = sub_1C5BCA7D4();
  v98 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v84 - v11;
  v113 = v12;
  v13 = sub_1C5BC8AB4();
  v100 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v115 = v16;
  v17 = sub_1C5BC8AB4();
  v102 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v84 - v18;
  v114 = v19;
  v20 = sub_1C5BC8AB4();
  v104 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v84 - v26;
  v27 = sub_1C5BCB804();
  v107 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v84 - v31;
  KeyPath = swift_getKeyPath();
  LOBYTE(v157) = 0;
  v33 = sub_1C5BC8C84();
  *&v157 = KeyPath;
  BYTE9(v161) = 0;
  *&v162 = v33;
  *(&v162 + 1) = v34;
  v35 = _s18DefaultContentViewVMa();
  v106 = swift_getWitnessTable();
  sub_1C593EDC0(&v157, v35, v106);
  v176[2] = v159;
  v176[3] = v160;
  v176[4] = v161;
  v176[5] = v162;
  v176[0] = v157;
  v176[1] = v158;
  v105 = *(v35 - 8);
  v36 = *(v105 + 8);
  v111 = v35;
  v108 = v36;
  v109 = v105 + 8;
  v36(v176, v35);
  v37 = a1[9];
  v165 = a1[8];
  v166 = v37;
  v167 = *(a1 + 160);
  v38 = a1[5];
  v161 = a1[4];
  v162 = v38;
  v39 = a1[7];
  v163 = a1[6];
  v164 = v39;
  v40 = a1[1];
  v157 = *a1;
  v158 = v40;
  v41 = a1[3];
  v159 = a1[2];
  v160 = v41;
  v94 = _s11ContentViewVMa();
  v42 = sub_1C5B06378(&v155);
  if (v156)
  {
    v89 = v24;
    v90 = v20;
    v87 = v29;
    v88 = v27;
    v43 = v113;
    MEMORY[0x1EEE9AC00](v42);
    *(&v84 - 6) = a2;
    *(&v84 - 5) = a3;
    *(&v84 - 4) = a1;
    *(&v84 - 3) = v44;
    v85 = v45;
    v86 = v44;
    *(&v84 - 2) = v45;
    sub_1C5BC9134();
    v46 = v95;
    sub_1C5BCA7C4();
    v47 = swift_getWitnessTable();
    v48 = v15;
    sub_1C5A45C68(v43, v47);
    (*(v98 + 8))(v46, v43);
    LODWORD(v98) = sub_1C5BC98A4();
    *(v175 + 10) = *(a1 + 74);
    v49 = a1[2];
    v174[0] = a1[1];
    v174[1] = v49;
    v50 = a1[4];
    v174[2] = a1[3];
    v175[0] = v50;
    if (BYTE9(v175[1]))
    {
      *(&v148[1] + 8) = *(a1 + 40);
      *(&v148[2] + 8) = *(a1 + 56);
      *(&v148[3] + 8) = *(a1 + 72);
      BYTE8(v148[4]) = *(a1 + 88);
      *(v148 + 8) = *(a1 + 24);
      *&v148[0] = *&v174[0];
    }

    else
    {
      sub_1C59B737C(v174, &v120);
      sub_1C5BCB4E4();
      v57 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v58 = v91;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v174, &qword_1EC191B58);
      (*(v92 + 8))(v58, v93);
    }

    v59 = MEMORY[0x1E697E5D8];
    v122 = v148[2];
    v123[0] = v148[3];
    *(v123 + 9) = *(&v148[3] + 9);
    v120 = v148[0];
    v121 = v148[1];
    sub_1C5A5D530(&v142);
    v60 = sub_1C5B09990();
    v130 = v47;
    v131 = v60;
    v61 = v115;
    v62 = swift_getWitnessTable();
    v63 = v99;
    sub_1C5BCA2F4();
    (*(v100 + 8))(v48, v61);
    sub_1C5BC98A4();
    v64 = a1[9];
    v127 = a1[8];
    v128 = v64;
    v129 = *(a1 + 160);
    v65 = a1[5];
    v123[1] = a1[4];
    v124 = v65;
    v66 = a1[7];
    v125 = a1[6];
    v126 = v66;
    v67 = a1[1];
    v120 = *a1;
    v121 = v67;
    v68 = a1[3];
    v122 = a1[2];
    v123[0] = v68;
    *&v142 = v86;
    *(&v142 + 1) = v85;
    sub_1C5B064E4(&v142);

    v118 = v62;
    v119 = v59;
    v69 = v114;
    v70 = swift_getWitnessTable();
    v71 = v89;
    sub_1C5BCA2F4();
    (*(v102 + 8))(v63, v69);
    v116 = v70;
    v117 = v59;
    v72 = v90;
    v73 = swift_getWitnessTable();
    v74 = v101;
    sub_1C593EDC0(v71, v72, v73);
    v75 = v104;
    v76 = *(v104 + 8);
    v76(v71, v72);
    v77 = v103;
    sub_1C593EDC0(v74, v72, v73);
    v76(v74, v72);
    v29 = v87;
    (*(v75 + 32))(v87, v77, v72);
    (*(v75 + 56))(v29, 0, 1, v72);
    v54 = v110;
    sub_1C5941600(v29, v110);
    v55 = v107;
    v56 = *(v107 + 8);
    v27 = v88;
    v56(v29, v88);
  }

  else
  {
    v51 = MEMORY[0x1E697E5D8];
    (*(v104 + 56))(v29, 1, 1, v20);
    v52 = swift_getWitnessTable();
    v53 = sub_1C5B09990();
    v153 = v52;
    v154 = v53;
    v151 = swift_getWitnessTable();
    v152 = v51;
    v149 = swift_getWitnessTable();
    v150 = v51;
    swift_getWitnessTable();
    v54 = v110;
    sub_1C5941600(v29, v110);
    v55 = v107;
    v56 = *(v107 + 8);
    v56(v29, v27);
  }

  v148[2] = v170;
  v148[3] = v171;
  v148[4] = v172;
  v148[5] = v173;
  v148[0] = v168;
  v148[1] = v169;
  v144 = v170;
  v145 = v171;
  v146 = v172;
  v147 = v173;
  v142 = v168;
  v143 = v169;
  v155 = &v142;
  (*(v55 + 16))(v29, v54, v27);
  v156 = v29;
  v78 = v111;
  (*(v105 + 16))(&v157, v148, v111);
  v141[0] = v78;
  v141[1] = v27;
  v139 = v106;
  v79 = swift_getWitnessTable();
  v80 = sub_1C5B09990();
  v137 = v79;
  v138 = v80;
  v135 = swift_getWitnessTable();
  v81 = MEMORY[0x1E697E5D8];
  v136 = MEMORY[0x1E697E5D8];
  v133 = swift_getWitnessTable();
  v134 = v81;
  v132 = swift_getWitnessTable();
  v140 = swift_getWitnessTable();
  sub_1C594226C(&v155, 2uLL, v141);
  v56(v54, v27);
  v122 = v170;
  v123[0] = v171;
  v123[1] = v172;
  v124 = v173;
  v120 = v168;
  v121 = v169;
  v82 = v108;
  v108(&v120, v78);
  v56(v29, v27);
  v159 = v144;
  v160 = v145;
  v161 = v146;
  v162 = v147;
  v157 = v142;
  v158 = v143;
  return v82(&v157, v78);
}

uint64_t sub_1C5B079A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v87 = a2;
  *(&v87 + 1) = a3;
  v95 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v90 = AssociatedTypeWitness;
  v96 = v11;
  v94 = sub_1C5BC8AB4();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v98 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = v81 - v14;
  v15 = sub_1C5BC8F84();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[9];
  v160 = a1[8];
  v161 = v19;
  v162 = *(a1 + 160);
  v20 = a1[5];
  v156 = a1[4];
  v157 = v20;
  v21 = a1[7];
  v158 = a1[6];
  v159 = v21;
  v22 = a1[1];
  v152 = *a1;
  v153 = v22;
  v23 = a1[3];
  v154 = a1[2];
  v155 = v23;
  _s11ContentViewVMa();
  v24 = sub_1C5B065A0();
  v92 = a4;
  v93 = a5;
  if (v24)
  {
    v25 = sub_1C5A4F994();
    v86 = v15;
    *&v128 = v25;
    BYTE8(v128) = v26 & 1;
    v27 = sub_1C5A3D634();
    v84 = v18;
    v29 = v28;
    *&v152 = v27;
    BYTE8(v152) = v30 & 1;
    *&v153 = v28;
    v32 = v31 & 1;
    BYTE8(v153) = v31 & 1;
    v33 = _s19TrackSectionsButtonVMa();
    v85 = v16;
    v34 = v33;
    v35 = _s28TrackSectionsPlatterModifierVMa();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1C694E550](&v145, &v152, v34, v35, WitnessTable);

    sub_1C5942458(v29, v32);

    v37 = v147;
    v38 = BYTE8(v147);
    *&v128 = v145;
    BYTE8(v128) = BYTE8(v145);
    *&v129 = v146;
    BYTE8(v129) = BYTE8(v146);
    *&v130 = v147;
    BYTE8(v130) = BYTE8(v147);
    sub_1C5BC8AB4();
    v39 = swift_getWitnessTable();
    v113 = WitnessTable;
    v114 = v39;
    v82 = MEMORY[0x1E697E858];
    v40 = swift_getWitnessTable();
    sub_1C5B7B220();

    sub_1C5942458(v37, v38);
    v41 = v154;
    LOBYTE(v35) = BYTE8(v154);
    *&v128 = v152;
    BYTE8(v128) = BYTE8(v152);
    *&v129 = v153;
    BYTE8(v129) = BYTE8(v153);
    *&v130 = v154;
    BYTE8(v130) = BYTE8(v154);
    *&v131 = v155;
    v81[3] = sub_1C5BC98B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
    sub_1C5BC8AB4();
    v83 = MEMORY[0x1E697FDC0];
    v42 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
    v111 = v40;
    v112 = v42;
    v43 = swift_getWitnessTable();
    sub_1C5BCA2F4();

    sub_1C5942458(v41, v35);
    v132 = v149;
    v133 = v150;
    LOBYTE(v134) = v151;
    v128 = v145;
    v129 = v146;
    v130 = v147;
    v131 = v148;
    v44 = v84;
    sub_1C5BC8F74();
    v45 = sub_1C5BC8AB4();
    v109 = v43;
    v110 = MEMORY[0x1E697E5D8];
    v46 = swift_getWitnessTable();
    sub_1C5937F18(&qword_1EC197D98, MEMORY[0x1E697F260]);
    v47 = v86;
    sub_1C5B1077C(v44);
    (*(v85 + 8))(v44, v47);
    v116[4] = v132;
    v116[5] = v133;
    v117 = v134;
    v116[0] = v128;
    v116[1] = v129;
    v116[2] = v130;
    v116[3] = v131;
    (*(*(v45 - 8) + 8))(v116, v45);
    v149 = v156;
    v150 = v157;
    v151 = v158;
    v145 = v152;
    v146 = v153;
    v148 = v155;
    v147 = v154;
    v48 = sub_1C5BC8AB4();
    v49 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v107 = v46;
    v108 = v49;
    v50 = swift_getWitnessTable();
    sub_1C593EDC0(&v145, v48, v50);
    v118[4] = v149;
    v118[5] = v150;
    v118[6] = v151;
    v118[0] = v145;
    v118[1] = v146;
    v118[2] = v147;
    v118[3] = v148;
    v51 = *(*(v48 - 8) + 8);
    v51(v118, v48);
    v156 = v115[4];
    v157 = v115[5];
    v158 = v115[6];
    v152 = v115[0];
    v153 = v115[1];
    v154 = v115[2];
    v155 = v115[3];
    sub_1C593EDC0(&v152, v48, v50);
    v132 = v156;
    v133 = v157;
    v134 = v158;
    v128 = v152;
    v129 = v153;
    v130 = v154;
    v131 = v155;
    v51(&v128, v48);
    v156 = v104;
    v157 = v105;
    v158 = v106;
    v152 = v100;
    v153 = v101;
    v154 = v102;
    v155 = v103;
    sub_1C5941600(&v152, v99);
    v149 = v156;
    v150 = v157;
    v151 = v158;
    v145 = v152;
    v146 = v153;
    v148 = v155;
    v147 = v154;
    v52 = sub_1C5BCB804();
    (*(*(v52 - 8) + 8))(&v145, v52);
    v156 = v99[4];
    v157 = v99[5];
    v158 = v99[6];
    v152 = v99[0];
    v153 = v99[1];
    v154 = v99[2];
    v155 = v99[3];
  }

  else
  {
    _s19TrackSectionsButtonVMa();
    _s28TrackSectionsPlatterModifierVMa();
    sub_1C5BC8AB4();
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v53 = swift_getWitnessTable();
    v54 = swift_getWitnessTable();
    v143 = v53;
    v144 = v54;
    v55 = swift_getWitnessTable();
    v56 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
    v141 = v55;
    v142 = v56;
    v139 = swift_getWitnessTable();
    v140 = MEMORY[0x1E697E5D8];
    v57 = swift_getWitnessTable();
    v58 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    v137 = v57;
    v138 = v58;
    swift_getWitnessTable();
    sub_1C5941600(&v145, &v152);
  }

  v60 = v92;
  v59 = v93;
  sub_1C59498C4(*a1);
  v61 = *(v59 + 320);
  swift_unknownObjectRetain();
  v61(&v128, v60, v59);
  swift_unknownObjectRelease();
  v118[0] = v128;
  v115[0] = v87;
  v62 = sub_1C5A36B84();
  v63 = v90;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v145 = &type metadata for NowPlayingHostedContentID;
  *(&v145 + 1) = v63;
  *&v146 = v62;
  *(&v146 + 1) = AssociatedConformanceWitness;
  v65 = type metadata accessor for ContentLookup();
  v66 = v88;
  sub_1C5A1EAEC(v115, v65);

  sub_1C5A399B8();
  v67 = v98;
  sub_1C5BC9D74();

  (*(v89 + 8))(v66, v63);
  *&v87 = MEMORY[0x1E697FDC0];
  *(&v87 + 1) = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v135 = AssociatedConformanceWitness;
  v136 = *(&v87 + 1);
  v68 = v94;
  v88 = swift_getWitnessTable();
  v69 = v97;
  sub_1C593EDC0(v67, v68, v88);
  v70 = v91;
  v71 = *(v91 + 8);
  v89 = v91 + 8;
  v90 = v71;
  v71(v67, v68);
  v132 = v156;
  v133 = v157;
  v134 = v158;
  v128 = v152;
  v129 = v153;
  v130 = v154;
  v131 = v155;
  *&v118[0] = &v128;
  (*(v70 + 16))(v67, v69, v68);
  *(&v118[0] + 1) = v67;
  _s19TrackSectionsButtonVMa();
  _s28TrackSectionsPlatterModifierVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v96 = sub_1C5BC8AB4();
  v72 = sub_1C5BCB804();
  v73 = *(v72 - 8);
  (*(v73 + 16))(&v145, &v152, v72);
  *&v115[0] = v72;
  *(&v115[0] + 1) = v68;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v126 = v74;
  v127 = v75;
  v76 = swift_getWitnessTable();
  v77 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
  v124 = v76;
  v125 = v77;
  v122 = swift_getWitnessTable();
  v123 = MEMORY[0x1E697E5D8];
  v120 = swift_getWitnessTable();
  v121 = *(&v87 + 1);
  v119 = swift_getWitnessTable();
  *&v100 = swift_getWitnessTable();
  *(&v100 + 1) = v88;
  sub_1C594226C(v118, 2uLL, v115);
  v78 = *(v73 + 8);
  v78(&v152, v72);
  v79 = v90;
  v90(v97, v68);
  v79(v98, v68);
  v149 = v132;
  v150 = v133;
  v151 = v134;
  v145 = v128;
  v146 = v129;
  v148 = v131;
  v147 = v130;
  return (v78)(&v145, v72);
}

uint64_t sub_1C5B0884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v32[2] = v2[2];
  v32[3] = v8;
  v9 = v2[5];
  v32[4] = v2[4];
  v32[5] = v9;
  v10 = v2[1];
  v32[0] = *v2;
  v32[1] = v10;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v20[4] = v11;
  v20[5] = v12;
  v20[6] = v32;
  sub_1C5BC9134();
  *&v31[0] = _s21FullScreenArtworkViewVMa();
  *(&v31[0] + 1) = _s33DefaultMetadataAndContextMenuViewVMa();
  *&v31[1] = _s10BannerViewVMa();
  _s15TimeControlViewVMa();
  *(&v31[1] + 1) = sub_1C5BC8AB4();
  *&v31[2] = _s12ControlsViewVMa();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  memcpy(v28, v29, sizeof(v28));
  *&v34[10] = *(&v32[3] + 10);
  v33[0] = v32[0];
  v33[1] = v32[1];
  v33[2] = v32[2];
  *v34 = v32[3];
  if (BYTE9(v32[4]))
  {
    *(&v27[1] + 8) = *(&v32[1] + 8);
    *(&v27[2] + 8) = *(&v32[2] + 8);
    *(&v27[3] + 8) = *(&v32[3] + 8);
    BYTE8(v27[4]) = BYTE8(v32[4]);
    *(v27 + 8) = *(v32 + 8);
    *&v27[0] = *&v32[0];
  }

  else
  {
    sub_1C59B737C(v33, v31);
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v33, &qword_1EC191B58);
    (*(v5 + 8))(v7, v4);
  }

  v31[2] = v27[2];
  v31[3] = v27[3];
  *(&v31[3] + 9) = *(&v27[3] + 9);
  v31[1] = v27[1];
  v31[0] = v27[0];
  sub_1C5B05750();
  sub_1C5BCAA54();
  v14 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA234();
  memcpy(v24, v28, 0x119uLL);
  (*(*(v14 - 8) + 8))(v24, v14);
  memcpy(v26, v30, sizeof(v26));
  v16 = sub_1C5BC8AB4();
  v22 = WitnessTable;
  v23 = MEMORY[0x1E697E040];
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v26, v16, v17);
  memcpy(v25, v26, sizeof(v25));
  v18 = *(*(v16 - 8) + 8);
  v18(v25, v16);
  memcpy(v21, v31, sizeof(v21));
  sub_1C593EDC0(v21, v16, v17);
  memcpy(v26, v21, sizeof(v26));
  return (v18)(v26, v16);
}

uint64_t sub_1C5B08D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_1C5BC8F34();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 80);
  v38 = *(a3 + 8);
  sub_1C59498C4(v9);
  v10 = *(a3 + 224);
  swift_unknownObjectRetain();
  v11 = v10(a2, a3);
  swift_unknownObjectRelease();
  v12 = *(v11 + 72);

  *&v94[0] = sub_1C5B4BFA0(v12, a2, a3);
  *(&v94[0] + 1) = v13;
  v14 = _s21FullScreenArtworkViewVMa();
  WitnessTable = swift_getWitnessTable();
  v44 = v14;
  sub_1C593EDC0(v94, v14, WitnessTable);

  sub_1C5B46508(v94);
  v86 = v94[0];
  *&v87 = *&v94[1];
  BYTE8(v87) = BYTE8(v94[1]);
  v15 = _s33DefaultMetadataAndContextMenuViewVMa();
  v41 = swift_getWitnessTable();
  v42 = v15;
  sub_1C593EDC0(&v86, v15, v41);
  v16 = v87;
  LOBYTE(v14) = BYTE8(v87);
  swift_unknownObjectRelease();
  sub_1C5942458(v16, v14);
  sub_1C59498C4(v9);
  swift_unknownObjectRetain();
  v10(a2, a3);
  swift_unknownObjectRelease();

  sub_1C5B304C8(&v118);
  v126 = v120;
  v124 = v119;
  v125 = BYTE8(v119);
  v123 = v118;
  v94[0] = v118;
  v94[1] = v119;
  v94[2] = v120;
  v17 = _s10BannerViewVMa();
  v39 = swift_getWitnessTable();
  v40 = v17;
  sub_1C593EDC0(v94, v17, v39);
  sub_1C5924EF4(&v123, &unk_1EC197E30);
  sub_1C5924EF4(&v124, &qword_1EC194400);
  v18 = sub_1C5BC8C94();
  (*(*(v18 - 8) + 8))(&v126, v18);
  CGSizeMake(a2, a3);
  sub_1C5BC98B4();
  *&v122[10] = *(a1 + 58);
  v19 = *(a1 + 16);
  v121[0] = *a1;
  v121[1] = v19;
  v20 = *(a1 + 48);
  v121[2] = *(a1 + 32);
  *v122 = v20;
  if (v122[25])
  {
    *(&v99[1] + 8) = *(a1 + 24);
    *(&v99[2] + 8) = *(a1 + 40);
    *(&v99[3] + 8) = *(a1 + 56);
    BYTE8(v99[4]) = *(a1 + 72);
    *(v99 + 8) = *(a1 + 8);
    *&v99[0] = *&v121[0];
  }

  else
  {
    sub_1C59B737C(v121, v94);
    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v22 = v35;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v121, &qword_1EC191B58);
    (*(v36 + 8))(v22, v37);
  }

  v94[2] = v99[2];
  v95[0] = v99[3];
  *(v95 + 9) = *(&v99[3] + 9);
  v94[1] = v99[1];
  v94[0] = v99[0];
  sub_1C5B3F240();
  _s15TimeControlViewVMa();
  v23 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  LOBYTE(v94[0]) = v100;
  *(v94 + 8) = v101;
  *(&v94[1] + 8) = v102;
  BYTE8(v94[2]) = v103;
  v24 = sub_1C5BC8AB4();
  v37 = v24;
  v80 = v23;
  v81 = MEMORY[0x1E697E5D8];
  v38 = swift_getWitnessTable();
  sub_1C593EDC0(v94, v24, v38);
  sub_1C5ACE348(v94);
  v25 = _s12ControlsViewVMa();
  v35 = swift_getWitnessTable();
  sub_1C593EDC0(v94, v25, v35);
  v82[4] = v95[1];
  v82[5] = v96;
  v82[6] = v97;
  v83 = v98;
  v82[0] = v94[0];
  v82[1] = v94[1];
  v82[2] = v94[2];
  v82[3] = v95[0];
  v26 = *(v25 - 8);
  v36 = *(v26 + 8);
  (v36)(v82, v25);
  v70[0] = v116;
  v70[1] = v117;
  v27 = v114;
  v28 = v115;
  v68 = v114;
  v69 = v115;
  v71[0] = v70;
  v71[1] = &v67;
  v64[0] = v108;
  v64[1] = v109;
  v64[2] = v110;
  v65 = v111;
  v34 = v112;
  v66 = v112;
  v67 = v113;
  v60 = v104;
  v61 = v105;
  v62 = v106;
  v63 = v107;
  v71[2] = v64;
  v71[3] = &v60;
  v84[2] = v74;
  v84[3] = v75;
  v84[0] = v72;
  v84[1] = v73;
  v85 = v79;
  v84[5] = v77;
  v84[6] = v78;
  v84[4] = v76;
  v54 = v74;
  v55 = v75;
  v52 = v72;
  v53 = v73;
  v59 = v79;
  v57 = v77;
  v58 = v78;
  v56 = v76;
  v71[4] = &v52;
  swift_unknownObjectRetain();

  sub_1C5950E48(v27, v28);
  swift_unknownObjectRetain();

  (*(v26 + 16))(v94, v84, v25);
  v51[0] = v44;
  v51[1] = v42;
  v51[2] = v40;
  v51[3] = v37;
  v51[4] = v25;
  v46 = WitnessTable;
  v47 = v41;
  v48 = v39;
  v49 = v38;
  v50 = v35;
  sub_1C594226C(v71, 5uLL, v51);
  v90 = v76;
  v91 = v77;
  v92 = v78;
  v93 = v79;
  v86 = v72;
  v87 = v73;
  v88 = v74;
  v89 = v75;
  v29 = v36;
  (v36)(&v86, v25);
  swift_unknownObjectRelease();

  v30 = v114;
  v31 = v115;
  swift_unknownObjectRelease();
  sub_1C5942458(v30, v31);

  v95[1] = v56;
  v96 = v57;
  v97 = v58;
  v98 = v59;
  v94[0] = v52;
  v94[1] = v53;
  v94[2] = v54;
  v95[0] = v55;
  v29(v94, v25);

  swift_unknownObjectRelease();
  v32 = v68;
  LOBYTE(v30) = v69;
  swift_unknownObjectRelease();
  sub_1C5942458(v32, v30);
}

void (*sub_1C5B09634(uint64_t *a1))(void *a1)
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

uint64_t sub_1C5B096BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B09780()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C5B097F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
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

uint64_t sub_1C5B09854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5B0993C()
{
  result = qword_1EC197D80;
  if (!qword_1EC197D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197D80);
  }

  return result;
}

unint64_t sub_1C5B09990()
{
  result = qword_1EC197D90;
  if (!qword_1EC197D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197D90);
  }

  return result;
}

unint64_t sub_1C5B099F4()
{
  result = qword_1EC197DA0[0];
  if (!qword_1EC197DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC197DA0);
  }

  return result;
}

uint64_t sub_1C5B09A58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B09A98()
{
  result = qword_1EC197E28;
  if (!qword_1EC197E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E28);
  }

  return result;
}

uint64_t sub_1C5B09B3C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v24[1] = a7;
  v27 = *MEMORY[0x1E69E9840];
  v14 = sub_1C5BC8744();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v24 - v19;
  sub_1C5BC8894();
  sub_1C5937F18(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  result = sub_1C5BCB414();
  if (result == 2)
  {
    sub_1C5BC88A4();
    sub_1C5BC88A4();
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    v22 = CGRectGetWidth(v30) * 0.5;
    if (qword_1EC1908D0 != -1)
    {
      swift_once();
    }

    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectDivide(v31, &slice, &remainder, v22 + *&xmmword_1EC1A6D80 * -0.5, CGRectMinXEdge);
    sub_1C5BCAB94();
    LOBYTE(slice.origin.x) = 0;
    LOBYTE(remainder.origin.x) = 0;
    sub_1C5BC8724();
    sub_1C5BCAB94();
    LOBYTE(slice.origin.x) = 0;
    LOBYTE(remainder.origin.x) = 0;
    sub_1C5BC8724();
    v23 = *(v15 + 8);
    v23(v17, v14);
    return (v23)(v20, v14);
  }

  else if (result == 1)
  {
    sub_1C5BC88A4();
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    CGRectGetMidX(v28);
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    CGRectGetMidY(v29);
    sub_1C5BCABD4();
    LOBYTE(slice.origin.x) = a6 & 1;
    LOBYTE(remainder.origin.x) = a8 & 1;
    sub_1C5BC8724();
    return (*(v15 + 8))(v20, v14);
  }

  return result;
}

uint64_t sub_1C5B09EE0()
{
  sub_1C59B5ECC();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B09F1C()
{
  v0 = MTLCreateSystemDefaultDevice();
  type metadata accessor for MetalRenderContext();
  swift_allocObject();
  result = sub_1C5B09F64(v0);
  qword_1EC1A6D40 = result;
  return result;
}

uint64_t sub_1C5B09F64(void *a1)
{
  v2 = v1;
  cacheOut[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v16 = sub_1C5BC7D64();
    __swift_project_value_buffer(v16, qword_1EC1A6D48);
    v17 = sub_1C5BC7D44();
    v18 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C5922000, v17, v18, "Couldn't init MetalRenderContext, device was nil", v19, 2u);
      MEMORY[0x1C69510F0](v19, -1, -1);
    }

    goto LABEL_31;
  }

  *(v1 + 16) = a1;
  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v20 = sub_1C5BC7D64();
    __swift_project_value_buffer(v20, qword_1EC1A6D48);
    v21 = sub_1C5BC7D44();
    v22 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C5922000, v21, v22, "Couldn't create command queue", v23, 2u);
      MEMORY[0x1C69510F0](v23, -1, -1);
    }

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  *(v1 + 24) = v4;
  v5 = qword_1EDA4E5D0;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  cacheOut[0] = 0;
  v6 = [a1 newDefaultLibraryWithBundle:qword_1EDA5DD00 error:cacheOut];
  v7 = cacheOut[0];
  if (!v6)
  {
    v24 = cacheOut[0];
    v25 = sub_1C5BC7914();

    swift_willThrow();
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v26 = sub_1C5BC7D64();
    __swift_project_value_buffer(v26, qword_1EC1A6D48);
    v27 = v25;
    v28 = sub_1C5BC7D44();
    v29 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1C5922000, v28, v29, "Couldn't create default library: %{public}@", v30, 0xCu);
      sub_1C5B0A754(v31);
      MEMORY[0x1C69510F0](v31, -1, -1);
      MEMORY[0x1C69510F0](v30, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  *(v2 + 32) = v6;
  cacheOut[0] = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = v7;
  v10 = CVMetalTextureCacheCreate(v8, 0, a1, 0, cacheOut);
  v11 = v10;
  v12 = cacheOut[0];
  if (!cacheOut[0] || v10)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v34 = sub_1C5BC7D64();
    __swift_project_value_buffer(v34, qword_1EC1A6D48);
    v35 = sub_1C5BC7D44();
    v36 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v11;
      _os_log_impl(&dword_1C5922000, v35, v36, "Couldn't create CVMetalTextureCache: %d", v37, 8u);
      MEMORY[0x1C69510F0](v37, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    type metadata accessor for MetalRenderContext();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 56) = cacheOut[0];
  v13 = objc_allocWithZone(MEMORY[0x1E6974438]);
  v14 = v12;
  *(v2 + 40) = [v13 initWithDevice_];
  v15 = sub_1C5B0A4FC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *(v2 + 48) = v15;

  return v2;
}

uint64_t sub_1C5B0A4FC()
{
  if ([v0 supportsFamily_] && (v1 = sub_1C5BCAE44(), v2 = MGGetBoolAnswer(), v1, v2) && MGGetProductType() != 33245053)
  {
    return 552;
  }

  else
  {
    return 80;
  }
}

uint64_t sub_1C5B0A580()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B0A5FC()
{
  if (qword_1EC190878 != -1)
  {
    swift_once();
  }

  qword_1EC197E40 = qword_1EC1A6D40;
}

uint64_t sub_1C5B0A660@<X0>(void *a1@<X8>)
{
  if (qword_1EC190880 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC197E40;
}

uint64_t sub_1C5B0A6D0()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6D48);
  __swift_project_value_buffer(v0, qword_1EC1A6D48);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B0A754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B0A7BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  KeyPath = swift_getKeyPath();
  type metadata accessor for Geometry();
  sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry);

  v10 = KeyPath;
  v11 = 0;
  v12 = sub_1C5BC8C84();
  v13 = v8;
  v14 = v6;
  v15 = v5;
  MEMORY[0x1C694E550](&v10, a2, &type metadata for PublishGeometryModifier, a3);
  sub_1C5950E44(v10, v11);
}

uint64_t static NowPlayingGeometryIdentifier.lookup(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  result = MEMORY[0x1C694F170](0x7274656D6F65672ELL, 0xE900000000000079);
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t static NowPlayingGeometryIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingGeometryIdentifier.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B0A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v10 = v2[2];
  v29 = *v2;
  v30 = v9;
  v31 = v10;
  v32 = v10;
  v11 = *v2;
  v33 = *v2;
  v34 = *(v2 + 8);
  if (v34 == 1)
  {
    sub_1C5B0BA0C(&v32, v28);
  }

  else
  {
    sub_1C5B0BA0C(&v32, v28);
    sub_1C5B0BA44(&v33, v28);
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B0BAB4(&v33);
    (*(v6 + 8))(v8, v5);
    v11 = v28[0];
  }

  v13 = v32;
  v14 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E68);
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E70) + 36);
  *v20 = v13;
  *(v20 + 16) = v11;
  *(v20 + 24) = v14;
  *(v20 + 32) = v16;
  *(v20 + 40) = v18;
  *(v20 + 48) = 1;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 1) = v29;
  *(v21 + 2) = v22;
  *(v21 + 3) = v31;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E78) + 36));
  *v23 = sub_1C5B0BB1C;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  v24 = swift_allocObject();
  v25 = v30;
  v24[1] = v29;
  v24[2] = v25;
  v24[3] = v31;
  v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E80) + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_1C5B0BB24;
  v26[3] = v24;
  sub_1C5B0BB2C(&v29, v28);
  return sub_1C5B0BB2C(&v29, v28);
}

uint64_t sub_1C5B0ACE8(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = sub_1C5BC8024();
    sub_1C5B0D4C0(&v6, v1, v2);

    v3(&v5, 0);
  }

  else
  {
    type metadata accessor for Geometry();
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B0AE24(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = sub_1C5BC8024();
    sub_1C5B0FB90(v1, v2, &v6);

    v3(&v5, 0);
  }

  else
  {
    type metadata accessor for Geometry();
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5B0AF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v3 = sub_1C5BC8F34();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E90);
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v24 - v7;
  if (*(v2 + 16))
  {
    v9 = *v2;
    v10 = *(v2 + 8);
    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    v27 = *(v2 + 48);
    v13 = *(v2 + 56);
    v14 = *(v2 + 64);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1C5BC8034();

    v15 = v31;

    v16 = sub_1C5B52B38(v12, v11, v15);

    if (v16)
    {
      if ((v10 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v17 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5950E44(v9, 0);
        (*(v25 + 8))(v5, v26);
        v9 = v31;
      }

      v18 = v30;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E98);
      (*(*(v19 - 8) + 16))(v8, v28, v19);
      v20 = v29;
      v21 = &v8[*(v29 + 36)];
      *v21 = v12;
      *(v21 + 1) = v11;
      *(v21 + 2) = v9;
      *(v21 + 6) = v27;
      *(v21 + 4) = v13;
      *(v21 + 5) = v14;
      v21[48] = 0;
      sub_1C5B10184(v8, v18);
      v22 = 0;
    }

    else
    {

      v22 = 1;
      v20 = v29;
      v18 = v30;
    }

    return (*(v6 + 56))(v18, v22, 1, v20);
  }

  else
  {
    type metadata accessor for Geometry();
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = *a1;
  v11 = a1[1];
  KeyPath = swift_getKeyPath();
  v21 = 0;
  type metadata accessor for Geometry();
  sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry);

  *&v16 = KeyPath;
  BYTE8(v16) = 0;
  *&v17 = sub_1C5BC8C84();
  *(&v17 + 1) = v14;
  *&v18 = v12;
  *(&v18 + 1) = v11;
  LODWORD(v19) = a2;
  *(&v19 + 1) = a5;
  v20 = a6;
  MEMORY[0x1C694E550](&v16, *(a3 + 16), &type metadata for MatchGeometryModifier, a4);
  v22[2] = v18;
  v22[3] = v19;
  v23 = v20;
  v22[0] = v16;
  v22[1] = v17;
  return sub_1C5B0B408(v22);
}

uint64_t MCUINamespace<A>.matchToNowPlayingButton(_:properties:anchor:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = *(a1 + 16);
  v15 = *a1;
  v16 = v11;
  NowPlayingButtonID.geometryID.getter(v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C5B0B4F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B0B568()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI8Geometry__visibleViews;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B0B610@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Geometry();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t View.matchToNowPlayingView(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for MCUINamespace();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  v17 = *a1;
  v16 = a1[1];
  View.mcui.getter(a3, v19 - v14);
  v19[0] = v17;
  v19[1] = v16;
  MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(v19, a2, v12, a4, a5, a6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t View.matchToNowPlayingButton(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v19 = a2;
  v11 = type metadata accessor for MCUINamespace();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-v13];
  v16 = *a1;
  v15 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  View.mcui.getter(a3, &v18[-v13]);
  *&v20 = v16;
  *(&v20 + 1) = v15;
  v21 = a1;
  MCUINamespace<A>.matchToNowPlayingButton(_:properties:anchor:)(&v20, v19, v11, a4, a5, a6);
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1C5B0B8C8()
{
  result = qword_1EC197E60;
  if (!qword_1EC197E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E60);
  }

  return result;
}

uint64_t sub_1C5B0B91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B0B964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B0BA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B0BAB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B0BB64@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C5B0BBE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

uint64_t sub_1C5B0BC60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90);
  result = sub_1C5BCBA44();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C5B0BEC0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40);
  result = sub_1C5BCBA44();
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
      result = sub_1C5BCB734();
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

uint64_t sub_1C5B0C0E8()
{
  v1 = v0;
  v35 = sub_1C5BC7B04();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8);
  result = sub_1C5BCBA44();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8]);
      result = sub_1C5BCAD34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1C5B0C444()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0);
  result = sub_1C5BCBA44();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v17 = sub_1C5BCBF94();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C5B0C6C0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8);
  result = sub_1C5BCBA44();
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
      result = sub_1C5BCBF44();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C5B0C8F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88);
  result = sub_1C5BCBA44();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C5B0CB54(uint64_t a1, uint64_t a2)
{
  sub_1C5BCB734();
  result = sub_1C5BCB924();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C5B0CBD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v8 = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C5BCBDE4() & 1) != 0)
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

    sub_1C5B0D7F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C5B0CD28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1C5BCAD34();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1C5B10240(&qword_1EC196A60, MEMORY[0x1E69695A8]);
      v21 = sub_1C5BCADB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1C5B0D970(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C5B0D008(void *a1, void *a2)
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

    v9 = sub_1C5BCB994();

    if (v9)
    {

      sub_1C5B101F4();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1C5BCB984();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C5B0D610(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1C5B0BEC0();
    }

    v18 = v8;
    sub_1C5B0CB54(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1C5B101F4();
  v11 = sub_1C5BCB734();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1C5B0DC14(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C5BCB744();

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

uint64_t sub_1C5B0D220(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v7 = sub_1C5BCBF94();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1C5BCAE74();
      v13 = v12;
      if (v11 == sub_1C5BCAE74() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1C5BCBDE4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1C5B0DD74(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1C5B0D3CC(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1C5BCBF44();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C5B0DF5C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C5B0D4C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v8 = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C5BCBDE4() & 1) != 0)
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

    sub_1C5B0E088(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C5B0D610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40);
    v2 = sub_1C5BCBA54();
    v14 = v2;
    sub_1C5BCB944();
    if (sub_1C5BCB9C4())
    {
      sub_1C5B101F4();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1C5B0BEC0();
        }

        v2 = v14;
        result = sub_1C5BCB734();
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

      while (sub_1C5BCB9C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C5B0D7F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C5B0BC60();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C5B0E208();
      goto LABEL_16;
    }

    sub_1C5B0EAD8();
  }

  v10 = *v4;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  result = sub_1C5BCBF94();
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

      result = sub_1C5BCBDE4();
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
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

uint64_t sub_1C5B0D970(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C5B0C0E8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1C5B0E4B4();
      goto LABEL_12;
    }

    sub_1C5B0EF24();
  }

  v12 = *v3;
  sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  v13 = sub_1C5BCAD34();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1C5B10240(&qword_1EC196A60, MEMORY[0x1E69695A8]);
      v21 = sub_1C5BCADB4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

void sub_1C5B0DC14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C5B0BEC0();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C5B0E364();
      goto LABEL_12;
    }

    sub_1C5B0ED10();
  }

  v8 = *v3;
  v9 = sub_1C5BCB734();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C5B101F4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C5BCB744();

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
  sub_1C5BCBE74();
  __break(1u);
}

uint64_t sub_1C5B0DD74(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1C5B0C444();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1C5B0E6EC();
      goto LABEL_16;
    }

    sub_1C5B0F240();
  }

  v9 = *v3;
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v10 = sub_1C5BCBF94();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1C5BCAE74();
      v15 = v14;
      if (v13 == sub_1C5BCAE74() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1C5BCBDE4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

unint64_t sub_1C5B0DF5C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1C5B0C6C0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1C5B0E83C();
      result = v7;
      goto LABEL_12;
    }

    sub_1C5B0F494();
  }

  v8 = *v3;
  v9 = sub_1C5BCBF44();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

uint64_t sub_1C5B0E088(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C5B0C8F4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C5B0E97C();
      goto LABEL_16;
    }

    sub_1C5B0F694();
  }

  v10 = *v4;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  result = sub_1C5BCBF94();
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

      result = sub_1C5BCBDE4();
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
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

void *sub_1C5B0E208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_1C5B0E364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
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

void *sub_1C5B0E4B4()
{
  v1 = v0;
  v2 = sub_1C5BC7B04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8);
  v6 = *v0;
  v7 = sub_1C5BCBA34();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1C5B0E6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
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

void *sub_1C5B0E83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C5B0E97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1C5B0EAD8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90);
  result = sub_1C5BCBA44();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_1C5B0ED10()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40);
  result = sub_1C5BCBA44();
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
      result = sub_1C5BCB734();
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

uint64_t sub_1C5B0EF24()
{
  v1 = v0;
  v32 = sub_1C5BC7B04();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8);
  v6 = sub_1C5BCBA44();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8]);
      result = sub_1C5BCAD34();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1C5B0F240()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0);
  result = sub_1C5BCBA44();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      v17 = v16;
      sub_1C5BCAF04();
      v18 = sub_1C5BCBF94();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1C5B0F494()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8);
  result = sub_1C5BCBA44();
  v4 = result;
  if (*(v2 + 16))
  {
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
      result = sub_1C5BCBF44();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C5B0F694()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88);
  result = sub_1C5BCBA44();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_1C5B0F8CC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v6 = sub_1C5BCBF94();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5B0E208();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1C5B0FE20(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1C5B0FA08(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1C5BCB9D4();

    if (v5)
    {
      v6 = sub_1C5B0FCC8();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1C5B101F4();
  v9 = sub_1C5BCB734();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1C5BCB744();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5B0E364();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1C5B0FFE4(v11);
  result = v17;
  *v8 = v18;
  return result;
}

unint64_t sub_1C5B0FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  result = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_1C5BCBDE4();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C5B0E97C();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_1C5B0FE20(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1C5B0FCC8()
{
  v1 = v0;

  v2 = sub_1C5BCB984();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1C5B0D610(v3, v2);
  v13 = v4;

  v5 = sub_1C5BCB734();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1C5B101F4();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1C5BCB744();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1C5B0FFE4(v7);
  result = sub_1C5BCB744();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5B0FE20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C5BCB914();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C5BCBF54();

        sub_1C5BCAF04();
        v10 = sub_1C5BCBF94();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C5B0FFE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C5BCB914();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1C5BCB734();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1C5B10184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B101F4()
{
  result = qword_1EC193A38;
  if (!qword_1EC193A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC193A38);
  }

  return result;
}

uint64_t sub_1C5B10240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B102B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C5B1033C()
{
  result = qword_1EC197ED0;
  if (!qword_1EC197ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E70);
    sub_1C5924F54(&qword_1EC197ED8, &qword_1EC197E68);
    sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197ED0);
  }

  return result;
}

unint64_t sub_1C5B10420()
{
  result = qword_1EC197EE0;
  if (!qword_1EC197EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197EE8);
    sub_1C5B104A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197EE0);
  }

  return result;
}

unint64_t sub_1C5B104A4()
{
  result = qword_1EC197EF0;
  if (!qword_1EC197EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E90);
    sub_1C5924F54(qword_1EC197EF8, &qword_1EC197E98);
    sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197EF0);
  }

  return result;
}

id sub_1C5B10588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1C5B10640(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A038DC(v1);
}

id sub_1C5B10670@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_1C5B106AC@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C109C();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

id sub_1C5B10748@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C5B1077C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1C5BC8674();
  sub_1C5BC9D74();
}

void LockScreenArtworkBackground.init(asset:treatment:staticArtwork:)(void *a1@<X0>, char *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v18 - v9);
  v11 = *a2;
  if (a1)
  {
    *v10 = a1;
    v12 = type metadata accessor for MotionAsset();
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for MotionAsset();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  sub_1C5B10A44(v10, a4);
  v14 = type metadata accessor for LockScreenArtworkBackground();
  *(a4 + *(v14 + 40)) = v11;
  v15 = a1;
  a3();
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  *(a4 + *(v14 + 44)) = v17 == 0;
}

uint64_t sub_1C5B10A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LockScreenArtworkBackground.init(videoURL:treatment:staticArtwork:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = *a2;
  sub_1C59400B0(a1, v10, &qword_1EC195738);
  v15 = sub_1C5BC7A24();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    v17 = type metadata accessor for MotionAsset();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  else
  {
    (*(v16 + 32))(v13, v10, v15);
    v18 = type metadata accessor for MotionAsset();
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  sub_1C5B10A44(v13, a5);
  v19 = type metadata accessor for LockScreenArtworkBackground();
  *(a5 + *(v19 + 40)) = v14;
  v25(v19, v20);
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  result = sub_1C5924EF4(a1, &qword_1EC195738);
  *(a5 + *(v19 + 44)) = v22 == 0;
  return result;
}

uint64_t LockScreenArtworkBackground.body.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v2 + 32))(v6 + v5, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for TallAssetArtworkBackground();
  type metadata accessor for SquareAssetArtworkBackground();
  sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v18 = WitnessTable;
  v19 = v9;
  swift_getWitnessTable();
  v24 = sub_1C5BC8864();
  v25 = v10;
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  sub_1C5BC8874();
  v11 = swift_getWitnessTable();
  sub_1C5BC9F84();

  v16[0] = v20;
  v16[1] = v21;
  v16[2] = v22;
  v17 = v23;
  v12 = sub_1C5BC8AB4();
  v15[0] = v11;
  v15[1] = MEMORY[0x1E6980A30];
  v13 = swift_getWitnessTable();
  sub_1C593EDC0(v16, v12, v13);

  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  sub_1C593EDC0(&v20, v12, v13);
}

uint64_t sub_1C5B1107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v55 = a5;
  v8 = type metadata accessor for SquareAssetArtworkBackground();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v45 - v11;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - v17;
  v19 = type metadata accessor for TallAssetArtworkBackground();
  v46 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v45 - v23;
  v24 = sub_1C5BC92D4();
  v53 = *(v24 - 8);
  v54 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v51 = a4;
  v52 = &v45 - v25;
  v26 = type metadata accessor for LockScreenArtworkBackground();
  v27 = *(a2 + v26[11]);
  sub_1C59400B0(a2, v18, &qword_1EC191EB8);
  (*(v12 + 16))(v15, a2 + v26[9], a3);
  if (v27 == 1)
  {
    v56 = *(a2 + v26[10]);
    sub_1C5BC86C4();
    sub_1C5B11638(v18, v15, &v56, a3, v21, v28, v29);
    WitnessTable = swift_getWitnessTable();
    v31 = v45;
    sub_1C593EDC0(v21, v19, WitnessTable);
    v32 = *(v46 + 8);
    v32(v21, v19);
    sub_1C593EDC0(v31, v19, WitnessTable);
    swift_getWitnessTable();
    v33 = v52;
    sub_1C5950E54(v21, v19);
    v32(v21, v19);
    v32(v31, v19);
  }

  else
  {
    sub_1C5BC86C4();
    v34 = v48;
    sub_1C5B117D0(v18, v15, a3, v48, v35, v36);
    v37 = swift_getWitnessTable();
    v38 = v47;
    sub_1C593EDC0(v34, v8, v37);
    v39 = *(v49 + 8);
    v39(v34, v8);
    sub_1C593EDC0(v38, v8, v37);
    swift_getWitnessTable();
    v33 = v52;
    sub_1C5941738(v34, v19, v8);
    v39(v34, v8);
    v39(v38, v8);
  }

  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v57 = v40;
  v58 = v41;
  v42 = v54;
  v43 = swift_getWitnessTable();
  sub_1C593EDC0(v33, v42, v43);
  return (*(v53 + 8))(v33, v42);
}

uint64_t sub_1C5B11638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v12 = *a3;
  sub_1C5B10A44(a1, a5);
  v13 = type metadata accessor for TallAssetArtworkBackground();
  (*(*(a4 - 8) + 32))(a5 + v13[9], a2, a4);
  *(a5 + v13[10]) = v12;
  v14 = (a5 + v13[11]);
  *v14 = a6;
  v14[1] = a7;
  sub_1C5B158B8(sub_1C5B11D34, 0);
  v15 = a5 + v13[13];
  *v15 = sub_1C5A765AC();
  *(v15 + 8) = v16 & 1;
  *(v15 + 16) = v17;
  v18 = a5 + v13[14];
  v19 = sub_1C5B15934();
  *v18 = v19;
  *(v18 + 4) = BYTE4(v19) & 1;
  *(v18 + 8) = v20;
  v21 = a5 + v13[15];
  result = sub_1C5BCA684();
  *v21 = 1;
  *(v21 + 8) = v23;
  return result;
}

uint64_t sub_1C5B117D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for SquareAssetArtworkBackground();
  sub_1C5B158B8(sub_1C5B159B4, 0);
  v13 = a4 + v12[12];
  *v13 = sub_1C5A765AC();
  *(v13 + 8) = v14 & 1;
  *(v13 + 16) = v15;
  v16 = a4 + v12[13];
  v17 = sub_1C5B15934();
  *v16 = v17;
  *(v16 + 4) = BYTE4(v17) & 1;
  *(v16 + 8) = v18;
  v19 = a4 + v12[14];
  sub_1C5BCA684();
  *v19 = 1;
  *(v19 + 8) = v22;
  sub_1C5B10A44(a1, a4);
  result = (*(*(a3 - 8) + 32))(a4 + v12[9], a2, a3);
  v21 = (a4 + v12[10]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

__n128 sub_1C5B11984@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198178);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  type metadata accessor for LockScreenMotionReplicatorLayer();
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  v9 = *v1;
  sub_1C5BC85C4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  (*(v4 + 32))(a1, v6, v3);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198180) + 36);
  v11 = v14[6];
  *(v10 + 64) = v14[5];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[7];
  v12 = v14[2];
  *v10 = v14[1];
  *(v10 + 16) = v12;
  result = v14[4];
  *(v10 + 32) = v14[3];
  *(v10 + 48) = result;
  return result;
}

id sub_1C5B11BFC(char *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor];
  *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor] = v4;
  if (v4 != v5)
  {
    [a1 setNeedsLayout];
  }

  v6 = [objc_opt_self() playerLayerWithPlayer_];
  v7 = *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent];
  *&a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent] = v6;
  v8 = v6;

  sub_1C5ACC720();
  if (*(a2 + 25))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(a2 + 24) & 1) == 0;
  if (*(a2 + 24))
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  a1[OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior] = v11;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  return [a1 setInstanceCount_];
}

uint64_t sub_1C5B11D60()
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

uint64_t sub_1C5B12070()
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

uint64_t sub_1C5B1268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v203 = a1;
  v216 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v215 = v2;
  v214 = v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v5 = v3;
  v195 = v3;
  v210 = sub_1C5BC8AB4();
  v202 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v198 = v140 - v6;
  v212 = v4;
  v7 = sub_1C5BC8AB4();
  v265 = *(v5 + 32);
  v266 = MEMORY[0x1E697E070];
  v8 = v265;
  v217 = v265;
  WitnessTable = swift_getWitnessTable();
  v194 = v7;
  v10 = WitnessTable;
  v192 = WitnessTable;
  v205 = sub_1C5BC92A4();
  v209 = sub_1C5BC8AB4();
  v201 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v193 = v140 - v11;
  v196 = sub_1C5BCB804();
  v264 = v10;
  v207 = MEMORY[0x1E6982090];
  v197 = swift_getWitnessTable();
  v189 = sub_1C5BC92A4();
  v208 = sub_1C5BC8AB4();
  v199 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208);
  v190 = v140 - v12;
  v211 = sub_1C5BC8AB4();
  v200 = *(v211 - 1);
  MEMORY[0x1EEE9AC00](v211);
  v191 = v140 - v13;
  v14 = sub_1C5BC8AB4();
  v15 = sub_1C5953670();
  v262 = v8;
  v263 = v15;
  v16 = swift_getWitnessTable();
  v258 = v14;
  v259 = v14;
  v260 = v16;
  v261 = v16;
  type metadata accessor for MotionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  v17 = sub_1C5BC8AB4();
  v18 = type metadata accessor for MaterialMotionContentObserver(255);
  v19 = swift_getWitnessTable();
  v206 = MEMORY[0x1E6980A18];
  v20 = sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  v256 = v19;
  v257 = v20;
  v254 = swift_getWitnessTable();
  v255 = MEMORY[0x1E697F568];
  v21 = swift_getWitnessTable();
  v188 = MEMORY[0x1E697EC18];
  v22 = sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  v252 = v21;
  v253 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  v258 = v17;
  v259 = v18;
  v260 = v23;
  v261 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  sub_1C5BC8AB4();
  v25 = sub_1C5BCB804();
  v258 = v17;
  v259 = v18;
  v260 = v23;
  v261 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  v250 = OpaqueTypeConformance2;
  v251 = v27;
  v249 = swift_getWitnessTable();
  v173 = v25;
  v174 = swift_getWitnessTable();
  v187 = sub_1C5BC8BE4();
  v28 = sub_1C5BC8AB4();
  v184 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v170 = v140 - v29;
  v30 = sub_1C5BC8AB4();
  v186 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v183 = v140 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980A0);
  v32 = sub_1C5BC8AB4();
  v180 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v179 = v140 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  v34 = sub_1C5BC8AB4();
  v176 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v172 = v140 - v35;
  v36 = sub_1C5BC8AB4();
  v175 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v171 = v140 - v37;
  v38 = sub_1C5BC8AB4();
  v185 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v181 = v140 - v39;
  v207 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  v169 = MEMORY[0x1E695BED8];
  v206 = sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  v247 = v217;
  v248 = MEMORY[0x1E697F568];
  v40 = swift_getWitnessTable();
  v140[1] = v40;
  v41 = swift_getWitnessTable();
  v245 = v40;
  v246 = v41;
  v42 = swift_getWitnessTable();
  v140[2] = v42;
  v43 = swift_getWitnessTable();
  v243 = v42;
  v244 = v43;
  v141 = swift_getWitnessTable();
  v241 = v141;
  v242 = MEMORY[0x1E697EBF8];
  v44 = swift_getWitnessTable();
  v142 = v44;
  v45 = swift_getWitnessTable();
  v239 = v44;
  v240 = v45;
  v187 = v28;
  v143 = swift_getWitnessTable();
  v237 = v143;
  v238 = MEMORY[0x1E697E5D8];
  v189 = v30;
  v46 = swift_getWitnessTable();
  v47 = sub_1C5924F54(&qword_1EC1980A8, &qword_1EC1980A0);
  v147 = v46;
  v235 = v46;
  v236 = v47;
  v182 = v32;
  v48 = swift_getWitnessTable();
  v49 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v145 = v48;
  v233 = v48;
  v234 = v49;
  v178 = v34;
  v144 = swift_getWitnessTable();
  v231 = v144;
  v232 = MEMORY[0x1E69802C0];
  v177 = v36;
  v146 = swift_getWitnessTable();
  v229 = v146;
  v230 = MEMORY[0x1E697E040];
  v50 = swift_getWitnessTable();
  v258 = v207;
  v259 = v38;
  v188 = v38;
  v260 = v206;
  v261 = v50;
  v148 = v50;
  v51 = sub_1C5BC8BB4();
  v157 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v155 = v140 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0);
  v54 = sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0);
  v55 = swift_getWitnessTable();
  v150 = v54;
  v151 = v53;
  v258 = v53;
  v259 = v51;
  v159 = v51;
  v260 = v54;
  v261 = v55;
  v149 = v55;
  v56 = sub_1C5BC8BB4();
  v162 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v205 = v140 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
  v59 = swift_getWitnessTable();
  v60 = sub_1C5AE9478();
  v258 = v56;
  v259 = v58;
  v260 = v59;
  v261 = v60;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v168 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v166 = v140 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008);
  v165 = v56;
  v258 = v56;
  v259 = v58;
  v153 = v59;
  v154 = v58;
  v260 = v59;
  v261 = v60;
  v152 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_1C5B1B970();
  v169 = OpaqueTypeMetadata2;
  v258 = OpaqueTypeMetadata2;
  v259 = v63;
  v163 = v63;
  v160 = v65;
  v161 = v64;
  v260 = v64;
  v261 = v65;
  v167 = swift_getOpaqueTypeMetadata2();
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v156 = v140 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v158 = v140 - v68;
  v69 = v213;
  v70 = v198;
  v71 = v212;
  v72 = v217;
  sub_1C5BC9D94();
  v224 = v71;
  v225 = v72;
  v73 = v72;
  v226 = v69;
  sub_1C5BCAA54();
  v74 = v193;
  v75 = v210;
  sub_1C5BC9CE4();
  (*(v202 + 8))(v70, v75);
  v221 = v71;
  v222 = v73;
  v223 = v69;
  sub_1C5BCAA54();
  v76 = v190;
  v77 = v209;
  sub_1C5BC9CE4();
  (*(v201 + 8))(v74, v77);
  sub_1C5BCAA34();
  v78 = v208;
  v79 = v191;
  v80 = v76;
  v81 = v170;
  sub_1C5BCA244();
  (*(v199 + 8))(v80, v78);
  sub_1C5BCAA34();
  v82 = v71;
  v218 = v71;
  v219 = v73;
  v220 = v69;
  v83 = v211;
  sub_1C5BCA2C4();
  (*(v200 + 8))(v79, v83);
  sub_1C5BC98A4();
  v84 = v69;
  v85 = v183;
  v86 = v187;
  sub_1C5BCA2F4();
  (*(v184 + 8))(v81, v86);
  sub_1C5BCAA54();
  sub_1C5B1BA10();
  v87 = v179;
  v88 = v189;
  sub_1C5BCA2C4();
  (*(v186 + 8))(v85, v88);
  v89 = v172;
  v90 = v182;
  sub_1C5BCA2A4();
  (*(v180 + 8))(v87, v90);
  v91 = v171;
  v92 = v178;
  sub_1C5BC9FC4();
  (*(v176 + 8))(v89, v92);
  sub_1C5BCAA54();
  v93 = v181;
  v94 = v177;
  sub_1C5BCA234();
  (*(v175 + 8))(v91, v94);
  v95 = v203;
  v96 = v84;
  v258 = sub_1C5B11D60();
  v97 = v216;
  v98 = *(v216 + 16);
  v209 = v216 + 16;
  v208 = v98;
  v99 = v214;
  (v98)(v214, v84, v95);
  v210 = *(v97 + 80);
  v100 = (v210 + 32) & ~v210;
  v101 = swift_allocObject();
  v102 = v217;
  *(v101 + 16) = v82;
  *(v101 + 24) = v102;
  v103 = *(v97 + 32);
  v216 = v97 + 32;
  v211 = v103;
  (v103)(v101 + v100, v99, v95);
  v104 = v155;
  v105 = v188;
  sub_1C5BCA3D4();

  (*(v185 + 8))(v93, v105);
  v258 = sub_1C5B12070();
  v106 = v214;
  v107 = v208;
  (v208)(v214, v96, v95);
  v108 = swift_allocObject();
  v109 = v217;
  *(v108 + 16) = v212;
  *(v108 + 24) = v109;
  (v211)(v108 + v100, v106, v95);
  v110 = v159;
  sub_1C5BCA3D4();

  (*(v157 + 8))(v104, v110);
  v111 = v213;
  v112 = v213 + *(v95 + 52);
  v113 = *v112;
  v114 = *(v112 + 8);
  v115 = *(v112 + 16);
  v258 = v113;
  LOBYTE(v259) = v114;
  v260 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  sub_1C5BCA694();
  v258 = v227;
  LOBYTE(v259) = v228;
  v116 = v214;
  v107(v214, v111, v95);
  v117 = swift_allocObject();
  v118 = v212;
  v119 = v217;
  *(v117 + 16) = v212;
  *(v117 + 24) = v119;
  (v211)(v117 + v100, v116, v95);
  v120 = v165;
  v121 = v166;
  v122 = v205;
  sub_1C5BCA344();

  (*(v162 + 8))(v122, v120);
  v123 = v213;
  v124 = (v213 + *(v95 + 56));
  v125 = *v124;
  v126 = *(v124 + 4);
  v127 = *(v124 + 1);
  LODWORD(v258) = v125;
  BYTE4(v258) = v126;
  v259 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1980D0);
  sub_1C5BCA694();
  LODWORD(v258) = v227;
  BYTE4(v258) = BYTE4(v227);
  (v208)(v116, v123, v95);
  v128 = swift_allocObject();
  v129 = v217;
  *(v128 + 16) = v118;
  *(v128 + 24) = v129;
  (v211)(v128 + v100, v116, v95);
  v130 = v156;
  v131 = v169;
  v132 = v163;
  v134 = v160;
  v133 = v161;
  sub_1C5BCA344();

  (*(v168 + 8))(v121, v131);
  v258 = v131;
  v259 = v132;
  v260 = v133;
  v261 = v134;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = v158;
  v137 = v167;
  sub_1C593EDC0(v130, v167, v135);
  v138 = *(v164 + 8);
  v138(v130, v137);
  sub_1C593EDC0(v136, v137, v135);
  return (v138)(v136, v137);
}

uint64_t sub_1C5B13E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  type metadata accessor for TallAssetArtworkBackground();
  sub_1C5BCABB4();
  MEMORY[0x1C694E080](a2, a3, 1.0, -2.0, v12, v13);
  v17[0] = a3;
  v17[1] = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v5, WitnessTable);
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_1C593EDC0(v11, v5, WitnessTable);
  return (v15)(v11, v5);
}

uint64_t sub_1C5B13FFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = sub_1C5BCB804();
  v26[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v27 = a2;
  type metadata accessor for TallAssetArtworkBackground();
  if (sub_1C5BC8294())
  {
    sub_1C5BCABC4();
    v18 = v27;
    MEMORY[0x1C694E080](a1, v27, 1.0, -2.0, v19, v20);
    v28 = v18;
    v29 = MEMORY[0x1E697E070];
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v8, v5, WitnessTable);
    v22 = *(v6 + 8);
    v22(v8, v5);
    sub_1C593EDC0(v11, v5, WitnessTable);
    v22(v11, v5);
    (*(v6 + 32))(v14, v8, v5);
    (*(v6 + 56))(v14, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v14, 1, 1, v5);
    v33 = v27;
    v34 = MEMORY[0x1E697E070];
    swift_getWitnessTable();
  }

  sub_1C5941600(v14, v17);
  v23 = *(v26[0] + 8);
  v23(v14, v12);
  v31 = v27;
  v32 = MEMORY[0x1E697E070];
  v30 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(v17, v12, v24);
  return (v23)(v17, v12);
}