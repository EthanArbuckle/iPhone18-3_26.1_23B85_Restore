uint64_t sub_24B076298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-1] - v5;
  v7 = v0[1];
  v12 = *v0;
  v13[0] = v7;
  *(v13 + 9) = *(v0 + 25);
  *v6 = sub_24B2D3DF4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AE0);
  sub_24B075830(&v12, &v6[*(v8 + 44)]);
  v9 = *MEMORY[0x277CDF9A8];
  v10 = sub_24B2D3764();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_24B0769FC(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B039184(&qword_27EFC8AF0, &qword_27EFC8AD8);
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    sub_24B2D4774();
    sub_24AFF8258(v3, &qword_27EFC8AD0);
    return sub_24AFF8258(v6, &qword_27EFC8AD8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B076520()
{
  sub_24B076550();
  result = sub_24B2D3CE4();
  qword_27EFE44C8 = result;
  return result;
}

unint64_t sub_24B076550()
{
  result = qword_27EFC8AC8;
  if (!qword_27EFC8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AC8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B0765C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24B076610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B076688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B076708()
{
  result = qword_27EFC8B30;
  if (!qword_27EFC8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B20);
    sub_24B039184(&qword_27EFC8B38, &qword_27EFC8B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B30);
  }

  return result;
}

unint64_t sub_24B0767C0()
{
  result = qword_27EFC8B48;
  if (!qword_27EFC8B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B48);
  }

  return result;
}

unint64_t sub_24B076874()
{
  result = qword_27EFC8B58;
  if (!qword_27EFC8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B58);
  }

  return result;
}

uint64_t sub_24B0768C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B076940()
{
  result = qword_27EFC8B90;
  if (!qword_27EFC8B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B80);
    sub_24B0769FC(&qword_27EFC8B98, type metadata accessor for PlatterWithIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B90);
  }

  return result;
}

uint64_t sub_24B0769FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B076A44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B076A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B076AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B076B70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v47 = a7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v59);
  v58 = &v42 - v9;
  v10 = sub_24B076874();
  v68 = a5;
  v69 = &type metadata for CustomLabelAndIconLabelStyle;
  v50 = a5;
  v70 = a6;
  v71 = v10;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B2D5144();
  v53 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v11 = sub_24B2D4DA4();
  WitnessTable = swift_getWitnessTable();
  v68 = v11;
  v69 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  v68 = a5;
  v69 = &type metadata for CustomLabelAndIconLabelStyle;
  v70 = a6;
  v71 = v10;
  swift_getOpaqueTypeConformance2();
  v13 = sub_24B2D4DA4();
  v14 = swift_getWitnessTable();
  v68 = v13;
  v69 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  sub_24B2D4DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC93C0);
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  sub_24B2D37B4();
  sub_24B2D3EE4();
  swift_getTupleTypeMetadata3();
  v15 = sub_24B2D5144();
  v16 = swift_getWitnessTable();
  v51 = v15;
  v49 = v16;
  v17 = sub_24B2D3484();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = sub_24B2D37B4();
  v46 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v53 = &v42 - v21;
  v48 = swift_getWitnessTable();
  v66 = v48;
  v67 = MEMORY[0x277CDFC60];
  v22 = swift_getWitnessTable();
  v23 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  v68 = v20;
  v69 = v59;
  v44 = v22;
  v70 = v22;
  v71 = v23;
  v43 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  v25 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v42 - v28;
  v60 = v50;
  v61 = a6;
  v62 = v54;
  v63 = v55 & 0x101;
  v64 = v56;
  v65 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DEAD0;
  LOBYTE(a6) = sub_24B2D42B4();
  *(inited + 32) = a6;
  v31 = sub_24B2D42D4();
  *(inited + 33) = v31;
  sub_24B2D42C4();
  sub_24B2D42C4();
  if (sub_24B2D42C4() != a6)
  {
    sub_24B2D42C4();
  }

  sub_24B2D42C4();
  if (sub_24B2D42C4() != v31)
  {
    sub_24B2D42C4();
  }

  v32 = v53;
  sub_24B2D3474();
  sub_24B2D5054();
  sub_24B2D4924();
  (*(v52 + 8))(v19, v17);
  v33 = *MEMORY[0x277CDF988];
  v34 = sub_24B2D3764();
  v35 = v58;
  (*(*(v34 - 8) + 104))(v58, v33, v34);
  sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v37 = v59;
    v38 = v44;
    v39 = v43;
    sub_24B2D4774();
    sub_24B0792D8(v35);
    (*(v46 + 8))(v32, v20);
    v68 = v20;
    v69 = v37;
    v70 = v38;
    v71 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_24B091A64(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v41 = *(v45 + 8);
    v41(v27, OpaqueTypeMetadata2);
    sub_24B091A64(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    return (v41)(v29, OpaqueTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B0773FC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v186 = a4;
  v185 = a3;
  v170 = a1;
  v165 = a7;
  v177 = a2;
  LODWORD(v172) = a2 & 0x100;
  v9 = sub_24B076874();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v184 = a5;
  v209 = a5;
  v210 = &type metadata for CustomLabelAndIconLabelStyle;
  v211 = a6;
  v212 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_24B2D4DA4();
  v13 = sub_24B2D37B4();
  v140 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v137 = (&v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v136 = &v132 - v16;
  v178 = OpaqueTypeConformance2;
  v17 = sub_24B2D4DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC93C0);
  v18 = sub_24B2D37B4();
  v19 = sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  v20 = sub_24B2D5144();
  v145 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v144 = &v132 - v22;
  v158 = v17;
  v167 = *(v17 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v135 = &v132 - v24;
  v143 = v18;
  v138 = *(v18 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v134 = &v132 - v26;
  v146 = v19;
  v139 = *(v19 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v142 = (&v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v141 = &v132 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v169 = &v132 - v32;
  MEMORY[0x28223BE20](v31);
  v168 = &v132 - v33;
  v163 = v34;
  v164 = v13;
  v162 = sub_24B2D3EE4();
  v161 = *(v162 - 8);
  v35 = MEMORY[0x28223BE20](v162);
  v160 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v159 = &v132 - v38;
  v152 = *(v12 - 8);
  MEMORY[0x28223BE20](v37);
  v151 = &v132 - v39;
  WitnessTable = swift_getWitnessTable();
  v156 = v12;
  v209 = v12;
  v210 = WitnessTable;
  v182 = WitnessTable;
  v41 = swift_getOpaqueTypeMetadata2();
  v149 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v148 = &v132 - v42;
  v150 = v43;
  v176 = sub_24B2D37B4();
  v174 = *(v176 - 8);
  v44 = MEMORY[0x28223BE20](v176);
  v183 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v175 = &v132 - v46;
  v179 = OpaqueTypeMetadata2;
  swift_getTupleTypeMetadata3();
  v47 = sub_24B2D5144();
  v48 = swift_getWitnessTable();
  v155 = v47;
  v153 = v48;
  v49 = sub_24B2D4DA4();
  v154 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v132 - v50;
  v52 = swift_getWitnessTable();
  v209 = v49;
  v210 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v147 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v132 - v54;
  v173 = sub_24B2D37B4();
  v171 = *(v173 - 8);
  v56 = MEMORY[0x28223BE20](v173);
  v181 = &v132 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v180 = &v132 - v58;
  sub_24B2D5694();
  v157 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v132 - 6) = v184;
  *(&v132 - 5) = a6;
  v60 = a6;
  v166 = a6;
  v61 = v170;
  *(&v132 - 4) = v170;
  v62 = v177 & 1;
  *(&v132 - 24) = v62;
  v177 = v172 >> 8;
  *(&v132 - 23) = BYTE1(v172);
  v63 = v186;
  *(&v132 - 2) = v185;
  *(&v132 - 1) = v63;
  sub_24B2D3CD4();
  sub_24B2D4D94();
  sub_24B2D4A04();
  v154[1](v51, v49);
  v209 = v49;
  v210 = v52;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v181;
  sub_24B2D49E4();
  (*(v147 + 8))(v55, v53);
  v207 = v64;
  v208 = MEMORY[0x277CDFC48];
  v147 = MEMORY[0x277CDFAD8];
  v66 = v173;
  v153 = swift_getWitnessTable();
  sub_24B091A64(v65, v66, v153);
  v67 = *(v171 + 8);
  v155 = v171 + 8;
  v154 = v67;
  v68 = (v67)(v65, v66);
  MEMORY[0x28223BE20](v68);
  *(&v132 - 6) = v184;
  *(&v132 - 5) = v60;
  *(&v132 - 4) = v61;
  *(&v132 - 24) = v62;
  *(&v132 - 23) = v177;
  v69 = v186;
  *(&v132 - 2) = v185;
  *(&v132 - 1) = v69;
  sub_24B2D3CD4();
  v70 = v151;
  sub_24B2D4D94();
  v71 = v148;
  v72 = v156;
  v73 = v182;
  sub_24B2D4A04();
  v133 = *(v152 + 8);
  v133(v70, v72);
  v209 = v72;
  v210 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v183;
  v76 = v150;
  sub_24B2D49E4();
  (*(v149 + 8))(v71, v76);
  v205 = v74;
  v206 = MEMORY[0x277CDFC48];
  v77 = v176;
  v149 = swift_getWitnessTable();
  sub_24B091A64(v75, v77, v149);
  v78 = *(v174 + 8);
  v152 = v174 + 8;
  v150 = v78;
  v79 = (v78)(v75, v77);
  MEMORY[0x28223BE20](v79);
  v80 = v185;
  *(&v132 - 6) = v184;
  *(&v132 - 5) = v166;
  *(&v132 - 4) = v61;
  *(&v132 - 24) = v62;
  *(&v132 - 23) = v177;
  *(&v132 - 2) = v80;
  *(&v132 - 1) = v186;
  if (v172)
  {
    sub_24B2D3DF4();
    v89 = v135;
    sub_24B2D4DE4();
    LODWORD(v151) = v62;
    v90 = v158;
    v91 = swift_getWitnessTable();
    v92 = v134;
    v93 = v91;
    v148 = v91;
    sub_24B2D4A14();
    v94 = *(v167 + 8);
    v167 += 8;
    v156 = v94;
    v94(v89, v90);
    v95 = sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0);
    v191 = v93;
    v192 = v95;
    v172 = MEMORY[0x277CDFAD8];
    v96 = v143;
    v97 = swift_getWitnessTable();
    v98 = v169;
    v99 = v97;
    v140 = v97;
    sub_24B2D49E4();
    v147 = *(v138 + 8);
    (v147)(v92, v96);
    v189 = v99;
    v190 = MEMORY[0x277CDFC48];
    v100 = v146;
    v138 = swift_getWitnessTable();
    v101 = v98;
    sub_24B091A64(v98, v100, v138);
    v102 = v139;
    v137 = *(v139 + 8);
    v103 = v137(v101, v100);
    v136 = &v132;
    MEMORY[0x28223BE20](v103);
    v104 = v166;
    *(&v132 - 6) = v184;
    *(&v132 - 5) = v104;
    *(&v132 - 4) = v170;
    *(&v132 - 24) = v151;
    *(&v132 - 23) = v177;
    v105 = v186;
    *(&v132 - 2) = v185;
    *(&v132 - 1) = v105;
    sub_24B2D3DF4();
    sub_24B2D4DE4();
    v106 = v158;
    sub_24B2D4A14();
    v156(v89, v106);
    v107 = v141;
    sub_24B2D49E4();
    (v147)(v92, v96);
    v108 = v169;
    v109 = v138;
    sub_24B091A64(v107, v100, v138);
    v110 = v137;
    v137(v107, v100);
    v111 = *(v102 + 16);
    v111(v107, v168, v100);
    v209 = v107;
    v112 = v142;
    v111(v142, v108, v100);
    v210 = v112;
    v200 = v100;
    v201 = v100;
    v197 = v109;
    v198 = v109;
    v113 = v144;
    sub_24B080D98(&v209, 2uLL, &v200);
    v110(v112, v100);
    v110(v107, v100);
    v114 = v163;
    swift_getWitnessTable();
    v187 = v182;
    v188 = MEMORY[0x277CDFC48];
    swift_getWitnessTable();
    v115 = v159;
    sub_24B088D90(v113, v114);
    (*(v145 + 8))(v113, v114);
    v110(v169, v100);
    v116 = v100;
    v88 = v115;
    v110(v168, v116);
  }

  else
  {
    sub_24B2D3CD4();
    sub_24B2D4D94();
    v81 = v137;
    v82 = v182;
    sub_24B2D49E4();
    v133(v70, v72);
    v203 = v82;
    v204 = MEMORY[0x277CDFC48];
    v83 = v164;
    v84 = swift_getWitnessTable();
    v85 = v136;
    sub_24B091A64(v81, v83, v84);
    v86 = *(v140 + 8);
    v86(v81, v83);
    sub_24B091A64(v85, v83, v84);
    v87 = v163;
    swift_getWitnessTable();
    v88 = v159;
    sub_24B088E88(v81, v87, v83);
    v86(v81, v83);
    v86(v85, v83);
  }

  v117 = v181;
  v118 = v173;
  (*(v171 + 16))(v181, v180, v173);
  v209 = v117;
  v119 = v183;
  v120 = v175;
  v121 = v176;
  (*(v174 + 16))(v183, v175, v176);
  v210 = v119;
  v122 = v161;
  v123 = v160;
  v124 = v162;
  (*(v161 + 16))(v160, v88, v162);
  v211 = v123;
  v200 = v118;
  v201 = v121;
  v202 = v124;
  v197 = v153;
  v198 = v149;
  v125 = swift_getWitnessTable();
  v195 = v182;
  v196 = MEMORY[0x277CDFC48];
  v126 = swift_getWitnessTable();
  v193 = v125;
  v194 = v126;
  v199 = swift_getWitnessTable();
  sub_24B080D98(&v209, 3uLL, &v200);
  v127 = *(v122 + 8);
  v127(v88, v124);
  v128 = v120;
  v129 = v150;
  v150(v128, v121);
  v130 = v154;
  (v154)(v180, v118);
  v127(v123, v124);
  v129(v183, v121);
  (v130)(v181, v118);
}

uint64_t sub_24B078AFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a4;
  v20[3] = a2;
  v21 = a1;
  v24 = a7;
  v9 = sub_24B076874();
  v33 = a5;
  v34 = &type metadata for CustomLabelAndIconLabelStyle;
  v35 = a6;
  v36 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B078DB0(v21, v22, a5, a6, v14);
  v33 = a5;
  v34 = &type metadata for CustomLabelAndIconLabelStyle;
  v35 = a6;
  v36 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v11 + 8);
  v18(v14, OpaqueTypeMetadata2);
  v31 = 0;
  v32 = 1;
  v33 = &v31;
  (*(v11 + 16))(v14, v16, OpaqueTypeMetadata2);
  v29 = 0;
  v30 = 1;
  v34 = v14;
  v35 = &v29;
  v28[0] = MEMORY[0x277CE1180];
  v28[1] = OpaqueTypeMetadata2;
  v28[2] = MEMORY[0x277CE1180];
  v25 = MEMORY[0x277CE1170];
  v26 = OpaqueTypeConformance2;
  v27 = MEMORY[0x277CE1170];
  sub_24B080D98(&v33, 3uLL, v28);
  v18(v16, OpaqueTypeMetadata2);
  v18(v14, OpaqueTypeMetadata2);
}

uint64_t sub_24B078DB0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a5;
  v22 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B076874();
  v25 = a3;
  v26 = &type metadata for CustomLabelAndIconLabelStyle;
  v27 = a4;
  v28 = v9;
  v21 = MEMORY[0x277CDE608];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  v23(v15);
  sub_24B2D46C4();
  (*(v22 + 8))(v8, a3);
  v25 = a3;
  v26 = &type metadata for CustomLabelAndIconLabelStyle;
  v27 = a4;
  v28 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v19 = *(v11 + 8);
  v19(v14, OpaqueTypeMetadata2);
  sub_24B091A64(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v19)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B078FF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21[1] = a7;
  v24 = a3;
  v25 = a4;
  v22 = a2;
  v23 = a1;
  v26 = a8;
  v10 = sub_24B076874();
  v27 = a5;
  v28 = &type metadata for CustomLabelAndIconLabelStyle;
  v29 = a6;
  v30 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B078DB0(v23, v24, a5, a6, v15);
  v27 = a5;
  v28 = &type metadata for CustomLabelAndIconLabelStyle;
  v29 = a6;
  v30 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v19 = *(v12 + 8);
  v19(v15, OpaqueTypeMetadata2);
  sub_24B091A64(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v19(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B079234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B076B70(*v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24), a2);
}

unint64_t sub_24B079280()
{
  result = qword_27EFC8AE8;
  if (!qword_27EFC8AE8)
  {
    sub_24B2D3764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AE8);
  }

  return result;
}

uint64_t sub_24B0792D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B079358(uint64_t (*a1)(void, void, void, void, void, void))
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 32), v2 | *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_24B079398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B078FF8(*(v2 + 32), v3 | *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24), a1, a2);
}

uint64_t sub_24B0793F8()
{
  sub_24B07A6C4();
  sub_24B2D3C74();
  return v1;
}

