uint64_t sub_243FECF48()
{

  return swift_deallocObject();
}

void sub_243FECF88()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_2440D2F80();
    [v3 reportGuidanceUpdateWithVisible:v1 trigger:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_243FED020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243FED068(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FED0BC()
{

  return swift_deallocObject();
}

void *sub_243FED0F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result reportProxEventInRange:v1 inRangeTime:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_243FED1CC@<Q0>(uint64_t a1@<X8>)
{
  sub_243FF4D64(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243FED228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v81 = sub_2440D1B10();
  v5 = *(v81 - 8);
  v6 = MEMORY[0x28223BE20](v81);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AD0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v78 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AD8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AE0);
  MEMORY[0x28223BE20](v79);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AE8);
  MEMORY[0x28223BE20](v20 - 8);
  v83 = &v78 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AF0);
  MEMORY[0x28223BE20](v82);
  v85 = &v78 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2AF8);
  MEMORY[0x28223BE20](v84);
  v87 = &v78 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B00);
  MEMORY[0x28223BE20](v86);
  v88 = &v78 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B08);
  MEMORY[0x28223BE20](v89);
  v90 = &v78 - v25;
  sub_2440D1650();
  v27 = v26 / 22.0;
  sub_2440D1650();
  sub_244070B60();
  v28 = v27 * 15.0;
  v29 = sub_244070B54();
  if (*v29 < v27 * 15.0)
  {
    v28 = *v29;
  }

  v30 = v27 + v27;
  if (v30 > 40.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 40.0;
  }

  *v13 = sub_2440D2AE0();
  v13[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B10);
  sub_243FEDB8C(a2, a1, v13 + *(v33 + 44), v31, v28);
  v34 = sub_2440D1860();
  v35 = sub_2440D20D0();
  v36 = v13 + *(v11 + 44);
  *v36 = v34;
  v36[8] = v35;
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v13, v17, &qword_27EDC2AD0);
  v37 = &v17[*(v15 + 44)];
  v38 = v98;
  *(v37 + 4) = v97;
  *(v37 + 5) = v38;
  *(v37 + 6) = v99;
  v39 = v94;
  *v37 = *&v93[104];
  *(v37 + 1) = v39;
  v40 = v96;
  *(v37 + 2) = v95;
  *(v37 + 3) = v40;
  sub_2440D1B00();
  v41 = v81;
  (*(v5 + 16))(v80, v9, v81);
  sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v42 = v41;
  v43 = sub_2440D1610();
  (*(v5 + 8))(v9, v42);
  v44 = v79;
  v45 = sub_243F681C8(v17, v19, &qword_27EDC2AD8);
  *&v19[*(v44 + 36)] = v43;
  v46 = *(a2 + 72);
  v47 = (*(*v46 + 552))(v45);
  if (sub_2440B446C(v47 & 1))
  {
    (*(*v46 + 456))(v100);
    if (v100[5])
    {
      sub_243F5EED4(v100, &qword_27EDBFF68);
    }
  }

  sub_243FF5358();
  v48 = v83;
  sub_2440D2480();
  sub_243F5EED4(v19, &qword_27EDC2AE0);
  v49 = sub_2440D2690();
  v50 = sub_2440D20B0();
  v51 = v85;
  sub_243F681C8(v48, v85, &qword_27EDC2AE8);
  v52 = v51 + *(v82 + 36);
  *v52 = v49;
  *(v52 + 8) = v50;
  v101 = *(a2 + 24);
  v53 = *(&v101 + 1);
  type metadata accessor for PINViewModel();
  sub_243FF713C(&qword_27EDC0B80, type metadata accessor for PINViewModel);
  v54 = sub_2440D12E0();
  v55 = v51;
  v56 = v87;
  sub_243F681C8(v55, v87, &qword_27EDC2AF0);
  v57 = (v56 + *(v84 + 36));
  *v57 = v54;
  v57[1] = v53;
  v58 = swift_allocObject();
  v59 = *(a2 + 80);
  *(v58 + 80) = *(a2 + 64);
  *(v58 + 96) = v59;
  *(v58 + 112) = *(a2 + 96);
  v60 = *(a2 + 16);
  *(v58 + 16) = *a2;
  *(v58 + 32) = v60;
  v61 = *(a2 + 48);
  *(v58 + 48) = *(a2 + 32);
  *(v58 + 64) = v61;
  v62 = v56;
  v63 = v88;
  sub_243F681C8(v62, v88, &qword_27EDC2AF8);
  v64 = (v63 + *(v86 + 36));
  *v64 = sub_243FF5554;
  v64[1] = v58;
  v64[2] = 0;
  v64[3] = 0;
  v65 = swift_allocObject();
  v66 = *(a2 + 80);
  *(v65 + 80) = *(a2 + 64);
  *(v65 + 96) = v66;
  *(v65 + 112) = *(a2 + 96);
  v67 = *(a2 + 16);
  *(v65 + 16) = *a2;
  *(v65 + 32) = v67;
  v68 = *(a2 + 48);
  *(v65 + 48) = *(a2 + 32);
  *(v65 + 64) = v68;
  v69 = v90;
  sub_243F681C8(v63, v90, &qword_27EDC2B00);
  v70 = (v69 + *(v89 + 36));
  *v70 = 0;
  v70[1] = 0;
  v70[2] = sub_243FF5664;
  v70[3] = v65;
  v71 = *(*v53 + 352);
  sub_243FF4EFC(a2, v93);
  sub_243FF4EFC(a2, v93);
  v72 = sub_243F5F574(&v101, v93, &qword_27EDC2B40);
  v92 = v71(v72) & 1;
  v73 = swift_allocObject();
  v74 = *(a2 + 80);
  *(v73 + 80) = *(a2 + 64);
  *(v73 + 96) = v74;
  *(v73 + 112) = *(a2 + 96);
  v75 = *(a2 + 16);
  *(v73 + 16) = *a2;
  *(v73 + 32) = v75;
  v76 = *(a2 + 48);
  *(v73 + 48) = *(a2 + 32);
  *(v73 + 64) = v76;
  sub_243FF4EFC(a2, v93);
  sub_243FF579C();
  sub_2440D25E0();

  return sub_243F5EED4(v69, &qword_27EDC2B08);
}

uint64_t sub_243FEDB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D3>)
{
  v233 = a2;
  v272 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B80);
  v228 = *(v8 - 8);
  v229 = v8;
  MEMORY[0x28223BE20](v8);
  v226 = &v222 - v9;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B88);
  v10 = MEMORY[0x28223BE20](v223);
  v225 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v224 = (&v222 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B90);
  v266 = *(v13 - 8);
  v267 = v13;
  MEMORY[0x28223BE20](v13);
  v227 = &v222 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2B98);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v271 = &v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v279 = &v222 - v18;
  v19 = sub_2440D1F60();
  v264 = *(v19 - 8);
  v265 = v19;
  MEMORY[0x28223BE20](v19);
  v263 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2440D1B10();
  v261 = *(v21 - 8);
  v262 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v259 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v260 = &v222 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BA0);
  MEMORY[0x28223BE20](v25 - 8);
  v231 = (&v222 - v26);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BA8);
  v27 = MEMORY[0x28223BE20](v246);
  v230 = &v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v232 = &v222 - v29;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BB0);
  MEMORY[0x28223BE20](v243);
  v245 = &v222 - v30;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BB8);
  MEMORY[0x28223BE20](v244);
  v222 = (&v222 - v31);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BC0);
  v249 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v273 = &v222 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BC8);
  MEMORY[0x28223BE20](v33 - 8);
  v274 = &v222 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BD0);
  MEMORY[0x28223BE20](v35 - 8);
  v250 = &v222 - v36;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BD8);
  MEMORY[0x28223BE20](v248);
  v254 = &v222 - v37;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BE0);
  MEMORY[0x28223BE20](v253);
  v252 = &v222 - v38;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BE8);
  MEMORY[0x28223BE20](v256);
  v255 = &v222 - v39;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BF0);
  MEMORY[0x28223BE20](v257);
  v258 = &v222 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2BF8);
  v269 = *(v41 - 8);
  v270 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v268 = &v222 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v281 = &v222 - v44;
  v237 = sub_2440D2AC0();
  v45 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v47 = &v222 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C00);
  v48 = MEMORY[0x28223BE20](v235);
  v50 = &v222 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v222 - v51;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C08);
  MEMORY[0x28223BE20](v234);
  v54 = &v222 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C10);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v222 - v56;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C18);
  MEMORY[0x28223BE20](v239);
  v238 = &v222 - v58;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C20);
  MEMORY[0x28223BE20](v236);
  v242 = (&v222 - v59);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C28);
  v247 = *(v275 - 1);
  v60 = MEMORY[0x28223BE20](v275);
  v241 = &v222 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v240 = &v222 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C30);
  v64 = MEMORY[0x28223BE20](v63 - 8);
  v277 = &v222 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v67 = &v222 - v66;
  v332 = *(a1 + 40);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v278 = a1;
  v280 = v67;
  if (v315 == 1)
  {
    v68 = sub_2440D2AA0();
    if ((*(**(a1 + 72) + 352))(v68))
    {
      v69 = 1.0;
    }

    else
    {
      v69 = 0.0;
    }

    (*(v45 + 32))(v52, v47, v237);
    v70 = v235;
    *&v52[*(v235 + 36)] = v69;
    sub_243F681C8(v52, v54, &qword_27EDC2C00);
    v71 = v234;
    *&v54[*(v234 + 56)] = 256;
    sub_2440D2AA0();
    *&v50[*(v70 + 36)] = 1060320051;
    sub_243F5F574(v50, v57, &qword_27EDC2C00);
    *&v57[*(v71 + 56)] = 256;
    v72 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CD0) + 36)];
    sub_243F5F574(v54, v72, &qword_27EDC2C08);
    v73 = sub_2440D2B00();
    v75 = v74;
    sub_243F5EED4(v50, &qword_27EDC2C00);
    a1 = v278;
    sub_243F5EED4(v54, &qword_27EDC2C08);
    v76 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CD8) + 36));
    *v76 = v73;
    v76[1] = v75;
    v77 = v280;
    v78 = sub_2440D1860();
    v79 = sub_2440D20B0();
    v80 = v57;
    v81 = v238;
    sub_243F681C8(v80, v238, &qword_27EDC2C10);
    v82 = v81 + *(v239 + 36);
    *v82 = v78;
    *(v82 + 8) = v79;
    v83 = v81;
    v84 = v242;
    sub_243F681C8(v83, v242, &qword_27EDC2C18);
    *(v84 + *(v236 + 36)) = 0x3FF0000000000000;
    v85 = swift_allocObject();
    v86 = *(a1 + 80);
    *(v85 + 80) = *(a1 + 64);
    *(v85 + 96) = v86;
    *(v85 + 112) = *(a1 + 96);
    v87 = *(a1 + 16);
    *(v85 + 16) = *a1;
    *(v85 + 32) = v87;
    v88 = *(a1 + 48);
    *(v85 + 48) = *(a1 + 32);
    *(v85 + 64) = v88;
    v89 = v241;
    sub_243F681C8(v84, v241, &qword_27EDC2C20);
    v90 = v275;
    v91 = (v89 + v275[9]);
    *v91 = 0;
    v91[1] = 0;
    v91[2] = sub_243FF6184;
    v91[3] = v85;
    v92 = v89;
    v93 = v240;
    sub_243F681C8(v92, v240, &qword_27EDC2C28);
    sub_243F681C8(v93, v77, &qword_27EDC2C28);
    (*(v247 + 56))(v77, 0, 1, v90);
    v94 = sub_243FF4EFC(a1, &v332);
  }

  else
  {
    v94 = (*(v247 + 56))(v67, 1, 1, v275);
  }

  v95 = *(**(a1 + 32) + 544);
  v275 = *(a1 + 32);
  v96 = v95(v94);
  v97 = v250;
  v98 = v273;
  if ((v96 & 1) != 0 && (v332 = *(a1 + 56), v99 = sub_2440D2820(), v315 == 1) && ((*(*v275 + 496))(v99) & 1) == 0)
  {
    v119 = *(a1 + 96);
    v120 = swift_allocObject();
    v121 = *(a1 + 80);
    *(v120 + 80) = *(a1 + 64);
    *(v120 + 96) = v121;
    *(v120 + 112) = *(a1 + 96);
    v122 = *(a1 + 16);
    *(v120 + 16) = *a1;
    *(v120 + 32) = v122;
    v123 = *(a1 + 48);
    *(v120 + 48) = *(a1 + 32);
    *(v120 + 64) = v123;
    sub_243FF4EFC(a1, &v332);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CC0);
    sub_243FF5DB4(&qword_27EDC2CC8, &qword_27EDC2CC0, &unk_2440DE190, sub_243F993A0);
    sub_2440C8F08(v119, sub_243FF617C, v120, v282);
    sub_2440D2B00();
    sub_2440D18E0();
    v124 = sub_2440D1860();
    v125 = sub_2440D20B0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
    v126 = sub_2440D1490();
    v127 = (*((*MEMORY[0x277D85000] & *v126) + 0xA0))();

    v128 = 1.0;
    if (v127)
    {
      v128 = 0.0;
    }

    v340 = v282[8];
    v341 = v282[9];
    v342 = v282[10];
    v336 = v282[4];
    v337 = v282[5];
    v339 = v282[7];
    v338 = v282[6];
    v332 = v282[0];
    v333 = v282[1];
    v335 = v282[3];
    v334 = v282[2];
    *&v343 = v124;
    BYTE8(v343) = v125;
    *&v344 = v128;
    *(&v344 + 1) = 0x4000000000000000;
    nullsub_1(&v332);
    v358 = v342;
    v359 = v343;
    v360 = v344;
    v354 = v338;
    v355 = v339;
    v357 = v341;
    v356 = v340;
    v350 = v334;
    v351 = v335;
    v353 = v337;
    v352 = v336;
    v349 = v333;
    v348 = v332;
  }

  else
  {
    sub_243FF5B40(&v348);
  }

  v100 = *(a1 + 72);
  v101 = *(*v100 + 552);
  v102 = *v100 + 552;

  v247 = v102;
  v104 = v101(v103);
  if ((sub_2440B446C(v104 & 1) & 1) != 0 && ((*(*v100 + 648))() & 1) == 0)
  {
    v105 = swift_allocObject();
    v106 = *(a1 + 80);
    *(v105 + 80) = *(a1 + 64);
    *(v105 + 96) = v106;
    *(v105 + 112) = *(a1 + 96);
    v107 = *(a1 + 16);
    *(v105 + 16) = *a1;
    *(v105 + 32) = v107;
    v108 = *(a1 + 48);
    *(v105 + 48) = *(a1 + 32);
    *(v105 + 64) = v108;
    sub_243FF4EFC(a1, &v332);
    sub_243FE10A0(v100, sub_243FF60D8, v105, v283);
    sub_2440D2B00();
    sub_2440D18E0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
    v109 = sub_2440D1490();
    v110 = (*((*MEMORY[0x277D85000] & *v109) + 0xA0))();

    if (v110)
    {
      v111 = -3.14159265;
    }

    else
    {
      v111 = 0.0;
    }

    v112 = sub_2440D2C40();
    v114 = v113;
    v116 = v115;
    v117 = (*(*v100 + 456))(v361, v112);
    if (v361[5])
    {
      sub_243F5EED4(v361, &qword_27EDBFF68);
      v118 = 1;
    }

    else
    {
      LOBYTE(v332) = (*(*v100 + 504))(v117);
      LOBYTE(v315) = 1;
      sub_243F5D720();
      v118 = sub_2440D2F50() ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v130 = swift_allocObject();
    *(v130 + 16) = v118 & 1;
    v323 = v283[8];
    v324 = v283[9];
    v325 = v283[10];
    v326 = v283[11];
    v319 = v283[4];
    v320 = v283[5];
    v321 = v283[6];
    v322 = v283[7];
    v315 = v283[0];
    v316 = v283[1];
    v317 = v283[2];
    v318 = v283[3];
    v327 = xmmword_2440DDE00;
    *&v328 = v111;
    *(&v328 + 1) = v114;
    *&v329 = v116;
    *(&v329 + 1) = KeyPath;
    *&v330 = sub_243FF6164;
    *(&v330 + 1) = v130;
    nullsub_1(&v315);
    v344 = v327;
    v345 = v328;
    v346 = v329;
    v347 = v330;
    v340 = v323;
    v341 = v324;
    v342 = v325;
    v343 = v326;
    v336 = v319;
    v337 = v320;
    v338 = v321;
    v339 = v322;
    v332 = v315;
    v333 = v316;
    v334 = v317;
    v335 = v318;
  }

  else
  {

    sub_243FF5B64(&v332);
  }

  *v97 = sub_2440D1C20();
  *(v97 + 1) = 0;
  v97[16] = 1;
  v382 = *(v278 + 56);
  v315 = *(v278 + 56);
  v131 = sub_2440D2820();
  v132 = 1;
  if (LOBYTE(v314[0]) == 1)
  {
    v242 = v101;
    if (((*(*v275 + 496))(v131, 1) & 1) != 0 && (*(*v275 + 880))())
    {

      v133 = v222;
      sub_243F83294(v222);
      v134 = sub_2440D1860();
      v135 = sub_2440D20B0();
      v136 = v245;
      v137 = v133 + *(v244 + 36);
      *v137 = v134;
      v137[8] = v135;
      sub_243F5F574(v133, v136, &qword_27EDC2BB8);
      swift_storeEnumTagMultiPayload();
      sub_243FF5F64();
      sub_243FF6020();
      v138 = v273;
      sub_2440D1D20();

      sub_243F5EED4(v133, &qword_27EDC2BB8);
    }

    else
    {
      v139 = sub_2440D1C20();
      v140 = v231;
      *v231 = v139;
      *(v140 + 8) = 0;
      *(v140 + 16) = 1;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CA0);
      sub_243FF052C(v278, v233, v140 + *(v141 + 44), a4, a5);
      type metadata accessor for CoarseRotationManager(0);
      sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
      v142 = sub_2440D1490();
      v143 = (*((*MEMORY[0x277D85000] & *v142) + 0xA0))();

      if (v143)
      {
        v144 = -3.14159265;
      }

      else
      {
        v144 = 0.0;
      }

      sub_2440D2C40();
      v146 = v145;
      v148 = v147;
      v149 = v230;
      sub_243F681C8(v140, v230, &qword_27EDC2BA0);
      v150 = v149 + *(v246 + 36);
      *v150 = v144;
      *(v150 + 8) = v146;
      *(v150 + 16) = v148;
      v138 = v98;
      v151 = v232;
      sub_243F681C8(v149, v232, &qword_27EDC2BA8);
      sub_243F5F574(v151, v245, &qword_27EDC2BA8);
      swift_storeEnumTagMultiPayload();
      sub_243FF5F64();
      sub_243FF6020();
      sub_2440D1D20();
      sub_243F5EED4(v151, &qword_27EDC2BA8);
    }

    sub_243F681C8(v138, v274, &qword_27EDC2BC0);
    v132 = 0;
    v101 = v242;
  }

  v152 = v274;
  (*(v249 + 56))(v274, v132, 1, v251);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C38);
  sub_243F681C8(v152, &v97[*(v153 + 44)], &qword_27EDC2BC8);
  sub_2440D2B00();
  sub_2440D18E0();
  v154 = v97;
  v155 = v254;
  sub_243F681C8(v154, v254, &qword_27EDC2BD0);
  v156 = (v155 + *(v248 + 36));
  v157 = v367;
  v156[4] = v366;
  v156[5] = v157;
  v156[6] = v368;
  v158 = v363;
  *v156 = v362;
  v156[1] = v158;
  v159 = v365;
  v156[2] = v364;
  v156[3] = v159;
  v160 = v260;
  sub_2440D1B00();
  v162 = v261;
  v161 = v262;
  (*(v261 + 16))(v259, v160, v262);
  sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v163 = sub_2440D1610();
  (*(v162 + 8))(v160, v161);
  v164 = v252;
  sub_243F681C8(v155, v252, &qword_27EDC2BD8);
  *(v164 + *(v253 + 36)) = v163;
  v165 = v255;
  v166 = sub_243F681C8(v164, v255, &qword_27EDC2BE0);
  *(v165 + *(v256 + 36)) = 0x4010000000000000;
  v167 = *(*v100 + 456);
  v168 = v167(v369, v166);
  if (v369[5])
  {
    sub_243F5EED4(v369, &qword_27EDBFF68);
  }

  else
  {
    v169 = v101(v168);
    sub_2440B446C(v169 & 1);
  }

  v170 = v280;
  sub_243FF5B8C();
  v171 = v258;
  sub_2440D2480();
  sub_243F5EED4(v165, &qword_27EDC2BE8);
  v172 = v263;
  sub_2440D1F50();
  sub_243FF5DB4(&qword_27EDC2C60, &qword_27EDC2BF0, &unk_2440DE098, sub_243FF5B8C);
  sub_2440D2490();
  (*(v264 + 8))(v172, v265);
  v173 = sub_243F5EED4(v171, &qword_27EDC2BF0);
  v174 = v167(v370, v173);
  if (v372)
  {
    v376[0] = v370[0];
    v376[1] = v370[1];
    v377 = v371;
    v378 = v372;
    v379 = v373;
    v380 = v374;
    v381 = v375;
    v175 = (*(*v275 + 400))(v174);
    v176 = v279;
    if (v175)
    {
      sub_243F5EED4(v370, &qword_27EDBFF68);
      v177 = 1;
    }

    else
    {
      v315 = v382;
      sub_2440D2820();
      if (LOBYTE(v314[0]) == 1)
      {
        LODWORD(v276) = sub_2440D20B0();
        sub_2440D2680();
        sub_2440D26B0();

        swift_getKeyPath();
        v178 = sub_2440D1C20();
        v179 = v224;
        *v224 = v178;
        v179[1] = 0;
        *(v179 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C80);
        sub_243FF4638(v376);
      }

      sub_243F5EED4(v370, &qword_27EDBFF68);
      v180 = v227;
      (*(v228 + 56))(v227, 1, 1, v229);
      sub_243F681C8(v180, v176, &qword_27EDC2B90);
      v177 = 0;
    }
  }

  else
  {
    v177 = 1;
    v176 = v279;
  }

  (*(v266 + 56))(v176, v177, 1, v267);
  v181 = v277;
  sub_243F5F574(v170, v277, &qword_27EDC2C30);
  v310 = v358;
  v311 = v359;
  v312 = v360;
  v306 = v354;
  v307 = v355;
  v309 = v357;
  v308 = v356;
  v302 = v350;
  v303 = v351;
  v305 = v353;
  v304 = v352;
  v301 = v349;
  v300 = v348;
  v296 = v344;
  v297 = v345;
  v298 = v346;
  v299 = v347;
  v292 = v340;
  v293 = v341;
  v294 = v342;
  v295 = v343;
  v288 = v336;
  v289 = v337;
  v290 = v338;
  v291 = v339;
  v284 = v332;
  v285 = v333;
  v286 = v334;
  v287 = v335;
  v183 = v268;
  v182 = v269;
  v184 = *(v269 + 16);
  v185 = v270;
  v184(v268, v281, v270);
  v186 = v271;
  sub_243F5F574(v176, v271, &qword_27EDC2B98);
  v187 = v181;
  v188 = v272;
  sub_243F5F574(v187, v272, &qword_27EDC2C30);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2C68);
  v190 = (v188 + v189[12]);
  v191 = v311;
  v192 = v310;
  v313[10] = v310;
  v313[11] = v311;
  v193 = v312;
  v313[12] = v312;
  v194 = v307;
  v195 = v306;
  v313[6] = v306;
  v313[7] = v307;
  v196 = v308;
  v197 = v309;
  v313[9] = v309;
  v313[8] = v308;
  v198 = v304;
  v199 = v305;
  v313[5] = v305;
  v313[4] = v304;
  v200 = v303;
  v313[3] = v303;
  v313[2] = v302;
  v201 = v301;
  v202 = v300;
  v313[1] = v301;
  v313[0] = v300;
  v190[2] = v302;
  v190[3] = v200;
  v190[6] = v195;
  v190[7] = v194;
  v190[4] = v198;
  v190[5] = v199;
  v190[11] = v191;
  v190[12] = v193;
  v190[9] = v197;
  v190[10] = v192;
  v190[8] = v196;
  *v190 = v202;
  v190[1] = v201;
  v203 = v189[16];
  v204 = v297;
  v314[12] = v296;
  v314[13] = v297;
  v205 = v298;
  v206 = v299;
  v314[14] = v298;
  v314[15] = v299;
  v207 = v292;
  v208 = v293;
  v314[8] = v292;
  v314[9] = v293;
  v209 = v294;
  v210 = v295;
  v314[10] = v294;
  v314[11] = v295;
  v211 = v288;
  v212 = v289;
  v314[4] = v288;
  v314[5] = v289;
  v213 = v290;
  v214 = v291;
  v314[6] = v290;
  v314[7] = v291;
  v215 = v284;
  v216 = v285;
  v314[0] = v284;
  v314[1] = v285;
  v217 = v286;
  v218 = v287;
  v314[2] = v286;
  v314[3] = v287;
  v219 = (v188 + v203);
  v219[12] = v296;
  v219[13] = v204;
  v219[14] = v205;
  v219[15] = v206;
  v219[8] = v207;
  v219[9] = v208;
  v219[10] = v209;
  v219[11] = v210;
  v219[4] = v211;
  v219[5] = v212;
  v219[6] = v213;
  v219[7] = v214;
  *v219 = v215;
  v219[1] = v216;
  v219[2] = v217;
  v219[3] = v218;
  v184((v188 + v189[20]), v183, v185);
  sub_243F5F574(v186, v188 + v189[24], &qword_27EDC2B98);
  sub_243F5F574(v313, &v315, &qword_27EDC2C70);
  sub_243F5F574(v314, &v315, &qword_27EDC2C78);
  sub_243F5EED4(v279, &qword_27EDC2B98);
  v220 = *(v182 + 8);
  v220(v281, v185);
  sub_243F5EED4(v280, &qword_27EDC2C30);
  sub_243F5EED4(v186, &qword_27EDC2B98);
  v220(v183, v185);
  v327 = v296;
  v328 = v297;
  v329 = v298;
  v330 = v299;
  v323 = v292;
  v324 = v293;
  v325 = v294;
  v326 = v295;
  v319 = v288;
  v320 = v289;
  v321 = v290;
  v322 = v291;
  v315 = v284;
  v316 = v285;
  v317 = v286;
  v318 = v287;
  sub_243F5EED4(&v315, &qword_27EDC2C78);
  v331[10] = v310;
  v331[11] = v311;
  v331[12] = v312;
  v331[6] = v306;
  v331[7] = v307;
  v331[9] = v309;
  v331[8] = v308;
  v331[2] = v302;
  v331[3] = v303;
  v331[5] = v305;
  v331[4] = v304;
  v331[1] = v301;
  v331[0] = v300;
  sub_243F5EED4(v331, &qword_27EDC2C70);
  return sub_243F5EED4(v277, &qword_27EDC2C30);
}

