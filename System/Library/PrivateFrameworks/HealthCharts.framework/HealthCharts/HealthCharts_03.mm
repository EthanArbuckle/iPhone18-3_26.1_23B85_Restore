uint64_t specialized HealthChartsBloodPressureDataProvider.descriptionData(systolicData:diastolicData:)(uint64_t a1, void (**a2)(uint64_t, uint64_t))
{
  v204 = a2;
  v208 = type metadata accessor for HealthChartsData.DescriptionKey();
  v205 = *(v208 - 8);
  v2 = *(v205 + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double)?, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v185 = &v177 - v9;
  MEMORY[0x28223BE20](v10);
  v187 = &v177 - v11;
  MEMORY[0x28223BE20](v12);
  v188 = (&v177 - v13);
  type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double)();
  v15 = v14;
  v196 = *(v14 - 8);
  v16 = *(v196 + 64);
  MEMORY[0x28223BE20](v14);
  v186 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v193 = &v177 - v19;
  MEMORY[0x28223BE20](v20);
  v180 = &v177 - v21;
  MEMORY[0x28223BE20](v22);
  v198 = &v177 - v23;
  MEMORY[0x28223BE20](v24);
  v194 = &v177 - v25;
  MEMORY[0x28223BE20](v26);
  v181 = &v177 - v27;
  MEMORY[0x28223BE20](v28);
  v189 = &v177 - v29;
  MEMORY[0x28223BE20](v30);
  v195 = &v177 - v31;
  MEMORY[0x28223BE20](v32);
  v182 = &v177 - v33;
  MEMORY[0x28223BE20](v34);
  v191 = &v177 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v177 - v37;
  MEMORY[0x28223BE20](v39);
  v199 = &v177 - v40;
  MEMORY[0x28223BE20](v41);
  v183 = &v177 - v42;
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240]);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v177 - v48;
  v50 = type metadata accessor for HealthChartsData.Description();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v197 = &v177 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v177 - v55;
  v201 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  HealthChartsData.description.getter();
  v57 = v50;
  v58 = *(v51 + 48);
  if (v58(v49, 1, v57) == 1)
  {
    v59 = &lazy cache variable for type metadata for HealthChartsData.Description?;
    v60 = MEMORY[0x277D10240];
    v61 = v49;
LABEL_61:
    outlined destroy of TaskPriority?(v61, v59, v60);
    return v201;
  }

  v206 = v15;
  v178 = v7;
  v62 = *(v51 + 32);
  v62(v56, v49, v57);
  v184 = v57;
  HealthChartsData.description.getter();
  v63 = v184;
  if (v58(v46, 1, v184) == 1)
  {
    (*(v51 + 8))(v56, v63);
    v59 = &lazy cache variable for type metadata for HealthChartsData.Description?;
    v60 = MEMORY[0x277D10240];
    v61 = v46;
    goto LABEL_61;
  }

  v177 = v51;
  v190 = v196;
  v62(v197, v46, v63);
  v64 = HealthChartsData.Description.substitutionValues.getter();
  v65 = v64;
  v66 = v64 + 64;
  v67 = 1 << *(v64 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v64 + 64);
  v70 = (v67 + 63) >> 6;
  v202 = v205 + 16;
  v200 = *MEMORY[0x277D10260];
  v203 = (v205 + 104);
  v204 = (v205 + 8);

  v72 = 0;
  v192 = v56;
  v73 = v38;
  if (!v69)
  {
LABEL_9:
    while (1)
    {
      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v74 >= v70)
      {

        v80 = v190;
        v81 = v188;
        v82 = v206;
        v179 = *(v190 + 56);
        v179(v188, 1, 1, v206);
        goto LABEL_16;
      }

      v69 = *(v66 + 8 * v74);
      ++v72;
      if (v69)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
    v74 = v72;
LABEL_12:
    v75 = __clz(__rbit64(v69)) | (v74 << 6);
    v76 = v205;
    v77 = v199;
    v78 = v208;
    (*(v205 + 16))(v199, *(v65 + 48) + *(v205 + 72) * v75, v208);
    *(v77 + *(v206 + 48)) = *(*(v65 + 56) + 8 * v75);
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v77, v73);
    v79 = v207;
    (*(v76 + 104))(v207, v200, v78);
    LOBYTE(v77) = MEMORY[0x253075690](v73, v79);
    (*(v76 + 8))(v79, v78);
    if (v77)
    {
      break;
    }

    v69 &= v69 - 1;
    result = outlined destroy of Result<HealthChartsData, Error>(v73, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v72 = v74;
    if (!v69)
    {
      goto LABEL_9;
    }
  }

  v81 = v188;
  outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v73, v188);
  v80 = v190;
  v82 = v206;
  v179 = *(v190 + 56);
  v179(v81, 0, 1, v206);
LABEL_16:

  v83 = *(v80 + 48);
  v190 = v80 + 48;
  v188 = v83;
  if ((v83)(v81, 1, v82) == 1)
  {
    outlined destroy of TaskPriority?(v81, &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double)?, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
  }

  else
  {
    v84 = v183;
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v81, v183);
    v86 = v207;
    v85 = v208;
    (*v203)(v207, v200, v208);
    v87 = v191;
    outlined init with copy of (key: HealthChartsData.DescriptionKey, value: Double)(v84, v191);
    v88 = *(v87 + *(v82 + 48));
    v89 = v201;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v209 = v89;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, isUniquelyReferenced_nonNull_native, v88);
    v91 = *v204;
    (*v204)(v86, v85);
    outlined destroy of Result<HealthChartsData, Error>(v84, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v201 = v209;
    v91(v87, v85);
  }

  v92 = v189;
  v93 = HealthChartsData.Description.substitutionValues.getter();
  v94 = v93;
  v95 = v93 + 64;
  v96 = 1 << *(v93 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v93 + 64);
  v99 = (v96 + 63) >> 6;
  LODWORD(v199) = *MEMORY[0x277D10258];

  v100 = 0;
  v101 = v198;
  if (!v98)
  {
LABEL_23:
    while (1)
    {
      v102 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      if (v102 >= v99)
      {

        v108 = v187;
        v109 = v206;
        v179(v187, 1, 1, v206);
        goto LABEL_30;
      }

      v98 = *(v95 + 8 * v102);
      ++v100;
      if (v98)
      {
        goto LABEL_26;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return result;
  }

  while (1)
  {
    v102 = v100;
LABEL_26:
    v103 = __clz(__rbit64(v98)) | (v102 << 6);
    v104 = v205;
    v105 = v195;
    v106 = v208;
    (*(v205 + 16))(v195, *(v94 + 48) + *(v205 + 72) * v103, v208);
    *(v105 + *(v206 + 48)) = *(*(v94 + 56) + 8 * v103);
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v105, v92);
    v107 = v207;
    (*(v104 + 104))(v207, v199, v106);
    LOBYTE(v105) = MEMORY[0x253075690](v92, v107);
    (*(v104 + 8))(v107, v106);
    if (v105)
    {
      break;
    }

    v98 &= v98 - 1;
    result = outlined destroy of Result<HealthChartsData, Error>(v92, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v100 = v102;
    v101 = v198;
    if (!v98)
    {
      goto LABEL_23;
    }
  }

  v108 = v187;
  outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v92, v187);
  v109 = v206;
  v179(v108, 0, 1, v206);
  v101 = v198;
LABEL_30:

  if ((v188)(v108, 1, v109) == 1)
  {
    outlined destroy of TaskPriority?(v108, &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double)?, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
  }

  else
  {
    v110 = v182;
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v108, v182);
    v112 = v207;
    v111 = v208;
    (*v203)(v207, v199, v208);
    v113 = v191;
    outlined init with copy of (key: HealthChartsData.DescriptionKey, value: Double)(v110, v191);
    v114 = *(v113 + *(v109 + 48));
    v115 = v201;
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v115;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, v116, v114);
    v117 = *v204;
    (*v204)(v112, v111);
    outlined destroy of Result<HealthChartsData, Error>(v110, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v201 = v209;
    v117(v113, v111);
  }

  v118 = HealthChartsData.Description.substitutionValues.getter();
  v119 = v118;
  v120 = v118 + 64;
  v121 = 1 << *(v118 + 32);
  v122 = -1;
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  v123 = v122 & *(v118 + 64);
  v124 = (v121 + 63) >> 6;

  v125 = 0;
  if (!v123)
  {
LABEL_37:
    while (1)
    {
      v126 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_69;
      }

      if (v126 >= v124)
      {

        v132 = v185;
        v133 = v185;
        v134 = 1;
        goto LABEL_44;
      }

      v123 = *(v120 + 8 * v126);
      ++v125;
      if (v123)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v126 = v125;
LABEL_40:
    v127 = __clz(__rbit64(v123)) | (v126 << 6);
    v128 = v205;
    v129 = v194;
    v130 = v208;
    (*(v205 + 16))(v194, *(v119 + 48) + *(v205 + 72) * v127, v208);
    *(v129 + *(v206 + 48)) = *(*(v119 + 56) + 8 * v127);
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v129, v101);
    v131 = v207;
    (*(v128 + 104))(v207, v200, v130);
    LOBYTE(v129) = MEMORY[0x253075690](v101, v131);
    (*(v128 + 8))(v131, v130);
    if (v129)
    {
      break;
    }

    v123 &= v123 - 1;
    result = outlined destroy of Result<HealthChartsData, Error>(v101, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v125 = v126;
    if (!v123)
    {
      goto LABEL_37;
    }
  }

  v132 = v185;
  outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v101, v185);
  v133 = v132;
  v134 = 0;
LABEL_44:
  v135 = v206;
  v179(v133, v134, 1, v206);

  if ((v188)(v132, 1, v135) == 1)
  {
    outlined destroy of TaskPriority?(v132, &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double)?, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
  }

  else
  {
    v136 = v181;
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v132, v181);
    v138 = v207;
    v137 = v208;
    (*v203)(v207, *MEMORY[0x277D10270], v208);
    v139 = v191;
    outlined init with copy of (key: HealthChartsData.DescriptionKey, value: Double)(v136, v191);
    v140 = *(v139 + *(v135 + 48));
    v141 = v201;
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v209 = v141;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v138, v142, v140);
    v143 = *v204;
    (*v204)(v138, v137);
    outlined destroy of Result<HealthChartsData, Error>(v136, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v201 = v209;
    v143(v139, v137);
  }

  v144 = v186;
  v145 = HealthChartsData.Description.substitutionValues.getter();
  v146 = v145;
  v147 = v145 + 64;
  v148 = 1 << *(v145 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v149 & *(v145 + 64);
  v151 = (v148 + 63) >> 6;

  v152 = 0;
  if (!v150)
  {
LABEL_51:
    v154 = v192;
    while (1)
    {
      v153 = v152 + 1;
      if (__OFADD__(v152, 1))
      {
        goto LABEL_70;
      }

      if (v153 >= v151)
      {

        v160 = v178;
        v161 = v206;
        v179(v178, 1, 1, v206);
        goto LABEL_59;
      }

      v150 = *(v147 + 8 * v153);
      ++v152;
      if (v150)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v153 = v152;
LABEL_55:
    v155 = __clz(__rbit64(v150)) | (v153 << 6);
    v156 = v205;
    v157 = v193;
    v158 = v208;
    (*(v205 + 16))(v193, *(v146 + 48) + *(v205 + 72) * v155, v208);
    *(v157 + *(v206 + 48)) = *(*(v146 + 56) + 8 * v155);
    outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v157, v144);
    v159 = v207;
    (*(v156 + 104))(v207, v199, v158);
    LOBYTE(v157) = MEMORY[0x253075690](v144, v159);
    (*(v156 + 8))(v159, v158);
    if (v157)
    {
      break;
    }

    v150 &= v150 - 1;
    result = outlined destroy of Result<HealthChartsData, Error>(v144, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
    v152 = v153;
    if (!v150)
    {
      goto LABEL_51;
    }
  }

  v160 = v178;
  outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v144, v178);
  v161 = v206;
  v179(v160, 0, 1, v206);
  v154 = v192;
LABEL_59:

  v162 = (v188)(v160, 1, v161);
  v163 = v177;
  if (v162 == 1)
  {
    v164 = *(v177 + 8);
    v165 = v184;
    v164(v197, v184);
    v164(v154, v165);
    v59 = &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double)?;
    v60 = type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double);
    v61 = v160;
    goto LABEL_61;
  }

  v166 = v180;
  outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(v160, v180);
  v168 = v207;
  v167 = v208;
  (*v203)(v207, *MEMORY[0x277D10268], v208);
  v169 = v191;
  outlined init with copy of (key: HealthChartsData.DescriptionKey, value: Double)(v166, v191);
  v170 = *(v169 + *(v161 + 48));
  v171 = v201;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v209 = v171;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v168, v172, v170);
  v173 = *v204;
  (*v204)(v168, v167);
  outlined destroy of Result<HealthChartsData, Error>(v166, type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double));
  v174 = *(v163 + 8);
  v175 = v184;
  v174(v197, v184);
  v174(v154, v175);
  v176 = v209;
  v173(v169, v167);
  return v176;
}

void type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double)()
{
  if (!lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double))
  {
    type metadata accessor for HealthChartsData.DescriptionKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: HealthChartsData.DescriptionKey, value: Double));
    }
  }
}

uint64_t outlined init with take of (key: HealthChartsData.DescriptionKey, value: Double)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<HealthChartsData, Error>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _sScPSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of (key: HealthChartsData.DescriptionKey, value: Double)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: HealthChartsData.DescriptionKey, value: Double)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ScalarDomain.fixedQuantity<A>(_:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v45 = a1;
  v46 = a4;
  v44 = a2;
  v47 = a5;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FixedQuantity();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v42 - v13);
  type metadata accessor for HealthChartsUnit?(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthChartsUnit();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  _s16HealthChartsCore0aB4UnitVSgWOcTm_0(v44, v18, type metadata accessor for HealthChartsUnit?);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of HealthChartsUnit?(v18);
    (*(v6 + 16))(v9, v45, a3);
    FixedNumeric.init<A>(_:)(v9, a3, v46, v50);
    v27 = FixedNumeric.debugDescription.getter();
    v28 = v47;
    v47[4] = v27;
    v28[5] = v29;
    outlined init with copy of FixedNumeric(v50, v48);
    v30 = swift_allocObject();
    v31 = v48[1];
    *(v30 + 16) = v48[0];
    *(v30 + 32) = v31;
    *(v30 + 48) = v49;
    result = swift_allocObject();
    v33 = result;
    v34 = v50[1];
    *(result + 16) = v50[0];
    *(result + 32) = v34;
    *(result + 48) = v51;
    v35 = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
    v36 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  }

  else
  {
    (*(v20 + 32))(v26, v18, v19);
    (*(v6 + 16))(v9, v45, a3);
    (*(v20 + 16))(v23, v26, v19);
    FixedQuantity.init<A>(_:unit:)(v9, v23, a3, v46, v14);
    v37 = FixedQuantity.debugDescription.getter();
    v39 = v38;
    (*(v20 + 8))(v26, v19);
    v28 = v47;
    v47[4] = v37;
    v28[5] = v39;
    v40 = v43;
    _s16HealthChartsCore0aB4UnitVSgWOcTm_0(v14, v43, type metadata accessor for FixedQuantity);
    v41 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v30 = swift_allocObject();
    outlined init with take of FixedQuantity(v40, v30 + v41);
    outlined init with take of FixedQuantity(v14, v40);
    v33 = swift_allocObject();
    result = outlined init with take of FixedQuantity(v40, v33 + v41);
    v35 = _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufc0B003AnyE7ContentVSNySdGSg_0aB4Core0aB4UnitVSgAL0aB4DataV11AggregationOtYbcfU_AA13FixedQuantityV_Tg5TA_0;
    v36 = _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufcAA0E5ScaleVySdGSNySdGSg_0aB4Core0aB4UnitVSgAL0aB4DataV11AggregationOtYbcxYbcfu_AiK_AoStYbcfu0_AA13FixedQuantityV_Tg5TA_0;
  }

  *v28 = v36;
  v28[1] = v30;
  v28[2] = v35;
  v28[3] = v33;
  return result;
}

{
  v31 = a2;
  v32 = a4;
  v30 = a1;
  v7 = type metadata accessor for HealthChartsUnit();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FixedQuantity();
  v29 = *(v17 - 8);
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v29 - v22);
  (*(v12 + 16))(v16, v30, a3, v21);
  (*(v8 + 16))(v11, v31, v7);
  FixedQuantity.init<A>(_:unit:)(v16, v11, a3, v32, v23);
  a5[4] = FixedQuantity.debugDescription.getter();
  a5[5] = v24;
  _s16HealthChartsCore0aB4UnitVSgWOcTm_0(v23, v19, type metadata accessor for FixedQuantity);
  v25 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v26 = swift_allocObject();
  outlined init with take of FixedQuantity(v19, v26 + v25);
  *a5 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  a5[1] = v26;
  outlined init with take of FixedQuantity(v23, v19);
  v27 = swift_allocObject();
  result = outlined init with take of FixedQuantity(v19, v27 + v25);
  a5[2] = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  a5[3] = v27;
  return result;
}

uint64_t type metadata accessor for FixedQuantity()
{
  result = type metadata singleton initialization cache for FixedQuantity;
  if (!type metadata singleton initialization cache for FixedQuantity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FixedQuantity.init<A>(_:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v10 = *(type metadata accessor for FixedQuantity() + 20);
  v11 = type metadata accessor for HealthChartsUnit();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a2, v11);
}

uint64_t FixedQuantity.axisScale(seriesScale:seriesUnit:finestAggregation:)@<X0>(double a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a2;
  v21 = a5;
  type metadata accessor for HealthChartsUnit?(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 3));
  v12 = *(type metadata accessor for FixedQuantity() + 20);
  v13 = type metadata accessor for HealthChartsUnit();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, &v5[v12], v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  lazy protocol witness table accessor for type FixedQuantity and conformance FixedQuantity(&lazy protocol witness table cache variable for type FixedQuantity and conformance FixedQuantity);
  v15 = specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(v10, a4);
  v17 = v16;
  outlined destroy of HealthChartsUnit?(v10);
  _sSNySdGMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Double>);
  v25[3] = v18;
  v25[4] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  *v25 = v15;
  v25[1] = v17;
  specialized AxisDomain<>.axisScale(for:seriesScale:)(v25, v23, v24, v22 & 1, v21);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t specialized AxisDomain<>.axisScale(for:seriesScale:)@<X0>(void *a1@<X0>, double a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 || (v12 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), result = dispatch thunk of IntervalChartValue.start.getter(), *&v14 <= a2) && (v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), result = dispatch thunk of IntervalChartValue.end.getter(), *&v14 >= a3))
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = IntervalChartValue.asClosedRange()();
    *(a5 + 8) = v14;
    *a5 = 1;
  }

  else
  {
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *a5 = 0;
  }

  return result;
}

