unint64_t sub_24B74B158()
{
  result = qword_27F036AF8;
  if (!qword_27F036AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036AF8);
  }

  return result;
}

uint64_t EditorialExternalLink.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_24B75B108();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B00, &qword_24B769C28);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for EditorialExternalLink();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B74B158();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_24B75C5E8();
  v13[1] = v17;
  v25 = 1;
  sub_24B6A7334(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C618();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_24B74B4D0(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B74B534(v13);
}

uint64_t sub_24B74B4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialExternalLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B74B534(uint64_t a1)
{
  v2 = type metadata accessor for EditorialExternalLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EditorialExternalLink.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for EditorialExternalLink() + 20);

  return sub_24B75B0F8();
}

uint64_t EditorialExternalLink.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C358();
  v3 = *(type metadata accessor for EditorialExternalLink() + 20);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t EditorialExternalLink.hashValue.getter()
{
  sub_24B75C6D8();
  v1 = *v0;
  v2 = v0[1];
  sub_24B75C358();
  v3 = *(type metadata accessor for EditorialExternalLink() + 20);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B778(uint64_t a1)
{
  sub_24B75C6D8();
  v3 = *v1;
  v4 = v1[1];
  sub_24B75C358();
  v5 = *(a1 + 20);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B820(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_24B75C358();
  v6 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t sub_24B74B8AC(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  v4 = *v2;
  v5 = v2[1];
  sub_24B75C358();
  v6 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A7334(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B74B950(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B75C6B8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_24B75B0F8();
}

unint64_t sub_24B74BA10()
{
  result = qword_27F036B08;
  if (!qword_27F036B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B08);
  }

  return result;
}

unint64_t sub_24B74BA68()
{
  result = qword_27F036B10;
  if (!qword_27F036B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B10);
  }

  return result;
}

unint64_t sub_24B74BAC0()
{
  result = qword_27F036B18;
  if (!qword_27F036B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B18);
  }

  return result;
}

uint64_t sub_24B74BB14()
{
  v1 = sub_24B75B108();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProgramDetailFeature.TaskIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7505D8(v0, v9, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v14 = 4;
      }

      else
      {
        v14 = 7;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    return MEMORY[0x24C2489B0](v14);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x24C2489B0](5);
    }

    else
    {
      v16 = *v9;
      v17 = *(v9 + 1);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30);
      (*(v2 + 32))(v5, &v9[*(v18 + 48)], v1);
      MEMORY[0x24C2489B0](6);
      sub_24B75C358();
    }

    sub_24B750F7C(&qword_27F034130, MEMORY[0x277CC9260]);
    sub_24B75C2C8();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    if (EnumCaseMultiPayload)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    MEMORY[0x24C2489B0](v13);
    sub_24B75C358();
  }
}

uint64_t sub_24B74BDB8()
{
  sub_24B75C6D8();
  sub_24B74BB14();
  return sub_24B75C718();
}

uint64_t sub_24B74BDFC()
{
  sub_24B75C6D8();
  sub_24B74BB14();
  return sub_24B75C718();
}

__n128 ProgramDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