uint64_t sub_243FF00E0@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_2440D2770();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CC0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  sub_2440D2760();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_2440D2790();

  (*(v5 + 8))(v7, v4);
  sub_244070BB0();
  sub_2440D2B00();
  sub_2440D1560();
  LOBYTE(v22[0]) = 1;
  *&v21[3] = *&v21[27];
  *&v21[11] = *&v21[35];
  *&v21[19] = *&v21[43];
  v12 = sub_2440D2170();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_2440D21C0();
  sub_243F5EED4(v3, &qword_27EDC1B60);
  sub_2440D21B0();
  v13 = sub_2440D21F0();

  KeyPath = swift_getKeyPath();
  *(v19 + 2) = *v21;
  v18 = v11;
  LOWORD(v19[0]) = 1;
  *(&v19[1] + 2) = *&v21[8];
  *(&v19[2] + 2) = *&v21[16];
  *&v19[3] = *&v21[23];
  *(&v19[3] + 1) = KeyPath;
  v20 = v13;
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
  v15 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v15) + 0xA0))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC15F8);
  sub_243F993A0();
  sub_2440D2480();
  v22[2] = v19[1];
  v22[3] = v19[2];
  v22[4] = v19[3];
  v23 = v20;
  v22[0] = v18;
  v22[1] = v19[0];
  sub_243F5EED4(v22, &qword_27EDC15F8);
  sub_2440D1800();
  return sub_243F5EED4(v10, &qword_27EDC2CC0);
}

uint64_t sub_243FF052C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D3>)
{
  v143 = a2;
  v142 = a3;
  v141 = sub_2440D1720();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v136 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2440D1B10();
  v135 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CE0);
  v137 = *(v140 - 8);
  v10 = MEMORY[0x28223BE20](v140);
  v133 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v112 - v12;
  v119 = sub_2440D2640();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_2440D1C00();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CE8);
  MEMORY[0x28223BE20](v112);
  v16 = &v112 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CF0);
  MEMORY[0x28223BE20](v120);
  v18 = &v112 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2CF8);
  MEMORY[0x28223BE20](v121);
  v123 = &v112 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D00);
  MEMORY[0x28223BE20](v122);
  v125 = &v112 - v20;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D08);
  MEMORY[0x28223BE20](v127);
  v128 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D10);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v131 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v129 = &v112 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D18);
  v27 = MEMORY[0x28223BE20](v26);
  v130 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v112 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D20);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v112 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D28);
  v35 = MEMORY[0x28223BE20](v34);
  v126 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v112 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v112 - v40;
  *v33 = sub_2440D1C20();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D30);
  sub_243FF1784(a1, &v33[*(v42 + 44)], a4);
  sub_2440D2AE0();
  v144 = v30;
  v43 = 1;
  sub_2440D18E0();
  sub_243F681C8(v33, v39, &qword_27EDC2D20);
  v44 = &v39[*(v34 + 36)];
  v45 = v152;
  *(v44 + 4) = v151;
  *(v44 + 5) = v45;
  *(v44 + 6) = v153;
  v46 = v148;
  *v44 = v147;
  *(v44 + 1) = v46;
  v47 = v150;
  *(v44 + 2) = v149;
  *(v44 + 3) = v47;
  v124 = v41;
  sub_243F681C8(v39, v41, &qword_27EDC2D28);
  *v30 = sub_2440D1C20();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D38);
  sub_243FF28E0(a1, v143, &v30[*(v48 + 44)], a5);
  v49 = sub_2440D2BC0();
  v50 = *(a1 + 72);
  v51 = *(*v50 + 552);
  v143 = *v50 + 552;
  v116 = v51;
  v52 = v51();
  v53 = &v30[*(v26 + 36)];
  *v53 = v49;
  v53[8] = v52 & 1;
  v54 = swift_allocObject();
  *(v54 + 112) = *(a1 + 96);
  v55 = *(a1 + 80);
  *(v54 + 80) = *(a1 + 64);
  *(v54 + 96) = v55;
  v56 = *(a1 + 16);
  *(v54 + 16) = *a1;
  *(v54 + 32) = v56;
  v57 = *(a1 + 48);
  *(v54 + 48) = *(a1 + 32);
  *(v54 + 64) = v57;
  MEMORY[0x28223BE20](v54);
  sub_243FF4EFC(a1, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D40);
  sub_243FF627C();
  sub_2440D2870();
  v58 = &v16[*(v112 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D60);
  sub_2440D18F0();
  *v58 = swift_getKeyPath();
  v59 = v113;
  sub_2440D1BF0();
  sub_243FF6364();
  sub_243FF713C(&qword_27EDC2D88, MEMORY[0x277CDDEE0]);
  v60 = v115;
  sub_2440D2380();
  (*(v114 + 8))(v59, v60);
  sub_243F5EED4(v16, &qword_27EDC2CE8);
  (*(v118 + 104))(v117, *MEMORY[0x277CE0EE0], v119);
  v61 = sub_2440D26E0();
  KeyPath = swift_getKeyPath();
  v146[0] = v61;
  v63 = sub_2440D1570();
  v64 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D90) + 36)];
  *v64 = KeyPath;
  v64[1] = v63;
  LOBYTE(v63) = sub_2440D20A0();
  sub_244071480();
  sub_2440D13D0();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D98) + 36)];
  *v73 = v63;
  *(v73 + 1) = v66;
  *(v73 + 2) = v68;
  *(v73 + 3) = v70;
  *(v73 + 4) = v72;
  v73[40] = 0;
  LOBYTE(v63) = sub_2440D20D0();
  sub_244071480();
  v74 = sub_2440D13D0();
  v75 = &v18[*(v120 + 36)];
  *v75 = v63;
  *(v75 + 1) = v76;
  *(v75 + 2) = v77;
  *(v75 + 3) = v78;
  *(v75 + 4) = v79;
  v75[40] = 0;
  v80 = *(*v50 + 600);
  if (v80(v74))
  {
    v81 = v123;
  }

  else
  {
    LOBYTE(v146[0]) = (*(*v50 + 504))();
    v145 = 1;
    sub_243F5D720();
    v82 = sub_2440D2F50();
    v81 = v123;
    if (v82)
    {
      v43 = (*(*v50 + 648))();
    }
  }

  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  *(v84 + 16) = v43 & 1;
  v85 = sub_243F681C8(v18, v81, &qword_27EDC2CF0);
  v86 = (v81 + *(v121 + 36));
  *v86 = v83;
  v86[1] = sub_243FF7220;
  v86[2] = v84;
  v87 = 0.25;
  if ((v80(v85) & 1) == 0)
  {
    LOBYTE(v146[0]) = (*(*v50 + 504))();
    v145 = 1;
    sub_243F5D720();
    if (sub_2440D2F50())
    {
      if ((*(*v50 + 648))())
      {
        v87 = 0.25;
      }

      else
      {
        v87 = 1.0;
      }
    }
  }

  v88 = v81;
  v89 = v125;
  sub_243F681C8(v88, v125, &qword_27EDC2CF8);
  *(v89 + *(v122 + 36)) = v87;
  v90 = v132;
  sub_2440D1B00();
  v91 = v136;
  sub_2440D1710();
  v92 = sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v93 = sub_243FF713C(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v94 = v134;
  v95 = v138;
  v96 = v141;
  sub_2440D13F0();
  (*(v139 + 8))(v91, v96);
  (*(v135 + 8))(v90, v95);
  v97 = v137;
  v98 = v140;
  (*(v137 + 16))(v133, v94, v140);
  v146[0] = v95;
  v146[1] = v96;
  v146[2] = v92;
  v146[3] = v93;
  swift_getOpaqueTypeConformance2();
  v99 = sub_2440D1610();
  (*(v97 + 8))(v94, v98);
  v100 = v128;
  v101 = sub_243F681C8(v89, v128, &qword_27EDC2D00);
  *(v100 + *(v127 + 36)) = v99;
  v102 = (v116)(v101);
  sub_2440B446C(v102 & 1);
  sub_243FF6448();
  v103 = v129;
  sub_2440D24E0();

  sub_243F5EED4(v100, &qword_27EDC2D08);
  v104 = v124;
  v105 = v126;
  sub_243F5F574(v124, v126, &qword_27EDC2D28);
  v106 = v144;
  v107 = v130;
  sub_243F5F574(v144, v130, &qword_27EDC2D18);
  v108 = v131;
  sub_243F5F574(v103, v131, &qword_27EDC2D10);
  v109 = v142;
  sub_243F5F574(v105, v142, &qword_27EDC2D28);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DE0);
  sub_243F5F574(v107, v109 + *(v110 + 48), &qword_27EDC2D18);
  sub_243F5F574(v108, v109 + *(v110 + 64), &qword_27EDC2D10);
  sub_243F5EED4(v103, &qword_27EDC2D10);
  sub_243F5EED4(v106, &qword_27EDC2D18);
  sub_243F5EED4(v104, &qword_27EDC2D28);
  sub_243F5EED4(v108, &qword_27EDC2D10);
  sub_243F5EED4(v107, &qword_27EDC2D18);
  return sub_243F5EED4(v105, &qword_27EDC2D28);
}