uint64_t sub_24B079434@<X0>(_BYTE *a1@<X8>)
{
  sub_24B07A6C4();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t sub_24B0794D0(uint64_t a1)
{
  v3 = sub_24B2D3C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_24B079624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v32 = *(a1 + 24);
  sub_24B2D37B4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  v3 = sub_24B2D5144();
  v30[0] = swift_getWitnessTable();
  v30[1] = v3;
  v4 = sub_24B2D4E14();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v31 = v7;
  v8 = sub_24B2D37B4();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v38 = v11;
  v35 = sub_24B2D37B4();
  v39 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v34 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = v30 - v14;
  v15 = sub_24B2D3764();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B163A78(v18);
  sub_24B2D3754();
  v19 = (*(v16 + 8))(v18, v15);
  MEMORY[0x28223BE20](v19);
  sub_24B2D5064();
  sub_24B2D4E04();
  sub_24B0794D0(a1);
  sub_24B2D5064();
  v20 = v31;
  WitnessTable = swift_getWitnessTable();
  sub_24B2D4914();
  (*(v33 + 8))(v6, v20);
  sub_24B0794D0(a1);
  sub_24B2D5064();
  v43 = WitnessTable;
  v44 = MEMORY[0x277CDF678];
  v28 = v38;
  v29 = swift_getWitnessTable();
  v22 = v34;
  sub_24B2D4924();
  (*(v37 + 8))(v10, v28);
  v41 = v29;
  v42 = MEMORY[0x277CDFC60];
  v23 = v35;
  v24 = swift_getWitnessTable();
  v25 = v36;
  sub_24B091A64(v22, v23, v24);
  v26 = *(v39 + 8);
  v26(v22, v23);
  sub_24B091A64(v25, v23, v24);
  return (v26)(v25, v23);
}

uint64_t sub_24B079D34@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v63 = a4;
  v71 = a6;
  v62 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v9;
  v10 = sub_24B2D37B4();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - v11;
  v66 = v12;
  v67 = sub_24B2D37B4();
  v69 = *(v67 - 8);
  v13 = MEMORY[0x28223BE20](v67);
  v70 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v52 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v52 - v18;
  v19 = *(a3 - 1);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B2D37B4();
  v72 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  sub_24B2D5694();
  v60 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1[2](isCurrentExecutor);
  sub_24B2D5064();
  v29 = v57;
  sub_24B2D4924();
  (*(v19 + 8))(v21, a3);
  v80 = v29;
  v81 = MEMORY[0x277CDFC60];
  v52 = MEMORY[0x277CDFAD8];
  v30 = v22;
  WitnessTable = swift_getWitnessTable();
  v53 = v27;
  sub_24B091A64(v25, v22, WitnessTable);
  v31 = *(v72 + 8);
  v55 = v72 + 8;
  v56 = v31;
  v32 = (v31)(v25, v22);
  v33 = v59;
  (*a1)(v32);
  v34 = v58;
  v76 = v58;
  v77 = a3;
  v35 = v63;
  v78 = v63;
  v79 = v29;
  v36 = type metadata accessor for BubbleMessageTemplate();
  sub_24B0794D0(v36);
  sub_24B2D5064();
  v37 = v61;
  sub_24B2D4914();
  (*(v62 + 8))(v33, v34);
  sub_24B0794D0(v36);
  sub_24B2D5064();
  v75[4] = v35;
  v75[5] = MEMORY[0x277CDF678];
  v50 = v66;
  v51 = swift_getWitnessTable();
  v38 = v64;
  sub_24B2D4924();
  (*(v65 + 8))(v37, v50);
  v75[2] = v51;
  v75[3] = MEMORY[0x277CDFC60];
  v39 = v67;
  v40 = swift_getWitnessTable();
  v41 = v68;
  sub_24B091A64(v38, v39, v40);
  v42 = v69;
  v43 = *(v69 + 8);
  v43(v38, v39);
  v44 = v25;
  v45 = v25;
  v46 = v53;
  (*(v72 + 16))(v45, v53, v30);
  v76 = v44;
  v47 = v70;
  (*(v42 + 16))(v70, v41, v39);
  v77 = v47;
  v75[0] = v30;
  v75[1] = v39;
  v73 = WitnessTable;
  v74 = v40;
  sub_24B080D98(&v76, 2uLL, v75);
  v43(v41, v39);
  v48 = v56;
  v56(v46, v30);
  v43(v47, v39);
  v48(v44, v30);
}

uint64_t sub_24B07A4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BubbleMessageTemplate();
  v9 = *(v8 + 60);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + *(v8 + 64);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = nullsub_1;
  *(a4 + 24) = 0;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_24B07A5FC(uint64_t a1)
{
  v2 = sub_24B2D3764();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B2D3A74();
}

unint64_t sub_24B07A6C4()
{
  result = qword_27EFC8C40;
  if (!qword_27EFC8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8C40);
  }

  return result;
}

void sub_24B07A730()
{
  sub_24B07A804();
  if (v0 <= 0x3F)
  {
    sub_24B07A854();
    if (v1 <= 0x3F)
    {
      sub_24B07A8AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24B07A804()
{
  result = qword_27EFC8CD0;
  if (!qword_27EFC8CD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EFC8CD0);
  }

  return result;
}

void sub_24B07A854()
{
  if (!qword_27EFC8CD8)
  {
    sub_24B2D3764();
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8CD8);
    }
  }
}

void sub_24B07A8AC()
{
  if (!qword_27EFC8CE0)
  {
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8CE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for BubbleMessageTemplateContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for BubbleMessageTemplateContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B07AAB0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_24B07AAE0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = (a2 & 1 | ((a2 >> 1) << 6)) + 64;
  }

  return result;
}

__n128 sub_24B07AB50@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24B2E2040;
  sub_24B2D4AF4();
  *(v2 + 32) = sub_24B2D4F94();
  *(v2 + 40) = v3;
  sub_24B2D4A84();
  *(v2 + 48) = sub_24B2D4F94();
  *(v2 + 56) = v4;
  sub_24B2D4AF4();
  *(v2 + 64) = sub_24B2D4F94();
  *(v2 + 72) = v5;
  sub_24B2D5184();
  sub_24B2D4FA4();
  sub_24B2D3724();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF0) + 36);
  sub_24B2D4FE4();
  v7 = sub_24B2D42F4();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF8) + 36)) = v7;
  *(a1 + 32) = v11;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

unint64_t sub_24B07AC88()
{
  result = qword_27EFC8D00;
  if (!qword_27EFC8D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8CF0);
    sub_24B07AD14();
    sub_24B07AD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D00);
  }

  return result;
}

unint64_t sub_24B07AD14()
{
  result = qword_27EFC8D08;
  if (!qword_27EFC8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D08);
  }

  return result;
}

unint64_t sub_24B07AD68()
{
  result = qword_27EFC8D10;
  if (!qword_27EFC8D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D10);
  }

  return result;
}

void sub_24B07AE7C()
{
  sub_24B07AF68();
  if (v0 <= 0x3F)
  {
    sub_24B2D50F4();
    if (v1 <= 0x3F)
    {
      sub_24B07AFCC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CustomControlStyle.BackgroundSize(319);
        if (v3 <= 0x3F)
        {
          sub_24B07B04C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24B07AF68()
{
  result = qword_27EFC8D38;
  if (!qword_27EFC8D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EFC8D38);
  }

  return result;
}

void sub_24B07AFCC()
{
  if (!qword_27EFC8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9390);
    v0 = sub_24B2D1A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8D40);
    }
  }
}

void sub_24B07B04C()
{
  if (!qword_27EFC8D50)
  {
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8D50);
    }
  }
}

uint64_t getEnumTagSinglePayload for CustomControlStyle.BorderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for CustomControlStyle.BorderStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B07B208(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B07B224(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_24B07B24C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_24B2D3364();
    if (v1 <= 0x3F)
    {
      sub_24B07B2D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B07B2D4()
{
  if (!qword_27EFC8D68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFC8D68);
    }
  }
}

uint64_t sub_24B07B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E28);
  MEMORY[0x28223BE20](v60);
  v7 = &v53 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E30);
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E38);
  MEMORY[0x28223BE20](v57);
  v59 = &v53 - v11;
  v55 = sub_24B2D4174();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E40);
  MEMORY[0x28223BE20](v56);
  v15 = &v53 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E48);
  v16 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v18 = &v53 - v17;
  sub_24B07F310(a1, v71);
  if (v72)
  {
    v53 = *(&v71[0] + 1);
    v19 = *&v71[0];
    v20 = sub_24B2D4AE4();
    KeyPath = swift_getKeyPath();
    sub_24B008890(v3, v7, &qword_27EFC8DF0);
    v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E58) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v19(&v67, a2);
    v23 = __swift_project_boxed_opaque_existential_1(&v67, v70);
    MEMORY[0x28223BE20](v23);
    (*(v25 + 16))(&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_24B2D4E24();
    v27 = sub_24B2D5064();
    v28 = v10;
    v29 = v60;
    v30 = &v7[*(v60 + 36)];
    *v30 = v26;
    v30[1] = v27;
    v30[2] = v31;
    __swift_destroy_boxed_opaque_existential_0(&v67);
    sub_24B2D4164();
    v32 = sub_24B07F380();
    v33 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    v34 = v55;
    sub_24B2D46D4();
    (*(v54 + 8))(v13, v34);
    sub_24AFF8258(v7, &qword_27EFC8E28);
    v35 = v28;
    v36 = v28;
    v37 = v62;
    (*(v8 + 16))(v59, v35, v62);
    swift_storeEnumTagMultiPayload();
    v38 = sub_24B07F718();
    v67 = v56;
    v68 = v34;
    v69 = v38;
    v70 = v33;
    swift_getOpaqueTypeConformance2();
    v67 = v29;
    v68 = v34;
    v69 = v32;
    v70 = v33;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();

    return (*(v8 + 8))(v36, v37);
  }

  else
  {
    sub_24B07F7D0(v71, &v67);
    v40 = __swift_project_boxed_opaque_existential_1(&v67, v70);
    MEMORY[0x28223BE20](v40);
    (*(v42 + 16))(&v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = sub_24B2D34A4();
    v44 = swift_getKeyPath();
    v63 = v43;
    v45 = sub_24B2D34A4();
    sub_24B008890(v3, v15, &qword_27EFC8DF0);
    v46 = v56;
    v47 = &v15[*(v56 + 36)];
    *v47 = v44;
    v47[1] = v45;
    sub_24B2D4164();
    v48 = sub_24B07F718();
    v49 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    v50 = v55;
    sub_24B2D46D4();
    (*(v54 + 8))(v13, v50);
    sub_24AFF8258(v15, &qword_27EFC8E40);
    v51 = v58;
    (*(v16 + 16))(v59, v18, v58);
    swift_storeEnumTagMultiPayload();
    v63 = v46;
    v64 = v50;
    v65 = v48;
    v66 = v49;
    swift_getOpaqueTypeConformance2();
    v52 = sub_24B07F380();
    v63 = v60;
    v64 = v50;
    v65 = v52;
    v66 = v49;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    (*(v16 + 8))(v18, v51);
    return __swift_destroy_boxed_opaque_existential_0(&v67);
  }
}

uint64_t sub_24B07BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FD0);
  MEMORY[0x28223BE20](v60);
  v7 = &v53 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FD8);
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FE0);
  MEMORY[0x28223BE20](v57);
  v59 = &v53 - v11;
  v55 = sub_24B2D4174();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FE8);
  MEMORY[0x28223BE20](v56);
  v15 = &v53 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FF0);
  v16 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v18 = &v53 - v17;
  sub_24B07F310(a1, v71);
  if (v72)
  {
    v53 = *(&v71[0] + 1);
    v19 = *&v71[0];
    v20 = sub_24B2D4AE4();
    KeyPath = swift_getKeyPath();
    sub_24B008890(v3, v7, &qword_27EFC8FA8);
    v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FF8) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v19(&v67, a2);
    v23 = __swift_project_boxed_opaque_existential_1(&v67, v70);
    MEMORY[0x28223BE20](v23);
    (*(v25 + 16))(&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = sub_24B2D4E24();
    v27 = sub_24B2D5064();
    v28 = v10;
    v29 = v60;
    v30 = &v7[*(v60 + 36)];
    *v30 = v26;
    v30[1] = v27;
    v30[2] = v31;
    __swift_destroy_boxed_opaque_existential_0(&v67);
    sub_24B2D4164();
    v32 = sub_24B0801DC();
    v33 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    v34 = v55;
    sub_24B2D46D4();
    (*(v54 + 8))(v13, v34);
    sub_24AFF8258(v7, &qword_27EFC8FD0);
    v35 = v28;
    v36 = v28;
    v37 = v62;
    (*(v8 + 16))(v59, v35, v62);
    swift_storeEnumTagMultiPayload();
    v38 = sub_24B0805B8();
    v67 = v56;
    v68 = v34;
    v69 = v38;
    v70 = v33;
    swift_getOpaqueTypeConformance2();
    v67 = v29;
    v68 = v34;
    v69 = v32;
    v70 = v33;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();

    return (*(v8 + 8))(v36, v37);
  }

  else
  {
    sub_24B07F7D0(v71, &v67);
    v40 = __swift_project_boxed_opaque_existential_1(&v67, v70);
    MEMORY[0x28223BE20](v40);
    (*(v42 + 16))(&v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = sub_24B2D34A4();
    v44 = swift_getKeyPath();
    v63 = v43;
    v45 = sub_24B2D34A4();
    sub_24B008890(v3, v15, &qword_27EFC8FA8);
    v46 = v56;
    v47 = &v15[*(v56 + 36)];
    *v47 = v44;
    v47[1] = v45;
    sub_24B2D4164();
    v48 = sub_24B0805B8();
    v49 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    v50 = v55;
    sub_24B2D46D4();
    (*(v54 + 8))(v13, v50);
    sub_24AFF8258(v15, &qword_27EFC8FE8);
    v51 = v58;
    (*(v16 + 16))(v59, v18, v58);
    swift_storeEnumTagMultiPayload();
    v63 = v46;
    v64 = v50;
    v65 = v48;
    v66 = v49;
    swift_getOpaqueTypeConformance2();
    v52 = sub_24B0801DC();
    v63 = v60;
    v64 = v50;
    v65 = v52;
    v66 = v49;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    (*(v16 + 8))(v18, v51);
    return __swift_destroy_boxed_opaque_existential_0(&v67);
  }
}

__n128 sub_24B07C3B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v85 = a2;
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  v3 = MEMORY[0x28223BE20](v2);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v79 = &v73 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v11 = sub_24B2D3694();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DD0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DC0);
  MEMORY[0x28223BE20](v75);
  v77 = &v73 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DB0);
  MEMORY[0x28223BE20](v76);
  v87 = &v73 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DA0);
  MEMORY[0x28223BE20](v80);
  v83 = &v73 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D90);
  MEMORY[0x28223BE20](v82);
  v84 = &v73 - v22;
  sub_24B2D3674();
  sub_24B2D4254();
  sub_24B080194(&qword_27EFC8DD8, MEMORY[0x277CDE500]);
  sub_24B2D4714();
  (*(v12 + 8))(v14, v11);
  v23 = v74;
  v24 = __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_24B2D34A4();
  KeyPath = swift_getKeyPath();
  *&v98 = v27;
  v29 = sub_24B2D34A4();
  v30 = &v18[*(v16 + 44)];
  *v30 = KeyPath;
  v30[1] = v29;
  v31 = sub_24B2D42E4();
  v32 = type metadata accessor for CustomControlStyle(0);
  v33 = *(v32 + 32);
  sub_24B07EAEC(v23 + v33, v10);
  v86 = v2;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v10);
  }

  v34 = v77;
  sub_24B2D32F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24B0391CC(v18, v34, &qword_27EFC8DD0);
  v43 = v34 + *(v75 + 36);
  *v43 = v31;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  v44 = sub_24B2D4354();
  v45 = v78;
  sub_24B07EAEC(v23 + v33, v78);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v45);
  }

  sub_24B2D32F4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v87;
  sub_24B0391CC(v34, v87, &qword_27EFC8DC0);
  v55 = v54 + *(v76 + 36);
  *v55 = v44;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  v56 = v79;
  sub_24B07EAEC(v23 + v33, v79);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v56);
  }

  else
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  v57 = v81;
  sub_24B07EAEC(v23 + v33, v81);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v57);
    v58 = v83;
  }

  else
  {
    v86 = v32;
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v58 = v83;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = v86;
  }

  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B0391CC(v87, v58, &qword_27EFC8DB0);
  v60 = (v58 + *(v80 + 36));
  v61 = v90;
  v62 = v88;
  v60[1] = v89;
  v60[2] = v61;
  *v60 = v62;
  if ((*(v23 + *(v32 + 44) + 8) & 1) == 0)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  sub_24B2D5064();
  sub_24B2D3904();
  v63 = v84;
  sub_24B0391CC(v58, v84, &qword_27EFC8DA0);
  v64 = (v63 + *(v82 + 36));
  v65 = v96;
  v64[4] = v95;
  v64[5] = v65;
  v64[6] = v97;
  v66 = v92;
  *v64 = v91;
  v64[1] = v66;
  v67 = v94;
  v64[2] = v93;
  v64[3] = v67;
  sub_24B2D5064();
  sub_24B2D3904();
  v68 = v85;
  sub_24B0391CC(v63, v85, &qword_27EFC8D90);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D78) + 36);
  v70 = v103;
  *(v69 + 64) = v102;
  *(v69 + 80) = v70;
  *(v69 + 96) = v104;
  v71 = v99;
  *v69 = v98;
  *(v69 + 16) = v71;
  result = v101;
  *(v69 + 32) = v100;
  *(v69 + 48) = result;
  return result;
}

__n128 sub_24B07CE7C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v85 = a2;
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  v3 = MEMORY[0x28223BE20](v2);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v79 = &v73 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v11 = sub_24B2D3694();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F88);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F78);
  MEMORY[0x28223BE20](v75);
  v77 = &v73 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F68);
  MEMORY[0x28223BE20](v76);
  v87 = &v73 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F58);
  MEMORY[0x28223BE20](v80);
  v83 = &v73 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F48);
  MEMORY[0x28223BE20](v82);
  v84 = &v73 - v22;
  sub_24B2D3674();
  sub_24B2D3FF4();
  sub_24B080194(&qword_27EFC8F90, MEMORY[0x277CDE170]);
  sub_24B2D4714();
  (*(v12 + 8))(v14, v11);
  v23 = v74;
  v24 = __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_24B2D34A4();
  KeyPath = swift_getKeyPath();
  *&v98 = v27;
  v29 = sub_24B2D34A4();
  v30 = &v18[*(v16 + 44)];
  *v30 = KeyPath;
  v30[1] = v29;
  v31 = sub_24B2D42E4();
  v32 = type metadata accessor for CustomControlStyle(0);
  v33 = *(v32 + 32);
  sub_24B07EAEC(v23 + v33, v10);
  v86 = v2;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v10);
  }

  v34 = v77;
  sub_24B2D32F4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24B0391CC(v18, v34, &qword_27EFC8F88);
  v43 = v34 + *(v75 + 36);
  *v43 = v31;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  v44 = sub_24B2D4354();
  v45 = v78;
  sub_24B07EAEC(v23 + v33, v78);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v45);
  }

  sub_24B2D32F4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v87;
  sub_24B0391CC(v34, v87, &qword_27EFC8F78);
  v55 = v54 + *(v76 + 36);
  *v55 = v44;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  v56 = v79;
  sub_24B07EAEC(v23 + v33, v79);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v56);
  }

  else
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  v57 = v81;
  sub_24B07EAEC(v23 + v33, v81);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v57);
    v58 = v83;
  }

  else
  {
    v86 = v32;
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v58 = v83;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = v86;
  }

  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B0391CC(v87, v58, &qword_27EFC8F68);
  v60 = (v58 + *(v80 + 36));
  v61 = v90;
  v62 = v88;
  v60[1] = v89;
  v60[2] = v61;
  *v60 = v62;
  if ((*(v23 + *(v32 + 44) + 8) & 1) == 0)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  sub_24B2D5064();
  sub_24B2D3904();
  v63 = v84;
  sub_24B0391CC(v58, v84, &qword_27EFC8F58);
  v64 = (v63 + *(v82 + 36));
  v65 = v96;
  v64[4] = v95;
  v64[5] = v65;
  v64[6] = v97;
  v66 = v92;
  *v64 = v91;
  v64[1] = v66;
  v67 = v94;
  v64[2] = v93;
  v64[3] = v67;
  sub_24B2D5064();
  sub_24B2D3904();
  v68 = v85;
  sub_24B0391CC(v63, v85, &qword_27EFC8F48);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F30) + 36);
  v70 = v103;
  *(v69 + 64) = v102;
  *(v69 + 80) = v70;
  *(v69 + 96) = v104;
  v71 = v99;
  *v69 = v98;
  *(v69 + 16) = v71;
  result = v101;
  *(v69 + 32) = v100;
  *(v69 + 48) = result;
  return result;
}