int *ProgramDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, void **a3, char *a4)
{
  v331 = a2;
  v332 = a4;
  v329 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v301 = &v295 - v7;
  v302 = type metadata accessor for WorkoutProgramPreview();
  v307 = *(v302 - 8);
  v8 = *(v307 + 64);
  MEMORY[0x28223BE20](v302);
  v298 = v9;
  v299 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v304 = &v295 - v11;
  v12 = sub_24B75B108();
  v321 = *(v12 - 8);
  v322 = v12;
  v13 = *(v321 + 64);
  MEMORY[0x28223BE20](v12);
  v314 = &v295 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v325 = (&v295 - v15);
  v300 = type metadata accessor for WorkoutProgram();
  v318 = *(v300 - 8);
  v16 = *(v318 + 8);
  MEMORY[0x28223BE20](v300);
  v297 = &v295 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v308 = &v295 - v19;
  MEMORY[0x28223BE20](v20);
  v315 = (&v295 - v21);
  v317 = v22;
  MEMORY[0x28223BE20](v23);
  v324 = &v295 - v24;
  State = type metadata accessor for ProgramDetailLoadState();
  v26 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v313 = &v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v316 = &v295 - v29;
  v327 = type metadata accessor for ProgramDetailFeature.TaskIdentifier();
  v30 = *(*(v327 - 8) + 64);
  MEMORY[0x28223BE20](v327);
  v296 = (&v295 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v312 = &v295 - v33;
  MEMORY[0x28223BE20](v34);
  v323 = &v295 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v295 - v37;
  MEMORY[0x28223BE20](v39);
  v305 = &v295 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v295 - v42;
  MEMORY[0x28223BE20](v44);
  v306 = (&v295 - v45);
  MEMORY[0x28223BE20](v46);
  v326 = &v295 - v47;
  MEMORY[0x28223BE20](v48);
  v311 = &v295 - v49;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034460, &qword_24B75F658);
  v330 = *(v328 - 8);
  v50 = *(v330 + 64);
  MEMORY[0x28223BE20](v328);
  v303 = &v295 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v320 = &v295 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v295 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v295 - v58;
  MEMORY[0x28223BE20](v60);
  v309 = &v295 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = &v295 - v63;
  MEMORY[0x28223BE20](v65);
  v310 = &v295 - v66;
  MEMORY[0x28223BE20](v67);
  v319 = &v295 - v68;
  v69 = type metadata accessor for ProgramDetailAction();
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v295 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v4[7];
  v340 = v4[6];
  v341 = v73;
  v74 = v4[9];
  v342 = v4[8];
  v343 = v74;
  v75 = v4[3];
  v336 = v4[2];
  v337 = v75;
  v76 = v4[5];
  v338 = v4[4];
  v339 = v76;
  v77 = v4[1];
  v334 = *v4;
  v335 = v77;
  sub_24B7505D8(v332, v72, type metadata accessor for ProgramDetailAction);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    v104 = v38;
    v332 = v13;
    v105 = v56;
    v106 = v323;
    v107 = v324;
    if (result <= 1)
    {
      if (!result)
      {
        v331[34] = *v72;
        return result;
      }

      v332 = type metadata accessor for WorkoutProgram;
      sub_24B74E07C(v72, v324, type metadata accessor for WorkoutProgram);
      v238 = *(type metadata accessor for ProgramDetailState() + 24);
      v239 = v331;
      sub_24B75275C(&v331[v238], type metadata accessor for ProgramDetailLoadState);
      sub_24B7505D8(v107, &v239[v238], type metadata accessor for WorkoutProgram);
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      (*(*(v240 - 8) + 56))(&v239[v238], 0, 2, v240);
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v242 = v241[12];
      v243 = v241[16];
      v325 = v241[20];
      v331 = &v64[v241[24]];
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v43, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v244 = v107;
      sub_24B75C508();
      sub_24B75275C(v43, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B75C3F8();
      v245 = *MEMORY[0x277D04400];
      v246 = sub_24B75C208();
      (*(*(v246 - 8) + 104))(&v64[v243], v245, v246);
      v247 = *MEMORY[0x277D043E0];
      v248 = sub_24B75C1F8();
      (*(*(v248 - 8) + 104))(v325 + v64, v247, v248);
      v249 = v315;
      sub_24B7505D8(v107, v315, type metadata accessor for WorkoutProgram);
      v250 = (*(v318 + 80) + 176) & ~*(v318 + 80);
      v251 = swift_allocObject();
      v252 = v341;
      v251[7] = v340;
      v251[8] = v252;
      v253 = v343;
      v251[9] = v342;
      v251[10] = v253;
      v254 = v337;
      v251[3] = v336;
      v251[4] = v254;
      v255 = v339;
      v251[5] = v338;
      v251[6] = v255;
      v256 = v335;
      v251[1] = v334;
      v251[2] = v256;
      sub_24B74E07C(v249, v251 + v250, v332);
      v152 = v330;
      v257 = v331;
      *v331 = &unk_24B769E98;
      *(v257 + 1) = v251;
      v153 = v328;
      (*(v152 + 104))(v64, *MEMORY[0x277D043B0], v328);
      v100 = v329;
      v101 = *v329;
      sub_24B750778(&v334, v333);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
      }

      v155 = v101[2];
      v258 = v101[3];
      v156 = v155 + 1;
      if (v155 >= v258 >> 1)
      {
        v101 = sub_24B6C45F0(v258 > 1, v155 + 1, 1, v101);
      }

      sub_24B75275C(v244, type metadata accessor for WorkoutProgram);
    }

    else
    {
      if (result != 2)
      {
        if (result != 3)
        {
          result = type metadata accessor for ProgramDetailState();
          v331[result[9]] = 0;
          return result;
        }

        v109 = v321;
        v108 = v322;
        v110 = *(v321 + 32);
        v320 = (v321 + 32);
        v323 = v110;
        v111 = v325;
        (v110)(v325, v72, v322);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
        v324 = v112[12];
        v319 = v112[16];
        v331 = v112[20];
        v113 = v59;
        v114 = &v59[v112[24]];
        v115 = *(v109 + 16);
        v115(v104, v111, v108);
        swift_storeEnumTagMultiPayload();
        sub_24B7505D8(v104, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        sub_24B75C508();
        sub_24B75275C(v104, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        v116 = *MEMORY[0x277D043F0];
        v117 = sub_24B75C208();
        (*(*(v117 - 8) + 104))(&v319[v113], v116, v117);
        v118 = v314;
        v115(v314, v111, v108);
        v119 = (*(v109 + 80) + 176) & ~*(v109 + 80);
        v120 = swift_allocObject();
        v121 = v341;
        v120[7] = v340;
        v120[8] = v121;
        v122 = v343;
        v120[9] = v342;
        v120[10] = v122;
        v123 = v337;
        v120[3] = v336;
        v120[4] = v123;
        v124 = v339;
        v120[5] = v338;
        v120[6] = v124;
        v125 = v335;
        v120[1] = v334;
        v120[2] = v125;
        v126 = v113;
        (v323)(v120 + v119, v118, v108);
        *v114 = &unk_24B769E78;
        *(v114 + 1) = v120;
        sub_24B750778(&v334, v333);
        sub_24B75C3F8();
        v127 = *MEMORY[0x277D043E8];
        v128 = sub_24B75C1F8();
        (*(*(v128 - 8) + 104))(&v331[v113], v127, v128);
        v129 = v330;
        v130 = v328;
        (*(v330 + 104))(v126, *MEMORY[0x277D043B0], v328);
        v100 = v329;
        v101 = *v329;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
        }

        v132 = v101[2];
        v131 = v101[3];
        if (v132 >= v131 >> 1)
        {
          v101 = sub_24B6C45F0(v131 > 1, v132 + 1, 1, v101);
        }

        (*(v321 + 8))(v111, v322);
        v101[2] = v132 + 1;
        result = (*(v129 + 32))(v101 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v132, v126, v130);
        goto LABEL_49;
      }

      v137 = *v72;
      v136 = *(v72 + 1);
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v139 = v138[16];
      v140 = v138[20];
      v331 = v138[12];
      v332 = v140;
      v64 = v56;
      v141 = &v56[v138[24]];
      *v106 = v137;
      v106[1] = v136;
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v106, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

      sub_24B75C508();
      sub_24B75275C(v106, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v142 = *MEMORY[0x277D043F0];
      v143 = sub_24B75C208();
      (*(*(v143 - 8) + 104))(&v105[v139], v142, v143);
      v144 = swift_allocObject();
      v145 = v341;
      *(v144 + 112) = v340;
      *(v144 + 128) = v145;
      v146 = v343;
      *(v144 + 144) = v342;
      *(v144 + 160) = v146;
      v147 = v337;
      *(v144 + 48) = v336;
      *(v144 + 64) = v147;
      v148 = v339;
      *(v144 + 80) = v338;
      *(v144 + 96) = v148;
      v149 = v335;
      *(v144 + 16) = v334;
      *(v144 + 32) = v149;
      *(v144 + 176) = v137;
      *(v144 + 184) = v136;
      *v141 = &unk_24B769E68;
      *(v141 + 1) = v144;
      sub_24B750778(&v334, v333);
      sub_24B75C3F8();
      v150 = *MEMORY[0x277D043E8];
      v151 = sub_24B75C1F8();
      (*(*(v151 - 8) + 104))(&v332[v105], v150, v151);
      v152 = v330;
      v153 = v328;
      (*(v330 + 104))(v105, *MEMORY[0x277D043B0], v328);
      v100 = v329;
      v101 = *v329;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
      }

      v155 = v101[2];
      v154 = v101[3];
      v156 = v155 + 1;
      if (v155 >= v154 >> 1)
      {
        v101 = sub_24B6C45F0(v154 > 1, v155 + 1, 1, v101);
      }
    }

    v101[2] = v156;
    result = (*(v152 + 32))(v101 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v155, v64, v153);
LABEL_49:
    *v100 = v101;
    return result;
  }

  if (result > 7)
  {
    if (result == 8)
    {
      v214 = type metadata accessor for ProgramDetailState();
      v215 = &v331[*(v214 + 32)];
      v217 = *v215;
      v216 = *(v215 + 1);
      v331[*(v214 + 36)] = 0;
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v219 = v218[16];
      v220 = v218[20];
      v331 = v218[12];
      v332 = v220;
      v221 = v320;
      v222 = &v320[v218[24]];
      v223 = v312;
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v223, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

      sub_24B75C508();
      sub_24B75275C(v223, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v224 = *MEMORY[0x277D043F0];
      v225 = sub_24B75C208();
      (*(*(v225 - 8) + 104))(&v221[v219], v224, v225);
      v226 = swift_allocObject();
      v227 = v341;
      *(v226 + 112) = v340;
      *(v226 + 128) = v227;
      v228 = v343;
      *(v226 + 144) = v342;
      *(v226 + 160) = v228;
      v229 = v337;
      *(v226 + 48) = v336;
      *(v226 + 64) = v229;
      v230 = v339;
      *(v226 + 80) = v338;
      *(v226 + 96) = v230;
      v231 = v335;
      *(v226 + 16) = v334;
      *(v226 + 32) = v231;
      *(v226 + 176) = v217;
      *(v226 + 184) = v216;
      *v222 = &unk_24B769E58;
      *(v222 + 1) = v226;
      sub_24B750778(&v334, v333);
      sub_24B75C3F8();
      v232 = *MEMORY[0x277D043E8];
      v233 = sub_24B75C1F8();
      (*(*(v233 - 8) + 104))(&v332[v221], v232, v233);
      v234 = v330;
      v235 = v328;
      (*(v330 + 104))(v221, *MEMORY[0x277D043B0], v328);
      v100 = v329;
      v101 = *v329;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
      }

      v237 = v101[2];
      v236 = v101[3];
      if (v237 >= v236 >> 1)
      {
        v101 = sub_24B6C45F0(v236 > 1, v237 + 1, 1, v101);
      }

      v101[2] = v237 + 1;
      result = (*(v234 + 32))(v101 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v237, v320, v235);
    }

    else
    {
      if (result != 9)
      {
        return result;
      }

      v133 = type metadata accessor for ProgramDetailState();
      v134 = v313;
      sub_24B7505D8(&v331[*(v133 + 24)], v313, type metadata accessor for ProgramDetailLoadState);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
      if ((*(*(v135 - 8) + 48))(v134, 2, v135))
      {
        return sub_24B75275C(v134, type metadata accessor for ProgramDetailLoadState);
      }

      v259 = v308;
      sub_24B74E07C(v134, v308, type metadata accessor for WorkoutProgram);
      v261 = v300;
      v260 = v301;
      sub_24B74E00C(v259 + *(v300 + 32), v301);
      v262 = v302;
      if ((*(v307 + 48))(v260, 1, v302) == 1)
      {
        sub_24B75275C(v259, type metadata accessor for WorkoutProgram);
        return sub_24B6B9CD4(v260, &qword_27F035018, &qword_24B7670C0);
      }

      v325 = type metadata accessor for WorkoutProgramPreview;
      v263 = v304;
      sub_24B74E07C(v260, v304, type metadata accessor for WorkoutProgramPreview);
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
      v265 = v264[16];
      v266 = v264[20];
      v331 = v264[12];
      v332 = v266;
      v267 = v303;
      v268 = &v303[v264[24]];
      v269 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30) + 48);
      v270 = (v259 + *(v261 + 24));
      v271 = v270[1];
      v272 = v296;
      *v296 = *v270;
      *(v272 + 8) = v271;
      (*(v321 + 16))(v272 + v269, v263 + *(v262 + 20), v322);
      swift_storeEnumTagMultiPayload();
      sub_24B7505D8(v272, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

      v273 = v308;
      sub_24B75C508();
      v274 = v272;
      v275 = v273;
      sub_24B75275C(v274, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v276 = *MEMORY[0x277D043F0];
      v277 = sub_24B75C208();
      (*(*(v277 - 8) + 104))(&v267[v265], v276, v277);
      v278 = v297;
      sub_24B7505D8(v275, v297, type metadata accessor for WorkoutProgram);
      v279 = v299;
      sub_24B7505D8(v263, v299, type metadata accessor for WorkoutProgramPreview);
      v280 = (*(v318 + 80) + 176) & ~*(v318 + 80);
      v281 = (v317 + *(v307 + 80) + v280) & ~*(v307 + 80);
      v282 = swift_allocObject();
      v283 = v341;
      v282[7] = v340;
      v282[8] = v283;
      v284 = v343;
      v282[9] = v342;
      v282[10] = v284;
      v285 = v337;
      v282[3] = v336;
      v282[4] = v285;
      v286 = v339;
      v282[5] = v338;
      v282[6] = v286;
      v287 = v335;
      v282[1] = v334;
      v282[2] = v287;
      sub_24B74E07C(v278, v282 + v280, type metadata accessor for WorkoutProgram);
      sub_24B74E07C(v279, v282 + v281, v325);
      *v268 = &unk_24B769E48;
      *(v268 + 1) = v282;
      sub_24B750778(&v334, v333);
      sub_24B75C3F8();
      v288 = *MEMORY[0x277D043E8];
      v289 = sub_24B75C1F8();
      (*(*(v289 - 8) + 104))(&v332[v267], v288, v289);
      v290 = v330;
      v291 = v267;
      v292 = v328;
      (*(v330 + 104))(v291, *MEMORY[0x277D043B0], v328);
      v100 = v329;
      v101 = *v329;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
      }

      v294 = v101[2];
      v293 = v101[3];
      if (v294 >= v293 >> 1)
      {
        v101 = sub_24B6C45F0(v293 > 1, v294 + 1, 1, v101);
      }

      sub_24B75275C(v304, type metadata accessor for WorkoutProgramPreview);
      sub_24B75275C(v275, type metadata accessor for WorkoutProgram);
      v101[2] = v294 + 1;
      result = (*(v290 + 32))(v101 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v294, v303, v292);
    }

    goto LABEL_49;
  }

  if (result != 5)
  {
    if (result != 6)
    {
      result = type metadata accessor for ProgramDetailState();
      v331[result[10]] = 1;
      return result;
    }

    result = type metadata accessor for ProgramDetailState();
    if ((v331[34] & 1) == 0)
    {
      v331[result[9]] = 1;
      return result;
    }

    v79 = &v331[result[8]];
    v81 = *v79;
    v80 = *(v79 + 1);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
    v83 = v82[12];
    v84 = v82[20];
    v331 = v82[16];
    v332 = v84;
    v85 = v309;
    v86 = &v309[v82[24]];
    v87 = v305;
    swift_storeEnumTagMultiPayload();
    sub_24B7505D8(v87, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

    sub_24B75C508();
    sub_24B75275C(v87, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    v88 = swift_allocObject();
    v89 = v341;
    *(v88 + 112) = v340;
    *(v88 + 128) = v89;
    v90 = v343;
    *(v88 + 144) = v342;
    *(v88 + 160) = v90;
    v91 = v337;
    *(v88 + 48) = v336;
    *(v88 + 64) = v91;
    v92 = v339;
    *(v88 + 80) = v338;
    *(v88 + 96) = v92;
    v93 = v335;
    *(v88 + 16) = v334;
    *(v88 + 32) = v93;
    *(v88 + 176) = v81;
    *(v88 + 184) = v80;
    *v86 = &unk_24B769E88;
    *(v86 + 1) = v88;
    sub_24B750778(&v334, v333);
    sub_24B75C3F8();
    v94 = *MEMORY[0x277D043F8];
    v95 = sub_24B75C208();
    (*(*(v95 - 8) + 104))(&v331[v85], v94, v95);
    v96 = *MEMORY[0x277D043E8];
    v97 = sub_24B75C1F8();
    (*(*(v97 - 8) + 104))(&v332[v85], v96, v97);
    v98 = v330;
    v99 = v328;
    (*(v330 + 104))(v85, *MEMORY[0x277D043B0], v328);
    v100 = v329;
    v101 = *v329;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_24B6C45F0(0, v101[2] + 1, 1, v101);
    }

    v103 = v101[2];
    v102 = v101[3];
    if (v103 >= v102 >> 1)
    {
      v101 = sub_24B6C45F0(v102 > 1, v103 + 1, 1, v101);
    }

    v101[2] = v103 + 1;
    result = (*(v98 + 32))(v101 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v103, v309, v99);
    goto LABEL_49;
  }

  v332 = type metadata accessor for ProgramDetailState();
  v157 = &v331[*(v332 + 8)];
  v159 = *v157;
  v158 = v157[1];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034438, &qword_24B760C80);
  v161 = v160[16];
  v323 = v160[12];
  v324 = v161;
  v325 = v160[20];
  v162 = v319;
  v163 = &v319[v160[24]];
  v164 = v311;
  swift_storeEnumTagMultiPayload();
  sub_24B7505D8(v164, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v165 = sub_24B750F7C(&qword_27F036B28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

  v321 = v165;
  sub_24B75C508();
  sub_24B75275C(v164, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v166 = swift_allocObject();
  v167 = v341;
  *(v166 + 112) = v340;
  *(v166 + 128) = v167;
  v168 = v343;
  *(v166 + 144) = v342;
  *(v166 + 160) = v168;
  v169 = v337;
  *(v166 + 48) = v336;
  *(v166 + 64) = v169;
  v170 = v339;
  *(v166 + 80) = v338;
  *(v166 + 96) = v170;
  v171 = v335;
  *(v166 + 16) = v334;
  *(v166 + 32) = v171;
  v322 = v159;
  *(v166 + 176) = v159;
  *(v166 + 184) = v158;
  *v163 = &unk_24B769EA8;
  *(v163 + 1) = v166;

  sub_24B750778(&v334, v333);
  sub_24B75C3F8();
  v172 = *MEMORY[0x277D043F8];
  v173 = sub_24B75C208();
  v174 = *(v173 - 8);
  v175 = *(v174 + 104);
  v176 = v174 + 104;
  v175(&v162[v324], v172, v173);
  v177 = *MEMORY[0x277D043E8];
  v178 = sub_24B75C1F8();
  v179 = *(v178 - 8);
  v180 = *(v179 + 104);
  v181 = v325 + v162;
  LODWORD(v325) = v177;
  v324 = v178;
  v314 = (v179 + 104);
  v315 = v180;
  (v180)(v181, v177);
  v182 = *(v330 + 104);
  LODWORD(v313) = *MEMORY[0x277D043B0];
  v312 = v182;
  (v182)(v162);
  v183 = *v329;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LODWORD(v323) = v172;
  v318 = v175;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v183 = sub_24B6C45F0(0, v183[2] + 1, 1, v183);
  }

  v186 = v183[2];
  v185 = v183[3];
  v320 = v173;
  v317 = v176;
  if (v186 >= v185 >> 1)
  {
    v183 = sub_24B6C45F0(v185 > 1, v186 + 1, 1, v183);
  }

  v183[2] = v186 + 1;
  v187 = *(v330 + 32);
  v311 = ((*(v330 + 80) + 32) & ~*(v330 + 80));
  v309 = *(v330 + 72);
  v188 = v319;
  v330 += 32;
  v319 = v187;
  (v187)(&v311[v183 + v309 * v186], v188, v328);
  *v329 = v183;
  v189 = v331;
  v190 = *(v332 + 6);
  v191 = v316;
  sub_24B7505D8(&v331[v190], v316, type metadata accessor for ProgramDetailLoadState);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0360C8, &qword_24B766FF0);
  v193 = *(v192 - 8);
  if ((*(v193 + 48))(v191, 2, v192) == 1)
  {
    sub_24B75275C(v191, type metadata accessor for ProgramDetailLoadState);
    sub_24B75275C(&v189[v190], type metadata accessor for ProgramDetailLoadState);
    (*(v193 + 56))(&v189[v190], 2, 2, v192);
    v316 = v160[12];
    v194 = v160[20];
    v331 = v160[16];
    v332 = v194;
    v195 = v310;
    v196 = &v310[v160[24]];
    v197 = v306;
    v198 = v322;
    *v306 = v322;
    *(v197 + 8) = v158;
    swift_storeEnumTagMultiPayload();
    sub_24B7505D8(v197, v326, type metadata accessor for ProgramDetailFeature.TaskIdentifier);

    sub_24B75C508();
    sub_24B75275C(v197, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    v199 = swift_allocObject();
    v200 = v341;
    *(v199 + 112) = v340;
    *(v199 + 128) = v200;
    v201 = v343;
    *(v199 + 144) = v342;
    *(v199 + 160) = v201;
    v202 = v337;
    *(v199 + 48) = v336;
    *(v199 + 64) = v202;
    v203 = v339;
    *(v199 + 80) = v338;
    *(v199 + 96) = v203;
    v204 = v335;
    *(v199 + 16) = v334;
    *(v199 + 32) = v204;
    *(v199 + 176) = v198;
    *(v199 + 184) = v158;
    *v196 = &unk_24B769EB8;
    *(v196 + 1) = v199;
    sub_24B750778(&v334, v333);
    sub_24B75C3F8();
    v318(&v331[v195], v323, v320);
    (v315)(&v332[v195], v325, v324);
    v205 = v195;
    v206 = v328;
    (v312)(v205, v313, v328);
    v208 = v183[2];
    v207 = v183[3];
    if (v208 >= v207 >> 1)
    {
      v183 = sub_24B6C45F0(v207 > 1, v208 + 1, 1, v183);
    }

    v209 = v329;
    v210 = v319;
    v211 = v310;
    v212 = v311;
    v213 = v309;
    v183[2] = v208 + 1;
    result = v210(&v212[v183 + v208 * v213], v211, v206);
    *v209 = v183;
  }

  else
  {

    return sub_24B75275C(v191, type metadata accessor for ProgramDetailLoadState);
  }

  return result;
}

uint64_t type metadata accessor for ProgramDetailFeature.TaskIdentifier()
{
  result = qword_27F036B48;
  if (!qword_27F036B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B74E00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F035018, &qword_24B7670C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B74E07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B74E0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for ProgramDetailAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = *(a2 + 40);
  v14 = (*(a2 + 32) + **(a2 + 32));
  v11 = *(*(a2 + 32) + 4);
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_24B74E240;

  return v14(v4 + 12, a3, a4);
}

uint64_t sub_24B74E240()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_24B75C3C8();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_24B74E5C0;
  }

  else
  {
    v9 = sub_24B74E3A0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B74E3A0()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = *(v0 + 96);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v3 = v0;
  v3[1] = sub_24B74E468;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B74E468()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B75275C(v3, type metadata accessor for ProgramDetailAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B752854, v5, v4);
}

uint64_t sub_24B74E5C0()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_24B74E630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for ProgramDetailAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = *(*(type metadata accessor for WorkoutProgram() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = sub_24B75C3E8();
  v4[7] = sub_24B75C3D8();
  v12 = *(a2 + 24);
  v16 = (*(a2 + 16) + **(a2 + 16));
  v13 = *(*(a2 + 16) + 4);
  v14 = swift_task_alloc();
  v4[8] = v14;
  *v14 = v4;
  v14[1] = sub_24B74E7C0;

  return v16(v11, a3, a4);
}

uint64_t sub_24B74E7C0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v11 = *v1;
  v3[9] = v2;

  v8 = sub_24B75C3C8();
  v3[10] = v8;
  v3[11] = v7;
  if (v2)
  {
    v9 = sub_24B711534;
  }

  else
  {
    v9 = sub_24B74E920;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B74E920()
{
  v1 = v0[3];
  sub_24B7505D8(v0[5], v0[4], type metadata accessor for WorkoutProgram);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v3 = v0;
  v3[1] = sub_24B74EA08;
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B74EA08()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B75275C(v3, type metadata accessor for ProgramDetailAction);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B74EB60, v5, v4);
}

uint64_t sub_24B74EB60()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  sub_24B75275C(v3, type metadata accessor for WorkoutProgram);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B74EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B78, &qword_24B76A030);
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v3 + 48) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B80, &qword_24B76A038);
  *(v3 + 56) = v9;
  v10 = *(v9 - 8);
  *(v3 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = sub_24B75C3E8();
  *(v3 + 88) = sub_24B75C3D8();
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  *(v3 + 96) = *(a2 + 128);
  v17 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 112) = v15;
  *v15 = v3;
  v15[1] = sub_24B74EDE8;

  return v17(v8);
}