uint64_t sub_243FF1784@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D1>)
{
  v153 = sub_2440D1B10();
  v6 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v142 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_2440D1720();
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v132 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C38);
  v144 = *(v152 - 8);
  v9 = MEMORY[0x28223BE20](v152);
  v143 = &v119[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v137 = &v119[-v11];
  v12 = type metadata accessor for PINPromptView();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v119[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F08);
  MEMORY[0x28223BE20](v15);
  v17 = &v119[-v16];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F10);
  MEMORY[0x28223BE20](v133);
  v139 = &v119[-v18];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F18);
  MEMORY[0x28223BE20](v135);
  v141 = &v119[-v19];
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F20);
  MEMORY[0x28223BE20](v136);
  v134 = &v119[-v20];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F28);
  MEMORY[0x28223BE20](v140);
  v138 = &v119[-v21];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F30);
  v22 = MEMORY[0x28223BE20](v145);
  v147 = &v119[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v151 = &v119[-v24];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F38);
  v25 = MEMORY[0x28223BE20](v150);
  v27 = &v119[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v25);
  v148 = &v119[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v154 = &v119[-v31];
  (*(**(a1 + 32) + 640))(v173, v30);
  v155 = v27;
  v156 = a2;
  if (*(&v173[0] + 1))
  {
    v128 = v15;
    v32 = v14;
    v131 = v6;
    v184[0] = v173[0];
    v184[1] = v173[1];
    v184[2] = v173[2];
    v184[3] = v173[3];

    sub_243FD912C();
    sub_2440C72B8(v184, v174);
    sub_2440D2AE0();
    sub_2440D18E0();
    v159 = v174[2];
    v160 = v174[3];
    v161 = v174[4];
    v162 = v174[5];
    v157 = v174[0];
    v158 = v174[1];
    v127 = sub_2440D20A0();
    sub_2440D13D0();
    v125 = v34;
    v126 = v33;
    v123 = v36;
    v124 = v35;
    LOBYTE(v177) = 0;
    v122 = sub_2440D20C0();
    type metadata accessor for CoarseRotationManager(0);
    sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
    v37 = sub_2440D1490();
    v38 = (*((*MEMORY[0x277D85000] & *v37) + 0xA0))();

    v129 = a3;
    if (v38)
    {
      sub_244070CC8();
    }

    else
    {
      sub_244070C64();
    }

    sub_2440D13D0();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v121 = v45;
    v170[0] = 0;
    v120 = sub_2440D20D0();
    sub_244070D2C();
    v46 = sub_2440D13D0();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v171[0] = 0;
    v55 = *(a1 + 72);
    v56 = *(*v55 + 456);
    v57 = (v56)(v175, v46);
    if (v175[5])
    {
      sub_243F5EED4(v175, &qword_27EDBFF68);
      v58 = 1;
    }

    else
    {
      LOBYTE(v185[0]) = (*(*v55 + 504))(v57);
      LOBYTE(v172[0]) = 1;
      sub_243F5D720();
      v58 = sub_2440D2F50() ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v60 = swift_allocObject();
    *(v60 + 16) = v58 & 1;
    v61 = v56(v176);
    if (v176[5])
    {
      sub_243F5EED4(v173, &qword_27EDBFF08);
      sub_243F5EED4(v176, &qword_27EDBFF68);
      v62 = 0.25;
    }

    else
    {
      LOBYTE(v185[0]) = (*(*v55 + 504))(v61);
      LOBYTE(v172[0]) = 1;
      sub_243F5D720();
      v63 = sub_2440D2F50();
      sub_243F5EED4(v173, &qword_27EDBFF08);
      if (v63)
      {
        v62 = 1.0;
      }

      else
      {
        v62 = 0.25;
      }
    }

    v6 = v131;
    v64 = swift_allocObject();
    v65 = *(a1 + 80);
    *(v64 + 80) = *(a1 + 64);
    *(v64 + 96) = v65;
    *(v64 + 112) = *(a1 + 96);
    v66 = *(a1 + 16);
    *(v64 + 16) = *a1;
    *(v64 + 32) = v66;
    v67 = *(a1 + 48);
    *(v64 + 48) = *(a1 + 32);
    *(v64 + 64) = v67;
    v172[3] = v160;
    v172[2] = v159;
    v172[0] = v157;
    v172[1] = v158;
    v172[7] = v164;
    v172[6] = v163;
    v172[4] = v161;
    v172[5] = v162;
    v172[12] = v169;
    v172[11] = v168;
    v172[10] = v167;
    v172[8] = v165;
    v172[9] = v166;
    LOBYTE(v172[13]) = v127;
    *(&v172[13] + 1) = v126;
    *&v172[14] = v125;
    *(&v172[14] + 1) = v124;
    *&v172[15] = v123;
    BYTE8(v172[15]) = 0;
    LOBYTE(v172[16]) = v122;
    *(&v172[16] + 1) = v40;
    *&v172[17] = v42;
    *(&v172[17] + 1) = v44;
    *&v172[18] = v121;
    BYTE8(v172[18]) = 0;
    LOBYTE(v172[19]) = v120;
    *(&v172[19] + 1) = v48;
    *&v172[20] = v50;
    *(&v172[20] + 1) = v52;
    *&v172[21] = v54;
    BYTE8(v172[21]) = 0;
    *&v172[22] = KeyPath;
    *(&v172[22] + 1) = sub_243FF7220;
    *&v172[23] = v60;
    *(&v172[23] + 1) = v62;
    *&v172[24] = sub_243FF70BC;
    *(&v172[24] + 1) = v64;
    v172[25] = 0uLL;
    nullsub_1(v172);
    sub_243FF4EFC(a1, v185);
    memcpy(v185, v172, sizeof(v185));
    v14 = v32;
    v15 = v128;
  }

  else
  {
    sub_243FF6CD0(v185);
  }

  v68 = *(a1 + 72);

  sub_243F676A0();
  sub_243F4E2F4();
  v131 = v68;
  sub_243F8AB48(v14);
  sub_2440D2B00();
  sub_2440D18E0();
  v130 = v17;
  sub_243F8AA08(v14, v17);
  v69 = &v17[*(v15 + 36)];
  v70 = v182;
  v69[4] = v181;
  v69[5] = v70;
  v69[6] = v183;
  v71 = v178;
  *v69 = v177;
  v69[1] = v71;
  v72 = v180;
  v69[2] = v179;
  v69[3] = v72;
  v73 = v132;
  sub_2440D1710();
  v74 = v142;
  sub_2440D1B00();
  v75 = sub_243FF713C(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v76 = sub_243FF713C(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v77 = v137;
  v78 = v149;
  v79 = v153;
  sub_2440D13F0();
  (*(v6 + 8))(v74, v79);
  (*(v146 + 8))(v73, v78);
  v80 = v144;
  v81 = v152;
  (*(v144 + 16))(v143, v77, v152);
  *&v172[0] = v78;
  *(&v172[0] + 1) = v79;
  *&v172[1] = v75;
  *(&v172[1] + 1) = v76;
  swift_getOpaqueTypeConformance2();
  v82 = sub_2440D1610();
  (*(v80 + 8))(v77, v81);
  v83 = v139;
  sub_243F681C8(v130, v139, &qword_27EDC2F08);
  *&v83[*(v133 + 36)] = v82;
  LOBYTE(v82) = sub_2440D20A0();
  sub_2440D13D0();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v83;
  v93 = v141;
  sub_243F681C8(v92, v141, &qword_27EDC2F10);
  v94 = &v93[*(v135 + 36)];
  *v94 = v82;
  *(v94 + 1) = v85;
  *(v94 + 2) = v87;
  *(v94 + 3) = v89;
  *(v94 + 4) = v91;
  v94[40] = 0;
  v95 = swift_getKeyPath();
  v96 = v93;
  v97 = v134;
  sub_243F681C8(v96, v134, &qword_27EDC2F18);
  v98 = &v97[*(v136 + 36)];
  *v98 = v95;
  v98[1] = 0x3FD3333333333333;
  v99 = v97;
  v100 = v138;
  sub_243F681C8(v99, v138, &qword_27EDC2F20);
  v100[*(v140 + 36)] = 0;
  sub_243FF6D0C();
  v101 = v147;
  sub_2440D2510();
  v102 = sub_243F5EED4(v100, &qword_27EDC2F28);
  v103 = v131;
  v104 = (*(*v131 + 504))(v102);
  v105 = sub_2440B4474(v104);
  v106 = sub_2440579C8(0, v105);
  v108 = v107;

  *&v172[0] = v106;
  *(&v172[0] + 1) = v108;
  sub_243F4EF64();
  v109 = v151;
  sub_2440D17C0();

  sub_243F5EED4(v101, &qword_27EDC2F30);
  v110 = sub_2440D2BC0();
  LOBYTE(v95) = (*(*v103 + 552))();
  v111 = v109;
  v112 = v148;
  sub_243F681C8(v111, v148, &qword_27EDC2F30);
  v113 = &v112[*(v150 + 36)];
  *v113 = v110;
  v113[8] = v95 & 1;
  v114 = v154;
  sub_243F681C8(v112, v154, &qword_27EDC2F38);
  memcpy(v170, v185, sizeof(v170));
  v115 = v155;
  sub_243F5F574(v114, v155, &qword_27EDC2F38);
  memcpy(v171, v170, sizeof(v171));
  v116 = v156;
  memcpy(v156, v170, 0x1A0uLL);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F70);
  sub_243F5F574(v115, v116 + *(v117 + 48), &qword_27EDC2F38);
  sub_243F5F574(v171, v172, &qword_27EDC2F78);
  sub_243F5EED4(v114, &qword_27EDC2F38);
  sub_243F5EED4(v115, &qword_27EDC2F38);
  memcpy(v172, v170, sizeof(v172));
  return sub_243F5EED4(v172, &qword_27EDC2F78);
}

uint64_t sub_243FF28E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v83 = a2;
  v91 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E00);
  MEMORY[0x28223BE20](v90);
  v7 = &v80 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E08);
  MEMORY[0x28223BE20](v85);
  v84 = &v80 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E10);
  v9 = MEMORY[0x28223BE20](v86);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E18);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E20);
  MEMORY[0x28223BE20](v89);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E28);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v80 - v22);
  v24 = (*(**(a1 + 72) + 552))(v21);
  if (sub_2440B446C(v24 & 1))
  {
    v25 = sub_243F68750();
    *&v104[0] = sub_2440579C8(v25 & 1, 0xD000000000000012);
    *(&v104[0] + 1) = v26;
    sub_243F4EF64();
    v27 = sub_2440D2310();
    v29 = v28;
    v31 = v30;
    v83 = v14;
    sub_2440D2150();
    v81 = v7;
    v32 = sub_2440D22E0();
    v34 = v33;
    v82 = v12;
    v36 = v35;
    v38 = v37;

    sub_243F62C68(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    v40 = sub_2440D2690();
    v41 = swift_getKeyPath();
    v42 = v36 & 1;
    LOBYTE(v104[0]) = v36 & 1;
    v43 = sub_2440D20A0();
    sub_2440D13D0();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    LOBYTE(v92) = 0;
    v52 = sub_2440D2110();
    sub_2440D13D0();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    LOBYTE(v104[0]) = 0;
    v61 = swift_getKeyPath();
    *&v92 = v32;
    *(&v92 + 1) = v34;
    LOBYTE(v93) = v42;
    *(&v93 + 1) = v38;
    *&v94 = KeyPath;
    BYTE8(v94) = 1;
    *&v95 = v41;
    *(&v95 + 1) = v40;
    LOBYTE(v96) = v43;
    *(&v96 + 1) = v45;
    *&v97 = v47;
    *(&v97 + 1) = v49;
    *&v98 = v51;
    BYTE8(v98) = 0;
    LOBYTE(v99) = v52;
    *(&v99 + 1) = v54;
    *&v100 = v56;
    *(&v100 + 1) = v58;
    *&v101 = v60;
    BYTE8(v101) = 0;
    *&v102 = v61;
    *(&v102 + 1) = 0x3FD3333333333333;
    v103 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E50);
    sub_243FF68A0();
    v62 = v84;
    sub_2440D2510();
    v104[8] = v100;
    v104[9] = v101;
    v104[10] = v102;
    v105 = v103;
    v104[4] = v96;
    v104[5] = v97;
    v104[6] = v98;
    v104[7] = v99;
    v104[0] = v92;
    v104[1] = v93;
    v104[2] = v94;
    v104[3] = v95;
    sub_243F5EED4(v104, &qword_27EDC2E50);
    v63 = v88;
    sub_2440D1800();
    sub_243F5EED4(v62, &qword_27EDC2E08);
    *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E90) + 36)) = 0x4000000000000000;
    v64 = sub_243F9A09C();
    v65 = v87;
    *(v63 + *(v86 + 36)) = v64;
    sub_243F5F574(v63, v65, &qword_27EDC2E10);
    v66 = v81;
    *v81 = 0;
    *(v66 + 8) = 1;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E98);
    sub_243F5F574(v65, v66 + *(v67 + 48), &qword_27EDC2E10);
    sub_243F5EED4(v65, &qword_27EDC2E10);
    sub_243F5F574(v66, v83, &qword_27EDC2E00);
    swift_storeEnumTagMultiPayload();
    sub_243F5DD50(&qword_27EDC2E40, &qword_27EDC2E20);
    sub_243F5DD50(&qword_27EDC2E48, &qword_27EDC2E00);
    sub_2440D1D20();
    sub_243F5EED4(v66, &qword_27EDC2E00);
    v68 = v63;
    v69 = &qword_27EDC2E10;
  }

  else
  {
    sub_244071480();
    sub_244070B04();
    sub_2440D1650();
    *v23 = sub_2440D2B00();
    v23[1] = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E30);
    sub_243FF3148(a1, v23 + *(v71 + 44), a4);
    v72 = sub_2440D20A0();
    sub_2440D13D0();
    v73 = v23 + *(v17 + 36);
    *v73 = v72;
    *(v73 + 1) = v74;
    *(v73 + 2) = v75;
    *(v73 + 3) = v76;
    *(v73 + 4) = v77;
    v73[40] = 0;
    sub_243F5F574(v23, v20, &qword_27EDC2E28);
    sub_243F5F574(v20, v16, &qword_27EDC2E28);
    v78 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2E38) + 48)];
    *v78 = 0;
    v78[8] = 1;
    sub_243F5EED4(v20, &qword_27EDC2E28);
    sub_243F5F574(v16, v14, &qword_27EDC2E20);
    swift_storeEnumTagMultiPayload();
    sub_243F5DD50(&qword_27EDC2E40, &qword_27EDC2E20);
    sub_243F5DD50(&qword_27EDC2E48, &qword_27EDC2E00);
    sub_2440D1D20();
    sub_243F5EED4(v16, &qword_27EDC2E20);
    v68 = v23;
    v69 = &qword_27EDC2E28;
  }

  return sub_243F5EED4(v68, v69);
}

uint64_t sub_243FF3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v115 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EA0);
  MEMORY[0x28223BE20](v104);
  v103 = v89 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EA8);
  MEMORY[0x28223BE20](v108);
  v112 = v89 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EB0);
  MEMORY[0x28223BE20](v110);
  v109 = v89 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EB8);
  MEMORY[0x28223BE20](v107);
  v111 = v89 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EC0);
  v9 = MEMORY[0x28223BE20](v105);
  v114 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v106 = v89 - v12;
  MEMORY[0x28223BE20](v11);
  v113 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EC8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v89 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2ED0);
  MEMORY[0x28223BE20](v95);
  v99 = v89 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2ED8);
  MEMORY[0x28223BE20](v98);
  v20 = v89 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EE0);
  MEMORY[0x28223BE20](v93);
  v100 = v89 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EE8);
  v22 = MEMORY[0x28223BE20](v90);
  v102 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v96 = v89 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v101 = v89 - v27;
  v28 = nullsub_1(v26);
  v29 = **(a1 + 32);
  v30 = *(v29 + 304);
  v94 = v29 + 304;
  v92 = v30;
  v31 = v30(v28);
  v32 = (*(*v31 + 120))(v31);

  *&v117 = v32;
  swift_getKeyPath();
  v33 = swift_allocObject();
  v34 = *(a1 + 80);
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(a1 + 96);
  v35 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v35;
  v36 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v36;
  sub_243FF4EFC(a1, v124);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19D8);
  v38 = sub_243F5DD50(&qword_27EDC19E0, &qword_27EDC19D8);
  v39 = sub_243FF713C(&qword_27EDC19E8, MEMORY[0x277CC95F0]);
  sub_243FA94D4();
  v97 = v37;
  v91 = v38;
  v89[1] = v39;
  sub_2440D29B0();
  sub_2440D15D0();
  sub_2440D15A0();
  sub_2440D15E0();

  sub_243F9A09C();
  v40 = sub_2440D1580();

  *&v17[*(v15 + 44)] = v40;
  sub_2440D2B00();
  *v89 = a3;
  sub_2440D18E0();
  v41 = v99;
  sub_243F681C8(v17, v99, &qword_27EDC2EC8);
  v42 = (v41 + *(v95 + 36));
  v43 = v122;
  v42[4] = v121;
  v42[5] = v43;
  v42[6] = v123;
  v44 = v118;
  *v42 = v117;
  v42[1] = v44;
  v45 = v120;
  v42[2] = v119;
  v42[3] = v45;
  sub_243F681C8(v41, v20, &qword_27EDC2ED0);
  *&v20[*(v98 + 36)] = 0x3FF0000000000000;
  v46 = v20;
  v47 = v100;
  sub_243F681C8(v46, v100, &qword_27EDC2ED8);
  *(v47 + *(v93 + 36)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v49 = v96;
  v50 = &v96[*(v90 + 36)];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2EF0);
  v51 = *(v99 + 28);
  v52 = *MEMORY[0x277CDFA88];
  v53 = sub_2440D17B0();
  v54 = *(*(v53 - 8) + 104);
  LODWORD(v98) = v52;
  v55 = v52;
  v56 = v54;
  v54(v50 + v51, v55, v53);
  *v50 = KeyPath;
  sub_243F681C8(v47, v49, &qword_27EDC2EE0);
  v57 = v49;
  v58 = v101;
  v59 = sub_243F681C8(v57, v101, &qword_27EDC2EE8);
  v60 = nullsub_1(v59);
  v61 = v92(v60);
  v62 = (*(*v61 + 120))(v61);

  v116 = v62;
  swift_getKeyPath();
  v63 = swift_allocObject();
  v64 = *(a1 + 80);
  *(v63 + 80) = *(a1 + 64);
  *(v63 + 96) = v64;
  *(v63 + 112) = *(a1 + 96);
  v65 = *(a1 + 16);
  *(v63 + 16) = *a1;
  *(v63 + 32) = v65;
  v66 = *(a1 + 48);
  *(v63 + 48) = *(a1 + 32);
  *(v63 + 64) = v66;
  sub_243FF4EFC(a1, v124);
  sub_243FF6C7C();
  v67 = v103;
  sub_2440D29B0();
  sub_2440D15D0();
  sub_2440D15A0();
  sub_2440D15E0();

  sub_243F9A09C();
  v68 = sub_2440D1580();

  *(v67 + *(v104 + 36)) = v68;
  sub_2440D2B00();
  sub_2440D18E0();
  v69 = v112;
  sub_243F681C8(v67, v112, &qword_27EDC2EA0);
  v70 = (v69 + *(v108 + 36));
  v71 = v124[3];
  v72 = v124[5];
  v73 = v124[6];
  v70[4] = v124[4];
  v70[5] = v72;
  v70[6] = v73;
  v74 = v124[1];
  v75 = v124[2];
  *v70 = v124[0];
  v70[1] = v74;
  v70[2] = v75;
  v70[3] = v71;
  v76 = v69;
  v77 = v109;
  sub_243F681C8(v76, v109, &qword_27EDC2EA8);
  *(v77 + *(v110 + 36)) = 0x3FF0000000000000;
  v78 = v111;
  sub_243F681C8(v77, v111, &qword_27EDC2EB0);
  *(v78 + *(v107 + 36)) = 0x4000000000000000;
  v79 = swift_getKeyPath();
  v80 = v106;
  v81 = &v106[*(v105 + 36)];
  v56(v81 + *(v99 + 28), v98, v53);
  *v81 = v79;
  sub_243F681C8(v78, v80, &qword_27EDC2EB8);
  v82 = v113;
  sub_243F681C8(v80, v113, &qword_27EDC2EC0);
  v83 = v102;
  sub_243F5F574(v58, v102, &qword_27EDC2EE8);
  v84 = v58;
  v85 = v114;
  sub_243F5F574(v82, v114, &qword_27EDC2EC0);
  v86 = v115;
  sub_243F5F574(v83, v115, &qword_27EDC2EE8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F00);
  sub_243F5F574(v85, v86 + *(v87 + 48), &qword_27EDC2EC0);
  sub_243F5EED4(v82, &qword_27EDC2EC0);
  sub_243F5EED4(v84, &qword_27EDC2EE8);
  sub_243F5EED4(v85, &qword_27EDC2EC0);
  return sub_243F5EED4(v83, &qword_27EDC2EE8);
}

uint64_t sub_243FF3EE8()
{
  v1 = *(v0 + 72);
  v2 = (*(*v1 + 456))(v5);
  if (v5[5])
  {
    sub_243F5EED4(v5, &qword_27EDBFF68);
    v3 = 1;
  }

  else
  {
    (*(*v1 + 504))(v2);
    v3 = 1;
    sub_243F5D720();
    if ((sub_2440D2F50() & 1) != 0 && ((*(*v1 + 696))() & 1) == 0)
    {
      v3 = (*(*v1 + 648))();
    }
  }

  return v3 & 1;
}

void sub_243FF4090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DE8);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v35[3] = v35 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DF0) - 8;
  MEMORY[0x28223BE20](v38);
  v35[7] = v35 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2DF8) - 8;
  MEMORY[0x28223BE20](v37);
  v35[6] = v35 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2D58);
  v7 = MEMORY[0x28223BE20](v36);
  v35[5] = v35 - v8;
  v9 = (*(**(a1 + 72) + 552))(v7);
  v10 = sub_2440B446C(v9 & 1);
  if (v10)
  {
    v11 = 0xD000000000000017;
  }

  else
  {
    v11 = 0xD00000000000001BLL;
  }

  if (v10)
  {
    v12 = "LABEL_ACCESSIBILITY_OPTIONS";
  }

  else
  {
    v12 = "pinax_button_ax_off";
  }

  v35[1] = v12 | 0x8000000000000000;
  v35[2] = v11;
  v13 = sub_243F68750();
  v46 = sub_2440579C8(v13 & 1, v11);
  v47 = v14;
  v35[4] = sub_243F4EF64();
  v15 = sub_2440D2310();
  v17 = v16;
  v19 = v18;
  sub_243FFADA0();

  v20 = sub_2440D22C0();
  v22 = v21;
  v24 = v23;

  sub_243F62C68(v15, v17, v19 & 1);

  sub_2440D2150();
  v25 = sub_2440D22E0();
  v27 = v26;
  LOBYTE(v17) = v28;

  sub_243F62C68(v20, v22, v24 & 1);

  sub_2440D21B0();
  v29 = sub_2440D22A0();
  v31 = v30;
  LOBYTE(v22) = v32;
  v34 = v33;
  sub_243F62C68(v25, v27, v17 & 1);

  sub_2440D2B00();
  sub_2440D18E0();
  v48 = v22 & 1;
  v42 = v29;
  v43 = v31;
  v44 = v22 & 1;
  v45 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD0);
  sub_243F9140C();
  sub_24408F1D8();
}