uint64_t sub_24B07D940@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DF0);
  MEMORY[0x28223BE20](v37);
  v4 = v35 - v3;
  v5 = sub_24B2D3964();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D3364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustomControlStyle(0);
  sub_24B07EAEC(&a1[v15[8]], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_24B07EB50(v10);
    (*(v12 + 104))(v14, *MEMORY[0x277CDF440], v11);
  }

  v16 = a1[v15[9]];
  v40 = v5;
  v38 = v11;
  v36 = v14;
  if (v16 == 2)
  {
    sub_24B2D3954();
  }

  else if (v16 == 3)
  {
    sub_24B2D3944();
  }

  else
  {
    sub_24B2D3924();
  }

  v17 = *(a1 + 5);
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D70);
  (*(*(v19 - 8) + 16))(v4, v35[1], v19);
  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DF8) + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  v21 = v15[6];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E00) + 36);
  v23 = sub_24B2D50F4();
  (*(*(v23 - 8) + 16))(&v4[v22], &a1[v21], v23);
  v24 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));

  *&v4[*(v37 + 36)] = sub_24B2D34A4();
  v27 = v41;
  sub_24B07B350(&a1[v15[7]], v7, v41);
  sub_24AFF8258(v4, &qword_27EFC8DF0);
  v28 = swift_getKeyPath();
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E08) + 36));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10);
  (*(v39 + 32))(v29 + *(v30 + 28), v7, v40);
  *v29 = v28;
  v31 = swift_getKeyPath();
  v32 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E18) + 36));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20);
  result = (*(v12 + 32))(v32 + *(v33 + 28), v36, v38);
  *v32 = v31;
  return result;
}

uint64_t sub_24B07DE8C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FA8);
  MEMORY[0x28223BE20](v37);
  v4 = v35 - v3;
  v5 = sub_24B2D3964();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D3364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustomControlStyle(0);
  sub_24B07EAEC(&a1[v15[8]], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_24B07EB50(v10);
    (*(v12 + 104))(v14, *MEMORY[0x277CDF440], v11);
  }

  v16 = a1[v15[9]];
  v40 = v5;
  v38 = v11;
  v36 = v14;
  if (v16 == 2)
  {
    sub_24B2D3954();
  }

  else if (v16 == 3)
  {
    sub_24B2D3944();
  }

  else
  {
    sub_24B2D3924();
  }

  v17 = *(a1 + 5);
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F28);
  (*(*(v19 - 8) + 16))(v4, v35[1], v19);
  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FB0) + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  v21 = v15[6];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FB8) + 36);
  v23 = sub_24B2D50F4();
  (*(*(v23 - 8) + 16))(&v4[v22], &a1[v21], v23);
  v24 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));

  *&v4[*(v37 + 36)] = sub_24B2D34A4();
  v27 = v41;
  sub_24B07BB84(&a1[v15[7]], v7, v41);
  sub_24AFF8258(v4, &qword_27EFC8FA8);
  v28 = swift_getKeyPath();
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FC0) + 36));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10);
  (*(v39 + 32))(v29 + *(v30 + 28), v7, v40);
  *v29 = v28;
  v31 = swift_getKeyPath();
  v32 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FC8) + 36));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20);
  result = (*(v12 + 32))(v32 + *(v33 + 28), v36, v38);
  *v32 = v31;
  return result;
}

uint64_t sub_24B07E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24B2D4284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D70);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_24B2D4244();
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v13 = v15;
  v17 = a1;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D78);
  sub_24B07E718();
  sub_24B2D4D24();
  sub_24B07D940(v13, v16);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_24B07E718()
{
  result = qword_27EFC8D80;
  if (!qword_27EFC8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D78);
    sub_24B07E7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D80);
  }

  return result;
}

unint64_t sub_24B07E7A4()
{
  result = qword_27EFC8D88;
  if (!qword_27EFC8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D90);
    sub_24B07E830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D88);
  }

  return result;
}

unint64_t sub_24B07E830()
{
  result = qword_27EFC8D98;
  if (!qword_27EFC8D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DA0);
    sub_24B07E8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D98);
  }

  return result;
}

unint64_t sub_24B07E8BC()
{
  result = qword_27EFC8DA8;
  if (!qword_27EFC8DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DB0);
    sub_24B07E948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DA8);
  }

  return result;
}

unint64_t sub_24B07E948()
{
  result = qword_27EFC8DB8;
  if (!qword_27EFC8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DC0);
    sub_24B07E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DB8);
  }

  return result;
}

unint64_t sub_24B07E9D4()
{
  result = qword_27EFC8DC8;
  if (!qword_27EFC8DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DD0);
    sub_24B2D4254();
    sub_24B080194(&qword_27EFC8DD8, MEMORY[0x277CDE500]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DC8);
  }

  return result;
}

uint64_t sub_24B07EAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B07EB50(uint64_t a1)
{
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B07EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_24B2D5124();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D4024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F20);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F28);
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v19 - v12;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v29 = a1;
  v16 = v20;
  v27 = a1;
  v28 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F30);
  sub_24B2D4004();
  sub_24B07FDC0();
  sub_24B080194(&qword_27EFC8F98, MEMORY[0x277CDE188]);
  sub_24B2D44B4();
  sub_24B2D5114();
  sub_24B039184(&qword_27EFC8FA0, &qword_27EFC8F20);
  v17 = v21;
  sub_24B2D4A24();
  (*(v24 + 8))(v5, v25);
  (*(v23 + 8))(v10, v17);
  sub_24B07DE8C(v16, v26);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_24B07EFC0(char a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3FE4();
  if (v2)
  {
    v3 = v2;
    v2(a1 & 1);
    sub_24AFD5890(v3);
  }
}

uint64_t sub_24B07F090()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4014();
}

uint64_t sub_24B07F140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v14 = a4;
  v15 = a6;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a5(isCurrentExecutor);
  v15(a2);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_24B07F2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3C34();
  *a1 = result;
  return result;
}

uint64_t sub_24B07F310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B07F380()
{
  result = qword_27EFC8E60;
  if (!qword_27EFC8E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E28);
    sub_24B07F438();
    sub_24B039184(&qword_27EFC8EC0, &qword_27EFC8EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E60);
  }

  return result;
}

unint64_t sub_24B07F438()
{
  result = qword_27EFC8E68;
  if (!qword_27EFC8E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E58);
    sub_24B07F4F0();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E68);
  }

  return result;
}

unint64_t sub_24B07F4F0()
{
  result = qword_27EFC8E70;
  if (!qword_27EFC8E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DF0);
    sub_24B07F5A8();
    sub_24B039184(&qword_27EFC8EA0, &qword_27EFC8EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E70);
  }

  return result;
}

unint64_t sub_24B07F5A8()
{
  result = qword_27EFC8E78;
  if (!qword_27EFC8E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E00);
    sub_24B07F634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E78);
  }

  return result;
}

unint64_t sub_24B07F634()
{
  result = qword_27EFC8E80;
  if (!qword_27EFC8E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DF8);
    sub_24B039184(&qword_27EFC8E88, &qword_27EFC8D70);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E80);
  }

  return result;
}

unint64_t sub_24B07F718()
{
  result = qword_27EFC8ED8;
  if (!qword_27EFC8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E40);
    sub_24B07F4F0();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8ED8);
  }

  return result;
}

uint64_t sub_24B07F7D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24B07F7E8()
{
  result = qword_27EFC8EE0;
  if (!qword_27EFC8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E18);
    sub_24B07F8A0();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EE0);
  }

  return result;
}

unint64_t sub_24B07F8A0()
{
  result = qword_27EFC8EE8;
  if (!qword_27EFC8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E08);
    sub_24B07F958();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EE8);
  }

  return result;
}

unint64_t sub_24B07F958()
{
  result = qword_27EFC8EF0;
  if (!qword_27EFC8EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E40);
    sub_24B2D4174();
    sub_24B07F718();
    sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E28);
    sub_24B07F380();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EF0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B07FBD4()
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_24B07FCEC(char a1)
{
  sub_24B2D4024();

  return sub_24B07EFC0(a1);
}

unint64_t sub_24B07FDC0()
{
  result = qword_27EFC8F38;
  if (!qword_27EFC8F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F30);
    sub_24B07FE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F38);
  }

  return result;
}

unint64_t sub_24B07FE4C()
{
  result = qword_27EFC8F40;
  if (!qword_27EFC8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F48);
    sub_24B07FED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F40);
  }

  return result;
}

unint64_t sub_24B07FED8()
{
  result = qword_27EFC8F50;
  if (!qword_27EFC8F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F58);
    sub_24B07FF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F50);
  }

  return result;
}

unint64_t sub_24B07FF64()
{
  result = qword_27EFC8F60;
  if (!qword_27EFC8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F68);
    sub_24B07FFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F60);
  }

  return result;
}

unint64_t sub_24B07FFF0()
{
  result = qword_27EFC8F70;
  if (!qword_27EFC8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F78);
    sub_24B08007C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F70);
  }

  return result;
}

unint64_t sub_24B08007C()
{
  result = qword_27EFC8F80;
  if (!qword_27EFC8F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F88);
    sub_24B2D3FF4();
    sub_24B080194(&qword_27EFC8F90, MEMORY[0x277CDE170]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F80);
  }

  return result;
}

uint64_t sub_24B080194(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B0801DC()
{
  result = qword_27EFC9000;
  if (!qword_27EFC9000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FD0);
    sub_24B080294();
    sub_24B039184(&qword_27EFC8EC0, &qword_27EFC8EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9000);
  }

  return result;
}

unint64_t sub_24B080294()
{
  result = qword_27EFC9008;
  if (!qword_27EFC9008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FF8);
    sub_24B08034C();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9008);
  }

  return result;
}

unint64_t sub_24B08034C()
{
  result = qword_27EFC9010;
  if (!qword_27EFC9010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FA8);
    sub_24B080404();
    sub_24B039184(&qword_27EFC8EA0, &qword_27EFC8EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9010);
  }

  return result;
}

unint64_t sub_24B080404()
{
  result = qword_27EFC9018;
  if (!qword_27EFC9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FB8);
    sub_24B080490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9018);
  }

  return result;
}

unint64_t sub_24B080490()
{
  result = qword_27EFC9020;
  if (!qword_27EFC9020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F20);
    sub_24B039184(&qword_27EFC8FA0, &qword_27EFC8F20);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9020);
  }

  return result;
}

unint64_t sub_24B0805B8()
{
  result = qword_27EFC9028;
  if (!qword_27EFC9028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FE8);
    sub_24B08034C();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9028);
  }

  return result;
}

unint64_t sub_24B080670()
{
  result = qword_27EFC9030;
  if (!qword_27EFC9030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FC8);
    sub_24B080728();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9030);
  }

  return result;
}

unint64_t sub_24B080728()
{
  result = qword_27EFC9038;
  if (!qword_27EFC9038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FC0);
    sub_24B0807E0();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9038);
  }

  return result;
}

unint64_t sub_24B0807E0()
{
  result = qword_27EFC9040;
  if (!qword_27EFC9040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FE8);
    sub_24B2D4174();
    sub_24B0805B8();
    sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FD0);
    sub_24B0801DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9040);
  }

  return result;
}

uint64_t sub_24B080968@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058);
  v1 = MEMORY[0x28223BE20](v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  v6 = sub_24B2D4044();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4054();
  sub_24B2D4064();
  KeyPath = swift_getKeyPath();
  v14 = &v5[*(v20 + 36)];
  *v14 = KeyPath;
  v14[8] = 0;
  v15 = *(v7 + 16);
  v15(v10, v12, v6);
  sub_24B080C5C(v5, v3);
  v16 = v21;
  v15(v21, v10, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9060);
  sub_24B080C5C(v3, &v16[*(v17 + 48)]);
  sub_24B080CCC(v5);
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_24B080CCC(v3);
  v18(v10, v6);
}

uint64_t sub_24B080C04@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B2D3CD4();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9050);
  return sub_24B080968((a1 + *(v2 + 44)));
}

uint64_t sub_24B080C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B080CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B080D34()
{
  result = qword_27EFC9068;
  if (!qword_27EFC9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFC9070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9068);
  }

  return result;
}

uint64_t sub_24B080D98(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24B2D5154();
}

uint64_t sub_24B080F68(__int16 a1)
{
  v2 = sub_24B2D4A54();
  MEMORY[0x28223BE20](v2);
  if ((a1 & 0x100) != 0 || (a1 & 1) == 0)
  {

    return sub_24B2D4B54();
  }

  else
  {
    (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_24B2D4B74();
  }
}

double sub_24B08106C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24B2D4BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_24B2D4C24();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v8 = sub_24B2D4C14();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170);
  sub_24B2D3404();
  sub_24B2D3404();
  sub_24B2D5064();
  sub_24B2D3494();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  result = *&v18;
  *(a1 + 40) = v18;
  return result;
}

uint64_t sub_24B081294@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = sub_24B2D4494();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  v9[1] = 0x3FF0000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A70], v4);
  sub_24B083C54();
  return sub_24B2D33F4();
}

uint64_t sub_24B0813C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v4 = *(a1 + 16);
  v26 = *(a1 + 24);
  v23 = v4;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  swift_getWitnessTable();
  sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100);
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  v27[16] = swift_getWitnessTable();
  v27[17] = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D5A84();
  sub_24B2D37B4();
  v27[15] = v26;
  v27[13] = swift_getWitnessTable();
  v27[14] = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  v5 = sub_24B2D37B4();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v27[11] = WitnessTable;
  v27[12] = MEMORY[0x277CDF918];
  v27[9] = swift_getWitnessTable();
  v27[10] = v7;
  v27[7] = swift_getWitnessTable();
  v27[8] = v7;
  v8 = swift_getWitnessTable();
  v27[0] = v5;
  v27[1] = MEMORY[0x277CE1428];
  v27[2] = v8;
  v27[3] = MEMORY[0x277CE1410];
  v9 = type metadata accessor for BubbleMessageTemplate();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = swift_allocObject();
  v17 = v26;
  *(v16 + 16) = v23;
  *(v16 + 24) = v17;
  v18 = *(v3 + 16);
  *(v16 + 32) = *v3;
  *(v16 + 48) = v18;
  *(v16 + 64) = *(v3 + 32);
  *(v16 + 79) = *(v3 + 47);
  sub_24B07A4D8(sub_24B0838C8, v16, *(v3 + 50), v13);
  v19 = swift_getWitnessTable();
  sub_24B091A64(v13, v9, v19);
  (*(*(v24 - 8) + 16))(v27, v3);
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_24B091A64(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_24B081918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v2 = *(a1 + 24);
  v26 = *(a1 + 16);
  v3 = v2;
  v25 = v2;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  swift_getWitnessTable();
  v5 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100);
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  v28 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v42 = MEMORY[0x277CDFC60];
  v27 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D5A84();
  v6 = sub_24B2D37B4();
  v40 = v3;
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x277CDFC48];
  v43 = v6;
  v44 = v4;
  v45 = swift_getWitnessTable();
  v46 = v5;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  v7 = sub_24B2D4DF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_24B2D37B4();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_24B2D37B4();
  v24 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = *(v29 + 49);
  v31 = v26;
  v32 = v25;
  v33 = v29;
  sub_24B2D3DF4();
  v18 = 0x4034000000000000;
  if (v17)
  {
    v18 = 0x4028000000000000;
  }

  v29 = v18;
  sub_24B2D4DE4();
  sub_24B2D4304();
  v19 = swift_getWitnessTable();
  sub_24B2D4974();
  (*(v8 + 8))(v10, v7);
  sub_24B2D4314();
  v20 = MEMORY[0x277CDF918];
  v36 = v19;
  v37 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  sub_24B2D4974();
  (*(v23 + 8))(v13, v11);
  sub_24B2D42E4();
  v34 = v21;
  v35 = v20;
  swift_getWitnessTable();
  sub_24B2D4974();
  return (*(v24 + 8))(v16, v14);
}