uint64_t protocol witness for AxisDomain.axisScale(seriesScale:seriesUnit:finestAggregation:) in conformance FixedQuantity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a4;
  v27 = a5;
  type metadata accessor for HealthChartsUnit?(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v25 = *(a1 + 8);
  v26 = v13;
  v24 = *(a1 + 16);
  v14 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 3));
  v15 = *(a3 + 20);
  v16 = type metadata accessor for HealthChartsUnit();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, &v5[v15], v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  v18 = specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(v12, a2);
  v20 = v19;
  outlined destroy of HealthChartsUnit?(v12);
  _sSNySdGMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Double>);
  v28[3] = v21;
  v28[4] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  *v28 = v18;
  v28[1] = v20;
  specialized AxisDomain<>.axisScale(for:seriesScale:)(v28, v26, v25, v24, v27);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t FixedQuantity.debugDescription.getter()
{
  v1 = v0;
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  strcpy(v26, "fixedQuantity(");
  HIBYTE(v26[1]) = -18;
  specialized AxisDomain<>.outputStyle.getter(v7);
  v8 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of IntervalChartValue.start.getter();
  v24 = v25;
  v9 = FloatingPointFormatStyle.format(_:)();
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v7, v3);
  MEMORY[0x2530761B0](v9, v11);

  LODWORD(v9) = *(type metadata accessor for FixedQuantity() + 20);
  swift_getKeyPath();
  v13 = HealthChartsUnit.subscript.getter();
  v15 = v14;

  MEMORY[0x2530761B0](v13, v15);

  MEMORY[0x2530761B0](15917, 0xE200000000000000);
  specialized AxisDomain<>.outputStyle.getter(v7);
  v16 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of IntervalChartValue.end.getter();
  v24 = v25;
  v17 = FloatingPointFormatStyle.format(_:)();
  v19 = v18;
  v12(v7, v3);
  MEMORY[0x2530761B0](v17, v19);

  swift_getKeyPath();
  v20 = HealthChartsUnit.subscript.getter();
  v22 = v21;

  MEMORY[0x2530761B0](v20, v22);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v26[0];
}

uint64_t static ScalarDomain.fixedQuantity<A>(_:dimension:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = a2;
  v32 = a4;
  v8 = type metadata accessor for HealthChartsUnit();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FixedQuantity();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v31 - v23);
  (*(v12 + 16))(v16, a1, a3, v22);
  v25 = v31;
  HealthChartsUnit.init(_:)();
  FixedQuantity.init<A>(_:unit:)(v16, v11, a3, v32, v24);
  a5[4] = FixedQuantity.debugDescription.getter();
  a5[5] = v26;
  _s16HealthChartsCore0aB4UnitVSgWOcTm_0(v24, v20, type metadata accessor for FixedQuantity);
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  outlined init with take of FixedQuantity(v20, v28 + v27);
  *a5 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  a5[1] = v28;
  outlined init with take of FixedQuantity(v24, v20);
  v29 = swift_allocObject();
  result = outlined init with take of FixedQuantity(v20, v29 + v27);
  a5[2] = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  a5[3] = v29;
  return result;
}

uint64_t specialized AxisDomain<>.outputStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - v19;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v25 = vdupq_n_s64(4uLL);
  _sSNySdGMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Int>);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
  static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)();
  MEMORY[0x253075120](v9, v13);
  (*(v6 + 8))(v9, v5);
  v21 = *(v14 + 8);
  v21(v17, v13);
  static NumberFormatStyleConfiguration.Notation.scientific.getter();
  MEMORY[0x253075110](v4, v13);
  (*(v1 + 8))(v4, v24);
  return (v21)(v20, v13);
}

void key path getter for NSUnit.symbol : NSDimension(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 symbol];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2513F60DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t _s16HealthChartsCore0aB4UnitVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of FixedQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FixedQuantity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for FloatingPointFormatStyle<Double>()
{
  if (!lazy cache variable for type metadata for FloatingPointFormatStyle<Double>)
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    v0 = type metadata accessor for FloatingPointFormatStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FixedQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FixedQuantity and conformance FixedQuantity(&lazy protocol witness table cache variable for type FixedQuantity and conformance FixedQuantity);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type FixedQuantity and conformance FixedQuantity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FixedQuantity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2513F63B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsUnit();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2513F6474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HealthChartsUnit();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for FixedQuantity()
{
  result = type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthChartsUnit();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>()
{
  result = lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>;
  if (!lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for any IntervalChartValue<Self.IntervalChartValue.Bound == Double>);
  }

  return result;
}

void _sSNySdGMaTm_1(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ClosedRange();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    _sSNySdGMaTm_1(255, &lazy cache variable for type metadata for ClosedRange<Int>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
  }

  return result;
}

id static HealthChartsQuantityDataProvider.provider<A>(quantityType:context:preferredDataShape:statisticsOptions:preferredUnit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v27 = a4;
  v28 = a1;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for HealthChartsContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HealthChartsContext?(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of HealthChartsContext?(v13);
  }

  else
  {
    outlined init with take of HealthChartsContext(v13, v18);
    v19 = *v18;
    v20 = *v18;
    outlined destroy of HealthChartsErrors(v18, type metadata accessor for HealthChartsContext);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
LABEL_5:
  v21 = type metadata accessor for HealthChartsDataShape();
  a6[4] = v21;
  a6[5] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 1);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, a3, v21);
  *a6 = v20;
  v23 = v27;
  a6[6] = v28;
  a6[7] = v23;
  a6[8] = a5;
  v24 = a5;
  v25 = v28;

  return v25;
}

uint64_t outlined init with copy of HealthChartsContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HealthChartsContext?(uint64_t a1)
{
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for HealthChartsContext?, type metadata accessor for HealthChartsContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of HealthChartsContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HealthChartsErrors(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v52 = a4;
  v53 = a2;
  v54 = a1;
  type metadata accessor for HealthChartsContext?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v47 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for HealthChartsData.Aggregation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v49 = *v5;
  v20 = *(v5 + 56);
  v50 = *(v5 + 48);
  v48 = v20;
  outlined init with copy of HealthChartsQuantityDataProvider(v5, v58);
  (*(v18 + 16))(&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v17);
  v21 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v23 = v52;
  *(v22 + 16) = v51;
  *(v22 + 24) = v23;
  v24 = v58[3];
  *(v22 + 64) = v58[2];
  *(v22 + 80) = v24;
  *(v22 + 96) = v59;
  v25 = v58[1];
  *(v22 + 32) = v58[0];
  *(v22 + 48) = v25;
  (*(v18 + 32))(v22 + v21, &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v26 = objc_opt_self();
  v49 = v49;
  v27 = v50;

  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v29 = *(v11 + 8);
  v29(v16, v10);
  DateInterval.end.getter();
  v30 = Date._bridgeToObjectiveC()().super.isa;
  v51 = v11 + 8;
  v52 = v10;
  v50 = v29;
  v29(v16, v10);
  v31 = [v26 predicateForSamplesWithStartDate:isa endDate:v30 options:0];

  v47 = v27;
  v32 = v55;
  DateInterval.start.getter();
  v33 = v56;
  HealthChartsData.Aggregation.intervalDateComponents()();
  v34 = type metadata accessor for DateComponents();
  v35 = *(v34 - 8);
  v36 = v33;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = objc_allocWithZone(MEMORY[0x277CCDA60]);
    v38 = v31;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = v36;
    v41 = DateComponents._bridgeToObjectiveC()().super.isa;
    v42 = v37;
    v43 = v47;
    v54 = v38;
    v44 = [v42 initWithQuantityType:v47 quantitySamplePredicate:v38 options:v48 anchorDate:v39 intervalComponents:v41];

    v50(v32, v52);
    (*(v35 + 8))(v40, v34);
    aBlock[4] = partial apply for closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_0;
    v45 = _Block_copy(aBlock);

    [v44 setInitialResultsHandler_];
    _Block_release(v45);
    v46 = v49;
    [v49 executeQuery_];
  }
}

void type metadata accessor for HealthChartsContext?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v45 = a2;
  v11 = type metadata accessor for HealthChartsData();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HealthChartsErrors();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Result<HealthChartsData, Error>();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    *v22 = a3;
    swift_storeEnumTagMultiPayload();
    v23 = a3;
    a4(v22);
    v24 = type metadata accessor for Result<HealthChartsData, Error>;
    v25 = v22;
    return outlined destroy of HealthChartsErrors(v25, v24);
  }

  v41[0] = v11;
  v41[1] = a5;
  v42 = a4;
  v27 = v45;
  if (!v45)
  {
    v34 = *(a6 + 48);
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *v18 = v36;
    v18[1] = v38;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors();
    v39 = swift_allocError();
    outlined init with copy of HealthChartsErrors(v18, v40);
    *v22 = v39;
    swift_storeEnumTagMultiPayload();
    v42(v22);
    outlined destroy of HealthChartsErrors(v22, type metadata accessor for Result<HealthChartsData, Error>);
    v24 = type metadata accessor for HealthChartsErrors;
    v25 = v18;
    return outlined destroy of HealthChartsErrors(v25, v24);
  }

  v28 = *(a6 + 40);
  __swift_project_boxed_opaque_existential_1((a6 + 8), *(a6 + 32));
  v29 = *(a6 + 56);
  v30 = *(a6 + 64);
  v31 = v27;
  dispatch thunk of PlotDataShape.buildData(from:aggregation:with:preferredUnit:)();
  v32 = v44;
  v33 = v41[0];
  (*(v44 + 16))(v22, v14, v41[0]);
  swift_storeEnumTagMultiPayload();
  v42(v22);

  outlined destroy of HealthChartsErrors(v22, type metadata accessor for Result<HealthChartsData, Error>);
  return (*(v32 + 8))(v14, v33);
}

uint64_t sub_2513F7434()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 104) & ~*(v7 + 80));

  return closure #1 in HealthChartsQuantityDataProvider.query(interval:aggregation:results:)(a1, a2, a3, v8, v9, v3 + 32, v10);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsQuantityDataProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for HealthChartsQuantityDataProvider(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type HealthChartsErrors and conformance HealthChartsErrors()
{
  result = lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors;
  if (!lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors)
  {
    type metadata accessor for HealthChartsErrors();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsErrors and conformance HealthChartsErrors);
  }

  return result;
}

uint64_t outlined init with copy of HealthChartsErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsErrors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HealthChartsErrors()
{
  result = type metadata singleton initialization cache for HealthChartsErrors;
  if (!type metadata singleton initialization cache for HealthChartsErrors)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HealthChartsErrors()
{
  type metadata accessor for HKObjectType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for HealthStaticChartKey);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for Error);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DateInterval();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (createDomain: String, dataDomain: String)();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for HKObjectType()
{
  result = lazy cache variable for type metadata for HKObjectType;
  if (!lazy cache variable for type metadata for HKObjectType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKObjectType);
  }

  return result;
}

uint64_t type metadata accessor for HealthStaticChartKey(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape)()
{
  if (!lazy cache variable for type metadata for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape))
  {
    type metadata accessor for HealthChartsData.SeriesDataShape();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (seriesType: String, dataShape: HealthChartsData.SeriesDataShape));
    }
  }
}

void type metadata accessor for (createDomain: String, dataDomain: String)()
{
  if (!lazy cache variable for type metadata for (createDomain: String, dataDomain: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (createDomain: String, dataDomain: String));
    }
  }
}

uint64_t RangeQuantity.localizedMessage(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsData.Series();
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = &v89 - v10;
  v96 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v95 = *(v96 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v101 = v13;
  v104 = *(v13 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v13);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v102 = &v89 - v19;
  v20 = type metadata accessor for Locale();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v110 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v109 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HealthChartsData.DescriptionKey();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v105 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v89 - v31;
  type metadata accessor for HealthChartsUnit?(0, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], v7);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v106 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v89 - v37;
  v107 = *(type metadata accessor for DescriptionContext(0) + 20);
  v108 = a1;
  HealthChartsData.description.getter();
  v39 = type metadata accessor for HealthChartsData.Description();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v38, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_9:
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    print(_:separator:terminator:)();

    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v92 = a2;
  v42 = HealthChartsData.Description.substitutionValues.getter();
  v91 = *(v40 + 8);
  v91(v38, v39);
  v43 = *(v27 + 104);
  v43(v32, *MEMORY[0x277D10260], v26);
  if (!*(v42 + 16) || (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v45 & 1) == 0))
  {

    (*(v27 + 8))(v32, v26);
    goto LABEL_8;
  }

  v46 = *(*(v42 + 56) + 8 * v44);
  v47 = *(v27 + 8);
  v48 = v26;
  v90 = v47;
  v47(v32, v26);

  v49 = v106;
  HealthChartsData.description.getter();
  if (v41(v49, 1, v39) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v49, &lazy cache variable for type metadata for HealthChartsData.Description?, MEMORY[0x277D10240], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
LABEL_8:
    a2 = v92;
    goto LABEL_9;
  }

  v54 = HealthChartsData.Description.substitutionValues.getter();
  v91(v49, v39);
  v55 = v105;
  v43(v105, *MEMORY[0x277D10258], v48);
  if (!*(v54 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55), (v57 & 1) == 0))
  {

    v90(v55, v48);
    goto LABEL_8;
  }

  v58 = *(*(v54 + 56) + 8 * v56);
  v90(v55, v48);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v109 = String.init(localized:table:bundle:locale:comment:)();
  v106 = v59;
  static Locale.autoupdatingCurrent.getter();
  v105 = lazy protocol witness table accessor for type Double and conformance Double();
  v60 = v93;
  FloatingPointFormatStyle.init(locale:)();
  v111 = 0.0;
  v112 = v46 < 1.0;
  type metadata accessor for ClosedRange<Int>();
  v91 = v61;
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<Int>);
  v62 = v94;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v63 = v101;
  MEMORY[0x253075120](v62, v101);
  v64 = *(v95 + 8);
  v65 = v96;
  v64(v62, v96);
  v67 = v104 + 8;
  v66 = *(v104 + 8);
  v66(v60, v63);
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  v111 = 0.0;
  v112 = v58 < 1.0;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v62, v63);
  v68 = v62;
  v69 = v66;
  v64(v68, v65);
  v70 = v63;
  v104 = v67;
  v66(v60, v63);
  v71 = v97;
  HealthChartsData.series.getter();
  v72 = v100;
  HealthChartsData.Series.unit.getter();
  (*(v98 + 8))(v71, v99);
  v73 = type metadata accessor for HealthChartsUnit();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    outlined destroy of HealthChartsData.Description?(v72, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88], type metadata accessor for HealthChartsUnit?);
    v75 = 0;
    v76 = 0;
  }

  else
  {
    swift_getKeyPath();
    v75 = HealthChartsUnit.subscript.getter();
    v76 = v77;

    (*(v74 + 8))(v72, v73);
  }

  v111 = v46;
  v78 = FloatingPointFormatStyle.format(_:)();
  v80 = v79;
  v111 = v58;
  v82 = FloatingPointFormatStyle.format(_:)();
  v83 = v81;
  v84 = v92;
  if (v82 == v78 && v81 == v80)
  {
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v78 = v82;
  }

  else
  {
    v111 = *&v78;
    v112 = v80;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v82, v83);

    v78 = *&v111;
    v83 = v112;
  }

  v85 = DescriptionContext.DataXScale.dateString.getter();
  v87 = v86;
  v69(v103, v70);
  result = (v69)(v102, v70);
  v88 = v106;
  *v84 = v109;
  v84[1] = v88;
  v84[2] = v78;
  v84[3] = v83;
  v84[4] = v75;
  v84[5] = v76;
  v84[6] = v85;
  v84[7] = v87;
  return result;
}

uint64_t RangeQuantity.content(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  RangeQuantity.localizedMessage(for:)(a1, &v19);
  v3 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v5 = v24;
    v4 = v25;
    v7 = v22;
    v6 = v23;
    v9 = v20;
    v8 = v21;
    v10 = v19;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  *&v15 = v10;
  *(&v15 + 1) = *(&v19 + 1);
  *&v16 = v9;
  *(&v16 + 1) = v8;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  *&v18 = v5;
  *(&v18 + 1) = v4;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  v12 = v18;
  a2[2] = v17;
  a2[3] = v12;
  *&v19 = v10;
  *(&v19 + 1) = v3;
  v20 = v9;
  v21 = v8;
  v22 = v7;
  v23 = v6;
  v24 = v5;
  v25 = v4;
  outlined init with copy of CommonChartDescription?(&v15, &v14);
  return outlined destroy of HealthChartsData.Description?(&v19, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88], type metadata accessor for _ContiguousArrayStorage<Any>);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x253076620](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for HealthChartsData.DescriptionKey();
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

void type metadata accessor for ClosedRange<Int>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Int>)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Int>);
    }
  }
}