uint64_t sub_243FF448C()
{
  v3 = *(v0 + 224);
  *(v0 + 352) = *(v0 + 208);
  *(v0 + 368) = v3;
  *(v0 + 384) = *(v0 + 240);
  v4 = *(v0 + 160);
  *(v0 + 288) = *(v0 + 144);
  *(v0 + 304) = v4;
  v5 = *(v0 + 192);
  *(v0 + 320) = *(v0 + 176);
  *(v0 + 336) = v5;
  v6 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v6;
  sub_243F5EED4(v0 + 256, v1);
  KeyPath = swift_getKeyPath();
  v8 = *(v0 + 56);
  (*(*(v0 + 88) + 32))(v8, v2, *(v0 + 96));
  v9 = (v8 + *(*(v0 + 80) + 44));
  *v9 = KeyPath;
  v9[1] = 0x3FD999999999999ALL;
  v10 = sub_243F9A09C();
  v11 = v8;
  v12 = *(v0 + 48);
  sub_243F681C8(v11, v12, &qword_27EDC2DF0);
  *(v12 + *(*(v0 + 72) + 44)) = v10;
  v13 = *(v0 + 40);
  sub_243F681C8(v12, v13, &qword_27EDC2DF8);
  v14 = (v13 + *(*(v0 + 64) + 52));
  v16 = *(v0 + 8);
  v15 = *(v0 + 16);
  *v14 = v15;
  v14[1] = v16;

  v17 = sub_2440579C8(0, v15);
  v19 = v18;

  *(v0 + 112) = v17;
  *(v0 + 120) = v19;
  sub_243F5DD50(&qword_27EDC2D50, &qword_27EDC2D58);
  sub_2440D2440();

  return sub_243F5EED4(v13, &qword_27EDC2D58);
}

void sub_243FF4638(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView();
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F80);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  sub_243FF70E0(a1, v10);
  v7 = sub_244030640();
  sub_24403067C(a1, v7, v9, v8 & 1, v4);
  sub_243FF713C(&qword_27EDC2F88, type metadata accessor for BottomErrorView);
  sub_24408F1D8();
}

uint64_t sub_243FF47AC()
{
  sub_243FF7184(v5);
  v6 = sub_2440D20D0();
  sub_2440707B4();
  sub_2440D13D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F90) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_2440D20A0();
  sub_2440D13D0();
  v17 = v3 + *(v4 + 44);
  *v17 = v16;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  *(v17 + 32) = v21;
  *(v17 + 40) = 0;
  sub_243F5F574(v3, v2, v1);
  *v0 = 0;
  *(v0 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC2F98);
  sub_243F5F574(v2, v0 + *(v22 + 48), v1);
  sub_243F5EED4(v3, v1);
  return sub_243F5EED4(v2, v1);
}

uint64_t sub_243FF48C4(char a1)
{
  v2 = sub_2440D2BA0();
  if (a1)
  {
    MEMORY[0x28223BE20](v2);
    sub_2440D16E0();

    sub_2440D2BA0();
    sub_2440D2B60();
  }

  else
  {
    sub_2440D2B60();

    MEMORY[0x28223BE20](v4);
    sub_2440D16E0();

    v3 = sub_2440D2BA0();
  }

  MEMORY[0x28223BE20](v3);
  sub_2440D16E0();
}

uint64_t sub_243FF4A94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v14 = *(v1 + 96);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  sub_243FF4EFC(v13, v12);
  v10 = sub_2440D20D0();
  result = sub_2440D1860();
  *a1 = sub_243FF721C;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_243FF4B54(uint64_t a1)
{
  v2 = sub_243FF5304();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FF4BA0(uint64_t a1)
{
  v2 = sub_243FF5304();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FF4BEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2440D1AA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243FF4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_243FF4D64@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  type metadata accessor for PINViewContext();
  v2 = sub_2440B38F0();
  type metadata accessor for CommandExecutor();

  v3 = sub_243F9CAA8();
  type metadata accessor for PINViewState();

  v4 = sub_2440B3D68(v2);
  type metadata accessor for PINViewModel();

  sub_243F51980(v5, v3);
  sub_243FF713C(&qword_27EDC0B80, type metadata accessor for PINViewModel);
  result = sub_2440D1730();
  *a1 = sub_243FED1A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v4;
  *(a1 + 80) = v2;
  *(a1 + 88) = v3;
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_243FF4EE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

unint64_t sub_243FF5084()
{
  result = qword_27EDC2A98;
  if (!qword_27EDC2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2A98);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_243FF512C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243FF5174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FF51F4()
{
  result = qword_27EDC2AA0;
  if (!qword_27EDC2AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AA8);
    sub_243F5DD50(&qword_27EDC2AB0, &qword_27EDC2AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AA0);
  }

  return result;
}

unint64_t sub_243FF52B0()
{
  result = qword_27EDC2AC0;
  if (!qword_27EDC2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AC0);
  }

  return result;
}

unint64_t sub_243FF5304()
{
  result = qword_27EDC2AC8;
  if (!qword_27EDC2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2AC8);
  }

  return result;
}

unint64_t sub_243FF5358()
{
  result = qword_27EDC2B18;
  if (!qword_27EDC2B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AE0);
    sub_243FF5410();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B18);
  }

  return result;
}

unint64_t sub_243FF5410()
{
  result = qword_27EDC2B20;
  if (!qword_27EDC2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AD8);
    sub_243FF549C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B20);
  }

  return result;
}

unint64_t sub_243FF549C()
{
  result = qword_27EDC2B28;
  if (!qword_27EDC2B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AD0);
    sub_243F5DD50(&qword_27EDC2B30, &qword_27EDC2B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B28);
  }

  return result;
}

uint64_t sub_243FF5554()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  v3 = *(v0 + 96);
  *(v2 + 80) = *(v0 + 80);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(v0 + 112);
  v4 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v4;
  v5 = *(v0 + 64);
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = v5;
  v6 = *(*v1 + 1016);
  sub_243FF4EFC(v0 + 16, v9);
  v6(sub_243FF5A50, v2);

  return (*(*v1 + 992))(v7);
}

void sub_243FF5664()
{
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
  v0 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
}

unint64_t sub_243FF579C()
{
  result = qword_27EDC2B48;
  if (!qword_27EDC2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2B08);
    sub_243FF5828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B48);
  }

  return result;
}

unint64_t sub_243FF5828()
{
  result = qword_27EDC2B50;
  if (!qword_27EDC2B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2B00);
    sub_243FF58B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B50);
  }

  return result;
}

unint64_t sub_243FF58B4()
{
  result = qword_27EDC2B58;
  if (!qword_27EDC2B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AF8);
    sub_243FF596C();
    sub_243F5DD50(&qword_27EDC2B70, &qword_27EDC2B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B58);
  }

  return result;
}

unint64_t sub_243FF596C()
{
  result = qword_27EDC2B60;
  if (!qword_27EDC2B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2AF0);
    sub_243FF5DB4(&qword_27EDC2B68, &qword_27EDC2AE8, &unk_2440DDFD0, sub_243FF5358);
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2B60);
  }

  return result;
}

void sub_243FF5A50(char a1)
{
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
  v2 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(a1 & 1);
}

double sub_243FF5B40(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
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

double sub_243FF5B64(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

unint64_t sub_243FF5B8C()
{
  result = qword_27EDC2C40;
  if (!qword_27EDC2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BE8);
    sub_243FF5C44();
    sub_243F5DD50(&qword_27EDC1600, &qword_27EDC1608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C40);
  }

  return result;
}

unint64_t sub_243FF5C44()
{
  result = qword_27EDC2C48;
  if (!qword_27EDC2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BE0);
    sub_243FF5CFC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C48);
  }

  return result;
}

unint64_t sub_243FF5CFC()
{
  result = qword_27EDC2C50;
  if (!qword_27EDC2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BD8);
    sub_243F5DD50(&qword_27EDC2C58, &qword_27EDC2BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2C50);
  }

  return result;
}

uint64_t sub_243FF5DB4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243FF713C(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FF5E68()
{
  v1 = v0;
  type metadata accessor for CoarseRotationManager(0);
  sub_243FF713C(&qword_27EDC2A90, type metadata accessor for CoarseRotationManager);
  v2 = sub_2440D1490();
  (*((*MEMORY[0x277D85000] & *v2) + 0xC8))();

  return (*(**(*(v1 + 48) + 64) + 160))();
}

unint64_t sub_243FF5F64()
{
  result = qword_27EDC2CA8;
  if (!qword_27EDC2CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BB8);
    sub_243FF713C(&qword_27EDC0BC0, type metadata accessor for PINPrivacyLockView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2CA8);
  }

  return result;
}

unint64_t sub_243FF6020()
{
  result = qword_27EDC2CB0;
  if (!qword_27EDC2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2BA8);
    sub_243F5DD50(&qword_27EDC2CB8, &qword_27EDC2BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2CB0);
  }

  return result;
}

uint64_t sub_243FF60D8(unsigned int a1)
{
  result = (*(**(v1 + 88) + 648))();
  if ((result & 1) == 0)
  {
    return sub_243F543B0(a1 | (((a1 >> 8) & 1) << 8));
  }

  return result;
}

uint64_t sub_243FF6184()
{
  v1 = *(v0 + 48);
  if ((*(*v1 + 352))())
  {
    (*(*v1 + 360))(0);
  }

  return sub_243F58A2C();
}

uint64_t sub_243FF6208()
{
  v1 = (*(**(v0 + 88) + 552))();
  if (sub_2440B446C(v1 & 1))
  {
    return sub_243F552A4();
  }

  else
  {
    return sub_243F5C708();
  }
}

unint64_t sub_243FF627C()
{
  result = qword_27EDC2D48;
  if (!qword_27EDC2D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D40);
    sub_243F5DD50(&qword_27EDC2D50, &qword_27EDC2D58);
    sub_243FF713C(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2D48);
  }

  return result;
}

unint64_t sub_243FF6364()
{
  result = qword_27EDC2D68;
  if (!qword_27EDC2D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CE8);
    sub_243F5DD50(&qword_27EDC2D70, &qword_27EDC2D78);
    sub_243F5DD50(&qword_27EDC2D80, &qword_27EDC2D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2D68);
  }

  return result;
}

unint64_t sub_243FF6448()
{
  result = qword_27EDC2DA0;
  if (!qword_27EDC2DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D08);
    sub_243FF6500();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DA0);
  }

  return result;
}

unint64_t sub_243FF6500()
{
  result = qword_27EDC2DA8;
  if (!qword_27EDC2DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D00);
    sub_243FF658C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DA8);
  }

  return result;
}

unint64_t sub_243FF658C()
{
  result = qword_27EDC2DB0;
  if (!qword_27EDC2DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CF8);
    sub_243FF6644();
    sub_243F5DD50(&qword_27EDC2DD0, &qword_27EDC2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DB0);
  }

  return result;
}

unint64_t sub_243FF6644()
{
  result = qword_27EDC2DB8;
  if (!qword_27EDC2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CF0);
    sub_243FF66D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DB8);
  }

  return result;
}

unint64_t sub_243FF66D0()
{
  result = qword_27EDC2DC0;
  if (!qword_27EDC2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D98);
    sub_243FF675C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DC0);
  }

  return result;
}

unint64_t sub_243FF675C()
{
  result = qword_27EDC2DC8;
  if (!qword_27EDC2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2CE8);
    sub_2440D1C00();
    sub_243FF6364();
    sub_243FF713C(&qword_27EDC2D88, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1D70, &qword_27EDC1D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2DC8);
  }

  return result;
}

unint64_t sub_243FF68A0()
{
  result = qword_27EDC2E58;
  if (!qword_27EDC2E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E50);
    sub_243FF692C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E58);
  }

  return result;
}

unint64_t sub_243FF692C()
{
  result = qword_27EDC2E60;
  if (!qword_27EDC2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E68);
    sub_243FF69E4();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E60);
  }

  return result;
}

unint64_t sub_243FF69E4()
{
  result = qword_27EDC2E70;
  if (!qword_27EDC2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E78);
    sub_243FF6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E70);
  }

  return result;
}

unint64_t sub_243FF6A70()
{
  result = qword_27EDC2E80;
  if (!qword_27EDC2E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2E88);
    sub_243FCE0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2E80);
  }

  return result;
}

uint64_t sub_243FF6AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;

  v5 = sub_243FF3EE8();
  (*(**(v2 + 88) + 456))(v9);
  v6 = v10;
  if (v10)
  {
    v7 = sub_243F5EED4(v9, &qword_27EDBFF68);
    v6 = (*(**(v2 + 48) + 400))(v7) ^ 1;
  }

  return sub_2440112E4(v4, v5 & 1, v6 & 1, a2);
}

uint64_t sub_243FF6C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  v4 = sub_243FF3EE8();

  return sub_244012DEC(v3, v4 & 1, &off_285773298, a2);
}

unint64_t sub_243FF6C7C()
{
  result = qword_27EDC2EF8;
  if (!qword_27EDC2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2EF8);
  }

  return result;
}

double sub_243FF6CD0(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

unint64_t sub_243FF6D0C()
{
  result = qword_27EDC2F40;
  if (!qword_27EDC2F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F28);
    sub_243FF6D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F40);
  }

  return result;
}

unint64_t sub_243FF6D98()
{
  result = qword_27EDC2F48;
  if (!qword_27EDC2F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F20);
    sub_243FF6E50();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F48);
  }

  return result;
}

unint64_t sub_243FF6E50()
{
  result = qword_27EDC2F50;
  if (!qword_27EDC2F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F18);
    sub_243FF6EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F50);
  }

  return result;
}

unint64_t sub_243FF6EDC()
{
  result = qword_27EDC2F58;
  if (!qword_27EDC2F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F10);
    sub_243FF6F94();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F58);
  }

  return result;
}

unint64_t sub_243FF6F94()
{
  result = qword_27EDC2F60;
  if (!qword_27EDC2F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC2F08);
    sub_243FF713C(&qword_27EDC2F68, type metadata accessor for PINPromptView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2F60);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  sub_243FF4EE4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_243FF713C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243FF7184(uint64_t a1)
{
  v2 = type metadata accessor for BottomErrorView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243FF7224@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_2440D10F0();
  v6 = v5();

  if (v6 & 1) != 0 && ((sub_243FF9A44(), (sub_243FD667C()) || (sub_243FD6570() & 1) != 0 || (sub_243FD6738()))
  {
    v7 = sub_243F4DF68();
    sub_243F4DE64(v7, v4);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v13 = sub_2440D11C0();
      v14 = sub_2440D3490();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_243F48000, v13, v14, "using mocked controller", v15, 2u);
        MEMORY[0x245D58570](v15, -1, -1);
      }

      (*(v9 + 8))(v4, v8);
    }

    v10 = type metadata accessor for MockPINController();
    result = sub_244051798();
    v12 = &off_28577AAE8;
  }

  else
  {
    v10 = type metadata accessor for SPRPINController();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0;
    v12 = &off_285777F50;
  }

  a1[3] = v10;
  a1[4] = v12;
  *a1 = result;
  return result;
}

uint64_t sub_243FF7434()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

id sub_243FF7484()
{
  v58[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v53 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = v10;
    return v10;
  }

  v12 = sub_243F4DF68();
  sub_243F4DE64(v12, v9);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v55 = *(v14 + 48);
  v15 = v55(v9, 1, v13);
  v56 = v13;
  if (v15 == 1)
  {
    sub_243F5FAB0(v9);
  }

  else
  {
    v54 = v12;
    v16 = v14;
    v17 = v0;
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_243F48000, v18, v19, "creating controller", v20, 2u);
      MEMORY[0x245D58570](v20, -1, -1);
    }

    v14 = v16;
    (*(v16 + 8))(v9, v13);
    v0 = v17;
    v12 = v54;
  }

  v21 = objc_opt_self();
  v22 = [v21 shared];
  v58[0] = 0;
  v10 = [v22 makePINControllerAndReturnError_];

  v23 = v58[0];
  if (v10)
  {
    v24 = *(v0 + 16);
    *(v0 + 16) = v10;
    v25 = v23;
LABEL_10:
    v26 = v10;

    return v10;
  }

  v54 = v14;
  v27 = v58[0];
  v28 = sub_2440D0550();

  swift_willThrow();
  v29 = *(v0 + 16);
  *(v0 + 16) = 0;

  v58[0] = v28;
  v30 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
  type metadata accessor for SPRXPCError(0);
  if (swift_dynamicCast())
  {
    v31 = v0;
    v32 = v57;
    _s3__C4CodeOMa_0(0);
    v58[0] = 14001;
    sub_243FFA61C(&qword_27EDC2FB8, _s3__C4CodeOMa_0);
    v33 = v32;
    v34 = sub_2440D04B0();

    if (v34)
    {
      sub_243F4DE64(v12, v7);
      if (v55(v7, 1, v56) == 1)
      {
        sub_243F5FAB0(v7);
      }

      else
      {
        v45 = sub_2440D11C0();
        v46 = sub_2440D3470();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_243F48000, v45, v46, "service disconnected, trying again", v47, 2u);
          MEMORY[0x245D58570](v47, -1, -1);
        }

        (*(v54 + 8))(v7, v56);
      }

      v48 = v31;
      v49 = [v21 shared];
      v58[0] = 0;
      v10 = [v49 makePINControllerAndReturnError_];

      v50 = v58[0];
      if (v10)
      {
      }

      else
      {
        v51 = v50;
        v52 = sub_2440D0550();

        swift_willThrow();
      }

      v24 = *(v48 + 16);
      *(v48 + 16) = v10;
      goto LABEL_10;
    }
  }

  sub_243F4DE64(v12, v4);
  v35 = v56;
  if (v55(v4, 1, v56) == 1)
  {

    sub_243F5FAB0(v4);
  }

  else
  {
    v36 = v28;
    v37 = sub_2440D11C0();
    v38 = sub_2440D3470();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_2440D3AB0();
      v43 = sub_243F4E6F8(v41, v42, v58);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_243F48000, v37, v38, "creation failed: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245D58570](v40, -1, -1);
      MEMORY[0x245D58570](v39, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v4, v35);
  }

  return 0;
}

uint64_t sub_243FF7AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v57 = &v57 - v13;
  v59 = sub_2440D0AC0();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_243FF7484();
  if (v17)
  {
    v60 = v17;
    v18 = sub_2440D0620();
    if (v19 >> 60 != 15)
    {
      a2 = v18;
      v20 = v19;
      sub_2440D10D0();
      v22 = v21;
      v23 = sub_2440D0670();
      v24 = a4 ? sub_2440D2F80() : 0;
      v31 = [objc_allocWithZone(MEMORY[0x277D64020]) initWithDigest:v23 pinToken:v24 transactionDataLifetime:v22];

      sub_243F5FF20(a2, v20);
      if (v31)
      {
        sub_2440D09A0();
        sub_2440D0AA0();
        v34 = *(v14 + 8);
        v32 = (v14 + 8);
        v33 = v34;
        v35 = v59;
        v34(v16, v59);
        v36 = v60;
        v37 = v58;
        v38 = sub_2440D34B0();
        v39 = v37;
        if (!v37)
        {
          a2 = v38;
          v58 = v32;
          if (*(v38 + 16) == 10)
          {
            sub_2440D09A0();
            sub_2440D0A90();

            v33(v16, v35);
            return a2;
          }

          v46 = sub_243F4DF68();
          v47 = v57;
          sub_243F4DE64(v46, v57);
          v48 = sub_2440D11E0();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v47, 1, v48) == 1)
          {
            sub_243F5FAB0(v47);
          }

          else
          {
            v50 = sub_2440D11C0();
            v51 = sub_2440D3470();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&dword_243F48000, v50, v51, "bad mapping", v52, 2u);
              MEMORY[0x245D58570](v52, -1, -1);
            }

            (*(v49 + 8))(v47, v48);
          }

          sub_243FFA514();
          v39 = swift_allocError();
          *v53 = 1;
          swift_willThrow();
          v35 = v59;
          v36 = v60;
        }

        sub_2440D09A0();
        sub_2440D0A90();
        v33(v16, v35);
        v54 = v39;
        a2 = sub_243FFA420(v39);
        sub_243FFA514();
        swift_allocError();
        *v55 = a2 & 1;
        swift_willThrow();

        return a2;
      }
    }

    v40 = sub_243F4DF68();
    sub_243F4DE64(v40, v12);
    v41 = sub_2440D11E0();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v12, 1, v41) == 1)
    {
      sub_243F5FAB0(v12);
    }

    else
    {
      a2 = sub_2440D11C0();
      v43 = sub_2440D3470();
      if (os_log_type_enabled(a2, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_243F48000, a2, v43, "could not build parameters", v44, 2u);
        MEMORY[0x245D58570](v44, -1, -1);
      }

      (*(v42 + 8))(v12, v41);
    }

    sub_243FFA514();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
  }

  else
  {
    v25 = sub_243F4DF68();
    sub_243F4DE64(v25, v9);
    a2 = sub_2440D11E0();
    v26 = *(a2 - 8);
    if ((*(v26 + 48))(v9, 1, a2) == 1)
    {
      sub_243F5FAB0(v9);
    }

    else
    {
      v27 = sub_2440D11C0();
      v28 = sub_2440D3470();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_243F48000, v27, v28, "undefined controller", v29, 2u);
        MEMORY[0x245D58570](v29, -1, -1);
      }

      (*(v26 + 8))(v9, a2);
    }

    sub_243FFA514();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

  return a2;
}