uint64_t sub_24B081F28@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a1;
  v81 = a4;
  v6 = sub_24B2D5A84();
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v88 = &v73 - v7;
  v8 = sub_24B2D37B4();
  v78 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v91 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0);
  v110 = a3;
  v90 = v6;
  WitnessTable = swift_getWitnessTable();
  v108 = WitnessTable;
  v109 = MEMORY[0x277CDFC48];
  v11 = swift_getWitnessTable();
  v12 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  v80 = v8;
  v104 = v8;
  v105 = v10;
  v74 = v11;
  v106 = v11;
  v107 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v100 = &v73 - v17;
  v95 = a2;
  v96 = a3;
  v18 = type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  v19 = swift_getWitnessTable();
  v104 = v18;
  v105 = v10;
  v106 = v19;
  v107 = v12;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100);
  swift_getTupleTypeMetadata2();
  v20 = sub_24B2D5144();
  v21 = swift_getWitnessTable();
  v93 = v20;
  v92 = v21;
  v22 = sub_24B2D4DF4();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  v25 = sub_24B2D37B4();
  v84 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  v103[2] = swift_getWitnessTable();
  v103[3] = MEMORY[0x277CDFC60];
  v28 = swift_getWitnessTable();
  v104 = v25;
  v105 = v10;
  v83 = v10;
  v82 = v28;
  v106 = v28;
  v107 = v12;
  v99 = v12;
  v86 = swift_getOpaqueTypeMetadata2();
  v85 = *(v86 - 8);
  v29 = MEMORY[0x28223BE20](v86);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v98 = &v73 - v32;
  sub_24B2D5694();
  v73 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v34 = v97;
  sub_24B2D3DF4();
  sub_24B2D4DE4();
  sub_24B2D5064();
  sub_24B2D4924();
  (*(v94 + 8))(v24, v22);
  v35 = *MEMORY[0x277CDF9B8];
  v36 = sub_24B2D3764();
  v37 = *(v36 - 8);
  v38 = *(v37 + 104);
  v39 = v37 + 104;
  v40 = v100;
  v38(v100, v35, v36);
  v41 = sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v95 = v38;
    v43 = v83;
    v96 = v41;
    v44 = v82;
    v94 = v39;
    v45 = v99;
    sub_24B2D4774();
    sub_24AFF8258(v40, &qword_27EFC8AD0);
    v84[1](v27, v25);
    v104 = v25;
    v105 = v43;
    v46 = v43;
    v106 = v44;
    v107 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v86;
    v82 = OpaqueTypeConformance2;
    sub_24B091A64(v31, v86, OpaqueTypeConformance2);
    v49 = v85;
    v50 = *(v85 + 8);
    v93 = v31;
    v92 = v85 + 8;
    v84 = v50;
    v51 = (v50)(v31, v48);
    v52 = *(v34 + 32);
    v53 = v88;
    v52(v51);
    v54 = v91;
    v55 = v90;
    sub_24B2D49E4();
    v56 = v53;
    v57 = v100;
    (*(v89 + 8))(v56, v55);
    v95(v57, *MEMORY[0x277CDF9A8], v36);
    result = sub_24B2D52A4();
    if (result)
    {
      v58 = v77;
      v59 = v49;
      v60 = v80;
      v61 = v46;
      v62 = v74;
      v63 = v99;
      sub_24B2D4774();
      sub_24AFF8258(v57, &qword_27EFC8AD0);
      (*(v78 + 8))(v54, v60);
      v104 = v60;
      v105 = v61;
      v106 = v62;
      v107 = v63;
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v76;
      v66 = OpaqueTypeMetadata2;
      sub_24B091A64(v58, OpaqueTypeMetadata2, v64);
      v67 = v75;
      v68 = *(v75 + 8);
      v68(v58, v66);
      v69 = *(v59 + 16);
      v70 = v93;
      v71 = v98;
      v69(v93, v98, v48);
      v104 = v70;
      (*(v67 + 16))(v58, v65, v66);
      v105 = v58;
      v103[0] = v48;
      v103[1] = v66;
      v101 = v82;
      v102 = v64;
      sub_24B080D98(&v104, 2uLL, v103);
      v68(v65, v66);
      v72 = v84;
      (v84)(v71, v48);
      v68(v58, v66);
      (v72)(v70, v48);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B082A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v62 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9100);
  v6 = MEMORY[0x28223BE20](v64);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v68 = a2;
  v69 = a3;
  v12 = type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon();
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v53 - v13);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
  *&v88 = v12;
  *(&v88 + 1) = v9;
  v57 = v9;
  v17 = WitnessTable;
  *&v89 = WitnessTable;
  *(&v89 + 1) = v16;
  v18 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v53 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8);
  v56 = OpaqueTypeMetadata2;
  v63 = sub_24B2D37B4();
  v60 = *(v63 - 8);
  v22 = MEMORY[0x28223BE20](v63);
  v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v66 = &v53 - v24;
  sub_24B2D5694();
  v61 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = 56.0;
  if (*(v67 + 49))
  {
    v25 = 44.0;
  }

  v26 = v14;
  sub_24B081294(v14, v25);
  v27 = *MEMORY[0x277CDF998];
  v28 = sub_24B2D3764();
  (*(*(v28 - 8) + 104))(v11, v27, v28);
  sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v30 = v57;
    sub_24B2D4774();
    sub_24AFF8258(v11, &qword_27EFC8AD0);
    (*(v58 + 8))(v26, v12);
    *&v88 = v12;
    *(&v88 + 1) = v30;
    *&v89 = v17;
    *(&v89 + 1) = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v59;
    v33 = v56;
    sub_24B2D4754();
    (*(v55 + 8))(v21, v33);
    v34 = sub_24B039184(&qword_27EFC9108, &qword_27EFC90F8);
    v80 = OpaqueTypeConformance2;
    v81 = v34;
    v35 = v63;
    v56 = swift_getWitnessTable();
    sub_24B091A64(v32, v35, v56);
    v36 = v60;
    v57 = *(v60 + 8);
    v58 = v60 + 8;
    v57(v32, v35);
    v55 = sub_24B2D3DF4();
    LOBYTE(v70) = 1;
    sub_24B08331C(v67, &v73);
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v82 = v73;
    v83 = v74;
    v90 = v75;
    v91 = v76;
    v92 = v77;
    v93 = v78;
    v88 = v73;
    v89 = v74;
    sub_24B008890(&v82, v72, &qword_27EFC9110);
    sub_24AFF8258(&v88, &qword_27EFC9110);
    *&v79[39] = v84;
    *&v79[55] = v85;
    *&v79[71] = v86;
    *&v79[87] = v87;
    *&v79[7] = v82;
    *&v79[23] = v83;
    LODWORD(v69) = v70;
    KeyPath = swift_getKeyPath();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9118);
    v39 = v54;
    v40 = &v54[*(v38 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9120) + 28);
    v42 = *MEMORY[0x277CE0B30];
    v43 = sub_24B2D4574();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = swift_getKeyPath();
    v44 = *&v79[48];
    *(v39 + 49) = *&v79[32];
    v45 = *v79;
    *(v39 + 33) = *&v79[16];
    *(v39 + 112) = *&v79[95];
    *(v39 + 120) = KeyPath;
    v46 = *&v79[64];
    *(v39 + 97) = *&v79[80];
    *(v39 + 81) = v46;
    *(v39 + 65) = v44;
    *v39 = v55;
    *(v39 + 8) = 0;
    *(v39 + 16) = v69;
    *(v39 + 17) = v45;
    *(v39 + 128) = 1;
    v47 = v64;
    *(v39 + *(v64 + 36)) = 0;
    v48 = v32;
    v49 = v32;
    v50 = v66;
    (*(v36 + 16))(v49, v66, v35);
    *&v73 = v48;
    v51 = v65;
    sub_24B008890(v39, v65, &qword_27EFC9100);
    *(&v73 + 1) = v51;
    v72[0] = v35;
    v72[1] = v47;
    v70 = v56;
    v71 = sub_24B0839E0();
    sub_24B080D98(&v73, 2uLL, v72);
    sub_24AFF8258(v39, &qword_27EFC9100);
    v52 = v57;
    v57(v50, v35);
    sub_24AFF8258(v51, &qword_27EFC9100);
    v52(v48, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B08331C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v42 = sub_24B2D4434();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v45 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  if (v5)
  {
    v43 = *a1;
    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v39 = v5;

  *(&v38 + 1) = sub_24B2D4484();
  *&v38 = swift_getKeyPath();
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(&v46 + 1) = sub_24B080F68(v8 | v6);
  *&v46 = swift_getKeyPath();
  v9 = a1[3];
  v52 = a1[2];
  v53 = v9;
  sub_24AFFE0A4();

  v10 = sub_24B2D4604();
  v12 = v11;
  v14 = v13;
  sub_24B080F68(v8 | v6);
  v15 = sub_24B2D4584();
  v17 = v16;
  v19 = v18;

  sub_24B083C34(v10, v12, v14 & 1);

  sub_24B2D4444();
  v20 = v41;
  v21 = v42;
  (*(v41 + 104))(v4, *MEMORY[0x277CE0A10], v42);
  sub_24B2D4464();

  (*(v20 + 8))(v4, v21);
  v22 = sub_24B2D45C4();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24B083C34(v15, v17, v19 & 1);

  v29 = v43;
  v30 = v39;
  *&v48 = v43;
  *(&v48 + 1) = v39;
  v31 = v44;
  *&v49 = 0;
  *(&v49 + 1) = v44;
  v32 = v38;
  v50 = v38;
  v51 = v46;
  v47 = v26 & 1;
  v33 = v49;
  v34 = v40;
  *v40 = v48;
  v34[1] = v33;
  v35 = v51;
  v34[2] = v50;
  v34[3] = v35;
  *(v34 + 8) = v22;
  *(v34 + 9) = v24;
  *(v34 + 80) = v26 & 1;
  *(v34 + 11) = v28;
  sub_24B008890(&v48, &v52, &qword_27EFC9160);
  sub_24B083C44(v22, v24, v26 & 1);

  sub_24B083C34(v22, v24, v26 & 1);

  v52 = v29;
  v53 = v30;
  v54 = 0;
  v55 = v31;
  v56 = v32;
  v57 = v46;
  sub_24AFF8258(&v52, &qword_27EFC9160);
}

uint64_t sub_24B083760()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B0837B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_24B083800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B083918(uint64_t a1)
{
  v2 = sub_24B2D4574();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B2D3A54();
}

unint64_t sub_24B0839E0()
{
  result = qword_27EFC9128;
  if (!qword_27EFC9128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100);
    sub_24B083A98();
    sub_24B039184(&qword_27EFC9108, &qword_27EFC90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9128);
  }

  return result;
}

unint64_t sub_24B083A98()
{
  result = qword_27EFC9130;
  if (!qword_27EFC9130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9118);
    sub_24B083B50();
    sub_24B039184(&qword_27EFC9158, &qword_27EFC9120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9130);
  }

  return result;
}

unint64_t sub_24B083B50()
{
  result = qword_27EFC9138;
  if (!qword_27EFC9138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9140);
    sub_24B039184(&qword_27EFC9148, &qword_27EFC9150);
    sub_24B039184(&qword_27EFC8B38, &qword_27EFC8B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9138);
  }

  return result;
}

uint64_t sub_24B083C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B083C44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B083C54()
{
  result = qword_27EFC9168;
  if (!qword_27EFC9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9168);
  }

  return result;
}

void sub_24B083CB0()
{
  sub_24B083D54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B083D54()
{
  if (!qword_27EFC91F8[0])
  {
    sub_24B083C54();
    v0 = sub_24B2D3414();
    if (!v1)
    {
      atomic_store(v0, qword_27EFC91F8);
    }
  }
}

uint64_t sub_24B083DB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ConfigurableBorderedButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ConfigurableBorderedButtonStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B083F9C()
{
  result = qword_27EFC9280;
  if (!qword_27EFC9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9280);
  }

  return result;
}

id sub_24B08402C()
{
  v0 = objc_allocWithZone(type metadata accessor for LocationServicesDisabledView.ViewModel());

  return [v0 init];
}

uint64_t sub_24B084064@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92C8);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92D0);
  MEMORY[0x28223BE20](v44);
  v43 = v37 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92D8);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v37 - v7;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  type metadata accessor for LocationServicesDisabledView.ViewModel();
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel);
  v11 = sub_24B2D33A4();
  v12 = sub_24B08467C();

  if (v12)
  {
    sub_24B084714(v5);
    v52 = *(v2 + 24);
    v13 = swift_allocObject();
    v14 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v2 + 32);
    v15 = &v5[*(v3 + 36)];
    *v15 = sub_24B0865C0;
    v15[1] = v13;
    v15[2] = 0;
    v15[3] = 0;
    sub_24B0865C8(v8, v9, v10);
    sub_24B008890(&v52, &v48, &qword_27EFC92E8);
    v16 = sub_24B2D33A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    if (v49)
    {
      v17 = 0x7FFFFFFF;
    }

    else
    {
      v17 = v48;
    }

    v18 = v43;
    sub_24AFD8BA4(v5, v43);
    *(v18 + *(v44 + 52)) = v17;
    sub_24B2D3D74();
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_24B2D45E4();
    v40 = v22;
    v41 = v21;
    v24 = v23;
    v39 = v25;
    v51 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
    v26 = sub_24B2D4CF4();
    v38 = v37;
    v37[3] = v50;
    v27 = MEMORY[0x28223BE20](v26);
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92F0);
    sub_24B039184(&qword_27EFC92F8, &qword_27EFC92D0);
    sub_24B039184(&unk_27EFC9300, &qword_27EFC92F0);
    v29 = v41;
    v28 = v42;
    v30 = v40;
    sub_24B2D48F4();

    sub_24B083C34(v29, v30, v24 & 1);

    sub_24AFF8258(v18, &qword_27EFC92D0);
    v31 = v46;
    v32 = v45;
    (*(v47 + 32))(v46, v28, v45);
    return (*(v47 + 56))(v31, 0, 1, v32);
  }

  else
  {
    v34 = v46;
    v35 = *(v47 + 56);
    v36 = v45;

    return v35(v34, 1, 1, v36);
  }
}

uint64_t sub_24B08467C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  if (unk_285E4841C == v1)
  {
    return 0;
  }

  else
  {
    return (dword_285E48418 != v1) & ~v2;
  }
}

uint64_t sub_24B084714@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v40[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0);
  MEMORY[0x28223BE20](v40[0]);
  v3 = v40 - v2;
  v45 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v45);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D4A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomControlStyle(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9340);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v40 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9348);
  MEMORY[0x28223BE20](v41);
  v18 = v40 - v17;
  v19 = *v1;
  v49 = *(v1 + 16);
  v47 = *(v1 + 24);
  v48 = v19;
  v20 = swift_allocObject();
  v21 = v1[1];
  *(v20 + 16) = *v1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v1 + 4);
  sub_24B008890(&v48, v46, &qword_27EFC9350);
  sub_24B008890(&v47, v46, &qword_27EFC92E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9358);
  sub_24B086950();
  sub_24B2D4D34();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
  v22 = sub_24B2D4B74();
  v23 = MEMORY[0x277CE0F60];
  v12[3] = MEMORY[0x277CE0F78];
  v12[4] = v23;
  *v12 = v22;
  sub_24B2D4394();
  sub_24B2D43D4();
  v24 = sub_24B2D4424();

  v25 = v10[8];
  v26 = *MEMORY[0x277CE13B8];
  v27 = sub_24B2D50F4();
  (*(*(v27 - 8) + 104))(v12 + v25, v26, v27);
  v46[0] = sub_24B085D48;
  v46[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
  sub_24B2D1A94();
  v28 = v10[10];
  v29 = *MEMORY[0x277CDF440];
  v30 = sub_24B2D3364();
  (*(*(v30 - 8) + 104))(v12 + v28, v29, v30);
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v12[5] = v24;
  *(v12 + v10[11]) = 2;
  *(v12 + v10[12]) = 0;
  v31 = v12 + v10[13];
  *v31 = 0;
  v31[8] = 1;
  v32 = v41;
  v33 = v44;
  sub_24B086A94(v12, v44);
  sub_24B039184(&qword_27EFC9398, &qword_27EFC9340);
  sub_24B086B58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
  v34 = v42;
  sub_24B2D46D4();
  sub_24B086AF8(v33, type metadata accessor for CustomButtonStyle);
  sub_24B086AF8(v12, type metadata accessor for CustomControlStyle);
  (*(v43 + 8))(v16, v34);
  KeyPath = swift_getKeyPath();
  v36 = &v18[*(v32 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = 2;
  v36[16] = 0;
  v37 = *MEMORY[0x277CDF988];
  v38 = sub_24B2D3764();
  (*(*(v38 - 8) + 104))(v3, v37, v38);
  sub_24B086B58(&qword_27EFC8AE8, MEMORY[0x277CDFA28]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B086BA0();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0);
    sub_24B2D4774();
    sub_24AFF8258(v3, &qword_27EFC8AD0);
    return sub_24AFF8258(v18, &qword_27EFC9348);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24B084E38()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel();
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel);
  v0 = sub_24B2D33A4();
  [*&v0[OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager] requestWhenInUseAuthorization];
}

uint64_t sub_24B084F60@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318);
  v26 = *(v31 - 8);
  v4 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9320);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  sub_24B2D5694();
  v27 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel();
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel);

  v12 = sub_24B2D32E4();
  v13 = *(*(v12 - 8) + 56);
  v13(v3, 1, 1, v12);
  v14 = sub_24B2D33A4();
  *(swift_allocObject() + 16) = v14;
  v15 = v29;
  sub_24B2D4D24();
  v16 = v26;
  v17 = v31;
  (*(v26 + 32))(v11, v15, v31);
  (*(v16 + 56))(v11, 0, 1, v17);
  sub_24B2D32D4();
  v13(v3, 0, 1, v12);
  sub_24B2D4D24();
  v18 = v28;
  sub_24B008890(v11, v28, &qword_27EFC9320);
  v19 = *(v16 + 16);
  v20 = v30;
  v19(v30, v15, v17);
  v21 = v32;
  sub_24B008890(v18, v32, &qword_27EFC9320);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9328);
  v19((v21 + *(v22 + 48)), v20, v17);
  v23 = *(v16 + 8);
  v23(v15, v17);
  sub_24AFF8258(v11, &qword_27EFC9320);
  v23(v20, v17);
  sub_24AFF8258(v18, &qword_27EFC9320);
}

uint64_t sub_24B085458@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B0855A8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_24B085638@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B085788@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel();
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel);

  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D5374();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_24B2D5394();
  sub_24AFFE0A4();
  v6 = sub_24B2D4604();
  v8 = v7;
  LOBYTE(v5) = v9;
  v11 = v10;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_24B085960()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