uint64_t outlined destroy of HealthChartsData.Description?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of CommonChartDescription?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for RangeQuantity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RangeQuantity(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RangeQuantity(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>)
  {
    type metadata accessor for HealthChartsUnit?(255, &lazy cache variable for type metadata for TupleView<(CommonChartDescription?, EmptyView)>, type metadata accessor for (CommonChartDescription?, EmptyView), MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(CommonChartDescription?, EmptyView)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for HealthChartsUnit?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (CommonChartDescription?, EmptyView)()
{
  if (!lazy cache variable for type metadata for (CommonChartDescription?, EmptyView))
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for CommonChartDescription?, &type metadata for CommonChartDescription, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CommonChartDescription?, EmptyView));
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v21 = a1;
  v4 = type metadata accessor for HealthChartsData.DescriptionKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D10288]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for AxisDomain.axisContent(seriesScale:seriesUnit:finestAggregation:) in conformance AutomaticNumeric()
{
  v0 = type metadata accessor for AxisMarkPosition();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for AxisMarkValues();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<>(preset:position:values:stroke:)();
}

uint64_t AxisDomain<>.axisContent(seriesScale:seriesUnit:finestAggregation:)()
{
  v0 = type metadata accessor for AxisMarkPosition();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for AxisMarkValues();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  static AxisMarkValues.automatic.getter();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  return AxisMarks.init<>(preset:position:values:stroke:)();
}

uint64_t ScalarDomain.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = *(v10 + 8);
  a4[4] = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  a4[5] = v12;
  *a4 = implicit closure #1 in ScalarDomain.init<A>(_:)(a1, a2, a3);
  a4[1] = v13;
  v14 = *(v8 + 32);
  v14(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  result = (v14)(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[2] = partial apply for closure #1 in ScalarDomain.init<A>(_:);
  a4[3] = v16;
  return result;
}

uint64_t ScalarDomain.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ScalarDomain.debugDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t (*implicit closure #1 in ScalarDomain.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
}

uint64_t closure #1 in ScalarDomain.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3 & 1;
  v13 = *(a7 + 64);
  a8[3] = swift_getAssociatedTypeWitness();
  a8[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a8);
  return v13(v15, a4, a5, a6, a7);
}

uint64_t ScalarDomain.axisScale(seriesScale:seriesUnit:finestAggregation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  return v4(a1, a2, a3 & 1);
}

uint64_t ScalarDomain.axisContent(seriesScale:seriesUnit:finestAggregation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, a3 & 1);
}

uint64_t protocol witness for AxisDomain.axisScale(seriesScale:seriesUnit:finestAggregation:) in conformance ScalarDomain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  return v4(*a1, *(a1 + 8), *(a1 + 16), a2, a3);
}

uint64_t protocol witness for AxisDomain.axisContent(seriesScale:seriesUnit:finestAggregation:) in conformance ScalarDomain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *(a1 + 8), *(a1 + 16), a2, a3);
}

unint64_t instantiation function for generic protocol witness table for ScalarDomain(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScalarDomain and conformance ScalarDomain()
{
  result = lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain;
  if (!lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain;
  if (!lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalarDomain and conformance ScalarDomain);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScalarDomain()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScalarDomain(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ScalarDomain(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type AxisMarks<Never> and conformance AxisMarks<A>()
{
  result = lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>;
  if (!lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>)
  {
    type metadata accessor for AxisMarks<Never>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisMarks<Never> and conformance AxisMarks<A>);
  }

  return result;
}

void type metadata accessor for AxisMarks<Never>()
{
  if (!lazy cache variable for type metadata for AxisMarks<Never>)
  {
    v0 = type metadata accessor for AxisMarks();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AxisMarks<Never>);
    }
  }
}

double specialized AxisDomain<>.convertRangeIfNeeded<A>(from:to:defaultRange:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  type metadata accessor for HealthChartsUnit?(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for HealthChartsUnit();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  IntervalChartValue.asClosedRange()();
  v18 = v27;
  outlined init with copy of HealthChartsUnit?(a1, v9);
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    outlined destroy of HealthChartsUnit?(v9);
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v17, v9, v10);
    outlined init with copy of HealthChartsUnit?(v26, v6);
    if (v19(v6, 1, v10) == 1)
    {
      outlined destroy of HealthChartsUnit?(v6);
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_25145AB10;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 32) = 0xD00000000000006ALL;
      *(v21 + 40) = 0x8000000251464200;
      print(_:separator:terminator:)();

      (*(v11 + 8))(v17, v10);
    }

    else
    {
      v20(v14, v6, v10);
      HealthChartsUnit.convert(_:to:)();
      v18 = v22;
      v23 = *(v11 + 8);
      v23(v14, v10);
      v23(v17, v10);
    }
  }

  return v18;
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 24);
  v8 = (*(*(*(v5 + 16) - 8) + 80) + 32) & ~*(*(*(v5 + 16) - 8) + 80);
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3 & 1;
  return (*(v7 + 56))(v10, a4, a5);
}

uint64_t outlined init with copy of HealthStaticChartKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for HealthChartModel()
{
  result = type metadata singleton initialization cache for HealthChartModel;
  if (!type metadata singleton initialization cache for HealthChartModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthChartModel.init<A>(_:providedData:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v12 = type metadata accessor for HealthChartModel();
  outlined init with take of HealthChartsContext(a3, a6 + *(v12 + 20), type metadata accessor for HealthChartsContext);
  return outlined init with take of HealthChartsAttributes<DateDomain>(a2, a6 + *(v12 + 24), &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], type metadata accessor for HealthChartsData?);
}

uint64_t outlined init with take of HealthChartsAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t HealthChartModel.attributes()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v3);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = (&v95 - v8);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v109 = v9;
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  *&v108 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v106 = &v95 - v15;
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v112 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v105 = &v95 - v18;
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v95 - v21;
  v23 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v100 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1[3];
  v27 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v28);
  v104 = type metadata accessor for HealthChartModel();
  v29 = *(v104 + 20);
  v110 = v1;
  v30 = v1 + v29;
  (*(v27 + 24))(v1 + v29, v28, v27);
  v31 = type metadata accessor for HealthChartsContext();
  outlined init with copy of ChartAttributes<DateDomain>(&v30[*(v31 + 28)], v22, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan, type metadata accessor for HealthChartsData?);
  v32 = (*(v24 + 48))(v22, 1, v23);
  v101 = v13;
  if (v32 == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v22, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
    v33 = v106;
    v34 = a1;
  }

  else
  {
    v35 = v22;
    v36 = v100;
    outlined init with take of HealthChartsContext(v35, v100, type metadata accessor for DateDomain.ViewDateSpan);
    v37 = v112;
    v34 = a1;
    v38 = (a1 + *(v112 + 36));
    v39 = v38[3];
    v99 = v38[4];
    v98 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v40 = *a1;
    v41 = *(v13 + 36);
    LODWORD(v95) = *(a1 + v41);
    v42 = v108;
    outlined init with copy of HealthChartsContext(a1 + v41, v108, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    v43 = *(v109 + 13);
    v44 = v106;
    v45 = &v106[*(v13 + 36)];
    outlined init with copy of ChartAttributes<DateDomain>(v42 + v43, &v45[v43], &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, type metadata accessor for HealthChartsData?);
    v97 = type metadata accessor for DateDomain(0);
    outlined init with copy of HealthChartsContext(v36, &v45[v43 + *(v97 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
    v46 = outlined destroy of DateDomain(v42 + v43, type metadata accessor for DateDomain);
    v96 = &v95;
    *v45 = v95;
    v47 = *(v13 + 40);
    v48 = v34 + v47;
    v49 = *(v34 + v47);
    v50 = *(v34 + v47 + 8);
    v52 = *(v34 + v47 + 32);
    v51 = *(v34 + v47 + 40);
    *v44 = v40;
    v53 = v44 + v47;
    *v53 = v49;
    v54 = *(v48 + 6);
    *(v53 + 1) = v50;
    v95 = *(v48 + 1);
    *(v53 + 1) = v95;
    *(v53 + 4) = v52;
    *(v53 + 5) = v51;
    *(v53 + 6) = v54;
    v55 = *(*(v39 - 8) + 64);
    v56 = MEMORY[0x28223BE20](v46);
    v58 = &v95 - v57;
    (*(v59 + 16))(&v95 - v57, v98, v39, v56);
    v113[0] = *(v34 + *(v37 + 40));
    lazy protocol witness table accessor for type DateDomain and conformance DateDomain();

    v60 = v105;
    HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v44, v58, v113, v39, v99, v105);
    outlined destroy of DateDomain(v36, type metadata accessor for DateDomain.ViewDateSpan);
    outlined destroy of ChartAttributes<DateDomain>(v34, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
    outlined init with take of HealthChartsAttributes<DateDomain>(v60, v34, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes, type metadata accessor for ChartAttributes<DateDomain>);
    v33 = v44;
  }

  v61 = MEMORY[0x277D102A8];
  v62 = v107;
  outlined init with copy of ChartAttributes<DateDomain>(v110 + *(v104 + 24), v107, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8], type metadata accessor for HealthChartsData?);
  v63 = type metadata accessor for HealthChartsData();
  v64 = (*(*(v63 - 8) + 48))(v62, 1, v63);
  result = outlined destroy of DateDomain.ViewDateSpan?(v62, &lazy cache variable for type metadata for HealthChartsData?, v61);
  if (v64 == 1)
  {
    v66 = v111;
    HealthChartModel.queryIntervalAggregation()(v111);
    v67 = (v34 + *(v112 + 36));
    v68 = v67[3];
    v110 = v67[4];
    v107 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v69 = *v34;
    v70 = v101;
    v71 = *(v101 + 36);
    v72 = v33;
    v73 = *(v34 + v71);
    v74 = v108;
    outlined init with copy of HealthChartsContext(v34 + v71, v108, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
    v75 = *(v109 + 13);
    v76 = v74 + v75;
    v77 = v72 + *(v70 + 36);
    v78 = &v77[v75];
    outlined init with copy of HealthChartsContext(v66, &v77[v75], type metadata accessor for DateDomain.IntervalAggregation);
    (*(v102 + 56))(v78, 0, 1, v103);
    v79 = type metadata accessor for DateDomain(0);
    outlined init with copy of HealthChartsContext(v76 + *(v79 + 20), &v78[*(v79 + 20)], type metadata accessor for DateDomain.ViewDateSpan);
    v80 = outlined destroy of DateDomain(v76, type metadata accessor for DateDomain);
    v109 = &v95;
    *v77 = v73;
    v81 = *(v70 + 40);
    v82 = v34 + v81;
    v83 = *(v34 + v81);
    v84 = *(v34 + v81 + 8);
    v86 = *(v34 + v81 + 32);
    v85 = *(v34 + v81 + 40);
    *v72 = v69;
    v87 = v72 + v81;
    *v87 = v83;
    v88 = *(v82 + 6);
    *(v87 + 1) = v84;
    v108 = *(v82 + 1);
    *(v87 + 1) = v108;
    *(v87 + 4) = v86;
    *(v87 + 5) = v85;
    *(v87 + 6) = v88;
    v89 = *(*(v68 - 8) + 64);
    v90 = MEMORY[0x28223BE20](v80);
    v92 = &v95 - v91;
    (*(v93 + 16))(&v95 - v91, v107, v68, v90);
    v113[0] = *(v34 + *(v112 + 40));
    lazy protocol witness table accessor for type DateDomain and conformance DateDomain();

    v94 = v105;
    HealthChartsAttributes.init<A>(chartAttributes:description:series:)(v72, v92, v113, v68, v110, v105);
    outlined destroy of DateDomain(v111, type metadata accessor for DateDomain.IntervalAggregation);
    outlined destroy of ChartAttributes<DateDomain>(v34, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
    return outlined init with take of HealthChartsAttributes<DateDomain>(v94, v34, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes, type metadata accessor for ChartAttributes<DateDomain>);
  }

  return result;
}

uint64_t HealthChartModel.queryIntervalAggregation()@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v46 = type metadata accessor for HealthChartsData.Aggregation();
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - v6;
  v7 = type metadata accessor for Date();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x277CC88A8];
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  HealthChartModel.viewSpan()(v24);
  v25 = v1 + *(type metadata accessor for HealthChartModel() + 20);
  v26 = type metadata accessor for HealthChartsContext();
  outlined init with copy of ChartAttributes<DateDomain>(v25 + *(v26 + 24), v15, &lazy cache variable for type metadata for DateInterval?, v11, type metadata accessor for HealthChartsData?);
  v27 = (*(v17 + 48))(v15, 1, v16);
  v40 = v10;
  v45 = v16;
  if (v27 == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v15, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
    Date.init()();
    DateInterval.init(start:duration:)();
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  v28 = *(v26 + 20);
  v30 = v43;
  v29 = v44;
  v31 = v46;
  (*(v43 + 104))(v44, *MEMORY[0x277D10200], v46);
  v32 = v47;
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v25 + v28, v20, v29, v47);
  v33 = v29;
  v34 = v32;
  (*(v30 + 8))(v33, v31);
  v35 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v34, 1, v35) == 1)
  {
    v37 = v40;
    Date.init()();
    static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)(v25 + v28, v37, v48);
    (*(v41 + 8))(v37, v42);
    (*(v17 + 8))(v20, v45);
    outlined destroy of DateDomain(v24, type metadata accessor for DateDomain.ViewDateSpan);
    result = v36(v34, 1, v35);
    if (result != 1)
    {
      return outlined destroy of DateDomain.ViewDateSpan?(v34, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    }
  }

  else
  {
    (*(v17 + 8))(v20, v45);
    outlined destroy of DateDomain(v24, type metadata accessor for DateDomain.ViewDateSpan);
    return outlined init with take of HealthChartsContext(v34, v48, type metadata accessor for DateDomain.IntervalAggregation);
  }

  return result;
}