uint64_t sub_24B74EDE8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v11 = *v1;
  v3[15] = v2;

  v8 = sub_24B75C3C8();
  v3[16] = v8;
  v3[17] = v7;
  if (v2)
  {
    v9 = sub_24B74F6A0;
  }

  else
  {
    v9 = sub_24B74EF48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B74EF48()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_24B75C428();
  (*(v3 + 8))(v2, v4);
  v5 = v0[10];
  v6 = sub_24B75C3D8();
  v0[18] = v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_24B74F038;
  v9 = v0[9];
  v10 = v0[7];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v6, v11, v10);
}

uint64_t sub_24B74F038()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B74F17C, v5, v4);
}

uint64_t sub_24B74F17C()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = *(v2 + *(type metadata accessor for WorkoutProgram() + 52));

    v5 = sub_24B7527BC(v4);

    v6 = sub_24B751374(v5, v1);
    v0[20] = v6;

    if (*(v6 + 16))
    {
      if (qword_27F033CF0 != -1)
      {
        swift_once();
      }

      v7 = sub_24B75B378();
      __swift_project_value_buffer(v7, qword_27F050B20);
      v8 = sub_24B75B358();
      v9 = sub_24B75C4C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_24B6A5000, v8, v9, "Archived Sessions Updated — refreshing", v10, 2u);
        MEMORY[0x24C248E20](v10, -1, -1);
      }

      v11 = v0[12];

      v26 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[21] = v13;
      *v13 = v0;
      v13[1] = sub_24B74F4A0;
      v14 = v0[13];

      return v26(v6);
    }

    else
    {

      v19 = v0[10];
      v20 = sub_24B75C3D8();
      v0[18] = v20;
      v21 = *(MEMORY[0x277D85798] + 4);
      v22 = swift_task_alloc();
      v0[19] = v22;
      *v22 = v0;
      v22[1] = sub_24B74F038;
      v23 = v0[9];
      v24 = v0[7];
      v25 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 2, v20, v25, v24);
    }
  }

  else
  {
    v16 = v0[11];
    v17 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_24B74F4A0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B74F5E4, v5, v4);
}