__n128 sub_24B085A28@<Q0>(__n128 *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3CD4();
  sub_24B085B98(v26);
  v3 = v26[0];
  v4 = v26[1];
  v5 = v27;
  v25 = v28;
  LOBYTE(v26[0]) = 1;
  v30 = v27;
  v6 = sub_24B2D4354();
  sub_24B2D32F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v29 = 0;
  v15 = sub_24B2D42E4();
  sub_24B2D32F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u8[8] = v5;
  result = v25;
  a1[3] = v25;
  a1[4].n128_u8[0] = v6;
  a1[4].n128_u64[1] = v8;
  a1[5].n128_u64[0] = v10;
  a1[5].n128_u64[1] = v12;
  a1[6].n128_u64[0] = v14;
  a1[6].n128_u8[8] = 0;
  a1[7].n128_u8[0] = v15;
  a1[7].n128_u64[1] = v17;
  a1[8].n128_u64[0] = v19;
  a1[8].n128_u64[1] = v21;
  a1[9].n128_u64[0] = v23;
  a1[9].n128_u8[8] = 0;
  return result;
}

uint64_t sub_24B085B98@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24B2D4BC4();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_24B083C44(v4, v6, v8);

  sub_24B083C34(v4, v6, v8);
}

uint64_t sub_24B085D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC75D8 != -1)
  {
    swift_once();
  }

  v7 = sub_24B2D5004();
  v8 = __swift_project_value_buffer(v7, qword_27EFC8158);
  (*(*(v7 - 8) + 16))(&v6[*(v4 + 52)], v8, v7);
  v9 = sub_24B2D3964();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  *&v6[*(v4 + 56)] = 256;
  sub_24B2D4AC4();
  v10 = sub_24B2D4B44();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D8);
  a2[3] = v11;
  a2[4] = sub_24B086D18();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_24B008890(v6, boxed_opaque_existential_0, &qword_27EFC93D0);
  v13 = boxed_opaque_existential_0 + *(v11 + 36);
  *v13 = v10;
  *(v13 + 8) = xmmword_24B2E27D0;
  *(v13 + 3) = 0x4034000000000000;
  sub_24AFF8258(v6, &qword_27EFC93D0);
}

unint64_t sub_24B085FA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1 | (v2 << 32);
}

char *sub_24B08602C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v7 = OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel__authorizationStatus;
  v12 = 0;
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92C0);
  sub_24B2D3204();
  (*(v3 + 32))(&v0[v7], v5, v2);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  [*&v8[OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager] setDelegate_];
  return v8;
}

uint64_t type metadata accessor for LocationServicesDisabledView.ViewModel()
{
  result = qword_27EFC92A8;
  if (!qword_27EFC92A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B08632C()
{
  sub_24B0863CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24B0863CC()
{
  if (!qword_27EFC92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92C0);
    v0 = sub_24B2D3234();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC92B8);
    }
  }
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

uint64_t sub_24B086450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24B0864AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24B086534@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_24B2D31B4();
  *a1 = result;
  return result;
}

uint64_t sub_24B0865B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

id sub_24B0865C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_24B0865D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a1 = v3;
  *(a1 + 4) = v4;
  return result;
}

uint64_t sub_24B086660(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24B2D3224();
}

uint64_t sub_24B0866F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24B2D22D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D22B4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24AFF8258(v2, &unk_27EFC9330);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24B2D2294();
    v11 = sub_24B2D51D4();
    [v9 openSensitiveURL:v10 withOptions:v11];
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t objectdestroyTm_2()
{
  sub_24B0865B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24B086950()
{
  result = qword_27EFC9360;
  if (!qword_27EFC9360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9358);
    sub_24B0869DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9360);
  }

  return result;
}

unint64_t sub_24B0869DC()
{
  result = qword_27EFC9368;
  if (!qword_27EFC9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9370);
    sub_24B039184(&qword_27EFC9378, &unk_27EFC9380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9368);
  }

  return result;
}

uint64_t sub_24B086A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B086AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B086B58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B086BA0()
{
  result = qword_27EFC93B0;
  if (!qword_27EFC93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9340);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC9398, &qword_27EFC9340);
    sub_24B086B58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93B0);
  }

  return result;
}

unint64_t sub_24B086D18()
{
  result = qword_27EFC93E0;
  if (!qword_27EFC93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC93D8);
    sub_24B039184(&qword_27EFC93E8, &qword_27EFC93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93E0);
  }

  return result;
}

unint64_t sub_24B086DD0()
{
  result = qword_27EFC93F8;
  if (!qword_27EFC93F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFC9400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92F0);
    sub_24B039184(&qword_27EFC92F8, &qword_27EFC92D0);
    sub_24B039184(&unk_27EFC9300, &qword_27EFC92F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93F8);
  }

  return result;
}

unint64_t sub_24B086F40()
{
  result = sub_24B07A804();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B086FD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_24B08715C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_24B087410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9490);
  v3 = *(a1 + 16);
  sub_24B039184(&qword_27EFC9498, &qword_27EFC9490);
  v4 = *(a1 + 24);
  v15[14] = swift_getOpaqueTypeMetadata2();
  v15[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94A0);
  v15[16] = swift_getOpaqueTypeConformance2();
  v15[17] = sub_24B08880C();
  v5 = sub_24B2D44D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v15[10] = v3;
  v15[11] = v4;
  v15[12] = v15[0];
  v15[4] = v3;
  v15[5] = v4;
  v15[6] = v15[0];
  sub_24B2D44C4();
  WitnessTable = swift_getWitnessTable();
  sub_24B091A64(v9, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v9, v5);
  sub_24B091A64(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_24B087694()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_24B2D45E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94B8);
  sub_24B0888A4();
  sub_24B2D4F04();
}

uint64_t sub_24B0878D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = type metadata accessor for ShareMenu();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18[1] = &unk_285E48348;
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  sub_24B039184(&qword_27EFC94E8, &qword_27EFC94E0);
  sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
  sub_24B088AD8();
  v13 = v18[0];
  sub_24B2D4EE4();
  v14 = sub_24B2D4B54();
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94B8);
  v17 = (v13 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

uint64_t sub_24B087B90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v8 = type metadata accessor for ShareMenu();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_24B2D32E4();
  (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  (*(v9 + 16))(v12, a2, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v17;
  (*(v9 + 32))(v16 + v15, v12, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8);
  v20 = a5 + v19[12];
  v31 = 0;
  sub_24B2D4CC4();
  v21 = v33;
  *v20 = v32;
  *(v20 + 8) = v21;
  v22 = a5 + v19[13];
  v31 = 0;
  sub_24B2D4CC4();
  v23 = v33;
  *v22 = v32;
  *(v22 + 8) = v23;
  v24 = (a5 + v19[9]);
  *v24 = &unk_24B2E2AF8;
  v24[1] = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24B088C4C;
  *(v25 + 24) = v18;

  v27 = (a5 + v19[10]);
  *v27 = sub_24B088C54;
  v27[1] = v25;
  *(a5 + v19[11]) = 1;
  return result;
}

uint64_t sub_24B087E84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B087F1C, v4, v3);
}

uint64_t sub_24B087F1C()
{
  v4 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_24B088010;
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t sub_24B088010()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B088130, v3, v2);
}

uint64_t sub_24B088130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B088190(uint64_t a1)
{
  sub_24B00C9DC(a1);
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    sub_24AFFE0A4();
    return sub_24B2D4C54();
  }

  result = sub_24B2D6024();
  __break(1u);
  return result;
}

uint64_t sub_24B088294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9490);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = sub_24B039184(&qword_27EFC9498, &qword_27EFC9490);
  v27 = v6;
  v28 = a2;
  v23 = v9;
  v29 = v9;
  v30 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v22[-4] = a2;
  v22[-3] = a3;
  v22[-2] = v25;
  sub_24B2D4C34();
  type metadata accessor for ShareMenu();
  v18 = v23;
  sub_24B2D46C4();
  (*(v24 + 8))(v8, v6);
  v27 = v6;
  v28 = a2;
  v29 = v18;
  v30 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v11 + 8);
  v20(v14, OpaqueTypeMetadata2);
  sub_24B091A64(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20(v16, OpaqueTypeMetadata2);
}

uint64_t sub_24B088614@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();

  v4 = [v3 bundleForClass_];
  v5 = sub_24B2D45E4();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_24B088760@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BC4();

  *a1 = v2;
  return result;
}

unint64_t sub_24B08880C()
{
  result = qword_27EFC94A8;
  if (!qword_27EFC94A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94A0);
    sub_24B0888A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94A8);
  }

  return result;
}

unint64_t sub_24B0888A4()
{
  result = qword_27EFC94B0;
  if (!qword_27EFC94B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94B8);
    sub_24B08895C();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94B0);
  }

  return result;
}

unint64_t sub_24B08895C()
{
  result = qword_27EFC94C0;
  if (!qword_27EFC94C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94C8);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94C0);
  }

  return result;
}

uint64_t sub_24B088A3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ShareMenu() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24B087B90(a1, v8, v5, v6, a2);
}

unint64_t sub_24B088AD8()
{
  result = qword_27EFC94F0;
  if (!qword_27EFC94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94F0);
  }

  return result;
}

uint64_t sub_24B088B2C()
{
  v2 = *(type metadata accessor for ShareMenu() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFD370;

  return sub_24B087E84(v0 + v3, v4);
}

uint64_t sub_24B088C94@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a1 = v3;
  return result;
}

uint64_t sub_24B088D14(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_24B2D3224();
  return sub_24B00E490();
}

uint64_t sub_24B088D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D3EC4();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B2D3ED4();
}

uint64_t sub_24B088E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B2D3EC4();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B2D3ED4();
}

uint64_t sub_24B088F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9608);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-v2];
  sub_24B0891A4(&v10[-v2]);
  v5 = *(v0 + 4);
  *&v12 = *(v0 + 3);
  v4 = v12;
  *(&v12 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610);
  sub_24B2D4CF4();
  v6 = v11;
  v12 = *v0;
  v13 = *(v0 + 16);
  v14 = v4;
  v15 = v5;
  v7 = swift_allocObject();
  v8 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 4);
  sub_24B008890(&v12, v10, &qword_27EFC9618);
  sub_24B008890(&v14, v10, &qword_27EFC7E20);
  sub_24B008890(&v15, v10, &qword_27EFC9620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9628);
  sub_24B0907A0();
  sub_24B090FB4();
  sub_24B091008();
  sub_24B2D4944();

  sub_24B091114(v6);
  return sub_24AFF8258(v3, &qword_27EFC9608);
}

uint64_t sub_24B0891A4@<X0>(uint64_t a1@<X8>)
{
  v377 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48);
  MEMORY[0x28223BE20](v2 - 8);
  v308 = (&v294 - v3);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9770);
  MEMORY[0x28223BE20](v311);
  v313 = &v294 - v4;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9720);
  MEMORY[0x28223BE20](v324);
  v314 = &v294 - v5;
  v312 = type metadata accessor for RequestReceivedMessageView(0);
  MEMORY[0x28223BE20](v312);
  v309 = (&v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9778);
  MEMORY[0x28223BE20](v301);
  v303 = &v294 - v7;
  v8 = type metadata accessor for ShareSentMessageView.ShareState(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v297 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v295 = &v294 - v11;
  v302 = type metadata accessor for ShareSentMessageView(0);
  v12 = MEMORY[0x28223BE20](v302);
  v299 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v300 = &v294 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v296 = &v294 - v17;
  MEMORY[0x28223BE20](v16);
  v298 = &v294 - v18;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9708);
  MEMORY[0x28223BE20](v317);
  v304 = &v294 - v19;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9780);
  MEMORY[0x28223BE20](v321);
  v323 = &v294 - v20;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9788);
  MEMORY[0x28223BE20](v315);
  v316 = &v294 - v21;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96F0);
  MEMORY[0x28223BE20](v322);
  v318 = &v294 - v22;
  v319 = type metadata accessor for ShareReceivedMessageView(0);
  MEMORY[0x28223BE20](v319);
  v310 = &v294 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96E0);
  MEMORY[0x28223BE20](v361);
  v340 = &v294 - v24;
  v335 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  v305 = *(v335 - 8);
  v25 = MEMORY[0x28223BE20](v335);
  v307 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v342 = &v294 - v28;
  v306 = v29;
  MEMORY[0x28223BE20](v27);
  v334 = &v294 - v30;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9790);
  MEMORY[0x28223BE20](v359);
  v360 = &v294 - v31;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9798);
  MEMORY[0x28223BE20](v343);
  v345 = (&v294 - v32);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96C0);
  MEMORY[0x28223BE20](v358);
  v346 = &v294 - v33;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96B0);
  MEMORY[0x28223BE20](v376);
  v362 = (&v294 - v34);
  v344 = type metadata accessor for FullScreenLocationDetailView(0);
  MEMORY[0x28223BE20](v344);
  v330 = &v294 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = type metadata accessor for DetailsAppView.Style(0);
  v350 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v339 = (&v294 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97A0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v332 = &v294 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v329 = &v294 - v40;
  v41 = type metadata accessor for DetailsAppView.State(0);
  MEMORY[0x28223BE20](v41 - 8);
  v348 = &v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for DetailsAppView(0);
  v43 = MEMORY[0x28223BE20](v356);
  v331 = &v294 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v337 = &v294 - v45;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97A8);
  MEMORY[0x28223BE20](v353);
  v355 = &v294 - v46;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9690);
  MEMORY[0x28223BE20](v367);
  v357 = &v294 - v47;
  v328 = sub_24B2D4A54();
  v326 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v327 = &v294 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for QuickSendAppView(0);
  v49 = MEMORY[0x28223BE20](v354);
  v51 = &v294 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v336 = &v294 - v52;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9680);
  MEMORY[0x28223BE20](v352);
  v325 = (&v294 - v53);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97B0);
  MEMORY[0x28223BE20](v373);
  v375 = &v294 - v54;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97B8);
  MEMORY[0x28223BE20](v363);
  v365 = &v294 - v55;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97C0);
  MEMORY[0x28223BE20](v347);
  v349 = (&v294 - v56);
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9650);
  MEMORY[0x28223BE20](v364);
  v351 = &v294 - v57;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9640);
  MEMORY[0x28223BE20](v374);
  v366 = &v294 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v62 = &v294 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v64 = &v294 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97C8);
  v66 = MEMORY[0x28223BE20](v65 - 8);
  v320 = &v294 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v69 = &v294 - v68;
  v70 = type metadata accessor for CompositeAppViewState(0);
  v338 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v72 = (&v294 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = *v1;
  v73 = v1[1];
  v341 = v1;
  v75 = *(v1 + 16);
  v76 = type metadata accessor for CompositeAppViewModel();
  v77 = sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  v372 = v74;
  v371 = v73;
  v368 = v75;
  v370 = v76;
  v369 = v77;
  sub_24B2D33A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v118 = sub_24B2D33A4();
      v119 = sub_24B06765C();
      v120 = sub_24B066AB0();
      v121 = v120;
      v122 = &byte_285E483C8;
      v123 = qword_285E483B8;
      do
      {
        v124 = v123;
        _CF = v123-- != 0;
        if (!_CF)
        {
          break;
        }

        v126 = *v122++;
      }

      while (v126 != v119);
      v127 = &byte_285E483F0;
      v128 = qword_285E483E0;
      do
      {
        v129 = v128;
        _CF = v128-- != 0;
        if (!_CF)
        {
          break;
        }

        v130 = *v127++;
      }

      while (v130 != v120);
      sub_24B2D2AE4();
      v131 = MEMORY[0x24C2392B0]();
      v132 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
      swift_beginAccess();
      sub_24B008890(v118 + v132, v62, &qword_27EFC8A28);
      v133 = type metadata accessor for CompositeAppViewInitialInfo();
      if ((*(*(v133 - 8) + 48))(v62, 1, v133) == 1)
      {
        sub_24AFF8258(v62, &qword_27EFC8A28);
        v134 = 1;
      }

      else
      {
        v149 = v62[*(v133 + 32)];
        sub_24B0918BC(v62, type metadata accessor for CompositeAppViewInitialInfo);
        v134 = v149 | v131 ^ 1;
      }

      LODWORD(v362) = v134;
      LODWORD(v361) = v121 == 2;
      LODWORD(v360) = v129 != 0;
      v150 = v124 != 0;
      v151 = sub_24B05B038();

      v152 = sub_24B2D33A4();
      v153 = v354;
      v154 = &v51[*(v354 + 24)];
      *v154 = 0x4010000000000000;
      v155 = &v154[*(type metadata accessor for QuickSendAppView.Style(0) + 20)];
      v156 = *MEMORY[0x277CE0EE0];
      v157 = *(v326 + 104);
      swift_retain_n();
      v157(v327, v156, v328);
      swift_retain_n();
      v158 = sub_24B2D4B74();
      v159 = MEMORY[0x277CE0F60];
      v155[3] = MEMORY[0x277CE0F78];
      v155[4] = v159;
      *v155 = v158;
      sub_24B2D4394();
      sub_24B2D43D4();
      v160 = sub_24B2D4424();

      v161 = type metadata accessor for CustomControlStyle(0);
      v162 = v161[6];
      v163 = *MEMORY[0x277CE13B8];
      v164 = sub_24B2D50F4();
      (*(*(v164 - 8) + 104))(v155 + v162, v163, v164);
      *&v383 = sub_24B0AAFB8;
      *(&v383 + 1) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
      sub_24B2D1A94();
      v165 = v161[8];
      v166 = *MEMORY[0x277CDF440];
      v167 = sub_24B2D3364();
      (*(*(v167 - 8) + 104))(v155 + v165, v166, v167);
      type metadata accessor for CustomControlStyle.BackgroundSize(0);
      swift_storeEnumTagMultiPayload();
      v155[5] = v160;
      *(v155 + v161[9]) = 3;
      *(v155 + v161[10]) = 0;
      v168 = v155 + v161[11];
      *v168 = 0;
      v168[8] = 1;
      v169 = &v51[*(v153 + 28)];
      type metadata accessor for MKCoordinateRegion(0);
      v378 = 0u;
      v379 = 0u;
      sub_24B2D4CC4();
      v170 = v385;
      v171 = v384;
      *v169 = v383;
      *(v169 + 1) = v171;
      *(v169 + 4) = v170;
      LOBYTE(v170) = v362 & 1;
      *v51 = v362 & 1;
      v51[1] = v150;
      v51[2] = v360;
      v51[3] = v361;
      v51[4] = v151 & 1;
      *(v51 + 1) = &unk_24B2E2FB8;
      *(v51 + 2) = v152;
      *(v51 + 3) = sub_24B091A74;
      *(v51 + 4) = v152;
      *(v51 + 5) = sub_24B091A68;
      *(v51 + 6) = v152;
      *(v51 + 7) = sub_24B05EE80;
      *(v51 + 8) = 0;
      *(v51 + 9) = sub_24B091A6C;
      *(v51 + 10) = v152;
      *(v51 + 11) = &unk_24B2E2FC0;
      *(v51 + 12) = v152;
      *(v51 + 13) = &unk_24B2E2FC8;
      *(v51 + 14) = v152;
      *(v51 + 15) = &unk_24B2E2FD0;
      *(v51 + 16) = v152;
      *(v51 + 17) = sub_24B091A70;
      *(v51 + 18) = v152;
      v172 = &v51[*(v153 + 32)];
      *v172 = v170;
      *(v172 + 1) = 0;
      v173 = v51;
      v87 = v336;
      sub_24B09191C(v173, v336, type metadata accessor for QuickSendAppView);
      sub_24B091854(v87, v355, type metadata accessor for QuickSendAppView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView);
      sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView);
      v174 = v357;
      sub_24B2D3ED4();
      sub_24B008890(v174, v365, &qword_27EFC9690);
      swift_storeEnumTagMultiPayload();
      sub_24B0908B8();
      sub_24B090A20();
      v175 = v366;
      sub_24B2D3ED4();
      sub_24AFF8258(v174, &qword_27EFC9690);
      sub_24B008890(v175, v375, &qword_27EFC9640);
      swift_storeEnumTagMultiPayload();
      sub_24B09082C();
      sub_24B090B0C();
      sub_24B2D3ED4();
      sub_24AFF8258(v175, &qword_27EFC9640);
      v94 = type metadata accessor for QuickSendAppView;
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_24B2D33A4();
      v87 = v330;
      sub_24B064D40(v330);

      v88 = sub_24B2D33A4();
      v89 = v344;
      *&v87[*(v344 + 20)] = 0;
      v90 = &v87[*(v89 + 24)];
      *v90 = &unk_24B2E2F40;
      *(v90 + 1) = v88;
      *(v90 + 2) = sub_24B091A74;
      *(v90 + 3) = v88;
      *(v90 + 4) = sub_24B091A68;
      *(v90 + 5) = v88;
      *(v90 + 6) = sub_24B05EE80;
      *(v90 + 7) = 0;
      *(v90 + 8) = sub_24B091A6C;
      *(v90 + 9) = v88;
      *(v90 + 10) = &unk_24B2E2F48;
      *(v90 + 11) = v88;
      *(v90 + 12) = &unk_24B2E2F50;
      *(v90 + 13) = v88;
      *(v90 + 14) = &unk_24B2E2F58;
      *(v90 + 15) = v88;
      *(v90 + 16) = sub_24B091A70;
      *(v90 + 17) = v88;
      v91 = *(v89 + 28);
      swift_retain_n();
      *&v87[v91] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
      swift_storeEnumTagMultiPayload();
      sub_24B091854(v87, v345, type metadata accessor for FullScreenLocationDetailView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView);
      sub_24B090C54();
      swift_retain_n();
      v92 = v346;
      sub_24B2D3ED4();
      sub_24B008890(v92, v360, &qword_27EFC96C0);
      swift_storeEnumTagMultiPayload();
      sub_24B090B98();
      sub_24B090CA8();
      v93 = v362;
      sub_24B2D3ED4();
      sub_24AFF8258(v92, &qword_27EFC96C0);
      sub_24B008890(v93, v375, &qword_27EFC96B0);
      swift_storeEnumTagMultiPayload();
      sub_24B09082C();
      sub_24B090B0C();
      sub_24B2D3ED4();
      sub_24AFF8258(v93, &qword_27EFC96B0);
      v94 = type metadata accessor for FullScreenLocationDetailView;