uint64_t HealthChartModel.data(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D102A8];
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for HealthChartsData();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HealthChartModel();
  outlined init with copy of ChartAttributes<DateDomain>(v2 + *(v19 + 24), v13, &lazy cache variable for type metadata for HealthChartsData?, v9, type metadata accessor for HealthChartsData?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of DateDomain.ViewDateSpan?(v13, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
    HealthChartModel.queryIntervalAggregation()(v8);
    HealthChartModel.queryData(intervalAggregation:_:)(v8, a1, a2);
    return outlined destroy of DateDomain(v8, type metadata accessor for DateDomain.IntervalAggregation);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    a1(v18);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t HealthChartModel.queryData(intervalAggregation:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for HealthChartsData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 3);
  v13 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(v3, v12);
  v14 = type metadata accessor for HealthChartModel();
  (*(v13 + 16))(&v20, &v3[*(v14 + 20)], v12, v13);
  if (v21)
  {
    outlined init with take of HealthChartsDataProvider(&v20, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v15 = *(type metadata accessor for DateDomain.IntervalAggregation(0) + 20);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;

    dispatch thunk of HealthChartsDataProvider.query(interval:aggregation:results:)();

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of DateDomain(&v20, type metadata accessor for HealthChartsDataProvider?);
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25145AB10;
    *(v18 + 56) = type metadata accessor for HealthChartsErrors();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    outlined init with copy of HealthStaticChartKey(v4, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    print(_:separator:terminator:)();

    static HealthChartsData.empty.getter();
    a2(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t closure #1 in HealthChartModel.queryData(intervalAggregation:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for HealthChartsData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Result<HealthChartsData, Error>();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of HealthChartsContext(a1, v12, type metadata accessor for Result<HealthChartsData, Error>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25145AB10;
    swift_getErrorValue();
    v15 = v19;
    v16 = v20;
    *(v14 + 56) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    print(_:separator:terminator:)();

    static HealthChartsData.empty.getter();
    a2(v8);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    a2(v8);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HealthChartModel.viewSpan()@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  type metadata accessor for ChartAttributes<DateDomain>(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = v1 + *(type metadata accessor for HealthChartModel() + 20);
  v21 = type metadata accessor for HealthChartsContext();
  outlined init with copy of ChartAttributes<DateDomain>(&v20[*(v21 + 28)], v19, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan, type metadata accessor for HealthChartsData?);
  v22 = type metadata accessor for DateDomain.ViewDateSpan(0);
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) != 1)
  {
    return outlined init with take of HealthChartsContext(v19, v29, type metadata accessor for DateDomain.ViewDateSpan);
  }

  outlined destroy of DateDomain.ViewDateSpan?(v19, &lazy cache variable for type metadata for DateDomain.ViewDateSpan?, type metadata accessor for DateDomain.ViewDateSpan);
  v23 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v23);
  (*(v24 + 24))(v20, v23, v24);
  outlined init with copy of ChartAttributes<DateDomain>(v15, v11, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes, type metadata accessor for ChartAttributes<DateDomain>);
  outlined destroy of ChartAttributes<DateDomain>(v15, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  outlined init with copy of HealthChartsContext(&v11[*(v8 + 36)], v6, type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>);
  outlined destroy of ChartAttributes<DateDomain>(v11, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v25 = &v6[*(v3 + 52)];
  v26 = type metadata accessor for DateDomain(0);
  outlined init with copy of HealthChartsContext(v25 + *(v26 + 20), v29, type metadata accessor for DateDomain.ViewDateSpan);
  return outlined destroy of DateDomain(v25, type metadata accessor for DateDomain);
}

unint64_t lazy protocol witness table accessor for type DateDomain and conformance DateDomain()
{
  result = lazy protocol witness table cache variable for type DateDomain and conformance DateDomain;
  if (!lazy protocol witness table cache variable for type DateDomain and conformance DateDomain)
  {
    type metadata accessor for DateDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateDomain and conformance DateDomain);
  }

  return result;
}

void type metadata accessor for ChartAttributes<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateDomain(255);
    v7 = lazy protocol witness table accessor for type DateDomain and conformance DateDomain();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of ChartAttributes<DateDomain>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for ChartAttributes<DateDomain>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2513FBD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2513FBE5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for HealthChartsContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      type metadata accessor for HealthChartsData?(0, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void type metadata completion function for HealthChartModel()
{
  type metadata accessor for HealthStaticChartKey(319, &lazy cache variable for type metadata for HealthStaticChartKey);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HealthChartsContext();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HealthChartsData?(319, &lazy cache variable for type metadata for HealthChartsData?, MEMORY[0x277D102A8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t outlined destroy of DateDomain(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HealthChartsDataProvider?()
{
  if (!lazy cache variable for type metadata for HealthChartsDataProvider?)
  {
    type metadata accessor for HealthStaticChartKey(255, &lazy cache variable for type metadata for HealthChartsDataProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsDataProvider?);
    }
  }
}

uint64_t outlined init with take of HealthChartsDataProvider(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2513FC144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined init with copy of HealthChartsContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ChartAttributes<DateDomain>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of DateDomain.ViewDateSpan?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for HealthChartsData?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of HealthChartsContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

double BloodPressureMessage.localizedBloodPressure(context:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v134 = a2;
  v122 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v125 = *(v122 - 8);
  v3 = *(v125 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>();
  v124 = v5;
  v119 = *(v5 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v5);
  v123 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v113 - v9;
  MEMORY[0x28223BE20](v10);
  v118 = &v113 - v11;
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsData.DescriptionKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v126 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = &v113 - v23;
  MEMORY[0x28223BE20](v24);
  v130 = &v113 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v113 - v27;
  type metadata accessor for HealthChartsData.Description?(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v127 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v129 = &v113 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v113 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v113 - v38;
  v40 = type metadata accessor for HealthChartsData();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(type metadata accessor for DescriptionContext(0) + 20);
  v132 = v41;
  v46 = *(v41 + 16);
  v117 = a1;
  v133 = v40;
  v46(v44, a1 + v45, v40);
  v136 = v44;
  HealthChartsData.description.getter();
  v47 = type metadata accessor for HealthChartsData.Description();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  if (v49(v39, 1, v47) == 1)
  {
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v39, type metadata accessor for HealthChartsData.Description?);
LABEL_8:
    v55 = v136;
    goto LABEL_9;
  }

  v50 = HealthChartsData.Description.substitutionValues.getter();
  v116 = *(v48 + 8);
  v116(v39, v47);
  v51 = *MEMORY[0x277D10260];
  v115 = *(v19 + 104);
  v115(v28, v51, v18);
  if (!*(v50 + 16) || (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v53 & 1) == 0))
  {

    (*(v19 + 8))(v28, v18);
    goto LABEL_8;
  }

  v54 = *(*(v50 + 56) + 8 * v52);
  v114 = *(v19 + 8);
  v114(v28, v18);

  v55 = v136;
  HealthChartsData.description.getter();
  if (v49(v36, 1, v47) == 1)
  {
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v36, type metadata accessor for HealthChartsData.Description?);
LABEL_9:
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_25145AB10;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v57 = String.init(localized:table:bundle:locale:comment:)();
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 32) = v57;
    *(v56 + 40) = v58;
    print(_:separator:terminator:)();

    (*(v132 + 8))(v55, v133);
    _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOi0_(&v137);
    goto LABEL_10;
  }

  v65 = HealthChartsData.Description.substitutionValues.getter();
  v116(v36, v47);
  v66 = v130;
  v115(v130, *MEMORY[0x277D10258], v18);
  if (!*(v65 + 16) || (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v68 & 1) == 0))
  {

    v114(v66, v18);
    goto LABEL_9;
  }

  v69 = *(*(v65 + 56) + 8 * v67);
  v114(v66, v18);

  v70 = v129;
  HealthChartsData.description.getter();
  if (v49(v70, 1, v47) == 1)
  {
LABEL_14:
    outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v70, type metadata accessor for HealthChartsData.Description?);
    goto LABEL_9;
  }

  v71 = HealthChartsData.Description.substitutionValues.getter();
  v116(v70, v47);
  v72 = v128;
  v115(v128, *MEMORY[0x277D10270], v18);
  if (!*(v71 + 16) || (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v72), (v74 & 1) == 0))
  {

    v99 = v72;
LABEL_26:
    v114(v99, v18);
    goto LABEL_9;
  }

  v75 = *(*(v71 + 56) + 8 * v73);
  v114(v72, v18);

  v70 = v127;
  HealthChartsData.description.getter();
  if (v49(v70, 1, v47) == 1)
  {
    goto LABEL_14;
  }

  v76 = HealthChartsData.Description.substitutionValues.getter();
  v116(v70, v47);
  v77 = v126;
  v115(v126, *MEMORY[0x277D10268], v18);
  if (!*(v76 + 16) || (v78 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v79 & 1) == 0))
  {

    v99 = v77;
    goto LABEL_26;
  }

  v80 = *(*(v76 + 56) + 8 * v78);
  v114(v77, v18);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v130 = String.init(localized:table:bundle:locale:comment:)();
  v129 = v81;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v131 = String.init(localized:table:bundle:locale:comment:)();
  v128 = v82;
  v127 = DescriptionContext.DataXScale.dateString.getter();
  v126 = v83;
  static Locale.autoupdatingCurrent.getter();
  v84 = lazy protocol witness table accessor for type Double and conformance Double();
  v85 = v120;
  v117 = v84;
  FloatingPointFormatStyle.init(locale:)();
  type metadata accessor for ClosedRange<Int>();
  v87 = v86;
  lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>, type metadata accessor for ClosedRange<Int>);
  v137 = 0uLL;
  v88 = v121;
  v116 = v87;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  v89 = v118;
  v90 = v124;
  MEMORY[0x253075120](v88, v124);
  v91 = *(v125 + 8);
  v125 += 8;
  v91(v88, v122);
  v92 = *(v119 + 8);
  v92(v85, v90);
  *&v137 = v54;
  v93 = FloatingPointFormatStyle.format(_:)();
  v95 = v94;
  *&v137 = v69;
  v97 = FloatingPointFormatStyle.format(_:)();
  v98 = v96;
  if (v97 == v93 && v96 == v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v119 = v98;
    v92(v89, v90);
  }

  else
  {
    *&v137 = v93;
    *(&v137 + 1) = v95;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v97, v98);

    v119 = *(&v137 + 1);
    v97 = v137;
    v92(v89, v90);
  }

  v100 = v90;
  v101 = [objc_opt_self() millimetersOfMercury];
  v102 = [v101 symbol];

  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v103;

  static Locale.autoupdatingCurrent.getter();
  v104 = v120;
  FloatingPointFormatStyle.init(locale:)();
  v137 = 0uLL;
  v105 = v121;
  static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
  MEMORY[0x253075120](v105, v100);
  v91(v105, v122);
  v92(v104, v100);
  *&v137 = v75;
  v106 = FloatingPointFormatStyle.format(_:)();
  v108 = v107;
  *&v137 = v80;
  v110 = FloatingPointFormatStyle.format(_:)();
  v111 = v109;
  if (v110 == v106 && v109 == v108)
  {
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v106 = v110;
  }

  else
  {
    *&v137 = v106;
    *(&v137 + 1) = v108;
    MEMORY[0x2530761B0](45, 0xE100000000000000);
    MEMORY[0x2530761B0](v110, v111);

    v111 = *(&v137 + 1);
    v106 = v137;
  }

  v112 = v119;
  v92(v123, v124);
  (*(v132 + 8))(v136, v133);
  *&v137 = v130;
  *(&v137 + 1) = v129;
  *&v138 = v97;
  *(&v138 + 1) = v112;
  v139 = 0uLL;
  *&v140 = v127;
  *(&v140 + 1) = v126;
  *&v141 = v131;
  *(&v141 + 1) = v128;
  *&v142 = v106;
  *(&v142 + 1) = v111;
  *&v143 = v118;
  *(&v143 + 1) = v115;
  v144 = 0uLL;
  destructiveProjectEnumData for HealthChartsErrors(&v137);
LABEL_10:
  v59 = v142;
  v60 = v134;
  v134[4] = v141;
  v60[5] = v59;
  v61 = v144;
  v60[6] = v143;
  v60[7] = v61;
  v62 = v138;
  *v60 = v137;
  v60[1] = v62;
  result = *&v139;
  v64 = v140;
  v60[2] = v139;
  v60[3] = v64;
  return result;
}

uint64_t BloodPressureMessage.content(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BloodPressureMessage.localizedBloodPressure(context:)(a1, v15);
  v10 = 1;
  if (_s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOg(v15) != 1)
  {
    v13[0] = v15[0];
    v13[1] = v15[1];
    v13[2] = v15[2];
    v13[3] = v15[3];
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    *v9 = static VerticalAlignment.top.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>();
    closure #1 in BloodPressureMessage.content(with:)(v13, v14, &v9[*(v11 + 44)]);
    outlined destroy of CommonDescriptionViewModel(v15);
    outlined destroy of CommonDescriptionViewModel(v16);
    outlined init with take of HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(v9, a2);
    v10 = 0;
  }

  return (*(v6 + 56))(a2, v10, 1, v5);
}

void type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255);
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>);
    }
  }
}

void type metadata accessor for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)()
{
  if (!lazy cache variable for type metadata for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>))
  {
    type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>));
    }
  }
}

void type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>()
{
  if (!lazy cache variable for type metadata for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)
  {
    type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>();
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type _ShapeView<BasicChartSymbolShape, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>);
    v0 = type metadata accessor for SymbolTitleDescription();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
    }
  }
}

void type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<BasicChartSymbolShape, Color>)
  {
    type metadata accessor for BasicChartSymbolShape();
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type BasicChartSymbolShape and conformance BasicChartSymbolShape, MEMORY[0x277CBB3B8]);
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<BasicChartSymbolShape, Color>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t closure #1 in BloodPressureMessage.content(with:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  type metadata accessor for MainActor();
  v35[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = &v19[*(v7 + 36)];
  v21 = a1[1];
  *v20 = *a1;
  *(v20 + 1) = v21;
  v22 = a1[3];
  *(v20 + 2) = a1[2];
  *(v20 + 3) = v22;
  outlined init with copy of CommonDescriptionViewModel(a1, v36);
  static ChartSymbolShape<>.circle.getter();
  v23 = objc_opt_self();
  v24 = [v23 labelColor];
  v25 = Color.init(uiColor:)();
  type metadata accessor for _ShapeView<BasicChartSymbolShape, Color>();
  v27 = v26;
  *&v19[*(v26 + 52)] = v25;
  *&v19[*(v26 + 56)] = 256;
  v28 = &v16[*(v7 + 36)];
  v29 = a2[1];
  *v28 = *a2;
  *(v28 + 1) = v29;
  v30 = a2[3];
  *(v28 + 2) = a2[2];
  *(v28 + 3) = v30;
  outlined init with copy of CommonDescriptionViewModel(a2, v36);
  static ChartSymbolShape<>.diamond.getter();
  v31 = [v23 systemPinkColor];
  *&v16[*(v27 + 52)] = Color.init(uiColor:)();
  *&v16[*(v27 + 56)] = 256;
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v19, v13);
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v16, v10);
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v13, a3);
  type metadata accessor for (SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)();
  v33 = a3 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v10, a3 + *(v32 + 64));
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v16, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v19, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v10, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
  outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(v13, type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>);
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>);
    }
  }
}

uint64_t outlined init with take of HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for BloodPressureMessage(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?)
  {
    type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(255, &lazy cache variable for type metadata for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>?, type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>, MEMORY[0x277D83D88]);
    lazy protocol witness table accessor for type BasicChartSymbolShape and conformance BasicChartSymbolShape(&lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for TupleView<(SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>, Spacer, SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for SymbolTitleDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolTitleDescription(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

double storeEnumTagSinglePayload for SymbolTitleDescription(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFC0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 56) = 0;
      result = 0.0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 8) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t SymbolTitleDescription.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  static HorizontalAlignment.leading.getter();
  v12 = *(a1 + 24);
  v17 = v3;
  v18 = v12;
  v19 = v1;
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v8, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v8, v4);
  static ChartContentBuilder.buildExpression<A>(_:)(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

uint64_t closure #1 in SymbolTitleDescription.body.getter@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  type metadata accessor for MainActor();
  v31 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = static VerticalAlignment.center.getter();
  MEMORY[0x28223BE20](v14);
  v15 = v30;
  *(&v27 - 4) = a2;
  *(&v27 - 3) = v15;
  *(&v27 - 2) = a1;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v10, v6, WitnessTable);
  v29 = *(v7 + 8);
  v29(v10, v6);
  v16 = &a1[*(type metadata accessor for SymbolTitleDescription() + 36)];
  v17 = v13;
  v27 = v13;
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v21 = *(v16 + 4);
  v20 = *(v16 + 5);
  v22 = *(v16 + 7);
  if (v22)
  {
    v23 = *(v16 + 6);
  }

  else
  {
    v23 = 0;
  }

  (*(v7 + 16))(v10, v17, v6);
  v38[0] = v19;
  v38[1] = v18;
  v38[2] = v21;
  v38[3] = v20;
  v39[0] = v10;
  v39[1] = v38;
  v37[0] = v23;
  v37[1] = v22;
  v39[2] = v37;

  v36[0] = v6;
  v36[1] = &type metadata for CommonDescriptionValue;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  v36[2] = v24;
  v33 = WitnessTable;
  v34 = lazy protocol witness table accessor for type CommonDescriptionValue and conformance CommonDescriptionValue();
  v35 = lazy protocol witness table accessor for type CommonDescriptionDate? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(v39, 3uLL, v36);
  v25 = v29;
  v29(v27, v6);

  v25(v10, v6);
}

uint64_t closure #1 in closure #1 in SymbolTitleDescription.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  type metadata accessor for MainActor();
  v20[0] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Alignment.center.getter();
  v13 = *(a2 + 8);
  View.frame(width:height:alignment:)();
  v23[2] = v13;
  v23[3] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  static ChartContentBuilder.buildExpression<A>(_:)(v9, v5, WitnessTable);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v16 = (a1 + *(type metadata accessor for SymbolTitleDescription() + 36));
  v18 = *v16;
  v17 = v16[1];
  (*(v6 + 16))(v9, v12, v5);
  v22[0] = v18;
  v22[1] = v17;
  v23[0] = v9;
  v23[1] = v22;

  v21[0] = v5;
  v21[1] = &type metadata for CommonDescriptionTitle;
  v20[2] = WitnessTable;
  v20[3] = lazy protocol witness table accessor for type CommonDescriptionTitle and conformance CommonDescriptionTitle();
  static ViewBuilder.buildBlock<each A>(_:)(v23, 2uLL, v21);
  v15(v12, v5);

  v15(v9, v5);
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionValue and conformance CommonDescriptionValue()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue;
  if (!lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionValue and conformance CommonDescriptionValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionDate? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?)
  {
    type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
    lazy protocol witness table accessor for type CommonDescriptionDate and conformance CommonDescriptionDate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionDate? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionDate and conformance CommonDescriptionDate()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate;
  if (!lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionDate and conformance CommonDescriptionDate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonDescriptionTitle and conformance CommonDescriptionTitle()
{
  result = lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle;
  if (!lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonDescriptionTitle and conformance CommonDescriptionTitle);
  }

  return result;
}

uint64_t outlined init with copy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SymbolTitleDescription<_ShapeView<BasicChartSymbolShape, Color>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _s12HealthCharts26CommonDescriptionViewModelV_ACtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_2513FEEEC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(255, &lazy cache variable for type metadata for CommonDescriptionDate?, &type metadata for CommonDescriptionDate, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t BarSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BarSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v5 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t BarSeries.init(seriesData:attributes:marks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  UUID.init()();
  v9 = type metadata accessor for BarSeries();
  v10 = a4 + v9[16];
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;
  *(a4 + v9[17]) = a3;
  v12 = v9[15];
  v13 = type metadata accessor for HealthChartsData.SeriesData();
  return (*(*(v13 - 8) + 32))(a4 + v12, a1, v13);
}

uint64_t BarSeries.body.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  specialized _copySequenceToContiguousArray<A>(_:)(*(v1 + *(v5 + 68)));
  v12[1] = v6;
  swift_getKeyPath();
  (*(v3 + 16))(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v7 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 32);
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 48);
  (*(v3 + 32))(v8 + v7, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in BarSeries.body.getter;
  *(v10 + 24) = v8;
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for [(offset: Int, element: RectangleMark)], type metadata accessor for (offset: Int, element: RectangleMark), MEMORY[0x277D83940]);
  type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB378]);
  lazy protocol witness table accessor for type [(offset: Int, element: RectangleMark)] and conformance [A]();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in BarSeries.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v17 = a2;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a5;
  *&v19 = a6;
  v14 = (a1 + *(type metadata accessor for BarSeries() + 64));
  v15 = v14[1];
  v17 = *v14;
  v18 = v15;
  v19 = v14[2];
  v20 = *(v14 + 48);
  specialized ChartContent.apply(_:)(&v17, a7);
}

uint64_t BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  *&v46 = type metadata accessor for DateInterval();
  *(&v46 + 1) = a3;
  v9 = v46;
  v24[1] = v46;
  *&v47 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  *(&v47 + 1) = a4;
  v10 = v47;
  v24[0] = v47;
  v11 = type metadata accessor for HealthChartsData.SeriesData();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = a2[1];
  v46 = *a2;
  v47 = v16;
  v48 = a2[2];
  v31 = *(a2 + 48);
  v49 = v31;
  v17 = *(a2 + 1);
  v30 = *a2;
  v29 = v17;
  v28 = *(a2 + 16);
  v27 = *(a2 + 3);
  v26 = *(a2 + 32);
  v25 = *(a2 + 5);
  v45 = HealthChartsData.SeriesData.points.getter();
  v34 = a3;
  v35 = a4;
  v36 = &v46;
  v37 = a1;
  v38 = v9;
  v39 = a3;
  v40 = v10;
  v41 = a4;
  type metadata accessor for HealthChartsData.SeriesPoint();
  v18 = type metadata accessor for Array();
  v19 = type metadata accessor for RectangleMark();
  WitnessTable = swift_getWitnessTable();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in BarSeries.init<>(dateIntervalData:attributes:), v33, v18, v19, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  (*(v12 + 16))(v15, a1, v11);
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v27;
  v42 = v26;
  v43 = v25;
  v44 = v31;
  BarSeries.init(seriesData:attributes:marks:)(v15, &v38, v22, v32);
  return (*(v12 + 8))(a1, v11);
}