uint64_t sub_24B74F5E4()
{
  v1 = v0[10];
  v2 = sub_24B75C3D8();
  v0[18] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_24B74F038;
  v5 = v0[9];
  v6 = v0[7];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v2, v7, v6);
}

uint64_t sub_24B74F6A0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_24B74F71C(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for ProgramDetailAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = a2[1];
  v14 = (*a2 + **a2);
  v11 = (*a2)[1];
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_24B74F870;

  return v14(a3, a4);
}

uint64_t sub_24B74F870()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_24B75C3C8();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_24B74E5C0;
  }

  else
  {
    v9 = sub_24B74F9D0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B74F9D0()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = 0;
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v3 = v0;
  v3[1] = sub_24B74FA94;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B74FA94()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_24B75275C(v3, type metadata accessor for ProgramDetailAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B74FBEC, v5, v4);
}

uint64_t sub_24B74FBEC()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B74FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B75C3E8();
  v3[4] = sub_24B75C3D8();
  v5 = sub_24B75C3C8();

  return MEMORY[0x2822009F8](sub_24B74FCF4, v5, v4);
}

uint64_t sub_24B74FCF4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v4(v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_24B74FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_24B75C3E8();
  v4[3] = sub_24B75C3D8();
  v8 = *(a2 + 72);
  v12 = (*(a2 + 64) + **(a2 + 64));
  v9 = *(*(a2 + 64) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_24B710828;

  return v12(a3, a4);
}

uint64_t sub_24B74FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for ProgramDetailAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_24B75C3E8();
  v4[6] = sub_24B75C3D8();
  v10 = *(a2 + 152);
  v14 = (*(a2 + 144) + **(a2 + 144));
  v11 = *(*(a2 + 144) + 4);
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_24B74FFE0;

  return v14(a3, a4);
}

uint64_t sub_24B74FFE0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_24B75C3C8();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_24B752858;
  }

  else
  {
    v9 = sub_24B750140;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B750140()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = 1;
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B70, &qword_24B76A028);
  *v3 = v0;
  v3[1] = sub_24B74E468;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B750208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B75C3E8();
  v4[5] = sub_24B75C3D8();
  v6 = sub_24B75C3C8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B7502A4, v6, v5);
}