void sub_243FF81BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v27 - v4;
  v6 = sub_243FF7484();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2440D34A0();
    if (v8)
    {
      if (*(v8 + 16) == 10)
      {

        return;
      }
    }

    v12 = sub_243F4DF68();
    sub_243F4DE64(v12, v5);
    v13 = sub_2440D11E0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_243F5FAB0(v5);
    }

    else
    {
      v15 = sub_2440D11C0();
      v16 = sub_2440D3470();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_243F48000, v15, v16, "bad mapping", v17, 2u);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      (*(v14 + 8))(v5, v13);
    }

    sub_243FFA514();
    v18 = swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v20 = v18;
    v21 = sub_243FFA420(v18);
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
  }

  else
  {
    v9 = sub_243F4DF68();
    sub_243F4DE64(v9, v3);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      sub_243F5FAB0(v3);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "undefined controller", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v11 + 8))(v3, v10);
    }

    sub_243FFA514();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }
}

void sub_243FF8550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = sub_2440D0AC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243FF7484();
  if (v8)
  {
    v9 = v8;
    sub_2440D09D0();
    sub_2440D0AA0();
    v10 = *(v5 + 8);
    v10(v7, v4);
    sub_2440D34C0();
    sub_2440D09D0();
    sub_2440D0A90();
    if (v0)
    {
      v10(v7, v4);
      v11 = v0;
      v12 = sub_243FFA420(v0);
      sub_243FFA514();
      swift_allocError();
      *v13 = v12;
      swift_willThrow();
    }

    else
    {

      v10(v7, v4);
    }
  }

  else
  {
    v14 = sub_243F4DF68();
    sub_243F4DE64(v14, v3);
    v15 = sub_2440D11E0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v3, 1, v15) == 1)
    {
      sub_243F5FAB0(v3);
    }

    else
    {
      v17 = sub_2440D11C0();
      v18 = sub_2440D3470();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_243F48000, v17, v18, "undefined controller", v19, 2u);
        MEMORY[0x245D58570](v19, -1, -1);
      }

      (*(v16 + 8))(v3, v15);
    }

    sub_243FFA514();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }
}

void sub_243FF8884()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v23 - v1;
  v3 = sub_2440D0AC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243FF7484();
  if (v7)
  {
    v8 = v7;
    sub_2440D0A00();
    sub_2440D0AA0();
    v9 = *(v4 + 8);
    v9(v6, v3);
    v23[0] = 0;
    if ([v8 removeLastDigitAndReturnError_])
    {
      v10 = v23[0];
      sub_2440D0A00();
      sub_2440D0A90();

      v9(v6, v3);
    }

    else
    {
      v14 = v23[0];
      v15 = sub_2440D0550();

      swift_willThrow();
      sub_2440D0A00();
      sub_2440D0A90();
      v9(v6, v3);
      v16 = v15;
      v17 = sub_243FFA420(v15);
      sub_243FFA514();
      swift_allocError();
      *v18 = v17;
      swift_willThrow();
    }
  }

  else
  {
    v11 = sub_243F4DF68();
    sub_243F4DE64(v11, v2);
    v12 = sub_2440D11E0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v2, 1, v12) == 1)
    {
      sub_243F5FAB0(v2);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3470();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243F48000, v19, v20, "undefined controller", v21, 2u);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      (*(v13 + 8))(v2, v12);
    }

    sub_243FFA514();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }
}

void sub_243FF8C00(uint64_t a1, void (*a2)(id))
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_2440D0AC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243FF7484();
  if (v11)
  {
    v12 = v11;
    sub_2440D09F0();
    sub_2440D0AA0();
    v27 = *(v8 + 8);
    v27(v10, v7);
    if (a1 < 1)
    {
LABEL_8:
      sub_2440D09F0();
      sub_2440D0A90();

      v27(v10, v7);
    }

    else
    {
      v13 = a1 + 1;
      while (1)
      {
        v28[0] = 0;
        if (![v12 removeLastDigitAndReturnError_])
        {
          break;
        }

        v14 = v28[0];
        if (a2)
        {
          a2(v14);
        }

        if (--v13 <= 1)
        {
          goto LABEL_8;
        }
      }

      v18 = v28[0];
      v19 = sub_2440D0550();

      swift_willThrow();
      sub_2440D09F0();
      sub_2440D0A90();
      v27(v10, v7);
      v20 = v19;
      v21 = sub_243FFA420(v19);
      sub_243FFA514();
      swift_allocError();
      *v22 = v21;
      swift_willThrow();
    }
  }

  else
  {
    v15 = sub_243F4DF68();
    sub_243F4DE64(v15, v6);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_243F5FAB0(v6);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "undefined controller", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v17 + 8))(v6, v16);
    }

    sub_243FFA514();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }
}

void *sub_243FF8FD0()
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v44 - v3;
  v5 = sub_2440D0AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243FF7484();
  if (v9)
  {
    v1 = v9;
    sub_2440D0A30();
    sub_2440D0AA0();
    v10 = *(v6 + 8);
    v10(v8, v5);
    v49[0] = 0;
    v11 = [v1 generatePINBlockAndReturnError_];
    if (v11)
    {
      v12 = v11;
      v13 = v49[0];
      v45 = [v12 isPinBypass];
      v14 = [v12 pinKEKHash];
      v15 = sub_2440D0680();
      v46 = v1;
      v47 = v10;
      v16 = v15;
      v48 = v0;
      v18 = v17;

      v19 = sub_24405864C();
      v21 = sub_24405865C(v19, v20, v16, v18);
      v44[4] = v22;
      v44[5] = v21;

      sub_243F5D81C(v16, v18);
      v23 = [v12 pinCipherBlob];
      v24 = sub_2440D0680();
      v44[2] = v25;
      v44[3] = v24;

      v26 = [v12 pinKeyBlob];
      v27 = sub_2440D0680();
      v44[0] = v28;
      v44[1] = v27;

      v29 = [v12 pinAppletAttestationData];
      sub_2440D0680();

      v30 = [v12 casd];
      sub_2440D0680();

      v31 = objc_allocWithZone(sub_2440D0FA0());
      v1 = sub_2440D0F90();

      sub_2440D0A30();
      sub_2440D0A90();

      v47(v8, v5);
    }

    else
    {
      v35 = v49[0];
      v36 = sub_2440D0550();

      swift_willThrow();
      sub_2440D0A30();
      sub_2440D0A90();
      v10(v8, v5);
      v37 = v36;
      LOBYTE(v35) = sub_243FFA420(v36);
      sub_243FFA514();
      swift_allocError();
      *v38 = v35 & 1;
      swift_willThrow();
    }
  }

  else
  {
    v32 = sub_243F4DF68();
    sub_243F4DE64(v32, v4);
    v33 = sub_2440D11E0();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v4, 1, v33) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v39 = sub_2440D11C0();
      v40 = sub_2440D3470();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_243F48000, v39, v40, "undefined controller", v41, 2u);
        MEMORY[0x245D58570](v41, -1, -1);
      }

      (*(v34 + 8))(v4, v33);
    }

    sub_243FFA514();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_243FF94CC()
{
  v1 = v0;
  v2 = sub_2440D0AC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  result = sub_243FF7484();
  if (result)
  {
    if (*(v0 + 24))
    {

      return 0;
    }

    else
    {
      v19 = result;
      v10 = sub_243F4DF68();
      sub_243F4DE64(v10, v8);
      v11 = sub_2440D11E0();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        sub_243F5FAB0(v8);
      }

      else
      {
        v13 = sub_2440D11C0();
        v14 = sub_2440D3490();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_243F48000, v13, v14, "canceling capture", v15, 2u);
          MEMORY[0x245D58570](v15, -1, -1);
        }

        (*(v12 + 8))(v8, v11);
      }

      sub_2440D0A20();
      sub_2440D0AA0();
      v16 = *(v3 + 8);
      v16(v5, v2);
      *(v1 + 24) = 1;
      v17 = v19;
      [v19 cancelPINCapture];
      sub_2440D0A20();
      sub_2440D0A90();

      v16(v5, v2);
      return 1;
    }
  }

  return result;
}

void sub_243FF9760()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v20 - v1;
  v3 = sub_243FF7484();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2440D2F80();
    v20[0] = 0;
    v6 = [v4 verifyWithPINToken:v5 error:v20];

    if (v6)
    {
      v7 = v20[0];
    }

    else
    {
      v11 = v20[0];
      v12 = sub_2440D0550();

      swift_willThrow();
      v13 = v12;
      v14 = sub_243FFA420(v12);
      sub_243FFA514();
      swift_allocError();
      *v15 = v14;
      swift_willThrow();
    }
  }

  else
  {
    v8 = sub_243F4DF68();
    sub_243F4DE64(v8, v2);
    v9 = sub_2440D11E0();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v2, 1, v9) == 1)
    {
      sub_243F5FAB0(v2);
    }

    else
    {
      v16 = sub_2440D11C0();
      v17 = sub_2440D3470();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_243F48000, v16, v17, "undefined controller", v18, 2u);
        MEMORY[0x245D58570](v18, -1, -1);
      }

      (*(v10 + 8))(v2, v9);
    }

    sub_243FFA514();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }
}

uint64_t sub_243FF9A0C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_243FF9A44()
{
  result = qword_27EDC2FA0;
  if (!qword_27EDC2FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC2FA0);
  }

  return result;
}

uint64_t sub_243FF9CB4(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FF0, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243FF9D20(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FF0, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243FF9D8C(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243FF9DF8(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243FF9E64(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243FF9ED0(void *a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243FF9F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243FF9FEC(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243FFA058(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243FFA0C4(void *a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243FFA154(uint64_t a1, uint64_t a2)
{
  v4 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243FFA1D4(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3020, type metadata accessor for PINControllerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243FFA240(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC3020, type metadata accessor for PINControllerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243FFA2AC(uint64_t a1)
{
  v2 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243FFA318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243FFA39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FFA61C(&qword_27EDC3058, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

BOOL sub_243FFA420(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
  type metadata accessor for PINControllerError(0);
  if (swift_dynamicCast())
  {
    sub_243FFA61C(&qword_27EDC2FC0, type metadata accessor for PINControllerError);
    sub_2440D0500();

    return v4 != 11013;
  }

  else
  {

    return 1;
  }
}

unint64_t sub_243FFA514()
{
  result = qword_27EDC2FA8;
  if (!qword_27EDC2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2FA8);
  }

  return result;
}

unint64_t sub_243FFA56C()
{
  result = qword_27EDC2FB0;
  if (!qword_27EDC2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC2FB0);
  }

  return result;
}

uint64_t sub_243FFA61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_243FFABE4()
{
  if (qword_27EDCD740 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64C0;
}

uint64_t *sub_243FFAC60()
{
  if (qword_27EDCD748 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64C8;
}

uint64_t sub_243FFACB0()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64D0 = result;
  return result;
}

uint64_t *sub_243FFAD00()
{
  if (qword_27EDCD750 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64D0;
}

uint64_t sub_243FFAD50()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64D8 = result;
  return result;
}

uint64_t *sub_243FFADA0()
{
  if (qword_27EDCD758 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64D8;
}

uint64_t sub_243FFADF0()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64E0 = result;
  return result;
}

uint64_t *sub_243FFAE40()
{
  if (qword_27EDCD760 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64E0;
}

uint64_t sub_243FFAE90()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC64E8 = result;
  return result;
}

uint64_t *sub_243FFAEE0()
{
  if (qword_27EDCD768 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64E8;
}

uint64_t *sub_243FFAF58()
{
  if (qword_27EDCD770 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64F0;
}

uint64_t *sub_243FFAFD4()
{
  if (qword_27EDCD778 != -1)
  {
    swift_once();
  }

  return &qword_27EDC64F8;
}

uint64_t sub_243FFB024()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6500 = result;
  return result;
}

uint64_t *sub_243FFB074()
{
  if (qword_27EDCD780 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6500;
}

uint64_t *sub_243FFB0DC()
{
  if (qword_27EDCD788 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6508;
}

uint64_t sub_243FFB12C()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6510 = result;
  return result;
}

uint64_t *sub_243FFB17C()
{
  if (qword_27EDCD790 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6510;
}

uint64_t sub_243FFB1CC()
{
  v0 = *sub_244056A6C();
  result = sub_2440D26F0();
  qword_27EDC6518 = result;
  return result;
}

uint64_t *sub_243FFB21C()
{
  if (qword_27EDCD798 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6518;
}

uint64_t sub_243FFB294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *sub_244056A6C();
  result = sub_2440D26F0();
  *a4 = result;
  return result;
}

uint64_t *sub_243FFB2E4()
{
  if (qword_27EDCD7A0 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6520;
}

void sub_243FFB334(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3070);
  v26[3] = *(v3 - 8);
  v26[4] = v3;
  MEMORY[0x28223BE20](v3);
  v26[1] = v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3078);
  MEMORY[0x28223BE20](v5);
  v26[2] = v26 - v6;
  v26[0] = sub_2440D1C20();
  v29 = 1;
  v7 = *(v1 + 176);
  v30[10] = *(v1 + 160);
  v30[11] = v7;
  *&v30[12] = *(v1 + 192);
  v8 = *(v1 + 96);
  v30[7] = *(v1 + 112);
  v9 = *(v1 + 128);
  v30[9] = *(v1 + 144);
  v30[8] = v9;
  v10 = *(v1 + 48);
  v30[2] = *(v1 + 32);
  v30[3] = v10;
  v11 = *(v1 + 64);
  v30[5] = *(v1 + 80);
  v30[6] = v8;
  v30[4] = v11;
  v12 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v12;
  *v27 = *(v1 + 248);
  v27[16] = *(v1 + 264);
  sub_243FB07E4(v30, v32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068);
  MEMORY[0x245D56840](v32);
  v14 = LOBYTE(v32[0]) == 0;
  v32[0] = *(v1 + 224);
  LOBYTE(v32[1]) = *(v1 + 240);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](v27);
  v16 = v27[0];
  v17 = *(v2 + 216);
  sub_243F676A0();
  sub_243F4E2F4();
  sub_243F62020();
  sub_243F676A0();
  sub_243FD4834(v30, v14, v16, v17, v31);
  v32[0] = *(v2 + 248);
  LOBYTE(v32[1]) = *(v2 + 264);
  MEMORY[0x245D56840](v27, v13);
  v18 = v27[0] == 1;
  v32[0] = *(v2 + 224);
  LOBYTE(v32[1]) = *(v2 + 240);
  MEMORY[0x245D56840](v27, v15);
  v19 = v27[0];
  sub_24407D230();
  sub_243F62020();
  sub_243F676A0();
  sub_24407D238(v18, v19, &v39);
  v20 = sub_243FFBA34();
  v32[0] = *(v2 + 224);
  LOBYTE(v32[1]) = *(v2 + 240);
  MEMORY[0x245D56840](v27, v15);
  v21 = v27[0];
  v22 = *(v2 + 200);
  v23 = *(v2 + 208);
  v32[0] = *(v2 + 248);
  LOBYTE(v32[1]) = *(v2 + 264);

  MEMORY[0x245D56840](v27, v13);
  if (v27[0] == 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = 4;
  }

  if (v27[0] == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24;
  }

  sub_243F62020();
  sub_243F676A0();
  sub_24407E538(v20, v21, v22, v23, v25, &v34);
  memcpy(v27, v31, 0x118uLL);
  memcpy(v33, v31, 0x118uLL);
  v43[0] = v39;
  v43[1] = v40;
  v43[2] = v41;
  *(&v33[17] + 8) = v39;
  *(&v33[18] + 8) = v40;
  *(&v33[19] + 8) = v41;
  v45[4] = v38;
  v45[3] = v37;
  v45[2] = v36;
  v45[0] = v34;
  v45[1] = v35;
  v44 = v42;
  *(&v33[20] + 1) = v42;
  v33[24] = v37;
  v33[25] = v38;
  v33[22] = v35;
  v33[23] = v36;
  v33[21] = v34;
  v46[3] = v37;
  v46[4] = v38;
  v46[1] = v35;
  v46[2] = v36;
  v46[0] = v34;
  sub_243FD45A4(v27, v32);
  sub_243FFDFC0(v43, v32);
  sub_243FFE01C(v45, v32);
  sub_243FFE078(v46);
  v47[0] = v39;
  v47[1] = v40;
  v47[2] = v41;
  v48 = v42;
  sub_243FFE0CC(v47);
  memcpy(v32, v31, 0x118uLL);
  sub_243FFE120(v32);
  memcpy(v30, v33, sizeof(v30));
  memcpy(v31, v33, sizeof(v31));
  sub_243F5F574(v30, v32, &qword_27EDC3080);
  sub_243F5EED4(v31, &qword_27EDC3080);
  memcpy(&v28[7], v30, 0x1A0uLL);
  *v27 = v26[0];
  v27[16] = v29;
  memcpy(&v27[17], v28, 0x1A7uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3088);
  sub_243F5DD50(&qword_27EDC3090, &qword_27EDC3088);
  sub_24408F1C4();
}

uint64_t sub_243FFB860()
{
  memcpy((v0 + 1760), (v0 + 48), 0x1B8uLL);
  sub_243F5EED4(v0 + 1760, v1);
  sub_2440D2B00();
  sub_2440D18E0();
  v5 = *(v0 + 16);
  (*(*(v0 + 24) + 32))(v5, v4, *(v0 + 32));
  v6 = (v5 + *(v3 + 44));
  v7 = *(v0 + 128);
  v6[4] = *(v0 + 112);
  v6[5] = v7;
  v6[6] = *(v0 + 144);
  v8 = *(v0 + 64);
  *v6 = *(v0 + 48);
  v6[1] = v8;
  v9 = *(v0 + 96);
  v6[2] = *(v0 + 80);
  v6[3] = v9;
  v10 = sub_2440CBE68();
  swift_beginAccess();
  v11 = *v10;
  *(v0 + 2816) = *(v2 + 248);
  *(v0 + 2832) = *(v2 + 264);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068);
  MEMORY[0x245D56840](v12);
  LOBYTE(v10) = *(v0 + 2616);
  v13 = *(v0 + 40);
  sub_243FFB9C4(v5, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3098);
  v15 = v13 + *(result + 36);
  *v15 = v11;
  *(v15 + 8) = v10;
  return result;
}

uint64_t sub_243FFB9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_243FFBA34()
{
  v4 = *(v0 + 248);
  v5 = *(v0 + 264);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3068);
  MEMORY[0x245D56840](&v3);
  if (v3 == 2)
  {
    return 1;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 264);
  MEMORY[0x245D56840](&v3, v1);
  return v3 == 3;
}

void sub_243FFBAD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v19 = sub_244070800();
  v20 = sub_2440708D8();
  v21 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v21;
  v22 = *(a1 + 192);
  v23 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v23;
  v24 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v24;
  v25 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v25;
  v26 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v26;
  v27 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v27;
  *(a9 + 192) = v22;
  *(a9 + 200) = a2;
  *(a9 + 208) = a3;
  *(a9 + 216) = a4;
  *(a9 + 224) = a5;
  *(a9 + 232) = a6;
  *(a9 + 240) = a7;
  *(a9 + 248) = a8;
  *(a9 + 256) = a10;
  *(a9 + 264) = a11;
  *(a9 + 272) = v19;
  *(a9 + 280) = v20;
}

uint64_t sub_243FFBBB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440D1C20();
  v4 = MEMORY[0x245D56A90](0.5, 1.0, 0.0);
  v11 = *(v1 + 3);
  v9 = *(v1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v5 = v10;
  v10 = *v1;
  v6 = swift_allocObject();
  v7 = *(v1 + 1);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v1[4];
  LOBYTE(v9) = 1;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = sub_243FFBD20;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_243F91DD4(&v10, &v9);

  return sub_243F5F574(&v11, &v9, &qword_27EDC01B0);
}

uint64_t sub_243FFBCD8()
{

  return swift_deallocObject();
}

uint64_t sub_243FFBD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_2440D1D90();
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x28223BE20](v3);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3118);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  MEMORY[0x28223BE20](v6);
  v73 = v70 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3120) - 8;
  v9 = MEMORY[0x28223BE20](v76);
  v79 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = v70 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3128) - 8;
  v12 = MEMORY[0x28223BE20](v72);
  v74 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = (v70 - v14);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3130) - 8;
  v15 = MEMORY[0x28223BE20](v71);
  v84 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = v70 - v17;
  v18 = *(a1 + 200);
  v19 = *(a1 + 232);
  v100 = *(a1 + 216);
  v101 = v19;
  v102 = *(a1 + 248);
  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v96 = *(a1 + 152);
  v97 = v21;
  v98 = *(a1 + 184);
  v99 = v18;
  v22 = *(a1 + 72);
  v23 = *(a1 + 104);
  v92 = *(a1 + 88);
  v93 = v23;
  v94 = *(a1 + 120);
  v95 = v20;
  v90 = *(a1 + 56);
  v91 = v22;
  v88[0] = *(a1 + 32);
  *&v88[1] = *(a1 + 48);
  sub_243FB07E4(&v90, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
  sub_2440D2820();
  v24 = v103[0];
  v25 = v103[1];
  v88[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2840();
  v26 = v103[0];
  v27 = v103[1];
  v28 = v103[2];
  v89 = *(a1 + 16);
  v88[0] = *(a1 + 16);
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3138);
  sub_2440D2840();
  v29 = v103[0];
  v30 = v103[1];
  v31 = v103[2];
  v32 = sub_244070800();
  v33 = sub_2440708D8();
  v88[10] = v100;
  v88[11] = v101;
  v88[6] = v96;
  v88[7] = v97;
  v88[8] = v98;
  v88[9] = v99;
  v88[2] = v92;
  v88[3] = v93;
  v88[4] = v94;
  v88[5] = v95;
  v88[0] = v90;
  v88[1] = v91;
  *&v88[12] = v102;
  *(&v88[12] + 1) = v24;
  *&v88[13] = v25;
  BYTE8(v88[13]) = 0;
  *&v88[14] = v26;
  *(&v88[14] + 1) = v27;
  LOBYTE(v88[15]) = v28;
  *(&v88[15] + 1) = v29;
  *&v88[16] = v30;
  BYTE8(v88[16]) = v31;
  *&v88[17] = v32;
  *(&v88[17] + 1) = v33;
  v34 = swift_allocObject();
  v35 = *(a1 + 208);
  v34[13] = *(a1 + 192);
  v34[14] = v35;
  v36 = *(a1 + 240);
  v34[15] = *(a1 + 224);
  v34[16] = v36;
  v37 = *(a1 + 144);
  v34[9] = *(a1 + 128);
  v34[10] = v37;
  v38 = *(a1 + 176);
  v34[11] = *(a1 + 160);
  v34[12] = v38;
  v39 = *(a1 + 80);
  v34[5] = *(a1 + 64);
  v34[6] = v39;
  v40 = *(a1 + 112);
  v34[7] = *(a1 + 96);
  v34[8] = v40;
  v41 = *(a1 + 16);
  v34[1] = *a1;
  v34[2] = v41;
  v42 = *(a1 + 48);
  v34[3] = *(a1 + 32);
  v34[4] = v42;
  sub_243FFDD4C(a1, v103);
  sub_243FFDD84();
  v43 = v86;
  sub_2440D23D0();

  memcpy(v103, v88, 0x120uLL);
  sub_243FFDDD8(v103);
  LOBYTE(v29) = sub_2440D20C0();
  sub_2440D13D0();
  v44 = v43 + *(v71 + 44);
  *v44 = v29;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46;
  *(v44 + 24) = v47;
  *(v44 + 32) = v48;
  *(v44 + 40) = 0;
  v49 = sub_2440D1B30();
  v50 = v83;
  *v83 = v49;
  v50[1] = 0;
  *(v50 + 16) = 1;
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3148);
  sub_243FFC620(v51 + *(v52 + 44));
  v53 = v51 + *(v72 + 44);
  sub_2440D2A80();
  LOBYTE(v30) = sub_2440D20B0();
  v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3150) + 36)] = v30;
  sub_2440D1B70();
  v87 = v89;
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3158);
  sub_243FFDE08();
  sub_243F5DD50(&qword_27EDC3168, &qword_27EDC3158);
  v54 = v73;
  sub_2440D2900();
  v55 = v75;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC3170, &qword_27EDC3118);
  v56 = v85;
  v57 = v77;
  v58 = v80;
  sub_2440D23A0();
  (*(v81 + 8))(v55, v58);
  (*(v78 + 8))(v54, v57);
  v59 = sub_2440D20A0();
  v60 = v56 + *(v76 + 44);
  *v60 = v59;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 1;
  v61 = v84;
  sub_243F5F574(v86, v84, &qword_27EDC3130);
  v62 = v83;
  v63 = v74;
  sub_243F5F574(v83, v74, &qword_27EDC3128);
  v64 = v79;
  sub_243F5F574(v56, v79, &qword_27EDC3120);
  v65 = v61;
  v66 = v82;
  sub_243F5F574(v65, v82, &qword_27EDC3130);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3178);
  v68 = v66 + v67[12];
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_243F5F574(v63, v66 + v67[16], &qword_27EDC3128);
  sub_243F5F574(v64, v66 + v67[20], &qword_27EDC3120);
  sub_243F5EED4(v85, &qword_27EDC3120);
  sub_243F5EED4(v62, &qword_27EDC3128);
  sub_243F5EED4(v86, &qword_27EDC3130);
  sub_243F5EED4(v64, &qword_27EDC3120);
  sub_243F5EED4(v63, &qword_27EDC3128);
  return sub_243F5EED4(v84, &qword_27EDC3130);
}

