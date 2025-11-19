BOOL CRStruct_7.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v206 = a3;
  v215 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v209 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v182 = *(v7 - 8);
  v183 = v7;
  v8 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v181 = &v142 - v9;
  v192 = v6;
  v185 = *(v6 - 8);
  v10 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v142 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v155 = swift_getAssociatedConformanceWitness();
  v208 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v177 = *(v15 - 8);
  v178 = v15;
  v16 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v142 - v17;
  v180 = v14;
  v179 = *(v14 - 8);
  v18 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v142 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v153 = swift_getAssociatedConformanceWitness();
  v212 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1AE23D7CC();
  v173 = *(v23 - 8);
  v174 = v23;
  v24 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v172 = &v142 - v25;
  v191 = v22;
  v175 = *(v22 - 8);
  v26 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v152 = &v142 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v151 = swift_getAssociatedConformanceWitness();
  v211 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v168 = *(v31 - 8);
  v169 = v31;
  v32 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v167 = &v142 - v33;
  v171 = v30;
  v170 = *(v30 - 8);
  v34 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v150 = &v142 - v36;
  v37 = swift_getAssociatedTypeWitness();
  v149 = swift_getAssociatedConformanceWitness();
  v210 = v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1AE23D7CC();
  v164 = *(v39 - 8);
  v165 = v39;
  v40 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v163 = &v142 - v41;
  v190 = v38;
  v166 = *(v38 - 8);
  v42 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v148 = &v142 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v147 = swift_getAssociatedConformanceWitness();
  v214 = v45;
  v46 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  v159 = *(v47 - 8);
  v160 = v47;
  v48 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v158 = &v142 - v49;
  v162 = v46;
  v50 = *(v46 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v161 = &v142 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v146 = swift_getAssociatedConformanceWitness();
  v213 = v54;
  v55 = swift_getAssociatedTypeWitness();
  v56 = sub_1AE23D7CC();
  v186 = *(v56 - 8);
  v187 = v56;
  v57 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v142 - v58;
  v189 = v55;
  v188 = *(v55 - 8);
  v60 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v157 = &v142 - v62;
  v63 = v215;
  v64 = CRStruct_7.canMerge(delta:)(v215, a2, v206);
  if (v64)
  {
    v143 = v50;
    v144 = v64;
    v65 = *(v4 + 128);
    v145 = v4;
    v65(v223, a2, v4);
    v66 = v223[1];
    v67 = v223[5];
    v142 = a2;
    v207 = v223[8];
    v68 = v223[11];
    v69 = v223[13];
    v70 = v223[14];
    v71 = v223[16];
    v72 = v223[20];
    v202 = v223[4];
    v203 = v223[2];
    v199 = v223[10];
    v200 = v223[7];
    v194 = v223[19];
    v195 = v223[17];
    (*(v186 + 16))(v59, v63, v187);
    v73 = v189;
    v74 = (*(v188 + 48))(v59, 1);
    v204 = v72;
    v205 = v66;
    v201 = v67;
    v193 = v68;
    v197 = v70;
    v198 = v69;
    v196 = v71;
    if (v74 == 1)
    {
      (*(v186 + 8))(v59, v187);
      v75 = v142;
    }

    else
    {
      v76 = v188;
      (*(v188 + 32))(v157, v59, v73);
      v75 = v142;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v223, TupleTypeMetadata);

      v78 = swift_modifyAtWritableKeyPath();
      v79 = v157;
      (*(v146 + 112))(v157, v213);
      v78(&TupleTypeMetadata2, 0);

      (*(v76 + 8))(v79, v189);
    }

    v206 = type metadata accessor for CRStructMergeableDelta_7();
    v80 = v158;
    v81 = v159;
    v82 = v215;
    v83 = v160;
    (*(v159 + 16))(v158, v215 + v206[9], v160);
    v84 = v143;
    v85 = v162;
    if ((*(v143 + 48))(v80, 1, v162) == 1)
    {
      (*(v81 + 8))(v80, v83);
    }

    else
    {
      (*(v84 + 32))(v161, v80, v85);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v86 = swift_getTupleTypeMetadata();
      (*(*(v86 - 8) + 16))(&TupleTypeMetadata2, v223, v86);

      v87 = swift_modifyAtWritableKeyPath();
      v88 = v161;
      (*(v147 + 112))(v161, v214);
      v82 = v215;
      v87(&TupleTypeMetadata2, 0);

      (*(v84 + 8))(v88, v85);
    }

    v89 = v206;
    v90 = v163;
    v91 = v164;
    v92 = v165;
    (*(v164 + 16))(v163, v82 + v206[10], v165);
    v93 = v166;
    v94 = v190;
    if ((*(v166 + 48))(v90, 1, v190) == 1)
    {
      (*(v91 + 8))(v90, v92);
    }

    else
    {
      v95 = v148;
      (*(v93 + 32))(v148, v90, v94);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      v96 = v210;
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v97 = swift_getTupleTypeMetadata();
      (*(*(v97 - 8) + 16))(&TupleTypeMetadata2, v223, v97);

      v98 = swift_modifyAtWritableKeyPath();
      (*(v149 + 112))(v95, v96);
      v98(&TupleTypeMetadata2, 0);

      (*(v93 + 8))(v95, v190);
    }

    v100 = v169;
    v99 = v170;
    v102 = v167;
    v101 = v168;
    (*(v168 + 16))(v167, v215 + v89[11], v169);
    v103 = v171;
    if ((*(v99 + 48))(v102, 1, v171) == 1)
    {
      (*(v101 + 8))(v102, v100);
    }

    else
    {
      v104 = v150;
      (*(v99 + 32))(v150, v102, v103);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      v105 = v211;
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v106 = swift_getTupleTypeMetadata();
      (*(*(v106 - 8) + 16))(&TupleTypeMetadata2, v223, v106);

      v107 = v103;
      v108 = swift_modifyAtWritableKeyPath();
      (*(v151 + 112))(v104, v105);
      v108(&TupleTypeMetadata2, 0);

      v109 = v104;
      v89 = v206;
      (*(v99 + 8))(v109, v107);
    }

    v110 = v191;
    v112 = v174;
    v111 = v175;
    v113 = v89[12];
    v114 = v172;
    v115 = v173;
    (*(v173 + 16))(v172, v215 + v113, v174);
    if ((*(v111 + 48))(v114, 1, v110) == 1)
    {
      (*(v115 + 8))(v114, v112);
      v117 = v178;
      v116 = v179;
      v118 = v177;
      v119 = v215;
    }

    else
    {
      v120 = v152;
      (*(v111 + 32))(v152, v114, v110);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      v121 = v212;
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v122 = swift_getTupleTypeMetadata();
      (*(*(v122 - 8) + 16))(&TupleTypeMetadata2, v223, v122);

      v123 = swift_modifyAtWritableKeyPath();
      v119 = v215;
      (*(v153 + 112))(v120, v121);
      v123(&TupleTypeMetadata2, 0);

      (*(v111 + 8))(v120, v191);
      v117 = v178;
      v116 = v179;
      v118 = v177;
    }

    v124 = v206;
    v125 = v176;
    (*(v118 + 16))(v176, v119 + v206[13], v117);
    v126 = v180;
    if ((*(v116 + 48))(v125, 1, v180) == 1)
    {
      (*(v118 + 8))(v125, v117);
    }

    else
    {
      v130 = v154;
      (*(v116 + 32))(v154, v125, v126);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      v131 = v208;
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v132 = swift_getTupleTypeMetadata();
      (*(*(v132 - 8) + 16))(&TupleTypeMetadata2, v223, v132);

      v133 = swift_modifyAtWritableKeyPath();
      v124 = v206;
      (*(v155 + 112))(v130, v131);
      v133(&TupleTypeMetadata2, 0);

      (*(v116 + 8))(v130, v126);
    }

    v128 = v182;
    v127 = v183;
    v129 = v181;
    (*(v182 + 16))(v181, v215 + v124[14], v183);
    v134 = v185;
    v135 = v192;
    if ((*(v185 + 48))(v129, 1, v192) == 1)
    {
      (*(v128 + 8))(v129, v127);
    }

    else
    {
      (*(v134 + 32))(v184, v129, v135);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v217 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v218 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v219 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v220 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v221 = swift_getTupleTypeMetadata2();
      v136 = v209;
      sub_1AE23DB8C();
      v222 = swift_getTupleTypeMetadata2();
      v137 = swift_getTupleTypeMetadata();
      (*(*(v137 - 8) + 16))(&TupleTypeMetadata2, v223, v137);

      v138 = swift_modifyAtWritableKeyPath();
      v139 = v184;
      (*(AssociatedConformanceWitness + 112))(v184, v136);
      v138(&TupleTypeMetadata2, 0);

      (*(v134 + 8))(v139, v192);
    }

    (*(*(v145 + 8) + 64))(v75);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v217 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v218 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v219 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v220 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v221 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v222 = swift_getTupleTypeMetadata2();
    v140 = swift_getTupleTypeMetadata();
    (*(*(v140 - 8) + 8))(v223, v140);
    LOBYTE(v64) = v144;
  }

  return v64;
}