uint64_t sub_24B7502A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = (v1 + *(type metadata accessor for WorkoutProgram() + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(type metadata accessor for WorkoutProgramPreview() + 20);
  v13 = (v4 + *v4);
  v10 = v4[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_24B7503D4;

  return v13(v7, v8, v2 + v9);
}

uint64_t sub_24B7503D4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24B750574;
  }

  else
  {
    v7 = sub_24B750510;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B750510()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B750574()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_24B7505D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B750640(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutProgram() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WorkoutProgramPreview() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B6F3D84;

  return sub_24B750208(a1, v1 + 16, v1 + v5, v1 + v8);
}

uint64_t sub_24B7507B8(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FE8C(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B750864(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FD6C(a1, v1 + 16, v4, v5);
}

uint64_t sub_24B750910(uint64_t a1)
{
  v4 = *(sub_24B75B108() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74FC5C(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B7509EC(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74F71C(a1, (v1 + 16), v4, v5);
}

uint64_t sub_24B750A98(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutProgram() - 8);
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74EBF4(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B750B74(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6F3D84;

  return sub_24B74E0E4(a1, v1 + 16, v4, v5);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return swift_deallocObject();
}

uint64_t sub_24B750CA8(uint64_t a1)
{
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B6C412C;

  return sub_24B74E630(a1, v1 + 16, v4, v5);
}

void sub_24B750E3C()
{
  sub_24B745F48();
  if (v0 <= 0x3F)
  {
    sub_24B75B108();
    if (v1 <= 0x3F)
    {
      sub_24B750ECC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B750ECC()
{
  if (!qword_27F036B58)
  {
    sub_24B75B108();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F036B58);
    }
  }
}

uint64_t sub_24B750F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B750FC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24B75C6D8();
  sub_24B75C358();
  v9 = sub_24B75C718();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24B75C6B8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24B751BC8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24B751114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C528();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24B75C6D8();
      sub_24B75C358();
      result = sub_24B75C718();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24B751374(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24B7515C8(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_24B751538(v12, v6, a2, a1);

    MEMORY[0x24C248E20](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_24B751538(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24B7515C8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B7515C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_24B75C6D8();

      sub_24B75C358();
      v27 = sub_24B75C718();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_24B75C6B8() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24B7519A4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_24B75C6D8();

      sub_24B75C358();
      v41 = sub_24B75C718();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_24B75C6B8() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B7519A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C538();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_24B75C6D8();

    sub_24B75C358();
    result = sub_24B75C718();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B751BC8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24B751114(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24B751D48();
      goto LABEL_16;
    }

    sub_24B751EA4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24B75C6D8();
  sub_24B75C358();
  result = sub_24B75C718();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24B75C6B8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24B75C6C8();
  __break(1u);
  return result;
}

void *sub_24B751D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  v2 = *v0;
  v3 = sub_24B75C518();
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

uint64_t sub_24B751EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B88, &unk_24B76A040);
  result = sub_24B75C528();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24B75C6D8();

      sub_24B75C358();
      result = sub_24B75C718();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24B7520DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B75B108();
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v63 - v11;
  v12 = type metadata accessor for ProgramDetailFeature.TaskIdentifier();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v63 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v63 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B68, &qword_24B76A020);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_24B7505D8(a1, &v63 - v27, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  sub_24B7505D8(a2, v30, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_50;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_50;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_50;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_24B7505D8(v28, v21, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v41 = *v21;
      v40 = v21[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v41 != *v30 || v40 != v30[1])
        {
LABEL_25:
          v43 = v30[1];
          v44 = sub_24B75C6B8();

          if (v44)
          {
            goto LABEL_50;
          }

          goto LABEL_36;
        }

        v58 = v30[1];
        goto LABEL_49;
      }
    }

    else
    {
      sub_24B7505D8(v28, v24, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      v33 = *v24;
      v32 = v24[1];
      if (!swift_getEnumCaseMultiPayload())
      {
        if (v33 != *v30 || v32 != v30[1])
        {
          goto LABEL_25;
        }

        v61 = v30[1];
LABEL_49:

LABEL_50:
        sub_24B75275C(v28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
        v38 = 1;
        return v38 & 1;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24B7505D8(v28, v18, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v67;
      v36 = v68;
      v37 = v64;
      (*(v68 + 32))(v64, v30, v67);
      v38 = sub_24B75B0F8();
      v39 = *(v36 + 8);
      v39(v37, v35);
      v39(v18, v35);
LABEL_47:
      sub_24B75275C(v28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
      return v38 & 1;
    }

    (*(v68 + 8))(v18, v67);
LABEL_42:
    sub_24B6B9CD4(v28, &qword_27F036B68, &qword_24B76A020);
    goto LABEL_43;
  }

  sub_24B7505D8(v28, v15, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
  v46 = *v15;
  v45 = *(v15 + 1);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B20, &qword_24B769E30) + 48);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v68 + 8))(&v15[v47], v67);
LABEL_41:

    goto LABEL_42;
  }

  v49 = *v30;
  v48 = v30[1];
  v50 = *(v68 + 32);
  v51 = &v15[v47];
  v52 = v67;
  v50(v66, v51, v67);
  v53 = v30 + v47;
  v54 = v65;
  v50(v65, v53, v52);
  if (v46 == v49 && v45 == v48)
  {

    goto LABEL_46;
  }

  v56 = sub_24B75C6B8();

  if (v56)
  {
LABEL_46:
    v59 = v66;
    v38 = sub_24B75B0F8();
    v60 = *(v68 + 8);
    v60(v54, v52);
    v60(v59, v52);
    goto LABEL_47;
  }

  v57 = *(v68 + 8);
  v57(v54, v52);
  v57(v66, v52);
LABEL_36:
  sub_24B75275C(v28, type metadata accessor for ProgramDetailFeature.TaskIdentifier);
LABEL_43:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_24B75275C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B7527BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C248710](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24B750FC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t WorkoutContextMenuPreviewContent.init(artwork:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B6B8DE8(a1, a4, &qword_27F0344E8, &unk_24B76A050);
  v7 = type metadata accessor for WorkoutContextMenuPreviewContent();
  sub_24B6B8DE8(a2, a4 + *(v7 + 20), &qword_27F034508, &qword_24B761E50);
  return sub_24B6B8DE8(a3, a4 + *(v7 + 24), &qword_27F034508, &qword_24B761E50);
}

uint64_t sub_24B7528FC()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24B752954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B754150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B75297C(uint64_t a1)
{
  v2 = sub_24B753EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7529B8(uint64_t a1)
{
  v2 = sub_24B753EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutContextMenuPreviewContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036B90, &unk_24B76A060);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B753EC0();
  sub_24B75C738();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  sub_24B753F14(&qword_27F036BA0);
  sub_24B75C668();
  if (!v1)
  {
    v9 = type metadata accessor for WorkoutContextMenuPreviewContent();
    v10 = *(v9 + 20);
    v15 = 1;
    sub_24B75AFE8();
    sub_24B6A8100(&qword_27F035038, MEMORY[0x277CC8C40]);
    sub_24B75C668();
    v11 = *(v9 + 24);
    v14 = 2;
    sub_24B75C668();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutContextMenuPreviewContent.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B75AFE8();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v31 = v1;
  sub_24B6B9D34(v1, &v28 - v18, &qword_27F0344E8, &unk_24B76A050);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    sub_24B6B8DE8(v19, v15, &qword_27F0344C0, &unk_24B763A50);
    sub_24B75C6F8();
    sub_24B75B2B8();
    sub_24B6B9CD4(v15, &qword_27F0344C0, &unk_24B763A50);
  }

  v20 = type metadata accessor for WorkoutContextMenuPreviewContent();
  sub_24B6B9D34(v31 + *(v20 + 20), v10, &qword_27F034508, &qword_24B761E50);
  v21 = v30;
  v22 = *(v30 + 48);
  v23 = v22(v10, 1, v2);
  v24 = v28;
  if (v23 == 1)
  {
    sub_24B75C6F8();
  }

  else
  {
    v25 = v29;
    (*(v21 + 32))(v29, v10, v2);
    sub_24B75C6F8();
    sub_24B6A8100(&qword_27F0354A0, MEMORY[0x277CC8C40]);
    sub_24B75C2C8();
    (*(v21 + 8))(v25, v2);
  }

  sub_24B6B9D34(v31 + *(v20 + 24), v24, &qword_27F034508, &qword_24B761E50);
  if (v22(v24, 1, v2) == 1)
  {
    return sub_24B75C6F8();
  }

  v27 = v29;
  (*(v21 + 32))(v29, v24, v2);
  sub_24B75C6F8();
  sub_24B6A8100(&qword_27F0354A0, MEMORY[0x277CC8C40]);
  sub_24B75C2C8();
  return (*(v21 + 8))(v27, v2);
}

uint64_t WorkoutContextMenuPreviewContent.hashValue.getter()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)();
  return sub_24B75C718();
}

uint64_t WorkoutContextMenuPreviewContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BA8, &qword_24B76A070);
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B753EC0();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v24 = v10;
  v25 = v21;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v39 = 0;
  sub_24B753F14(&qword_27F036BB0);
  v26 = v33;
  v27 = v35;
  sub_24B75C5D8();
  v28 = v25;
  sub_24B6B8DE8(v26, v25, &qword_27F0344E8, &unk_24B76A050);
  sub_24B75AFE8();
  v38 = 1;
  sub_24B6A8100(&qword_27F035080, MEMORY[0x277CC8C40]);
  sub_24B75C5D8();
  sub_24B6B8DE8(v24, v25 + *(v18 + 20), &qword_27F034508, &qword_24B761E50);
  v37 = 2;
  v29 = v31;
  sub_24B75C5D8();
  (*(v34 + 8))(v17, v27);
  sub_24B6B8DE8(v29, v28 + *(v18 + 24), &qword_27F034508, &qword_24B761E50);
  sub_24B753F64(v28, v32);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_24B6C1A6C(v28);
}

uint64_t sub_24B7535CC()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)();
  return sub_24B75C718();
}

uint64_t sub_24B753610()
{
  sub_24B75C6D8();
  WorkoutContextMenuPreviewContent.hash(into:)();
  return sub_24B75C718();
}

BOOL _s20FitnessProductDetail32WorkoutContextMenuPreviewContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = sub_24B75AFE8();
  v64 = *(v68 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v68);
  v60 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F034508, &qword_24B761E50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v59 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v62 = &v57[-v10];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0350C0, &qword_24B762068);
  v11 = *(*(v63 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v63);
  v61 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v65 = &v57[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344C0, &unk_24B763A50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v57[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0344E8, &unk_24B76A050);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v57[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BD8, &unk_24B76A280);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v57[-v27];
  v29 = *(v26 + 56);
  v66 = a1;
  sub_24B6B9D34(a1, &v57[-v27], &qword_27F0344E8, &unk_24B76A050);
  v67 = a2;
  sub_24B6B9D34(a2, &v28[v29], &qword_27F0344E8, &unk_24B76A050);
  v30 = *(v16 + 48);
  if (v30(v28, 1, v15) == 1)
  {
    if (v30(&v28[v29], 1, v15) == 1)
    {
      sub_24B6B9CD4(v28, &qword_27F0344E8, &unk_24B76A050);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_27F036BD8;
    v32 = &unk_24B76A280;
    v33 = v28;
LABEL_21:
    sub_24B6B9CD4(v33, v31, v32);
    return 0;
  }

  sub_24B6B9D34(v28, v23, &qword_27F0344E8, &unk_24B76A050);
  if (v30(&v28[v29], 1, v15) == 1)
  {
    sub_24B6B9CD4(v23, &qword_27F0344C0, &unk_24B763A50);
    goto LABEL_6;
  }

  sub_24B6B8DE8(&v28[v29], v19, &qword_27F0344C0, &unk_24B763A50);
  type metadata accessor for WorkoutContextMenuPreviewArtwork();
  sub_24B6A8100(&qword_27F036BE0, type metadata accessor for WorkoutContextMenuPreviewArtwork);
  v34 = sub_24B75B2A8();
  sub_24B6B9CD4(v19, &qword_27F0344C0, &unk_24B763A50);
  sub_24B6B9CD4(v23, &qword_27F0344C0, &unk_24B763A50);
  sub_24B6B9CD4(v28, &qword_27F0344E8, &unk_24B76A050);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v35 = type metadata accessor for WorkoutContextMenuPreviewContent();
  v36 = *(v35 + 20);
  v37 = v63;
  v38 = *(v63 + 48);
  v39 = v65;
  sub_24B6B9D34(v66 + v36, v65, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(v67 + v36, &v39[v38], &qword_27F034508, &qword_24B761E50);
  v40 = v64;
  v41 = *(v64 + 48);
  v42 = v68;
  if (v41(v39, 1, v68) != 1)
  {
    v43 = v62;
    sub_24B6B9D34(v39, v62, &qword_27F034508, &qword_24B761E50);
    if (v41(&v39[v38], 1, v42) != 1)
    {
      v44 = &v39[v38];
      v45 = v60;
      (*(v40 + 32))(v60, v44, v42);
      sub_24B6A8100(&qword_27F0350D0, MEMORY[0x277CC8C40]);
      v46 = sub_24B75C2D8();
      v42 = v68;
      v58 = v46;
      v47 = *(v40 + 8);
      v47(v45, v68);
      v47(v43, v42);
      sub_24B6B9CD4(v65, &qword_27F034508, &qword_24B761E50);
      if ((v58 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v40 + 8))(v43, v42);
    goto LABEL_13;
  }

  if (v41(&v39[v38], 1, v42) != 1)
  {
LABEL_13:
    v31 = &qword_27F0350C0;
    v32 = &qword_24B762068;
    v33 = v39;
    goto LABEL_21;
  }

  sub_24B6B9CD4(v39, &qword_27F034508, &qword_24B761E50);
LABEL_15:
  v48 = *(v35 + 24);
  v49 = *(v37 + 48);
  v50 = v61;
  sub_24B6B9D34(v66 + v48, v61, &qword_27F034508, &qword_24B761E50);
  sub_24B6B9D34(v67 + v48, &v50[v49], &qword_27F034508, &qword_24B761E50);
  if (v41(v50, 1, v42) == 1)
  {
    if (v41(&v50[v49], 1, v42) == 1)
    {
      sub_24B6B9CD4(v50, &qword_27F034508, &qword_24B761E50);
      return 1;
    }

    goto LABEL_20;
  }

  v51 = v59;
  sub_24B6B9D34(v50, v59, &qword_27F034508, &qword_24B761E50);
  if (v41(&v50[v49], 1, v42) == 1)
  {
    (*(v40 + 8))(v51, v42);
LABEL_20:
    v31 = &qword_27F0350C0;
    v32 = &qword_24B762068;
    v33 = v50;
    goto LABEL_21;
  }

  v53 = &v50[v49];
  v54 = v60;
  (*(v40 + 32))(v60, v53, v42);
  sub_24B6A8100(&qword_27F0350D0, MEMORY[0x277CC8C40]);
  v55 = sub_24B75C2D8();
  v56 = *(v40 + 8);
  v56(v54, v42);
  v56(v51, v42);
  sub_24B6B9CD4(v50, &qword_27F034508, &qword_24B761E50);
  return (v55 & 1) != 0;
}

unint64_t sub_24B753EC0()
{
  result = qword_27F036B98;
  if (!qword_27F036B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036B98);
  }

  return result;
}

uint64_t sub_24B753F14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0344C0, &unk_24B763A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B753F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutContextMenuPreviewContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B75404C()
{
  result = qword_27F036BC0;
  if (!qword_27F036BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BC0);
  }

  return result;
}

unint64_t sub_24B7540A4()
{
  result = qword_27F036BC8;
  if (!qword_27F036BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BC8);
  }

  return result;
}

unint64_t sub_24B7540FC()
{
  result = qword_27F036BD0;
  if (!qword_27F036BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036BD0);
  }

  return result;
}

uint64_t sub_24B754150(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B754278()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x656C756465686373;
  v4 = 0x6B63617473;
  if (v1 != 3)
  {
    v4 = 0x616C696176616E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636E65636572;
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

uint64_t sub_24B754318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B755B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B754340(uint64_t a1)
{
  v2 = sub_24B754B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75437C(uint64_t a1)
{
  v2 = sub_24B754B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7543B8(uint64_t a1)
{
  v2 = sub_24B754CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7543F4(uint64_t a1)
{
  v2 = sub_24B754CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754430(uint64_t a1)
{
  v2 = sub_24B754CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75446C(uint64_t a1)
{
  v2 = sub_24B754CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7544A8(uint64_t a1)
{
  v2 = sub_24B754C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7544E4(uint64_t a1)
{
  v2 = sub_24B754C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754520(uint64_t a1)
{
  v2 = sub_24B754BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75455C(uint64_t a1)
{
  v2 = sub_24B754BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B754598(uint64_t a1)
{
  v2 = sub_24B754BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7545D4(uint64_t a1)
{
  v2 = sub_24B754BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkOverlayTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BE8, &qword_24B76A290);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BF0, &qword_24B76A298);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036BF8, &qword_24B76A2A0);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C00, &qword_24B76A2A8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C08, &qword_24B76A2B0);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C10, &qword_24B76A2B8);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_24B754B50();
  sub_24B75C738();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_24B754CA0();
      v38 = v52;
      sub_24B75C638();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_24B754CF4();
      v38 = v52;
      sub_24B75C638();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_24B754C4C();
      v29 = v40;
      v30 = v52;
      sub_24B75C638();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_24B754BF8();
      v29 = v43;
      v30 = v52;
      sub_24B75C638();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_24B754BA4();
      v29 = v46;
      v30 = v52;
      sub_24B75C638();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_24B754B50()
{
  result = qword_27F036C18;
  if (!qword_27F036C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C18);
  }

  return result;
}

unint64_t sub_24B754BA4()
{
  result = qword_27F036C20;
  if (!qword_27F036C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C20);
  }

  return result;
}

unint64_t sub_24B754BF8()
{
  result = qword_27F036C28;
  if (!qword_27F036C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C28);
  }

  return result;
}

unint64_t sub_24B754C4C()
{
  result = qword_27F036C30;
  if (!qword_27F036C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C30);
  }

  return result;
}

unint64_t sub_24B754CA0()
{
  result = qword_27F036C38;
  if (!qword_27F036C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C38);
  }

  return result;
}

unint64_t sub_24B754CF4()
{
  result = qword_27F036C40;
  if (!qword_27F036C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C40);
  }

  return result;
}

uint64_t ArtworkOverlayTag.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C48, &qword_24B76A2C0);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C50, &qword_24B76A2C8);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C58, &qword_24B76A2D0);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C60, &qword_24B76A2D8);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C68, &qword_24B76A2E0);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036C70, &unk_24B76A2E8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24B754B50();
  v26 = v69;
  sub_24B75C728();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_24B75C628();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_24B6B9E10();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_24B75C568();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v41 = &type metadata for ArtworkOverlayTag;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_24B754CA0();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_24B75C598();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_24B754CF4();
      v45 = v54;
      sub_24B75C598();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_24B754C4C();
    v46 = v31;
    v47 = v54;
    sub_24B75C598();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_24B754BA4();
    v49 = v64;
    v50 = v54;
    sub_24B75C598();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_24B754BF8();
  v38 = v54;
  sub_24B75C598();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t ArtworkOverlayTag.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B7555EC()
{
  result = qword_27F036C78;
  if (!qword_27F036C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C78);
  }

  return result;
}

unint64_t sub_24B7556B4()
{
  result = qword_27F036C80;
  if (!qword_27F036C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C80);
  }

  return result;
}