uint64_t sub_243FFC620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D1B10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3190);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3198);
  sub_243FFDE5C();
  sub_2440D2870();
  v16 = sub_2440D20B0();
  sub_2440D13D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31B8) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_2440D1B00();
  (*(v3 + 16))(v6, v8, v2);
  sub_243FFDF14();
  v26 = sub_2440D1610();
  (*(v3 + 8))(v8, v2);
  *&v15[*(v10 + 44)] = v26;
  sub_243F5F574(v15, v13, &qword_27EDC3190);
  *a1 = 0;
  *(a1 + 8) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31C0);
  sub_243F5F574(v13, a1 + *(v27 + 48), &qword_27EDC3190);
  v28 = a1 + *(v27 + 64);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_243F5EED4(v15, &qword_27EDC3190);
  return sub_243F5EED4(v13, &qword_27EDC3190);
}

double sub_243FFC928@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D2B00();
  v4 = v3;
  v5 = sub_243FBB128(v2);
  v6 = sub_243F795D0();
  v7 = sub_243FB9098();
  sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v5, v6, 0xD000000000000016, 0x80000002440EAAC0, sub_243FFCA4C, 0, v14, v7);
  sub_2440707F0();
  swift_beginAccess();
  sub_2440D2B00();
  sub_2440D1560();
  v8 = v14[3];
  *(a1 + 48) = v14[2];
  *(a1 + 64) = v8;
  v9 = v14[1];
  *(a1 + 16) = v14[0];
  *(a1 + 32) = v9;
  *(a1 + 88) = v11;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 80) = v15;
  *(a1 + 104) = v12;
  result = *&v13;
  *(a1 + 120) = v13;
  return result;
}

uint64_t sub_243FFCA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2440D5CF0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = a1;
  *(v2 + 40) = 0xEB00000000646C72;
  sub_2440D3B00();
}

uint64_t sub_243FFCAF4@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3180);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v45 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  sub_2440D1B70();
  *v22 = sub_2440D2300();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  *(v22 + 16) = 256;
  v48 = v22;
  sub_2440D1B70();
  *v20 = sub_2440D2300();
  *(v20 + 1) = v26;
  v20[16] = v27 & 1;
  *(v20 + 3) = v28;
  *(v20 + 16) = 257;
  v47 = v20;
  sub_2440D1B70();
  v29 = v17;
  *v17 = sub_2440D2300();
  *(v17 + 1) = v30;
  v17[16] = v31 & 1;
  *(v17 + 3) = v32;
  *(v17 + 16) = 258;
  v46 = v17;
  sub_2440D1B70();
  *v14 = sub_2440D2300();
  *(v14 + 1) = v33;
  v14[16] = v34 & 1;
  *(v14 + 3) = v35;
  *(v14 + 16) = 259;
  v36 = *(v2 + 16);
  v37 = v11;
  v50 = v11;
  v36(v11, v22, v1);
  v38 = v49;
  v36(v49, v20, v1);
  v39 = v53;
  v36(v53, v29, v1);
  v40 = v51;
  v36(v51, v14, v1);
  v41 = v52;
  v36(v52, v37, v1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3188);
  v36(&v41[v42[12]], v38, v1);
  v36(&v41[v42[16]], v39, v1);
  v36(&v41[v42[20]], v40, v1);
  v43 = *(v2 + 8);
  v43(v14, v1);
  v43(v46, v1);
  v43(v47, v1);
  v43(v48, v1);
  v43(v40, v1);
  v43(v53, v1);
  v43(v38, v1);
  return (v43)(v50, v1);
}

uint64_t sub_243FFCFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v13[12] = v1[12];
  v13[13] = v3;
  v4 = v1[15];
  v13[14] = v1[14];
  v13[15] = v4;
  v5 = v1[9];
  v13[8] = v1[8];
  v13[9] = v5;
  v6 = v1[11];
  v13[10] = v1[10];
  v13[11] = v6;
  v7 = v1[5];
  v13[4] = v1[4];
  v13[5] = v7;
  v8 = v1[7];
  v13[6] = v1[6];
  v13[7] = v8;
  v9 = v1[1];
  v13[0] = *v1;
  v13[1] = v9;
  v10 = v1[3];
  v13[2] = v1[2];
  v13[3] = v10;
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3110);
  return sub_243FFBD7C(v13, a1 + *(v11 + 44));
}

double sub_243FFD060@<D0>(char *a1@<X8>)
{
  sub_243FFD210(v15);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC30A0) + 36);
  v3 = *MEMORY[0x277CDF3C0];
  v4 = sub_2440D1410();
  v5 = *(v4 - 8);
  (*(v5 + 104))(&a1[v2], v3, v4);
  (*(v5 + 56))(&a1[v2], 0, 1, v4);
  v6 = v27;
  *(a1 + 12) = v26;
  *(a1 + 13) = v6;
  v7 = v29;
  *(a1 + 14) = v28;
  *(a1 + 15) = v7;
  v8 = v23;
  *(a1 + 8) = v22;
  *(a1 + 9) = v8;
  v9 = v25;
  *(a1 + 10) = v24;
  *(a1 + 11) = v9;
  v10 = v19;
  *(a1 + 4) = v18;
  *(a1 + 5) = v10;
  v11 = v21;
  *(a1 + 6) = v20;
  *(a1 + 7) = v11;
  v12 = v15[1];
  *a1 = v15[0];
  *(a1 + 1) = v12;
  result = *&v16;
  v14 = v17;
  *(a1 + 2) = v16;
  *(a1 + 3) = v14;
  return result;
}

uint64_t sub_243FFD178(uint64_t a1)
{
  v2 = sub_243FFDF6C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FFD1C4(uint64_t a1)
{
  v2 = sub_243FFDF6C();

  return MEMORY[0x28212D8E0](a1, v2);
}

double sub_243FFD210@<D0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  v27 = v30;
  v2 = *(&v30 + 1);
  sub_2440D2810();
  v3 = v30;
  v4 = *(&v30 + 1);
  v28 = 0x445F535554415453;
  v29 = 0xEB00000000454E4FLL;
  sub_2440D2810();
  v26 = v30;
  v5 = v31;
  sub_243FD5980();
  v6 = sub_2440D3590();
  type metadata accessor for MerchantLogo();
  v7 = sub_243F4E2E4();
  v8 = (*(*v7 + 80))(0xD00000000000001BLL, 0x80000002440EB1A0, 5814);
  v10 = v9;
  v12 = v11;

  v13 = sub_243F4E2FC();
  v25[23] = -18;
  *&v25[24] = 0x6174757246;
  *v25 = 0xE900000000000061;
  strcpy(&v25[8], "Store Location");
  *&v24 = 0xE900000000000061;
  *(&v24 + 1) = 0x747572460A796150;
  *&v23 = v14;
  *(&v23 + 1) = 0x7475724620796150;
  *&v22 = 0;
  *(&v22 + 1) = v13;
  sub_243FFECC0(3, v6, 0x34342E323124, 0xE600000000000000, 0, 0, 4477781, 0xE300000000000000, &v30, 0, 0, v22, v23, v24, *v25, *&v25[16], 0xE500000000000000, v8, v10, v12);
  *(a1 + 32) = v26;
  v15 = v38;
  *(a1 + 200) = v39;
  v16 = v41;
  *(a1 + 216) = v40;
  *(a1 + 232) = v16;
  v17 = v34;
  *(a1 + 136) = v35;
  v18 = v37;
  *(a1 + 152) = v36;
  *(a1 + 168) = v18;
  *(a1 + 184) = v15;
  v19 = v30;
  *(a1 + 72) = v31;
  result = *&v32;
  v21 = v33;
  *(a1 + 88) = v32;
  *(a1 + 104) = v21;
  *(a1 + 120) = v17;
  *a1 = v27;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 48) = v5;
  *(a1 + 248) = v42;
  *(a1 + 56) = v19;
  return result;
}

unint64_t sub_243FFD4A8()
{
  result = qword_27EDC30A8;
  if (!qword_27EDC30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30A8);
  }

  return result;
}

unint64_t sub_243FFD51C()
{
  result = qword_27EDC30B0;
  if (!qword_27EDC30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30B0);
  }

  return result;
}

uint64_t sub_243FFD594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_243FFD5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FFD6AC()
{
  result = qword_27EDC30B8;
  if (!qword_27EDC30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3098);
    sub_243FFD764();
    sub_243F5DD50(&qword_27EDC30C8, &qword_27EDC30D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30B8);
  }

  return result;
}

unint64_t sub_243FFD764()
{
  result = qword_27EDC30C0;
  if (!qword_27EDC30C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3088);
    sub_243F5DD50(&qword_27EDC3090, &qword_27EDC3088);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30C0);
  }

  return result;
}

unint64_t sub_243FFD864()
{
  result = qword_27EDC30D8;
  if (!qword_27EDC30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30E0);
    sub_243FFD8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30D8);
  }

  return result;
}

unint64_t sub_243FFD8F0()
{
  result = qword_27EDC30E8;
  if (!qword_27EDC30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30F0);
    sub_243F5DD50(&qword_27EDC30F8, &qword_27EDC3100);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC30E8);
  }

  return result;
}

unint64_t sub_243FFD9D8()
{
  result = qword_27EDC3108;
  if (!qword_27EDC3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC30A0);
    sub_243FFDA90();
    sub_243F5DD50(&qword_27EDC0710, &qword_27EDC0718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3108);
  }

  return result;
}

unint64_t sub_243FFDA90()
{
  result = qword_27EDCDAB0[0];
  if (!qword_27EDCDAB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDCDAB0);
  }

  return result;
}

uint64_t sub_243FFDAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_243FFDB2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243FFDBD8()
{

  return swift_deallocObject();
}

uint64_t sub_243FFDC88()
{
  v3 = *(v0 + 16);
  v2[1] = *(v0 + 16);
  v4 = *(&v3 + 1);
  sub_243F5F574(&v4, v2, &qword_27EDC1348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v2[0] = v3;
  sub_2440D2830();
  return sub_243F5EED4(&v3, &qword_27EDC01B0);
}

unint64_t sub_243FFDD84()
{
  result = qword_27EDC3140;
  if (!qword_27EDC3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3140);
  }

  return result;
}

unint64_t sub_243FFDE08()
{
  result = qword_27EDC3160;
  if (!qword_27EDC3160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC3160);
  }

  return result;
}

unint64_t sub_243FFDE5C()
{
  result = qword_27EDC31A0;
  if (!qword_27EDC31A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3198);
    sub_243F5DD50(&qword_27EDC31A8, &qword_27EDC31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC31A0);
  }

  return result;
}

unint64_t sub_243FFDF14()
{
  result = qword_27EDC0148;
  if (!qword_27EDC0148)
  {
    sub_2440D1B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0148);
  }

  return result;
}

unint64_t sub_243FFDF6C()
{
  result = qword_27EDC31C8;
  if (!qword_27EDC31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC31C8);
  }

  return result;
}

void sub_243FFE1D0(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = type metadata accessor for ProxReaderDefaults();
  v11 = *(v10 + 32);
  v12 = [objc_opt_self() standardUserDefaults];
  *a5 = sub_2440B1460(a1);
  a5[1] = v13;
  (*(*(a4 - 8) + 32))(a5 + *(v10 + 28), a2, a4);

  *(a5 + v11) = a3;
}

uint64_t sub_243FFE29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_2440D3630();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = *(v2 + *(a1 + 32));
  v10 = sub_2440D2F80();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    sub_2440D36C0();
    swift_unknownObjectRelease();
    sub_243F734CC(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0478);
  v12 = swift_dynamicCast();
  v13 = *(v5 - 8);
  v14 = *(v13 + 56);
  if (v12)
  {
    v14(v8, 0, 1, v5);
    return (*(v13 + 32))(a2, v8, v5);
  }

  else
  {
    v14(v8, 1, 1, v5);
    return (*(v13 + 16))(a2, v2 + *(a1 + 28), v5);
  }
}