uint64_t specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v50 = a3;
  v52 = a2;
  v56 = a1;
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v8 = v7;
  v57 = *(v7 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for HealthChartsData.Aggregation();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v44 - v18;
  v20 = type metadata accessor for Calendar.Component();
  v46 = *(v20 - 8);
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v45 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - v24;
  v55 = type metadata accessor for RectangleMark();
  v26 = *(v55 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v55);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v54 = &v44 - v30;
  type metadata accessor for MainActor();
  v53 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v52 + 32))
  {
    type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.Aggregation.intervalCalendarComponent()();
    (*(v47 + 8))(v15, v48);
    v31 = v46;
    if ((*(v46 + 48))(v19, 1, v20) == 1)
    {
      outlined destroy of Calendar.Component?(v19, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
      v32 = v57;
      (*(v57 + 16))(v11, v56, v8);
      v33 = v51;
      HealthChartsData.SeriesPoint.x.getter();
      HealthChartsData.SeriesPoint.y.getter();
      v34 = v49;
      _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufC10Foundation04DateF0V_AM0L0VSNySdGTt2g5(v33, v49);
      (*(v32 + 8))(v11, v8);
    }

    else
    {
      (*(v31 + 32))(v25, v19, v20);
      (*(v57 + 16))(v11, v56, v8);
      v39 = v45;
      (*(v31 + 16))(v45, v25, v20);
      v34 = v49;
      _s6Charts13RectangleMarkV06HealthA0E3for4unitAC0dA4Core0dA4DataV11SeriesPointVy_10Foundation12DateIntervalVxG_AL8CalendarV9ComponentOtcAG0M10ChartValueRzSd5BoundRtzlufCSNySdG_Tt2g5(v11, v39, v49);
      (*(v31 + 8))(v25, v20);
    }

    v40 = *(v26 + 32);
    v42 = v54;
    v41 = v55;
    v40(v54, v34, v55);
    v40(v58, v42, v41);
  }

  else
  {
    v35 = *(v52 + 24);
    v36 = v57;
    (*(v57 + 16))(v11, v56, v8);
    v37 = v51;
    HealthChartsData.SeriesPoint.x.getter();
    HealthChartsData.SeriesPoint.y.getter();
    v38 = v54;
    _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufC10Foundation04DateI0V_AQ0O0VSNySdGTt3g5(v37, v54);
    (*(v36 + 8))(v11, v8);
    (*(v26 + 32))(v58, v38, v55);
  }
}

{
  return specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, a2, a3, a4);
}

uint64_t closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v57 = a6;
  v49 = a3;
  v50 = a2;
  v55 = a1;
  v56 = type metadata accessor for DateInterval();
  v61 = v56;
  v62 = a4;
  v58 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  v59 = a4;
  v63 = v58;
  v64 = a5;
  v60 = a5;
  v53 = type metadata accessor for HealthChartsData.SeriesPoint();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v43 - v10;
  v47 = type metadata accessor for HealthChartsData.Aggregation();
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Calendar.Component();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v18);
  v44 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v52 = type metadata accessor for RectangleMark();
  v24 = *(v52 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v43 - v28;
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v50 + 32))
  {
    v30 = v56;
    v61 = v56;
    v62 = v59;
    v63 = v58;
    v64 = v60;
    type metadata accessor for HealthChartsData.SeriesData();
    HealthChartsData.SeriesData.aggregation.getter();
    HealthChartsData.Aggregation.intervalCalendarComponent()();
    (*(v45 + 8))(v13, v47);
    v31 = v46;
    if ((*(v46 + 48))(v17, 1, v18) == 1)
    {
      outlined destroy of Calendar.Component?(v17, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
      v32 = v54;
      (*(v8 + 16))(v54, v55, v53);
      v33 = type metadata accessor for Date();
      v34 = v48;
      RectangleMark.init<A, B, C>(for:)(v32, v30, v33, v59, v58, MEMORY[0x277CBB1E8], v60, v48);
    }

    else
    {
      (*(v31 + 32))(v23, v17, v18);
      v38 = v54;
      (*(v8 + 16))(v54, v55, v53);
      v39 = v44;
      (*(v31 + 16))(v44, v23, v18);
      v34 = v48;
      RectangleMark.init<A>(for:unit:)(v38, v39, v59, v60, v48);
      (*(v31 + 8))(v23, v18);
    }

    v40 = *(v24 + 32);
    v41 = v52;
    v40(v29, v34, v52);
    v40(v57, v29, v41);
  }

  else
  {
    v35 = *(v50 + 24);
    v36 = v54;
    (*(v8 + 16))(v54, v55, v53);
    v37 = type metadata accessor for Date();
    RectangleMark.init<A, B, C>(for:width:)(v36, v56, v37, v59, v58, MEMORY[0x277CBB1E8], v60, v29);
    (*(v24 + 32))(v57, v29, v52);
  }
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E3for4unitAC0dA4Core0dA4DataV11SeriesPointVy_10Foundation12DateIntervalVxG_AL8CalendarV9ComponentOtcAG0M10ChartValueRzSd5BoundRtzlufCSNySdG_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v63 = a3;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v50 - v8;
  v58 = MEMORY[0x277CC99E8];
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v50 - v11;
  v64 = type metadata accessor for Date();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v64);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  type metadata accessor for PlottableValue<Date>();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v52 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar.Component();
  v26 = *(v25 - 8);
  v27 = v26;
  v54 = v25;
  v55 = v26;
  v28 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DateInterval();
  v59 = *(v31 - 8);
  v60 = v31;
  v32 = *(v59 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v56 = v35;
  v57 = a1;
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v36 = *(v27 + 16);
  v50 = v30;
  v36(v30, v65, v25);
  v67 = 29560;
  v68 = 0xE200000000000000;
  v67 = String.init<A>(_:)();
  v68 = v37;
  v51 = v34;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v38 = *(v12 + 8);
  v39 = v18;
  v40 = v64;
  v38(v39, v64);
  DateInterval.end.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v38(v15, v40);
  Date.init(timeIntervalSinceReferenceDate:)();
  v41 = type metadata accessor for Calendar();
  v42 = v53;
  (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:unit:calendar:)();
  outlined destroy of Calendar.Component?(v42, &lazy cache variable for type metadata for Calendar?, v58);
  v38(v21, v40);

  v67 = 29561;
  v68 = 0xE200000000000000;
  v67 = String.init<A>(_:)();
  v68 = v43;
  ClosedRange<>.start.getter();
  v66 = v44;
  static PlottableValue.value<A>(_:_:)();

  v67 = 25977;
  v68 = 0xE200000000000000;
  v67 = String.init<A>(_:)();
  v68 = v45;
  ClosedRange<>.end.getter();
  v66 = v46;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  v47 = v54;
  v48 = *(v55 + 8);
  v48(v65, v54);
  (*(*(v56 - 8) + 8))(v57);
  v48(v50, v47);
  return (*(v59 + 8))(v51, v60);
}

uint64_t BarSeries.init<>(datePointData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = type metadata accessor for Date();
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, Double>, MEMORY[0x277D10248]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v91 = v63 - v13;
  type metadata accessor for (DateInterval, ClosedRange<Double>)();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v14);
  v85 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v63 - v19;
  v21 = type metadata accessor for HealthChartsData.Aggregation();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v67 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v25 = v24;
  v77 = *(v24 - 8);
  v26 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v76 = v63 - v27;
  v28 = *(a2 + 1);
  v95[0] = *a2;
  v95[1] = v28;
  v95[2] = *(a2 + 2);
  v75 = *(a2 + 48);
  v96 = v75;
  v29 = a2[1];
  v73 = *a2;
  v72 = v29;
  v74 = *(a2 + 16);
  v70 = a2[3];
  v71 = *(a2 + 32);
  v69 = a2[5];
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, Double>, MEMORY[0x277D101A8]);
  v68 = v30;
  v31 = HealthChartsData.SeriesData.points.getter();
  v32 = *(v31 + 16);
  v78 = a1;
  if (v32)
  {
    v64 = v20;
    v65 = v25;
    v66 = a3;
    v94 = MEMORY[0x277D84F90];
    v33 = v31;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = type metadata accessor for MainActor();
    v36 = *(v11 + 16);
    v35 = v11 + 16;
    v82 = v36;
    v83 = v34;
    v37 = v94;
    v38 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v39 = v6;
    v63[1] = v33;
    v40 = v33 + v38;
    v81 = *(v35 + 56);
    v80 = (v39 + 8);
    v79 = (v35 - 8);
    v84 = v35;
    do
    {
      v90 = v37;
      v82(v91, v40, v10);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v41 = v88;
      v42 = *(v87 + 48);
      v43 = v91;
      HealthChartsData.SeriesPoint.x.getter();
      lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v44 = v85;
      v45 = v10;
      v46 = v89;
      IntervalChartValue.asDateInterval<>()();
      v47 = v46;
      v10 = v45;
      (*v80)(v41, v47);
      HealthChartsData.SeriesPoint.y.getter();
      v92 = v93;
      IntervalChartValue.asClosedRange()();
      (*v79)(v43, v45);

      v37 = v90;
      v94 = v90;
      v49 = *(v90 + 16);
      v48 = *(v90 + 24);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
        v37 = v94;
      }

      *(v37 + 16) = v49 + 1;
      outlined init with take of (DateInterval, ClosedRange<Double>)(v44, v37 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v49);
      v40 += v81;
      --v32;
    }

    while (v32);

    a3 = v66;
    v25 = v65;
    v20 = v64;
  }

  else
  {
  }

  v50 = v68;
  HealthChartsData.SeriesData.aggregation.getter();
  v51 = type metadata accessor for HealthChartsUnit();
  (*(*(v51 - 8) + 56))(v20, 1, 1, v51);
  type metadata accessor for DateInterval();
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v52 = v76;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v53 = HealthChartsData.SeriesData.points.getter();
  MEMORY[0x28223BE20](v53);
  v63[-2] = v95;
  v63[-1] = v52;
  v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:), &v63[-4], v53);

  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>();
  v56 = v55;
  v57 = v77;
  (*(v77 + 16))(a3 + *(v55 + 60), v52, v25);
  UUID.init()();
  (*(*(v50 - 8) + 8))(v78, v50);
  v58 = a3 + *(v56 + 64);
  v59 = v72;
  *v58 = v73;
  *(v58 + 8) = v59;
  v60 = v70;
  *(v58 + 16) = v74;
  *(v58 + 24) = v60;
  v61 = v69;
  *(v58 + 32) = v71;
  *(v58 + 40) = v61;
  *(v58 + 48) = v75;
  *(a3 + *(v56 + 68)) = v54;
  return (*(v57 + 8))(v52, v25);
}

uint64_t BarSeries.init<>(_:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = type metadata accessor for Date();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v93 = v65 - v13;
  type metadata accessor for (DateInterval, ClosedRange<Double>)();
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v14);
  v87 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v65 - v19;
  v21 = type metadata accessor for HealthChartsData.Aggregation();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v68 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D101A8];
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v26 = v25;
  v78 = *(v25 - 8);
  v27 = *(v78 + 64);
  MEMORY[0x28223BE20](v25);
  v77 = v65 - v28;
  v29 = *(a2 + 1);
  v95[0] = *a2;
  v95[1] = v29;
  v95[2] = *(a2 + 2);
  v76 = *(a2 + 48);
  v96 = v76;
  v30 = a2[1];
  v74 = *a2;
  v73 = v30;
  v75 = *(a2 + 16);
  v71 = a2[3];
  v72 = *(a2 + 32);
  v70 = a2[5];
  v31 = a1;
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, v24);
  v69 = v32;
  v33 = HealthChartsData.SeriesData.points.getter();
  v34 = *(v33 + 16);
  v80 = v31;
  v79 = v26;
  if (v34)
  {
    v66 = v20;
    v67 = a3;
    v94 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v35 = type metadata accessor for MainActor();
    v36 = v94;
    v38 = *(v11 + 16);
    v37 = v11 + 16;
    v84 = v38;
    v85 = v35;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v65[1] = v33;
    v40 = v33 + v39;
    v41 = *(v37 + 56);
    v82 = (v6 + 8);
    v83 = v41;
    v81 = (v37 - 8);
    v86 = v37;
    do
    {
      v92 = v36;
      v84(v93, v40, v10);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v42 = v90;
      v43 = *(v89 + 48);
      v44 = v93;
      HealthChartsData.SeriesPoint.x.getter();
      lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v45 = v87;
      v46 = v10;
      v47 = v91;
      IntervalChartValue.asDateInterval<>()();
      v48 = v47;
      v10 = v46;
      (*v82)(v42, v48);
      HealthChartsData.SeriesPoint.y.getter();
      (*v81)(v44, v46);

      v36 = v92;
      v94 = v92;
      v50 = *(v92 + 16);
      v49 = *(v92 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
        v36 = v94;
      }

      *(v36 + 16) = v50 + 1;
      outlined init with take of (DateInterval, ClosedRange<Double>)(v45, v36 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v50);
      v40 += v83;
      --v34;
    }

    while (v34);

    a3 = v67;
    v20 = v66;
  }

  else
  {
  }

  v51 = v69;
  HealthChartsData.SeriesData.aggregation.getter();
  v52 = type metadata accessor for HealthChartsUnit();
  (*(*(v52 - 8) + 56))(v20, 1, 1, v52);
  type metadata accessor for DateInterval();
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  v53 = v77;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v54 = v79;
  v55 = HealthChartsData.SeriesData.points.getter();
  MEMORY[0x28223BE20](v55);
  v65[-2] = v95;
  v65[-1] = v53;
  v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0E013RectangleMarkVs5NeverOTg5(closure #1 in BarSeries.init<>(dateIntervalData:attributes:)specialized partial apply, &v65[-4], v55);

  type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>();
  v58 = v57;
  v59 = v78;
  (*(v78 + 16))(a3 + *(v57 + 60), v53, v54);
  UUID.init()();
  (*(*(v51 - 8) + 8))(v80, v51);
  v60 = a3 + *(v58 + 64);
  v61 = v73;
  *v60 = v74;
  *(v60 + 8) = v61;
  v62 = v71;
  *(v60 + 16) = v75;
  *(v60 + 24) = v62;
  v63 = v70;
  *(v60 + 32) = v72;
  *(v60 + 40) = v63;
  *(v60 + 48) = v76;
  *(a3 + *(v58 + 68)) = v56;
  return (*(v59 + 8))(v53, v54);
}