unint64_t sub_24B75570C()
{
  result = qword_27F036C88;
  if (!qword_27F036C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C88);
  }

  return result;
}

unint64_t sub_24B755764()
{
  result = qword_27F036C90;
  if (!qword_27F036C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C90);
  }

  return result;
}

unint64_t sub_24B7557BC()
{
  result = qword_27F036C98;
  if (!qword_27F036C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036C98);
  }

  return result;
}

unint64_t sub_24B755814()
{
  result = qword_27F036CA0;
  if (!qword_27F036CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CA0);
  }

  return result;
}

unint64_t sub_24B75586C()
{
  result = qword_27F036CA8;
  if (!qword_27F036CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CA8);
  }

  return result;
}

unint64_t sub_24B7558C4()
{
  result = qword_27F036CB0;
  if (!qword_27F036CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CB0);
  }

  return result;
}

unint64_t sub_24B75591C()
{
  result = qword_27F036CB8;
  if (!qword_27F036CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CB8);
  }

  return result;
}

unint64_t sub_24B755974()
{
  result = qword_27F036CC0;
  if (!qword_27F036CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CC0);
  }

  return result;
}

unint64_t sub_24B7559CC()
{
  result = qword_27F036CC8;
  if (!qword_27F036CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CC8);
  }

  return result;
}

unint64_t sub_24B755A24()
{
  result = qword_27F036CD0;
  if (!qword_27F036CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CD0);
  }

  return result;
}

unint64_t sub_24B755A7C()
{
  result = qword_27F036CD8;
  if (!qword_27F036CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CD8);
  }

  return result;
}

unint64_t sub_24B755AD4()
{
  result = qword_27F036CE0;
  if (!qword_27F036CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036CE0);
  }

  return result;
}

uint64_t sub_24B755B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E65636572 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B75C6B8();

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