BOOL CRStruct_7.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v216 = a3;
  v237 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v159 = *(AssociatedTypeWitness - 8);
  v6 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v158 = &v154 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v236 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v169 = *(v9 - 8);
  v170 = v9;
  v10 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v168 = &v154 - v11;
  v172 = v8;
  v171 = *(v8 - 8);
  v12 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v154 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v163 = *(v15 - 8);
  v16 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v154 - v17;
  v161 = swift_getAssociatedConformanceWitness();
  v228 = v15;
  v18 = swift_getAssociatedTypeWitness();
  v178 = sub_1AE23D7CC();
  v205 = *(v178 - 8);
  v19 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v154 - v20;
  v188 = v18;
  v179 = *(v18 - 8);
  v21 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v154 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v167 = *(v24 - 8);
  v25 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v154 - v26;
  v165 = swift_getAssociatedConformanceWitness();
  v232 = v24;
  v27 = swift_getAssociatedTypeWitness();
  v28 = sub_1AE23D7CC();
  v185 = *(v28 - 8);
  v186 = v28;
  v29 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v184 = &v154 - v30;
  v196 = v27;
  v187 = *(v27 - 8);
  v31 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v164 = &v154 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v176 = *(v34 - 8);
  v35 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v175 = &v154 - v36;
  v174 = swift_getAssociatedConformanceWitness();
  v231 = v34;
  v37 = swift_getAssociatedTypeWitness();
  v38 = sub_1AE23D7CC();
  v193 = *(v38 - 8);
  v194 = v38;
  v39 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v192 = &v154 - v40;
  v206 = v37;
  v195 = *(v37 - 8);
  v41 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v173 = &v154 - v43;
  v44 = swift_getAssociatedTypeWitness();
  v182 = *(v44 - 8);
  v45 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v181 = &v154 - v46;
  v180 = swift_getAssociatedConformanceWitness();
  v230 = v44;
  v47 = swift_getAssociatedTypeWitness();
  v202 = sub_1AE23D7CC();
  v212 = *(v202 - 8);
  v48 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v154 - v49;
  v213 = v47;
  v204 = *(v47 - 8);
  v50 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v203 = &v154 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v191 = *(v53 - 8);
  v54 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v190 = &v154 - v55;
  v189 = swift_getAssociatedConformanceWitness();
  v235 = v53;
  v56 = swift_getAssociatedTypeWitness();
  v57 = sub_1AE23D7CC();
  v208 = *(v57 - 8);
  v209 = v57;
  v58 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v207 = &v154 - v59;
  v214 = v56;
  v211 = *(v56 - 8);
  v60 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v210 = &v154 - v62;
  v63 = swift_getAssociatedTypeWitness();
  v200 = *(v63 - 8);
  v64 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v199 = &v154 - v65;
  v198 = swift_getAssociatedConformanceWitness();
  v229 = v63;
  v66 = swift_getAssociatedTypeWitness();
  v67 = sub_1AE23D7CC();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v154 - v70;
  v72 = *(v66 - 8);
  v73 = *(v72 + 64);
  v75 = MEMORY[0x1EEE9AC00](v74);
  v197 = &v154 - v76;
  (*(v4 + 128))(v245, a2, v4, v75);
  v77 = v245[20];
  v233 = v245[1];
  v227 = v245[2];
  v234 = v245[4];
  v226 = v245[5];
  v225 = v245[7];
  v224 = v245[8];
  v223 = v245[10];
  v222 = v245[11];
  v221 = v245[13];
  v220 = v245[14];
  v219 = v245[16];
  v218 = v245[17];
  v217 = v245[19];
  (*(v68 + 16))(v71, v237, v67);
  v78 = v66;
  v79 = (*(v72 + 48))(v71, 1, v66);
  v215 = v77;
  if (v79 == 1)
  {
    (*(v68 + 8))(v71, v67);
  }

  else
  {
    v154 = v72;
    v155 = v66;
    v80 = v197;
    (*(v72 + 32))(v197, v71, v78);
    v81 = v229;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v83 = *(TupleTypeMetadata - 8);
    (*(v83 + 16))(&TupleTypeMetadata2, v245, TupleTypeMetadata);

    v84 = v199;
    swift_getAtKeyPath();

    v85 = (*(v198 + 104))(v80, v81);
    (*(v200 + 8))(v84, v81);
    (*(v154 + 8))(v80, v155);
    if ((v85 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v216 = type metadata accessor for CRStructMergeableDelta_7();
  v87 = v207;
  v86 = v208;
  v88 = v209;
  (*(v208 + 16))(v207, v237 + v216[9], v209);
  v89 = v211;
  v90 = v214;
  v91 = (*(v211 + 48))(v87, 1, v214);
  v183 = a2;
  if (v91 == 1)
  {
    (*(v86 + 8))(v87, v88);
    v92 = v212;
  }

  else
  {
    (*(v89 + 32))(v210, v87, v90);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v93 = v235;
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    v94 = swift_getTupleTypeMetadata();
    v95 = *(v94 - 8);
    (*(v95 + 16))(&TupleTypeMetadata2, v245, v94);

    v96 = v190;
    swift_getAtKeyPath();

    v97 = v210;
    v98 = (*(v189 + 104))(v210, v93);
    (*(v191 + 8))(v96, v93);
    (*(v89 + 8))(v97, v214);
    v92 = v212;
    if ((v98 & 1) == 0)
    {
      (*(v95 + 8))(v245, v94);
      return 0;
    }
  }

  v99 = v237;
  v101 = v201;
  v100 = v202;
  (*(v92 + 16))(v201, v237 + v216[10], v202);
  v102 = v204;
  v103 = v213;
  if ((*(v204 + 48))(v101, 1, v213) == 1)
  {
    (*(v92 + 8))(v101, v100);
  }

  else
  {
    (*(v102 + 32))(v203, v101, v103);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    v104 = v230;
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    v105 = swift_getTupleTypeMetadata();
    v106 = *(v105 - 8);
    (*(v106 + 16))(&TupleTypeMetadata2, v245, v105);

    v107 = v181;
    swift_getAtKeyPath();

    v108 = v203;
    v109 = (*(v180 + 104))(v203, v104);
    v99 = v237;
    (*(v182 + 8))(v107, v104);
    (*(v102 + 8))(v108, v213);
    if ((v109 & 1) == 0)
    {
      (*(v106 + 8))(v245, v105);
      return 0;
    }
  }

  v110 = v192;
  v111 = v193;
  v112 = v194;
  (*(v193 + 16))(v192, v99 + v216[11], v194);
  v113 = v195;
  v114 = v206;
  if ((*(v195 + 48))(v110, 1, v206) == 1)
  {
    (*(v111 + 8))(v110, v112);
    v115 = v205;
  }

  else
  {
    v116 = v173;
    (*(v113 + 32))(v173, v110, v114);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    v117 = v231;
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    v118 = swift_getTupleTypeMetadata();
    v119 = *(v118 - 8);
    (*(v119 + 16))(&TupleTypeMetadata2, v245, v118);

    v120 = v175;
    swift_getAtKeyPath();

    v121 = (*(v174 + 104))(v116, v117);
    (*(v176 + 8))(v120, v117);
    (*(v113 + 8))(v116, v206);
    v115 = v205;
    if ((v121 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v123 = v184;
  v122 = v185;
  v124 = v186;
  (*(v185 + 16))(v184, v237 + v216[12], v186);
  v125 = v187;
  v126 = v196;
  if ((*(v187 + 48))(v123, 1, v196) == 1)
  {
    (*(v122 + 8))(v123, v124);
    goto LABEL_17;
  }

  v127 = v164;
  (*(v125 + 32))(v164, v123, v126);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v239 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v240 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v241 = swift_getTupleTypeMetadata2();
  v128 = v232;
  sub_1AE23DB8C();
  v242 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v243 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v244 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v83 = *(TupleTypeMetadata - 8);
  (*(v83 + 16))(&TupleTypeMetadata2, v245, TupleTypeMetadata);

  v129 = v166;
  swift_getAtKeyPath();

  v130 = (*(v165 + 104))(v127, v128);
  v131 = v128;
  v115 = v205;
  (*(v167 + 8))(v129, v131);
  (*(v125 + 8))(v127, v196);
  if ((v130 & 1) == 0)
  {
LABEL_19:
    (*(v83 + 8))(v245, TupleTypeMetadata);
    return 0;
  }

LABEL_17:
  v133 = v177;
  v132 = v178;
  (*(v115 + 16))(v177, v237 + v216[13], v178);
  v134 = v179;
  v135 = v188;
  if ((*(v179 + 48))(v133, 1, v188) != 1)
  {
    v136 = v160;
    (*(v134 + 32))(v160, v133, v135);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    v137 = v228;
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    v118 = swift_getTupleTypeMetadata();
    v119 = *(v118 - 8);
    (*(v119 + 16))(&TupleTypeMetadata2, v245, v118);

    v138 = v162;
    swift_getAtKeyPath();

    v139 = (*(v161 + 104))(v136, v137);
    (*(v163 + 8))(v138, v137);
    (*(v134 + 8))(v136, v188);
    if (v139)
    {
      goto LABEL_22;
    }

LABEL_24:
    (*(v119 + 8))(v245, v118);
    return 0;
  }

  (*(v115 + 8))(v133, v132);
LABEL_22:
  v141 = v168;
  v140 = v169;
  v142 = v170;
  (*(v169 + 16))(v168, v237 + v216[14], v170);
  v143 = v171;
  v144 = v172;
  if ((*(v171 + 48))(v141, 1, v172) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v244 = swift_getTupleTypeMetadata2();
    v145 = swift_getTupleTypeMetadata();
    (*(*(v145 - 8) + 8))(v245, v145);
    (*(v140 + 8))(v141, v142);
    return 1;
  }

  v146 = v156;
  (*(v143 + 32))(v156, v141, v144);
  sub_1AE23DB8C();
  v147 = v143;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v239 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v240 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v241 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v242 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v243 = swift_getTupleTypeMetadata2();
  v148 = v236;
  sub_1AE23DB8C();
  v244 = swift_getTupleTypeMetadata2();
  v149 = swift_getTupleTypeMetadata();
  v150 = *(v149 - 8);
  (*(v150 + 16))(&TupleTypeMetadata2, v245, v149);

  v151 = v158;
  swift_getAtKeyPath();

  v152 = (*(AssociatedConformanceWitness + 104))(v146, v148);
  (*(v150 + 8))(v245, v149);
  (*(v159 + 8))(v151, v148);
  (*(v147 + 8))(v146, v144);
  return (v152 & 1) != 0;
}

uint64_t CRStruct_8.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v198 = a4;
  v199 = a5;
  v196 = a3;
  v224 = a2;
  v225 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v182 = *(AssociatedTypeWitness - 8);
  v7 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v181 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v139 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v140 = swift_getAssociatedTypeWitness();
  v197 = sub_1AE23D7CC();
  v193 = *(v197 - 8);
  v11 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v153 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v221 = &v139 - v14;
  v216 = swift_getAssociatedTypeWitness();
  v178 = *(v216 - 8);
  v15 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v177 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v139 - v18;
  v176 = swift_getAssociatedConformanceWitness();
  v141 = swift_getAssociatedTypeWitness();
  v202 = sub_1AE23D7CC();
  v191 = *(v202 - 8);
  v19 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v152 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v222 = &v139 - v22;
  v211 = swift_getAssociatedTypeWitness();
  v175 = *(v211 - 8);
  v23 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v174 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v139 - v26;
  v173 = swift_getAssociatedConformanceWitness();
  v142 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v200 = *(v27 - 8);
  v201 = v27;
  v28 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v223 = &v139 - v31;
  v210 = swift_getAssociatedTypeWitness();
  v170 = *(v210 - 8);
  v32 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v169 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v209 = &v139 - v35;
  v168 = swift_getAssociatedConformanceWitness();
  v143 = swift_getAssociatedTypeWitness();
  v195 = sub_1AE23D7CC();
  v188 = *(v195 - 8);
  v36 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v150 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v215 = &v139 - v39;
  v208 = swift_getAssociatedTypeWitness();
  v167 = *(v208 - 8);
  v40 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v166 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v207 = &v139 - v43;
  v165 = swift_getAssociatedConformanceWitness();
  v144 = swift_getAssociatedTypeWitness();
  v194 = sub_1AE23D7CC();
  v192 = *(v194 - 8);
  v44 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v149 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v219 = &v139 - v47;
  v206 = swift_getAssociatedTypeWitness();
  v164 = *(v206 - 8);
  v48 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v163 = &v139 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v205 = &v139 - v51;
  v162 = swift_getAssociatedConformanceWitness();
  v145 = swift_getAssociatedTypeWitness();
  v52 = sub_1AE23D7CC();
  v189 = *(v52 - 8);
  v190 = v52;
  v53 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v148 = &v139 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v220 = &v139 - v56;
  v57 = swift_getAssociatedTypeWitness();
  v161 = *(v57 - 8);
  v58 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v160 = &v139 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v204 = &v139 - v61;
  v62 = swift_getAssociatedConformanceWitness();
  v158 = v57;
  v159 = v62;
  v146 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v186 = *(v63 - 8);
  v187 = v63;
  v64 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v147 = &v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v213 = &v139 - v67;
  v68 = swift_getAssociatedTypeWitness();
  v157 = *(v68 - 8);
  v69 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v156 = &v139 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v203 = &v139 - v72;
  v73 = swift_getAssociatedConformanceWitness();
  v154 = v68;
  v155 = v73;
  v172 = swift_getAssociatedTypeWitness();
  v74 = sub_1AE23D7CC();
  v184 = *(v74 - 8);
  v185 = v74;
  v75 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v183 = &v139 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v218 = &v139 - v79;
  (*(v6 + 144))(v246, a3, v6, v78);
  v234 = v246[1];
  v230 = v246[2];
  v237 = v246[4];
  v231 = v246[5];
  v242 = v246[7];
  v240 = v246[8];
  v244 = v246[10];
  v232 = v246[11];
  v235 = v246[13];
  v233 = v246[14];
  v241 = v246[16];
  v239 = v246[20];
  v226 = v246[22];
  v229 = v246[17];
  v228 = v246[19];
  v227 = v246[23];
  sub_1AE23DB8C();
  v245[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245[7] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v171 = *(TupleTypeMetadata - 8);
  v238 = *(v171 + 16);
  v236 = v171 + 16;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v238(v245, v246, TupleTypeMetadata);

  v80 = v156;
  swift_getAtKeyPath();

  v81 = v154;
  v82 = v203;
  (*(v155 + 96))(v225, v80, v154);
  v83 = *(v157 + 8);
  v83(v80, v81);
  v83(v82, v81);
  v84 = TupleTypeMetadata;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v238(v245, v246, v84);

  v85 = v160;
  swift_getAtKeyPath();

  v86 = v158;
  v87 = v204;
  (*(v159 + 96))(v225, v85, v158);
  v88 = *(v161 + 8);
  v88(v85, v86);
  v88(v87, v86);
  v238(v245, v246, v84);

  swift_getAtKeyPath();

  v238(v245, v246, TupleTypeMetadata);

  v89 = v163;
  swift_getAtKeyPath();

  v90 = v205;
  v91 = v206;
  (*(v162 + 96))(v225, v89, v206);
  v92 = *(v164 + 8);
  v92(v89, v91);
  v92(v90, v91);
  v93 = v238;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v93(v245, v246, TupleTypeMetadata);

  v94 = v166;
  swift_getAtKeyPath();

  v95 = v207;
  v96 = v208;
  (*(v165 + 96))(v225, v94, v208);
  v97 = *(v167 + 8);
  v97(v94, v96);
  v97(v95, v96);
  v98 = TupleTypeMetadata;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v238(v245, v246, v98);

  v99 = v169;
  swift_getAtKeyPath();

  v100 = v209;
  v101 = v210;
  (*(v168 + 96))(v225, v99, v210);
  v102 = *(v170 + 8);
  v102(v99, v101);
  v102(v100, v101);
  v103 = v238;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v103(v245, v246, TupleTypeMetadata);

  v104 = v174;
  swift_getAtKeyPath();

  v105 = v212;
  v106 = v211;
  (*(v173 + 96))(v225, v104, v211);
  v107 = *(v175 + 8);
  v107(v104, v106);
  v107(v105, v106);
  v108 = TupleTypeMetadata;
  v238(v245, v246, TupleTypeMetadata);

  swift_getAtKeyPath();

  v109 = v238;
  v238(v245, v246, v108);

  v110 = v177;
  swift_getAtKeyPath();

  v111 = v110;
  v112 = v214;
  v113 = v216;
  (*(v176 + 96))(v225, v110, v216);
  v114 = *(v178 + 8);
  v114(v111, v113);
  v114(v112, v113);
  v109(v245, v246, TupleTypeMetadata);

  v115 = v179;
  swift_getAtKeyPath();

  v238(v245, v246, TupleTypeMetadata);

  v116 = v220;

  v117 = v181;
  swift_getAtKeyPath();

  v118 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 96))(v225, v117, AssociatedTypeWitness);
  v119 = *(v182 + 8);
  v120 = v213;
  v119(v117, v118);
  v121 = v215;
  v119(v115, v118);
  v122 = v219;
  v123 = v218;
  if ((*(*(v172 - 8) + 48))() != 1 || (*(*(v146 - 8) + 48))(v120, 1) != 1 || (*(*(v145 - 8) + 48))(v116, 1) != 1 || (*(*(v144 - 8) + 48))(v122, 1) != 1 || (*(*(v143 - 8) + 48))(v121, 1) != 1 || (*(*(v142 - 8) + 48))(v223, 1) != 1 || (*(*(v141 - 8) + 48))(v222, 1) != 1 || (v124 = 1, (*(*(v140 - 8) + 48))(v221, 1) != 1))
  {
    (*(v184 + 16))(v183, v123, v185);
    v125 = v147;
    (*(v186 + 16))(v147, v120, v187);
    v126 = v148;
    (*(v189 + 16))(v148, v116, v190);
    v127 = v149;
    (*(v192 + 16))(v149, v122, v194);
    v128 = v150;
    (*(v188 + 16))(v150, v121, v195);
    v129 = v151;
    (*(v200 + 16))(v151, v223, v201);
    v130 = v121;
    v131 = v152;
    (*(v191 + 16))(v152, v222, v202);
    v132 = v153;
    (*(v193 + 16))(v153, v221, v197);
    v133 = v127;
    v123 = v218;
    v134 = v128;
    v116 = v220;
    v135 = v129;
    v122 = v219;
    v136 = v131;
    v121 = v130;
    CRStructMergeableDelta_8.init(_:_:_:_:_:_:_:_:)(v183, v125, v126, v133, v134, v135, v136, v132, v199, v196, v198);
    v124 = 0;
  }

  (*(v171 + 8))(v246, TupleTypeMetadata);
  (*(v184 + 8))(v123, v185);
  v137 = type metadata accessor for CRStructMergeableDelta_8();
  (*(*(v137 - 8) + 56))(v199, v124, 1, v137);
  (*(v193 + 8))(v221, v197);
  (*(v191 + 8))(v222, v202);
  (*(v200 + 8))(v223, v201);
  (*(v188 + 8))(v121, v195);
  (*(v192 + 8))(v122, v194);
  (*(v189 + 8))(v116, v190);
  return (*(v186 + 8))(v120, v187);
}

BOOL CRStruct_8.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v228 = a3;
  v235 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v227 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v199 = *(v7 - 8);
  v200 = v7;
  v8 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v198 = &v152 - v9;
  v201 = v6;
  v207 = *(v6 - 8);
  v10 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v152 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v167 = swift_getAssociatedConformanceWitness();
  v232 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v195 = *(v15 - 8);
  v196 = v15;
  v16 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v152 - v17;
  v206 = v14;
  v197 = *(v14 - 8);
  v18 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v152 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v165 = swift_getAssociatedConformanceWitness();
  v226 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1AE23D7CC();
  v191 = *(v23 - 8);
  v192 = v23;
  v24 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v190 = &v152 - v25;
  v205 = v22;
  v193 = *(v22 - 8);
  v26 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v152 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v163 = swift_getAssociatedConformanceWitness();
  v234 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v187 = *(v31 - 8);
  v188 = v31;
  v32 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v152 - v33;
  v204 = v30;
  v189 = *(v30 - 8);
  v34 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v162 = &v152 - v36;
  v37 = swift_getAssociatedTypeWitness();
  v161 = swift_getAssociatedConformanceWitness();
  v231 = v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1AE23D7CC();
  v182 = *(v39 - 8);
  v183 = v39;
  v40 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v152 - v41;
  v185 = v38;
  v184 = *(v38 - 8);
  v42 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v160 = &v152 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v159 = swift_getAssociatedConformanceWitness();
  v230 = v45;
  v46 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  v177 = *(v47 - 8);
  v178 = v47;
  v48 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v176 = &v152 - v49;
  v180 = v46;
  v179 = *(v46 - 8);
  v50 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v158 = &v152 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v157 = swift_getAssociatedConformanceWitness();
  v229 = v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v172 = *(v55 - 8);
  v173 = v55;
  v56 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v171 = &v152 - v57;
  v175 = v54;
  v174 = *(v54 - 8);
  v58 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v156 = &v152 - v60;
  v61 = swift_getAssociatedTypeWitness();
  v155 = swift_getAssociatedConformanceWitness();
  v233 = v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v202 = *(v63 - 8);
  v203 = v63;
  v64 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v152 - v65;
  v209 = v62;
  v208 = *(v62 - 8);
  v67 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v170 = &v152 - v69;
  v70 = CRStruct_8.canMerge(delta:)(v235, a2, v228);
  if (v70)
  {
    v153 = v70;
    v71 = *(v4 + 144);
    v154 = v4;
    v71(v244, a2, v4);
    v72 = v244[1];
    v73 = v244[5];
    v74 = v244[7];
    v152 = a2;
    v225 = v244[8];
    v224 = v244[11];
    v75 = v244[14];
    v223 = v244[17];
    v76 = v244[19];
    v77 = v244[20];
    v78 = v244[23];
    v221 = v244[2];
    v219 = v244[4];
    v216 = v244[10];
    v212 = v244[13];
    v213 = v244[22];
    v210 = v244[16];
    v79 = v235;
    (*(v202 + 16))(v66, v235, v203);
    v80 = (*(v208 + 48))(v66, 1, v209);
    v222 = v72;
    v220 = v78;
    v218 = v73;
    v217 = v74;
    v214 = v76;
    v215 = v75;
    v211 = v77;
    if (v80 == 1)
    {
      (*(v202 + 8))(v66, v203);
      v81 = v172;
      v82 = v152;
    }

    else
    {
      (*(v208 + 32))(v170, v66, v209);
      v82 = v152;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v244, TupleTypeMetadata);

      v84 = swift_modifyAtWritableKeyPath();
      v85 = v170;
      (*(v155 + 112))(v170, v233);
      v84(&TupleTypeMetadata2, 0);

      (*(v208 + 8))(v85, v209);
      v81 = v172;
    }

    v228 = type metadata accessor for CRStructMergeableDelta_8();
    v86 = v171;
    v87 = v173;
    (*(v81 + 16))(v171, v79 + v228[9], v173);
    v88 = v174;
    v89 = v175;
    if ((*(v174 + 48))(v86, 1, v175) == 1)
    {
      (*(v81 + 8))(v86, v87);
    }

    else
    {
      v90 = v156;
      (*(v88 + 32))(v156, v86, v89);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v91 = v229;
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v92 = swift_getTupleTypeMetadata();
      (*(*(v92 - 8) + 16))(&TupleTypeMetadata2, v244, v92);

      v93 = swift_modifyAtWritableKeyPath();
      (*(v157 + 112))(v90, v91);
      v93(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v88 + 8))(v90, v89);
    }

    v94 = v180;
    v95 = v176;
    v96 = v177;
    v97 = v178;
    (*(v177 + 16))(v176, v79 + v228[10], v178);
    v98 = v179;
    if ((*(v179 + 48))(v95, 1, v94) == 1)
    {
      (*(v96 + 8))(v95, v97);
    }

    else
    {
      v99 = v158;
      (*(v98 + 32))(v158, v95, v94);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      v100 = v230;
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v101 = swift_getTupleTypeMetadata();
      (*(*(v101 - 8) + 16))(&TupleTypeMetadata2, v244, v101);

      v102 = swift_modifyAtWritableKeyPath();
      (*(v159 + 112))(v99, v100);
      v102(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v98 + 8))(v99, v94);
    }

    v104 = v182;
    v103 = v183;
    v105 = v181;
    (*(v182 + 16))(v181, v79 + v228[11], v183);
    v106 = v184;
    v107 = v185;
    if ((*(v184 + 48))(v105, 1, v185) == 1)
    {
      (*(v104 + 8))(v105, v103);
    }

    else
    {
      v108 = v160;
      (*(v106 + 32))(v160, v105, v107);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      v109 = v231;
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v110 = swift_getTupleTypeMetadata();
      (*(*(v110 - 8) + 16))(&TupleTypeMetadata2, v244, v110);

      v111 = swift_modifyAtWritableKeyPath();
      (*(v161 + 112))(v108, v109);
      v111(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v106 + 8))(v108, v107);
    }

    v113 = v187;
    v112 = v188;
    v114 = v186;
    (*(v187 + 16))(v186, v79 + v228[12], v188);
    v115 = v189;
    v116 = v204;
    if ((*(v189 + 48))(v114, 1, v204) == 1)
    {
      (*(v113 + 8))(v114, v112);
    }

    else
    {
      v117 = v116;
      v118 = v162;
      (*(v115 + 32))(v162, v114, v117);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      v119 = v234;
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v120 = swift_getTupleTypeMetadata();
      (*(*(v120 - 8) + 16))(&TupleTypeMetadata2, v244, v120);

      v121 = swift_modifyAtWritableKeyPath();
      (*(v163 + 112))(v118, v119);
      v121(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v115 + 8))(v118, v204);
    }

    v122 = v205;
    v124 = v190;
    v123 = v191;
    v125 = v192;
    (*(v191 + 16))(v190, v79 + v228[13], v192);
    v126 = v193;
    if ((*(v193 + 48))(v124, 1, v122) == 1)
    {
      (*(v123 + 8))(v124, v125);
    }

    else
    {
      v130 = v164;
      (*(v126 + 32))(v164, v124, v122);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      v131 = v226;
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v132 = swift_getTupleTypeMetadata();
      (*(*(v132 - 8) + 16))(&TupleTypeMetadata2, v244, v132);

      v133 = swift_modifyAtWritableKeyPath();
      (*(v165 + 112))(v130, v131);
      v133(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v126 + 8))(v130, v205);
    }

    v127 = v206;
    v129 = v196;
    v128 = v197;
    v135 = v194;
    v134 = v195;
    (*(v195 + 16))(v194, v79 + v228[14], v196);
    if ((*(v128 + 48))(v135, 1, v127) == 1)
    {
      (*(v134 + 8))(v135, v129);
    }

    else
    {
      v136 = v166;
      (*(v128 + 32))(v166, v135, v127);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      v137 = v232;
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v138 = swift_getTupleTypeMetadata();
      (*(*(v138 - 8) + 16))(&TupleTypeMetadata2, v244, v138);

      v139 = swift_modifyAtWritableKeyPath();
      (*(v167 + 112))(v136, v137);
      v139(&TupleTypeMetadata2, 0);
      v79 = v235;

      (*(v128 + 8))(v136, v206);
    }

    v140 = v207;
    v142 = v199;
    v141 = v200;
    v143 = v79 + v228[15];
    v144 = v198;
    (*(v199 + 16))(v198, v143, v200);
    v145 = v201;
    if ((*(v140 + 48))(v144, 1, v201) == 1)
    {
      (*(v142 + 8))(v144, v141);
    }

    else
    {
      v146 = v168;
      (*(v140 + 32))(v168, v144, v145);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v237 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v238 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v239 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v240 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v241 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v242 = swift_getTupleTypeMetadata2();
      v147 = v227;
      sub_1AE23DB8C();
      v243 = swift_getTupleTypeMetadata2();
      v148 = swift_getTupleTypeMetadata();
      (*(*(v148 - 8) + 16))(&TupleTypeMetadata2, v244, v148);

      v149 = swift_modifyAtWritableKeyPath();
      (*(AssociatedConformanceWitness + 112))(v146, v147);
      v149(&TupleTypeMetadata2, 0);

      (*(v207 + 8))(v146, v145);
    }

    (*(*(v154 + 8) + 64))(v82);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v237 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v238 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v239 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v240 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v241 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v242 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v243 = swift_getTupleTypeMetadata2();
    v150 = swift_getTupleTypeMetadata();
    (*(*(v150 - 8) + 8))(v244, v150);
    LOBYTE(v70) = v153;
  }

  return v70;
}