uint64_t BarSeries.init<>(scalarRangeData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D10248]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v51 = type metadata accessor for RectangleMark();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v43 = a2[1];
  v42 = v15;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v41 = *(a2 + 48);
  type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D101A8]);
  v40 = v18;
  v19 = HealthChartsData.SeriesData.points.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v36 = v17;
    v38 = a1;
    v39 = a3;
    v53 = MEMORY[0x277D84F90];
    v50 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v8;
    v22 = v53;
    v49 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    result = type metadata accessor for MainActor();
    v24 = 0;
    v47 = v21 + 16;
    v48 = result;
    v45 = v12 + 32;
    v46 = (v21 + 8);
    v37 = v16;
    v44 = (v43 == 0xFF) | v16;
    v25 = v21;
    while (v24 < *(v19 + 16))
    {
      v26 = v19;
      v27 = v25;
      (*(v25 + 16))(v11, v49 + *(v25 + 72) * v24, v7);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v44)
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSNySdG_SdAMTt2g5(v52);
      }

      else
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSNySdG_SdAQTt3g5();
      }

      (*v46)(v11, v7);
      v53 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v22 = v53;
      }

      ++v24;
      *(v22 + 16) = v29 + 1;
      result = (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v52, v51);
      v25 = v27;
      v19 = v26;
      if (v50 == v24)
      {

        a3 = v39;
        a1 = v38;
        v16 = v37;
        v17 = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_14:
    type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>();
    v31 = v30;
    v32 = v40;
    v33 = *(v40 - 8);
    (*(v33 + 16))(a3 + *(v30 + 60), a1, v40);
    UUID.init()();
    result = (*(v33 + 8))(a1, v32);
    v34 = a3 + *(v31 + 64);
    v35 = v43;
    *v34 = v42;
    *(v34 + 16) = v35;
    *(v34 + 32) = v16;
    *(v34 + 40) = v17;
    *(v34 + 48) = v41;
    *(a3 + *(v31 + 68)) = v22;
  }

  return result;
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufC10Foundation04DateI0V_AQ0O0VSNySdGTt3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlottableValue<Date>();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21[1] = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 29560;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v14;
  v15 = type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  (*(v7 + 8))(v10, v6);

  v26 = 29561;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v16;
  ClosedRange<>.start.getter();
  v25 = v17;
  static PlottableValue.value<A>(_:_:)();

  v26 = 25977;
  v27 = 0xE200000000000000;
  v26 = String.init<A>(_:)();
  v27 = v18;
  ClosedRange<>.end.getter();
  v25 = v19;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
  return (*(*(v15 - 8) + 8))(v22, v15);
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSNySdG_SdAQTt3g5()
{
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  String.init<A>(_:)();
  ClosedRange<>.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  ClosedRange<>.start.getter();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  ClosedRange<>.end.getter();
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSd_S2dTt3g5()
{
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  String.init<A>(_:)();
  Double.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  Double.start.getter();
  static PlottableValue.value<A>(_:_:)();

  String.init<A>(_:)();
  Double.end.getter();
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(x:yStart:yEnd:width:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufC10Foundation04DateF0V_AM0L0VSNySdGTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v27 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlottableValue<Date>();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v27 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v30 = &v27 - v17;
  v35 = 29560;
  v36 = 0xE200000000000000;
  v35 = String.init<A>(_:)();
  v36 = v18;
  v19 = type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  v28 = v19;
  v29 = a1;
  dispatch thunk of IntervalChartValue.start.getter();
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();
  v20 = *(v9 + 8);
  v20(v12, v8);

  v35 = 25976;
  v36 = 0xE200000000000000;
  v35 = String.init<A>(_:)();
  v36 = v21;
  dispatch thunk of IntervalChartValue.end.getter();
  static PlottableValue.value<A>(_:_:)();
  v20(v12, v8);

  v35 = 29561;
  v36 = 0xE200000000000000;
  v35 = String.init<A>(_:)();
  v36 = v22;
  ClosedRange<>.start.getter();
  v34 = v23;
  static PlottableValue.value<A>(_:_:)();

  v35 = 25977;
  v36 = 0xE200000000000000;
  v35 = String.init<A>(_:)();
  v36 = v24;
  ClosedRange<>.end.getter();
  v34 = v25;
  static PlottableValue.value<A>(_:_:)();

  RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
  return (*(*(v28 - 8) + 8))(v29);
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSNySdG_SdAMTt2g5@<X0>(uint64_t a1@<X8>)
{
  v16[2] = a1;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v16[1] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v18 = 29560;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v7;
  ClosedRange<>.start.getter();
  v17 = v8;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  v18 = 25976;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v9;
  ClosedRange<>.end.getter();
  v17 = v10;
  static PlottableValue.value<A>(_:_:)();

  v18 = 29561;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v11;
  ClosedRange<>.start.getter();
  v17 = v12;
  static PlottableValue.value<A>(_:_:)();

  v18 = 25977;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v13;
  ClosedRange<>.end.getter();
  v17 = v14;
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSd_S2dTt2g5@<X0>(uint64_t a1@<X8>)
{
  v16[2] = a1;
  _sSNySdGMaTm_0(0, &lazy cache variable for type metadata for PlottableValue<Double>, MEMORY[0x277CBB590], MEMORY[0x277CBB340]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v16[1] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v18 = 29560;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v7;
  Double.start.getter();
  v17 = v8;
  lazy protocol witness table accessor for type String and conformance String();
  static PlottableValue.value<A>(_:_:)();

  v18 = 25976;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v9;
  Double.end.getter();
  v17 = v10;
  static PlottableValue.value<A>(_:_:)();

  v18 = 29561;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v11;
  Double.start.getter();
  v17 = v12;
  static PlottableValue.value<A>(_:_:)();

  v18 = 25977;
  v19 = 0xE200000000000000;
  v18 = String.init<A>(_:)();
  v19 = v13;
  Double.end.getter();
  v17 = v14;
  static PlottableValue.value<A>(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t BarSeries.init<>(scalarPointData:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Double, Double>, MEMORY[0x277D10248]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v43[-v10];
  v49 = type metadata accessor for RectangleMark();
  v63 = *(v49 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v49);
  v60 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v61 = &v43[-v15];
  v16 = a2[1];
  v51 = *a2;
  v52 = v16;
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  v19 = *(a2 + 48);
  type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>, MEMORY[0x277D101A8]);
  v50 = v20;
  v21 = HealthChartsData.SeriesData.points.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v44 = v19;
    v45 = v18;
    v47 = a1;
    v48 = a3;
    v64 = MEMORY[0x277D84F90];
    v62 = v21;
    v58 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v62;
    v24 = v8;
    v25 = v64;
    v57 = v62 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    result = type metadata accessor for MainActor();
    v27 = 0;
    v55 = v24 + 16;
    v56 = result;
    v28 = (v63 + 32);
    v54 = (v24 + 8);
    v46 = v17;
    v53 = (v52 == 0xFF) | v17;
    v29 = v24;
    v30 = v49;
    v59 = v24;
    while (v27 < *(v23 + 16))
    {
      (*(v29 + 16))(v11, v57 + *(v29 + 72) * v27, v7);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v31 = v60;
      if (v53)
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1yACx_q0_tc0dA4Core18IntervalChartValueRzAA9PlottableR_5BoundQzRs_AgHR0_SdAJRt0_r1_lufCSd_S2dTt2g5(v31);
      }

      else
      {
        HealthChartsData.SeriesPoint.x.getter();
        HealthChartsData.SeriesPoint.y.getter();
        _s6Charts13RectangleMarkV06HealthA0E1x1y5widthACx_q0_12CoreGraphics7CGFloatVtc0daF018IntervalChartValueRzAA9PlottableR_5BoundQzRs_AkLR0_SdANRt0_r1_lufCSd_S2dTt3g5();
      }

      v32 = *v28;
      v33 = v61;
      (*v28)(v61, v31, v30);

      (*v54)(v11, v7);
      v64 = v25;
      v34 = v30;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v33 = v61;
        v25 = v64;
      }

      ++v27;
      *(v25 + 16) = v36 + 1;
      result = v32(v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36, v33, v34);
      v29 = v59;
      v30 = v34;
      v23 = v62;
      if (v58 == v27)
      {

        a3 = v48;
        a1 = v47;
        v17 = v46;
        v18 = v45;
        LOBYTE(v19) = v44;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
LABEL_14:
    type metadata accessor for BarSeries<Double, Double>();
    v38 = v37;
    v39 = v50;
    v40 = *(v50 - 8);
    (*(v40 + 16))(a3 + *(v37 + 60), a1, v50);
    UUID.init()();
    result = (*(v40 + 8))(a1, v39);
    v41 = a3 + *(v38 + 64);
    v42 = v52;
    *v41 = v51;
    *(v41 + 16) = v42;
    *(v41 + 32) = v17;
    *(v41 + 40) = v18;
    *(v41 + 48) = v19;
    *(a3 + *(v38 + 68)) = v25;
  }

  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_251403F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v14 = *(v0 + 40);
  v4 = type metadata accessor for BarSeries();
  v5 = *(*(v4 - 1) + 64);
  v6 = v0 + ((*(*(v4 - 1) + 80) + 56) & ~*(*(v4 - 1) + 80));
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v4[15];
  v9 = type metadata accessor for HealthChartsData.SeriesData();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v6 + v4[16];
  v11 = *(v10 + 16);
  if (v11 != 255)
  {
    outlined consume of AttributeColor(*v10, *(v10 + 8), v11);
  }

  v12 = *(v6 + v4[17]);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in BarSeries.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(type metadata accessor for BarSeries() - 8);
  v9 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return closure #1 in BarSeries.body.getter(v9, v3, v4, v5, v6, v7, a1);
}

uint64_t sub_2514041DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed RectangleMark) -> (@out BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>)(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  type metadata accessor for (offset: Int, element: RectangleMark)();
  return v4(v5, &a1[*(v6 + 48)]);
}

void type metadata accessor for (offset: Int, element: RectangleMark)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: RectangleMark))
  {
    type metadata accessor for RectangleMark();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: RectangleMark));
    }
  }
}

void type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for Capsule();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0)
  {
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for RoundedRectangle();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Capsule and conformance Capsule(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark>, type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, MEMORY[0x277CBB300], MEMORY[0x277CBB378]);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, RectangleMark> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255);
    lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for RoundedRectangle();
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>)
  {
    type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255);
    type metadata accessor for RectangleMark();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
    type metadata accessor for Capsule();
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = MEMORY[0x277D10358];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of (DateInterval, ClosedRange<Double>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (DateInterval, ClosedRange<Double>)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, a2);
}

{
  return specialized closure #1 in BarSeries.init<>(dateIntervalData:attributes:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

void type metadata accessor for BarSeries<DateInterval, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for BarSeries<DateInterval, ClosedRange<Double>>)
  {
    type metadata accessor for DateInterval();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for BarSeries();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarSeries<DateInterval, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v9[0] = v6;
    v9[1] = v6;
    v10 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for BarSeries<ClosedRange<Double>, ClosedRange<Double>>()
{
  if (!lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>)
  {
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v0 = type metadata accessor for BarSeries();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarSeries<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<Double, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277D839F8];
    v8[2] = MEMORY[0x277D10358];
    v8[3] = MEMORY[0x277D10358];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for BarSeries<Double, Double>()
{
  if (!lazy cache variable for type metadata for BarSeries<Double, Double>)
  {
    v0 = type metadata accessor for BarSeries();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarSeries<Double, Double>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for BarSeries<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for ChartContent.Body : ChartContent in BarSeries<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

void type metadata completion function for BarSeries(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    type metadata accessor for HealthChartsData.SeriesData();
    if (v3 <= 0x3F)
    {
      type metadata accessor for BarSeriesAttributes?();
      if (v4 <= 0x3F)
      {
        type metadata accessor for [(offset: Int, element: RectangleMark)](319, &lazy cache variable for type metadata for [RectangleMark], MEMORY[0x277CBB300], MEMORY[0x277D83940]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251405264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v13 = *(a3 + 16);
    v14 = *(a3 + 32);
    v10 = type metadata accessor for HealthChartsData.SeriesData();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      return (*(v11 + 48))(a1 + *(a3 + 60), a2, v10);
    }

    else
    {
      v12 = *(a1 + *(a3 + 68));
      if (v12 >= 0xFFFFFFFF)
      {
        LODWORD(v12) = -1;
      }

      return (v12 + 1);
    }
  }
}

uint64_t sub_2514053AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v13 = *(a4 + 16);
    v14 = *(a4 + 32);
    result = type metadata accessor for HealthChartsData.SeriesData();
    v12 = *(result - 8);
    if (*(v12 + 84) == a3)
    {
      return (*(v12 + 56))(a1 + *(a4 + 60), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 68)) = (a2 - 1);
    }
  }

  return result;
}

void type metadata accessor for BarSeriesAttributes?()
{
  if (!lazy cache variable for type metadata for BarSeriesAttributes?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarSeriesAttributes?);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    _sSNySdGMaTm_0(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = lazy protocol witness table accessor for type Capsule and conformance Capsule(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for PlottableValue<Date>()
{
  if (!lazy cache variable for type metadata for PlottableValue<Date>)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for PlottableValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlottableValue<Date>);
    }
  }
}

uint64_t outlined destroy of Calendar.Component?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for [(offset: Int, element: RectangleMark)](0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of BarSeriesAttributes?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BarSeriesAttributes?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of AttributeColor(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t outlined destroy of BarSeriesAttributes?(uint64_t a1)
{
  type metadata accessor for BarSeriesAttributes?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2514059B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DistributionSeries.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistributionSeries.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = type metadata accessor for DistributionSeriesViewModel();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t DistributionSeries.init(seriesData:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v26 = a8;
  v27 = a1;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v10 = type metadata accessor for HealthChartsData.SeriesData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  LOBYTE(a2) = *(a2 + 32);
  UUID.init()();
  v19 = v27;
  (*(v11 + 16))(v14, v27, v10);
  *&v37 = v15;
  *(&v37 + 1) = v16;
  v38 = v17;
  v39 = v18;
  v40 = a2;
  v21 = v28;
  v20 = v29;
  v32 = a3;
  v33 = v28;
  v23 = v30;
  v22 = v31;
  v34 = v29;
  v35 = v30;
  v36 = v31;
  v24 = type metadata accessor for DistributionSeries();
  DistributionSeriesViewModel.init(data:attributes:)(v14, &v37, a3, v21, v20, v23, v22, v26 + *(v24 + 60));
  return (*(v11 + 8))(v19, v10);
}

uint64_t DistributionSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a2[1];
  v48 = *a2;
  v49 = v13;
  v50 = *(a2 + 32);
  v14 = type metadata accessor for HealthChartsData.SeriesData();
  swift_getWitnessTable();
  AnySeriesData.xScale.getter();
  v15 = AnySeriesData.yScale.getter();
  v17 = v16;
  v19 = v18;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v20 = type metadata accessor for DistributionSeriesViewModel();
  v21 = a8 + v20[15];
  *v21 = v15;
  *(v21 + 8) = v17;
  *(v21 + 16) = v19 & 1;
  v22 = a8 + v20[16];
  HealthChartsData.SeriesData.aggregation.getter();
  v23 = a8 + v20[17];
  HealthChartsData.SeriesData.unit.getter();
  v24 = a8 + v20[19];
  v25 = v49;
  *v24 = v48;
  *(v24 + 16) = v25;
  *(v24 + 32) = v50;
  outlined init with copy of DistributionSeriesAttributes(&v48, &v43);
  v42 = HealthChartsData.SeriesData.points.getter();
  v43 = a3;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = &v48;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  type metadata accessor for HealthChartsData.SeriesPoint();
  v26 = type metadata accessor for Array();
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v27 = type metadata accessor for DistributionMarkViewModel();
  WitnessTable = swift_getWitnessTable();
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DistributionSeriesViewModel.init(data:attributes:), v34, v26, v27, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v29);
  outlined destroy of DistributionSeriesAttributes(&v48);

  *(a8 + v20[18]) = v30;
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t DistributionSeries.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v53 = *(a1 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v5[3];
  v43 = v5[2];
  v8 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v63 = v43;
  v64 = v6;
  v65 = v8;
  v66 = v7;
  v67 = v9;
  v10 = v9;
  type metadata accessor for DistributionMarkViewModel();
  v11 = MEMORY[0x277D83B88];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Array();
  v50 = v12;
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB378]);
  v14 = v13;
  v49 = v13;
  WitnessTable = swift_getWitnessTable();
  v63 = v12;
  v64 = v11;
  v65 = v14;
  v66 = WitnessTable;
  v67 = MEMORY[0x277D83B98];
  v15 = type metadata accessor for ForEach();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v46 = &v42 - v19;
  v20 = v2 + *(a1 + 60);
  v21 = v43;
  v63 = v43;
  v64 = v6;
  v65 = v8;
  v66 = v7;
  v67 = v10;
  v22 = v10;
  v62 = *(v20 + *(type metadata accessor for DistributionSeriesViewModel() + 72));
  v23 = type metadata accessor for Array();
  v24 = swift_getWitnessTable();
  MEMORY[0x2530761D0](&v63, v23, v24);
  v62 = v63;
  type metadata accessor for EnumeratedSequence();
  swift_getWitnessTable();
  v63 = Array.init<A>(_:)();
  v25 = v21;
  v56 = v21;
  v57 = v6;
  v26 = v8;
  v58 = v8;
  v59 = v7;
  v27 = v7;
  v28 = v22;
  v60 = v22;
  TupleTypeMetadata2 = swift_getKeyPath();
  v29 = v53;
  v30 = v47;
  (*(v53 + 16))(v47, v42, a1);
  v31 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v25;
  *(v32 + 3) = v6;
  *(v32 + 4) = v26;
  *(v32 + 5) = v27;
  *(v32 + 6) = v28;
  (*(v29 + 32))(&v32[v31], v30, a1);
  v33 = swift_allocObject();
  v33[2] = v25;
  v33[3] = v6;
  v33[4] = v26;
  v33[5] = v27;
  v33[6] = v28;
  v33[7] = partial apply for closure #1 in DistributionSeries.body.getter;
  v33[8] = v32;
  v41 = lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
  v34 = v45;
  ForEach<>.init(_:id:content:)();
  v61 = v41;
  v35 = v52;
  swift_getWitnessTable();
  v36 = v51;
  v37 = *(v51 + 16);
  v38 = v46;
  v37(v46, v34, v35);
  v39 = *(v36 + 8);
  v39(v34, v35);
  v37(v55, v38, v35);
  return (v39)(v38, v35);
}

uint64_t closure #1 in DistributionSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v50 = a1;
  v51 = a2;
  v62 = a8;
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Capsule();
  v16 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0();
  v60 = v18;
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v18);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RectangleMark();
  v52 = *(v21 - 8);
  v22 = *(v52 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0();
  v53 = *(v25 - 8);
  v54 = v25;
  v26 = *(v53 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v55 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v63 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v29 = type metadata accessor for DistributionMarkViewModel();
  DistributionMarkViewModel.asBarMark()(v29, v24);
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v30 = v51 + *(type metadata accessor for DistributionSeries() + 60);
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v31 = v30 + *(type metadata accessor for DistributionSeriesViewModel() + 76);
  v33 = *v31;
  v32 = *(v31 + 8);
  v34 = *(v31 + 16);
  if (!v34)
  {
    v35 = one-time initialization token for bundle;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = static HealthChartsBundle.bundle;
    v37 = Color.init(_:bundle:)();
    goto LABEL_12;
  }

  if (v34 != 1)
  {
    if (v33 | v32)
    {
      v38 = [objc_opt_self() tintColor];
      v37 = Color.init(uiColor:)();
    }

    else
    {
      v37 = static Color.primary.getter();
    }

LABEL_12:
    v33 = v37;
    goto LABEL_13;
  }

LABEL_13:
  v63 = v33;
  v39 = MEMORY[0x277CE0F78];
  v40 = MEMORY[0x277CBB2F8];
  v41 = MEMORY[0x277CE0F60];
  ChartContent.foregroundStyle<A>(_:)();

  (*(v52 + 8))(v24, v21);
  v42 = *MEMORY[0x277CE0118];
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = v57;
  (*(*(v43 - 8) + 104))(v57, v42, v43);
  v63 = v21;
  v64 = v39;
  v65 = v40;
  v66 = v41;
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Capsule and conformance Capsule, MEMORY[0x277CE1260]);
  v45 = v56;
  v46 = v54;
  ChartContent.clipShape<A>(_:style:)();
  outlined destroy of Capsule(v44);
  (*(v53 + 8))(v28, v46);
  v47 = v61;
  (*(v58 + 32))(v61, v45, v60);
  v48 = MEMORY[0x277CBB370];
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, type metadata accessor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB370]);
  swift_storeEnumTagMultiPayload();
  sub_25140B1A0(v47, v62);
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>.Storage, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, v48);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_251406AB4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v20 = *(v0 + 3);
  v5 = (type metadata accessor for DistributionSeries() - 8);
  v6 = (*(*v5 + 80) + 56) & ~*(*v5 + 80);
  v21 = *(*v5 + 64);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = &v0[v6 + v5[17]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ClosedRange();
  if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 8);
    v11(v8, AssociatedTypeWitness);
    v11(&v8[*(v10 + 36)], AssociatedTypeWitness);
  }

  v12 = type metadata accessor for DistributionSeriesViewModel();
  v13 = v12[16];
  v14 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v14 - 8) + 8))(&v8[v13], v14);
  v15 = v12[17];
  v16 = type metadata accessor for HealthChartsUnit();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v8[v15], 1, v16))
  {
    (*(v17 + 8))(&v8[v15], v16);
  }

  v18 = *&v8[v12[18]];

  outlined consume of AttributeColor(*&v8[v12[19]], *&v8[v12[19] + 8], v8[v12[19] + 16]);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DistributionSeries.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for DistributionSeries() - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return closure #1 in DistributionSeries.body.getter(a1, v11, v5, v6, v7, v8, v9, a2);
}