LABEL_32:
      v176 = v94;
      v177 = v87;
      return sub_24B0918BC(v177, v176);
    }

    v142 = sub_24B2D33A4();
    v143 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
    swift_beginAccess();
    sub_24B008890(v142 + v143, v64, &qword_27EFC8A28);

    v144 = type metadata accessor for CompositeAppViewInitialInfo();
    if ((*(*(v144 - 8) + 48))(v64, 1, v144) == 1)
    {
      sub_24AFF8258(v64, &qword_27EFC8A28);
      (*(v338 + 56))(v69, 1, 1, v70);
      sub_24AFF8258(v69, &qword_27EFC97C8);
    }

    else
    {
      sub_24B091854(&v64[*(v144 + 28)], v69, type metadata accessor for CompositeAppViewState);
      sub_24B0918BC(v64, type metadata accessor for CompositeAppViewInitialInfo);
      (*(v338 + 56))(v69, 0, 1, v70);
      v188 = v320;
      sub_24B0391CC(v69, v320, &qword_27EFC97C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for FindMyUICore();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v190 = [objc_opt_self() bundleForClass_];
        v191 = sub_24B2D5374();
        v192 = [v190 localizedStringForKey:v191 value:0 table:0];

        v193 = sub_24B2D5394();
        v195 = v194;

        LOBYTE(v399) = 0;
        v383 = 0uLL;
        *&v384 = v193;
        *(&v384 + 1) = v195;
        *&v385 = sub_24AFFAA8C;
        *(&v385 + 1) = 0;
        LODWORD(v386) = 0x800000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
        sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
        sub_24B2D3ED4();
        sub_24B0918BC(v188, type metadata accessor for CompositeAppViewState);
        v383 = v378;
        v384 = v379;
        v385 = v380;
        LODWORD(v386) = v381;
LABEL_44:
        v209 = v384;
        v210 = v349;
        *v349 = v383;
        v210[1] = v209;
        v210[2] = v385;
        *(v210 + 12) = v386;
        swift_storeEnumTagMultiPayload();
        sub_24B008890(&v383, &v378, &qword_27EFC9660);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660);
        sub_24B090970();
        sub_24B039184(&qword_27EFC9678, &qword_27EFC9680);
        v211 = v351;
        sub_24B2D3ED4();
        sub_24B008890(v211, v365, &qword_27EFC9650);
        swift_storeEnumTagMultiPayload();
        sub_24B0908B8();
        sub_24B090A20();
        v212 = v366;
        sub_24B2D3ED4();
        sub_24AFF8258(v211, &qword_27EFC9650);
        sub_24B008890(v212, v375, &qword_27EFC9640);
        swift_storeEnumTagMultiPayload();
        sub_24B09082C();
        sub_24B090B0C();
        sub_24B2D3ED4();
        sub_24AFF8258(&v383, &qword_27EFC9660);
        return sub_24AFF8258(v212, &qword_27EFC9640);
      }

      sub_24B0918BC(v188, type metadata accessor for CompositeAppViewState);
    }

    type metadata accessor for FindMyUICore();
    v202 = swift_getObjCClassFromMetadata();
    v203 = [objc_opt_self() bundleForClass_];
    v204 = sub_24B2D5374();
    v205 = [v203 localizedStringForKey:v204 value:0 table:0];

    v206 = sub_24B2D5394();
    v208 = v207;

    LOBYTE(v399) = 1;
    v378 = 0uLL;
    *&v379 = v206;
    *(&v379 + 1) = v208;
    *&v380 = sub_24AFFAA8C;
    *(&v380 + 1) = 0;
    v381 = 25231360;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    sub_24B2D3ED4();
    goto LABEL_44;
  }

  if (!EnumCaseMultiPayload)
  {
    v361 = *v72;
    sub_24B2D33A4();
    sub_24B064D40(v348);

    v95 = sub_24B2D33A4();
    v96 = *(v350 + 56);
    swift_retain_n();
    v97 = v329;
    v98 = v333;
    v96(v329, 1, 1, v333);
    v99 = v341;
    v100 = v341[4];
    *&v378 = v341[3];
    v382 = v100;
    v101 = swift_allocObject();
    v102 = *(v99 + 1);
    *(v101 + 16) = *v99;
    *(v101 + 32) = v102;
    v103 = v99[4];
    v104 = v361;
    v362 = v101;
    *(v101 + 48) = v103;
    *(v101 + 56) = v104;
    swift_retain_n();
    sub_24B09159C();
    sub_24B008890(&v378, &v383, &qword_27EFC7E20);
    sub_24B008890(&v382, &v383, &qword_27EFC9620);
    sub_24B2D33A4();
    LODWORD(v372) = sub_24B05B038();

    v105 = v356;
    v106 = v331;
    v107 = &v331[*(v356 + 40)];
    LOBYTE(v399) = 1;
    sub_24B2D4CC4();
    v108 = *(&v383 + 1);
    *v107 = v383;
    *(v107 + 1) = v108;
    v109 = v106 + v105[11];
    LOBYTE(v399) = 1;
    v110 = v348;
    sub_24B2D4CC4();
    v111 = *(&v383 + 1);
    *v109 = v383;
    *(v109 + 1) = v111;
    v112 = v350;
    *v106 = v104;
    sub_24B091854(v110, v106 + v105[5], type metadata accessor for DetailsAppView.State);
    v113 = (v106 + v105[6]);
    *v113 = &unk_24B2E2F98;
    v113[1] = v95;
    v113[2] = sub_24B091A74;
    v113[3] = v95;
    v113[4] = sub_24B091A68;
    v113[5] = v95;
    v113[6] = sub_24B05EE80;
    v113[7] = 0;
    v113[8] = sub_24B091A6C;
    v113[9] = v95;
    v113[10] = &unk_24B2E2FA0;
    v113[11] = v95;
    v113[12] = &unk_24B2E2FA8;
    v113[13] = v95;
    v113[14] = &unk_24B2E2FB0;
    v113[15] = v95;
    v113[16] = sub_24B091A70;
    v113[17] = v95;
    v114 = v332;
    sub_24B008890(v97, v332, &qword_27EFC97A0);
    v115 = *(v112 + 48);
    if (v115(v114, 1, v98) == 1)
    {
      v116 = v110;
      v117 = v339;
      sub_24B09338C((v104 & 0x40) != 0, v339);
      sub_24AFF8258(v97, &qword_27EFC97A0);
      sub_24B0918BC(v116, type metadata accessor for DetailsAppView.State);
      if (v115(v114, 1, v98) != 1)
      {
        sub_24AFF8258(v114, &qword_27EFC97A0);
      }
    }

    else
    {
      sub_24AFF8258(v97, &qword_27EFC97A0);
      sub_24B0918BC(v110, type metadata accessor for DetailsAppView.State);
      v117 = v339;
      sub_24B09191C(v114, v339, type metadata accessor for DetailsAppView.Style);
    }

    sub_24B09191C(v117, v106 + v105[7], type metadata accessor for DetailsAppView.Style);
    v145 = (v106 + v105[8]);
    v146 = v362;
    *v145 = sub_24B091848;
    v145[1] = v146;
    *(v106 + v105[9]) = v372 & 1;
    v87 = v337;
    sub_24B09191C(v106, v337, type metadata accessor for DetailsAppView);
    sub_24B091854(v87, v355, type metadata accessor for DetailsAppView);
    swift_storeEnumTagMultiPayload();
    sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView);
    sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView);
    v147 = v357;
    sub_24B2D3ED4();
    sub_24B008890(v147, v365, &qword_27EFC9690);
    swift_storeEnumTagMultiPayload();
    sub_24B0908B8();
    sub_24B090A20();
    v148 = v366;
    sub_24B2D3ED4();
    sub_24AFF8258(v147, &qword_27EFC9690);
    sub_24B008890(v148, v375, &qword_27EFC9640);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v148, &qword_27EFC9640);
    v94 = type metadata accessor for DetailsAppView;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v135 = sub_24B2D5064();
    v136 = v325;
    *v325 = v135;
    *(v136 + 8) = v137;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E8);
    sub_24B08E010(v136 + *(v138 + 44));
    sub_24B008890(v136, v349, &qword_27EFC9680);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660);
    sub_24B090970();
    sub_24B039184(&qword_27EFC9678, &qword_27EFC9680);
    v139 = v351;
    sub_24B2D3ED4();
    sub_24B008890(v139, v365, &qword_27EFC9650);
    swift_storeEnumTagMultiPayload();
    sub_24B0908B8();
    sub_24B090A20();
    v140 = v366;
    sub_24B2D3ED4();
    sub_24AFF8258(v139, &qword_27EFC9650);
    sub_24B008890(v140, v375, &qword_27EFC9640);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v140, &qword_27EFC9640);
    return sub_24AFF8258(v136, &qword_27EFC9680);
  }

  v79 = v334;
  sub_24B091854(v72, v334, type metadata accessor for CompositeAppViewState.TranscriptInfo);
  v80 = v335;
  if (*(v79 + *(v335 + 52)))
  {
    sub_24B0918BC(v79, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v81 = v342;
    sub_24B09191C(v72, v342, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v82 = v81 + v80[10];
    if (*(v82 + 8) == 2)
    {
      if (*(v81 + v80[8]))
      {
        v83 = v308;
        CompositeAppViewState.TranscriptInfo.singleRecipient.getter(v308);
        v84 = type metadata accessor for Friend();
        if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
        {
          sub_24AFF8258(v83, &qword_27EFC8A48);
          v85 = 0;
          v86 = 0;
        }

        else
        {
          v85 = *v83;
          v86 = v83[1];

          sub_24B0918BC(v83, type metadata accessor for Friend);
        }

        v259 = *(v81 + v80[9]);
        v260 = v313;
        *v313 = 0;
        *(v260 + 1) = v85;
        *(v260 + 2) = v86;
        v260[24] = v259;
        swift_storeEnumTagMultiPayload();
        sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView);
        sub_24B090F60();
        v261 = v314;
        sub_24B2D3ED4();
        sub_24B008890(v261, v323, &qword_27EFC9720);
        swift_storeEnumTagMultiPayload();
        sub_24B090D34();
        sub_24B090EA4();
        sub_24B2D3ED4();
        sub_24AFF8258(v261, &qword_27EFC9720);
        goto LABEL_57;
      }

      v213 = (v81 + v80[6]);
      v214 = v213[1];
      v367 = *v213;
      v366 = v214;

      sub_24B2D33A4();
      v215 = v80[11];
      v216 = sub_24AFF2D64();
      LOBYTE(v215) = sub_24B0683AC(v213, v81 + v215, v216, v217);

      v218 = sub_24B2D33A4();
      v219 = v341;
      v220 = v341[4];
      *&v378 = v341[3];
      v382 = v220;
      v221 = swift_allocObject();
      v222 = *(v219 + 1);
      *(v221 + 16) = *v219;
      *(v221 + 32) = v222;
      *(v221 + 48) = v219[4];
      v223 = v309;
      v224 = v366;
      *v309 = v367;
      *(v223 + 8) = v224;
      *(v223 + 16) = v215;
      v225 = v312;
      v226 = *(v312 + 24);
      swift_retain_n();
      sub_24B09159C();

      sub_24B008890(&v378, &v383, &qword_27EFC7E20);
      sub_24B008890(&v382, &v383, &qword_27EFC9620);
      sub_24B0ADFA0((v223 + v226));
      v227 = (v223 + v225[7]);
      *v227 = &unk_24B2E2E40;
      v227[1] = v218;
      v227[2] = sub_24B09140C;
      v227[3] = v218;
      v227[4] = sub_24B091414;
      v227[5] = v218;
      v227[6] = sub_24B05EE80;
      v227[7] = 0;
      v227[8] = sub_24B09141C;
      v227[9] = v218;
      v227[10] = &unk_24B2E3940;
      v227[11] = v218;
      v227[12] = &unk_24B2E2E50;
      v227[13] = v218;
      v227[14] = &unk_24B2E3950;
      v227[15] = v218;
      v227[16] = sub_24B0914FC;
      v227[17] = v218;
      v228 = v223 + v225[8];
      LOBYTE(v399) = 0;
      sub_24B2D4CC4();
      v229 = *(&v383 + 1);
      *v228 = v383;
      *(v228 + 8) = v229;
      v230 = (v223 + v225[9]);
      *v230 = &unk_24B2E2E68;
      v230[1] = v221;
      sub_24B091854(v223, v313, type metadata accessor for RequestReceivedMessageView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView);
      sub_24B090F60();
      v231 = v314;
      sub_24B2D3ED4();
      sub_24B008890(v231, v323, &qword_27EFC9720);
      swift_storeEnumTagMultiPayload();
      sub_24B090D34();
      sub_24B090EA4();
      sub_24B2D3ED4();
      sub_24AFF8258(v231, &qword_27EFC9720);
      v232 = type metadata accessor for RequestReceivedMessageView;
      v233 = v223;
    }

    else
    {
      if (*(v81 + v80[8]))
      {
        v196 = *v82;
        v197 = *(v81 + v80[9]);
        sub_24B2D33A4();
        if (v197 == 1)
        {
          v198 = v295;
          sub_24B063DB8(v196, v295);

          v199 = *(sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);

          v200 = v304;
          if (v199)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_24B2D3214();

            v201 = v383;
          }

          else
          {
            v201 = 0;
          }

          v269 = sub_24B2D33A4();
          *&v383 = &unk_24B2E2ED8;
          *(&v383 + 1) = v269;
          *&v384 = sub_24B091A74;
          *(&v384 + 1) = v269;
          *&v385 = sub_24B091A68;
          *(&v385 + 1) = v269;
          v386 = sub_24B05EE80;
          v387 = 0;
          v388 = sub_24B091A6C;
          v389 = v269;
          v390 = &unk_24B2E2EE0;
          v391 = v269;
          v392 = &unk_24B2E2EE8;
          v393 = v269;
          v394 = &unk_24B2E2EF0;
          v395 = v269;
          v396 = sub_24B091A70;
          v397 = v269;
          swift_retain_n();
          sub_24B0916DC(&v383);
          v270 = v296;
          sub_24B09191C(v198, v296, type metadata accessor for ShareSentMessageView.ShareState);
          v271 = v302;
          *(v270 + *(v302 + 20)) = v201;
          v272 = (v270 + v271[6]);
          *v272 = &unk_24B2E2EF0;
          v272[1] = v269;
          v273 = (v270 + v271[7]);
          *v273 = nullsub_1;
          v273[1] = 0;
          v274 = v270 + v271[8];
          *v274 = 0;
          *(v274 + 8) = xmmword_24B2E2B10;
          *(v274 + 24) = 0x4038000000000000;
          v275 = v270 + v271[9];
          LOBYTE(v382) = 0;
          sub_24B2D4CC4();
          v276 = *(&v378 + 1);
          *v275 = v378;
          *(v275 + 8) = v276;
          v277 = v298;
          sub_24B09191C(v270, v298, type metadata accessor for ShareSentMessageView);
          sub_24B091854(v277, v303, type metadata accessor for ShareSentMessageView);
          swift_storeEnumTagMultiPayload();
          sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView);
        }

        else
        {
          v367 = *(v81 + v80[7]);
          v262 = v80[11];
          v263 = sub_24AFF2D64();
          v264 = v81 + v262;
          v265 = v297;
          sub_24B0640B8(v367, v264, v263, v266, v297);

          v267 = *(sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);

          if (v267)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_24B2D3214();

            v268 = v383;
          }

          else
          {
            v268 = 0;
          }

          v278 = sub_24B2D33A4();
          *&v383 = &unk_24B2E2E70;
          *(&v383 + 1) = v278;
          *&v384 = sub_24B091A74;
          *(&v384 + 1) = v278;
          *&v385 = sub_24B091A68;
          *(&v385 + 1) = v278;
          v386 = sub_24B05EE80;
          v387 = 0;
          v388 = sub_24B091A6C;
          v389 = v278;
          v390 = &unk_24B2E2E78;
          v391 = v278;
          v392 = &unk_24B2E2E80;
          v393 = v278;
          v394 = &unk_24B2E2E88;
          v395 = v278;
          v396 = sub_24B091A70;
          v397 = v278;
          swift_retain_n();
          sub_24B0916DC(&v383);
          v279 = v341;
          v280 = v341[4];
          v382 = v341[3];
          v399 = v280;
          v281 = swift_allocObject();
          v282 = *(v279 + 1);
          *(v281 + 16) = *v279;
          *(v281 + 32) = v282;
          *(v281 + 48) = v279[4];
          v283 = v265;
          v284 = v299;
          sub_24B09191C(v283, v299, type metadata accessor for ShareSentMessageView.ShareState);
          v285 = v302;
          *(v284 + *(v302 + 20)) = v268;
          v286 = (v284 + v285[6]);
          *v286 = &unk_24B2E2E88;
          v286[1] = v278;
          v287 = (v284 + v285[7]);
          *v287 = sub_24B091730;
          v287[1] = v281;
          v288 = v284 + v285[8];
          *v288 = 0;
          *(v288 + 8) = xmmword_24B2E2B10;
          *(v288 + 24) = 0x4038000000000000;
          v289 = v284 + v285[9];
          LOBYTE(v398) = 0;
          sub_24B09159C();
          sub_24B008890(&v382, &v378, &qword_27EFC7E20);
          sub_24B008890(&v399, &v378, &qword_27EFC9620);
          sub_24B2D4CC4();
          v290 = *(&v378 + 1);
          *v289 = v378;
          *(v289 + 8) = v290;
          v277 = v300;
          sub_24B09191C(v284, v300, type metadata accessor for ShareSentMessageView);
          sub_24B091854(v277, v303, type metadata accessor for ShareSentMessageView);
          swift_storeEnumTagMultiPayload();
          sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView);
          v200 = v304;
        }

        sub_24B2D3ED4();
        sub_24B0918BC(v277, type metadata accessor for ShareSentMessageView);
        sub_24B008890(v200, v316, &qword_27EFC9708);
        swift_storeEnumTagMultiPayload();
        sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView);
        sub_24B090DF0();
        v291 = v318;
        sub_24B2D3ED4();
        sub_24B008890(v291, v323, &qword_27EFC96F0);
        swift_storeEnumTagMultiPayload();
        sub_24B090D34();
        sub_24B090EA4();
        sub_24B2D3ED4();
        sub_24AFF8258(v291, &qword_27EFC96F0);
        sub_24AFF8258(v200, &qword_27EFC9708);
        v81 = v342;
        goto LABEL_57;
      }

      v234 = v80[6];
      v235 = v310;
      sub_24B091854(v81 + v234, v310, type metadata accessor for Friend);
      sub_24B2D33A4();
      v236 = v80[11];
      v237 = sub_24AFF2D64();
      sub_24B062D54(v342 + v234, v342 + v236, v237, v238, v235 + *(v319 + 20));

      v239 = sub_24B2D33A4();
      v240 = v341;
      v241 = v341[4];
      *&v378 = v341[3];
      v382 = v241;
      swift_retain_n();
      v242 = v307;
      sub_24B091854(v342, v307, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      v243 = (*(v305 + 80) + 56) & ~*(v305 + 80);
      v244 = swift_allocObject();
      v245 = *(v240 + 1);
      *(v244 + 16) = *v240;
      *(v244 + 32) = v245;
      *(v244 + 48) = v240[4];
      sub_24B09191C(v242, v244 + v243, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      swift_retain_n();
      sub_24B09159C();

      sub_24B008890(&v378, &v383, &qword_27EFC7E20);
      sub_24B008890(&v382, &v383, &qword_27EFC9620);
      sub_24B2D33B4();
      swift_getKeyPath();
      sub_24B2D3654();

      v246 = v383;
      v247 = v384;
      v248 = v319;
      v249 = v310;
      v250 = (v310 + *(v319 + 24));
      *v250 = &unk_24B2E2EF8;
      v250[1] = v239;
      v250[2] = sub_24B091A74;
      v250[3] = v239;
      v250[4] = sub_24B091A68;
      v250[5] = v239;
      v250[6] = sub_24B05EE80;
      v250[7] = 0;
      v250[8] = sub_24B091A6C;
      v250[9] = v239;
      v250[10] = &unk_24B2E2F00;
      v250[11] = v239;
      v250[12] = &unk_24B2E2F08;
      v250[13] = v239;
      v250[14] = &unk_24B2E2F10;
      v250[15] = v239;
      v250[16] = sub_24B091A70;
      v250[17] = v239;
      v251 = (v249 + v248[7]);
      *v251 = sub_24B091784;
      v251[1] = v244;
      v252 = v249 + v248[8];
      *v252 = 0;
      __asm { FMOV            V0.2D, #14.0 }

      *(v252 + 8) = _Q0;
      *(v252 + 24) = xmmword_24B2E2B00;
      *(v252 + 40) = 0x404B000000000000;
      v257 = v249 + v248[9];
      *v257 = v246;
      *(v257 + 16) = v247;
      sub_24B091854(v249, v316, type metadata accessor for ShareReceivedMessageView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView);
      sub_24B090DF0();
      v258 = v318;
      sub_24B2D3ED4();
      sub_24B008890(v258, v323, &qword_27EFC96F0);
      swift_storeEnumTagMultiPayload();
      sub_24B090D34();
      sub_24B090EA4();
      sub_24B2D3ED4();
      sub_24AFF8258(v258, &qword_27EFC96F0);
      v232 = type metadata accessor for ShareReceivedMessageView;
      v233 = v249;
    }

    v81 = v342;
    sub_24B0918BC(v233, v232);
LABEL_57:
    v292 = v340;
    sub_24B008890(v340, v360, &qword_27EFC96E0);
    swift_storeEnumTagMultiPayload();
    sub_24B090B98();
    sub_24B090CA8();
    v293 = v362;
    sub_24B2D3ED4();
    sub_24B008890(v293, v375, &qword_27EFC96B0);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v293, &qword_27EFC96B0);
    sub_24AFF8258(v292, &qword_27EFC96E0);
    v176 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
    v177 = v81;
    return sub_24B0918BC(v177, v176);
  }

  v178 = v79 + *(v335 + 40);
  v179 = *v178;
  LOWORD(v178) = *(v178 + 8);
  *&v378 = v179;
  WORD4(v378) = v178;
  v180 = sub_24AFF2C7C();
  sub_24B0C03D8(v180, v181, *(v79 + v80[8]), &v383);
  v182 = v384;
  v378 = v383;
  v183 = v385;
  v398 = v385;
  v399 = *(&v384 + 1);
  v184 = v345;
  *v345 = v383;
  v184[1] = v182;
  *(v184 + 4) = v183;
  swift_storeEnumTagMultiPayload();
  sub_24B0912CC(&v378, &v382);
  sub_24B008890(&v399, &v382, &qword_27EFC97D0);
  sub_24B008890(&v398, &v382, &qword_27EFC97D8);
  sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView);
  sub_24B090C54();
  v185 = v79;
  v186 = v346;
  sub_24B2D3ED4();
  sub_24B008890(v186, v360, &qword_27EFC96C0);
  swift_storeEnumTagMultiPayload();
  sub_24B090B98();
  sub_24B090CA8();
  v187 = v362;
  sub_24B2D3ED4();
  sub_24AFF8258(v186, &qword_27EFC96C0);
  sub_24B008890(v187, v375, &qword_27EFC96B0);
  swift_storeEnumTagMultiPayload();
  sub_24B09082C();
  sub_24B090B0C();
  sub_24B2D3ED4();
  sub_24B091328(&v378);
  sub_24AFF8258(&v399, &qword_27EFC97D0);
  sub_24AFF8258(&v398, &qword_27EFC97D8);
  sub_24AFF8258(v187, &qword_27EFC96B0);
  sub_24B0918BC(v185, type metadata accessor for CompositeAppViewState.TranscriptInfo);
  v177 = v72;
  v176 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
  return sub_24B0918BC(v177, v176);
}