BOOL CRStruct_8.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v276 = a1;
  v247 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v184 = *(AssociatedTypeWitness - 8);
  v6 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v183 = &v179 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v269 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v193 = *(v9 - 8);
  v194 = v9;
  v10 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v192 = &v179 - v11;
  v197 = v8;
  v196 = *(v8 - 8);
  v12 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v195 = &v179 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v187 = *(v15 - 8);
  v16 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v179 - v17;
  v185 = swift_getAssociatedConformanceWitness();
  v268 = v15;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v203 = *(v19 - 8);
  v204 = v19;
  v20 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v202 = &v179 - v21;
  v214 = v18;
  v206 = *(v18 - 8);
  v22 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v179 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v191 = *(v25 - 8);
  v26 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v190 = &v179 - v27;
  v189 = swift_getAssociatedConformanceWitness();
  v272 = v25;
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_1AE23D7CC();
  v211 = *(v29 - 8);
  v212 = v29;
  v30 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v210 = &v179 - v31;
  v221 = v28;
  v213 = *(v28 - 8);
  v32 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v179 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v201 = *(v35 - 8);
  v36 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v200 = &v179 - v37;
  v199 = swift_getAssociatedConformanceWitness();
  v267 = v35;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1AE23D7CC();
  v218 = *(v39 - 8);
  v219 = v39;
  v40 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v241 = &v179 - v41;
  v231 = v38;
  v220 = *(v38 - 8);
  v42 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v198 = &v179 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v209 = *(v45 - 8);
  v46 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v208 = &v179 - v47;
  v207 = swift_getAssociatedConformanceWitness();
  v253 = v45;
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1AE23D7CC();
  v227 = *(v49 - 8);
  v228 = v49;
  v50 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v226 = &v179 - v51;
  v242 = v48;
  v230 = *(v48 - 8);
  v52 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v229 = &v179 - v54;
  v55 = swift_getAssociatedTypeWitness();
  v217 = *(v55 - 8);
  v56 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v216 = &v179 - v57;
  v215 = swift_getAssociatedConformanceWitness();
  v275 = v55;
  v58 = swift_getAssociatedTypeWitness();
  v59 = sub_1AE23D7CC();
  v237 = *(v59 - 8);
  v238 = v59;
  v60 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v236 = &v179 - v61;
  v248 = v58;
  v240 = *(v58 - 8);
  v62 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v239 = &v179 - v64;
  v65 = swift_getAssociatedTypeWitness();
  v225 = *(v65 - 8);
  v66 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v224 = &v179 - v67;
  v223 = swift_getAssociatedConformanceWitness();
  v274 = v65;
  v68 = swift_getAssociatedTypeWitness();
  v245 = sub_1AE23D7CC();
  v244 = *(v245 - 8);
  v69 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v179 - v70;
  v250 = v68;
  v246 = *(v68 - 8);
  v71 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v222 = &v179 - v73;
  v74 = swift_getAssociatedTypeWitness();
  v235 = *(v74 - 8);
  v75 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v234 = &v179 - v76;
  v233 = swift_getAssociatedConformanceWitness();
  v270 = v74;
  v77 = swift_getAssociatedTypeWitness();
  v78 = sub_1AE23D7CC();
  v249 = *(v78 - 8);
  v79 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v179 - v80;
  v82 = *(v77 - 8);
  v83 = *(v82 + 64);
  v85 = MEMORY[0x1EEE9AC00](v84);
  v232 = &v179 - v86;
  v87 = *(v4 + 144);
  v252 = a2;
  v87(v285, a2, v4, v85);
  v271 = v285[1];
  v273 = v285[2];
  v266 = v285[4];
  v265 = v285[5];
  v264 = v285[7];
  v262 = v285[8];
  v261 = v285[10];
  v260 = v285[11];
  v259 = v285[13];
  v258 = v285[14];
  v257 = v285[16];
  v256 = v285[17];
  v255 = v285[19];
  v254 = v285[20];
  v88 = v285[22];
  v89 = v249;
  v263 = v285[23];
  (*(v249 + 16))(v81, v276, v78);
  v90 = v82;
  v91 = (*(v82 + 48))(v81, 1, v77);
  v251 = v88;
  if (v91 == 1)
  {
    (*(v89 + 8))(v81, v78);
  }

  else
  {
    v180 = v82;
    v181 = v77;
    v92 = v232;
    (*(v90 + 32))(v232, v81, v77);
    v93 = v270;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v95 = *(TupleTypeMetadata - 8);
    (*(v95 + 16))(&TupleTypeMetadata2, v285, TupleTypeMetadata);

    v96 = v234;
    swift_getAtKeyPath();

    v97 = (*(v233 + 104))(v92, v93);
    (*(v235 + 8))(v96, v93);
    (*(v180 + 8))(v92, v181);
    if ((v97 & 1) == 0)
    {
      (*(v95 + 8))(v285, TupleTypeMetadata);
      return 0;
    }
  }

  v98 = type metadata accessor for CRStructMergeableDelta_8();
  v99 = v244;
  v100 = v243;
  v101 = v245;
  (*(v244 + 16))(v243, v276 + *(v98 + 36), v245);
  v102 = v246;
  v103 = v250;
  if ((*(v246 + 48))(v100, 1, v250) == 1)
  {
    (*(v99 + 8))(v100, v101);
  }

  else
  {
    v104 = v222;
    (*(v102 + 32))(v222, v100, v103);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v105 = swift_getTupleTypeMetadata();
    v106 = *(v105 - 8);
    v107 = *(v106 + 16);
    v249 = v105;
    v107(&TupleTypeMetadata2, v285);

    v108 = v224;
    swift_getAtKeyPath();

    v109 = v98;
    v110 = v274;
    v111 = (*(v223 + 104))(v104, v274);
    v112 = v110;
    v98 = v109;
    (*(v225 + 8))(v108, v112);
    (*(v102 + 8))(v104, v250);
    if ((v111 & 1) == 0)
    {
      (*(v106 + 8))(v285, v249);
      return 0;
    }
  }

  v250 = v98;
  v113 = *(v98 + 40);
  v115 = v236;
  v114 = v237;
  v116 = v238;
  (*(v237 + 16))(v236, v276 + v113, v238);
  v117 = v240;
  v118 = v248;
  if ((*(v240 + 48))(v115, 1, v248) == 1)
  {
    (*(v114 + 8))(v115, v116);
    v119 = v241;
    v120 = v253;
  }

  else
  {
    (*(v117 + 32))(v239, v115, v118);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    v121 = v275;
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    v120 = v253;
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v122 = swift_getTupleTypeMetadata();
    v123 = *(v122 - 8);
    (*(v123 + 16))(&TupleTypeMetadata2, v285, v122);

    v124 = v216;
    swift_getAtKeyPath();

    v125 = v239;
    v126 = (*(v215 + 104))(v239, v121);
    (*(v217 + 8))(v124, v121);
    (*(v117 + 8))(v125, v248);
    v119 = v241;
    if ((v126 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v127 = v226;
  v128 = v227;
  v129 = v228;
  (*(v227 + 16))(v226, v276 + v250[11], v228);
  v130 = v230;
  v131 = v242;
  if ((*(v230 + 48))(v127, 1, v242) == 1)
  {
    (*(v128 + 8))(v127, v129);
  }

  else
  {
    (*(v130 + 32))(v229, v127, v131);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v132 = swift_getTupleTypeMetadata();
    v133 = *(v132 - 8);
    (*(v133 + 16))(&TupleTypeMetadata2, v285, v132);

    v134 = v208;
    swift_getAtKeyPath();

    v135 = v229;
    v136 = (*(v207 + 104))(v229, v120);
    (*(v209 + 8))(v134, v120);
    (*(v130 + 8))(v135, v242);
    if ((v136 & 1) == 0)
    {
      (*(v133 + 8))(v285, v132);
      return 0;
    }
  }

  v138 = v218;
  v137 = v219;
  (*(v218 + 16))(v119, v276 + v250[12], v219);
  v139 = v220;
  v140 = v231;
  if ((*(v220 + 48))(v119, 1, v231) == 1)
  {
    (*(v138 + 8))(v119, v137);
  }

  else
  {
    v141 = v198;
    (*(v139 + 32))(v198, v119, v140);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    v142 = v267;
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v122 = swift_getTupleTypeMetadata();
    v123 = *(v122 - 8);
    (*(v123 + 16))(&TupleTypeMetadata2, v285, v122);

    v143 = v200;
    swift_getAtKeyPath();

    v144 = (*(v199 + 104))(v141, v142);
    (*(v201 + 8))(v143, v142);
    (*(v139 + 8))(v141, v231);
    if ((v144 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v146 = v210;
  v145 = v211;
  v147 = v212;
  (*(v211 + 16))(v210, v276 + v250[13], v212);
  v148 = v213;
  v149 = v221;
  if ((*(v213 + 48))(v146, 1, v221) == 1)
  {
    (*(v145 + 8))(v146, v147);
  }

  else
  {
    v150 = v188;
    (*(v148 + 32))(v188, v146, v149);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    v151 = v272;
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v152 = swift_getTupleTypeMetadata();
    v153 = *(v152 - 8);
    (*(v153 + 16))(&TupleTypeMetadata2, v285, v152);

    v154 = v190;
    swift_getAtKeyPath();

    v155 = (*(v189 + 104))(v150, v151);
    (*(v191 + 8))(v154, v151);
    (*(v148 + 8))(v150, v221);
    if ((v155 & 1) == 0)
    {
      (*(v153 + 8))(v285, v152);
      return 0;
    }
  }

  v157 = v202;
  v156 = v203;
  v158 = v204;
  (*(v203 + 16))(v202, v276 + v250[14], v204);
  v159 = v206;
  v160 = v214;
  if ((*(v206 + 48))(v157, 1, v214) != 1)
  {
    (*(v159 + 32))(v205, v157, v160);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    v161 = v268;
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v122 = swift_getTupleTypeMetadata();
    v123 = *(v122 - 8);
    (*(v123 + 16))(&TupleTypeMetadata2, v285, v122);

    v162 = v186;
    swift_getAtKeyPath();

    v163 = v205;
    v164 = (*(v185 + 104))(v205, v161);
    (*(v187 + 8))(v162, v161);
    (*(v159 + 8))(v163, v214);
    if (v164)
    {
      goto LABEL_25;
    }

LABEL_27:
    (*(v123 + 8))(v285, v122);
    return 0;
  }

  (*(v156 + 8))(v157, v158);
LABEL_25:
  v166 = v192;
  v165 = v193;
  v167 = v194;
  (*(v193 + 16))(v192, v276 + v250[15], v194);
  v168 = v196;
  v169 = v197;
  if ((*(v196 + 48))(v166, 1, v197) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v279 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v280 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v281 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v282 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v283 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v284 = swift_getTupleTypeMetadata2();
    v170 = swift_getTupleTypeMetadata();
    (*(*(v170 - 8) + 8))(v285, v170);
    (*(v165 + 8))(v166, v167);
    return 1;
  }

  (*(v168 + 32))(v195, v166, v169);
  sub_1AE23DB8C();
  v172 = v168;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v278 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v279 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v280 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v281 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v282 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v283 = swift_getTupleTypeMetadata2();
  v173 = v269;
  sub_1AE23DB8C();
  v284 = swift_getTupleTypeMetadata2();
  v174 = swift_getTupleTypeMetadata();
  v175 = *(v174 - 8);
  (*(v175 + 16))(&TupleTypeMetadata2, v285, v174);

  v176 = v183;
  swift_getAtKeyPath();

  v177 = v195;
  v178 = (*(AssociatedConformanceWitness + 104))(v195, v173);
  (*(v175 + 8))(v285, v174);
  (*(v184 + 8))(v176, v173);
  (*(v172 + 8))(v177, v169);
  return (v178 & 1) != 0;
}

uint64_t CRStruct_9.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v211 = a4;
  v212 = a5;
  v246 = a2;
  v247 = a1;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v197 = *(AssociatedTypeWitness - 8);
  v7 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v196 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v194 = &v151 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v152 = swift_getAssociatedTypeWitness();
  v216 = sub_1AE23D7CC();
  v219 = *(v216 - 8);
  v11 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v167 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v241 = &v151 - v14;
  v232 = swift_getAssociatedTypeWitness();
  v193 = *(v232 - 8);
  v15 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v192 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v237 = &v151 - v18;
  v191 = swift_getAssociatedConformanceWitness();
  v153 = swift_getAssociatedTypeWitness();
  v213 = sub_1AE23D7CC();
  v205 = *(v213 - 8);
  v19 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v166 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v242 = &v151 - v22;
  v234 = swift_getAssociatedTypeWitness();
  v190 = *(v234 - 8);
  v23 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v189 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v236 = &v151 - v26;
  v188 = swift_getAssociatedConformanceWitness();
  v154 = swift_getAssociatedTypeWitness();
  v218 = sub_1AE23D7CC();
  v217 = *(v218 - 8);
  v27 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v165 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v243 = &v151 - v30;
  v230 = swift_getAssociatedTypeWitness();
  v185 = *(v230 - 8);
  v31 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v184 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v231 = &v151 - v34;
  v183 = swift_getAssociatedConformanceWitness();
  v155 = swift_getAssociatedTypeWitness();
  v35 = sub_1AE23D7CC();
  v214 = *(v35 - 8);
  v215 = v35;
  v36 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v164 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v244 = &v151 - v39;
  v227 = swift_getAssociatedTypeWitness();
  v182 = *(v227 - 8);
  v40 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v181 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v229 = &v151 - v43;
  v180 = swift_getAssociatedConformanceWitness();
  v156 = swift_getAssociatedTypeWitness();
  v44 = sub_1AE23D7CC();
  v45 = *(v44 - 8);
  v209 = v44;
  v210 = v45;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v163 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v238 = &v151 - v49;
  v225 = swift_getAssociatedTypeWitness();
  v179 = *(v225 - 8);
  v50 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v178 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v228 = &v151 - v53;
  v177 = swift_getAssociatedConformanceWitness();
  v157 = swift_getAssociatedTypeWitness();
  v54 = sub_1AE23D7CC();
  v207 = *(v54 - 8);
  v208 = v54;
  v55 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v162 = &v151 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v245 = &v151 - v58;
  v224 = swift_getAssociatedTypeWitness();
  v176 = *(v224 - 8);
  v59 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v175 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v226 = &v151 - v62;
  v174 = swift_getAssociatedConformanceWitness();
  v158 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v203 = *(v63 - 8);
  v204 = v63;
  v64 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v161 = &v151 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v239 = &v151 - v67;
  v222 = swift_getAssociatedTypeWitness();
  v173 = *(v222 - 8);
  v68 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v172 = &v151 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v223 = &v151 - v71;
  v171 = swift_getAssociatedConformanceWitness();
  v159 = swift_getAssociatedTypeWitness();
  v72 = sub_1AE23D7CC();
  v201 = *(v72 - 8);
  v202 = v72;
  v73 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v160 = &v151 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v240 = &v151 - v76;
  v220 = swift_getAssociatedTypeWitness();
  v170 = *(v220 - 8);
  v77 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v169 = &v151 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v221 = &v151 - v80;
  v168 = swift_getAssociatedConformanceWitness();
  v186 = swift_getAssociatedTypeWitness();
  v81 = sub_1AE23D7CC();
  v199 = *(v81 - 8);
  v200 = v81;
  v82 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v198 = &v151 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v84);
  v233 = &v151 - v86;
  v87 = *(v6 + 160);
  v206 = a3;
  v87(v270, a3, v6, v85);
  v251 = v270[1];
  v259 = v270[2];
  v267 = v270[4];
  v263 = v270[5];
  v252 = v270[7];
  v264 = v270[8];
  v262 = v270[10];
  v261 = v270[11];
  v256 = v270[13];
  v250 = v270[14];
  v255 = v270[16];
  v265 = v270[17];
  v257 = v270[22];
  v258 = v270[23];
  v253 = v270[19];
  v254 = v270[20];
  v88 = v270[25];
  v249 = v270[26];
  sub_1AE23DB8C();
  v269[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v269[8] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v187 = *(TupleTypeMetadata - 8);
  v89 = *(v187 + 16);
  v260 = v187 + 16;
  v266 = v89;
  v89(v269, v270, TupleTypeMetadata);

  v248 = v88;

  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v90 = v169;
  swift_getAtKeyPath();

  v91 = v221;
  v92 = v220;
  (*(v168 + 96))(v247, v90, v220);
  v93 = *(v170 + 8);
  v93(v90, v92);
  v93(v91, v92);
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v94 = v172;
  swift_getAtKeyPath();

  v95 = v223;
  v96 = v222;
  (*(v171 + 96))(v247, v94, v222);
  v97 = *(v173 + 8);
  v97(v94, v96);
  v97(v95, v96);
  v98 = TupleTypeMetadata;
  v99 = v266;
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v99(v269, v270, v98);

  v100 = v175;
  swift_getAtKeyPath();

  v101 = v226;
  v102 = v224;
  (*(v174 + 96))(v247, v100, v224);
  v103 = *(v176 + 8);
  v103(v100, v102);
  v103(v101, v102);
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v104 = v178;
  swift_getAtKeyPath();

  v105 = v228;
  v106 = v225;
  (*(v177 + 96))(v247, v104, v225);
  v107 = *(v179 + 8);
  v107(v104, v106);
  v107(v105, v106);
  v108 = TupleTypeMetadata;
  v109 = v266;
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v109(v269, v270, v108);

  v110 = v181;
  swift_getAtKeyPath();

  v111 = v229;
  v112 = v227;
  (*(v180 + 96))(v247, v110, v227);
  v113 = *(v182 + 8);
  v113(v110, v112);
  v113(v111, v112);
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v114 = v184;
  swift_getAtKeyPath();

  v115 = v231;
  v116 = v230;
  (*(v183 + 96))(v247, v114, v230);
  v117 = *(v185 + 8);
  v117(v114, v116);
  v117(v115, v116);
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v118 = v189;
  swift_getAtKeyPath();

  v119 = v236;
  v120 = v234;
  (*(v188 + 96))(v247, v118, v234);
  v121 = *(v190 + 8);
  v121(v118, v120);
  v121(v119, v120);
  v122 = TupleTypeMetadata;
  v123 = v266;
  v266(v269, v270, TupleTypeMetadata);

  swift_getAtKeyPath();

  v123(v269, v270, v122);

  v124 = v192;
  swift_getAtKeyPath();

  v125 = v124;
  v126 = v237;
  v127 = v232;
  (*(v191 + 96))(v247, v124, v232);
  v128 = *(v193 + 8);
  v128(v125, v127);
  v128(v126, v127);
  v266(v269, v270, TupleTypeMetadata);

  v129 = v194;
  swift_getAtKeyPath();

  v266(v269, v270, TupleTypeMetadata);

  v130 = v238;

  v131 = v196;
  swift_getAtKeyPath();

  v132 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 96))(v247, v131, AssociatedTypeWitness);
  v133 = *(v197 + 8);
  v133(v131, v132);
  v134 = v240;
  v135 = v239;
  v136 = v233;
  v133(v129, v132);
  if ((*(*(v186 - 8) + 48))(v136, 1) != 1 || (*(*(v159 - 8) + 48))(v134, 1) != 1 || (*(*(v158 - 8) + 48))(v135, 1) != 1 || (*(*(v157 - 8) + 48))(v245, 1) != 1 || (*(*(v156 - 8) + 48))(v130, 1) != 1 || (*(*(v155 - 8) + 48))(v244, 1) != 1 || (*(*(v154 - 8) + 48))(v243, 1) != 1 || (*(*(v153 - 8) + 48))(v242, 1) != 1 || (v137 = 1, (*(*(v152 - 8) + 48))(v241, 1) != 1))
  {
    (*(v199 + 16))(v198, v136, v200);
    v138 = v160;
    (*(v201 + 16))(v160, v134, v202);
    v139 = v161;
    (*(v203 + 16))(v161, v135, v204);
    v140 = v162;
    (*(v207 + 16))(v162, v245, v208);
    v141 = v163;
    (*(v210 + 16))(v163, v130, v209);
    v142 = v164;
    (*(v214 + 16))(v164, v244, v215);
    v143 = v165;
    (*(v217 + 16))(v165, v243, v218);
    v144 = v166;
    (*(v205 + 16))(v166, v242, v213);
    v145 = v167;
    (*(v219 + 16))(v167, v241, v216);
    v146 = v139;
    v134 = v240;
    v147 = v141;
    v135 = v239;
    v148 = v142;
    v130 = v238;
    CRStructMergeableDelta_9.init(_:_:_:_:_:_:_:_:_:)(v198, v138, v146, v140, v147, v148, v143, v144, v212, v145, v206, v211);
    v137 = 0;
  }

  (*(v187 + 8))(v270, TupleTypeMetadata);
  (*(v199 + 8))(v136, v200);
  v149 = type metadata accessor for CRStructMergeableDelta_9();
  (*(*(v149 - 8) + 56))(v212, v137, 1, v149);
  (*(v219 + 8))(v241, v216);
  (*(v205 + 8))(v242, v213);
  (*(v217 + 8))(v243, v218);
  (*(v214 + 8))(v244, v215);
  (*(v210 + 8))(v130, v209);
  (*(v207 + 8))(v245, v208);
  (*(v203 + 8))(v135, v204);
  return (*(v201 + 8))(v134, v202);
}

BOOL CRStruct_9.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v266 = a3;
  v269 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v260 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v234 = *(v7 - 8);
  v235 = v7;
  v8 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v233 = &v176 - v9;
  v236 = v6;
  v240 = *(v6 - 8);
  v10 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v198 = &v176 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v197 = swift_getAssociatedConformanceWitness();
  v265 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v230 = *(v15 - 8);
  v231 = v15;
  v16 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v229 = &v176 - v17;
  v239 = v14;
  v232 = *(v14 - 8);
  v18 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v196 = &v176 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v195 = swift_getAssociatedConformanceWitness();
  v264 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1AE23D7CC();
  v225 = *(v23 - 8);
  v226 = v23;
  v24 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v224 = &v176 - v25;
  v228 = v22;
  v227 = *(v22 - 8);
  v26 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v176 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v193 = swift_getAssociatedConformanceWitness();
  v263 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v220 = *(v31 - 8);
  v221 = v31;
  v32 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v176 - v33;
  v223 = v30;
  v222 = *(v30 - 8);
  v34 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v192 = &v176 - v36;
  v37 = swift_getAssociatedTypeWitness();
  v191 = swift_getAssociatedConformanceWitness();
  v268 = v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1AE23D7CC();
  v215 = *(v39 - 8);
  v216 = v39;
  v40 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v214 = &v176 - v41;
  v218 = v38;
  v217 = *(v38 - 8);
  v42 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v176 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v189 = swift_getAssociatedConformanceWitness();
  v259 = v45;
  v46 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  v210 = *(v47 - 8);
  v211 = v47;
  v48 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v238 = &v176 - v49;
  v213 = v46;
  v212 = *(v46 - 8);
  v50 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v188 = &v176 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v187 = swift_getAssociatedConformanceWitness();
  v262 = v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v206 = *(v55 - 8);
  v207 = v55;
  v56 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v205 = &v176 - v57;
  v209 = v54;
  v208 = *(v54 - 8);
  v58 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v186 = &v176 - v60;
  v61 = swift_getAssociatedTypeWitness();
  v185 = swift_getAssociatedConformanceWitness();
  v267 = v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v202 = *(v63 - 8);
  v203 = v63;
  v64 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v201 = &v176 - v65;
  v204 = *(v62 - 8);
  v66 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v184 = &v176 - v68;
  v69 = swift_getAssociatedTypeWitness();
  v183 = swift_getAssociatedConformanceWitness();
  v261 = v69;
  v70 = swift_getAssociatedTypeWitness();
  v71 = sub_1AE23D7CC();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v176 - v74;
  v200 = v70;
  v237 = *(v70 - 8);
  v76 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v182 = &v176 - v78;
  v79 = CRStruct_9.canMerge(delta:)(v269, a2, v266);
  if (v79)
  {
    v179 = v62;
    v180 = v79;
    v80 = *(v4 + 160);
    v181 = v4;
    v80(v279, a2, v4);
    v81 = v279[5];
    v252 = v279[8];
    v250 = v279[11];
    v82 = v72;
    v258 = v279[13];
    v178 = a2;
    v83 = v279[14];
    v84 = v71;
    v85 = v279[16];
    v86 = v279[17];
    v87 = v279[20];
    v88 = v279[22];
    v257 = v279[1];
    v242 = v279[2];
    v256 = v279[4];
    v253 = v279[7];
    v251 = v279[10];
    v246 = v279[19];
    v244 = v279[23];
    v243 = v279[25];
    v255 = v279[26];
    v176 = v82;
    v177 = v84;
    v89 = v269;
    (*(v82 + 16))(v75, v269, v84);
    v90 = v200;
    v91 = (*(v237 + 48))(v75, 1);
    v254 = v81;
    v249 = v83;
    v248 = v85;
    v247 = v86;
    v245 = v87;
    v241 = v88;
    if (v91 == 1)
    {
      (*(v176 + 8))(v75, v177);
      v92 = v203;
      v93 = v178;
    }

    else
    {
      v94 = v237;
      v95 = v182;
      v96 = v75;
      v97 = v90;
      (*(v237 + 32))(v182, v96, v90);
      v93 = v178;
      v98 = v261;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v279, TupleTypeMetadata);

      v100 = swift_modifyAtWritableKeyPath();
      (*(v183 + 112))(v95, v98);
      v89 = v269;
      v100(&TupleTypeMetadata2, 0);

      (*(v94 + 8))(v95, v97);
      v92 = v203;
    }

    v266 = type metadata accessor for CRStructMergeableDelta_9();
    v102 = v201;
    v101 = v202;
    (*(v202 + 16))(v201, v89 + v266[9], v92);
    v103 = v204;
    v104 = v179;
    v105 = (*(v204 + 48))(v102, 1, v179);
    v106 = v92;
    v107 = v238;
    v108 = v206;
    if (v105 == 1)
    {
      (*(v101 + 8))(v102, v106);
    }

    else
    {
      v109 = v184;
      (*(v103 + 32))(v184, v102, v104);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v110 = swift_getTupleTypeMetadata();
      (*(*(v110 - 8) + 16))(&TupleTypeMetadata2, v279, v110);

      v111 = swift_modifyAtWritableKeyPath();
      (*(v185 + 112))(v109, v267);
      v89 = v269;
      v111(&TupleTypeMetadata2, 0);

      v112 = v109;
      v107 = v238;
      (*(v103 + 8))(v112, v104);
    }

    v113 = v209;
    v114 = v205;
    v115 = v207;
    (*(v108 + 16))(v205, v89 + v266[10], v207);
    v116 = v208;
    if ((*(v208 + 48))(v114, 1, v113) == 1)
    {
      (*(v108 + 8))(v114, v115);
    }

    else
    {
      v117 = v186;
      (*(v116 + 32))(v186, v114, v113);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      v118 = v262;
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v119 = swift_getTupleTypeMetadata();
      (*(*(v119 - 8) + 16))(&TupleTypeMetadata2, v279, v119);

      v120 = swift_modifyAtWritableKeyPath();
      (*(v187 + 112))(v117, v118);
      v89 = v269;
      v120(&TupleTypeMetadata2, 0);

      (*(v116 + 8))(v117, v113);
    }

    v122 = v210;
    v121 = v211;
    (*(v210 + 16))(v107, v89 + v266[11], v211);
    v123 = v212;
    v124 = v213;
    if ((*(v212 + 48))(v107, 1, v213) == 1)
    {
      (*(v122 + 8))(v107, v121);
    }

    else
    {
      v125 = v107;
      v126 = v188;
      (*(v123 + 32))(v188, v125, v124);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      v127 = v259;
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v128 = swift_getTupleTypeMetadata();
      (*(*(v128 - 8) + 16))(&TupleTypeMetadata2, v279, v128);

      v129 = swift_modifyAtWritableKeyPath();
      (*(v189 + 112))(v126, v127);
      v89 = v269;
      v129(&TupleTypeMetadata2, 0);

      (*(v123 + 8))(v126, v124);
    }

    v131 = v216;
    v130 = v217;
    v132 = v214;
    v133 = v215;
    (*(v215 + 16))(v214, v89 + v266[12], v216);
    v134 = v218;
    if ((*(v130 + 48))(v132, 1, v218) == 1)
    {
      (*(v133 + 8))(v132, v131);
    }

    else
    {
      v137 = v190;
      (*(v130 + 32))(v190, v132, v134);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v138 = swift_getTupleTypeMetadata();
      (*(*(v138 - 8) + 16))(&TupleTypeMetadata2, v279, v138);

      v139 = swift_modifyAtWritableKeyPath();
      (*(v191 + 112))(v137, v268);
      v89 = v269;
      v139(&TupleTypeMetadata2, 0);

      (*(v130 + 8))(v137, v134);
    }

    v135 = v223;
    v136 = v221;
    v140 = v219;
    v141 = v220;
    (*(v220 + 16))(v219, v89 + v266[13], v221);
    v142 = v222;
    if ((*(v222 + 48))(v140, 1, v135) == 1)
    {
      (*(v141 + 8))(v140, v136);
    }

    else
    {
      v143 = v192;
      (*(v142 + 32))(v192, v140, v135);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      v144 = v263;
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v145 = swift_getTupleTypeMetadata();
      (*(*(v145 - 8) + 16))(&TupleTypeMetadata2, v279, v145);

      v146 = swift_modifyAtWritableKeyPath();
      (*(v193 + 112))(v143, v144);
      v89 = v269;
      v146(&TupleTypeMetadata2, 0);

      (*(v142 + 8))(v143, v135);
    }

    v148 = v226;
    v147 = v227;
    v150 = v224;
    v149 = v225;
    (*(v225 + 16))(v224, v89 + v266[14], v226);
    v151 = v228;
    if ((*(v147 + 48))(v150, 1, v228) == 1)
    {
      (*(v149 + 8))(v150, v148);
    }

    else
    {
      v154 = v194;
      (*(v147 + 32))(v194, v150, v151);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      v155 = v264;
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v156 = swift_getTupleTypeMetadata();
      (*(*(v156 - 8) + 16))(&TupleTypeMetadata2, v279, v156);

      v157 = swift_modifyAtWritableKeyPath();
      (*(v195 + 112))(v154, v155);
      v89 = v269;
      v157(&TupleTypeMetadata2, 0);

      (*(v147 + 8))(v154, v151);
    }

    v153 = v230;
    v152 = v231;
    v158 = v229;
    (*(v230 + 16))(v229, v89 + v266[15], v231);
    v159 = v232;
    v160 = v239;
    if ((*(v232 + 48))(v158, 1, v239) == 1)
    {
      (*(v153 + 8))(v158, v152);
    }

    else
    {
      v164 = v196;
      (*(v159 + 32))(v196, v158, v160);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      v165 = v265;
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v166 = swift_getTupleTypeMetadata();
      (*(*(v166 - 8) + 16))(&TupleTypeMetadata2, v279, v166);

      v167 = swift_modifyAtWritableKeyPath();
      (*(v197 + 112))(v164, v165);
      v167(&TupleTypeMetadata2, 0);

      (*(v159 + 8))(v164, v239);
    }

    v161 = v240;
    v163 = v234;
    v162 = v235;
    v168 = v233;
    (*(v234 + 16))(v233, v269 + v266[16], v235);
    v169 = v236;
    if ((*(v161 + 48))(v168, 1, v236) == 1)
    {
      (*(v163 + 8))(v168, v162);
    }

    else
    {
      v170 = v198;
      (*(v161 + 32))(v198, v168, v169);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v271 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v272 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v273 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v274 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v275 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v276 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v277 = swift_getTupleTypeMetadata2();
      v171 = v260;
      sub_1AE23DB8C();
      v278 = swift_getTupleTypeMetadata2();
      v172 = swift_getTupleTypeMetadata();
      (*(*(v172 - 8) + 16))(&TupleTypeMetadata2, v279, v172);

      v173 = swift_modifyAtWritableKeyPath();
      (*(AssociatedConformanceWitness + 112))(v170, v171);
      v173(&TupleTypeMetadata2, 0);

      (*(v240 + 8))(v170, v169);
    }

    (*(*(v181 + 8) + 64))(v93);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v271 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v272 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v273 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v274 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v275 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v276 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v277 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v278 = swift_getTupleTypeMetadata2();
    v174 = swift_getTupleTypeMetadata();
    (*(*(v174 - 8) + 8))(v279, v174);
    LOBYTE(v79) = v180;
  }

  return v79;
}