uint64_t DistributionMarkViewModel.asBarMark()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v73 = a2;
  v74 = v4;
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](a1);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v63 - v9;
  v10 = *(a1 + 16);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for DateInterval();
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v64 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v63 - v22;
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v63 - v25;
  v27 = type metadata accessor for Calendar.Component();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  v35 = v2;
  v36 = v2 + *(a1 + 64);
  HealthChartsData.Aggregation.intervalCalendarComponent()();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v26, &lazy cache variable for type metadata for Calendar.Component?, MEMORY[0x277CC99D0]);
    v37 = v35;
    v38 = v70;
  }

  else
  {
    v63 = v31;
    (*(v28 + 32))(v34, v26, v27);
    v38 = v70;
    v37 = v35;
    (*(v70 + 16))(v16, v35, v10);
    v39 = v66;
    v40 = v67;
    v41 = swift_dynamicCast();
    v42 = *(v68 + 56);
    if (v41)
    {
      v42(v39, 0, 1, v40);
      v43 = v68;
      v44 = v65;
      (*(v68 + 32))(v65, v39, v40);
      (*(v43 + 16))(v64, v44, v40);
      v45 = v72;
      v46 = v74;
      (*(v71 + 16))(v72, v37 + *(a1 + 60), v74);
      v47 = v63;
      (*(v28 + 16))(v63, v34, v27);
      v48 = v37 + *(a1 + 68);
      v49 = *v48;
      LOBYTE(v48) = *(v48 + 8);
      v75 = v49;
      v76 = v48;
      RectangleMark.init<A>(x:y:unit:width:)(v64, v45, v47, &v75, v46, *(a1 + 40), v73);
      (*(v43 + 8))(v65, v40);
      return (*(v28 + 8))(v34, v27);
    }

    v42(v39, 1, 1, v40);
    (*(v28 + 8))(v34, v27);
    _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v39, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
  }

  v51 = (v37 + *(a1 + 68));
  if (v51[1])
  {
    v52 = v69;
    (*(v38 + 16))(v69, v37, v10);
    v53 = v72;
    v54 = v74;
    (*(v71 + 16))(v72, v37 + *(a1 + 60), v74);
    v55 = *(a1 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return RectangleMark.init<A, B, C>(x:y:)(v52, v53, v10, AssociatedTypeWitness, v54, v55, *(a1 + 48), *(a1 + 40), v73);
  }

  else
  {
    v57 = *v51;
    v58 = v69;
    (*(v38 + 16))(v69, v37, v10);
    v59 = v72;
    v60 = v74;
    (*(v71 + 16))(v72, v37 + *(a1 + 60), v74);
    v61 = *(a1 + 32);
    v62 = swift_getAssociatedTypeWitness();
    return RectangleMark.init<A, B, C>(x:y:width:)(v58, v59, v10, v62, v60, v61, *(a1 + 48), *(a1 + 40), v73);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed DistributionMarkViewModel<A, B>) -> (@out BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>)(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  type metadata accessor for DistributionMarkViewModel();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_251407600()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed DistributionMarkViewModel<A, B>) -> (@out BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>)(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  return thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed DistributionMarkViewModel<A, B>) -> (@out BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>)(a1, *(v1 + 56));
}

uint64_t specialized DistributionSeries<>.ScaleTransform.transform(_:)(double a1, double a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v6 = a1 * a2;
  v8 = v7 - v6;
  HealthChartsData.SeriesPoint.y.getter();
  result = ClosedRange<>.end.getter();
  if (v8 > v6 + v10)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    return HealthChartsData.SeriesPoint.init(_:_:)();
  }

  return result;
}

{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v6 = a1 * a2;
  v8 = v7 - v6;
  HealthChartsData.SeriesPoint.y.getter();
  result = ClosedRange<>.end.getter();
  if (v8 > v6 + v10)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    return HealthChartsData.SeriesPoint.init(_:_:)();
  }

  return result;
}

{
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v4 = a1 * a2;
  v6 = v5 - v4;
  HealthChartsData.SeriesPoint.y.getter();
  result = ClosedRange<>.end.getter();
  if (v6 > v4 + v8)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ClosedRange<Double>();
    _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    return HealthChartsData.SeriesPoint.init(_:_:)();
  }

  return result;
}

uint64_t DistributionSeries<>.ScaleTransform.transform(_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  type metadata accessor for ClosedRange<Double>();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
  type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  ClosedRange<>.start.getter();
  v7 = a3 * a4;
  v9 = v8 - v7;
  HealthChartsData.SeriesPoint.y.getter();
  result = ClosedRange<>.end.getter();
  if (v9 <= v7 + v11)
  {
    return HealthChartsData.SeriesPoint.init(_:_:)();
  }

  __break(1u);
  return result;
}

uint64_t DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v36 = a1;
  v43 = a7;
  type metadata accessor for ClosedRange<Double>();
  v15 = v14;
  v37 = v14;
  v38 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
  v44 = a4;
  *&v45 = v15;
  *(&v45 + 1) = a5;
  v46 = v38;
  v16 = type metadata accessor for HealthChartsData.SeriesData();
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v20 = *a2;
  v40 = *(a2 + 8);
  v41 = v20;
  v39 = *(a2 + 16);
  v21 = *(a2 + 24);
  v35 = v21;
  v22 = *(a2 + 32);
  v34 = v22;
  v24 = *(a3 + 24);
  v23 = *(a3 + 32);
  v25 = *(a3 + 40);
  v44 = *a3;
  v33 = *(a3 + 8);
  v45 = v33;
  v46 = v24;
  v47 = v23;
  v48 = v25;
  v26 = v36;
  v27 = static DistributionSeries<>.approximateYAxisSize(from:with:)(&v44, v36, a4, a5);

  if (v22)
  {
    v28 = 4.0;
  }

  else
  {
    v28 = v21 * 0.5;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  *(v29 + 32) = a6;
  *(v29 + 40) = v27 / a8;
  *(v29 + 48) = v28;
  v31 = v37;
  v30 = v38;
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v44 = v41;
  *&v45 = v40;
  BYTE8(v45) = v39;
  v46 = *&v35;
  LOBYTE(v47) = v34;
  DistributionSeries.init(seriesData:attributes:)(v19, &v44, a4, v31, a5, v30, a6, v43);

  return (*(v42 + 8))(v26, v16);
}

double _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F1257LL4from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation12DateIntervalV_Tt1B5Tm(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v26 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v27[-1] - v17;
  a3(0, v16);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(a4, a5);
  v19 = AnySeriesData.yScale.getter();
  v21 = v20;
  v23 = v22;
  HealthChartsData.SeriesData.unit.getter();
  HealthChartsData.SeriesData.aggregation.getter();
  v24 = *(a1 + 8);
  (*a1)(v27, v19, v21, v23 & 1, v18, v12);
  (*(v9 + 8))(v12, v26);
  _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v18, &lazy cache variable for type metadata for HealthChartsUnit?, v13);
  result = *&v27[2] - *&v27[1];
  if (!LOBYTE(v27[0]))
  {
    return result * 1.4;
  }

  return result;
}

double static DistributionSeries<>.approximateYAxisSize(from:with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = type metadata accessor for HealthChartsData.Aggregation();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D102B8];
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = a1[1];
  v27 = v16;
  type metadata accessor for ClosedRange<Double>();
  v19 = v18;
  v20 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
  v29 = a3;
  v30 = v19;
  v31 = *&a4;
  v32 = v20;
  type metadata accessor for HealthChartsData.SeriesData();
  swift_getWitnessTable();
  v21 = AnySeriesData.yScale.getter();
  v23 = v22;
  v25 = v24;
  HealthChartsData.SeriesData.unit.getter();
  HealthChartsData.SeriesData.aggregation.getter();
  v27(&v29, v21, v23, v25 & 1, v15, v10);
  (*(v7 + 8))(v10, v28);
  _s16HealthChartsCore0aB4UnitVSgWOhTm_0(v15, &lazy cache variable for type metadata for HealthChartsUnit?, v11);
  result = v31 - v30;
  if (!v29)
  {
    return result * 1.4;
  }

  return result;
}

void type metadata accessor for ClosedRange<Double>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Double>)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Double>);
    }
  }
}

uint64_t static DistributionSeries<>.empty<>(attributes:chartHeight:yDomain:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v56 = a3;
  v7 = type metadata accessor for HealthChartsData.Aggregation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
  v17 = v16;
  v55 = *(v16 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v54 = &v54 - v22;
  MEMORY[0x28223BE20](v23);
  v57 = &v54 - v24;
  v25 = a1[1];
  v62 = *a1;
  v63 = v25;
  v64 = *(a1 + 32);
  v26 = a2[1];
  v65[0] = *a2;
  v65[1] = v26;
  v65[2] = a2[2];
  v27 = type metadata accessor for HealthChartsUnit();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  (*(v8 + 104))(v11, *MEMORY[0x277D10200], v7);
  type metadata accessor for DateInterval();
  type metadata accessor for ClosedRange<Double>();
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
  v28 = v57;
  HealthChartsData.SeriesData.init(_:aggregation:unit:)();
  v29 = _s12HealthCharts18DistributionSeriesVAASNySdGRs_rlE20approximateYAxisSize33_E22D5873CEBB457AA3F0B63D580F12574from4withSdAA12ScalarDomainV_0aB4Core0aB4DataV0dU0Vy_xADGtFZ10Foundation12DateIntervalV_Tt1B5Tm(v65, v28, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>);
  if (v64)
  {
    v30 = 4.0;
  }

  else
  {
    v30 = *(&v63 + 1) * 0.5;
  }

  v31 = v29 / a4;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = v54;
  HealthChartsData.SeriesData.transformed<A, B>(using:)();
  v34 = v56;
  UUID.init()();
  v35 = v55;
  (*(v55 + 16))(v20, v33, v17);
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeries<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionSeries);
  v37 = v34 + *(v36 + 60);
  _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>);
  AnySeriesData.xScale.getter();
  v38 = AnySeriesData.yScale.getter();
  v40 = v39;
  v42 = v41;
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionSeriesViewModel<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionSeriesViewModel);
  v44 = v43;
  v45 = v37 + v43[15];
  *v45 = v38;
  *(v45 + 8) = v40;
  *(v45 + 16) = v42 & 1;
  v46 = v37 + v43[16];
  HealthChartsData.SeriesData.aggregation.getter();
  v47 = v37 + v44[17];
  HealthChartsData.SeriesData.unit.getter();
  v48 = v37 + v44[19];
  v49 = v63;
  *v48 = v62;
  *(v48 + 16) = v49;
  *(v48 + 32) = v64;
  outlined init with copy of DistributionSeriesAttributes(&v62, v61);
  v50 = HealthChartsData.SeriesData.points.getter();
  v59 = v20;
  v60 = &v62;
  v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay16HealthChartsCore0dE4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGGG_0dE025DistributionMarkViewModelVyAmNGs5NeverOTg5(partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:), v58, v50);

  v52 = *(v35 + 8);
  v52(v33, v17);
  v52(v57, v17);
  *(v37 + v44[18]) = v51;
  return (v52)(v20, v17);
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)()
{
  return specialized DistributionSeries<>.ScaleTransform.transform(_:)(*(v0 + 16), *(v0 + 24));
}

{
  return specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)(*(v0 + 16), *(v0 + 24));
}

{
  return specialized implicit closure #2 in implicit closure #1 in DistributionSeries<>.init(data:attributes:chartHeight:yDomain:)(*(v0 + 16), *(v0 + 24));
}

void type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v10[4] = MEMORY[0x277CBB1E8];
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t DistributionSeriesViewModel.xScale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t DistributionSeriesViewModel.yScale.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t DistributionSeriesViewModel.aggregation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for HealthChartsData.Aggregation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27 = a7;
  v28 = a2;
  v25 = a1;
  v26 = a8;
  v12 = type metadata accessor for HealthChartsData.Aggregation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  type metadata accessor for HealthChartsData.SeriesPoint();
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  type metadata accessor for HealthChartsData.SeriesData();
  HealthChartsData.SeriesData.aggregation.getter();
  return DistributionMarkViewModel.init(x:y:aggregation:width:)(v23, v19, v15, (v28 + 24), a3, a4, v26);
}

uint64_t DistributionMarkViewModel.init(x:y:aggregation:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v13 = type metadata accessor for DistributionMarkViewModel();
  (*(*(a6 - 8) + 32))(a7 + v13[15], a2, a6);
  v14 = v13[16];
  v15 = type metadata accessor for HealthChartsData.Aggregation();
  result = (*(*(v15 - 8) + 32))(a7 + v14, a3, v15);
  v17 = a7 + v13[17];
  *v17 = v11;
  *(v17 + 8) = v12;
  return result;
}

double specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  type metadata accessor for DistributionSeries<DateInterval, ClosedRange<Double>>(0, &lazy cache variable for type metadata for DistributionMarkViewModel<DateInterval, ClosedRange<Double>>, type metadata accessor for DistributionMarkViewModel);
  v5 = v4;
  v6 = *(v4 + 64);
  type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
  HealthChartsData.SeriesData.aggregation.getter();
  result = *&v9;
  *(a2 + *(v5 + 60)) = v9;
  v8 = a2 + *(v5 + 68);
  *v8 = *(a1 + 24);
  *(v8 + 8) = *(a1 + 32);
  return result;
}

{
  _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, MEMORY[0x277D10248]);
  HealthChartsData.SeriesPoint.x.getter();
  HealthChartsData.SeriesPoint.y.getter();
  _s12HealthCharts12MinMaxSeriesVy10Foundation4DateVSNySdGGMaTm_0(0, &lazy cache variable for type metadata for DistributionMarkViewModel<Date, ClosedRange<Double>>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277D10190], type metadata accessor for DistributionMarkViewModel);
  v5 = v4;
  v6 = *(v4 + 64);
  type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
  HealthChartsData.SeriesData.aggregation.getter();
  result = *&v9;
  *(a2 + *(v5 + 60)) = v9;
  v8 = a2 + *(v5 + 68);
  *v8 = *(a1 + 24);
  *(v8 + 8) = *(a1 + 32);
  return result;
}

double partial apply for specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  return specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)(*(v1 + 24), a1);
}

{
  v2 = *(v1 + 16);
  return specialized closure #1 in DistributionSeriesViewModel.init(data:attributes:)(*(v1 + 24), a1);
}