unint64_t sub_243FFE488()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_243FF9A44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_243FFE520(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
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

void *sub_243FFE668(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_243FFE840()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_243FF9A44();
    if (v2 <= 0x3F)
    {
      result = sub_2440D02D0();
      if (v3 <= 0x3F)
      {
        result = sub_2440D02E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_243FFE908(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
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

void *sub_243FFEA60(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_243FFEC70()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v1 = v0[2];
  }

  return v1;
}

__n128 sub_243FFECC0@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  result = a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 104) = a13;
  *(a9 + 120) = a14;
  *(a9 + 136) = a15;
  *(a9 + 152) = a16;
  *(a9 + 168) = a17;
  *(a9 + 176) = a18;
  *(a9 + 184) = a19;
  *(a9 + 192) = a20;
  return result;
}

uint64_t sub_243FFED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  MEMORY[0x28223BE20](v4 - 8);
  v152 = &v136 - v5;
  v6 = sub_2440D07E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v136 - v11;
  v13 = sub_2440D0BD0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for TapContext(0) + 20);
  v154 = v16;
  v155 = v14;
  v18 = *(v14 + 16);
  v156 = v13;
  v18(v16, a1 + v17, v13);
  sub_2440D0E70();
  v19 = sub_2440D0FB0();
  v21 = v20;
  if (v19 != sub_2440D0FB0() || v21 != v22)
  {
    v23 = sub_2440D3A10();

    if (v23)
    {
      goto LABEL_5;
    }

    sub_2440D0E70();
    v62 = sub_2440D0FB0();
    v64 = v63;
    if (v62 == sub_2440D0FB0() && v64 == v65)
    {
    }

    else
    {
      v66 = sub_2440D3A10();

      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_243FD5980();
    v67 = sub_2440D0E60();
    v68 = sub_2440D3590();
    v69 = sub_2440D35C0();

    if (v69)
    {
      v70 = 0xD000000000000017;
      v71 = sub_2440D0E70();
      v72 = sub_2440D0E60();
      v73 = sub_2440D0E00();
      v75 = v74;
      v151 = sub_2440D0E40();
      v152 = sub_2440D0E20();
      v76 = sub_2440D0E70();
      v77 = sub_2440D0E30();
      if (v76 == 2)
      {
        v78 = "DESCRIPTION_TIMEOUT_LOOK_UP";
        v150 = 0xD000000000000017;
        v31 = v154;
LABEL_56:
        v129 = v78 | 0x8000000000000000;
        v130 = sub_2440D0E30();
        if (v130 <= 2 && v130)
        {
          if (v130 == 1)
          {
LABEL_62:
            v142 = v71;
            v145 = v75;
            v146 = v73;
            v147 = v72;
            v131 = sub_243F68750();
            v132 = sub_2440579C8(v131 & 1, v70);
            v143 = v133;
            v144 = v132;

            v154 = sub_2440D0BB0();
            v141 = v134;
            *&v140 = sub_2440D0BB0();
            v139 = v135;
            v137 = 0;
            v148 = 0;
            v149 = 0;
            v153 = 0xE000000000000000;
            v138 = v129;
            goto LABEL_11;
          }

          if (v130 == 2)
          {
            v70 = 0xD000000000000016;
            goto LABEL_62;
          }
        }

        v70 = 0xD00000000000001ALL;
        goto LABEL_62;
      }

      v31 = v154;
      if (v77 <= 1)
      {
        if (!v77)
        {
          v128 = "DESCRIPTION_TIMEOUT_LOOK_UP";
          goto LABEL_54;
        }

        if (v77 != 1)
        {
LABEL_50:
          v128 = "DESCRIPTION_TIMEOUT_PAYMENT";
LABEL_54:
          v78 = v128 - 32;
          v127 = 0xD00000000000001BLL;
          goto LABEL_55;
        }

        v78 = "DESCRIPTION_TIMEOUT_TAB";
        v127 = 0xD000000000000018;
      }

      else if (v77 == 2)
      {
        v78 = "DESCRIPTION_TIMEOUT_VERIF";
        v127 = 0xD000000000000017;
      }

      else
      {
        if (v77 != 3)
        {
          goto LABEL_50;
        }

        v78 = "LABEL_VERIFICATION_LOOK_UP";
        v127 = 0xD000000000000019;
      }

LABEL_55:
      v150 = v127;
      goto LABEL_56;
    }

LABEL_19:
    sub_2440D0E20();
    v79 = sub_2440D0F30();
    v80 = sub_2440D0F30();
    if (v79 == v80)
    {
      v81 = 0x45525F4C4542414CLL;
    }

    else
    {
      v81 = 0x41505F4C4542414CLL;
    }

    if (v79 == v80)
    {
      v82 = 0xEC000000444E5546;
    }

    else
    {
      v82 = 0xE900000000000059;
    }

    v141 = v81;
    v159 = v81;
    v160 = v82;
    v143 = v82;

    MEMORY[0x245D57000](0x474E4F4C5FLL, 0xE500000000000000);
    v144 = v159;
    v150 = v160;
    v83 = sub_2440D0E00();
    v85 = v84;
    v86 = sub_2440D0DF0();
    v87 = sub_2440D0E40();
    v88 = sub_243FC04B4(v83, v85, v86, v87 & 1);

    v89 = sub_2440D0E60();
    v90 = [v88 stringFromNumber_];

    if (v90)
    {
      v91 = sub_2440D2FB0();
      v93 = v92;
    }

    else
    {
      v91 = 0;
      v93 = 0xE000000000000000;
    }

    v94 = sub_2440D0E00();
    v153 = v93;
    if (v94 == 5390675 && v95 == 0xE300000000000000)
    {
    }

    else
    {
      v96 = sub_2440D3A10();

      if ((v96 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v97 = v91;
    v98 = *sub_243FD157C();

    v99 = sub_2440D0DF0();
    if (*(v98 + 16) && (v100 = sub_243F726DC(v99), (v101 & 1) != 0))
    {
      v102 = v152;
      (*(v7 + 16))(v152, *(v98 + 56) + *(v7 + 72) * v100, v6);

      (*(v7 + 56))(v102, 0, 1, v6);
      (*(v7 + 32))(v12, v102, v6);
    }

    else
    {

      v103 = v152;
      (*(v7 + 56))(v152, 1, 1, v6);
      sub_2440D07D0();
      if ((*(v7 + 48))(v103, 1, v6) != 1)
      {
        sub_243FFF92C(v103);
      }
    }

    sub_2440D07B0();
    v104 = MEMORY[0x245D546C0](v12, v10);
    v105 = *(v7 + 8);
    v105(v10, v6);
    v105(v12, v6);
    v91 = v97;
    if (v104)
    {
      v106 = sub_243FC04B0();
      v107 = sub_243FC04B4(0x52412E524153, 0xE600000000000000, v106, 0);
      v108 = sub_2440D0E60();
      v109 = [v107 stringFromNumber_];

      v31 = v154;
      if (v109)
      {
        v110 = sub_2440D2FB0();
        v148 = v111;
        v149 = v110;
      }

      else
      {
        v148 = 0xE000000000000000;
        v149 = 0;
      }

      goto LABEL_41;
    }

LABEL_40:
    v148 = 0;
    v149 = 0;
    v31 = v154;
LABEL_41:
    v137 = v91;
    v142 = sub_2440D0E70();
    v147 = sub_2440D0E60();
    v112 = sub_2440D0E00();
    v145 = v113;
    v146 = v112;
    v151 = sub_2440D0E40();
    v152 = sub_2440D0E20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
    v114 = swift_allocObject();
    v140 = xmmword_2440D5CF0;
    *(v114 + 16) = xmmword_2440D5CF0;
    v115 = sub_2440D0BB0();
    v117 = v116;
    v118 = MEMORY[0x277D837D0];
    *(v114 + 56) = MEMORY[0x277D837D0];
    v119 = sub_243F644C8();
    *(v114 + 64) = v119;
    *(v114 + 32) = v115;
    *(v114 + 40) = v117;
    v120 = sub_243F68750();
    v154 = sub_244057E7C(v120 & 1, v114, v141);
    v141 = v121;

    v122 = swift_allocObject();
    *(v122 + 16) = v140;
    v123 = sub_2440D0BB0();
    *(v122 + 56) = v118;
    *(v122 + 64) = v119;
    *(v122 + 32) = v123;
    *(v122 + 40) = v124;
    v125 = sub_243F68750();
    *&v140 = sub_244057E7C(v125 & 1, v122, v144);
    v139 = v126;

    v150 = 0;
    v138 = 0;
    v143 = 0xE000000000000000;
    v144 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v24 = sub_2440D0E10();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v150 = 0xD000000000000017;
  if (v27)
  {
    v28 = sub_2440D0E10();
  }

  else
  {
    v30 = sub_243F68750();
    v28 = sub_2440579C8(v30 & 1, 0xD000000000000010);
  }

  v143 = v29;
  v144 = v28;
  v31 = v154;
  v147 = sub_2440D0E60();
  v32 = sub_2440D0E00();
  v145 = v33;
  v146 = v32;
  v151 = sub_2440D0E40();
  v152 = sub_2440D0E20();
  v138 = 0x80000002440EBF90;
  v154 = sub_2440D0BB0();
  v141 = v34;
  *&v140 = sub_2440D0BB0();
  v139 = v35;
  v137 = 0;
  v148 = 0;
  v149 = 0;
  v153 = 0xE000000000000000;
  v142 = 2;
LABEL_11:
  v136 = sub_2440D0B80();
  v37 = v36;
  v38 = sub_2440D0BB0();
  v40 = v39;
  type metadata accessor for MerchantLogo();
  v41 = sub_243F4E2E4();
  v42 = sub_2440D0B90();
  v44 = v43;
  v45 = sub_2440D0BC0();
  v46 = (*(*v41 + 80))(v42, v44, v45);
  LOBYTE(v42) = v47;
  v49 = v48;

  result = (*(v155 + 8))(v31, v156);
  v51 = v151 & 1;
  *a2 = v142;
  *(a2 + 1) = v159;
  *(a2 + 4) = *(&v159 + 3);
  v52 = v137;
  *(a2 + 8) = v147;
  *(a2 + 16) = v52;
  v53 = v148;
  v54 = v149;
  *(a2 + 24) = v153;
  *(a2 + 32) = v54;
  *(a2 + 40) = v53;
  v55 = v145;
  *(a2 + 48) = v146;
  *(a2 + 56) = v55;
  *(a2 + 64) = v51;
  *(a2 + 65) = *v158;
  *(a2 + 68) = *&v158[3];
  v56 = v150;
  *(a2 + 72) = v152;
  *(a2 + 80) = v56;
  v58 = v143;
  v57 = v144;
  *(a2 + 88) = v138;
  *(a2 + 96) = v57;
  v59 = v154;
  *(a2 + 104) = v58;
  *(a2 + 112) = v59;
  v60 = v140;
  *(a2 + 120) = v141;
  *(a2 + 128) = v60;
  v61 = v136;
  *(a2 + 136) = v139;
  *(a2 + 144) = v61;
  *(a2 + 152) = v37;
  *(a2 + 160) = v38;
  *(a2 + 168) = v40;
  *(a2 + 176) = v46;
  *(a2 + 184) = v42;
  *(a2 + 188) = *&v157[3];
  *(a2 + 185) = *v157;
  *(a2 + 192) = v49;
  return result;
}

uint64_t sub_243FFF92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_243FFF9D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_243FFFA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243FFFAC4()
{
  v1 = *v0;
  sub_2440D3B20();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x245D57A30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

uint64_t sub_243FFFB24()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245D57A30](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x245D57A30](v2);
}

uint64_t sub_243FFFB6C()
{
  v1 = *v0;
  sub_2440D3B20();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245D57A30](1);
    v2 = v1 & 1;
  }

  MEMORY[0x245D57A30](v2);
  return sub_2440D3B50();
}

BOOL sub_243FFFBCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t sub_243FFFC20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243FFFCDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243FFFD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243FFFED4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__identityUIIsPresented;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000058@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_244000114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440001D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24400030C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__dismissViewController;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000490@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_24400054C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24400060C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000744(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__disableSleep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t (*sub_2440008DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_24400099C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000AD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__screenState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31E8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244000C58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  return result;
}

uint64_t (*sub_244000D10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244000DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244000F08(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3200);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC31F8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24400108C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result;
  return result;
}

uint64_t (*sub_244001144(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244001204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3218);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_24400133C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3218);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__particlesPendingState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3210);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

double sub_2440014AC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_244001538@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 632))(&v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

uint64_t sub_2440015A4(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v8 = v6;
  v9 = v2;
  v10 = *(a1 + 4);
  v3 = *(**a2 + 640);
  sub_243F5F574(&v8, v5, &qword_27EDC06A0);
  sub_243F5F574(&v9, v5, &qword_27EDC3378);
  return v3(&v6);
}

uint64_t sub_244001668()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440016E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_2440017A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440018DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3228);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__readerStateModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3220);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_244001A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244001B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_243F5F574(a1, &v8 - v5, &qword_27EDC05B8);
  return (*(**a2 + 736))(v6);
}

uint64_t (*sub_244001C24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244001CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244001E1C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3240);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__merchantDetails;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3238);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244001FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3248);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_243F5F574(a1, &v8 - v5, &qword_27EDC3248);
  return (*(**a2 + 784))(v6);
}

uint64_t sub_2440020F0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243F5F574(a1, v6, a2);

  sub_2440D1350();
  return sub_243F5EED4(a1, a2);
}

uint64_t (*sub_2440021D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244002298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440023D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3258);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3250);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244002554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();
}

__n128 sub_2440025C4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_24400265C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 872))(v7);
  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_2440026D0(_OWORD *a1)
{
  v2 = a1[3];
  v10[2] = a1[2];
  v10[3] = v2;
  v3 = a1[5];
  v10[4] = a1[4];
  v10[5] = v3;
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[3];
  v9[8] = a1[2];
  v9[9] = v5;
  v6 = a1[5];
  v9[10] = a1[4];
  v9[11] = v6;
  v7 = a1[1];
  v9[6] = *a1;
  v9[7] = v7;

  sub_243F5F574(v10, v9, &qword_27EDBFF68);
  return sub_2440D1350();
}

uint64_t sub_244002794()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244002834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3270);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3268);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244002994(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244002A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_244002B8C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__scanQRCodeFlag;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244002D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  return result;
}

uint64_t sub_244002D64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244002E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3280);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3278);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

double sub_244002F40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_244003058()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440030D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_244003194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440032CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3290);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__platterSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3288);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_24400343C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_2440034B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_244003504(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1072);

  return v4(v2, v3);
}

uint64_t sub_244003574()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_2440035F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_2440036B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2440037E8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel__requestedDocument;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3298);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_244003958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v32 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_2440D0F60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC3260);
    goto LABEL_7;
  }

  (*(v7 + 32))(v12, v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  v13 = v33;
  if (!v33)
  {
    (*(v7 + 8))(v12, v6);
LABEL_7:
    v15 = sub_243F4E22C();
    sub_243F5F574(v15, v2, &qword_27EDC0A50);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v2, 1, v16) == 1)
    {
      sub_243F5EED4(v2, &qword_27EDC0A50);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3470();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        MEMORY[0x245D58570](v20, -1, -1);
      }

      (*(v17 + 8))(v2, v16);
    }

    return 0;
  }

  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == *MEMORY[0x277D43BA8])
  {
    (*(v7 + 8))(v12, v6);

    return 0;
  }

  if (v14 == *MEMORY[0x277D43BA0])
  {
    (*(v7 + 8))(v12, v6);

    return 1;
  }

  if (v14 != *MEMORY[0x277D43BB0])
  {
    v30 = *(v7 + 8);
    v30(v12, v6);

    v30(v10, v6);
    return 0;
  }

  result = sub_2440D0DC0();
  v22 = 0;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(result + 64);
  v26 = (v23 + 63) >> 6;
  while (v25)
  {
    v27 = v22;
LABEL_26:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    if ((*(*(result + 56) + (v28 | (v27 << 6))) & 1) == 0)
    {
      v29 = *(v7 + 8);

      v29(v12, v6);

      return 3;
    }
  }

  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      v31 = *(v7 + 8);

      v31(v12, v6);

      return 2;
    }

    v25 = *(result + 64 + 8 * v27);
    ++v22;
    if (v25)
    {
      v22 = v27;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_244003EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_2440D2C80();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2CA0();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D0EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_243F4E22C();
  sub_243F5F574(v16, v15, &qword_27EDC0A50);
  v17 = sub_2440D11E0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_243F5EED4(v15, &qword_27EDC0A50);
  }

  else
  {
    v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = sub_243F4E2F4();
    v20 = sub_243F4E2FC();
    v31 = v11;
    v12 = v32;
    sub_243F4E308(v19 & 1, v3, 0xD000000000000027, 0x80000002440EC010, v20, v21);
    v11 = v31;

    (*(v18 + 8))(v15, v17);
  }

  sub_243F5DB84();
  v22 = sub_2440D3530();
  (*(v10 + 16))(v12, a1, v9);
  v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  (*(v10 + 32))(v24 + v23, v12, v9);
  *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  aBlock[4] = sub_24400EAA0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_18;
  v25 = _Block_copy(aBlock);

  v26 = v34;
  sub_2440D2C90();
  v40 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v27 = v37;
  v28 = v39;
  sub_2440D3710();
  MEMORY[0x245D57440](0, v26, v27, v25);
  _Block_release(v25);

  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v36);

  return (*(*v3 + 1544))(v29);
}

uint64_t sub_244004450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = sub_2440D0F40();
  v25 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3260);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3248);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_2440D0ED0();
  v20 = sub_2440D0F20();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  (*(*a1 + 736))(v19);
  sub_2440D0EA0();
  (*(v5 + 56))(v16, 0, 1, v4);
  (*(*a1 + 784))(v16);
  sub_2440D0EB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243F5F574(v13, v11, &qword_27EDC3260);

  sub_2440D1350();
  sub_243F5EED4(v13, &qword_27EDC3260);
  *(a1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout) = v26;
  sub_2440D0EA0();
  v21 = sub_244011080(v7);
  v23 = v22;
  (*(v5 + 8))(v7, v25);
  return (*(*a1 + 1072))(v21, v23);
}

void sub_244004824(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_243F4E22C();
  sub_243F5F574(v7, v6, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD00000000000002CLL, 0x80000002440EA3B0, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  [v13 setExportedObject_];
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [v13 setExportedInterface_];

  v16 = [v14 interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  aBlock[4] = sub_244004B70;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243FA2898;
  aBlock[3] = &block_descriptor_78;
  v17 = _Block_copy(aBlock);
  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2440D36C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32A8);
  v19 = swift_dynamicCast();
  v20 = v22[1];
  if (!v19)
  {
    v20 = 0;
  }

  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy) = v20;
  swift_unknownObjectRelease();
  [v13 resume];
  v21 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection) = v13;
}

uint64_t sub_244004B70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  v9 = a1;
  v10 = sub_2440D11C0();
  v11 = sub_2440D3470();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_2440D3AB0();
    v16 = sub_243F4E6F8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_243F48000, v10, v11, "IdentityUIDelegate connection invalidated with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D58570](v13, -1, -1);
    MEMORY[0x245D58570](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

id sub_244004D9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD00000000000001ALL, 0x80000002440EC040, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  result = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (result)
  {
    return [result uiDidLoad];
  }

  return result;
}

uint64_t sub_244004F30(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v35 = sub_243F4E22C();
  sub_243F5F574(v35, v9, &qword_27EDC0A50);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  v34 = *(v11 + 48);
  v12 = v34(v9, 1, v10);
  v36 = v10;
  v33 = v11;
  if (v12 == 1)
  {
    v13 = sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243F48000, v14, v15, "Cancel button was clicked, canceling current read", v16, 2u);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    v13 = (*(v11 + 8))(v9, v10);
  }

  v17 = (*v2 + 464);
  v18 = *v17;
  v42 = (*v17)(v13);
  v41 = 4;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 == v37 && v40 == v38)
  {
    goto LABEL_8;
  }

  v19 = sub_2440D3A10();

  if (v19)
  {
    goto LABEL_10;
  }

  v42 = v18(v20);
  v41 = 6;
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 == v37 && v40 == v38)
  {
LABEL_8:

LABEL_10:
    [v2 updateUIState_];
    goto LABEL_11;
  }

  v30 = sub_2440D3A10();

  if (v30)
  {
    goto LABEL_10;
  }

LABEL_11:
  v21 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy];
  if (v21)
  {
    v21 = [v21 requestCancelReadWithIsEngagementTransition_];
  }

  v42 = v18(v21);
  v41 = 12;
  sub_2440D31F0();
  sub_2440D31F0();
  if (v39 != v37 || v40 != v38)
  {
    v22 = sub_2440D3A10();

    if (v22)
    {
      goto LABEL_17;
    }

    v42 = v18(v23);
    v41 = 13;
    sub_2440D31F0();
    sub_2440D31F0();
    if (v39 != v37 || v40 != v38)
    {
      v31 = sub_2440D3A10();

      if ((v31 & 1) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

LABEL_17:
  sub_243F5F574(v35, v7, &qword_27EDC0A50);
  v24 = v36;
  if (v34(v7, 1, v36) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v25 = sub_2440D11C0();
    v26 = sub_2440D3490();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_243F48000, v25, v26, "Cancelling read restart and closing UI", v27, 2u);
      MEMORY[0x245D58570](v27, -1, -1);
    }

    (*(v33 + 8))(v7, v24);
  }

  v28 = sub_244008D30();
  return (*(*v2 + 1472))(v28);
}