uint64_t sub_24B755D00()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_24B755DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B756A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B755DDC(uint64_t a1)
{
  v2 = sub_24B756718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755E18(uint64_t a1)
{
  v2 = sub_24B756718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755E54(uint64_t a1)
{
  v2 = sub_24B75676C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755E90(uint64_t a1)
{
  v2 = sub_24B75676C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755ECC(uint64_t a1)
{
  v2 = sub_24B756910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755F08(uint64_t a1)
{
  v2 = sub_24B756910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755F44(uint64_t a1)
{
  v2 = sub_24B7567C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755F80(uint64_t a1)
{
  v2 = sub_24B7567C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B755FBC(uint64_t a1)
{
  v2 = sub_24B756814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B755FF8(uint64_t a1)
{
  v2 = sub_24B756814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B756034(uint64_t a1)
{
  v2 = sub_24B756868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B756070(uint64_t a1)
{
  v2 = sub_24B756868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7560AC(uint64_t a1)
{
  v2 = sub_24B7568BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7560E8(uint64_t a1)
{
  v2 = sub_24B7568BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialDetailSizeClass.encode(to:)(void *a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CE8, &qword_24B76A8B0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CF0, &qword_24B76A8B8);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036CF8, &qword_24B76A8C0);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D00, &qword_24B76A8C8);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D08, &qword_24B76A8D0);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D10, &qword_24B76A8D8);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036D18, &qword_24B76A8E0);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B756718();
  sub_24B75C738();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_24B756814();
      v32 = v42;
      v33 = v51;
      sub_24B75C638();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_24B7567C0();
      v32 = v45;
      v33 = v51;
      sub_24B75C638();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_24B75676C();
      v32 = v48;
      v33 = v51;
      sub_24B75C638();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_24B7568BC();
      v30 = v51;
      sub_24B75C638();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_24B756868();
    v33 = v51;
    sub_24B75C638();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_24B756910();
    v33 = v51;
    sub_24B75C638();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

unint64_t sub_24B756718()
{
  result = qword_27F036D20;
  if (!qword_27F036D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D20);
  }

  return result;
}

unint64_t sub_24B75676C()
{
  result = qword_27F036D28;
  if (!qword_27F036D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D28);
  }

  return result;
}

unint64_t sub_24B7567C0()
{
  result = qword_27F036D30;
  if (!qword_27F036D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D30);
  }

  return result;
}

unint64_t sub_24B756814()
{
  result = qword_27F036D38;
  if (!qword_27F036D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D38);
  }

  return result;
}

unint64_t sub_24B756868()
{
  result = qword_27F036D40;
  if (!qword_27F036D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D40);
  }

  return result;
}

unint64_t sub_24B7568BC()
{
  result = qword_27F036D48;
  if (!qword_27F036D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D48);
  }

  return result;
}

unint64_t sub_24B756910()
{
  result = qword_27F036D50;
  if (!qword_27F036D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D50);
  }

  return result;
}

uint64_t sub_24B75697C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B756C44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t EditorialDetailSizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1);
  return sub_24B75C718();
}

uint64_t sub_24B756A44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_24B75C6B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_24B75C6B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B75C6B8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B756C44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DD8, &qword_24B76AF80);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DE0, &qword_24B76AF88);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DE8, &qword_24B76AF90);
  v56 = *(v53 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v63 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DF0, &qword_24B76AF98);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036DF8, &qword_24B76AFA0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E00, &qword_24B76AFA8);
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E08, &unk_24B76AFB0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B756718();
  v29 = v65;
  sub_24B75C728();
  if (!v29)
  {
    v30 = v21;
    v48 = v18;
    v49 = v17;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v65 = v23;
    v34 = sub_24B75C628();
    v35 = (2 * *(v34 + 16)) | 1;
    v67 = v34;
    v68 = v34 + 32;
    v69 = 0;
    v70 = v35;
    v36 = sub_24B6B9E14();
    v37 = v26;
    if (v36 != 6 && v69 == v70 >> 1)
    {
      v23 = v36;
      if (v36 > 2u)
      {
        if (v36 != 3)
        {
          v46 = v65;
          if (v36 == 4)
          {
            v71 = 4;
            sub_24B7567C0();
            sub_24B75C598();
            (*(v58 + 8))(v33, v57);
          }

          else
          {
            v71 = 5;
            sub_24B75676C();
            v47 = v61;
            sub_24B75C598();
            (*(v59 + 8))(v47, v60);
          }

          (*(v46 + 8))(v37, v22);
          goto LABEL_21;
        }

        v71 = 3;
        sub_24B756814();
        sub_24B75C598();
        v38 = v65;
        (*(v56 + 8))(v32, v53);
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v71 = 1;
          sub_24B7568BC();
          v31 = v49;
          sub_24B75C598();
          v38 = v65;
          v40 = v51;
          v39 = v52;
        }

        else
        {
          v71 = 2;
          sub_24B756868();
          sub_24B75C598();
          v38 = v65;
          v40 = v54;
          v39 = v55;
        }

        (*(v40 + 8))(v31, v39);
      }

      else
      {
        v71 = 0;
        sub_24B756910();
        sub_24B75C598();
        (*(v50 + 8))(v30, v48);
        v38 = v65;
      }

      (*(v38 + 8))(v26, v22);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return v23;
    }

    v41 = sub_24B75C568();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v43 = &type metadata for EditorialDetailSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v65 + 8))(v26, v22);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return v23;
}

unint64_t sub_24B75742C()
{
  result = qword_27F036D58;
  if (!qword_27F036D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D58);
  }

  return result;
}

unint64_t sub_24B757504()
{
  result = qword_27F036D60;
  if (!qword_27F036D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D60);
  }

  return result;
}

unint64_t sub_24B75755C()
{
  result = qword_27F036D68;
  if (!qword_27F036D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D68);
  }

  return result;
}

unint64_t sub_24B7575B4()
{
  result = qword_27F036D70;
  if (!qword_27F036D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D70);
  }

  return result;
}

unint64_t sub_24B75760C()
{
  result = qword_27F036D78;
  if (!qword_27F036D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D78);
  }

  return result;
}

unint64_t sub_24B757664()
{
  result = qword_27F036D80;
  if (!qword_27F036D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D80);
  }

  return result;
}

unint64_t sub_24B7576BC()
{
  result = qword_27F036D88;
  if (!qword_27F036D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D88);
  }

  return result;
}

unint64_t sub_24B757714()
{
  result = qword_27F036D90;
  if (!qword_27F036D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D90);
  }

  return result;
}

unint64_t sub_24B75776C()
{
  result = qword_27F036D98;
  if (!qword_27F036D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036D98);
  }

  return result;
}

unint64_t sub_24B7577C4()
{
  result = qword_27F036DA0;
  if (!qword_27F036DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DA0);
  }

  return result;
}

unint64_t sub_24B75781C()
{
  result = qword_27F036DA8;
  if (!qword_27F036DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DA8);
  }

  return result;
}

unint64_t sub_24B757874()
{
  result = qword_27F036DB0;
  if (!qword_27F036DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DB0);
  }

  return result;
}

unint64_t sub_24B7578CC()
{
  result = qword_27F036DB8;
  if (!qword_27F036DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DB8);
  }

  return result;
}

unint64_t sub_24B757924()
{
  result = qword_27F036DC0;
  if (!qword_27F036DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DC0);
  }

  return result;
}

unint64_t sub_24B75797C()
{
  result = qword_27F036DC8;
  if (!qword_27F036DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DC8);
  }

  return result;
}

unint64_t sub_24B7579D4()
{
  result = qword_27F036DD0;
  if (!qword_27F036DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036DD0);
  }

  return result;
}

uint64_t WorkoutSchedule.init(nextWorkout:additionalDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24B75B1D8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WorkoutSchedule();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24B757AB0()
{
  if (*v0)
  {
    result = 0x6E6F697469646461;
  }

  else
  {
    result = 0x6B726F577478656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_24B757B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F577478656ELL && a2 == 0xEB0000000074756FLL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE00737961446C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B757BE8(uint64_t a1)
{
  v2 = sub_24B757E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B757C24(uint64_t a1)
{
  v2 = sub_24B757E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E10, &qword_24B76AFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B757E04();
  sub_24B75C738();
  v13[15] = 0;
  sub_24B75B1D8();
  sub_24B758180(&qword_27F036E20);
  sub_24B75C6A8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for WorkoutSchedule() + 20));
    v13[14] = 1;
    sub_24B75C698();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B757E04()
{
  result = qword_27F036E18;
  if (!qword_27F036E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E18);
  }

  return result;
}

uint64_t WorkoutSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_24B75B1D8();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E28, &qword_24B76AFC8);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for WorkoutSchedule();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B757E04();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_24B758180(&qword_27F036E30);
  v16 = v24;
  sub_24B75C618();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = sub_24B75C608();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18;
  sub_24B7581C4(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B758228(v17);
}

uint64_t sub_24B758180(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24B75B1D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B7581C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSchedule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B758228(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSchedule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static WorkoutSchedule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24B75B1B8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WorkoutSchedule();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

unint64_t sub_24B758394()
{
  result = qword_27F036E38;
  if (!qword_27F036E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E38);
  }

  return result;
}

unint64_t sub_24B7583EC()
{
  result = qword_27F036E40;
  if (!qword_27F036E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E40);
  }

  return result;
}

unint64_t sub_24B758444()
{
  result = qword_27F036E48;
  if (!qword_27F036E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E48);
  }

  return result;
}

uint64_t sub_24B7584B0()
{
  if (*v0)
  {
    result = 0x72657474697774;
  }

  else
  {
    result = 0x6172676174736E69;
  }

  *v0;
  return result;
}