uint64_t sub_24B08D388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9758);
  v70 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v69 = &v67 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9760);
  MEMORY[0x28223BE20](v80);
  v81 = (&v67 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9628);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v67 - v6;
  v78 = sub_24B2D12F4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = (&v67 - v19);
  v75 = *a1;
  sub_24B2D5694();
  v79 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CompositeAppViewModel();
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  v20 = sub_24B2D33A4();
  v21 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v20 + v21, v17, &qword_27EFC8A28);

  v22 = type metadata accessor for CompositeAppViewInitialInfo();
  v71 = *(*(v22 - 1) + 48);
  if (v71(v17, 1, v22) == 1)
  {
    sub_24AFF8258(v17, &qword_27EFC8A28);
    v23 = sub_24B2D1704();
    (*(*(v23 - 8) + 56))(v87, 1, 1, v23);
  }

  else
  {
    sub_24B008890(v17, v87, &qword_27EFC7880);
    sub_24B0918BC(v17, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v24 = sub_24B2D33A4();
  v25 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v24 + v25, v15, &qword_27EFC8A28);

  v26 = v71;
  if (v71(v15, 1, v22) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFC8A28);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v27 = &v15[v22[5]];
    v28 = v27[1];
    v73 = *v27;
    v74 = v28;

    sub_24B0918BC(v15, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v29 = sub_24B2D33A4();
  v30 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  v31 = v29 + v30;
  v32 = v85;
  sub_24B008890(v31, v85, &qword_27EFC8A28);

  if (v26(v32, 1, v22) == 1)
  {
    sub_24AFF8258(v32, &qword_27EFC8A28);
    v72 = MEMORY[0x277D84F90];
  }

  else
  {
    v72 = *(v32 + v22[6]);

    sub_24B0918BC(v32, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v33 = sub_24B2D33A4();
  v34 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  v35 = v33 + v34;
  v36 = v86;
  sub_24B008890(v35, v86, &qword_27EFC8A28);

  if (v26(v36, 1, v22) == 1)
  {
    sub_24AFF8258(v36, &qword_27EFC8A28);
    v68 = 1;
  }

  else
  {
    v68 = *(v36 + v22[8]);
    sub_24B0918BC(v36, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v37 = sub_24B2D33A4();
  v38 = *(v37 + 32);
  v67 = *(v37 + 24);

  v39 = (sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler);
  v40 = *v39;
  v85 = v39[1];
  v86 = v40;
  sub_24AFD5880(v40);

  v41 = sub_24B2D33A4();
  v42 = *(v41 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler + 8);
  v71 = *(v41 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler);
  sub_24AFD5880(v71);

  v43 = v77;
  v44 = *(v77 + 104);
  v45 = v76;
  v46 = v78;
  v44(v76, *MEMORY[0x277D08AD8], v78);
  sub_24B091168(&qword_27EFC8118, MEMORY[0x277D08AF0]);
  v47 = sub_24B2D2644();
  v48 = *(v43 + 8);
  v48(v45, v46);
  v44(v45, *MEMORY[0x277D08AE0], v46);
  v49 = sub_24B2D2644();
  v50 = (v48)(v45, v46);
  if ((v49 & 1) == 0)
  {
    v51 = v82;
    v52 = v87;
    if ((v47 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:

    v63 = sub_24B0A2A04(v62, v73, v74, v72);
    v64 = v81;
    *v81 = v63;
    v64[1] = v65;
    swift_storeEnumTagMultiPayload();
    sub_24B0910C0();
    sub_24B039184(&qword_27EFC9750, &qword_27EFC9758);

    sub_24B2D3ED4();
    sub_24AFD5890(v71);
    sub_24AFD5890(v86);

    goto LABEL_20;
  }

  v50 = sub_24B2D5014();
  v51 = v82;
  v52 = v87;
  if ((v47 | v50))
  {
    goto LABEL_19;
  }

LABEL_17:
  v87 = &v67;
  MEMORY[0x28223BE20](v50);
  *(&v67 - 12) = v75;
  *(&v67 - 11) = v52;
  v53 = v52;
  v54 = v74;
  *(&v67 - 10) = v73;
  *(&v67 - 9) = v54;
  *(&v67 - 8) = v72;
  *(&v67 - 56) = v68;
  *&v55 = v67;
  *(&v55 + 1) = v38;
  *&v56 = v86;
  *(&v56 + 1) = v85;
  *(&v67 - 3) = v55;
  *(&v67 - 2) = v56;
  v57 = v42;
  v58 = v71;
  *(&v67 - 2) = v71;
  *(&v67 - 1) = v57;
  type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  sub_24B091168(&qword_27EFC9768, type metadata accessor for FullScreenLocationDetailViewStandalone);
  v59 = v69;
  sub_24B2D37C4();

  v52 = v53;

  v60 = v70;
  v61 = v83;
  (*(v70 + 16))(v81, v59, v83);
  swift_storeEnumTagMultiPayload();
  sub_24B0910C0();
  sub_24B039184(&qword_27EFC9750, &qword_27EFC9758);
  sub_24B2D3ED4();
  sub_24AFD5890(v58);
  sub_24AFD5890(v86);
  (*(v60 + 8))(v59, v61);
LABEL_20:
  sub_24B0391CC(v51, v84, &qword_27EFC9628);
  sub_24AFF8258(v52, &qword_27EFC7880);
}

uint64_t sub_24B08E010@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97F0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D33E4();
  sub_24B2D5064();
  sub_24B2D3904();
  v8 = &v7[*(v2 + 36)];
  v9 = v14[5];
  *(v8 + 4) = v14[4];
  *(v8 + 5) = v9;
  *(v8 + 6) = v14[6];
  v10 = v14[1];
  *v8 = v14[0];
  *(v8 + 1) = v10;
  v11 = v14[3];
  *(v8 + 2) = v14[2];
  *(v8 + 3) = v11;
  sub_24B008890(v7, v5, &qword_27EFC97F0);
  *a1 = 1;
  *(a1 + 8) = 256;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97F8);
  sub_24B008890(v5, a1 + *(v12 + 48), &qword_27EFC97F0);
  sub_24AFF8258(v7, &qword_27EFC97F0);
  sub_24AFF8258(v5, &qword_27EFC97F0);
}

void sub_24B08E220(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_24B2D22D4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for CompositeAppViewInitialInfo();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  type metadata accessor for CompositeAppViewModel();
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  v27[1] = v13;
  v27[2] = v12;
  v14 = sub_24B2D33A4();
  v15 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v14 + v15, v7, &qword_27EFC8A28);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24AFF8258(v7, &qword_27EFC8A28);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v16 = sub_24B2D3184();
    __swift_project_value_buffer(v16, qword_27EFE4418);
    v17 = sub_24B2D3164();
    v18 = sub_24B2D5914();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_24AFF321C(1702060386, 0xE400000000000000, v33);
      _os_log_impl(&dword_24AFD2000, v17, v18, "CompositeAppViewModel: %s - Can't run action with no initialInfo", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C23D530](v20, -1, -1);
      MEMORY[0x24C23D530](v19, -1, -1);
    }
  }

  else
  {
    sub_24B09191C(v7, v11, type metadata accessor for CompositeAppViewInitialInfo);
    if ((v31 & 0x10) != 0)
    {
      v26 = *&v11[*(v8 + 24)];
      *v33 = *(a1 + 3);
      v32 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610);
      sub_24B2D4CE4();
    }

    else if ((v31 & 0x20) != 0)
    {
      sub_24B2D33A4();

      v21 = v28;
      sub_24B00CDE8(*&v11[*(v8 + 24)], 0, 0, v28);
      v22 = [objc_opt_self() defaultWorkspace];
      if (v22)
      {
        v23 = v22;
        v24 = sub_24B2D2294();
        v25 = sub_24B2D51D4();
        [v23 openSensitiveURL:v24 withOptions:v25];
      }

      (*(v29 + 8))(v21, v30);
    }

    sub_24B0918BC(v11, type metadata accessor for CompositeAppViewInitialInfo);
  }
}

uint64_t sub_24B08E6F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978);
  v3 = *(type metadata accessor for Friend() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DE430;
  v6 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  sub_24B091854(a2 + *(v6 + 24), v5 + v4, type metadata accessor for Friend);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610);
  return sub_24B2D4CE4();
}

uint64_t sub_24B08E80C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a1 = v3;
  return result;
}

uint64_t sub_24B08E8B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B08E94C, v4, v3);
}

uint64_t sub_24B08E94C()
{
  type metadata accessor for CompositeAppViewModel();
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
  v0[7] = sub_24B2D33A4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24B08EA58;
  v2 = v0[2];

  return sub_24B05F5A0(v2, 1);
}

uint64_t sub_24B08EA58()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B088130, v3, v2);
}