uint64_t sub_2440054F4(uint64_t a1, unint64_t a2)
{
  v98 = a2;
  v99 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32B0);
  v95 = *(v100 - 8);
  v2 = MEMORY[0x28223BE20](v100);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32B8);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v88 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32C0);
  v9 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v89 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v102 = &v88 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v88 - v21;
  v23 = sub_243F4E22C();
  sub_243F5F574(v23, v22, &qword_27EDC0A50);
  v24 = sub_2440D11E0();
  v25 = *(v24 - 8);
  v27 = v25 + 48;
  v26 = *(v25 + 48);
  v28 = v26(v22, 1, v24);
  v97 = v9;
  v90 = v14;
  v93 = v4;
  if (v28 == 1)
  {
    sub_243F5EED4(v22, &qword_27EDC0A50);
  }

  else
  {
    v29 = sub_243F4E2F4();
    v30 = sub_243F4E2FC();
    v31 = v29 & 1;
    v27 = v25 + 48;
    sub_243F4E308(v31, v103, 0xD000000000000011, 0x80000002440EC090, v30, v32);

    (*(v25 + 8))(v22, v24);
  }

  v33 = v102;
  sub_243F5F574(v23, v102, &qword_27EDC0A50);
  v34 = v26(v33, 1, v24);
  v35 = v100;
  v36 = v98;
  if (v34 == 1)
  {
    sub_243F5EED4(v33, &qword_27EDC0A50);
  }

  else
  {
    v37 = v27;

    v38 = sub_2440D11C0();
    v39 = sub_2440D3490();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v96 = v25;
      v41 = v40;
      v42 = swift_slowAlloc();
      v104[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_243F4E6F8(v99, v36, v104);
      _os_log_impl(&dword_243F48000, v38, v39, "Scanned payload: [ %{private}s ]", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v43 = v42;
      v35 = v100;
      MEMORY[0x245D58570](v43, -1, -1);
      v44 = v41;
      v25 = v96;
      MEMORY[0x245D58570](v44, -1, -1);
    }

    (*(v25 + 8))(v102, v24);
    v27 = v37;
  }

  if (*(v103 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest) == 1)
  {
    v45 = v92;
    sub_243F5F574(v23, v92, &qword_27EDC0A50);
    if (v26(v45, 1, v24) == 1)
    {
      return sub_243F5EED4(v45, &qword_27EDC0A50);
    }

    v50 = sub_2440D11C0();
    v51 = sub_2440D3490();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_243F48000, v50, v51, "Processing a previous payload, skipping...", v52, 2u);
      MEMORY[0x245D58570](v52, -1, -1);
    }

    return (*(v25 + 8))(v45, v24);
  }

  v100 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_processingQRRequest;
  v47 = (v103 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode);
  v48 = *(v103 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode + 8);
  v96 = v25;
  v88 = v26;
  if (v48)
  {
    if (*v47 == v99 && v48 == v36)
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_2440D3A10() ^ 1;
    }
  }

  else
  {
    v49 = 1;
  }

  v53 = v103;
  v102 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode;
  *(v103 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_isDifferentQRCode) = v49 & 1;
  *v47 = v99;
  v47[1] = v36;

  (*(*v53 + 1448))(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC32C8);
  sub_2440D0960();
  sub_243F5DD50(&qword_27EDC32D0, &qword_27EDC32B0);
  v55 = v93;
  sub_2440D0950();
  sub_2440D31C0();
  v56 = v6;
  v57 = v94;
  sub_2440D0970();

  v58 = *(v95 + 8);
  v58(v55, v35);
  v58(v56, v35);
  v59 = v97;
  v60 = v23;
  v61 = (*(v97 + 48))(v57, 1, v101);
  v62 = v96;
  if (v61 == 1)
  {
    result = sub_243F5EED4(v57, &qword_27EDC32B8);
LABEL_25:
    v66 = v88;
    v67 = *(v103 + v102);
    v68 = v90;
    if (v67 != 2 && (v67 & 1) != 0)
    {
      sub_243F5F574(v60, v90, &qword_27EDC0A50);
      if (v66(v68, 1, v24) == 1)
      {
        sub_243F5EED4(v68, &qword_27EDC0A50);
      }

      else
      {
        v81 = sub_2440D11C0();
        v82 = sub_2440D3490();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_243F48000, v81, v82, "Invalid format payload", v83, 2u);
          MEMORY[0x245D58570](v83, -1, -1);
        }

        (*(v62 + 8))(v68, v24);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v104[0]) = 0;
      v84 = v103;

      sub_2440D1350();
      v85 = *(**(v84 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

      v85(8, 0);

      v86 = *(v84 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
      if (v86)
      {
        swift_unknownObjectRetain();
        sub_2440D10A0();
        v87 = sub_2440D2F80();

        [v86 qrCodeScanErrorWithError_];

        return swift_unknownObjectRelease();
      }
    }

    return result;
  }

  v99 = v27;
  v63 = v91;
  (*(v59 + 32))(v91, v57, v101);
  swift_getKeyPath();
  sub_2440D0980();

  MEMORY[0x245D56F70](v104[0], v104[1], v104[2], v104[3]);

  v64 = sub_244058490();
  if (v65 >> 60 == 15)
  {
    result = (*(v59 + 8))(v63, v101);
    goto LABEL_25;
  }

  v69 = v64;
  v70 = v65;
  v71 = v89;
  sub_243F5F574(v60, v89, &qword_27EDC0A50);
  if (v88(v71, 1, v24) == 1)
  {
    sub_243F5EED4(v71, &qword_27EDC0A50);
  }

  else
  {
    v72 = v62;
    v73 = sub_2440D11C0();
    v74 = sub_2440D3490();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_243F48000, v73, v74, "QR Code is mDL", v75, 2u);
      v76 = v75;
      v71 = v89;
      MEMORY[0x245D58570](v76, -1, -1);
    }

    (*(v72 + 8))(v71, v24);
  }

  v77 = v103;
  *(v103 + v100) = 1;
  v78 = *(v77 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  v79 = v91;
  if (v78)
  {
    swift_unknownObjectRetain();
    v80 = sub_2440D0670();
    [v78 readDocumentFromScannedQRCodeWithPayload_];
    sub_243F5FF20(v69, v70);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243F5FF20(v69, v70);
  }

  return (*(v97 + 8))(v79, v101);
}

uint64_t sub_2440061FC()
{
  v1 = (v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_lastScannedQRCode);
  *v1 = 0;
  v1[1] = 0;

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_244006284()
{
  result = (*(*v0 + 920))();
  if ((result & 1) == 0)
  {
    v2 = (*(*v0 + 928))(1);
    (*(*v0 + 1432))(v2);
    result = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
    if (result)
    {

      return [result qrCodeScanInitiated];
    }
  }

  return result;
}

uint64_t sub_244006354()
{
  result = (*(*v0 + 920))();
  if (result)
  {
    (*(*v0 + 928))(0);
    v2 = *(*v0 + 1440);

    return v2();
  }

  return result;
}

uint64_t sub_244006408()
{
  v1 = (*v0 + 464);
  v2 = *v1;
  (*v1)();
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v10 == v8 && v11 == v9)
  {

    goto LABEL_9;
  }

  v4 = sub_2440D3A10();

  if (v4)
  {
LABEL_9:
    v7 = 19;
    return [v0 updateUIState_];
  }

  (v2)(v5);
  sub_243F67588();
  result = sub_2440D2F50();
  if (result)
  {
    return result;
  }

  v7 = 18;
  return [v0 updateUIState_];
}

void sub_244006558()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {

    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout);

      _os_log_impl(&dword_243F48000, v8, v9, "Start QR code scanner timer [ %lds ]", v10, 0xCu);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimeout);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24400EC9C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F81670;
  aBlock[3] = &block_descriptor_86;
  v14 = _Block_copy(aBlock);

  v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:v11];
  _Block_release(v14);
  v16 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer) = v15;
}

uint64_t sub_24400682C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_2440D3390();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_2440D3360();

    v6 = sub_2440D3350();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v4;
    sub_243F54830(0, 0, v2, &unk_2440DFA40, v7);
  }

  return result;
}

uint64_t sub_244006980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2440D3360();
  *(v4 + 24) = sub_2440D3350();
  v6 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_244006A18, v6, v5);
}

uint64_t sub_244006A18()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer) = 0;

  (*(*v1 + 424))(0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_244006AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_244006DC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer;
  v5 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_qrCodeScannerSleepTimer);
  if (v5)
  {
    v6 = v5;
    v7 = sub_243F4E22C();
    sub_243F5F574(v7, v3, &qword_27EDC0A50);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      sub_243F5EED4(v3, &qword_27EDC0A50);
    }

    else
    {
      v10 = v0;
      v11 = sub_2440D11C0();
      v12 = sub_2440D3490();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_243F48000, v11, v12, "Stop QR code scanner timer", v13, 2u);
        MEMORY[0x245D58570](v13, -1, -1);
      }

      (*(v9 + 8))(v3, v8);
      v0 = v10;
    }

    v14 = *(v0 + v4);
    *(v0 + v4) = 0;

    [v6 invalidate];
  }
}

uint64_t sub_244006FA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "Restart QR code scanner timer", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = (*(*v1 + 1440))(v8);
  return (*(*v1 + 1432))(v12);
}

uint64_t sub_2440071A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v17 = a1;
  v16 = 4;
  sub_24400ECA4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v15[2] == v15[1])
  {
    (*(*v1 + 568))(5);
    result = (*(*v1 + 520))(a1);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet) = 0;
    return result;
  }

  v8 = *v1;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet) == 1)
  {
    return (*(v8 + 568))(a1);
  }

  v9 = (*(v8 + 520))(a1);
  result = (*(*v1 + 512))(v9);
  if (result == 2)
  {
    v10 = 1.0;
  }

  else
  {
    if (result != 3)
    {
      return result;
    }

    v10 = 3.0;
  }

  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_2440D3360();

  v12 = sub_2440D3350();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 2) = v12;
  *(v13 + 3) = v14;
  *(v13 + 4) = v2;
  v13[5] = v10;
  sub_243F54830(0, 0, v6, &unk_2440DF750, v13);
}

uint64_t sub_244007468(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = sub_2440D38A0();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  sub_2440D3360();
  *(v5 + 56) = sub_2440D3350();
  v8 = sub_2440D3320();
  *(v5 + 64) = v8;
  *(v5 + 72) = v7;

  return MEMORY[0x2822009F8](sub_244007560, v8, v7);
}

uint64_t sub_244007560()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet;
  v0[10] = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_delayParticlesSet;
  *(v1 + v2) = 1;
  v3 = sub_2440D3B80();
  v5 = v4;
  sub_2440D3A80();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_244007654;

  return sub_243F720D4(v3, v5, 0, 0, 1);
}

uint64_t sub_244007654()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_2440112C8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_2440077E8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2440077E8()
{
  v1 = v0[2];

  if ((*(*v1 + 560))(v2) != 5)
  {
    (*(*v0[2] + 520))();
  }

  *(v0[2] + v0[10]) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_2440078CC(uint64_t a1)
{
  v23 = a1;
  v1 = sub_2440D2C80();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D2CA0();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_243F4E22C();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_2440D11C0();
    v14 = sub_2440D3490();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243F48000, v13, v14, "close ui after delay", v15, 2u);
      MEMORY[0x245D58570](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  sub_243F5DB84();
  v16 = sub_2440D3530();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24400ED9C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_94;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  v25 = MEMORY[0x277D84F90];
  sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57400](v23, v6, v3, v18);
  _Block_release(v18);

  (*(v24 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
}

uint64_t sub_244007D2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v28[0] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v28 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = sub_243F4E22C();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    v14 = sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v15 = sub_243F4E2F4();
    v16 = sub_243F4E2FC();
    sub_243F4E308(v15 & 1, v1, 0x557373696D736964, 0xEB00000000292849, v16, v17);

    v14 = (*(v12 + 8))(v9, v11);
  }

  v30 = (*(*v1 + 464))(v14);
  v29 = 4;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v28[3] == v28[1] && v28[4] == v28[2])
  {

LABEL_8:
    (*(*v1 + 1416))(v18);
    (*(*v1 + 1384))(0);
    goto LABEL_9;
  }

  v19 = sub_2440D3A10();

  if (v19)
  {
    goto LABEL_8;
  }

  if ((*(*v1 + 320))(v18))
  {
    sub_243F5F574(v10, v7, &qword_27EDC0A50);
    if (v13(v7, 1, v11) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v22 = sub_2440D11C0();
      v23 = sub_2440D3490();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_243F48000, v22, v23, "Closing Identity UI", v24, 2u);
        MEMORY[0x245D58570](v24, -1, -1);
      }

      (*(v12 + 8))(v7, v11);
    }

    (*(*v1 + 328))(0);
  }

  else
  {
    v21 = v28[0];
    sub_243F5F574(v10, v28[0], &qword_27EDC0A50);
    if (v13(v21, 1, v11) == 1)
    {
      sub_243F5EED4(v21, &qword_27EDC0A50);
    }

    else
    {
      v25 = sub_2440D11C0();
      v26 = sub_2440D3490();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_243F48000, v25, v26, "Received dismissUI before UI finished presenting - forcing close.", v27, 2u);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      (*(v12 + 8))(v21, v11);
    }

    (*(*v1 + 376))(1);
  }

LABEL_9:
  (*(*v1 + 424))(0);
  sub_244008D30();
  sub_243FAFFB0();

  BrightnessManager.resetBrightnessToSystemDefault()();
}

uint64_t sub_2440082D8()
{
  (*(*v0 + 1440))();
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection;
  v2 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_connection);
  if (v2)
  {
    [v2 setExportedObject_];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy) = 0;

  return swift_unknownObjectRelease();
}

id sub_244008374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000020, 0x80000002440EC0B0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  result = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (result)
  {
    return [result uiFinishedWithExpected_];
  }

  return result;
}

uint64_t sub_24400850C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4E22C();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0x6465736F6C436975, 0xEA00000000002928, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  result = (*(*v1 + 368))(v8);
  if ((result & 1) == 0)
  {
    return (*(*v1 + 376))(1);
  }

  return result;
}

uint64_t sub_2440086E4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - v8;
  v9 = sub_2440D2C80();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2440D2CD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244008D30();
  v38 = v2;
  v14 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_remoteProxy);
  if (v14)
  {
    swift_unknownObjectRetain();
    sub_2440D2CC0();
    v15 = sub_2440D2CB0();
    (*(v11 + 8))(v13, v10);
    if (v15)
    {
      [v14 requestRestartReadWithTriggeredByMultipleCheck_];
      return swift_unknownObjectRelease();
    }

    else
    {
      v21 = swift_allocObject();
      v22 = v38;
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v14;
      *(v23 + 32) = a2 & 1;
      aBlock[4] = sub_244010B80;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_211;
      v36 = _Block_copy(aBlock);
      v39 = MEMORY[0x277D84F90];
      sub_244010F50(&qword_27EDC0510, MEMORY[0x277D85198]);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
      sub_2440D3710();
      sub_2440D2D00();
      swift_allocObject();
      v24 = sub_2440D2CE0();

      v25 = sub_243F4E22C();
      v26 = v37;
      sub_243F5F574(v25, v37, &qword_27EDC0A50);
      v27 = sub_2440D11E0();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_243F5EED4(v26, &qword_27EDC0A50);
      }

      else
      {
        v32 = sub_2440D11C0();
        v33 = sub_2440D3490();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_243F48000, v32, v33, "Scheduling identity read restart", v34, 2u);
          MEMORY[0x245D58570](v34, -1, -1);
        }

        (*(v28 + 8))(v26, v27);
      }

      sub_243F5DB84();
      v35 = sub_2440D3530();
      sub_2440D3510();

      swift_unknownObjectRelease();
      *(v22 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = v24;
    }
  }

  else
  {
    v17 = sub_243F4E22C();
    sub_243F5F574(v17, v7, &qword_27EDC0A50);
    v18 = sub_2440D11E0();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      v20 = sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v29 = sub_2440D11C0();
      v30 = sub_2440D3470();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_243F48000, v29, v30, "Unable to retrieve remote proxy and restart reader, closing", v31, 2u);
        MEMORY[0x245D58570](v31, -1, -1);
      }

      v20 = (*(v19 + 8))(v7, v18);
    }

    return (*(*v38 + 1472))(v20);
  }
}

uint64_t sub_244008D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation))
  {
    *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_requestRestartOperation) = 0;
    v5 = sub_243F4E22C();
    sub_243F5F574(v5, v4, &qword_27EDC0A50);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v8 = sub_2440D11C0();
      v9 = sub_2440D3490();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_243F48000, v8, v9, "Cancelling restart read operation", v10, 2u);
        MEMORY[0x245D58570](v10, -1, -1);
      }

      (*(v7 + 8))(v4, v6);
    }

    sub_2440D2CF0();
  }

  return result;
}

uint64_t sub_244008EF4(char a1)
{
  sub_2440D1180();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  sub_2440D1160();
}

uint64_t (*sub_244008F84(char a1))()
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  return sub_24400EE50;
}

uint64_t sub_244009004(uint64_t a1, int a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = v39;
  sub_2440BD1F4(0x575F535554415453, 0xEE00474E49544941, 0, 0, 0, 2, v39);
  v9 = sub_244010ED8;
  v10 = 10;
  v33 = v5;
  LODWORD(v36) = a2;
  if (a2 <= 4u)
  {
    if (a2 > 2u)
    {
      v8 = v41;
      sub_2440BD1F4(0, 0, 0, 0, 0, 2, v41);
      v49 = v39[0];
      sub_243F5EED4(&v49, &qword_27EDC06A0);
      v47 = v39[1];
      v48 = v40;
      sub_243F5EED4(&v47, &qword_27EDC3378);
      v9 = sub_2440112C4;
      v10 = 11;
      goto LABEL_15;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_15;
      }

      v11 = sub_244010E78;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (a2 > 6u)
  {
    if (a2 != 7)
    {
      v11 = sub_244010DAC;
      goto LABEL_14;
    }

LABEL_11:
    v11 = sub_2440112C0;
LABEL_14:
    v9 = v11;
    v8 = v39;
    goto LABEL_15;
  }

  if (a2 == 5)
  {
    goto LABEL_11;
  }

LABEL_15:
  LODWORD(v35) = v10;
  v12 = swift_allocObject();
  swift_weakInit();
  LODWORD(v34) = v8[40];
  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  v15 = *(v8 + 4);
  v18 = v8;
  v16 = *v8;
  v17 = *(v18 + 1);
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  *(v19 + 24) = v12;
  type metadata accessor for BottomErrorFactory();
  v37 = v12;

  sub_2440332C8(v36, sub_244010DB4, v19, v42);
  if (*(&v43 + 1))
  {
    v50[0] = v16;
    v50[1] = v17;
    v50[2] = v14;
    v50[3] = v13;
    v50[4] = v15;
    v51 = v34;
    (*(*v7 + 1520))(v35);
    swift_getKeyPath();
    swift_getKeyPath();
    v38[8] = v43;
    v38[9] = v44;
    v38[10] = v45;
    v38[11] = v46;
    v38[6] = v42[0];
    v38[7] = v42[1];
    sub_243F5F574(v42, v38, &qword_27EDBFF68);

    sub_2440D1350();
    v20 = *(**(v7 + OBJC_IVAR____TtC19ContactlessReaderUI17IdentityViewModel_audioManager) + 272);

    v20(8, 0);

    (*(*v7 + 1456))(0);
    v21 = *(*v7 + 640);

    sub_243F92988(v14);
    v21(v50);
    (*(*v7 + 424))(0);

    sub_243F929C8(v14);
    sub_243F5EED4(v42, &qword_27EDBFF68);
  }

  else
  {
    v34 = v19;
    v35 = v17;
    v36 = v14;
    v22 = sub_243F4E22C();
    v23 = v33;
    sub_243F5F574(v22, v33, &qword_27EDC0A50);
    v24 = sub_2440D11E0();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {

      sub_243F929C8(v36);

      return sub_243F5EED4(v23, &qword_27EDC0A50);
    }

    else
    {
      v26 = sub_2440D11C0();
      v27 = sub_2440D3470();
      v28 = os_log_type_enabled(v26, v27);
      v32 = v15;
      if (v28)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = v27;
        v31 = v29;
        _os_log_impl(&dword_243F48000, v26, v30, "Unexpected identity bottom error event", v29, 2u);
        MEMORY[0x245D58570](v31, -1, -1);
      }

      sub_243F929C8(v36);

      return (*(v25 + 8))(v23, v24);
    }
  }
}