uint64_t sub_24B7584F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172676174736E69 && a2 == 0xE90000000000006DLL;
  if (v6 || (sub_24B75C6B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72657474697774 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B75C6B8();

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

uint64_t sub_24B7585D4(uint64_t a1)
{
  v2 = sub_24B7589EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758610(uint64_t a1)
{
  v2 = sub_24B7589EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75864C(uint64_t a1)
{
  v2 = sub_24B758A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758688(uint64_t a1)
{
  v2 = sub_24B758A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7586C4(uint64_t a1)
{
  v2 = sub_24B758A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B758700(uint64_t a1)
{
  v2 = sub_24B758A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutProgramLinkPlatform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E50, &qword_24B76B180);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E58, &qword_24B76B188);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E60, &qword_24B76B190);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7589EC();
  sub_24B75C738();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B758A40();
    v18 = v22;
    sub_24B75C638();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B758A94();
    sub_24B75C638();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24B7589EC()
{
  result = qword_27F036E68;
  if (!qword_27F036E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E68);
  }

  return result;
}

unint64_t sub_24B758A40()
{
  result = qword_27F036E70;
  if (!qword_27F036E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E70);
  }

  return result;
}

unint64_t sub_24B758A94()
{
  result = qword_27F036E78;
  if (!qword_27F036E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E78);
  }

  return result;
}

uint64_t WorkoutProgramLinkPlatform.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E80, &qword_24B76B198);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E88, &qword_24B76B1A0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036E90, &unk_24B76B1A8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7589EC();
  v16 = v36;
  sub_24B75C728();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24B75C628();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24B6B9E04();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24B75C568();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
      *v26 = &type metadata for WorkoutProgramLinkPlatform;
      sub_24B75C5A8();
      sub_24B75C558();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24B758A40();
        sub_24B75C598();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24B758A94();
        sub_24B75C598();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t WorkoutProgramLinkPlatform.hashValue.getter()
{
  v1 = *v0;
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](v1);
  return sub_24B75C718();
}

unint64_t sub_24B75904C()
{
  result = qword_27F036E98;
  if (!qword_27F036E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036E98);
  }

  return result;
}

unint64_t sub_24B7590E4()
{
  result = qword_27F036EA0;
  if (!qword_27F036EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EA0);
  }

  return result;
}

unint64_t sub_24B75913C()
{
  result = qword_27F036EA8;
  if (!qword_27F036EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EA8);
  }

  return result;
}

unint64_t sub_24B759194()
{
  result = qword_27F036EB0;
  if (!qword_27F036EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EB0);
  }

  return result;
}

unint64_t sub_24B7591EC()
{
  result = qword_27F036EB8;
  if (!qword_27F036EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EB8);
  }

  return result;
}

unint64_t sub_24B759244()
{
  result = qword_27F036EC0;
  if (!qword_27F036EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EC0);
  }

  return result;
}

unint64_t sub_24B75929C()
{
  result = qword_27F036EC8;
  if (!qword_27F036EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EC8);
  }

  return result;
}

unint64_t sub_24B7592F4()
{
  result = qword_27F036ED0;
  if (!qword_27F036ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036ED0);
  }

  return result;
}

uint64_t EditorialPreview.streamingProgramIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialPreview.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialPreview() + 20);
  v4 = sub_24B75B108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialPreview.init(streamingProgramIdentifier:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EditorialPreview() + 20);
  v7 = sub_24B75B108();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_24B759478(uint64_t a1)
{
  v2 = sub_24B7596A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7594B4(uint64_t a1)
{
  v2 = sub_24B7596A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036ED8, &qword_24B76B530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7596A8();
  sub_24B75C738();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_24B75C648();
  if (!v2)
  {
    v13 = *(type metadata accessor for EditorialPreview() + 20);
    v15[14] = 1;
    sub_24B75B108();
    sub_24B6A737C(&qword_27F0341E0, MEMORY[0x277CC9260]);
    sub_24B75C6A8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B7596A8()
{
  result = qword_27F036EE0;
  if (!qword_27F036EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EE0);
  }

  return result;
}

uint64_t EditorialPreview.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_24B75B108();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036EE8, &qword_24B76B538);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for EditorialPreview();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7596A8();
  sub_24B75C728();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v16 = v24;
  v15 = v25;
  v28 = 0;
  v17 = v26;
  *v13 = sub_24B75C5B8();
  v13[1] = v18;
  v20[1] = v18;
  v27 = 1;
  sub_24B6A737C(&qword_27F0341F8, MEMORY[0x277CC9260]);
  sub_24B75C618();
  (*(v16 + 8))(v9, v17);
  (*(v22 + 32))(v13 + *(v21 + 20), v6, v15);
  sub_24B759A04(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B759A68(v13);
}

uint64_t sub_24B759A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B759A68(uint64_t a1)
{
  v2 = type metadata accessor for EditorialPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EditorialPreview.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1;
      v7 = *a1 == *a2 && v4 == v5;
      if (v7 || (sub_24B75C6B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v8 = *(type metadata accessor for EditorialPreview() + 20);

  return sub_24B75B0F8();
}

uint64_t EditorialPreview.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v2 = *(type metadata accessor for EditorialPreview() + 20);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t EditorialPreview.hashValue.getter()
{
  sub_24B75C6D8();
  if (v0[1])
  {
    v1 = *v0;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v2 = *(type metadata accessor for EditorialPreview() + 20);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B759D28(uint64_t a1)
{
  sub_24B75C6D8();
  if (v1[1])
  {
    v3 = *v1;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v4 = *(a1 + 20);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

uint64_t sub_24B759E08(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = *v2;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260]);
  return sub_24B75C2C8();
}

uint64_t sub_24B759ED0(uint64_t a1, uint64_t a2)
{
  sub_24B75C6D8();
  if (v2[1])
  {
    v4 = *v2;
    sub_24B75C6F8();
    sub_24B75C358();
  }

  else
  {
    sub_24B75C6F8();
  }

  v5 = *(a2 + 20);
  sub_24B75B108();
  sub_24B6A737C(&qword_27F034130, MEMORY[0x277CC9260]);
  sub_24B75C2C8();
  return sub_24B75C718();
}

unint64_t sub_24B75A030()
{
  result = qword_27F036EF8;
  if (!qword_27F036EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036EF8);
  }

  return result;
}

unint64_t sub_24B75A088()
{
  result = qword_27F036F00;
  if (!qword_27F036F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F00);
  }

  return result;
}

unint64_t sub_24B75A0E0()
{
  result = qword_27F036F08;
  if (!qword_27F036F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F08);
  }

  return result;
}

uint64_t sub_24B75A144(uint64_t a1)
{
  v2 = sub_24B75A568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A180(uint64_t a1)
{
  v2 = sub_24B75A568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75A1BC(uint64_t a1)
{
  v2 = sub_24B75A610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A1F8(uint64_t a1)
{
  v2 = sub_24B75A610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B75A234(uint64_t a1)
{
  v2 = sub_24B75A5BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B75A270(uint64_t a1)
{
  v2 = sub_24B75A5BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProgramDetailSizeClass.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F10, &qword_24B76B740);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F18, &qword_24B76B748);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F20, &qword_24B76B750);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B75A568();
  sub_24B75C738();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B75A5BC();
    sub_24B75C638();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B75A610();
    sub_24B75C638();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B75A568()
{
  result = qword_27F036F28;
  if (!qword_27F036F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F28);
  }

  return result;
}

unint64_t sub_24B75A5BC()
{
  result = qword_27F036F30;
  if (!qword_27F036F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F30);
  }

  return result;
}

unint64_t sub_24B75A610()
{
  result = qword_27F036F38;
  if (!qword_27F036F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F38);
  }

  return result;
}

uint64_t sub_24B75A680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B75A73C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ProgramDetailSizeClass.hashValue.getter(char a1)
{
  sub_24B75C6D8();
  MEMORY[0x24C2489B0](a1 & 1);
  return sub_24B75C718();
}

uint64_t sub_24B75A73C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F80, &qword_24B76BAD0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F036F88, &qword_24B76BAD8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F036F90, &unk_24B76BAE0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B75A568();
  v15 = v32;
  sub_24B75C728();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B75C628();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B6B9E04();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B75C568();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F033EA0, &qword_24B75D5D0) + 48);
    *v24 = &type metadata for ProgramDetailSizeClass;
    sub_24B75C5A8();
    sub_24B75C558();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
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
    sub_24B75A5BC();
    sub_24B75C598();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B75A610();
    sub_24B75C598();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B75ABFC()
{
  result = qword_27F036F40;
  if (!qword_27F036F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F40);
  }

  return result;
}

unint64_t sub_24B75AC94()
{
  result = qword_27F036F48;
  if (!qword_27F036F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F48);
  }

  return result;
}

unint64_t sub_24B75ACEC()
{
  result = qword_27F036F50;
  if (!qword_27F036F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F50);
  }

  return result;
}

unint64_t sub_24B75AD44()
{
  result = qword_27F036F58;
  if (!qword_27F036F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F58);
  }

  return result;
}

unint64_t sub_24B75AD9C()
{
  result = qword_27F036F60;
  if (!qword_27F036F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F60);
  }

  return result;
}

unint64_t sub_24B75ADF4()
{
  result = qword_27F036F68;
  if (!qword_27F036F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F68);
  }

  return result;
}

unint64_t sub_24B75AE4C()
{
  result = qword_27F036F70;
  if (!qword_27F036F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F70);
  }

  return result;
}

unint64_t sub_24B75AEA4()
{
  result = qword_27F036F78;
  if (!qword_27F036F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F036F78);
  }

  return result;
}