BOOL CRStruct_9.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v311 = a1;
  v278 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = *(AssociatedTypeWitness - 8);
  v6 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v204 = &v200 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v302 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v214 = *(v9 - 8);
  v215 = v9;
  v10 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v213 = &v200 - v11;
  v217 = v8;
  v216 = *(v8 - 8);
  v12 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v202 = &v200 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v208 = *(v15 - 8);
  v16 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v207 = &v200 - v17;
  v206 = swift_getAssociatedConformanceWitness();
  v308 = v15;
  v18 = swift_getAssociatedTypeWitness();
  v223 = sub_1AE23D7CC();
  v234 = *(v223 - 8);
  v19 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v200 - v20;
  v235 = v18;
  v225 = *(v18 - 8);
  v21 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v224 = &v200 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v212 = *(v24 - 8);
  v25 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v211 = &v200 - v26;
  v210 = swift_getAssociatedConformanceWitness();
  v301 = v24;
  v27 = swift_getAssociatedTypeWitness();
  v28 = sub_1AE23D7CC();
  v231 = *(v28 - 8);
  v232 = v28;
  v29 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v200 - v30;
  v243 = v27;
  v233 = *(v27 - 8);
  v31 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v209 = &v200 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v221 = *(v34 - 8);
  v35 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v220 = &v200 - v36;
  v219 = swift_getAssociatedConformanceWitness();
  v305 = v34;
  v37 = swift_getAssociatedTypeWitness();
  v38 = sub_1AE23D7CC();
  v240 = *(v38 - 8);
  v241 = v38;
  v39 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v239 = &v200 - v40;
  v249 = v37;
  v242 = *(v37 - 8);
  v41 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v218 = &v200 - v43;
  v44 = swift_getAssociatedTypeWitness();
  v229 = *(v44 - 8);
  v45 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v228 = &v200 - v46;
  v227 = swift_getAssociatedConformanceWitness();
  v304 = v44;
  v47 = swift_getAssociatedTypeWitness();
  v247 = sub_1AE23D7CC();
  v269 = *(v247 - 8);
  v48 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v268 = &v200 - v49;
  v258 = v47;
  v248 = *(v47 - 8);
  v50 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v226 = &v200 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v238 = *(v53 - 8);
  v54 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v237 = &v200 - v55;
  v236 = swift_getAssociatedConformanceWitness();
  v309 = v53;
  v56 = swift_getAssociatedTypeWitness();
  v57 = sub_1AE23D7CC();
  v254 = *(v57 - 8);
  v255 = v57;
  v58 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v253 = &v200 - v59;
  v270 = v56;
  v257 = *(v56 - 8);
  v60 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v256 = &v200 - v62;
  v63 = swift_getAssociatedTypeWitness();
  v246 = *(v63 - 8);
  v64 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v245 = &v200 - v65;
  v244 = swift_getAssociatedConformanceWitness();
  v303 = v63;
  v66 = swift_getAssociatedTypeWitness();
  v264 = sub_1AE23D7CC();
  v277 = *(v264 - 8);
  v67 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v263 = &v200 - v68;
  v267 = v66;
  v266 = *(v66 - 8);
  v69 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v265 = &v200 - v71;
  v310 = swift_getAssociatedTypeWitness();
  v252 = *(v310 - 8);
  v72 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v310);
  v251 = &v200 - v73;
  v250 = swift_getAssociatedConformanceWitness();
  v74 = swift_getAssociatedTypeWitness();
  v273 = sub_1AE23D7CC();
  v272 = *(v273 - 8);
  v75 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v273);
  v271 = &v200 - v76;
  v276 = v74;
  v275 = *(v74 - 8);
  v77 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v274 = &v200 - v79;
  v80 = swift_getAssociatedTypeWitness();
  v262 = *(v80 - 8);
  v81 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v261 = &v200 - v82;
  v260 = swift_getAssociatedConformanceWitness();
  v307 = v80;
  v83 = swift_getAssociatedTypeWitness();
  v280 = sub_1AE23D7CC();
  v281 = *(v280 - 8);
  v84 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v279 = &v200 - v85;
  v283 = *(v83 - 8);
  v86 = *(v283 + 64);
  v88 = MEMORY[0x1EEE9AC00](v87);
  v259 = &v200 - v89;
  v90 = *(v4 + 160);
  v300 = a2;
  v90(v321, a2, v4, v88);
  v91 = v321[1];
  v306 = v321[2];
  v299 = v321[4];
  v298 = v321[5];
  v297 = v321[7];
  v296 = v321[8];
  v294 = v321[10];
  v293 = v321[11];
  v292 = v321[13];
  v291 = v321[14];
  v290 = v321[16];
  v289 = v321[17];
  v288 = v321[19];
  v287 = v321[20];
  v92 = v280;
  v286 = v321[22];
  v285 = v321[23];
  v93 = v279;
  v284 = v321[25];
  v295 = v321[26];
  v94 = v281;
  (*(v281 + 16))(v279, v311, v280);
  v95 = v283;
  v96 = (*(v283 + 48))(v93, 1, v83);
  v282 = v91;
  if (v96 == 1)
  {
    (*(v94 + 8))(v93, v92);
  }

  else
  {
    v97 = *(v95 + 32);
    v98 = v259;
    v201 = v83;
    v97(v259, v93, v83);
    v99 = v307;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v101 = *(TupleTypeMetadata - 8);
    (*(v101 + 16))(&TupleTypeMetadata2, v321, TupleTypeMetadata);

    v102 = v261;
    swift_getAtKeyPath();

    v103 = (*(v260 + 104))(v98, v99);
    (*(v262 + 8))(v102, v99);
    (*(v283 + 8))(v98, v201);
    if ((v103 & 1) == 0)
    {
      (*(v101 + 8))(v321, TupleTypeMetadata);
      return 0;
    }
  }

  v283 = type metadata accessor for CRStructMergeableDelta_9();
  v104 = v272;
  v105 = v271;
  v106 = v273;
  (*(v272 + 16))(v271, v311 + *(v283 + 36), v273);
  v107 = v275;
  v108 = v276;
  if ((*(v275 + 48))(v105, 1, v276) == 1)
  {
    (*(v104 + 8))(v105, v106);
    v109 = v277;
  }

  else
  {
    (*(v107 + 32))(v274, v105, v108);
    sub_1AE23DB8C();
    v110 = v107;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v111 = v310;
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v112 = swift_getTupleTypeMetadata();
    v113 = *(v112 - 8);
    (*(v113 + 16))(&TupleTypeMetadata2, v321, v112);

    v114 = v251;
    swift_getAtKeyPath();

    v115 = v274;
    v116 = (*(v250 + 104))(v274, v111);
    (*(v252 + 8))(v114, v111);
    (*(v110 + 8))(v115, v108);
    v109 = v277;
    if ((v116 & 1) == 0)
    {
      (*(v113 + 8))(v321, v112);
      return 0;
    }
  }

  v118 = v263;
  v117 = v264;
  (*(v109 + 16))(v263, v311 + *(v283 + 40), v264);
  v119 = v266;
  v120 = v267;
  if ((*(v266 + 48))(v118, 1, v267) == 1)
  {
    (*(v109 + 8))(v118, v117);
    v121 = v269;
    v122 = v268;
  }

  else
  {
    (*(v119 + 32))(v265, v118, v120);
    sub_1AE23DB8C();
    v123 = v120;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    v124 = v303;
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v125 = swift_getTupleTypeMetadata();
    v126 = *(v125 - 8);
    (*(v126 + 16))(&TupleTypeMetadata2, v321, v125);

    v127 = v245;
    swift_getAtKeyPath();

    v128 = v265;
    v129 = (*(v244 + 104))(v265, v124);
    (*(v246 + 8))(v127, v124);
    (*(v119 + 8))(v128, v123);
    v121 = v269;
    v122 = v268;
    if ((v129 & 1) == 0)
    {
      (*(v126 + 8))(v321, v125);
      return 0;
    }
  }

  v130 = v253;
  v131 = v254;
  v132 = v255;
  (*(v254 + 16))(v253, v311 + *(v283 + 44), v255);
  v133 = v257;
  v134 = v270;
  if ((*(v257 + 48))(v130, 1, v270) == 1)
  {
    (*(v131 + 8))(v130, v132);
  }

  else
  {
    (*(v133 + 32))(v256, v130, v134);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v135 = swift_getTupleTypeMetadata();
    v136 = *(v135 - 8);
    (*(v136 + 16))(&TupleTypeMetadata2, v321, v135);

    v137 = v237;
    swift_getAtKeyPath();

    v138 = v122;
    v139 = v121;
    v140 = v256;
    v141 = v309;
    v142 = (*(v236 + 104))(v256, v309);
    (*(v238 + 8))(v137, v141);
    v143 = v140;
    v121 = v139;
    v122 = v138;
    (*(v133 + 8))(v143, v270);
    if ((v142 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v144 = v247;
  (*(v121 + 16))(v122, v311 + *(v283 + 48), v247);
  v145 = v248;
  v146 = v258;
  if ((*(v248 + 48))(v122, 1, v258) == 1)
  {
    (*(v121 + 8))(v122, v144);
  }

  else
  {
    v147 = v226;
    (*(v145 + 32))(v226, v122, v146);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    v148 = v304;
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v149 = swift_getTupleTypeMetadata();
    v150 = *(v149 - 8);
    (*(v150 + 16))(&TupleTypeMetadata2, v321, v149);

    v151 = v228;
    swift_getAtKeyPath();

    v152 = (*(v227 + 104))(v147, v148);
    (*(v229 + 8))(v151, v148);
    (*(v145 + 8))(v147, v258);
    if ((v152 & 1) == 0)
    {
      (*(v150 + 8))(v321, v149);
      return 0;
    }
  }

  v154 = v239;
  v153 = v240;
  v155 = v241;
  (*(v240 + 16))(v239, v311 + *(v283 + 52), v241);
  v156 = v242;
  v157 = v249;
  if ((*(v242 + 48))(v154, 1, v249) == 1)
  {
    (*(v153 + 8))(v154, v155);
  }

  else
  {
    v158 = v218;
    (*(v156 + 32))(v218, v154, v157);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    v159 = v305;
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v160 = swift_getTupleTypeMetadata();
    v161 = *(v160 - 8);
    (*(v161 + 16))(&TupleTypeMetadata2, v321, v160);

    v162 = v220;
    swift_getAtKeyPath();

    v163 = (*(v219 + 104))(v158, v159);
    (*(v221 + 8))(v162, v159);
    (*(v156 + 8))(v158, v249);
    if ((v163 & 1) == 0)
    {
      (*(v161 + 8))(v321, v160);
      return 0;
    }
  }

  v164 = v230;
  v165 = v231;
  v166 = v232;
  (*(v231 + 16))(v230, v311 + *(v283 + 56), v232);
  v167 = v233;
  v168 = v243;
  if ((*(v233 + 48))(v164, 1, v243) == 1)
  {
    (*(v165 + 8))(v164, v166);
    v169 = v308;
    v170 = v234;
  }

  else
  {
    v171 = v209;
    (*(v167 + 32))(v209, v164, v168);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    v172 = v301;
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    v169 = v308;
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v173 = swift_getTupleTypeMetadata();
    v174 = *(v173 - 8);
    (*(v174 + 16))(&TupleTypeMetadata2, v321, v173);

    v175 = v211;
    swift_getAtKeyPath();

    v176 = (*(v210 + 104))(v171, v172);
    (*(v212 + 8))(v175, v172);
    (*(v167 + 8))(v171, v243);
    v170 = v234;
    if ((v176 & 1) == 0)
    {
      (*(v174 + 8))(v321, v173);
      return 0;
    }
  }

  v178 = v222;
  v177 = v223;
  (*(v170 + 16))(v222, v311 + *(v283 + 60), v223);
  v179 = v225;
  v180 = v235;
  if ((*(v225 + 48))(v178, 1, v235) != 1)
  {
    (*(v179 + 32))(v224, v178, v180);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v135 = swift_getTupleTypeMetadata();
    v136 = *(v135 - 8);
    (*(v136 + 16))(&TupleTypeMetadata2, v321, v135);

    v181 = v207;
    v182 = v169;
    swift_getAtKeyPath();

    v183 = v224;
    v184 = (*(v206 + 104))(v224, v182);
    (*(v208 + 8))(v181, v182);
    (*(v179 + 8))(v183, v235);
    if (v184)
    {
      goto LABEL_29;
    }

LABEL_31:
    (*(v136 + 8))(v321, v135);
    return 0;
  }

  (*(v170 + 8))(v178, v177);
LABEL_29:
  v186 = v213;
  v185 = v214;
  v187 = v215;
  (*(v214 + 16))(v213, v311 + *(v283 + 64), v215);
  v188 = v216;
  v189 = v217;
  if ((*(v216 + 48))(v186, 1, v217) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v313 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v314 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v315 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v316 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v317 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v318 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v319 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v320 = swift_getTupleTypeMetadata2();
    v190 = swift_getTupleTypeMetadata();
    (*(*(v190 - 8) + 8))(v321, v190);
    (*(v185 + 8))(v186, v187);
    return 1;
  }

  v191 = v202;
  (*(v188 + 32))(v202, v186, v189);
  sub_1AE23DB8C();
  v192 = v189;
  v193 = v188;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v313 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v314 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v315 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v316 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v317 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v318 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v319 = swift_getTupleTypeMetadata2();
  v194 = v302;
  sub_1AE23DB8C();
  v320 = swift_getTupleTypeMetadata2();
  v195 = swift_getTupleTypeMetadata();
  v196 = *(v195 - 8);
  (*(v196 + 16))(&TupleTypeMetadata2, v321, v195);

  v197 = v204;
  swift_getAtKeyPath();

  v198 = (*(AssociatedConformanceWitness + 104))(v191, v194);
  (*(v196 + 8))(v321, v195);
  (*(v205 + 8))(v197, v194);
  (*(v193 + 8))(v191, v192);
  return (v198 & 1) != 0;
}

uint64_t CRStruct_10_Final.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v241 = a4;
  v234 = a3;
  v271 = a2;
  v272 = a1;
  v233 = a5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v216 = *(AssociatedTypeWitness - 8);
  v7 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v215 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v213 = &v166 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167 = swift_getAssociatedTypeWitness();
  v238 = sub_1AE23D7CC();
  v228 = *(v238 - 8);
  v11 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v183 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v265 = &v166 - v14;
  v260 = swift_getAssociatedTypeWitness();
  v212 = *(v260 - 8);
  v15 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v211 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v259 = &v166 - v18;
  v210 = swift_getAssociatedConformanceWitness();
  v168 = swift_getAssociatedTypeWitness();
  v237 = sub_1AE23D7CC();
  v225 = *(v237 - 8);
  v19 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v182 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v266 = &v166 - v22;
  v257 = swift_getAssociatedTypeWitness();
  v209 = *(v257 - 8);
  v23 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v208 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v256 = &v166 - v26;
  v207 = swift_getAssociatedConformanceWitness();
  v169 = swift_getAssociatedTypeWitness();
  v240 = sub_1AE23D7CC();
  v239 = *(v240 - 8);
  v27 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v181 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v267 = &v166 - v30;
  v255 = swift_getAssociatedTypeWitness();
  v204 = *(v255 - 8);
  v31 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v203 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v254 = &v166 - v34;
  v202 = swift_getAssociatedConformanceWitness();
  v170 = swift_getAssociatedTypeWitness();
  v236 = sub_1AE23D7CC();
  v235 = *(v236 - 8);
  v35 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v180 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v268 = &v166 - v38;
  v253 = swift_getAssociatedTypeWitness();
  v201 = *(v253 - 8);
  v39 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v200 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v252 = &v166 - v42;
  v199 = swift_getAssociatedConformanceWitness();
  v171 = swift_getAssociatedTypeWitness();
  v231 = sub_1AE23D7CC();
  v232 = *(v231 - 8);
  v43 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v179 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v263 = &v166 - v46;
  v251 = swift_getAssociatedTypeWitness();
  v198 = *(v251 - 8);
  v47 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v197 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v250 = &v166 - v50;
  v196 = swift_getAssociatedConformanceWitness();
  v172 = swift_getAssociatedTypeWitness();
  v51 = sub_1AE23D7CC();
  v229 = *(v51 - 8);
  v230 = v51;
  v52 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v178 = &v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v258 = &v166 - v55;
  v248 = swift_getAssociatedTypeWitness();
  v195 = *(v248 - 8);
  v56 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v194 = &v166 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v249 = &v166 - v59;
  v193 = swift_getAssociatedConformanceWitness();
  v173 = swift_getAssociatedTypeWitness();
  v60 = sub_1AE23D7CC();
  v226 = *(v60 - 8);
  v227 = v60;
  v61 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v177 = &v166 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v264 = &v166 - v64;
  v247 = swift_getAssociatedTypeWitness();
  v192 = *(v247 - 8);
  v65 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v191 = &v166 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v246 = &v166 - v68;
  v190 = swift_getAssociatedConformanceWitness();
  v174 = swift_getAssociatedTypeWitness();
  v69 = sub_1AE23D7CC();
  v223 = *(v69 - 8);
  v224 = v69;
  v70 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v218 = &v166 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v269 = &v166 - v73;
  v245 = swift_getAssociatedTypeWitness();
  v189 = *(v245 - 8);
  v74 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v188 = &v166 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v244 = &v166 - v77;
  v187 = swift_getAssociatedConformanceWitness();
  v175 = swift_getAssociatedTypeWitness();
  v78 = sub_1AE23D7CC();
  v221 = *(v78 - 8);
  v222 = v78;
  v79 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v217 = &v166 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v270 = &v166 - v82;
  v242 = swift_getAssociatedTypeWitness();
  v186 = *(v242 - 8);
  v83 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v185 = &v166 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v243 = &v166 - v86;
  v184 = swift_getAssociatedConformanceWitness();
  v205 = swift_getAssociatedTypeWitness();
  v87 = sub_1AE23D7CC();
  v219 = *(v87 - 8);
  v220 = v87;
  v88 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v176 = &v166 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v262 = &v166 - v92;
  (*(v6 + 176))(v297, a3, v6, v91);
  v273 = v297[1];
  v286 = v297[2];
  v278 = v297[4];
  v279 = v297[5];
  v284 = v297[7];
  v288 = v297[8];
  v291 = v297[10];
  v276 = v297[11];
  TupleTypeMetadata = v297[12];
  v295 = v297[13];
  v287 = v297[14];
  v289 = v297[15];
  v283 = v297[17];
  v280 = v297[18];
  v293 = v297[19];
  v292 = v297[20];
  v290 = v297[22];
  v285 = v297[16];
  v274 = v297[23];
  v282 = v297[25];
  v277 = v297[26];
  v281 = v297[28];
  v275 = v297[29];
  sub_1AE23DB8C();
  v296[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v296[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v206 = *(TupleTypeMetadata - 8);
  v93 = *(v206 + 16);
  v289 = v206 + 16;
  v280 = v93;
  v93(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v280(v296, v297, TupleTypeMetadata);

  v94 = v185;
  swift_getAtKeyPath();

  v95 = v243;
  v96 = v242;
  (*(v184 + 96))(v272, v94, v242);
  v97 = *(v186 + 8);
  v97(v94, v96);
  v97(v95, v96);
  v98 = TupleTypeMetadata;
  v99 = v280;
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v99(v296, v297, v98);

  v100 = v188;
  swift_getAtKeyPath();

  v101 = v244;
  v102 = v245;
  (*(v187 + 96))(v272, v100, v245);
  v103 = *(v189 + 8);
  v103(v100, v102);
  v103(v101, v102);
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v280(v296, v297, TupleTypeMetadata);

  v104 = v191;
  swift_getAtKeyPath();

  v105 = v246;
  v106 = v247;
  (*(v190 + 96))(v272, v104, v247);
  v107 = *(v192 + 8);
  v107(v104, v106);
  v107(v105, v106);
  v108 = TupleTypeMetadata;
  v109 = v280;
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v109(v296, v297, v108);

  v110 = v194;
  swift_getAtKeyPath();

  v111 = v110;
  v112 = v249;
  v113 = v248;
  (*(v193 + 96))(v272, v110, v248);
  v114 = *(v195 + 8);
  v114(v111, v113);
  v114(v112, v113);
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v280(v296, v297, TupleTypeMetadata);

  v115 = v197;
  swift_getAtKeyPath();

  v116 = v250;
  v117 = v251;
  (*(v196 + 96))(v272, v115, v251);
  v118 = *(v198 + 8);
  v118(v115, v117);
  v118(v116, v117);
  v119 = v280;
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v119(v296, v297, TupleTypeMetadata);

  v120 = v200;
  swift_getAtKeyPath();

  v121 = v120;
  v122 = v252;
  v123 = v253;
  (*(v199 + 96))(v272, v120, v253);
  v124 = *(v201 + 8);
  v124(v121, v123);
  v124(v122, v123);
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v280(v296, v297, TupleTypeMetadata);

  v125 = v203;
  swift_getAtKeyPath();

  v126 = v254;
  v127 = v255;
  (*(v202 + 96))(v272, v125, v255);
  v128 = *(v204 + 8);
  v128(v125, v127);
  v128(v126, v127);
  v129 = v280;
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v129(v296, v297, TupleTypeMetadata);

  v130 = v208;
  swift_getAtKeyPath();

  v131 = v256;
  v132 = v257;
  (*(v207 + 96))(v272, v130, v257);
  v133 = *(v209 + 8);
  v133(v130, v132);
  v133(v131, v132);
  v134 = TupleTypeMetadata;
  v135 = v280;
  v280(v296, v297, TupleTypeMetadata);

  swift_getAtKeyPath();

  v135(v296, v297, v134);

  v136 = v211;
  swift_getAtKeyPath();

  v137 = v136;
  v138 = v259;
  v139 = v260;
  (*(v210 + 96))(v272, v136, v260);
  v140 = *(v212 + 8);
  v140(v137, v139);
  v140(v138, v139);
  v280(v296, v297, TupleTypeMetadata);

  v141 = v213;
  swift_getAtKeyPath();

  v280(v296, v297, TupleTypeMetadata);

  v142 = v263;

  v143 = v215;
  swift_getAtKeyPath();

  v144 = v143;
  v145 = v141;
  v146 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 96))(v272, v143, AssociatedTypeWitness);
  v147 = *(v216 + 8);
  v148 = v144;
  v149 = v262;
  v147(v148, v146);
  v150 = v258;
  v147(v145, v146);
  v151 = v264;
  if ((*(*(v205 - 8) + 48))(v149, 1) != 1 || (*(*(v175 - 8) + 48))(v270, 1) != 1 || (*(*(v174 - 8) + 48))(v269, 1) != 1 || (*(*(v173 - 8) + 48))(v151, 1) != 1 || (*(*(v172 - 8) + 48))(v150, 1) != 1 || (*(*(v171 - 8) + 48))(v142, 1) != 1 || (*(*(v170 - 8) + 48))(v268, 1) != 1 || (*(*(v169 - 8) + 48))(v267, 1) != 1 || (*(*(v168 - 8) + 48))(v266, 1) != 1 || (v152 = 1, (*(*(v167 - 8) + 48))(v265, 1) != 1))
  {
    v153 = v176;
    (*(v219 + 16))(v176, v149, v220);
    (*(v221 + 16))(v217, v270, v222);
    (*(v223 + 16))(v218, v269, v224);
    v154 = v177;
    (*(v226 + 16))(v177, v151, v227);
    v155 = v178;
    (*(v229 + 16))(v178, v150, v230);
    v156 = v179;
    (*(v232 + 16))(v179, v142, v231);
    v157 = v180;
    (*(v235 + 16))(v180, v268, v236);
    v158 = v181;
    (*(v239 + 16))(v181, v267, v240);
    v159 = v182;
    (*(v225 + 16))(v182, v266, v237);
    v160 = v183;
    (*(v228 + 16))(v183, v265, v238);
    v161 = v156;
    v151 = v264;
    v162 = v157;
    v142 = v263;
    v163 = v158;
    v149 = v262;
    CRStructMergeableDelta_10.init(_:_:_:_:_:_:_:_:_:_:)(v153, v217, v218, v154, v155, v161, v162, v163, v233, v159, v160, v234, v241);
    v152 = 0;
  }

  (*(v206 + 8))(v297, TupleTypeMetadata);
  (*(v219 + 8))(v149, v220);
  v164 = type metadata accessor for CRStructMergeableDelta_10();
  (*(*(v164 - 8) + 56))(v233, v152, 1, v164);
  (*(v228 + 8))(v265, v238);
  (*(v225 + 8))(v266, v237);
  (*(v239 + 8))(v267, v240);
  (*(v235 + 8))(v268, v236);
  (*(v232 + 8))(v142, v231);
  (*(v229 + 8))(v150, v230);
  (*(v226 + 8))(v151, v227);
  (*(v223 + 8))(v269, v224);
  return (*(v221 + 8))(v270, v222);
}

BOOL CRStruct_10_Final.merge(delta:)(uint64_t a1, uint64_t a2, int *a3)
{
  v295 = a3;
  v296 = a1;
  v4 = *(a3 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v287 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v251 = *(v7 - 8);
  v252 = v7;
  v8 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v250 = &v193 - v9;
  v264 = v6;
  v263 = *(v6 - 8);
  v10 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v253 = &v193 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v214 = swift_getAssociatedConformanceWitness();
  v292 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v247 = *(v15 - 8);
  v248 = v15;
  v16 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v246 = &v193 - v17;
  v262 = v14;
  v249 = *(v14 - 8);
  v18 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v193 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v212 = swift_getAssociatedConformanceWitness();
  v286 = v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1AE23D7CC();
  v243 = *(v23 - 8);
  v244 = v23;
  v24 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v242 = &v193 - v25;
  v261 = v22;
  v245 = *(v22 - 8);
  v26 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v193 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v210 = swift_getAssociatedConformanceWitness();
  v291 = v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = sub_1AE23D7CC();
  v238 = *(v31 - 8);
  v239 = v31;
  v32 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v237 = &v193 - v33;
  v241 = v30;
  v240 = *(v30 - 8);
  v34 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v209 = &v193 - v36;
  v37 = swift_getAssociatedTypeWitness();
  v208 = swift_getAssociatedConformanceWitness();
  v290 = v37;
  v38 = swift_getAssociatedTypeWitness();
  v39 = sub_1AE23D7CC();
  v233 = *(v39 - 8);
  v234 = v39;
  v40 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v232 = &v193 - v41;
  v236 = v38;
  v235 = *(v38 - 8);
  v42 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v207 = &v193 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v206 = swift_getAssociatedConformanceWitness();
  v285 = v45;
  v46 = swift_getAssociatedTypeWitness();
  v47 = sub_1AE23D7CC();
  v228 = *(v47 - 8);
  v229 = v47;
  v48 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v227 = &v193 - v49;
  v231 = v46;
  v230 = *(v46 - 8);
  v50 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v205 = &v193 - v52;
  v53 = swift_getAssociatedTypeWitness();
  v204 = swift_getAssociatedConformanceWitness();
  v289 = v53;
  v54 = swift_getAssociatedTypeWitness();
  v55 = sub_1AE23D7CC();
  v224 = *(v55 - 8);
  v225 = v55;
  v56 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v259 = &v193 - v57;
  v260 = v54;
  v226 = *(v54 - 8);
  v58 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v203 = &v193 - v60;
  v61 = swift_getAssociatedTypeWitness();
  v202 = swift_getAssociatedConformanceWitness();
  v288 = v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v221 = *(v63 - 8);
  v222 = v63;
  v64 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v220 = &v193 - v65;
  v258 = v62;
  v223 = *(v62 - 8);
  v66 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v201 = &v193 - v68;
  v69 = swift_getAssociatedTypeWitness();
  v200 = swift_getAssociatedConformanceWitness();
  v294 = v69;
  v70 = swift_getAssociatedTypeWitness();
  v71 = sub_1AE23D7CC();
  v217 = *(v71 - 8);
  v218 = v71;
  v72 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v216 = &v193 - v73;
  v219 = *(v70 - 8);
  v74 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v199 = &v193 - v76;
  v77 = swift_getAssociatedTypeWitness();
  v198 = swift_getAssociatedConformanceWitness();
  v293 = v77;
  v78 = swift_getAssociatedTypeWitness();
  v79 = sub_1AE23D7CC();
  v254 = *(v79 - 8);
  v255 = v79;
  v80 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v193 - v81;
  v257 = v78;
  v256 = *(v78 - 8);
  v83 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v197 = &v193 - v85;
  v86 = CRStruct_10_Final.canMerge(delta:)(v296, a2, v295);
  if (v86)
  {
    v194 = v70;
    v195 = v86;
    v87 = *(v4 + 176);
    v196 = v4;
    v87(v307, a2, v4);
    v278 = v307[4];
    v284 = v307[5];
    v276 = v307[7];
    v275 = v307[8];
    v283 = v307[10];
    v88 = v307[11];
    v193 = a2;
    v89 = v307[13];
    v90 = v307[14];
    v91 = v307[16];
    v92 = v307[17];
    v282 = v307[19];
    v93 = v307[20];
    v281 = v307[23];
    v94 = v307[25];
    v95 = v307[29];
    v280 = v307[1];
    v279 = v307[2];
    v268 = v307[22];
    v266 = v307[26];
    v265 = v307[28];
    (*(v254 + 16))(v82, v296, v255);
    v96 = (*(v256 + 48))(v82, 1, v257);
    v277 = v95;
    v274 = v88;
    v273 = v89;
    v272 = v90;
    v271 = v91;
    v270 = v92;
    v269 = v93;
    v267 = v94;
    if (v96 == 1)
    {
      (*(v254 + 8))(v82, v255);
      v97 = v217;
      v98 = v193;
    }

    else
    {
      v100 = v256;
      v99 = v257;
      v101 = v197;
      (*(v256 + 32))(v197, v82, v257);
      v98 = v193;
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      (*(*(TupleTypeMetadata - 8) + 16))(&TupleTypeMetadata2, v307, TupleTypeMetadata);

      v103 = swift_modifyAtWritableKeyPath();
      (*(v198 + 112))(v101, v293);
      v103(&TupleTypeMetadata2, 0);

      (*(v100 + 8))(v101, v99);
      v97 = v217;
    }

    v295 = type metadata accessor for CRStructMergeableDelta_10();
    v104 = v296;
    v105 = v216;
    v106 = v218;
    (*(v97 + 16))(v216, v296 + v295[9], v218);
    v107 = v219;
    v108 = v194;
    v109 = (*(v219 + 48))(v105, 1, v194);
    v110 = v259;
    if (v109 == 1)
    {
      (*(v97 + 8))(v105, v106);
    }

    else
    {
      v111 = v199;
      (*(v107 + 32))(v199, v105, v108);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v112 = swift_getTupleTypeMetadata();
      (*(*(v112 - 8) + 16))(&TupleTypeMetadata2, v307, v112);

      v113 = swift_modifyAtWritableKeyPath();
      (*(v200 + 112))(v111, v294);
      v113(&TupleTypeMetadata2, 0);
      v104 = v296;

      v114 = v111;
      v110 = v259;
      (*(v107 + 8))(v114, v108);
    }

    v116 = v222;
    v115 = v223;
    v118 = v220;
    v117 = v221;
    (*(v221 + 16))(v220, v104 + v295[10], v222);
    v119 = v258;
    if ((*(v115 + 48))(v118, 1, v258) == 1)
    {
      (*(v117 + 8))(v118, v116);
    }

    else
    {
      v120 = v201;
      (*(v115 + 32))(v201, v118, v119);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      v121 = v288;
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v122 = swift_getTupleTypeMetadata();
      (*(*(v122 - 8) + 16))(&TupleTypeMetadata2, v307, v122);

      v123 = swift_modifyAtWritableKeyPath();
      (*(v202 + 112))(v120, v121);
      v123(&TupleTypeMetadata2, 0);

      (*(v115 + 8))(v120, v258);
    }

    v124 = v231;
    v125 = v228;
    v127 = v225;
    v126 = v226;
    v128 = v224;
    (*(v224 + 16))(v110, v296 + v295[11], v225);
    v129 = v260;
    if ((*(v126 + 48))(v110, 1, v260) == 1)
    {
      (*(v128 + 8))(v110, v127);
    }

    else
    {
      v130 = v203;
      (*(v126 + 32))(v203, v110, v129);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      v131 = v124;
      v132 = v289;
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v133 = swift_getTupleTypeMetadata();
      (*(*(v133 - 8) + 16))(&TupleTypeMetadata2, v307, v133);

      v134 = swift_modifyAtWritableKeyPath();
      v135 = v132;
      v124 = v131;
      (*(v204 + 112))(v130, v135);
      v134(&TupleTypeMetadata2, 0);

      (*(v126 + 8))(v130, v260);
    }

    v137 = v229;
    v136 = v230;
    v138 = v296;
    v139 = v227;
    (*(v125 + 16))(v227, v296 + v295[12], v229);
    if ((*(v136 + 48))(v139, 1, v124) == 1)
    {
      (*(v125 + 8))(v139, v137);
      v140 = v138;
    }

    else
    {
      v141 = v205;
      (*(v136 + 32))(v205, v139, v124);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      v142 = v285;
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v143 = swift_getTupleTypeMetadata();
      (*(*(v143 - 8) + 16))(&TupleTypeMetadata2, v307, v143);

      v144 = swift_modifyAtWritableKeyPath();
      v140 = v296;
      (*(v206 + 112))(v141, v142);
      v144(&TupleTypeMetadata2, 0);

      (*(v136 + 8))(v141, v124);
    }

    v145 = v234;
    v146 = v235;
    v148 = v232;
    v147 = v233;
    (*(v233 + 16))(v232, v140 + v295[13], v234);
    v149 = v236;
    if ((*(v146 + 48))(v148, 1, v236) == 1)
    {
      (*(v147 + 8))(v148, v145);
    }

    else
    {
      v152 = v207;
      (*(v146 + 32))(v207, v148, v149);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      v153 = v290;
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v154 = swift_getTupleTypeMetadata();
      (*(*(v154 - 8) + 16))(&TupleTypeMetadata2, v307, v154);

      v155 = swift_modifyAtWritableKeyPath();
      (*(v208 + 112))(v152, v153);
      v155(&TupleTypeMetadata2, 0);

      (*(v146 + 8))(v152, v149);
    }

    v151 = v240;
    v150 = v241;
    v157 = v238;
    v156 = v239;
    v158 = v237;
    (*(v238 + 16))(v237, v140 + v295[14], v239);
    if ((*(v151 + 48))(v158, 1, v150) == 1)
    {
      (*(v157 + 8))(v158, v156);
    }

    else
    {
      v159 = v209;
      (*(v151 + 32))(v209, v158, v150);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      v160 = v291;
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v161 = swift_getTupleTypeMetadata();
      (*(*(v161 - 8) + 16))(&TupleTypeMetadata2, v307, v161);

      v162 = swift_modifyAtWritableKeyPath();
      (*(v210 + 112))(v159, v160);
      v162(&TupleTypeMetadata2, 0);

      v163 = v159;
      v140 = v296;
      (*(v151 + 8))(v163, v150);
    }

    v164 = v261;
    v166 = v244;
    v165 = v245;
    v168 = v242;
    v167 = v243;
    (*(v243 + 16))(v242, v140 + v295[15], v244);
    if ((*(v165 + 48))(v168, 1, v164) == 1)
    {
      (*(v167 + 8))(v168, v166);
    }

    else
    {
      v173 = v211;
      (*(v165 + 32))(v211, v168, v164);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      v174 = v286;
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v175 = swift_getTupleTypeMetadata();
      (*(*(v175 - 8) + 16))(&TupleTypeMetadata2, v307, v175);

      v176 = swift_modifyAtWritableKeyPath();
      (*(v212 + 112))(v173, v174);
      v176(&TupleTypeMetadata2, 0);

      (*(v165 + 8))(v173, v261);
    }

    v169 = v262;
    v171 = v248;
    v170 = v249;
    v172 = v247;
    v177 = v246;
    (*(v247 + 16))(v246, v140 + v295[16], v248);
    if ((*(v170 + 48))(v177, 1, v169) == 1)
    {
      (*(v172 + 8))(v177, v171);
    }

    else
    {
      v181 = v213;
      (*(v170 + 32))(v213, v177, v169);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      v182 = v292;
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v183 = swift_getTupleTypeMetadata();
      (*(*(v183 - 8) + 16))(&TupleTypeMetadata2, v307, v183);

      v184 = swift_modifyAtWritableKeyPath();
      (*(v214 + 112))(v181, v182);
      v184(&TupleTypeMetadata2, 0);

      (*(v170 + 8))(v181, v262);
      v140 = v296;
    }

    v178 = v263;
    v180 = v251;
    v179 = v252;
    v185 = v264;
    v186 = v250;
    (*(v251 + 16))(v250, v140 + v295[17], v252);
    if ((*(v178 + 48))(v186, 1, v185) == 1)
    {
      (*(v180 + 8))(v186, v179);
    }

    else
    {
      (*(v178 + 32))(v253, v186, v185);
      sub_1AE23DB8C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v298 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v299 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v300 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v301 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v302 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v303 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v304 = swift_getTupleTypeMetadata2();
      sub_1AE23DB8C();
      v305 = swift_getTupleTypeMetadata2();
      v187 = v287;
      sub_1AE23DB8C();
      v306 = swift_getTupleTypeMetadata2();
      v188 = swift_getTupleTypeMetadata();
      (*(*(v188 - 8) + 16))(&TupleTypeMetadata2, v307, v188);

      v189 = swift_modifyAtWritableKeyPath();
      v190 = v253;
      (*(AssociatedConformanceWitness + 112))(v253, v187);
      v189(&TupleTypeMetadata2, 0);

      (*(v263 + 8))(v190, v264);
    }

    (*(*(v196 + 8) + 64))(v98);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v298 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v299 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v300 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v301 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v302 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v303 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v304 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v305 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v306 = swift_getTupleTypeMetadata2();
    v191 = swift_getTupleTypeMetadata();
    (*(*(v191 - 8) + 8))(v307, v191);
    LOBYTE(v86) = v195;
  }

  return v86;
}

BOOL CRStruct_10_Final.canMerge(delta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v345 = a1;
  v307 = a3;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v227 = *(AssociatedTypeWitness - 8);
  v6 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v226 = &v222 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v336 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v237 = *(v9 - 8);
  v238 = v9;
  v10 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v236 = &v222 - v11;
  v240 = v8;
  v239 = *(v8 - 8);
  v12 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v224 = &v222 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v231 = *(v15 - 8);
  v16 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v230 = &v222 - v17;
  v229 = swift_getAssociatedConformanceWitness();
  v335 = v15;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v246 = *(v19 - 8);
  v247 = v19;
  v20 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v245 = &v222 - v21;
  v256 = v18;
  v248 = *(v18 - 8);
  v22 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v228 = &v222 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v235 = *(v25 - 8);
  v26 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v234 = &v222 - v27;
  v233 = swift_getAssociatedConformanceWitness();
  v342 = v25;
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_1AE23D7CC();
  v253 = *(v29 - 8);
  v254 = v29;
  v30 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v252 = &v222 - v31;
  v263 = v28;
  v255 = *(v28 - 8);
  v32 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v232 = &v222 - v34;
  v35 = swift_getAssociatedTypeWitness();
  v244 = *(v35 - 8);
  v36 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v243 = &v222 - v37;
  v242 = swift_getAssociatedConformanceWitness();
  v341 = v35;
  v38 = swift_getAssociatedTypeWitness();
  v261 = sub_1AE23D7CC();
  v283 = *(v261 - 8);
  v39 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v282 = &v222 - v40;
  v273 = v38;
  v262 = *(v38 - 8);
  v41 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v241 = &v222 - v43;
  v44 = swift_getAssociatedTypeWitness();
  v251 = *(v44 - 8);
  v45 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v250 = &v222 - v46;
  v249 = swift_getAssociatedConformanceWitness();
  v340 = v44;
  v47 = swift_getAssociatedTypeWitness();
  v48 = sub_1AE23D7CC();
  v269 = *(v48 - 8);
  v270 = v48;
  v49 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v268 = &v222 - v50;
  v284 = v47;
  v272 = *(v47 - 8);
  v51 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v271 = &v222 - v53;
  v54 = swift_getAssociatedTypeWitness();
  v260 = *(v54 - 8);
  v55 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v259 = &v222 - v56;
  v258 = swift_getAssociatedConformanceWitness();
  v339 = v54;
  v57 = swift_getAssociatedTypeWitness();
  v58 = sub_1AE23D7CC();
  v278 = *(v58 - 8);
  v279 = v58;
  v59 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v277 = &v222 - v60;
  v281 = v57;
  v280 = *(v57 - 8);
  v61 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v257 = &v222 - v63;
  v64 = swift_getAssociatedTypeWitness();
  v267 = *(v64 - 8);
  v65 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v266 = &v222 - v66;
  v265 = swift_getAssociatedConformanceWitness();
  v338 = v64;
  v67 = swift_getAssociatedTypeWitness();
  v290 = sub_1AE23D7CC();
  v289 = *(v290 - 8);
  v68 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v308 = &v222 - v69;
  v300 = v67;
  v291 = *(v67 - 8);
  v70 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v264 = &v222 - v72;
  v73 = swift_getAssociatedTypeWitness();
  v276 = *(v73 - 8);
  v74 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v275 = &v222 - v75;
  v274 = swift_getAssociatedConformanceWitness();
  v344 = v73;
  v76 = swift_getAssociatedTypeWitness();
  v297 = sub_1AE23D7CC();
  v306 = *(v297 - 8);
  v77 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v296 = &v222 - v78;
  v309 = v76;
  v299 = *(v76 - 8);
  v79 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v298 = &v222 - v81;
  v82 = swift_getAssociatedTypeWitness();
  v288 = *(v82 - 8);
  v83 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v287 = &v222 - v84;
  v286 = swift_getAssociatedConformanceWitness();
  v337 = v82;
  v85 = swift_getAssociatedTypeWitness();
  v303 = sub_1AE23D7CC();
  v302 = *(v303 - 8);
  v86 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v301 = &v222 - v87;
  v305 = v85;
  v304 = *(v85 - 8);
  v88 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v285 = &v222 - v90;
  v91 = swift_getAssociatedTypeWitness();
  v295 = *(v91 - 8);
  v92 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v294 = &v222 - v93;
  v293 = swift_getAssociatedConformanceWitness();
  v343 = v91;
  v94 = swift_getAssociatedTypeWitness();
  v313 = sub_1AE23D7CC();
  v312 = *(v313 - 1);
  v95 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v313);
  v310 = &v222 - v96;
  v311 = *(v94 - 8);
  v97 = *(v311 + 64);
  v99 = MEMORY[0x1EEE9AC00](v98);
  v292 = &v222 - v100;
  v101 = *(v4 + 176);
  v315 = a2;
  v101(v356, a2, v4, v99);
  v102 = v356[19];
  v334 = v356[1];
  v103 = v310;
  v333 = v356[2];
  v332 = v356[4];
  v331 = v356[5];
  v330 = v356[7];
  v329 = v356[8];
  v327 = v356[10];
  v326 = v356[11];
  v325 = v356[13];
  v324 = v356[14];
  v323 = v356[16];
  v322 = v356[17];
  v321 = v356[20];
  v320 = v356[22];
  v319 = v356[23];
  v318 = v356[25];
  v104 = v313;
  v317 = v356[26];
  v316 = v356[28];
  v328 = v356[29];
  v105 = v312;
  (*(v312 + 16))(v310, v345, v313);
  v106 = v311;
  v107 = v94;
  v108 = (*(v311 + 48))(v103, 1, v94);
  v314 = v102;
  if (v108 == 1)
  {
    (*(v105 + 8))(v103, v104);
  }

  else
  {
    v109 = v106;
    v110 = *(v106 + 32);
    v111 = v292;
    v223 = v107;
    v110(v292, v103, v107);
    v112 = v343;
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v114 = *(TupleTypeMetadata - 8);
    (*(v114 + 16))(&TupleTypeMetadata2, v356, TupleTypeMetadata);

    v115 = v294;
    swift_getAtKeyPath();

    v116 = (*(v293 + 104))(v111, v112);
    (*(v295 + 8))(v115, v112);
    (*(v109 + 8))(v111, v223);
    if ((v116 & 1) == 0)
    {
      (*(v114 + 8))(v356, TupleTypeMetadata);
      return 0;
    }
  }

  v117 = type metadata accessor for CRStructMergeableDelta_10();
  v118 = v302;
  v119 = v301;
  v120 = v303;
  (*(v302 + 16))(v301, v345 + v117[9], v303);
  v121 = v304;
  v122 = v305;
  v123 = (*(v304 + 48))(v119, 1, v305);
  v313 = v117;
  if (v123 == 1)
  {
    (*(v118 + 8))(v119, v120);
    v124 = v344;
    v125 = v308;
    v126 = v306;
  }

  else
  {
    v127 = v285;
    (*(v121 + 32))(v285, v119, v122);
    sub_1AE23DB8C();
    v128 = v121;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v129 = v337;
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v130 = swift_getTupleTypeMetadata();
    v131 = *(v130 - 8);
    (*(v131 + 16))(&TupleTypeMetadata2, v356, v130);

    v132 = v287;
    swift_getAtKeyPath();

    v133 = (*(v286 + 104))(v127, v129);
    v134 = v129;
    v117 = v313;
    (*(v288 + 8))(v132, v134);
    v135 = v127;
    v124 = v344;
    (*(v128 + 8))(v135, v122);
    v125 = v308;
    v126 = v306;
    if ((v133 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v136 = v296;
  v137 = v297;
  (*(v126 + 16))(v296, v345 + v117[10], v297);
  v138 = v299;
  v139 = v309;
  if ((*(v299 + 48))(v136, 1, v309) == 1)
  {
    (*(v126 + 8))(v136, v137);
  }

  else
  {
    (*(v138 + 32))(v298, v136, v139);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v140 = swift_getTupleTypeMetadata();
    v141 = *(v140 - 8);
    (*(v141 + 16))(&TupleTypeMetadata2, v356, v140);

    v142 = v124;
    v143 = v275;
    swift_getAtKeyPath();

    v144 = v298;
    v145 = (*(v274 + 104))(v298, v142);
    (*(v276 + 8))(v143, v142);
    (*(v138 + 8))(v144, v309);
    if ((v145 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v146 = v289;
  v147 = v290;
  (*(v289 + 16))(v125, v345 + v117[11], v290);
  v148 = v291;
  v149 = v300;
  if ((*(v291 + 48))(v125, 1, v300) == 1)
  {
    (*(v146 + 8))(v125, v147);
  }

  else
  {
    v150 = v264;
    (*(v148 + 32))(v264, v125, v149);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    v151 = v338;
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v152 = swift_getTupleTypeMetadata();
    v153 = *(v152 - 8);
    (*(v153 + 16))(&TupleTypeMetadata2, v356, v152);

    v154 = v266;
    swift_getAtKeyPath();

    v155 = (*(v265 + 104))(v150, v151);
    (*(v267 + 8))(v154, v151);
    (*(v148 + 8))(v150, v300);
    if ((v155 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v157 = v277;
  v156 = v278;
  v158 = v279;
  (*(v278 + 16))(v277, v345 + v117[12], v279);
  v160 = v280;
  v159 = v281;
  if ((*(v280 + 48))(v157, 1, v281) == 1)
  {
    (*(v156 + 8))(v157, v158);
    v162 = v282;
    v161 = v283;
  }

  else
  {
    v163 = v257;
    (*(v160 + 32))(v257, v157, v159);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    v164 = v339;
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v130 = swift_getTupleTypeMetadata();
    v131 = *(v130 - 8);
    (*(v131 + 16))(&TupleTypeMetadata2, v356, v130);

    v165 = v259;
    swift_getAtKeyPath();

    v166 = (*(v258 + 104))(v163, v164);
    (*(v260 + 8))(v165, v164);
    (*(v160 + 8))(v163, v159);
    v162 = v282;
    v161 = v283;
    if ((v166 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v168 = v268;
  v167 = v269;
  v169 = v270;
  (*(v269 + 16))(v268, v345 + v313[13], v270);
  v170 = v272;
  v171 = v284;
  if ((*(v272 + 48))(v168, 1, v284) == 1)
  {
    (*(v167 + 8))(v168, v169);
  }

  else
  {
    (*(v170 + 32))(v271, v168, v171);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    v172 = v340;
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v173 = swift_getTupleTypeMetadata();
    v174 = *(v173 - 8);
    v175 = *(v174 + 16);
    v312 = v173;
    v175(&TupleTypeMetadata2, v356);

    v176 = v250;
    swift_getAtKeyPath();

    v177 = v161;
    v178 = v271;
    v179 = (*(v249 + 104))(v271, v172);
    (*(v251 + 8))(v176, v172);
    v180 = v178;
    v161 = v177;
    (*(v170 + 8))(v180, v284);
    if ((v179 & 1) == 0)
    {
      (*(v174 + 8))(v356, v312);
      return 0;
    }
  }

  v181 = v261;
  (*(v161 + 16))(v162, v345 + v313[14], v261);
  v182 = v262;
  v183 = v273;
  if ((*(v262 + 48))(v162, 1, v273) == 1)
  {
    (*(v161 + 8))(v162, v181);
    goto LABEL_23;
  }

  v184 = v241;
  (*(v182 + 32))(v241, v162, v183);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v347 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v348 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v349 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v350 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v351 = swift_getTupleTypeMetadata2();
  v185 = v341;
  sub_1AE23DB8C();
  v352 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v353 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v354 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v355 = swift_getTupleTypeMetadata2();
  v152 = swift_getTupleTypeMetadata();
  v153 = *(v152 - 8);
  (*(v153 + 16))(&TupleTypeMetadata2, v356, v152);

  v186 = v243;
  swift_getAtKeyPath();

  v187 = (*(v242 + 104))(v184, v185);
  (*(v244 + 8))(v186, v185);
  (*(v182 + 8))(v184, v273);
  if ((v187 & 1) == 0)
  {
LABEL_25:
    (*(v153 + 8))(v356, v152);
    return 0;
  }

LABEL_23:
  v188 = v313;
  v190 = v252;
  v189 = v253;
  v191 = v254;
  (*(v253 + 16))(v252, v345 + v313[15], v254);
  v192 = v255;
  v193 = v263;
  if ((*(v255 + 48))(v190, 1, v263) == 1)
  {
    (*(v189 + 8))(v190, v191);
    goto LABEL_27;
  }

  v194 = v232;
  (*(v192 + 32))(v232, v190, v193);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v347 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v348 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v349 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v350 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v351 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v352 = swift_getTupleTypeMetadata2();
  v195 = v342;
  sub_1AE23DB8C();
  v353 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v354 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v355 = swift_getTupleTypeMetadata2();
  v140 = swift_getTupleTypeMetadata();
  v141 = *(v140 - 8);
  (*(v141 + 16))(&TupleTypeMetadata2, v356, v140);

  v196 = v234;
  swift_getAtKeyPath();

  v197 = (*(v233 + 104))(v194, v195);
  (*(v235 + 8))(v196, v195);
  (*(v192 + 8))(v194, v263);
  if ((v197 & 1) == 0)
  {
LABEL_29:
    (*(v141 + 8))(v356, v140);
    return 0;
  }

LABEL_27:
  v199 = v245;
  v198 = v246;
  v200 = v247;
  (*(v246 + 16))(v245, v345 + v188[16], v247);
  v201 = v248;
  v202 = v256;
  if ((*(v248 + 48))(v199, 1, v256) != 1)
  {
    v203 = v228;
    (*(v201 + 32))(v228, v199, v202);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    v204 = v335;
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v130 = swift_getTupleTypeMetadata();
    v131 = *(v130 - 8);
    (*(v131 + 16))(&TupleTypeMetadata2, v356, v130);

    v205 = v230;
    swift_getAtKeyPath();

    v206 = (*(v229 + 104))(v203, v204);
    v207 = v204;
    v188 = v313;
    (*(v231 + 8))(v205, v207);
    (*(v201 + 8))(v203, v256);
    if (v206)
    {
      goto LABEL_32;
    }

LABEL_34:
    (*(v131 + 8))(v356, v130);
    return 0;
  }

  (*(v198 + 8))(v199, v200);
LABEL_32:
  v209 = v236;
  v208 = v237;
  v210 = v238;
  (*(v237 + 16))(v236, v345 + v188[17], v238);
  v211 = v239;
  v212 = v240;
  if ((*(v239 + 48))(v209, 1, v240) == 1)
  {
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v347 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v348 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v349 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v350 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v351 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v352 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v353 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v354 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v355 = swift_getTupleTypeMetadata2();
    v213 = swift_getTupleTypeMetadata();
    (*(*(v213 - 8) + 8))(v356, v213);
    (*(v208 + 8))(v209, v210);
    return 1;
  }

  v215 = v224;
  (*(v211 + 32))(v224, v209, v212);
  sub_1AE23DB8C();
  v216 = v211;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v347 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v348 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v349 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v350 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v351 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v352 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v353 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v354 = swift_getTupleTypeMetadata2();
  v217 = v336;
  sub_1AE23DB8C();
  v355 = swift_getTupleTypeMetadata2();
  v218 = swift_getTupleTypeMetadata();
  v219 = *(v218 - 8);
  (*(v219 + 16))(&TupleTypeMetadata2, v356, v218);

  v220 = v226;
  swift_getAtKeyPath();

  v221 = (*(AssociatedConformanceWitness + 104))(v215, v217);
  (*(v219 + 8))(v356, v218);
  (*(v227 + 8))(v220, v217);
  (*(v216 + 8))(v215, v212);
  return (v221 & 1) != 0;
}

uint64_t sub_1AE156B60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA080, &qword_1AE241860);
  result = sub_1AE23DCBC();
  v4 = 0;
  v25 = result;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = v16[1];
      v28 = *v16;
      v18 = *(**(*(v26 + 56) + 8 * v15) + 80);

      v19 = v18(a2);

      result = v25;
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v25[6] + 16 * v15);
      *v20 = v28;
      v20[1] = v17;
      *(v25[7] + 8 * v15) = v19;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AE156D10(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1ADDD7A10(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1ADF690CC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1ADDD7A10(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1ADF6ED64();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_1ADDD7A10(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1ADF690CC(v32, 1);
        v33 = *a3;
        v28 = sub_1ADDD7A10(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1AE1570D4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v4 = *(sub_1ADDE78C8() + 16);
    if ((~v4 & 0xF000000000000007) != 0 && (v4 & 0xF000000000000000) == 0x3000000000000000)
    {
      v10 = (v4 & 0xFFFFFFFFFFFFFFFLL);
      v6 = v10[2];
      v7 = v10[3];
      v8 = v10[4];
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = MEMORY[0x1E69E7CC0];
      v8 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1AE2134B8(v6, v7, v8, a1);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000014;
    *(v9 + 8) = 0x80000001AE25FB50;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1AE15748C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AE157578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((a2 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_26;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          if (v11 > 2)
          {
            if (v11 == 3)
            {
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v11) = *a1;
            }
          }

          else if (v11 == 1)
          {
            LODWORD(v11) = *a1;
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        return v10 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v9 < 2)
  {
    return 0;
  }

  v17 = (*(v8 + 48))(a1);
  if (v17 >= 2)
  {
    return v17 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AE157778(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

uint64_t sub_1AE157A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE157B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + v15;
  if (a2 <= v13)
  {
LABEL_40:
    if (v8 >= v12)
    {
      v26 = (*(v6 + 48))(a1, v7, v28);
    }

    else
    {
      v26 = (*(v10 + 48))((a1 + v18) & ~v15);
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = v17 + (v18 & ~v15);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_39:
      if (v13)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1AE157EA0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v15 = *(v7 + 64);
  }

  else
  {
    v15 = *(v7 + 64) + 1;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = ((v15 + v16) & ~v16) + v17;
  if (a3 > v14)
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v19))
      {
        v10 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v10 = v20;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> (8 * v18)) + 1;
      if (v18)
      {
        v23 = v21 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v23;
            if (v10 > 1)
            {
LABEL_78:
              if (v10 == 2)
              {
                *&a1[v18] = v22;
              }

              else
              {
                *&a1[v18] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v10 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v10 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
      if (v10 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v10)
    {
      a1[v18] = v22;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v18] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v9 >= v13)
  {
    if (v9 >= a2)
    {
      v32 = *(v7 + 56);

      v32(a1, a2 + 1, v8, v33);
    }

    else
    {
      if (v15 <= 3)
      {
        v28 = ~(-1 << (8 * v15));
      }

      else
      {
        v28 = -1;
      }

      if (v15)
      {
        v29 = v28 & (~v9 + a2);
        if (v15 <= 3)
        {
          v30 = v15;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v15);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *a1 = v29;
            a1[2] = BYTE2(v29);
          }

          else
          {
            *a1 = v29;
          }
        }

        else if (v30 == 1)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v29;
        }
      }
    }
  }

  else
  {
    v24 = (&a1[v15 + v16] & ~v16);
    if (v13 >= a2)
    {
      v31 = *(v11 + 56);

      v31(&a1[v15 + v16] & ~v16, a2 + 1);
    }

    else
    {
      if (v17 <= 3)
      {
        v25 = ~(-1 << (8 * v17));
      }

      else
      {
        v25 = -1;
      }

      if (v17)
      {
        v26 = v25 & (~v13 + a2);
        if (v17 <= 3)
        {
          v27 = v17;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v17);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }
  }
}

uint64_t sub_1AE158388(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AE158564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  v6 = *(v37 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v35 = v7;
  v33 = v10;
  if (v10 > v7)
  {
    v7 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v7)
  {
    v14 = v7;
  }

  if (v6)
  {
    v15 = *(v37 + 64);
  }

  else
  {
    v15 = *(v37 + 64) + 1;
  }

  v16 = *(v8 + 64);
  if (!v9)
  {
    ++v16;
  }

  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v15 + v17;
  if (a2 <= v14)
  {
LABEL_44:
    if (v35 == v14)
    {
      v29 = (*(v37 + 48))(a1, v6, v34);
    }

    else
    {
      v31 = (a1 + v21) & ~v17;
      if (v33 == v14)
      {
        v29 = (*(v8 + 48))(v31, v9, v32);
      }

      else
      {
        v29 = (*(v12 + 48))((v31 + v16 + v18) & ~v18);
      }
    }

    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }

  v22 = v20 + ((v16 + v18 + (v21 & ~v17)) & ~v18);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v25 = ((a2 - v14 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v25 < 2)
    {
LABEL_43:
      if (v14)
      {
        goto LABEL_44;
      }

      return 0;
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_43;
  }

LABEL_30:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v14 + (v28 | v26) + 1;
}

void sub_1AE158998(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  v7 = *(v46 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v9 = *(v43 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v44 = v11;
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = v7;
  v15 = 0;
  v16 = *(v13 - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v14)
  {
    v20 = *(v46 + 64);
  }

  else
  {
    v20 = *(v46 + 64) + 1;
  }

  if (v10)
  {
    v21 = *(v9 + 64);
  }

  else
  {
    v21 = *(v9 + 64) + 1;
  }

  v22 = *(v9 + 80);
  v23 = v20 + v22;
  v24 = *(v16 + 80);
  if (v17)
  {
    v25 = *(v16 + 64);
  }

  else
  {
    v25 = *(v16 + 64) + 1;
  }

  v26 = ((v21 + v24 + (v23 & ~v22)) & ~v24) + v25;
  if (a3 > v19)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v19 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v15 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v15 = v28;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v19 < a2)
  {
    v29 = ~v19 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v29 & ~(-1 << (8 * v26));
        bzero(a1, ((v21 + v24 + (v23 & ~v22)) & ~v24) + v25);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v15 > 1)
            {
LABEL_75:
              if (v15 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v15 > 1)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_72;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v15 > 1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      bzero(a1, ((v21 + v24 + (v23 & ~v22)) & ~v24) + v25);
      *a1 = v29;
      v30 = 1;
      if (v15 > 1)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (v15)
    {
      a1[v26] = v30;
    }

    return;
  }

  v31 = a1;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *&a1[v26] = 0;
  }

  else if (v15)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return;
  }

LABEL_50:
  if (v8 == v19)
  {
    v33 = v45;
    v34 = *(v46 + 56);
    v35 = a2 + 1;
    v36 = v14;
LABEL_54:

    v34(v31, v35, v36, v33);
    return;
  }

  v31 = (&a1[v23] & ~v22);
  if (v44 == v19)
  {
    v34 = *(v9 + 56);
    v35 = a2 + 1;
    v36 = v10;
    v33 = v43;
    goto LABEL_54;
  }

  v37 = (&v31[v21 + v24] & ~v24);
  if (v18 >= a2)
  {
    v41 = *(v16 + 56);
    v42 = &v31[v21 + v24] & ~v24;

    v41(v42, a2 + 1);
  }

  else
  {
    if (v25 <= 3)
    {
      v38 = ~(-1 << (8 * v25));
    }

    else
    {
      v38 = -1;
    }

    if (v25)
    {
      v39 = v38 & (~v18 + a2);
      if (v25 <= 3)
      {
        v40 = v25;
      }

      else
      {
        v40 = 4;
      }

      bzero(v37, v25);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          v37[2] = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }
  }
}

uint64_t sub_1AE158F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v6 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15915C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v44 = *(v45 + 84);
  if (v44)
  {
    v5 = v44 - 1;
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedTypeWitness();
  v43 = *(v38 - 8);
  v42 = *(v43 + 84);
  v6 = v42 - 1;
  if (!v42)
  {
    v6 = 0;
  }

  v39 = v6;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v37 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v11)
  {
    v15 = v11;
  }

  if (v44)
  {
    v16 = *(v45 + 64);
  }

  else
  {
    v16 = *(v45 + 64) + 1;
  }

  if (v42)
  {
    v17 = *(v43 + 64);
  }

  else
  {
    v17 = *(v43 + 64) + 1;
  }

  v18 = *(v8 + 64);
  if (!v9)
  {
    ++v18;
  }

  v19 = *(v43 + 80);
  v20 = *(v8 + 80);
  v21 = *(v12 + 80);
  v22 = *(v12 + 64);
  if (v14)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v16 + v19;
  if (a2 <= v15)
  {
LABEL_53:
    if (v5 == v15)
    {
      v32 = (*(v45 + 48))(a1, v44, AssociatedTypeWitness);
    }

    else
    {
      v34 = (a1 + v24) & ~v19;
      if (v39 == v15)
      {
        v32 = (*(v43 + 48))(v34, v42, v38);
      }

      else
      {
        v35 = (v34 + v17 + v20) & ~v20;
        if (v37 == v15)
        {
          v32 = (*(v8 + 48))(v35, v9, v36);
        }

        else
        {
          v32 = (*(v13 + 48))((v35 + v18 + v21) & ~v21);
        }
      }
    }

    if (v32 >= 2)
    {
      return v32 - 1;
    }

    else
    {
      return 0;
    }
  }

  v25 = v23 + ((v18 + v21 + ((v17 + v20 + (v24 & ~v19)) & ~v20)) & ~v21);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((a2 - v15 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    if (v28 < 2)
    {
LABEL_52:
      if (v15)
      {
        goto LABEL_53;
      }

      return 0;
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_52;
  }

LABEL_39:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = v25;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v15 + (v31 | v29) + 1;
}

void sub_1AE1596A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  v56 = *(v57 + 84);
  if (v56)
  {
    v7 = v56 - 1;
  }

  else
  {
    v7 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v50 = swift_getAssociatedTypeWitness();
  v54 = *(v50 - 8);
  v55 = *(v54 + 84);
  v8 = v55 - 1;
  if (!v55)
  {
    v8 = 0;
  }

  v53 = v7;
  v51 = v8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v48 = swift_getAssociatedTypeWitness();
  v10 = *(v48 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v49 = v12;
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = *(v54 + 64);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  if (v56)
  {
    v21 = *(v57 + 64);
  }

  else
  {
    v21 = *(v57 + 64) + 1;
  }

  if (!v55)
  {
    ++v18;
  }

  if (v11)
  {
    v22 = *(v10 + 64);
  }

  else
  {
    v22 = *(v10 + 64) + 1;
  }

  v23 = *(v54 + 80);
  v24 = v21 + v23;
  v25 = (v21 + v23) & ~v23;
  v26 = *(v10 + 80);
  v27 = (v18 + v26 + v25) & ~v26;
  v28 = *(v15 + 80);
  v29 = (v22 + v28 + v27) & ~v28;
  if (v17)
  {
    v30 = *(v15 + 64);
  }

  else
  {
    v30 = *(v15 + 64) + 1;
  }

  v31 = v29 + v30;
  if (a3 > v20)
  {
    if (v31 <= 3)
    {
      v32 = ((a3 - v20 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
      if (HIWORD(v32))
      {
        v14 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v14 = v33;
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

  if (v20 < a2)
  {
    v34 = ~v20 + a2;
    if (v31 < 4)
    {
      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v37 = v34 & ~(-1 << (8 * v31));
        bzero(a1, v29 + v30);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v37;
            if (v14 > 1)
            {
LABEL_75:
              if (v14 == 2)
              {
                *&a1[v31] = v35;
              }

              else
              {
                *&a1[v31] = v35;
              }

              return;
            }
          }

          else
          {
            *a1 = v34;
            if (v14 > 1)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_72;
        }

        *a1 = v37;
        a1[2] = BYTE2(v37);
      }

      if (v14 > 1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      bzero(a1, v29 + v30);
      *a1 = v34;
      v35 = 1;
      if (v14 > 1)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (v14)
    {
      a1[v31] = v35;
    }

    return;
  }

  v36 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v31] = 0;
  }

  else if (v14)
  {
    a1[v31] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v53 == v20)
  {
    v38 = v52;
    v39 = *(v57 + 56);
    v40 = a2 + 1;
    v41 = v56;
    goto LABEL_59;
  }

  v36 = (&a1[v24] & ~v23);
  if (v51 == v20)
  {
    v39 = *(v54 + 56);
    v40 = a2 + 1;
    v41 = v55;
    v38 = v50;

    goto LABEL_61;
  }

  v36 = (&v36[v18 + v26] & ~v26);
  if (v49 == v20)
  {
    v39 = *(v10 + 56);
    v40 = a2 + 1;
    v41 = v11;
    v38 = v48;
LABEL_59:

LABEL_61:
    v39(v36, v40, v41, v38);
    return;
  }

  v42 = (&v36[v22 + v28] & ~v28);
  if (v19 >= a2)
  {
    v46 = *(v16 + 56);
    v47 = &v36[v22 + v28] & ~v28;

    v46(v47, a2 + 1);
  }

  else
  {
    if (v30 <= 3)
    {
      v43 = ~(-1 << (8 * v30));
    }

    else
    {
      v43 = -1;
    }

    if (v30)
    {
      v44 = v43 & (~v19 + a2);
      if (v30 <= 3)
      {
        v45 = v30;
      }

      else
      {
        v45 = 4;
      }

      bzero(v42, v30);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          *v42 = v44;
          v42[2] = BYTE2(v44);
        }

        else
        {
          *v42 = v44;
        }
      }

      else if (v45 == 1)
      {
        *v42 = v44;
      }

      else
      {
        *v42 = v44;
      }
    }
  }
}

uint64_t sub_1AE159D54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v6 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v7 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15A020(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v52 = *(v53 + 84);
  if (v52)
  {
    v5 = v52 - 1;
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v44 = swift_getAssociatedTypeWitness();
  v51 = *(v44 - 8);
  v49 = *(v51 + 84);
  v6 = v49 - 1;
  if (!v49)
  {
    v6 = 0;
  }

  v45 = v6;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedTypeWitness();
  v50 = *(v42 - 8);
  v48 = *(v50 + 84);
  v8 = v48 - 1;
  if (!v48)
  {
    v8 = 0;
  }

  v43 = v8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedTypeWitness();
  v10 = *(v40 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v41 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  result = a2;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= v9)
  {
    v17 = v9;
  }

  if (v52)
  {
    v18 = *(v53 + 64);
  }

  else
  {
    v18 = *(v53 + 64) + 1;
  }

  if (v49)
  {
    v19 = *(v51 + 64);
  }

  else
  {
    v19 = *(v51 + 64) + 1;
  }

  if (v48)
  {
    v20 = *(v50 + 64);
  }

  else
  {
    v20 = *(v50 + 64) + 1;
  }

  if (v11)
  {
    v21 = *(v10 + 64);
  }

  else
  {
    v21 = *(v10 + 64) + 1;
  }

  v22 = *(v51 + 80);
  v23 = *(v50 + 80);
  v24 = *(v10 + 80);
  v25 = *(v15 + 80);
  if (v16)
  {
    v26 = *(*(v13 - 8) + 64);
  }

  else
  {
    v26 = *(*(v13 - 8) + 64) + 1;
  }

  if (a2)
  {
    v27 = v18 + v22;
    v28 = v21 + v25;
    if (a2 <= v17)
    {
LABEL_61:
      if (v5 == v17)
      {
        v36 = (*(v53 + 48))(a1, v52, AssociatedTypeWitness);
      }

      else
      {
        v37 = (a1 + v27) & ~v22;
        if (v45 == v17)
        {
          v36 = (*(v51 + 48))(v37, v49, v44);
        }

        else
        {
          v38 = (v37 + v19 + v23) & ~v23;
          if (v43 == v17)
          {
            v36 = (*(v50 + 48))(v38, v48, v42);
          }

          else
          {
            v39 = (v38 + v20 + v24) & ~v24;
            if (v41 == v17)
            {
              v36 = (*(v10 + 48))(v39, v11, v40);
            }

            else
            {
              v36 = (*(v15 + 48))((v28 + v39) & ~v25);
            }
          }
        }
      }

      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    v29 = v26 + ((v28 + ((v20 + v24 + ((v19 + v23 + (v27 & ~v22)) & ~v23)) & ~v24)) & ~v25);
    v30 = 8 * v29;
    if (v29 > 3)
    {
LABEL_40:
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v32 = ((a2 - v17 + ~(-1 << v30)) >> v30) + 1;
    if (HIWORD(v32))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v32 <= 0xFF)
      {
        if (v32 < 2)
        {
LABEL_60:
          if (!v17)
          {
            return 0;
          }

          goto LABEL_61;
        }

        goto LABEL_40;
      }

      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_60;
      }
    }

LABEL_47:
    v33 = (v31 - 1) << v30;
    if (v29 > 3)
    {
      v33 = 0;
    }

    if (v29)
    {
      if (v29 <= 3)
      {
        v34 = v29;
      }

      else
      {
        v34 = 4;
      }

      if (v34 > 2)
      {
        if (v34 == 3)
        {
          v35 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v35 = *a1;
        }
      }

      else if (v34 == 1)
      {
        v35 = *a1;
      }

      else
      {
        v35 = *a1;
      }
    }

    else
    {
      v35 = 0;
    }

    return v17 + (v35 | v33) + 1;
  }

  return result;
}

void sub_1AE15A674(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v55 = *(swift_getAssociatedTypeWitness() - 8);
  v56 = *(v55 + 84);
  if (v56)
  {
    v6 = v56 - 1;
  }

  else
  {
    v6 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v54 = *(swift_getAssociatedTypeWitness() - 8);
  v53 = *(v54 + 84);
  v7 = v53 - 1;
  if (!v53)
  {
    v7 = 0;
  }

  v51 = v6;
  v50 = v7;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v52 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v52 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v49 = v10;
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v48 = v14;
  if (v14 > v11)
  {
    v11 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = *(v54 + 64);
  v20 = v18 - 1;
  if (!v18)
  {
    v20 = 0;
  }

  if (v20 <= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v20;
  }

  if (v56)
  {
    v22 = *(v55 + 64);
  }

  else
  {
    v22 = *(v55 + 64) + 1;
  }

  if (!v53)
  {
    ++v19;
  }

  if (v9)
  {
    v23 = *(v52 + 64);
  }

  else
  {
    v23 = *(v52 + 64) + 1;
  }

  if (v13)
  {
    v24 = *(v12 + 64);
  }

  else
  {
    v24 = *(v12 + 64) + 1;
  }

  v25 = *(v54 + 80);
  v26 = v22 + v25;
  v27 = *(v52 + 80);
  v28 = *(v12 + 80);
  v29 = (v23 + v28 + ((v19 + v27 + ((v22 + v25) & ~v25)) & ~v27)) & ~v28;
  v30 = *(v16 + 80);
  v31 = v24 + v30;
  v32 = (v24 + v30 + v29) & ~v30;
  v33 = *(v16 + 64);
  if (!v18)
  {
    ++v33;
  }

  v34 = v32 + v33;
  if (a3 > v21)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v21 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v15 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v15 = v36;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v21 < a2)
  {
    v37 = ~v21 + a2;
    if (v34 < 4)
    {
      v38 = (v37 >> (8 * v34)) + 1;
      if (v34)
      {
        v39 = v37 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 != 3)
        {
          if (v34 == 2)
          {
            *a1 = v39;
            if (v15 > 1)
            {
LABEL_76:
              if (v15 == 2)
              {
                *&a1[v34] = v38;
              }

              else
              {
                *&a1[v34] = v38;
              }

              return;
            }
          }

          else
          {
            *a1 = v37;
            if (v15 > 1)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_73;
        }

        *a1 = v39;
        a1[2] = BYTE2(v39);
      }

      if (v15 > 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v15 > 1)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    if (v15)
    {
      a1[v34] = v38;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v34] = 0;
  }

  else if (v15)
  {
    a1[v34] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v51 == v21)
  {
    v40 = *(v55 + 56);
LABEL_82:

    v40();
    return;
  }

  if (v50 == v21)
  {
    v40 = *(v54 + 56);
    goto LABEL_82;
  }

  if (v49 == v21)
  {
    v40 = *(v52 + 56);
    goto LABEL_82;
  }

  v41 = ((((&a1[v26] & ~v25) + v19 + v27) & ~v27) + v23 + v28) & ~v28;
  if (v48 == v21)
  {
    v40 = *(v12 + 56);
    goto LABEL_82;
  }

  v42 = (v31 + v41) & ~v30;
  if (v20 >= a2)
  {
    v46 = *(v17 + 56);
    v47 = (v31 + v41) & ~v30;

    v46(v47, a2 + 1);
  }

  else
  {
    if (v33 <= 3)
    {
      v43 = ~(-1 << (8 * v33));
    }

    else
    {
      v43 = -1;
    }

    if (v33)
    {
      v44 = v43 & (~v20 + a2);
      if (v33 <= 3)
      {
        v45 = v33;
      }

      else
      {
        v45 = 4;
      }

      bzero(((v31 + v41) & ~v30), v33);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          *v42 = v44;
          *(v42 + 2) = BYTE2(v44);
        }

        else
        {
          *v42 = v44;
        }
      }

      else if (v45 == 1)
      {
        *v42 = v44;
      }

      else
      {
        *v42 = v44;
      }
    }
  }
}

uint64_t sub_1AE15AE04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v6 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v7 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v8 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15B148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v62 = *(v63 + 84);
  if (v62)
  {
    v5 = v62 - 1;
  }

  else
  {
    v5 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v61 = *(v51 - 8);
  v59 = *(v61 + 84);
  v6 = v59 - 1;
  if (!v59)
  {
    v6 = 0;
  }

  v54 = v5;
  v52 = v6;
  if (v6 > v5)
  {
    v5 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v60 = *(v49 - 8);
  v58 = *(v60 + 84);
  v7 = v58 - 1;
  if (!v58)
  {
    v7 = 0;
  }

  v50 = v7;
  if (v7 > v5)
  {
    v5 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedTypeWitness();
  v57 = *(v47 - 8);
  v56 = *(v57 + 84);
  v8 = v56 - 1;
  if (!v56)
  {
    v8 = 0;
  }

  v48 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedTypeWitness();
  v10 = *(v45 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v46 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  result = a2;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= v9)
  {
    v17 = v9;
  }

  if (v62)
  {
    v18 = *(v63 + 64);
  }

  else
  {
    v18 = *(v63 + 64) + 1;
  }

  if (v59)
  {
    v19 = *(v61 + 64);
  }

  else
  {
    v19 = *(v61 + 64) + 1;
  }

  if (v58)
  {
    v20 = *(v60 + 64);
  }

  else
  {
    v20 = *(v60 + 64) + 1;
  }

  v21 = v11;
  if (v56)
  {
    v22 = *(v57 + 64);
  }

  else
  {
    v22 = *(v57 + 64) + 1;
  }

  if (v11)
  {
    v23 = *(v10 + 64);
  }

  else
  {
    v23 = *(v10 + 64) + 1;
  }

  v24 = *(v61 + 80);
  v25 = *(v60 + 80);
  v26 = *(v57 + 80);
  v27 = *(v10 + 80);
  v28 = *(v15 + 80);
  if (v16)
  {
    v29 = *(*(v13 - 8) + 64);
  }

  else
  {
    v29 = *(*(v13 - 8) + 64) + 1;
  }

  if (a2)
  {
    v30 = v18 + v24;
    v31 = v22 + v27;
    v32 = v23 + v28;
    if (a2 <= v17)
    {
LABEL_67:
      if (v54 == v17)
      {
        v40 = (*(v63 + 48))(a1, v62, AssociatedTypeWitness, v25);
      }

      else
      {
        v41 = (a1 + v30) & ~v24;
        if (v52 == v17)
        {
          v40 = (*(v61 + 48))(v41, v59, v51, v25);
        }

        else
        {
          v42 = (v41 + v19 + v25) & ~v25;
          if (v50 == v17)
          {
            v40 = (*(v60 + 48))(v42, v58, v49);
          }

          else
          {
            v43 = (v42 + v20 + v26) & ~v26;
            if (v48 == v17)
            {
              v40 = (*(v57 + 48))(v43, v56, v47);
            }

            else
            {
              v44 = (v31 + v43) & ~v27;
              if (v46 == v17)
              {
                v40 = (*(v10 + 48))(v44, v21, v45);
              }

              else
              {
                v40 = (*(v15 + 48))((v32 + v44) & ~v28);
              }
            }
          }
        }
      }

      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    v33 = v29 + ((v32 + ((v31 + ((v20 + v26 + ((v19 + v25 + (v30 & ~v24)) & ~v25)) & ~v26)) & ~v27)) & ~v28);
    v34 = 8 * v33;
    if (v33 > 3)
    {
LABEL_46:
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    v36 = ((a2 - v17 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v36))
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v36 <= 0xFF)
      {
        if (v36 < 2)
        {
LABEL_66:
          if (!v17)
          {
            return 0;
          }

          goto LABEL_67;
        }

        goto LABEL_46;
      }

      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_66;
      }
    }

LABEL_53:
    v37 = (v35 - 1) << v34;
    if (v33 > 3)
    {
      v37 = 0;
    }

    if (v33)
    {
      if (v33 <= 3)
      {
        v38 = v33;
      }

      else
      {
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }
    }

    else
    {
      v39 = 0;
    }

    return v17 + (v39 | v37) + 1;
  }

  return result;
}

void sub_1AE15B8AC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(*(a4 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v63 = *(swift_getAssociatedTypeWitness() - 8);
  v64 = *(v63 + 84);
  if (v64)
  {
    v6 = v64 - 1;
  }

  else
  {
    v6 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v62 = *(swift_getAssociatedTypeWitness() - 8);
  v61 = *(v62 + 84);
  v7 = v61 - 1;
  if (!v61)
  {
    v7 = 0;
  }

  v56 = v6;
  v55 = v7;
  if (v7 > v6)
  {
    v6 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v60 = *(swift_getAssociatedTypeWitness() - 8);
  v59 = *(v60 + 84);
  v8 = v59 - 1;
  if (!v59)
  {
    v8 = 0;
  }

  v54 = v8;
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v58 = *(swift_getAssociatedTypeWitness() - 8);
  v57 = *(v58 + 84);
  v10 = v57 - 1;
  if (!v57)
  {
    v10 = 0;
  }

  v53 = v10;
  if (v10 > v9)
  {
    v9 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v52 = v13;
  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = *(v62 + 64);
  v20 = v18 - 1;
  if (!v18)
  {
    v20 = 0;
  }

  if (v20 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20;
  }

  if (v64)
  {
    v22 = *(v63 + 64);
  }

  else
  {
    v22 = *(v63 + 64) + 1;
  }

  if (!v61)
  {
    ++v19;
  }

  if (v59)
  {
    v23 = *(v60 + 64);
  }

  else
  {
    v23 = *(v60 + 64) + 1;
  }

  if (v57)
  {
    v24 = *(v58 + 64);
  }

  else
  {
    v24 = *(v58 + 64) + 1;
  }

  if (v12)
  {
    v25 = *(v11 + 64);
  }

  else
  {
    v25 = *(v11 + 64) + 1;
  }

  v26 = *(v62 + 80);
  v27 = v22 + v26;
  v28 = *(v60 + 80);
  v29 = (v19 + v28 + ((v22 + v26) & ~v26)) & ~v28;
  v30 = *(v58 + 80);
  v31 = (v23 + v30 + v29) & ~v30;
  v32 = *(v11 + 80);
  v33 = v24 + v32;
  v34 = (v24 + v32 + v31) & ~v32;
  v35 = *(v16 + 80);
  v36 = v25 + v35;
  v37 = *(v16 + 64);
  if (!v18)
  {
    ++v37;
  }

  v38 = ((v36 + v34) & ~v35) + v37;
  if (a3 > v21)
  {
    if (v38 <= 3)
    {
      v39 = ((a3 - v21 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (HIWORD(v39))
      {
        v15 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
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
    }

    else
    {
      v15 = 1;
    }
  }

  if (v21 < a2)
  {
    v41 = ~v21 + a2;
    if (v38 < 4)
    {
      v42 = (v41 >> (8 * v38)) + 1;
      if (v38)
      {
        v43 = v41 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v43;
            if (v15 > 1)
            {
LABEL_83:
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
              goto LABEL_83;
            }
          }

          goto LABEL_80;
        }

        *a1 = v43;
        a1[2] = BYTE2(v43);
      }

      if (v15 > 1)
      {
        goto LABEL_83;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v41;
      v42 = 1;
      if (v15 > 1)
      {
        goto LABEL_83;
      }
    }

LABEL_80:
    if (v15)
    {
      a1[v38] = v42;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_70;
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

    goto LABEL_70;
  }

  if (!a2)
  {
    return;
  }

LABEL_70:
  if (v56 == v21)
  {
    v44 = *(v63 + 56);
LABEL_91:

    v44();
    return;
  }

  if (v55 == v21)
  {
    v44 = *(v62 + 56);
    goto LABEL_91;
  }

  if (v54 == v21)
  {
    v44 = *(v60 + 56);
    goto LABEL_91;
  }

  if (v53 == v21)
  {
    v44 = *(v58 + 56);
    goto LABEL_91;
  }

  v45 = (v33 + (((((&a1[v27] & ~v26) + v19 + v28) & ~v28) + v23 + v30) & ~v30)) & ~v32;
  if (v52 == v21)
  {
    v44 = *(v11 + 56);
    goto LABEL_91;
  }

  v46 = (v36 + v45) & ~v35;
  if (v20 >= a2)
  {
    v50 = *(v17 + 56);
    v51 = (v36 + v45) & ~v35;

    v50(v51, a2 + 1);
  }

  else
  {
    if (v37 <= 3)
    {
      v47 = ~(-1 << (8 * v37));
    }

    else
    {
      v47 = -1;
    }

    if (v37)
    {
      v48 = v47 & (~v20 + a2);
      if (v37 <= 3)
      {
        v49 = v37;
      }

      else
      {
        v49 = 4;
      }

      bzero(((v36 + v45) & ~v35), v37);
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          *v46 = v48;
          *(v46 + 2) = BYTE2(v48);
        }

        else
        {
          *v46 = v48;
        }
      }

      else if (v49 == 1)
      {
        *v46 = v48;
      }

      else
      {
        *v46 = v48;
      }
    }
  }
}