uint64_t instantiation function for generic protocol witness table for DistributionSeries<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for ChartContent.Body : ChartContent in DistributionSeries<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t associated type witness table accessor for SeriesData.T : Comparable in DistributionSeriesViewModel<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for DistributionSeries(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    result = type metadata accessor for DistributionSeriesViewModel();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributionSeries(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v54 = v4;
  v6 = *(v5 + 84);
  v7 = *(a3 + 32);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v50 = type metadata accessor for HealthChartsData.Aggregation();
  v12 = *(v50 - 8);
  v57 = v12;
  v52 = *(v12 + 84);
  v53 = v11;
  if (v52 > v11)
  {
    v11 = *(v12 + 84);
  }

  v13 = *(type metadata accessor for HealthChartsUnit() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  if (v17 <= v6)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 64);
  if (v10)
  {
    v20 = *(v9 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = *(v9 + 80);
  v22 = *(v12 + 80);
  v23 = *(v13 + 80);
  v24 = *(v12 + 64);
  v25 = *(v13 + 64);
  if (!v15)
  {
    ++v25;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v21 | v22 | v23 | 7;
  v27 = v26 + *(v5 + 64);
  v28 = v20 + ((v19 + v21) & ~v21) + 7;
  v29 = v22 + 17;
  v30 = v24 + v23;
  v31 = v25 + 7;
  v32 = a1;
  if (v18 < a2)
  {
    v33 = (v27 & ~v26) + ((((v31 + ((v30 + ((v29 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v33 <= 3)
    {
      v34 = ((a2 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v37 = *&a1[v33];
        if (*&a1[v33])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v37 = *&a1[v33];
        if (v37)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v36)
    {
      v37 = a1[v33];
      if (a1[v33])
      {
LABEL_37:
        v38 = (v37 - 1) << (8 * v33);
        if (v33 <= 3)
        {
          v39 = *a1;
        }

        else
        {
          v38 = 0;
          v39 = *a1;
        }

        return v18 + (v39 | v38) + 1;
      }
    }
  }

  if (v6 >= v17)
  {
    v44 = v54;
    v45 = *(v5 + 48);
    v46 = v6;
LABEL_50:

    return v45(v32, v46, v44);
  }

  v40 = &a1[v27] & ~v26;
  if (v53 == v17)
  {
    if (v10)
    {
      v41 = (*(v9 + 48))(v40, v10, AssociatedTypeWitness);
      v42 = v41 != 0;
      result = (v41 - 1);
      if (result != 0 && v42)
      {
        return result;
      }
    }

    return 0;
  }

  v32 = (v29 + ((v28 + v40) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  if (v52 == v17)
  {
    v45 = *(v57 + 48);
    v46 = v52;
    v44 = v50;
    goto LABEL_50;
  }

  v47 = (v30 + v32) & ~v23;
  if (v16 == v17)
  {
    v48 = (*(v14 + 48))(v47);
    if (v48 >= 2)
    {
      return v48 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v49 = *((v31 + v47) & 0xFFFFFFFFFFFFFFF8);
    if (v49 >= 0xFFFFFFFF)
    {
      LODWORD(v49) = -1;
    }

    return (v49 + 1);
  }
}

void storeEnumTagSinglePayload for DistributionSeries(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v59 = v6;
  v60 = v5;
  v7 = *(v6 + 84);
  v8 = *(a4 + 32);
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v64 = v10;
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v55 = type metadata accessor for HealthChartsData.Aggregation();
  v13 = *(v55 - 8);
  v57 = *(v13 + 84);
  v58 = v12;
  if (v57 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(v13 + 84);
  }

  v15 = 0;
  v16 = *(type metadata accessor for HealthChartsUnit() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  v20 = *(v10 + 80);
  v21 = *(v10 + 64);
  v22 = *(v6 + 64);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  v25 = *(v13 + 64);
  v26 = *(v16 + 64);
  if (v19 <= v14)
  {
    v27 = v14;
  }

  else
  {
    v27 = v19;
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  if (v27 <= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v27;
  }

  v29 = (v21 + v20) & ~v20;
  v30 = v29 + v21;
  if (v11)
  {
    v31 = v29 + v21;
  }

  else
  {
    v31 = v30 + 1;
  }

  v32 = v20 | v23 | v24 | 7;
  v33 = v32 + v22;
  v34 = v31 + 7;
  v35 = v25 + v24;
  v36 = (v25 + v24 + ((v23 + 17 + (v34 & 0xFFFFFFFFFFFFFFF8)) & ~v23)) & ~v24;
  if (!v18)
  {
    ++v26;
  }

  v37 = v36 + v26;
  v38 = ((v32 + v22) & ~v32) + ((((v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v28 < a3)
  {
    if (v38 <= 3)
    {
      v39 = ((a3 - v28 + 255) >> 8) + 1;
    }

    else
    {
      v39 = 2;
    }

    if (v39 >= 0x10000)
    {
      v40 = 4;
    }

    else
    {
      v40 = 2;
    }

    if (v39 < 0x100)
    {
      v40 = 1;
    }

    if (v39 >= 2)
    {
      v15 = v40;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v28 >= a2)
  {
    v43 = a1;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *&a1[v38] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *&a1[v38] = 0;
    }

    else if (v15)
    {
      a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if (v7 >= v27)
    {
      v46 = v60;
      v47 = *(v59 + 56);
      v48 = a2;
      v49 = v7;
    }

    else
    {
      v44 = (&a1[v33] & ~v32);
      if (v27 < a2)
      {
        v45 = ~v27 + a2;
        bzero((&a1[v33] & ~v32), ((((v37 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 33);
        if (((((v37 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 33 > 3)
        {
          goto LABEL_55;
        }

        goto LABEL_77;
      }

      if (v58 == v27)
      {
        if (a2 >= v11)
        {
          if (v30 <= 3)
          {
            v50 = ~(-1 << (8 * v30));
          }

          else
          {
            v50 = -1;
          }

          if (!v30)
          {
            return;
          }

          v45 = v50 & (a2 - v11);
          if (v30 <= 3)
          {
            v51 = v30;
          }

          else
          {
            v51 = 4;
          }

          bzero(v44, v30);
          if (v51 > 2)
          {
            if (v51 == 3)
            {
              *v44 = v45;
              v44[2] = BYTE2(v45);
              return;
            }

LABEL_55:
            *v44 = v45;
            return;
          }

          if (v51 != 1)
          {
            *v44 = v45;
            return;
          }

LABEL_77:
          *v44 = v45;
          return;
        }

        v47 = *(v64 + 56);
        v48 = a2 + 1;
        v43 = &a1[v33] & ~v32;
        v49 = v11;
        v46 = AssociatedTypeWitness;
      }

      else
      {
        v43 = (v23 + 17 + (&v44[v34] & 0xFFFFFFFFFFFFFFF8)) & ~v23;
        if (v57 != v27)
        {
          v52 = (v35 + v43) & ~v24;
          if (v19 == v27)
          {
            v53 = *(v17 + 56);

            v53(v52, a2 + 1);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v54 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v54 = a2 - 1;
            }

            *((v26 + v52 + 7) & 0xFFFFFFFFFFFFFFF8) = v54;
          }

          return;
        }

        v47 = *(v13 + 56);
        v48 = a2;
        v49 = v57;
        v46 = v55;
      }
    }

    v47(v43, v48, v49, v46);
    return;
  }

  v41 = ~v28 + a2;
  bzero(a1, v38);
  if (v38 <= 3)
  {
    v42 = (v41 >> 8) + 1;
  }

  else
  {
    v42 = 1;
  }

  if (v38 <= 3)
  {
    *a1 = v41;
    if (v15 > 1)
    {
LABEL_40:
      if (v15 == 2)
      {
        *&a1[v38] = v42;
      }

      else
      {
        *&a1[v38] = v42;
      }

      return;
    }
  }

  else
  {
    *a1 = v41;
    if (v15 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v15)
  {
    a1[v38] = v42;
  }
}

void type metadata completion function for DistributionSeriesViewModel(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ClosedRange();
  type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    _s16HealthChartsCore0aB4UnitVSgMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<Double>?, type metadata accessor for ClosedRange<Double>);
    if (v5 <= 0x3F)
    {
      type metadata accessor for HealthChartsData.Aggregation();
      if (v6 <= 0x3F)
      {
        _s16HealthChartsCore0aB4UnitVSgMaTm_0(319, &lazy cache variable for type metadata for HealthChartsUnit?, MEMORY[0x277D102B8]);
        if (v7 <= 0x3F)
        {
          v9 = *(a1 + 24);
          v10 = *(a1 + 40);
          type metadata accessor for DistributionMarkViewModel();
          type metadata accessor for Array();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DistributionSeriesViewModel(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v38 = type metadata accessor for HealthChartsData.Aggregation();
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(type metadata accessor for HealthChartsUnit() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v6 + 64);
  if (v7)
  {
    v18 = *(v6 + 64);
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = *(v9 + 80);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  if (!v14)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 + ((v17 + *(v6 + 80)) & ~*(v6 + 80));
  v23 = v19 + 17;
  v24 = *(v9 + 64) + v20;
  v25 = v21 + 7;
  if (v16 < a2)
  {
    v26 = ((((v25 + ((v24 + ((v23 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v26 <= 3)
    {
      v27 = ((a2 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 < 2)
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *&a1[v26];
        if (*&a1[v26])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = *&a1[v26];
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v28)
    {
      v29 = a1[v26];
      if (a1[v26])
      {
LABEL_35:
        v30 = (v29 - 1) << (8 * v26);
        if (v26 <= 3)
        {
          v31 = *a1;
        }

        else
        {
          v30 = 0;
          v31 = *a1;
        }

        return v16 + (v31 | v30) + 1;
      }
    }
  }

  if (v8 == v16)
  {
    if (v7 < 2)
    {
      return 0;
    }

    v35 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
LABEL_50:
    if (v35 >= 2)
    {
      return v35 - 1;
    }

    else
    {
      return 0;
    }
  }

  v33 = (v23 + (&a1[v22 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v10 == v16)
  {
    v34 = *(v9 + 48);

    return v34(v33, v10, v38);
  }

  else
  {
    v36 = (v24 + v33) & ~v20;
    if (v15 == v16)
    {
      if (v14 < 2)
      {
        return 0;
      }

      v35 = (*(v13 + 48))(v36);
      goto LABEL_50;
    }

    v37 = *((v25 + v36) & 0xFFFFFFFFFFFFFFF8);
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void storeEnumTagSinglePayload for DistributionSeriesViewModel(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  v6 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v45 = type metadata accessor for HealthChartsData.Aggregation();
  v10 = *(v45 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = 0;
  v14 = *(type metadata accessor for HealthChartsUnit() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v7 + 64);
  v18 = v16 - 1;
  if (!v16)
  {
    v18 = 0;
  }

  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v18 <= v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = v18;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  v24 = (v17 + *(v7 + 80)) & ~*(v7 + 80);
  v25 = v24 + v17;
  if (v8)
  {
    v26 = v24 + v17;
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v20 + v21;
  if (!v16)
  {
    ++v22;
  }

  v28 = v22 + 7;
  v29 = ((((v28 + ((v20 + v21 + ((v19 + 17 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v23 < a3)
  {
    if (v29 <= 3)
    {
      v30 = ((a3 - v23 + 255) >> 8) + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v13 = v31;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v23 >= a2)
  {
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v29] = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v9 == v23)
        {
          if (a2 >= v8)
          {
            if (v25 <= 3)
            {
              v39 = ~(-1 << (8 * v25));
            }

            else
            {
              v39 = -1;
            }

            if (v25)
            {
              v40 = v39 & (a2 - v8);
              if (v25 <= 3)
              {
                v41 = v25;
              }

              else
              {
                v41 = 4;
              }

              bzero(a1, v25);
              if (v41 > 2)
              {
                if (v41 == 3)
                {
                  *a1 = v40;
                  a1[2] = BYTE2(v40);
                }

                else
                {
                  *a1 = v40;
                }
              }

              else if (v41 == 1)
              {
                *a1 = v40;
              }

              else
              {
                *a1 = v40;
              }
            }

            return;
          }

          v34 = *(v47 + 56);
          v35 = a2 + 1;
          v36 = a1;
          v37 = v8;
          v38 = AssociatedTypeWitness;
        }

        else
        {
          v36 = (v19 + 17 + (&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v19;
          if (v11 != v23)
          {
            v42 = (v27 + v36) & ~v21;
            if (v18 == v23)
            {
              v43 = *(v15 + 56);

              v43(v42, a2 + 1);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v44 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v44 = a2 - 1;
              }

              *((v28 + v42) & 0xFFFFFFFFFFFFFFF8) = v44;
            }

            return;
          }

          v34 = *(v10 + 56);
          v35 = a2;
          v37 = v11;
          v38 = v45;
        }

        v34(v36, v35, v37, v38);
        return;
      }

      *&a1[v29] = 0;
    }

    else if (v13)
    {
      a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  v32 = ~v23 + a2;
  bzero(a1, v29);
  if (v29 <= 3)
  {
    v33 = (v32 >> 8) + 1;
  }

  else
  {
    v33 = 1;
  }

  if (v29 <= 3)
  {
    *a1 = v32;
    if (v13 > 1)
    {
LABEL_37:
      if (v13 == 2)
      {
        *&a1[v29] = v33;
      }

      else
      {
        *&a1[v29] = v33;
      }

      return;
    }
  }

  else
  {
    *a1 = v32;
    if (v13 > 1)
    {
      goto LABEL_37;
    }
  }

  if (v13)
  {
    a1[v29] = v33;
  }
}

uint64_t sub_25140A5A0(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  type metadata accessor for DistributionMarkViewModel();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(255, &lazy cache variable for type metadata for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, type metadata accessor for <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0, MEMORY[0x277CBB378]);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0> and conformance <> BuilderConditional<A, B>();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for DistributionMarkViewModel(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsData.Aggregation();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistributionMarkViewModel(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v32 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = type metadata accessor for HealthChartsData.Aggregation();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (v16 < a2)
  {
    v18 = ((*(*(v11 - 8) + 64) + ((v14 + v15 + (v17 & ~v13)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v22 = *&a1[v18];
        if (v22)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v21)
    {
      v22 = a1[v18];
      if (a1[v18])
      {
LABEL_23:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v16 + (v24 | v23) + 1;
      }
    }

    if (!v16)
    {
      return 0;
    }
  }

  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = (&a1[v17] & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = &v26[v14 + v15] & ~v15;

  return v30(v31);
}

void storeEnumTagSinglePayload for DistributionMarkViewModel(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 16);
  v7 = *(v36 - 8);
  v34 = *(a4 + 24);
  v35 = v7;
  v8 = *(v7 + 84);
  v9 = *(v34 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((*(v12 + 64) + ((v19 + v20 + v18) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v24 = 0;
    if (v15 >= a2)
    {
      goto LABEL_20;
    }

LABEL_25:
    v25 = ~v15 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v25;
      if (v24 > 1)
      {
LABEL_30:
        if (v24 == 2)
        {
          *&a1[v21] = v26;
        }

        else
        {
          *&a1[v21] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v24 > 1)
      {
        goto LABEL_30;
      }
    }

    if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v15 + 255) >> 8) + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v15 < a2)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
    goto LABEL_34;
  }

  if (!v24)
  {
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 == v15)
  {
    v27 = v36;
    v28 = *(v35 + 56);
    v29 = a1;
    v30 = a2;
    v31 = v8;
LABEL_42:

    v28(v29, v30, v31, v27);
    return;
  }

  v29 = (&a1[v17] & ~v16);
  if (v10 == v15)
  {
    v28 = *(v9 + 56);
    v30 = a2;
    v31 = v10;
    v27 = v34;
    goto LABEL_42;
  }

  v32 = *(v13 + 56);
  v33 = &v29[v19 + v20] & ~v20;

  v32(v33, a2);
}

void _s16HealthChartsCore0aB4DataV11SeriesPointVy_SNySdGAFGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ClosedRange<Double>();
    v9[0] = v6;
    v9[1] = v6;
    v10 = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void _s16HealthChartsCore0aB4DataV06SeriesD0Vy_10Foundation12DateIntervalVSNySdGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v10[3] = _s7SwiftUI7CapsuleVAcA5ShapeAAWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of Capsule(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25140B1A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for BuilderConditional<BuilderConditional<<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>, <<opaque return type of ChartContent.clipShape<A>(_:style:)>>.0>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void _s16HealthChartsCore0aB4UnitVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s16HealthChartsCore0aB4UnitVSgWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s16HealthChartsCore0aB4UnitVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisBoundaryRule(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AxisBoundaryRule(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for AxisScale(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for AxisScale.DomainResolutionStyle();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for ClosedRange();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AxisScale(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6) & ~v6) + v7 + ((v6 + 1) & ~v6);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v16 = *a1;
      if (v16 >= 2)
      {
        return v16 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for AxisScale(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 1) & ~v9);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_55:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v20 = (&a1[v9 + 1] & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t getEnumTagSinglePayload for AxisScale.DomainResolutionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisScale.DomainResolutionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int AxisScale.DomainResolutionStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x253076640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AxisScale<A>.DomainResolutionStyle()
{
  Hasher.init(_seed:)();
  AxisScale.DomainResolutionStyle.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of HealthChartsContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthChartsContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BasicChartModel.init(data:attributes:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for HealthChartsData();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BasicChartModel();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for HealthChartsAttributes();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = a4 + *(v9 + 40);

  return outlined init with take of HealthChartsContext(a3, v12);
}

uint64_t BasicChartModel.attributes()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for HealthChartsAttributes();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t EmptyDateChartModel.attributes()@<X0>(void *a1@<X8>)
{
  static ChartAttributes.empty<>()(a1);
  type metadata accessor for HealthChartsAttributes<DateDomain>();
  v3 = v2;
  v4 = (a1 + *(v2 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>();
  v4[3] = v5;
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>, type metadata accessor for DescriptionMessage<NoDescription>);
  v4[4] = result;
  *v4 = 0;
  v4[1] = 0;
  *(a1 + *(v3 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EmptyDateChartModel.data(_:)(void (*a1)(char *))
{
  v2 = type metadata accessor for HealthChartsData();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for ChartModel.attributes() in conformance EmptyDateChartModel@<X0>(void *a1@<X8>)
{
  static ChartAttributes.empty<>()(a1);
  type metadata accessor for HealthChartsAttributes<DateDomain>();
  v3 = v2;
  v4 = (a1 + *(v2 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>();
  v4[3] = v5;
  result = _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>, type metadata accessor for DescriptionMessage<NoDescription>);
  v4[4] = result;
  *v4 = 0;
  v4[1] = 0;
  *(a1 + *(v3 + 40)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t protocol witness for ChartModel.data(_:) in conformance EmptyDateChartModel(void (*a1)(char *))
{
  v2 = type metadata accessor for HealthChartsData();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HealthChartsData.empty.getter();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

void type metadata accessor for HealthChartsAttributes<DateDomain>()
{
  if (!lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>)
  {
    type metadata accessor for DateDomain(255);
    _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(&lazy protocol witness table cache variable for type DateDomain and conformance DateDomain, type metadata accessor for DateDomain);
    v0 = type metadata accessor for HealthChartsAttributes();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>);
    }
  }
}

void type metadata accessor for DescriptionMessage<NoDescription>()
{
  if (!lazy cache variable for type metadata for DescriptionMessage<NoDescription>)
  {
    lazy protocol witness table accessor for type NoDescription and conformance NoDescription();
    v0 = type metadata accessor for DescriptionMessage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>);
    }
  }
}

uint64_t _s12HealthCharts10DateDomainVAcA04AxisD0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for BasicChartModel(uint64_t a1)
{
  result = type metadata accessor for HealthChartsData();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for HealthChartsAttributes();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for HealthChartsContext();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicChartModel(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v51 = *(type metadata accessor for HealthChartsData() - 8);
  v52 = *(*(a3 + 16) - 8);
  if (*(v52 + 84) <= 0x7FFFFFFFu)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v52 + 84);
  }

  v48 = *(v51 + 84);
  v46 = *(v52 + 84);
  v47 = v4;
  if (v4 <= v48)
  {
    v5 = *(v51 + 84);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(type metadata accessor for Calendar() - 8);
  v7 = *(v6 + 84);
  v43 = type metadata accessor for DateInterval();
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v44 = v7;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v45 = v11;
  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(type metadata accessor for HealthChartsData.Aggregation() - 8);
  if (*(v13 + 64) <= 1uLL)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  if (v12 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(v52 + 80);
  v17 = *(v6 + 80);
  v18 = *(v8 + 80);
  v19 = *(v13 + 80);
  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v16 | 7;
  v22 = (v16 | 7) + *(v51 + 64);
  v23 = ((v16 + 1) & ~v16) + *(v52 + 64) + 7;
  v24 = v17 | v18 | v19 | 7;
  v25 = ((((((v23 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v26 = v17 + 8;
  v27 = *(v6 + 64) + v18;
  v28 = a1;
  if (a2 <= v15)
  {
    goto LABEL_47;
  }

  v14 += ((v20 + v19 + ((v27 + (v26 & ~v17)) & ~v18)) & ~v19) + ((v25 + (v22 & ~v21)) & ~v24) + 2;
  v29 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_27;
  }

  v31 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
  if (HIWORD(v31))
  {
    v30 = *(a1 + v14);
    if (!v30)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (v31 > 0xFF)
  {
    v30 = *(a1 + v14);
    if (!*(a1 + v14))
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  if (v31 >= 2)
  {
LABEL_27:
    v30 = *(a1 + v14);
    if (!*(a1 + v14))
    {
      goto LABEL_47;
    }

LABEL_34:
    v32 = (v30 - 1) << v29;
    if (v14 > 3)
    {
      v32 = 0;
    }

    if (v14)
    {
      if (v14 <= 3)
      {
        v33 = v14;
      }

      else
      {
        v33 = 4;
      }

      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v34 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v34 = *a1;
        }
      }

      else if (v33 == 1)
      {
        v34 = *a1;
      }

      else
      {
        v34 = *a1;
      }
    }

    else
    {
      v34 = 0;
    }

    return v15 + (v34 | v32) + 1;
  }

LABEL_47:
  if (v48 == v15)
  {
    v35 = *(v51 + 48);
LABEL_49:

    return v35(v28);
  }

  v37 = (a1 + v22) & ~v21;
  if (v47 != v15)
  {
    v39 = ((v25 + v37) & ~v24);
    if (v45 <= 0x7FFFFFFE)
    {
      v40 = *v39;
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      if ((v40 + 1) >= 2)
      {
        return v40;
      }

      else
      {
        return 0;
      }
    }

    v28 = (v39 + v26) & ~v17;
    if (v44 == v12)
    {
      v35 = *(v6 + 48);
      goto LABEL_49;
    }

    if (v9 >= 2)
    {
      v42 = (*(v8 + 48))((v27 + v28) & ~v18, v9, v43, v14);
      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = (v16 + 8 + v37) & ~v16;
  if (v46 >= 0x7FFFFFFF)
  {
    v35 = *(v52 + 48);
    v28 = (v16 + 1 + v38) & ~v16;
    goto LABEL_49;
  }

  v41 = *(((v23 + v38) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v41 >= 0xFFFFFFFF)
  {
    LODWORD(v41) = -1;
  }

  return (v41 + 1);
}