uint64_t sub_24B08EB9C(uint64_t a1)
{
  v2 = type metadata accessor for DebugViewWithActorInit.ContentState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_24B2D4CC4();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_24B08EC90()
{
  type metadata accessor for DebugViewWithActorInit.ContentState();
  sub_24B2D4D04();

  return sub_24B2D4CD4();
}

uint64_t DebugViewWithActorInit.init(valueLoader:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for DebugViewWithActorInit.ContentState();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  (*(*(a5 - 8) + 56))(&v18 - v13, 1, 1, a5);
  sub_24B08EB9C(v14);
  result = type metadata accessor for DebugViewWithActorInit();
  v16 = (a6 + *(result + 44));
  *v16 = a1;
  v16[1] = a2;
  v17 = (a6 + *(result + 48));
  *v17 = a3;
  v17[1] = a4;
  return result;
}

uint64_t DebugViewWithActorInit.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = sub_24B2D56D4();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 - 8);
  v43 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94F8);
  v7 = *(a1 + 24);
  sub_24B2D3EE4();
  v8 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
  v9 = *(a1 + 32);
  v10 = a1;
  v54 = v8;
  v55 = v9;
  v11 = v9;
  v35 = v9;
  swift_getWitnessTable();
  v12 = sub_24B2D4E14();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24B2D35A4();
  v15 = sub_24B2D37B4();
  v40 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v36 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v34 - v18;
  v48 = *(v10 + 16);
  v19 = v48;
  v49 = v7;
  v20 = v41;
  v50 = v11;
  v51 = v41;
  sub_24B2D5064();
  sub_24B2D4E04();
  v21 = v38;
  v22 = v39;
  (*(v39 + 16))(v38, v20, v10);
  v23 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v19;
  *(v24 + 3) = v7;
  *(v24 + 4) = v35;
  (*(v22 + 32))(&v24[v23], v21, v10);
  WitnessTable = swift_getWitnessTable();
  v26 = v44;
  sub_24B2D56A4();
  v27 = v36;
  sub_24B2D48D4();

  (*(v45 + 8))(v26, v46);
  (*(v42 + 8))(v14, v12);
  v28 = sub_24B091168(&qword_27EFC7890, MEMORY[0x277CDD8B0]);
  v52 = WitnessTable;
  v53 = v28;
  swift_getWitnessTable();
  v29 = v40;
  v30 = *(v40 + 16);
  v31 = v37;
  v30(v37, v27, v15);
  v32 = *(v29 + 8);
  v32(v27, v15);
  v30(v47, v31, v15);
  return (v32)(v31, v15);
}

uint64_t sub_24B08F36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v45 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v40 - v12;
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8);
  v42 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = a2;
  v20 = a4;
  v21 = type metadata accessor for DebugViewWithActorInit.ContentState();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v40 - v22;
  v47 = v16;
  v50 = sub_24B2D3EE4();
  v24 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v40 - v25;
  sub_24B2D5694();
  v46 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for DebugViewWithActorInit();
  sub_24B08EC90();
  v27 = v49;
  if ((*(v49 + 48))(v23, 1, v19) == 1)
  {
    sub_24B2D33E4();
    sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
    v28 = v47;
    v29 = v48;
    sub_24B088D90(v18, v47);
    (*(v42 + 8))(v18, v28);
  }

  else
  {
    v30 = *(v27 + 32);
    v41 = v15;
    v30(v15, v23, v19);
    v31 = (a1 + *(v26 + 48));
    v42 = v24;
    v32 = v27;
    v33 = v43;
    (*v31)(v15);
    v34 = v44;
    v35 = v45;
    v36 = *(v45 + 16);
    v36(v44, v33, a3);
    v37 = *(v35 + 8);
    v37(v33, a3);
    v36(v33, v34, a3);
    sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
    v29 = v48;
    sub_24B088E88(v33, v47, a3);
    v37(v33, a3);
    v37(v34, a3);
    (*(v32 + 8))(v41, v19);
    v24 = v42;
  }

  v52 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
  v53 = v20;
  v38 = v50;
  swift_getWitnessTable();
  (*(v24 + 16))(v51, v29, v38);
  (*(v24 + 8))(v29, v38);
}

uint64_t sub_24B08F918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DebugViewWithActorInit.ContentState();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_24B2D5694();
  v4[9] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_24B08FA10, v7, v6);
}

uint64_t sub_24B08FA10()
{
  v1 = v0[2];
  v2 = type metadata accessor for DebugViewWithActorInit();
  v0[12] = v2;
  v6 = (*(v1 + *(v2 + 44)) + **(v1 + *(v2 + 44)));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_24B08FB1C;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_24B08FB1C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B08FC3C, v3, v2);
}

uint64_t sub_24B08FC3C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_24B091984(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B08FD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(type metadata accessor for DebugViewWithActorInit() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B08F918(v0 + v6, v2, v3, v4);
}

unint64_t sub_24B08FE70()
{
  type metadata accessor for DebugViewWithActorInit.ContentState();
  result = sub_24B2D4D04();
  if (v1 <= 0x3F)
  {
    result = sub_24B07A804();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B08FF08(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v20 = *((a1 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }

    else
    {
      v19 = (*(v4 + 48))(a1, v5);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_24B090088(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v14 = a3 - v10;
    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v10;
    }

    else
    {
      v17 = 1;
    }

    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v10 + a2;
      v19 = a1;
      bzero(a1, ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v13) = 0;
LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 < 0x7FFFFFFF)
  {
    v23 = ((a1 + v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = a2 - 1;
    }
  }

  else if (v9 >= a2)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v20 = ((v11 + 7) & 0xFFFFFFF8) + 8;
    if (v20)
    {
      v21 = ~v9 + a2;
      v22 = a1;
      bzero(a1, v20);
      *v22 = v21;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore28FullScreenLocationDetailViewV13SelectionTypeOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B09036C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24B0903C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24B090548(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
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

  else if (v5)
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_24B0907A0()
{
  result = qword_27EFC9630;
  if (!qword_27EFC9630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9608);
    sub_24B09082C();
    sub_24B090B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9630);
  }

  return result;
}

unint64_t sub_24B09082C()
{
  result = qword_27EFC9638;
  if (!qword_27EFC9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9640);
    sub_24B0908B8();
    sub_24B090A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9638);
  }

  return result;
}

unint64_t sub_24B0908B8()
{
  result = qword_27EFC9648;
  if (!qword_27EFC9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9650);
    sub_24B090970();
    sub_24B039184(&qword_27EFC9678, &qword_27EFC9680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9648);
  }

  return result;
}

unint64_t sub_24B090970()
{
  result = qword_27EFC9658;
  if (!qword_27EFC9658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9660);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9658);
  }

  return result;
}

unint64_t sub_24B090A20()
{
  result = qword_27EFC9688;
  if (!qword_27EFC9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9690);
    sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView);
    sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9688);
  }

  return result;
}

unint64_t sub_24B090B0C()
{
  result = qword_27EFC96A8;
  if (!qword_27EFC96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96B0);
    sub_24B090B98();
    sub_24B090CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96A8);
  }

  return result;
}

unint64_t sub_24B090B98()
{
  result = qword_27EFC96B8;
  if (!qword_27EFC96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96C0);
    sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView);
    sub_24B090C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96B8);
  }

  return result;
}

unint64_t sub_24B090C54()
{
  result = qword_27EFC96D0;
  if (!qword_27EFC96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96D0);
  }

  return result;
}

unint64_t sub_24B090CA8()
{
  result = qword_27EFC96D8;
  if (!qword_27EFC96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96E0);
    sub_24B090D34();
    sub_24B090EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96D8);
  }

  return result;
}

unint64_t sub_24B090D34()
{
  result = qword_27EFC96E8;
  if (!qword_27EFC96E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96F0);
    sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView);
    sub_24B090DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96E8);
  }

  return result;
}

unint64_t sub_24B090DF0()
{
  result = qword_27EFC9700;
  if (!qword_27EFC9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9708);
    sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9700);
  }

  return result;
}

unint64_t sub_24B090EA4()
{
  result = qword_27EFC9718;
  if (!qword_27EFC9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9720);
    sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView);
    sub_24B090F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9718);
  }

  return result;
}

unint64_t sub_24B090F60()
{
  result = qword_27EFC9730;
  if (!qword_27EFC9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9730);
  }

  return result;
}

unint64_t sub_24B090FB4()
{
  result = qword_27EFC9738;
  if (!qword_27EFC9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9738);
  }

  return result;
}

unint64_t sub_24B091008()
{
  result = qword_27EFC9740;
  if (!qword_27EFC9740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9628);
    sub_24B0910C0();
    sub_24B039184(&qword_27EFC9750, &qword_27EFC9758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9740);
  }

  return result;
}

unint64_t sub_24B0910C0()
{
  result = qword_27EFC9748;
  if (!qword_27EFC9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9748);
  }

  return result;
}

uint64_t sub_24B091114(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24B091168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B0911B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();
}

uint64_t sub_24B09122C(uint64_t a1)
{
  v2 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B091854(a1, v4, type metadata accessor for CompositeAppViewState);
  return sub_24B059A08(v4);
}

uint64_t sub_24B09137C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B05D1A0();
}

uint64_t sub_24B091424(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AFFDE44;

  return sub_24B05FFF4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24B091504(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return sub_24B08E8B4(a1, v1 + 16);
}

uint64_t sub_24B0915A4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B05F4DC(a1, a2);
}

uint64_t sub_24B09164C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B060920();
}

uint64_t sub_24B091784()
{
  v1 = *(type metadata accessor for CompositeAppViewState.TranscriptInfo(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_24B08E6F0(v0 + 16, v2);
}

uint64_t objectdestroy_15Tm(uint64_t a1)
{
  sub_24B090790();
  if (*(v1 + 40) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24B091854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0918BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B09191C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B091984(uint64_t a1)
{
  v2 = type metadata accessor for DebugViewWithActorInit.ContentState();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  sub_24B2D4D04();
  return sub_24B2D4CE4();
}

uint64_t sub_24B091A78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B091AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B091B2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v5 = a1;
  v25 = a1;
  v32 = a5;
  v6 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9808);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9810);
  MEMORY[0x28223BE20](v29);
  v15 = &v25 - v14;
  sub_24B2D2D34();
  v16 = sub_24B2D2D44();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v37 = MEMORY[0x277D84F90];
  sub_24B092B94(&qword_27EFC9818, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820);
  sub_24B2D5B44();
  v33 = v5;
  LOBYTE(v5) = v26;
  v34 = v26;
  v18 = v27;
  v17 = v28;
  v35 = v27;
  v36 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9830);
  sub_24B039184(&qword_27EFC9838, &qword_27EFC9830);
  sub_24B2D2C94();
  sub_24B039184(&qword_27EFC9840, &qword_27EFC9808);
  v19 = v30;
  sub_24B2D4634();
  (*(v31 + 8))(v13, v19);
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9848) + 36)] = 0;
  v15[*(v29 + 36)] = 0;
  v20 = v25;
  v37 = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v5;
  *(v21 + 32) = v18;
  *(v21 + 40) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_24B09288C;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24B09289C;
  *(v23 + 24) = v22;

  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  sub_24B0928AC();
  sub_24B092A60();
  sub_24B2D49B4();

  return sub_24AFD95CC(v15);
}

uint64_t sub_24B092030@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a3;
  v36 = a2;
  v35 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9890);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_24B2D5694();
  v32 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v36)
  {
    sub_24B2D3034();
    (*(v12 + 32))(v20, v14, v11);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  v21 = v31;
  v37 = v31;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CD4();
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  *(v22 + 24) = v36 & 1;
  *(v22 + 32) = v21;
  *(v22 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850);
  type metadata accessor for AnnotationContent();
  sub_24B039184(&qword_27EFC98A8, &qword_27EFC9850);
  sub_24B092B94(&qword_27EFC98B0, type metadata accessor for AnnotationContent);
  sub_24B092B94(&qword_27EFC98B8, type metadata accessor for Annotation);
  v23 = v33;
  sub_24B2D4EC4();
  sub_24B092BDC(v20, v18);
  v24 = *(v7 + 16);
  v25 = v34;
  v24(v34, v23, v6);
  v26 = v35;
  sub_24B092BDC(v18, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98C0);
  v24((v26 + *(v27 + 48)), v25, v6);
  v28 = *(v7 + 8);
  v28(v23, v6);
  sub_24B092C4C(v20);
  v28(v25, v6);
  sub_24B092C4C(v18);
}

uint64_t sub_24B09250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B092CB4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CD4();
  v4 = *(v11 + 16);

  v5 = v4 < 2;
  sub_24B2D4CD4();
  v6 = *(v11 + 16);

  v7 = type metadata accessor for AnnotationContent();
  *(a2 + v7[5]) = v5;
  *(a2 + v7[6]) = v6 < 2;
  *(a2 + v7[7]) = 0;
  v8 = v7[8];
  sub_24B2D4A84();
  v9 = sub_24B2D4B44();

  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_24B092674(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v2 = sub_24B2D50C4();
    MEMORY[0x28223BE20](v2);
    sub_24B2D35C4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
    return sub_24B2D4CE4();
  }
}

uint64_t sub_24B092784()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888);
  sub_24B2D4CE4();
}

unint64_t sub_24B0928AC()
{
  result = qword_27EFC9858;
  if (!qword_27EFC9858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9810);
    sub_24B092964();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9858);
  }

  return result;
}

unint64_t sub_24B092964()
{
  result = qword_27EFC9860;
  if (!qword_27EFC9860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9808);
    sub_24B039184(&qword_27EFC9840, &qword_27EFC9808);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9860);
  }

  return result;
}

unint64_t sub_24B092A60()
{
  result = qword_27EFC9878;
  if (!qword_27EFC9878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850);
    sub_24B092B94(&qword_27EFC9880, type metadata accessor for Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9878);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B092B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B092BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B092C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B092CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24B092DA0()
{
  type metadata accessor for DetailsAppView.State(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailsAppView.Style(319);
    if (v1 <= 0x3F)
    {
      sub_24B07A804();
      if (v2 <= 0x3F)
      {
        sub_24B09317C(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B092EB8()
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B092F70()
{
  sub_24B093118(319, &qword_27EFC9900, type metadata accessor for SessionLocation.Description, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24B093118(319, &qword_27EFC7B78, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B093118(319, &unk_27EFC7908, type metadata accessor for Friend, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24B09317C(319, &qword_27EFC7900, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LocateAction();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B093118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B09317C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12FindMyUICore14DetailsAppViewV5StateV8LocationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B0931E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B093238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24B093294(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B0932D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B093320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B09338C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v76 = sub_24B2D50F4();
  v3 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D4A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomControlStyle(0);
  v10 = MEMORY[0x28223BE20](v9);
  v70 = (v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (v50 - v12);
  if (a1)
  {
    sub_24B2D4394();
    sub_24B2D43F4();
    v73 = sub_24B2D4424();

    v14 = 10.0;
    v15 = sub_24B2D4474();
  }

  else
  {
    v73 = sub_24B2D4484();
    v14 = 14.0;
    v15 = sub_24B2D4394();
  }

  v72 = v15;
  v16 = *MEMORY[0x277CE0EE0];
  v17 = *(v6 + 104);
  v57 = v6 + 104;
  v17(v8, v16, v5);
  v63 = v17;
  v18 = sub_24B2D4B74();
  v62 = v5;
  v19 = MEMORY[0x277CE0F60];
  v13[3] = MEMORY[0x277CE0F78];
  v13[4] = v19;
  *v13 = v18;
  sub_24B2D4394();
  sub_24B2D43D4();
  v61 = sub_24B2D4424();

  v58 = v8;
  v20 = v16;
  v17(v8, v16, v5);
  sub_24B2D4B74();
  v66 = sub_24B2D4B44();

  v71 = *MEMORY[0x277CE13B0];
  v21 = v3[13];
  v50[1] = v3 + 13;
  v22 = v75;
  v23 = v76;
  v21(v75);
  v50[0] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9908);
  v78 = v24;
  v64 = v24;
  v69 = sub_24B039184(&qword_27EFC9910, &qword_27EFC9908);
  v79 = v69;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  v26 = *(v24 + 36);
  v27 = v3[2];
  v67 = v3 + 2;
  v68 = v27;
  v27(boxed_opaque_existential_0 + v26, v22, v23);
  *boxed_opaque_existential_0 = v66;
  v28 = v3[1];
  v65 = v3 + 1;
  v66 = v28;
  v28(v22, v23);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390);
  sub_24B2D1AA4();
  v29 = v9[8];
  v55 = *MEMORY[0x277CDF420];
  v30 = v55;
  v54 = sub_24B2D3364();
  v31 = *(v54 - 8);
  v53 = *(v31 + 104);
  v56 = v31 + 104;
  v53(v13 + v29, v30, v54);
  v52 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v32 = v9[6];
  v51 = *MEMORY[0x277CE13D8];
  v21(v13 + v32);
  v13[5] = v61;
  *(v13 + v9[9]) = 1;
  *(v13 + v9[10]) = 0;
  v33 = v13 + v9[11];
  *v33 = 0;
  v33[8] = 1;
  v34 = v58;
  v35 = v62;
  v36 = v63;
  v63(v58, v20, v62);
  v37 = sub_24B2D4B74();
  v38 = v70;
  v70[3] = MEMORY[0x277CE0F78];
  v38[4] = MEMORY[0x277CE0F60];
  *v38 = v37;
  sub_24B2D4394();
  sub_24B2D43D4();
  v61 = sub_24B2D4424();

  v36(v34, v20, v35);
  sub_24B2D4B74();
  v39 = sub_24B2D4B44();

  v41 = v75;
  v40 = v76;
  v42 = v50[0];
  (v50[0])(v75, v71, v76);
  v43 = v64;
  v78 = v64;
  v79 = v69;
  v44 = __swift_allocate_boxed_opaque_existential_0(v77);
  v68(v44 + *(v43 + 36), v41, v40);
  *v44 = v39;
  v66(v41, v40);
  sub_24B2D1AA4();
  v53(v38 + v9[8], v55, v54);
  swift_storeEnumTagMultiPayload();
  v42(v38 + v9[6], v51, v40);
  v38[5] = v61;
  *(v38 + v9[9]) = 1;
  *(v38 + v9[10]) = 0;
  v45 = v38 + v9[11];
  *v45 = 0;
  v45[8] = 1;
  v46 = v74;
  v47 = v72;
  *v74 = v73;
  v46[1] = v47;
  v48 = type metadata accessor for DetailsAppView.Style(0);
  sub_24B098F60(v13, v46 + v48[6], type metadata accessor for CustomControlStyle);
  result = sub_24B098F60(v38, v46 + v48[7], type metadata accessor for CustomControlStyle);
  *(v46 + v48[8]) = v14;
  *(v46 + v48[9]) = 0x402C000000000000;
  *(v46 + v48[10]) = 0x4018000000000000;
  return result;
}