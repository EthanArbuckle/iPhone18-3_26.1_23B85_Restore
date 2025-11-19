uint64_t getEnumTagSinglePayload for PINUIErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PINUIErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27EDC28D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDC28D0);
    }
  }
}

unint64_t sub_243F831E8()
{
  result = qword_27EDC0B60;
  if (!qword_27EDC0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0B60);
  }

  return result;
}

uint64_t sub_243F8323C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for PINPrivacyLockView()
{
  result = qword_27EDC81C0;
  if (!qword_27EDC81C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243F83294@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PINViewModel();
  sub_243F88664(&qword_27EDC0B80, type metadata accessor for PINViewModel);
  *a1 = sub_2440D1930();
  a1[1] = v2;
  v3 = type metadata accessor for PINPrivacyLockView();
  sub_243F64688();
  sub_2440D1E70();
  sub_243F6069C();
  sub_2440D1500();
  v4 = (a1 + *(v3 + 28));
  type metadata accessor for PrivacyAuthenticatorModel();
  sub_243F88664(&qword_27EDC0B88, type metadata accessor for PrivacyAuthenticatorModel);
  result = sub_2440D1730();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t sub_243F833C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for PINPrivacyLockView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BD0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  *v12 = sub_2440D1C20();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BD8);
  sub_243F83828(a1, &v12[*(v13 + 44)]);
  v14 = sub_2440D20A0();
  sub_2440D13D0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BE0) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_2440D1860();
  v25 = sub_2440D20B0();
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BE8) + 36)];
  *v26 = v24;
  v26[8] = v25;
  sub_243F86E64(a1, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  sub_243F86ECC(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BF0) + 36)];
  *v29 = sub_243F86F30;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  *&v12[*(v8 + 44)] = 0x3FF0000000000000;
  (*(**(a1 + *(v4 + 36) + 8) + 160))(&v68);
  v30 = v68;
  if (v68)
  {
    v71 = v68;
    v72 = v69;
    v73 = v70;
    sub_243F85EC0(&v71, &v52);
    v74 = v30;
    sub_243F86FA8(&v74);

    sub_243F7EE58(v73);
    v64 = v56;
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    nullsub_1(&v60);
    v79 = v64;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v75 = v60;
    v76 = v61;
    v77 = v62;
    v78 = v63;
  }

  else
  {
    sub_243F86F90(&v75);
  }

  v31 = v43;
  sub_243F5F574(v12, v43, &qword_27EDC0BD0);
  v48 = v79;
  v49 = v80;
  v50 = v81;
  v51 = v82;
  v44 = v75;
  v45 = v76;
  v46 = v77;
  v47 = v78;
  v32 = v42;
  sub_243F5F574(v31, v42, &qword_27EDC0BD0);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0BF8) + 48));
  v34 = v48;
  v35 = v49;
  v56 = v48;
  v57 = v49;
  v36 = v50;
  v37 = v51;
  v58 = v50;
  v59 = v51;
  v38 = v44;
  v39 = v45;
  v52 = v44;
  v53 = v45;
  v40 = v47;
  v54 = v46;
  v55 = v47;
  v33[2] = v46;
  v33[3] = v40;
  *v33 = v38;
  v33[1] = v39;
  v33[6] = v36;
  v33[7] = v37;
  v33[4] = v34;
  v33[5] = v35;
  sub_243F5F574(&v52, &v60, &qword_27EDC0C00);
  sub_243F5EED4(v12, &qword_27EDC0BD0);
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v63 = v47;
  sub_243F5EED4(&v60, &qword_27EDC0C00);
  return sub_243F5EED4(v31, &qword_27EDC0BD0);
}

uint64_t sub_243F83828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v224 = a2;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v222);
  v4 = &v215 - v3;
  v5 = sub_2440D2990();
  MEMORY[0x28223BE20](v5);
  v251 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2740();
  v249 = *(v7 - 8);
  v250 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v246 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v247 = &v215 - v11;
  MEMORY[0x28223BE20](v10);
  v248 = &v215 - v12;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C10);
  MEMORY[0x28223BE20](v274);
  v269 = &v215 - v13;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C18);
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v259 = &v215 - v14;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C20);
  v219 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v216 = &v215 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C28);
  v16 = MEMORY[0x28223BE20](v218);
  v223 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v257 = &v215 - v18;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C30);
  v19 = MEMORY[0x28223BE20](v245);
  v258 = &v215 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v244 = &v215 - v22;
  MEMORY[0x28223BE20](v21);
  v273 = &v215 - v23;
  v24 = type metadata accessor for PINPrivacyLockView();
  v243 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v242 = v25;
  v268 = &v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_2440D1B10();
  v277 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v266 = &v215 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_2440D1720();
  v276 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v263 = &v215 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C38);
  v275 = *(v264 - 8);
  v28 = MEMORY[0x28223BE20](v264);
  v262 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v261 = &v215 - v30;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C40);
  MEMORY[0x28223BE20](v238);
  v239 = &v215 - v31;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C48);
  MEMORY[0x28223BE20](v241);
  v240 = &v215 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C50);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v256 = &v215 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v272 = &v215 - v36;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C58);
  MEMORY[0x28223BE20](v236);
  v38 = &v215 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C60);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v255 = &v215 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v271 = &v215 - v42;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C68);
  v43 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v45 = &v215 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C70);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v254 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v215 - v49;
  v51 = *sub_243FC137C();
  v252 = v5;
  v253 = v4;
  v270 = v50;
  v260 = a1;
  v237 = v24;
  if (v51)
  {
    (*(v43 + 56))(v50, 1, 1, v235);
  }

  else
  {
    v52 = (*(**(a1 + *(v24 + 28) + 8) + 208))();
    v53 = nullsub_1(v52);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_2440D2B00();
    sub_2440D1560();
    LOBYTE(v279[0]) = 1;
    *(v285 + 6) = *(&v285[3] + 6);
    *(&v285[1] + 6) = *(&v285[4] + 6);
    *(&v285[2] + 6) = *(&v285[5] + 6);
    v60 = sub_2440D20C0();
    sub_2440D13D0();
    LOBYTE(v283[0]) = 0;
    *&v278[0] = v53;
    *(&v278[0] + 1) = v55;
    *&v278[1] = v57;
    *(&v278[1] + 1) = v59;
    *&v278[2] = 0;
    WORD4(v278[2]) = 1;
    *(&v278[2] + 10) = v285[0];
    *(&v278[3] + 10) = v285[1];
    *(&v278[4] + 10) = v285[2];
    *(&v278[5] + 1) = *(&v285[2] + 14);
    LOBYTE(v278[6]) = v60;
    *(&v278[6] + 1) = v61;
    *&v278[7] = v62;
    *(&v278[7] + 1) = v63;
    *&v278[8] = v64;
    BYTE8(v278[8]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C78);
    sub_243F87158();
    sub_2440D24E0();
    v279[6] = v278[6];
    v279[7] = v278[7];
    *(&v279[7] + 9) = *(&v278[7] + 9);
    v279[2] = v278[2];
    v279[3] = v278[3];
    v279[4] = v278[4];
    v279[5] = v278[5];
    v279[0] = v278[0];
    v279[1] = v278[1];
    sub_243F5EED4(v279, &qword_27EDC0C78);
    v65 = v270;
    sub_243F87350(v45, v270);
    (*(v43 + 56))(v65, 0, 1, v235);
  }

  *v38 = sub_2440D1C20();
  *(v38 + 1) = 0;
  v38[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0CA8);
  sub_243F85538();
  sub_243F5DD50(&qword_27EDC0CB0, &qword_27EDC0C58);
  sub_2440D2480();
  sub_243F5EED4(v38, &qword_27EDC0C58);
  if (sub_243FC0F94())
  {
    v66 = 0xD000000000000018;
  }

  else
  {
    v66 = 0xD000000000000017;
  }

  v67 = sub_2440579C8(0, v66);
  v69 = v68;

  *&v279[0] = v67;
  *(&v279[0] + 1) = v69;
  v236 = sub_243F4EF64();
  v70 = sub_2440D2310();
  v72 = v71;
  v74 = v73;
  sub_243FFADA0();

  v75 = sub_2440D22C0();
  v77 = v76;
  v79 = v78;

  sub_243F62C68(v70, v72, v74 & 1);

  sub_2440D21E0();
  v80 = sub_2440D22E0();
  v82 = v81;
  v84 = v83;

  sub_243F62C68(v75, v77, v79 & 1);

  sub_2440D21B0();
  v85 = sub_2440D22A0();
  v226 = v86;
  *&v227 = v85;
  LOBYTE(v75) = v87;
  v225 = v88;
  sub_243F62C68(v80, v82, v84 & 1);

  v89 = v263;
  sub_2440D1710();
  v90 = v266;
  sub_2440D1B00();
  v91 = sub_243F88664(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v92 = sub_243F88664(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v93 = v261;
  v94 = v265;
  v95 = v267;
  sub_2440D13F0();
  v96 = *(v277 + 8);
  v277 += 8;
  v233 = v96;
  v96(v90, v95);
  v97 = *(v276 + 8);
  v276 += 8;
  v232 = v97;
  v97(v89, v94);
  v98 = v275;
  v99 = v264;
  v230 = *(v275 + 16);
  v231 = v275 + 16;
  v230(v262, v93, v264);
  *&v279[0] = v94;
  *(&v279[0] + 1) = v95;
  v234 = v92;
  v235 = v91;
  *&v279[1] = v91;
  *(&v279[1] + 1) = v92;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = sub_2440D1610();
  v101 = *(v98 + 8);
  v275 = v98 + 8;
  v228 = v101;
  v101(v93, v99);
  KeyPath = swift_getKeyPath();
  LOBYTE(v95) = v75 & 1;
  LOBYTE(v279[0]) = v75 & 1;
  LOBYTE(v278[0]) = 0;
  v103 = swift_getKeyPath();
  v104 = swift_getKeyPath();
  LOBYTE(v98) = sub_2440D20D0();
  sub_2440D13D0();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  LOBYTE(v279[0]) = 0;
  LOBYTE(v93) = sub_2440D20A0();
  sub_2440D13D0();
  LOBYTE(v278[0]) = 0;
  *&v279[0] = v227;
  *(&v279[0] + 1) = v226;
  LOBYTE(v279[1]) = v95;
  *(&v279[1] + 1) = v225;
  *&v279[2] = v100;
  BYTE8(v279[2]) = 0;
  *&v279[3] = KeyPath;
  *(&v279[3] + 1) = 2;
  LOBYTE(v279[4]) = 0;
  *(&v279[4] + 1) = v103;
  LOBYTE(v279[5]) = 1;
  *(&v279[5] + 1) = v104;
  v227 = xmmword_2440D7C80;
  v279[6] = xmmword_2440D7C80;
  LOBYTE(v279[7]) = v98;
  *(&v279[7] + 1) = v106;
  *&v279[8] = v108;
  *(&v279[8] + 1) = v110;
  *&v279[9] = v112;
  BYTE8(v279[9]) = 0;
  LOBYTE(v279[10]) = v93;
  *(&v279[10] + 1) = v113;
  *&v279[11] = v114;
  *(&v279[11] + 1) = v115;
  *&v279[12] = v116;
  BYTE8(v279[12]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0CB8);
  sub_243F873C0();
  v117 = v239;
  sub_2440D2510();
  v283[10] = v279[10];
  *v284 = v279[11];
  *&v284[9] = *(&v279[11] + 9);
  v283[6] = v279[6];
  v283[7] = v279[7];
  v283[9] = v279[9];
  v283[8] = v279[8];
  v283[2] = v279[2];
  v283[3] = v279[3];
  v283[5] = v279[5];
  v283[4] = v279[4];
  v283[1] = v279[1];
  v283[0] = v279[0];
  sub_243F5EED4(v283, &qword_27EDC0CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v118 = v260;
  sub_2440D1E60();
  LOBYTE(v278[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
  sub_243F878FC();
  sub_243F67D98();
  v119 = v240;
  sub_2440D24A0();

  sub_243F5EED4(v117, &qword_27EDC0C40);
  v120 = v268;
  sub_243F86E64(v118, v268);
  v121 = (*(v243 + 80) + 16) & ~*(v243 + 80);
  v122 = (v121 + v242);
  v242 = *(v243 + 80);
  v239 = v122;
  v123 = swift_allocObject();
  v243 = v121;
  sub_243F86ECC(v120, v123 + v121);
  v124 = (v119 + *(v241 + 36));
  *v124 = sub_243F879B8;
  v124[1] = v123;
  sub_243F87A4C();
  v124[2] = 0;
  v124[3] = 0;
  sub_2440D24E0();
  sub_243F5EED4(v119, &qword_27EDC0C48);
  if (*v118)
  {
    v125 = *(**v118 + 592);

    v127 = v125(v126);

    if (v127)
    {
      v128 = 0xD00000000000001DLL;
    }

    else
    {
      v128 = 0xD000000000000016;
    }

    if (v127)
    {
      v129 = "pinprivacy_button_continue";
    }

    else
    {
      v129 = "pinprivacy_text_unlock_title";
    }

    v130 = sub_244056CD4(v128, v129 | 0x8000000000000000);
    v132 = v131;

    *&v279[0] = v130;
    *(&v279[0] + 1) = v132;
    v133 = sub_2440D2310();
    v135 = v134;
    v137 = v136;
    sub_243FFABE4();

    v138 = sub_2440D22C0();
    v140 = v139;
    v142 = v141;

    sub_243F62C68(v133, v135, v137 & 1);

    sub_2440D2150();
    v143 = sub_2440D22E0();
    v145 = v144;
    v147 = v146;
    v149 = v148;

    sub_243F62C68(v138, v140, v142 & 1);

    sub_2440D2B00();
    sub_2440D18E0();
    v150 = v147 & 1;
    v280 = v147 & 1;
    v151 = v263;
    sub_2440D1710();
    v152 = v266;
    sub_2440D1B00();
    v153 = v261;
    v154 = v265;
    v155 = v267;
    sub_2440D13F0();
    v233(v152, v155);
    v232(v151, v154);
    v156 = v264;
    v230(v262, v153, v264);
    v157 = sub_2440D1610();
    v228(v153, v156);
    v158 = swift_getKeyPath();
    v159 = swift_getKeyPath();
    v281 = 0;
    LOBYTE(v154) = sub_2440D20A0();
    sub_2440D13D0();
    v161 = v160;
    v163 = v162;
    v165 = v164;
    v167 = v166;
    v282 = 0;
    v168 = swift_getKeyPath();
    *&v278[0] = v143;
    *(&v278[0] + 1) = v145;
    LOBYTE(v278[1]) = v150;
    *(&v278[1] + 1) = v149;
    v278[6] = v278[21];
    v278[7] = v278[22];
    v278[8] = v278[23];
    v278[2] = v278[17];
    v278[3] = v278[18];
    v278[4] = v278[19];
    v278[5] = v278[20];
    *&v278[9] = v157;
    BYTE8(v278[9]) = 0;
    *&v278[10] = v158;
    *(&v278[10] + 8) = v227;
    *(&v278[11] + 1) = v159;
    *&v278[12] = 3;
    BYTE8(v278[12]) = 0;
    LOBYTE(v278[13]) = v154;
    *(&v278[13] + 1) = v161;
    *&v278[14] = v163;
    *(&v278[14] + 1) = v165;
    *&v278[15] = v167;
    BYTE8(v278[15]) = 0;
    *&v278[16] = v168;
    BYTE8(v278[16]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0D58);
    sub_243F87B40();
    v169 = v244;
    sub_2440D2510();
    memcpy(v279, v278, 0x109uLL);
    sub_243F5EED4(v279, &qword_27EDC0D58);
    sub_2440D1800();
    sub_243F5EED4(v169, &qword_27EDC0C30);
    v170 = v268;
    sub_243F86E64(v260, v268);
    v171 = swift_allocObject();
    sub_243F86ECC(v170, v171 + v243);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD8);
    sub_243F8829C();
    v172 = v269;
    sub_2440D2870();
    v173 = &v172[*(v274 + 36)];
    LODWORD(v277) = *MEMORY[0x277CE0118];
    v174 = v277;
    v175 = sub_2440D1B90();
    v176 = *(*(v175 - 8) + 104);
    v176(v173, v174, v175);
    *&v173[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E18) + 36)] = 256;
    v177 = v246;
    sub_2440D2730();
    sub_2440D2660();
    v178 = v247;
    sub_2440D2720();

    v179 = v250;
    v180 = *(v249 + 8);
    v180(v177, v250);
    v181 = v248;
    MEMORY[0x245D56610](1);
    v180(v178, v179);
    v182 = v251;
    v176(v251, v277, v175);
    v183 = sub_243F88524();
    v184 = sub_243F88664(&qword_27EDC0E40, MEMORY[0x277CE1260]);
    v185 = v252;
    v186 = v269;
    sub_2440D2390();
    sub_243F88608(v182);
    v180(v181, v179);
    sub_243F5EED4(v186, &qword_27EDC0C10);
    v187 = *MEMORY[0x277CDF988];
    v188 = sub_2440D1770();
    v189 = v253;
    (*(*(v188 - 8) + 104))(v253, v187, v188);
    sub_243F88664(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    if (sub_2440D2F50())
    {
      *&v278[0] = v274;
      *(&v278[0] + 1) = v185;
      *&v278[1] = v183;
      *(&v278[1] + 1) = v184;
      v190 = swift_getOpaqueTypeConformance2();
      v191 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
      v192 = v216;
      v193 = v220;
      v194 = v259;
      v195 = v222;
      sub_2440D2420();
      sub_243F5EED4(v189, &qword_27EDC0010);
      (*(v217 + 8))(v194, v193);
      *&v278[0] = v193;
      *(&v278[0] + 1) = v195;
      *&v278[1] = v190;
      *(&v278[1] + 1) = v191;
      swift_getOpaqueTypeConformance2();
      v196 = v257;
      v197 = v221;
      sub_2440D24E0();
      (*(v219 + 8))(v192, v197);
      LOBYTE(v194) = sub_2440D20C0();
      sub_2440D13D0();
      v198 = v196 + *(v218 + 36);
      v199 = v196;
      *v198 = v194;
      *(v198 + 8) = v200;
      *(v198 + 16) = v201;
      *(v198 + 24) = v202;
      *(v198 + 32) = v203;
      *(v198 + 40) = 0;
      v204 = v254;
      sub_243F5F574(v270, v254, &qword_27EDC0C70);
      v205 = v255;
      sub_243F5F574(v271, v255, &qword_27EDC0C60);
      v206 = v256;
      sub_243F5F574(v272, v256, &qword_27EDC0C50);
      v207 = v258;
      sub_243F5F574(v273, v258, &qword_27EDC0C30);
      v208 = v223;
      sub_243F5F574(v199, v223, &qword_27EDC0C28);
      v209 = v204;
      v210 = v224;
      sub_243F5F574(v209, v224, &qword_27EDC0C70);
      v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E48);
      v212 = v210 + v211[12];
      *v212 = 0;
      *(v212 + 8) = 1;
      sub_243F5F574(v205, v210 + v211[16], &qword_27EDC0C60);
      sub_243F5F574(v206, v210 + v211[20], &qword_27EDC0C50);
      sub_243F5F574(v207, v210 + v211[24], &qword_27EDC0C30);
      sub_243F5F574(v208, v210 + v211[28], &qword_27EDC0C28);
      v213 = v210 + v211[32];
      *v213 = 0;
      *(v213 + 8) = 1;
      sub_243F5EED4(v257, &qword_27EDC0C28);
      sub_243F5EED4(v273, &qword_27EDC0C30);
      sub_243F5EED4(v272, &qword_27EDC0C50);
      sub_243F5EED4(v271, &qword_27EDC0C60);
      sub_243F5EED4(v270, &qword_27EDC0C70);
      sub_243F5EED4(v208, &qword_27EDC0C28);
      sub_243F5EED4(v258, &qword_27EDC0C30);
      sub_243F5EED4(v256, &qword_27EDC0C50);
      sub_243F5EED4(v255, &qword_27EDC0C60);
      return sub_243F5EED4(v254, &qword_27EDC0C70);
    }

    __break(1u);
  }

  type metadata accessor for PINViewModel();
  sub_243F88664(&qword_27EDC0B80, type metadata accessor for PINViewModel);
  result = sub_2440D1910();
  __break(1u);
  return result;
}

uint64_t sub_243F85538()
{
  v0 = sub_2440D2770();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E50);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-1] - v5;
  sub_2440D2760();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE0], v0);
  v7 = sub_2440D2790();

  (*(v1 + 8))(v3, v0);
  sub_2440D2B00();
  sub_2440D1560();
  LOBYTE(v23[0]) = 1;
  *&v18[6] = v20;
  *&v18[22] = v21;
  *&v18[38] = v22;
  LOBYTE(v0) = sub_2440D20D0();
  sub_2440D13D0();
  *(v14 + 2) = *v18;
  *(&v14[1] + 2) = *&v18[16];
  v19 = 0;
  v13 = v7;
  LOWORD(v14[0]) = 1;
  *(&v14[2] + 2) = *&v18[32];
  *&v14[3] = *&v18[46];
  BYTE8(v14[3]) = v0;
  *&v15 = v8;
  *(&v15 + 1) = v9;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E58);
  sub_243F886AC();
  sub_2440D2480();
  v23[4] = v14[3];
  v23[5] = v15;
  v23[6] = v16;
  v24 = v17;
  v23[0] = v13;
  v23[1] = v14[0];
  v23[2] = v14[1];
  v23[3] = v14[2];
  sub_243F5EED4(v23, &qword_27EDC0E58);
  sub_2440D1800();
  return sub_243F5EED4(v6, &qword_27EDC0E50);
}

uint64_t sub_243F8581C@<X0>(uint64_t a1@<X8>)
{
  sub_2440579C8(0, 0xD000000000000013);
  sub_243F4EF64();
  v2 = sub_2440D2310();
  v4 = v3;
  v6 = v5;
  sub_243FFB074();

  v7 = sub_2440D22C0();
  v9 = v8;
  v11 = v10;

  sub_243F62C68(v2, v4, v6 & 1);

  sub_2440D2230();
  v12 = sub_2440D22E0();
  v14 = v13;
  v16 = v15;

  sub_243F62C68(v7, v9, v11 & 1);

  sub_2440D21B0();
  v17 = sub_2440D22A0();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_243F62C68(v12, v14, v16 & 1);

  LOBYTE(v12) = sub_2440D2110();
  sub_2440D13D0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v14) = sub_2440D20A0();
  sub_2440D13D0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v12;
  *(a1 + 40) = v24;
  *(a1 + 48) = v26;
  *(a1 + 56) = v28;
  *(a1 + 64) = v30;
  *(a1 + 72) = 0;
  *(a1 + 80) = v14;
  *(a1 + 88) = v32;
  *(a1 + 96) = v34;
  *(a1 + 104) = v36;
  *(a1 + 112) = v38;
  *(a1 + 120) = 0;
  *(a1 + 128) = KeyPath;
  *(a1 + 136) = 0x3FD3333333333333;
  *(a1 + 144) = result;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_243F85A6C(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PINPrivacyLockView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_243F86E64(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_243F86ECC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_243F887D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_18;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F88664(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

double sub_243F85EC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D1720();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *a1;
  v21 = sub_2440D20B0();
  v12 = *(a1 + 24);
  v20 = *(a1 + 32);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 56) = 350;
  v15 = v11;

  sub_243F7EE68(v12);
  sub_2440D1710();
  (*(v5 + 16))(v8, v10, v4);
  sub_243F88664(&qword_27EDC0C08, MEMORY[0x277CDF858]);
  v16 = sub_2440D1610();
  (*(v5 + 8))(v10, v4);
  v17 = sub_2440D26A0();
  LOBYTE(v10) = sub_2440D20B0();

  v18 = swift_allocObject();
  *(v18 + 16) = 0x3FD6666666666666;
  *a2 = v15;
  *(a2 + 8) = v21;
  *(a2 + 16) = sub_243F87004;
  *(a2 + 24) = v13;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = sub_243F86628;
  *(a2 + 72) = 0;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v10;
  *(a2 + 104) = sub_243F87020;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0x4000000000000000;
  return result;
}

uint64_t sub_243F86130(uint64_t *a1, uint64_t a2)
{
  v28 = a2;
  v33 = sub_2440D2C80();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440D2CA0();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2C70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2440D2CD0();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  sub_243FAFFB0();

  BrightnessManager.increaseBrightnessIfNeeded()();

  (a1[1])(1);
  sub_243F5DB84();
  v30 = sub_2440D3530();
  sub_2440D2CC0();
  *v9 = v28;
  (*(v7 + 104))(v9, *MEMORY[0x277D85178], v6);
  MEMORY[0x245D56C10](v14, v9);
  (*(v7 + 8))(v9, v6);
  v17 = *(v11 + 8);
  v17(v14, v10);
  v39 = *a1;
  v18 = a1[3];
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = a1[4];
  aBlock[4] = sub_243F870B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);
  sub_243F870FC(&v39, v37);

  sub_243F7EE68(v18);

  v22 = v31;
  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F88664(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v24 = v32;
  v23 = v33;
  sub_2440D3710();
  v25 = v30;
  MEMORY[0x245D57400](v16, v22, v24, v21);
  _Block_release(v21);

  (*(v36 + 8))(v24, v23);
  (*(v34 + 8))(v22, v35);
  return (v17)(v16, v29);
}

uint64_t sub_243F86628()
{
  sub_243FAFFB0();

  BrightnessManager.resetBrightnessToSystemDefault()();
}

uint64_t sub_243F8666C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2440D1C20();
  v4 = sub_2440D1B20();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B90);
  return sub_243F833C4(v1, a1 + *(v5 + 44));
}

unint64_t sub_243F866E8()
{
  result = qword_27EDC0B98;
  if (!qword_27EDC0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0B98);
  }

  return result;
}

uint64_t sub_243F86758@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PrivacyAuthenticatorModel();
  sub_243FD07B4();
  type metadata accessor for PINViewModel();
  sub_243F88664(&qword_27EDC0B80, type metadata accessor for PINViewModel);
  *a1 = sub_2440D1930();
  a1[1] = v2;
  v3 = type metadata accessor for PINPrivacyLockView();
  sub_243F64688();
  sub_2440D1E70();
  sub_243F6069C();
  sub_2440D1500();
  v4 = (a1 + *(v3 + 28));
  sub_243F88664(&qword_27EDC0B88, type metadata accessor for PrivacyAuthenticatorModel);
  result = sub_2440D1730();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t sub_243F86894(uint64_t a1)
{
  v2 = sub_243F86E10();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243F868E0(uint64_t a1)
{
  v2 = sub_243F86E10();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243F86940(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_243F86A78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_243F86B98()
{
  sub_243F86C4C();
  if (v0 <= 0x3F)
  {
    sub_243F67D28();
    if (v1 <= 0x3F)
    {
      sub_243F62560();
      if (v2 <= 0x3F)
      {
        sub_243F86CE0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243F86C4C()
{
  if (!qword_27EDC0BA0)
  {
    type metadata accessor for PINViewModel();
    sub_243F88664(&qword_27EDC0B80, type metadata accessor for PINViewModel);
    v0 = sub_2440D1940();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0BA0);
    }
  }
}

void sub_243F86CE0()
{
  if (!qword_27EDC0BA8)
  {
    type metadata accessor for PrivacyAuthenticatorModel();
    sub_243F88664(&qword_27EDC0B88, type metadata accessor for PrivacyAuthenticatorModel);
    v0 = sub_2440D1750();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0BA8);
    }
  }
}

unint64_t sub_243F86E10()
{
  result = qword_27EDC0BC8;
  if (!qword_27EDC0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0BC8);
  }

  return result;
}

uint64_t sub_243F86E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PINPrivacyLockView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F86ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PINPrivacyLockView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F86F30()
{
  v1 = *(type metadata accessor for PINPrivacyLockView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_243F85A6C(v2);
}

double sub_243F86F90(_OWORD *a1)
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

uint64_t objectdestroy_5Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_243F870B4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243F87158()
{
  result = qword_27EDC0C80;
  if (!qword_27EDC0C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C78);
    sub_243F871E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0C80);
  }

  return result;
}

unint64_t sub_243F871E4()
{
  result = qword_27EDC0C88;
  if (!qword_27EDC0C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C90);
    sub_243F87270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0C88);
  }

  return result;
}

unint64_t sub_243F87270()
{
  result = qword_27EDC0C98;
  if (!qword_27EDC0C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0CA0);
    sub_243F872FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0C98);
  }

  return result;
}

unint64_t sub_243F872FC()
{
  result = qword_27EDC5DE0;
  if (!qword_27EDC5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5DE0);
  }

  return result;
}

uint64_t sub_243F87350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243F873C0()
{
  result = qword_27EDC0CC0;
  if (!qword_27EDC0CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0CB8);
    sub_243F8744C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0CC0);
  }

  return result;
}

unint64_t sub_243F8744C()
{
  result = qword_27EDC0CC8;
  if (!qword_27EDC0CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0CD0);
    sub_243F874D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0CC8);
  }

  return result;
}

unint64_t sub_243F874D8()
{
  result = qword_27EDC0CD8;
  if (!qword_27EDC0CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0CE0);
    sub_243F87590();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0CD8);
  }

  return result;
}

unint64_t sub_243F87590()
{
  result = qword_27EDC0CE8;
  if (!qword_27EDC0CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0CF0);
    sub_243F87648();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0CE8);
  }

  return result;
}

unint64_t sub_243F87648()
{
  result = qword_27EDC0CF8;
  if (!qword_27EDC0CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D00);
    sub_243F87700();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0CF8);
  }

  return result;
}

unint64_t sub_243F87700()
{
  result = qword_27EDC0D08;
  if (!qword_27EDC0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D10);
    sub_243F877B8();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D08);
  }

  return result;
}

unint64_t sub_243F877B8()
{
  result = qword_27EDC0D18;
  if (!qword_27EDC0D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D20);
    sub_243F87844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D18);
  }

  return result;
}

unint64_t sub_243F87844()
{
  result = qword_27EDC0D28;
  if (!qword_27EDC0D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D30);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D28);
  }

  return result;
}

unint64_t sub_243F878FC()
{
  result = qword_27EDC0D48;
  if (!qword_27EDC0D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C40);
    sub_243F873C0();
    sub_243F88664(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D48);
  }

  return result;
}

uint64_t sub_243F879BC()
{
  type metadata accessor for PINPrivacyLockView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  return sub_2440D1E50();
}

unint64_t sub_243F87A4C()
{
  result = qword_27EDC0D50;
  if (!qword_27EDC0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0258);
    sub_243F878FC();
    sub_243F67D98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D50);
  }

  return result;
}

unint64_t sub_243F87B40()
{
  result = qword_27EDC0D60;
  if (!qword_27EDC0D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D58);
    sub_243F87BF8();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D60);
  }

  return result;
}

unint64_t sub_243F87BF8()
{
  result = qword_27EDC0D68;
  if (!qword_27EDC0D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D70);
    sub_243F87C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D68);
  }

  return result;
}

unint64_t sub_243F87C84()
{
  result = qword_27EDC0D78;
  if (!qword_27EDC0D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D80);
    sub_243F87D3C();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D78);
  }

  return result;
}

unint64_t sub_243F87D3C()
{
  result = qword_27EDC0D88;
  if (!qword_27EDC0D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0D90);
    sub_243F87DF4();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D88);
  }

  return result;
}

unint64_t sub_243F87DF4()
{
  result = qword_27EDC0D98;
  if (!qword_27EDC0D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DA0);
    sub_243F87EAC();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0D98);
  }

  return result;
}

unint64_t sub_243F87EAC()
{
  result = qword_27EDC0DA8;
  if (!qword_27EDC0DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DB0);
    sub_243F87F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DA8);
  }

  return result;
}

unint64_t sub_243F87F38()
{
  result = qword_27EDC0DB8;
  if (!qword_27EDC0DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DC0);
    sub_243F884B4(&qword_27EDC0DC8, &qword_27EDC0DD0);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DB8);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PINPrivacyLockView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_243F881C0()
{
  v1 = *(type metadata accessor for PINPrivacyLockView() - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))))
  {

    sub_243F5751C();
  }

  else
  {
    type metadata accessor for PINViewModel();
    sub_243F88664(&qword_27EDC0B80, type metadata accessor for PINViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_243F8829C()
{
  result = qword_27EDC0DE0;
  if (!qword_27EDC0DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DD8);
    sub_243F88354();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DE0);
  }

  return result;
}

unint64_t sub_243F88354()
{
  result = qword_27EDC0DE8;
  if (!qword_27EDC0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DF0);
    sub_243F8840C();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DE8);
  }

  return result;
}

unint64_t sub_243F8840C()
{
  result = qword_27EDC0DF8;
  if (!qword_27EDC0DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0E00);
    sub_243F884B4(&qword_27EDC0E08, &qword_27EDC0E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DF8);
  }

  return result;
}

uint64_t sub_243F884B4(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_243F88524()
{
  result = qword_27EDC0E20;
  if (!qword_27EDC0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0C10);
    sub_243F5DD50(&qword_27EDC0E28, &qword_27EDC0E30);
    sub_243F5DD50(&qword_27EDC0E38, &qword_27EDC0E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0E20);
  }

  return result;
}

uint64_t sub_243F88608(uint64_t a1)
{
  v2 = sub_2440D2990();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243F88664(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243F886AC()
{
  result = qword_27EDC0E60;
  if (!qword_27EDC0E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0E58);
    sub_243F88738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0E60);
  }

  return result;
}

unint64_t sub_243F88738()
{
  result = qword_27EDC0E68;
  if (!qword_27EDC0E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0E70);
    sub_243F6194C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0E68);
  }

  return result;
}

uint64_t type metadata accessor for PINPromptView()
{
  result = qword_27EDC8270;
  if (!qword_27EDC8270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_243F88828@<Q0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for PINPromptView();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E88);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  *v6 = sub_2440D1C20();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E98);
  sub_243F88BD8(v1, &v6[*(v11 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
  v12 = sub_2440D2A00();
  v13 = (*(*v23 + 504))(v12);

  LOBYTE(v23) = v13;
  sub_243F8A89C(v1, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_243F8AA08(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_243F5DD50(&qword_27EDC0EA0, &qword_27EDC0E88);
  sub_243F5D720();
  sub_2440D25D0();

  sub_243F5EED4(v6, &qword_27EDC0E88);
  sub_2440D2AE0();
  sub_2440D18E0();
  v16 = v22;
  (*(v8 + 32))(v22, v10, v7);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EA8) + 36);
  v18 = v28;
  *(v17 + 64) = v27;
  *(v17 + 80) = v18;
  *(v17 + 96) = v29;
  v19 = v24;
  *v17 = v23;
  *(v17 + 16) = v19;
  result = v26;
  *(v17 + 32) = v25;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_243F88BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v3 = sub_2440D1870();
  v154 = *(v3 - 8);
  v155 = v3;
  MEMORY[0x28223BE20](v3);
  v150 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2440D1720();
  v149 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v146 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EC0);
  v151 = *(v153 - 8);
  v6 = MEMORY[0x28223BE20](v153);
  v147 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EC8);
  MEMORY[0x28223BE20](v9 - 8);
  v156 = (&v138 - v10);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0ED0);
  MEMORY[0x28223BE20](v138);
  v140 = &v138 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0ED8);
  MEMORY[0x28223BE20](v139);
  v142 = &v138 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EE0);
  MEMORY[0x28223BE20](v141);
  v144 = &v138 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EE8);
  v14 = MEMORY[0x28223BE20](v171);
  v143 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v145 = &v138 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF0);
  MEMORY[0x28223BE20](v169);
  v170 = &v138 - v17;
  v18 = sub_2440D1F20();
  v165 = *(v18 - 8);
  v166 = v18;
  MEMORY[0x28223BE20](v18);
  v162 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF8);
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F00);
  v163 = *(v21 - 8);
  v164 = v21;
  MEMORY[0x28223BE20](v21);
  v159 = &v138 - v22;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F08);
  v23 = MEMORY[0x28223BE20](v168);
  v161 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = &v138 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F10);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v174 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v173 = &v138 - v29;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F18);
  v30 = MEMORY[0x28223BE20](v186);
  v185 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v179 = &v138 - v32;
  v33 = sub_2440D1770();
  v190 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v189 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v188 = &v138 - v36;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F20);
  MEMORY[0x28223BE20](v182);
  v193 = &v138 - v37;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F28);
  MEMORY[0x28223BE20](v176);
  v39 = &v138 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F30);
  v183 = *(v40 - 8);
  v184 = v40;
  MEMORY[0x28223BE20](v40);
  v181 = &v138 - v41;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F38);
  v42 = MEMORY[0x28223BE20](v178);
  v172 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v180 = &v138 - v45;
  MEMORY[0x28223BE20](v44);
  v191 = &v138 - v46;
  v47 = (a1 + *(type metadata accessor for PINPromptView() + 28));
  v48 = *v47;
  v49 = *(v47 + 1);
  LOBYTE(v199) = v48;
  *(&v199 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2840();
  v187 = *(&v206 + 1);
  v50 = v206;
  v51 = v207;
  v192 = a1;
  v194 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F40);
  sub_243F61520();
  sub_243F8B594(&qword_27EDC0F48, &qword_27EDC0F40, &unk_2440D8130, sub_243F8B308);
  v54 = sub_24404D14C();
  v137 = v53;
  v55 = v188;
  v177 = v39;
  v56 = v52;
  v57 = v189;
  sub_24404D15C(v50, v187, v51, sub_243F8B0B4, sub_243F8A328, v56, v39, v54, 0.3, v137);
  v58 = v190;
  v59 = *(v190 + 104);
  v59(v55, *MEMORY[0x277CDF9D8], v33);
  v59(v57, *MEMORY[0x277CDF988], v33);
  sub_243F8BAD4(&qword_27EDC0F70, MEMORY[0x277CDFA28]);
  v60 = v33;
  result = sub_2440D2F30();
  if (result)
  {
    v62 = *(v58 + 32);
    v63 = v179;
    v62(v179, v55, v60);
    v64 = v186;
    v62((v63 + *(v186 + 48)), v57, v60);
    v65 = v185;
    sub_243F5F574(v63, v185, &qword_27EDC0F18);
    v66 = *(v64 + 48);
    v62(v193, v65, v60);
    v67 = *(v58 + 8);
    v67(v65 + v66, v60);
    sub_243F681C8(v63, v65, &qword_27EDC0F18);
    v68 = v193;
    v62(&v193[*(v182 + 36)], (v65 + *(v64 + 48)), v60);
    v67(v65, v60);
    sub_243F5DD50(&qword_27EDC0F78, &qword_27EDC0F28);
    sub_243F5DD50(&qword_27EDC0F80, &qword_27EDC0F20);
    v69 = v181;
    v70 = v177;
    sub_2440D2420();
    sub_243F5EED4(v68, &qword_27EDC0F20);
    sub_243F5EED4(v70, &qword_27EDC0F28);
    sub_2440D2B00();
    sub_2440D18E0();
    v71 = v180;
    (*(v183 + 32))(v180, v69, v184);
    v72 = (v71 + *(v178 + 36));
    v73 = v204;
    v72[4] = v203;
    v72[5] = v73;
    v72[6] = v205;
    v74 = v200;
    *v72 = v199;
    v72[1] = v74;
    v75 = v202;
    v72[2] = v201;
    v72[3] = v75;
    v76 = v191;
    sub_243F681C8(v71, v191, &qword_27EDC0F38);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
    v78 = sub_2440D2A00();
    v79 = (*(*v206 + 600))(v78);

    if (v79)
    {
      v80 = v157;
      sub_2440D14F0();
      v81 = v162;
      sub_2440D1F10();
      sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
      sub_243F8BAD4(&qword_27EDC1030, MEMORY[0x277CDE330]);
      v83 = v159;
      v82 = v160;
      v84 = v166;
      sub_2440D2340();
      (*(v165 + 8))(v81, v84);
      (*(v158 + 8))(v80, v82);
      sub_2440D2B00();
      sub_2440D18E0();
      v85 = v161;
      (*(v163 + 32))(v161, v83, v164);
      v86 = (v85 + *(v168 + 36));
      v87 = v211;
      v86[4] = v210;
      v86[5] = v87;
      v86[6] = v212;
      v88 = v207;
      *v86 = v206;
      v86[1] = v88;
      v89 = v209;
      v86[2] = v208;
      v86[3] = v89;
      v90 = v167;
      sub_243F681C8(v85, v167, &qword_27EDC0F08);
      sub_243F5F574(v90, v170, &qword_27EDC0F08);
      swift_storeEnumTagMultiPayload();
      sub_243F8B988();
      sub_243F8BB1C();
      v91 = v173;
      sub_2440D1D20();
      sub_243F5EED4(v90, &qword_27EDC0F08);
LABEL_10:
      v131 = 0;
LABEL_11:
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F88);
      (*(*(v132 - 8) + 56))(v91, v131, 1, v132);
      v133 = v172;
      sub_243F5F574(v76, v172, &qword_27EDC0F38);
      v134 = v174;
      sub_243F5F574(v91, v174, &qword_27EDC0F10);
      v135 = v175;
      sub_243F5F574(v133, v175, &qword_27EDC0F38);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F90);
      sub_243F5F574(v134, v135 + *(v136 + 48), &qword_27EDC0F10);
      sub_243F5EED4(v91, &qword_27EDC0F10);
      sub_243F5EED4(v76, &qword_27EDC0F38);
      sub_243F5EED4(v134, &qword_27EDC0F10);
      return sub_243F5EED4(v133, &qword_27EDC0F38);
    }

    v92 = sub_2440D2A00();
    v93 = (*(*v206 + 408))(v92);

    if (v93 < 1)
    {
      v131 = 1;
      v91 = v173;
      goto LABEL_11;
    }

    v94 = sub_2440D1B30();
    v95 = v156;
    *v156 = v94;
    *(v95 + 8) = 0x4014000000000000;
    *(v95 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F98);
    v96 = sub_2440D2A00();
    v97 = (*(*v206 + 408))(v96);

    if ((v97 & 0x8000000000000000) == 0)
    {
      *&v206 = 0;
      *(&v206 + 1) = v97;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0FA0);
      v193 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0FA8);
      sub_243F8B4B4();
      sub_243F8B594(&qword_27EDC0FC0, &qword_27EDC0FA8, &unk_2440D8188, sub_243F8B648);
      sub_2440D29B0();
      sub_2440D2B00();
      sub_2440D18E0();
      v98 = v140;
      sub_243F681C8(v95, v140, &qword_27EDC0EC8);
      v99 = (v98 + *(v138 + 36));
      v100 = v211;
      v99[4] = v210;
      v99[5] = v100;
      v99[6] = v212;
      v101 = v207;
      *v99 = v206;
      v99[1] = v101;
      v102 = v209;
      v99[2] = v208;
      v99[3] = v102;
      v103 = sub_2440D20C0();
      sub_244070DF8();
      sub_2440D13D0();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v112 = v142;
      sub_243F681C8(v98, v142, &qword_27EDC0ED0);
      v113 = v112 + *(v139 + 36);
      *v113 = v103;
      *(v113 + 8) = v105;
      *(v113 + 16) = v107;
      *(v113 + 24) = v109;
      *(v113 + 32) = v111;
      *(v113 + 40) = 0;
      v114 = v146;
      sub_2440D1710();
      sub_2440D2C40();
      v115 = v150;
      sub_2440D1880();
      v116 = sub_243F8BAD4(&qword_27EDC0C08, MEMORY[0x277CDF858]);
      v117 = sub_243F8BAD4(&qword_27EDC1018, MEMORY[0x277CDFAE8]);
      v118 = v148;
      v119 = v152;
      v120 = v155;
      sub_2440D13F0();
      (*(v154 + 8))(v115, v120);
      (*(v149 + 8))(v114, v119);
      v121 = v151;
      v122 = v153;
      (*(v151 + 16))(v147, v118, v153);
      v195 = v119;
      v196 = v120;
      v197 = v116;
      v198 = v117;
      swift_getOpaqueTypeConformance2();
      v123 = sub_2440D1610();
      (*(v121 + 8))(v118, v122);
      v124 = v112;
      v76 = v191;
      v125 = v144;
      sub_243F681C8(v124, v144, &qword_27EDC0ED8);
      *(v125 + *(v141 + 36)) = v123;
      v126 = sub_2440D2A00();
      LOBYTE(v116) = (*(*v195 + 504))(v126);

      if (sub_243FA1978(v116, 1))
      {
        v127 = 100.0;
      }

      else
      {
        v127 = 0.0;
      }

      v128 = v125;
      v129 = v143;
      sub_243F681C8(v128, v143, &qword_27EDC0EE0);
      *(v129 + *(v171 + 36)) = v127;
      v130 = v145;
      sub_243F681C8(v129, v145, &qword_27EDC0EE8);
      sub_243F5F574(v130, v170, &qword_27EDC0EE8);
      swift_storeEnumTagMultiPayload();
      sub_243F8B988();
      sub_243F8BB1C();
      v91 = v173;
      sub_2440D1D20();
      sub_243F5EED4(v130, &qword_27EDC0EE8);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_243F8A328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F58);
  MEMORY[0x28223BE20](v0);
  v2 = v10 - v1;
  v3 = sub_2440D2760();
  v4 = sub_2440D21D0();
  KeyPath = swift_getKeyPath();
  v10[1] = v3;
  v10[2] = KeyPath;
  v10[3] = v4;
  sub_2440D2180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0F60);
  sub_243F8B3FC();
  sub_2440D2370();

  v6 = sub_2440D2660();
  v7 = swift_getKeyPath();
  v8 = &v2[*(v0 + 36)];
  *v8 = v7;
  v8[1] = v6;
  sub_243F8B308();
  sub_2440D24E0();
  return sub_243F5EED4(v2, &qword_27EDC0F58);
}

uint64_t sub_243F8A4C4@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_2440D1870();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = sub_2440D2770();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2760();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v12 = sub_2440D2790();

  (*(v9 + 8))(v11, v8);
  v13 = *sub_243FFADA0();
  KeyPath = swift_getKeyPath();

  sub_2440D2C40();
  sub_2440D1880();
  (*(v2 + 16))(v5, v7, v1);
  sub_243F8BAD4(&qword_27EDC1018, MEMORY[0x277CDFAE8]);
  v15 = sub_2440D1610();
  (*(v2 + 8))(v7, v1);
  sub_2440D2B00();
  sub_2440D18E0();
  v38 = 1;
  v16 = swift_getKeyPath();
  *&v19 = v12;
  *(&v19 + 1) = KeyPath;
  v20 = v13;
  LOWORD(v21) = 1;
  *(&v21 + 1) = v15;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  *&v29 = v16;
  *(&v29 + 1) = 0x3FD3333333333333;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0FD0);
  sub_243F8B648();
  sub_2440D24E0();
  v37[8] = v27;
  v37[9] = v28;
  v37[10] = v29;
  v37[4] = v23;
  v37[5] = v24;
  v37[6] = v25;
  v37[7] = v26;
  v37[0] = v19;
  v37[1] = v20;
  v37[2] = v21;
  v37[3] = v22;
  return sub_243F5EED4(v37, &qword_27EDC0FD0);
}

uint64_t sub_243F8A89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PINPromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F8A900()
{
  v1 = *(type metadata accessor for PINPromptView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_243F8AA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PINPromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F8AA6C(uint64_t a1, char *a2)
{
  type metadata accessor for PINPromptView();
  v3 = *a2;
  if (!sub_243FA1978(v3, 3))
  {
    sub_243FA1978(v3, 4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t sub_243F8AB48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PINViewState();
  sub_243F8BAD4(&qword_27EDC0E78, type metadata accessor for PINViewState);
  sub_2440D2A10();
  v2 = type metadata accessor for PINPromptView();
  *(a1 + v2[5]) = 0x4014000000000000;
  v3 = (a1 + v2[6]);
  sub_2440D2810();
  *v3 = v6;
  v3[1] = v7;
  v4 = a1 + v2[7];
  result = sub_2440D2810();
  *v4 = v6;
  *(v4 + 8) = v7;
  return result;
}

uint64_t sub_243F8AC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_243F8AD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_243F8AE40()
{
  sub_243F8AEFC();
  if (v0 <= 0x3F)
  {
    sub_243F8AF54(319, &qword_27EDC0278);
    if (v1 <= 0x3F)
    {
      sub_243F8AF54(319, &qword_27EDC0280);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243F8AEFC()
{
  if (!qword_27EDC0EB0)
  {
    type metadata accessor for PINViewState();
    v0 = sub_2440D2A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0EB0);
    }
  }
}

void sub_243F8AF54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2440D2850();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_243F8AFA4()
{
  result = qword_27EDC0EB8;
  if (!qword_27EDC0EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0E88);
    sub_243F5DD50(&qword_27EDC0EA0, &qword_27EDC0E88);
    sub_243F5D720();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0EB8);
  }

  return result;
}

uint64_t sub_243F8B0B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E80);
  v0 = sub_2440D2A00();
  v1 = (*(*v24 + 504))(v0);

  v2 = sub_2440B4474(v1);
  v3 = sub_243F68750();
  sub_2440579C8(v3 & 1, v2);

  sub_243F4EF64();
  v4 = sub_2440D2310();
  v6 = v5;
  v8 = v7;
  sub_243FFADA0();

  v9 = sub_2440D22C0();
  v11 = v10;
  v13 = v12;

  sub_243F62C68(v4, v6, v8 & 1);

  sub_2440D21D0();
  v14 = sub_2440D22E0();
  v16 = v15;
  v18 = v17;

  sub_243F62C68(v9, v11, v13 & 1);

  sub_2440D2180();
  v19 = sub_2440D22A0();
  v21 = v20;
  LOBYTE(v4) = v22;
  sub_243F62C68(v14, v16, v18 & 1);

  sub_2440D24E0();
  sub_243F62C68(v19, v21, v4 & 1);
}

unint64_t sub_243F8B308()
{
  result = qword_27EDC0F50;
  if (!qword_27EDC0F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0F60);
    sub_243F8B3FC();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0F50);
  }

  return result;
}

unint64_t sub_243F8B3FC()
{
  result = qword_27EDC0F68;
  if (!qword_27EDC0F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0F60);
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0F68);
  }

  return result;
}

unint64_t sub_243F8B4B4()
{
  result = qword_27EDC0FB0;
  if (!qword_27EDC0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0FA0);
    sub_243F8B540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FB0);
  }

  return result;
}

unint64_t sub_243F8B540()
{
  result = qword_27EDC0FB8;
  if (!qword_27EDC0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FB8);
  }

  return result;
}

uint64_t sub_243F8B594(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F8BAD4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243F8B648()
{
  result = qword_27EDC0FC8;
  if (!qword_27EDC0FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0FD0);
    sub_243F8B700();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FC8);
  }

  return result;
}

unint64_t sub_243F8B700()
{
  result = qword_27EDC0FD8;
  if (!qword_27EDC0FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0FE0);
    sub_243F8B78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FD8);
  }

  return result;
}

unint64_t sub_243F8B78C()
{
  result = qword_27EDC0FE8;
  if (!qword_27EDC0FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0FF0);
    sub_243F8B844();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FE8);
  }

  return result;
}

unint64_t sub_243F8B844()
{
  result = qword_27EDC0FF8;
  if (!qword_27EDC0FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1000);
    sub_243F8B8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0FF8);
  }

  return result;
}

unint64_t sub_243F8B8D0()
{
  result = qword_27EDC1008;
  if (!qword_27EDC1008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1010);
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1008);
  }

  return result;
}

unint64_t sub_243F8B988()
{
  result = qword_27EDC1020;
  if (!qword_27EDC1020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EF8);
    sub_2440D1F20();
    sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
    sub_243F8BAD4(&qword_27EDC1030, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1020);
  }

  return result;
}

uint64_t sub_243F8BAD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243F8BB1C()
{
  result = qword_27EDC1038;
  if (!qword_27EDC1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EE8);
    sub_243F8BBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1038);
  }

  return result;
}

unint64_t sub_243F8BBA8()
{
  result = qword_27EDC1040;
  if (!qword_27EDC1040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EE0);
    sub_243F8BC60();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1040);
  }

  return result;
}

unint64_t sub_243F8BC60()
{
  result = qword_27EDC1048;
  if (!qword_27EDC1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0ED8);
    sub_243F8BCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1048);
  }

  return result;
}

unint64_t sub_243F8BCEC()
{
  result = qword_27EDC1050;
  if (!qword_27EDC1050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0ED0);
    sub_243F5DD50(&qword_27EDC1058, &qword_27EDC0EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1050);
  }

  return result;
}

uint64_t sub_243F8BDA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1060);
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1068);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-v8 - 8];
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1070);
  sub_243F8C0C8(v2, &v5[*(v10 + 44)]);
  v21[0] = *(v2 + 8);
  v11 = swift_allocObject();
  v12 = *(v2 + 48);
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(v2 + 64);
  v13 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v13;
  sub_243F8CFC0(v2, &v22);
  v14 = sub_243F5DD50(&qword_27EDC1078, &qword_27EDC1060);
  sub_2440D25E0();

  sub_243F5EED4(v5, &qword_27EDC1060);
  v22 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v15 = swift_allocObject();
  v16 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(v2 + 64);
  v17 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v17;
  sub_243F8CFC0(v2, &v22);
  *&v22 = v3;
  *(&v22 + 1) = MEMORY[0x277D839B0];
  v23 = v14;
  v24 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2440CC638(v21, sub_243F8D048, v15, v6, MEMORY[0x277D839F8], OpaqueTypeConformance2, v20);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_243F8C0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_2440D2C60();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2440D18B0();
  v5 = MEMORY[0x28223BE20](v46);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = v29 - v8;
  v38 = sub_2440D2A70();
  v37 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38);
  v29[11] = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = v29 - v11;
  v40 = sub_2440D2AC0();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v32 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1090);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1098);
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10A0);
  MEMORY[0x28223BE20](v17);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10A8);
  MEMORY[0x28223BE20](v45);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10B0);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = v29 - v18;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10B8);
  MEMORY[0x28223BE20](v30);
  v33 = v29 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10C0);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  if (*(*a1 + 16))
  {
    v29[4] = v29 - v24;
    v29[5] = v25;
    v29[7] = v23;
    v29[8] = v22;
    v29[9] = v7;
    v29[10] = v3;
    *v15 = sub_2440D1C20();
    *(v15 + 1) = 0;
    v15[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10C8);
    sub_243F8CBF0(a1);
  }

  v26 = *(v23 + 56);
  v27 = v44;

  return v26(v27, 1, 1);
}

void sub_243F8CBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10F0);
  MEMORY[0x28223BE20](v2);
  if (*(*a1 + 16))
  {
    sub_243F4EF64();

    v3 = sub_2440D2310();
    v5 = v4;
    v7 = v6;
    sub_2440D2140();
    v8 = sub_2440D22E0();
    v10 = v9;
    v12 = v11;

    sub_243F62C68(v3, v5, v7 & 1);

    sub_2440D2180();
    sub_2440D22A0();
    sub_243F62C68(v8, v10, v12 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC10F8);
    sub_243F8DF08();
    sub_24408F1D8();
  }

  __break(1u);
}

uint64_t sub_243F8CF48()
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t sub_243F8D048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

double sub_243F8D10C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  return result;
}

unint64_t sub_243F8D210@<X0>(uint64_t a1@<X8>)
{
  sub_2440D2810();
  *(a1 + 24) = &type metadata for $s19ContactlessReaderUI0032AdditionalContextViewswift_jIADjfMX55_0_33_5E42003BD398D5E8C0786CDE0E3905B27PreviewfMf_15PreviewRegistryfMu_.ContainerView;
  result = sub_243F8D52C();
  *(a1 + 32) = result;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
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

uint64_t sub_243F8D334(uint64_t *a1, int a2)
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

uint64_t sub_243F8D37C(uint64_t result, int a2, int a3)
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

unint64_t sub_243F8D3F0()
{
  result = qword_27EDC1080;
  if (!qword_27EDC1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1060);
    sub_243F5DD50(&qword_27EDC1078, &qword_27EDC1060);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1080);
  }

  return result;
}

unint64_t sub_243F8D52C()
{
  result = qword_27EDC83A0[0];
  if (!qword_27EDC83A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDC83A0);
  }

  return result;
}

uint64_t sub_243F8D618(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D18B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243F8D67C()
{
  result = qword_27EDC07C0;
  if (!qword_27EDC07C0)
  {
    sub_2440D18B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC07C0);
  }

  return result;
}

unint64_t sub_243F8D6D4()
{
  result = qword_27EDC10D0;
  if (!qword_27EDC10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC10A8);
    sub_243F8E320(&qword_27EDC10D8, &qword_27EDC10A0, &unk_2440D8420, sub_243F8D7B8);
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC10D0);
  }

  return result;
}

unint64_t sub_243F8D7B8()
{
  result = qword_27EDC10E0;
  if (!qword_27EDC10E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1098);
    sub_243F5DD50(&qword_27EDC10E8, &qword_27EDC1090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC10E0);
  }

  return result;
}

uint64_t sub_243F8D870(uint64_t a1)
{
  v2 = sub_2440D18B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243F8D8CC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1128);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1130);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1138);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v26 - v15;
  *v8 = sub_2440D1C20();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1140);
  sub_243F8DB60(a1, a2, &v8[*(v17 + 44)]);
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v8, v12, &qword_27EDC1128);
  v18 = &v12[*(v10 + 44)];
  v19 = v26[5];
  *(v18 + 4) = v26[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v26[6];
  v20 = v26[1];
  *v18 = v26[0];
  *(v18 + 1) = v20;
  v21 = v26[3];
  *(v18 + 2) = v26[2];
  *(v18 + 3) = v21;
  LOBYTE(v8) = sub_2440D20B0();
  sub_243F681C8(v12, v16, &qword_27EDC1130);
  v22 = &v16[*(v14 + 44)];
  *v22 = v8;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = sub_2440D26A0();
  LOBYTE(v10) = sub_2440D20B0();
  sub_243F681C8(v16, a3, &qword_27EDC1138);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1148);
  v25 = a3 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = v10;
  return result;
}

uint64_t sub_243F8DB60@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1150);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  LOBYTE(v34) = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v27 = v29;
  v26 = 0x80000002440E9E00;
  *&v29 = 0x3FF0000000000000;
  sub_2440D2810();
  v12 = v34;
  v13 = v35;
  *&v29 = 0;
  sub_2440D2810();
  v14 = v34;
  v25 = v35;
  LOBYTE(v29) = a1;
  *(&v29 + 1) = a2;
  sub_2440D2840();
  sub_2440D2910();
  v15 = *(v7 + 16);
  v16 = v28;
  v15(v28, v11, v6);
  *&v29 = &unk_285774670;
  v17 = v27;
  BYTE8(v29) = v27;
  *&v30 = 0xD000000000000017;
  *(&v30 + 1) = 0x80000002440E9E00;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = v12;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  v18 = v25;
  v33 = v25;
  v19 = v32;
  *(a3 + 32) = v31;
  *(a3 + 48) = v19;
  v20 = v30;
  *a3 = v29;
  *(a3 + 16) = v20;
  *(a3 + 64) = v18;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1158);
  v15((a3 + *(v21 + 64)), v16, v6);
  sub_243F8CFC0(&v29, &v34);
  v22 = *(v7 + 8);
  v22(v11, v6);
  v22(v16, v6);
  v34 = &unk_285774670;
  LOBYTE(v35) = v17;
  v36 = 0xD000000000000017;
  v37 = v26;
  v38 = 0;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v18;
  return sub_243F8E208(&v34);
}

uint64_t sub_243F8DE80@<X0>(uint64_t a1@<X8>)
{
  sub_2440D1B70();
  result = sub_2440D2300();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_243F8DF08()
{
  result = qword_27EDC1100;
  if (!qword_27EDC1100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC10F8);
    sub_243F8DFC0();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1100);
  }

  return result;
}

unint64_t sub_243F8DFC0()
{
  result = qword_27EDC1108;
  if (!qword_27EDC1108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1110);
    sub_243F8E078();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1108);
  }

  return result;
}

unint64_t sub_243F8E078()
{
  result = qword_27EDC1118;
  if (!qword_27EDC1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1120);
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1118);
  }

  return result;
}

uint64_t sub_243F8E130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_243F8E18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_243F8E23C()
{
  result = qword_27EDC1160;
  if (!qword_27EDC1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1148);
    sub_243F8E320(&qword_27EDC1168, &qword_27EDC1138, &unk_2440D8598, sub_243F8E3A4);
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1160);
  }

  return result;
}

uint64_t sub_243F8E320(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_243F8E3A4()
{
  result = qword_27EDC1170;
  if (!qword_27EDC1170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1130);
    sub_243F5DD50(&qword_27EDC1178, &qword_27EDC1128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1170);
  }

  return result;
}

uint64_t sub_243F8E4B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_243F8E51C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_243F8E5BC;
}

void sub_243F8E5BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_243F8E644()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243F8E6B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_243F8E76C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2440D1350();
}

void (*sub_243F8E7D8(uint64_t *a1))(void *a1)
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
  return sub_243F511F8;
}

uint64_t sub_243F8E87C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC1190);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_243F8E8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC1190);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_243F8EA28(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF50);
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

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor__interruption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC1190);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F515A0;
}

id sub_243F8EB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC1190);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = objc_allocWithZone(v2);
  v9 = &v8[OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_delegate];
  *&v8[OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_callObserver] = 0;
  *&v8[OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_hardwareButtonConsumer] = 0;
  v10 = OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor__interruption;
  v15 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC3A90);
  sub_2440D1300();
  (*(v5 + 32))(&v8[v10], v7, v4);
  swift_beginAccess();
  *(v9 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v8;
  v14.super_class = v2;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t type metadata accessor for InterruptionMonitor()
{
  result = qword_27EDC8560;
  if (!qword_27EDC8560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_243F8ED88()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x100))(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterruptionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243F8EF60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DEE8();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000010, 0x80000002440E9290, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  sub_243F8F490();
  return sub_243F8F2C4();
}

void sub_243F8F0C8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_243F4DEE8();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5FAB0(v6);
  }

  else
  {
    v19 = 0x6C6C61437065656BLL;
    v20 = 0xEA0000000000203ALL;
    if (a1)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x245D57000](v10, v11);

    v12 = v19;
    v13 = v20;
    v14 = sub_243F4E2F4();
    sub_243F4E308(v14 & 1, v2, 0xD000000000000018, 0x80000002440E9E20, v12, v13);

    (*(v9 + 8))(v6, v8);
  }

  v15 = OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_hardwareButtonConsumer;
  v16 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_hardwareButtonConsumer);
  if (v16)
  {
    [v16 invalidate];
    v17 = *(v2 + v15);
  }

  else
  {
    v17 = 0;
  }

  *(v2 + v15) = 0;

  if ((a1 & 1) == 0)
  {
    v18 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_callObserver);
    *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_callObserver) = 0;
  }
}

uint64_t sub_243F8F2C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CBAF70]) init];
  v5 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_callObserver);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_callObserver) = v4;
  v6 = v4;

  if (v6)
  {
    [v6 setDelegate:v0 queue:0];
  }

  v7 = sub_243F4DEE8();
  sub_243F4DE64(v7, v3);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    return sub_243F5FAB0(v3);
  }

  v11 = sub_2440D11C0();
  v12 = sub_2440D3490();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_243F48000, v11, v12, "Beginning observation of call state", v13, 2u);
    MEMORY[0x245D58570](v13, -1, -1);
  }

  return (*(v9 + 8))(v3, v8);
}

uint64_t sub_243F8F490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = [objc_opt_self() sharedInstance];
  v5 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_hardwareButtonConsumer);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19InterruptionMonitor_hardwareButtonConsumer) = v4;
  v6 = v4;

  if (v6)
  {
    v7 = [v6 beginConsumingPressesForButtonKind:2 eventConsumer:v0 priority:0];

    swift_unknownObjectRelease();
  }

  v8 = sub_243F4DEE8();
  sub_243F4DE64(v8, v3);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    return sub_243F5FAB0(v3);
  }

  v12 = sub_2440D11C0();
  v13 = sub_2440D3490();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_243F48000, v12, v13, "Beginning observation of double lock button press", v14, 2u);
    MEMORY[0x245D58570](v14, -1, -1);
  }

  return (*(v10 + 8))(v3, v9);
}

uint64_t sub_243F8F72C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v50 = sub_243F4DEE8();
  sub_243F4DE64(v50, v19);
  v20 = sub_2440D11E0();
  v21 = *(v20 - 8);
  v51 = *(v21 + 48);
  if (v51(v19, 1, v20) == 1)
  {
    sub_243F5FAB0(v19);
  }

  else
  {
    v47 = v8;
    v48 = v11;
    v22 = sub_243F4E2F4();
    v46 = a1;
    v23 = v22;
    v24 = sub_243F4E2FC();
    v11 = v48;
    v8 = v47;
    sub_243F4E308(v23 & 1, v49, 0xD00000000000001CLL, 0x80000002440E9F10, v24, v25);

    a1 = v46;
    (*(v21 + 8))(v19, v20);
  }

  if (([a1 isOutgoing] & 1) != 0 || objc_msgSend(a1, sel_isOnHold))
  {
    sub_243F4DE64(v50, v17);
    if (v51(v17, 1, v20) == 1)
    {
      return sub_243F5FAB0(v17);
    }

    else
    {
      v27 = sub_2440D11C0();
      v28 = sub_2440D3490();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_243F48000, v27, v28, "ignore outgoing and onHold", v29, 2u);
        MEMORY[0x245D58570](v29, -1, -1);
      }

      return (*(v21 + 8))(v17, v20);
    }
  }

  else
  {
    v30 = [a1 hasConnected];
    v31 = a1;
    v32 = v30;
    v33 = [v31 hasEnded];
    if (v32)
    {
      if (v33)
      {
        sub_243F4DE64(v50, v8);
        if (v51(v8, 1, v20) == 1)
        {
          sub_243F5FAB0(v8);
        }

        else
        {
          v34 = sub_2440D11C0();
          v35 = sub_2440D3490();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_243F48000, v34, v35, "Call ended", v36, 2u);
            MEMORY[0x245D58570](v36, -1, -1);
          }

          (*(v21 + 8))(v8, v20);
        }

        return (*((*MEMORY[0x277D85000] & *v49) + 0xC0))(3);
      }

      else
      {
        sub_243F4DE64(v50, v5);
        if (v51(v5, 1, v20) == 1)
        {
          sub_243F5FAB0(v5);
        }

        else
        {
          v40 = sub_2440D11C0();
          v41 = sub_2440D3490();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_243F48000, v40, v41, "Call going to live voicemail", v42, 2u);
            MEMORY[0x245D58570](v42, -1, -1);
          }

          (*(v21 + 8))(v5, v20);
        }

        return (*((*MEMORY[0x277D85000] & *v49) + 0xC0))(2);
      }
    }

    else if (v33)
    {
      sub_243F4DE64(v50, v14);
      if (v51(v14, 1, v20) == 1)
      {
        sub_243F5FAB0(v14);
      }

      else
      {
        v37 = sub_2440D11C0();
        v38 = sub_2440D3490();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_243F48000, v37, v38, "Incoming call ended", v39, 2u);
          MEMORY[0x245D58570](v39, -1, -1);
        }

        (*(v21 + 8))(v14, v20);
      }

      return (*((*MEMORY[0x277D85000] & *v49) + 0xC0))(1);
    }

    else
    {
      sub_243F4DE64(v50, v11);
      if (v51(v11, 1, v20) == 1)
      {
        sub_243F5FAB0(v11);
      }

      else
      {
        v43 = sub_2440D11C0();
        v44 = sub_2440D3490();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_243F48000, v43, v44, "Incoming call", v45, 2u);
          MEMORY[0x245D58570](v45, -1, -1);
        }

        (*(v21 + 8))(v11, v20);
      }

      return (*((*MEMORY[0x277D85000] & *v49) + 0xC0))(0);
    }
  }
}

uint64_t sub_243F8FEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  if (a1 == 2)
  {
    v6 = sub_243F4DEE8();
    sub_243F4DE64(v6, v5);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      return sub_243F5FAB0(v5);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3460();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "Ignoring lock button double press", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      return (*(v8 + 8))(v5, v7);
    }
  }

  return result;
}

void sub_243F9002C()
{
  sub_243F900D4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243F900D4()
{
  if (!qword_27EDC11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC3A90);
    v0 = sub_2440D1360();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC11B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for InterruptionEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterruptionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for SubscribingDescription()
{
  result = qword_27EDC8600;
  if (!qword_27EDC8600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243F902D4@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1280);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v104 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v103 = &v90 - v4;
  v5 = type metadata accessor for SubscribingDescription();
  v99 = *(v5 - 8);
  v98 = *(v99 + 64);
  MEMORY[0x28223BE20](v5);
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1288);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v91 = &v90 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1290);
  MEMORY[0x28223BE20](v95);
  v93 = &v90 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1298);
  v9 = MEMORY[0x28223BE20](v101);
  v102 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v90 - v12;
  MEMORY[0x28223BE20](v11);
  v106 = &v90 - v13;
  sub_24401FBC0();
  v14 = sub_24401FBD4();
  v16 = v15;
  v18 = v17;
  sub_2440D21B0();
  v19 = sub_2440D22A0();
  v21 = v20;
  v23 = v22;
  sub_243F62C68(v14, v16, v18 & 1);

  sub_2440D21D0();
  v24 = sub_2440D22E0();
  v26 = v25;
  v28 = v27;
  v90 = v29;

  sub_243F62C68(v19, v21, v23 & 1);

  sub_2440D2B10();
  sub_2440D18E0();
  v130 = v28 & 1;
  v30 = *sub_243FFAE40();
  KeyPath = swift_getKeyPath();

  LOBYTE(v21) = sub_2440D20C0();
  sub_2440D13D0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v131 = 0;
  v40 = sub_2440D20D0();
  sub_2440707C0();
  sub_2440D13D0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v132 = 0;
  v49 = swift_getKeyPath();
  v128[0] = v24;
  v128[1] = v26;
  LOBYTE(v128[2]) = v28 & 1;
  *&v128[12] = *&v128[43];
  *&v128[14] = *&v128[45];
  *&v128[16] = *&v128[47];
  *&v128[4] = *&v128[35];
  *&v128[6] = *&v128[37];
  *&v128[8] = *&v128[39];
  *&v128[10] = *&v128[41];
  v128[3] = v90;
  v128[18] = KeyPath;
  v128[19] = v30;
  LOBYTE(v128[20]) = v21;
  v128[21] = v33;
  v128[22] = v35;
  v128[23] = v37;
  v128[24] = v39;
  LOBYTE(v128[25]) = 0;
  LOBYTE(v128[26]) = v40;
  v128[27] = v42;
  v128[28] = v44;
  v128[29] = v46;
  v128[30] = v48;
  LOBYTE(v128[31]) = 0;
  v128[32] = v49;
  LOBYTE(v128[33]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  v50 = v92;
  sub_2440D1E60();
  v107 = v129[0];
  LOBYTE(v108) = v129[1];
  LOBYTE(v119) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC12A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
  sub_243F9179C(&qword_27EDC12A8, &qword_27EDC12A0, &unk_2440D87C0, sub_243F91270);
  sub_243F619D0();
  v51 = v91;
  sub_2440D24A0();

  memcpy(v129, v128, 0x109uLL);
  sub_243F5EED4(v129, &qword_27EDC12A0);
  v52 = v96;
  sub_243F91490(v50, v96);
  v53 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v54 = swift_allocObject();
  sub_243F914F8(v52, v54 + v53);
  v55 = v93;
  (*(v97 + 32))(v93, v51, v100);
  v56 = (v55 + *(v95 + 36));
  *v56 = sub_243F9155C;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  sub_24401FBC0();
  v57 = sub_24401FBD4();
  v59 = v58;
  LOBYTE(v51) = v60;
  sub_243F915BC();
  v61 = v94;
  sub_2440D2430();
  sub_243F62C68(v57, v59, v51 & 1);

  sub_243F5EED4(v55, &qword_27EDC1290);
  sub_2440D1800();
  sub_243F5EED4(v61, &qword_27EDC1298);
  sub_24401FBC0();
  v62 = sub_24401FBD4();
  v64 = v63;
  LOBYTE(v59) = v65;
  sub_2440D21D0();
  v66 = sub_2440D22E0();
  v68 = v67;
  LOBYTE(v61) = v69;

  sub_243F62C68(v62, v64, v59 & 1);

  sub_243FFAEE0();

  v70 = sub_2440D22C0();
  v72 = v71;
  v74 = v73;
  v76 = v75;

  sub_243F62C68(v66, v68, v61 & 1);

  sub_2440D2B10();
  sub_2440D18E0();
  LOBYTE(v66) = v74 & 1;
  v126 = v74 & 1;
  v77 = swift_getKeyPath();
  v78 = sub_2440D20D0();
  sub_2440D13D0();
  v127 = 0;
  *&v107 = v70;
  *(&v107 + 1) = v72;
  LOBYTE(v108) = v66;
  *(&v108 + 1) = v76;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v109 = v119;
  v110 = v120;
  v112 = v122;
  v111 = v121;
  *&v116 = v77;
  BYTE8(v116) = 0;
  LOBYTE(v117) = v78;
  *(&v117 + 1) = v79;
  *&v118[0] = v80;
  *(&v118[0] + 1) = v81;
  *&v118[1] = v82;
  BYTE8(v118[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC12E8);
  sub_243F916E4();
  v83 = v103;
  sub_2440D24E0();
  *&v128[20] = v117;
  *&v128[22] = v118[0];
  *(&v128[23] + 1) = *(v118 + 9);
  *&v128[12] = v113;
  *&v128[14] = v114;
  *&v128[16] = v115;
  *&v128[18] = v116;
  *&v128[4] = v109;
  *&v128[6] = v110;
  *&v128[8] = v111;
  *&v128[10] = v112;
  *v128 = v107;
  *&v128[2] = v108;
  sub_243F5EED4(v128, &qword_27EDC12E8);
  v84 = v106;
  v85 = v102;
  sub_243F9184C(v106, v102);
  v86 = v104;
  sub_243F5F574(v83, v104, &qword_27EDC1280);
  v87 = v105;
  sub_243F9184C(v85, v105);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1308);
  sub_243F5F574(v86, v87 + *(v88 + 48), &qword_27EDC1280);
  sub_243F5EED4(v83, &qword_27EDC1280);
  sub_243F5EED4(v84, &qword_27EDC1298);
  sub_243F5EED4(v86, &qword_27EDC1280);
  return sub_243F5EED4(v85, &qword_27EDC1298);
}

uint64_t sub_243F90DF0(uint64_t a1)
{
  v26 = a1;
  v27 = sub_2440D2C80();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscribingDescription();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_243F5DB84();
  v24 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_243F91490(v26, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_243F914F8(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_243F91C88;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v20 = v27;
  sub_2440D3710();
  v21 = v24;
  MEMORY[0x245D57400](v15, v5, v2, v19);
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v25);
}

uint64_t sub_243F9121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v6 = a5 + *(type metadata accessor for SubscribingDescription() + 20);

  return sub_243F620B0(a4, v6);
}

uint64_t sub_243F912D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_243F91354()
{
  result = qword_27EDC12D0;
  if (!qword_27EDC12D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC12D8);
    sub_243F9140C();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC12D0);
  }

  return result;
}

unint64_t sub_243F9140C()
{
  result = qword_27EDC0DC8;
  if (!qword_27EDC0DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0DC8);
  }

  return result;
}

uint64_t sub_243F91490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribingDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F914F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribingDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F9155C()
{
  v1 = *(type metadata accessor for SubscribingDescription() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_243F90DF0(v2);
}

unint64_t sub_243F915BC()
{
  result = qword_27EDC12E0;
  if (!qword_27EDC12E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC12A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    sub_243F9179C(&qword_27EDC12A8, &qword_27EDC12A0, &unk_2440D87C0, sub_243F91270);
    sub_243F619D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC12E0);
  }

  return result;
}

unint64_t sub_243F916E4()
{
  result = qword_27EDC12F0;
  if (!qword_27EDC12F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC12E8);
    sub_243F9179C(&qword_27EDC12F8, &qword_27EDC1300, &unk_2440D87F8, sub_243F9140C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC12F0);
  }

  return result;
}

uint64_t sub_243F9179C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F9184C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F918EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243F919BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243F91A6C()
{
  sub_243F624A0();
  if (v0 <= 0x3F)
  {
    sub_243F624F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for SubscribingDescription() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  return swift_deallocObject();
}

uint64_t sub_243F91C88()
{
  type metadata accessor for SubscribingDescription();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  return sub_2440D2950();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243F91D78()
{
  result = qword_27EDC0510;
  if (!qword_27EDC0510)
  {
    sub_2440D2C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0510);
  }

  return result;
}

void sub_243F91E30(void *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 16);
  aBlock = *v1;
  v25 = v4;
  LOBYTE(v26) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](&v30, v7);
  v8 = v30;
  type metadata accessor for UIKitAnimator();
  if (v8 == 1)
  {
    v9 = sub_2440C1B24(1);
    v30 = v5;
    v10 = swift_allocObject();
    v11 = *(v1 + 1);
    *(v10 + 24) = *v1;
    *(v10 + 16) = a1;
    *(v10 + 40) = v11;
    *(v10 + 56) = v1[4];
    v28 = sub_243F922EC;
    v29 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_243F5F604;
    v27 = &block_descriptor_12;
    v12 = _Block_copy(&aBlock);
    v13 = a1;
    sub_243F91DD4(&v30, &v23);

    [v9 addAnimations_];
  }

  else
  {
    v14 = sub_2440C1B1C();
    v9 = sub_2440C1B24(v14);
    v15 = [a1 effect];
    v16 = v15;
    if (v15)
    {
    }

    v17 = v16 != 0;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v28 = sub_243F921A0;
    v29 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_243F5F604;
    v27 = &block_descriptor_8;
    v19 = _Block_copy(&aBlock);
    v20 = a1;

    [v9 addAnimations_];
    _Block_release(v19);
    v30 = v5;
    v21 = swift_allocObject();
    v22 = *(v2 + 1);
    *(v21 + 24) = *v2;
    *(v21 + 16) = v17;
    *(v21 + 40) = v22;
    *(v21 + 56) = v2[4];
    v28 = sub_243F92214;
    v29 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_243F92248;
    v27 = &block_descriptor_6;
    v12 = _Block_copy(&aBlock);
    sub_243F91DD4(&v30, &v23);

    [v9 addCompletion_];
  }

  _Block_release(v12);
  [v9 startAnimation];
}

uint64_t sub_243F92168()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F921CC()
{

  return swift_deallocObject();
}

uint64_t sub_243F92214()
{
  if (*(v0 + 16) == 1)
  {
    return (*(v0 + 48))();
  }

  return result;
}

uint64_t sub_243F92248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_243F9229C()
{

  return swift_deallocObject();
}

void sub_243F922EC()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D75DF0]) init];
  v3 = [objc_opt_self() blackColor];
  [v2 setColorTint_];

  [v2 setColorTintAlpha_];
  [v2 setSaturationDeltaFactor_];
  [v2 setBlurRadius_];
  type metadata accessor for CBlurEffect();
  v4 = sub_24406D970(v2);
  [v1 setEffect_];
}

id sub_243F923FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D68]);

  return [v0 initWithEffect_];
}

uint64_t sub_243F92440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F928B8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243F924A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F928B8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243F92508()
{
  sub_243F928B8();
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_243F92530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_2440D5CF0;
  *(v0 + 56) = v1;
  *(v0 + 32) = 0x6D73696420646964;
  *(v0 + 40) = 0xEB00000000737369;
  sub_2440D3B00();
}

unint64_t sub_243F925D4()
{
  result = qword_27EDC1320;
  if (!qword_27EDC1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1320);
  }

  return result;
}

unint64_t sub_243F9262C()
{
  result = qword_27EDC1328;
  if (!qword_27EDC1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1328);
  }

  return result;
}

uint64_t sub_243F9269C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2440D2970();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = sub_243F92530;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_243F92704(uint64_t a1)
{
  v2 = sub_243F92864();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243F92750(uint64_t a1)
{
  v2 = sub_243F92864();

  return MEMORY[0x28212D8E0](a1, v2);
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

uint64_t sub_243F927B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_243F927F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_243F92864()
{
  result = qword_27EDC1330;
  if (!qword_27EDC1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1330);
  }

  return result;
}

unint64_t sub_243F928B8()
{
  result = qword_27EDC1338;
  if (!qword_27EDC1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1338);
  }

  return result;
}

uint64_t sub_243F9291C()
{
  result = sub_2440D2BB0();
  qword_27EDC6438 = result;
  return result;
}

uint64_t sub_243F92940()
{
  sub_2440D2BB0();
  v0 = sub_2440D2B60();

  qword_27EDC6440 = v0;
  return result;
}

uint64_t sub_243F92988(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243F929C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243F92A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1350);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1358);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - v7;
  v8 = *v1;
  v9 = sub_244070800();
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = swift_allocObject();
  v11 = *(v1 + 112);
  *(v10 + 112) = *(v1 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(v1 + 128);
  *(v10 + 160) = *(v1 + 144);
  v12 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v12;
  v13 = *(v1 + 80);
  *(v10 + 80) = *(v1 + 64);
  *(v10 + 96) = v13;
  v14 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v14;
  *(v10 + 168) = v8;
  sub_243F9314C(v1, &v55);
  sub_2440D2B00();
  sub_2440D18E0();
  v15 = sub_2440CBE68();
  swift_beginAccess();
  v16 = *v15;
  v58 = *(v2 + 112);
  v59 = *(v2 + 128);
  v55 = *(v2 + 112);
  LOBYTE(v56) = *(v2 + 128);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](v53);
  *&v45 = sub_243F93140;
  *(&v45 + 1) = v10;
  v50 = *&v52[15];
  v51 = *&v52[17];
  *v52 = *&v52[19];
  v46 = *&v52[7];
  v47 = *&v52[9];
  v49 = *&v52[13];
  v48 = *&v52[11];
  v52[2] = v16;
  LOBYTE(v52[3]) = v53[0];
  v44 = *(v2 + 9);
  v17 = swift_allocObject();
  v18 = *(v2 + 112);
  *(v17 + 112) = *(v2 + 96);
  *(v17 + 128) = v18;
  *(v17 + 144) = *(v2 + 128);
  *(v17 + 160) = *(v2 + 144);
  v19 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v19;
  v20 = *(v2 + 80);
  *(v17 + 80) = *(v2 + 64);
  *(v17 + 96) = v20;
  v21 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v21;
  sub_243F9314C(v2, &v55);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1360);
  v23 = sub_243F93B74();
  sub_2440D25E0();

  v53[6] = v51;
  v54[0] = *v52;
  *(v54 + 9) = *(&v52[1] + 1);
  v53[2] = v47;
  v53[3] = v48;
  v53[4] = v49;
  v53[5] = v50;
  v53[0] = v45;
  v53[1] = v46;
  sub_243F5EED4(v53, &qword_27EDC1360);
  v55 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v24 = swift_allocObject();
  v25 = *(v2 + 112);
  *(v24 + 112) = *(v2 + 96);
  *(v24 + 128) = v25;
  *(v24 + 144) = *(v2 + 128);
  *(v24 + 160) = *(v2 + 144);
  v26 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v26;
  v27 = *(v2 + 80);
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = v27;
  v28 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v28;
  sub_243F9314C(v2, &v55);
  *&v55 = v22;
  *(&v55 + 1) = MEMORY[0x277D839B0];
  v56 = v23;
  v57 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  v31 = v40;
  sub_2440CC638(&v45, sub_243F93CE4, v24, v40, MEMORY[0x277D839F8], OpaqueTypeConformance2, v39);

  (*(v41 + 8))(v6, v31);
  v55 = v58;
  LOBYTE(v56) = v59;
  MEMORY[0x245D56840](&v45, v38);
  v32 = swift_allocObject();
  v33 = *(v2 + 112);
  *(v32 + 112) = *(v2 + 96);
  *(v32 + 128) = v33;
  *(v32 + 144) = *(v2 + 128);
  *(v32 + 160) = *(v2 + 144);
  v34 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v34;
  v35 = *(v2 + 80);
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = v35;
  v36 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v36;
  sub_243F9314C(v2, &v55);
  sub_243F93EB8();
  sub_2440D25D0();

  return sub_243F5EED4(v30, &qword_27EDC1358);
}

__n128 sub_243F92FC4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1618);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_2440D1C20();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1620);
  sub_243F93184(a2, a1, &v8[*(v9 + 44)]);
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v8, a3, &qword_27EDC1618);
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1628) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_243F93184@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v60 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1630);
  MEMORY[0x28223BE20](v58);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1638);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v53 - v9;
  v10 = a1[4];
  v67 = a1[3];
  v68 = v10;
  v12 = a1[3];
  v11 = a1[4];
  v69[0] = a1[5];
  *(v69 + 9) = *(a1 + 89);
  v70[0] = v12;
  v70[1] = v11;
  v70[2] = a1[5];
  *(&v70[2] + 9) = *(a1 + 89);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1340);
  sub_2440D2960();
  v66[0] = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2840();
  v55 = *(&v70[0] + 1);
  v56 = *&v70[0];
  v13 = *&v70[1];
  v66[0] = a1[2];
  sub_2440D2840();
  v54 = *(&v70[0] + 1);
  v14 = *&v70[0];
  v15 = *&v70[1];
  type metadata accessor for FineRotationManager(0);
  sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v16 = sub_2440D1930();
  v18 = v17;
  v19 = sub_244070800();
  LOBYTE(v66[0]) = 4;
  sub_2440D2810();
  v20 = v70[0];
  v21 = *(&v70[0] + 1);
  LOBYTE(v66[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1398);
  sub_2440D2810();
  *(&v70[3] + 8) = v70[20];
  v22 = v70[0];
  v23 = *(&v70[0] + 1);
  *(&v70[4] + 8) = v70[21];
  *(&v70[5] + 8) = *v71;
  *(&v70[6] + 1) = *&v71[9];
  *v70 = v19;
  *(&v70[0] + 1) = v16;
  *&v70[1] = v18;
  BYTE8(v70[1]) = v20;
  *(&v70[1] + 9) = *v74;
  HIDWORD(v70[1]) = *&v74[3];
  *&v70[2] = v21;
  BYTE8(v70[2]) = v22;
  HIDWORD(v70[2]) = *&v73[3];
  *(&v70[2] + 9) = *v73;
  *&v70[3] = v23;
  *(&v70[7] + 1) = *v72;
  DWORD1(v70[7]) = *&v72[3];
  *(&v70[7] + 1) = v56;
  *&v70[8] = v55;
  *(&v70[8] + 1) = v13;
  *&v70[9] = v14;
  v24 = v61;
  *(&v70[9] + 1) = v54;
  *&v70[10] = v15;
  sub_243F996FC();
  sub_2440D2480();
  v75[8] = v70[8];
  v75[9] = v70[9];
  v76 = *&v70[10];
  v75[4] = v70[4];
  v75[5] = v70[5];
  v75[6] = v70[6];
  v75[7] = v70[7];
  v75[0] = v70[0];
  v75[1] = v70[1];
  v75[2] = v70[2];
  v75[3] = v70[3];
  sub_243F99750(v75);
  sub_2440D2B00();
  sub_2440D1560();
  v25 = &v5[*(v58 + 36)];
  v26 = v66[21];
  *v25 = v66[20];
  *(v25 + 1) = v26;
  *(v25 + 2) = v66[22];
  sub_243F99780();
  sub_2440D24E0();
  sub_243F5EED4(v5, &qword_27EDC1630);
  v70[0] = v67;
  v70[1] = v68;
  v70[2] = v69[0];
  *(&v70[2] + 9) = *(v69 + 9);
  MEMORY[0x245D56840](v66, v57);
  v27 = v66[0];
  sub_243F929C8(*&v66[1]);
  if (!*(&v27 + 1))
  {
    goto LABEL_7;
  }

  v70[0] = *(a1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if (LOBYTE(v66[0]) != 1)
  {

LABEL_7:
    sub_243F99838(v70);
    goto LABEL_8;
  }

  sub_2440D1650();
  v58 = sub_2440D1C20();
  v63 = 1;
  v66[0] = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2840();
  v57 = *(&v70[0] + 1);
  v28 = *&v70[0];
  v29 = *&v70[1];
  v66[0] = a1[2];
  sub_2440D2840();
  v30 = v70[0];
  v31 = *&v70[1];
  sub_2440D2B00();
  sub_2440D18E0();
  v32 = sub_2440D20C0();
  sub_2440D13D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v65[0]) = 0;
  v41 = sub_2440D20D0();
  sub_244070874();
  sub_2440D13D0();
  v64[4] = v66[0];
  v64[5] = v66[1];
  v64[10] = v66[6];
  v64[8] = v66[4];
  v64[9] = v66[5];
  v64[6] = v66[2];
  v64[7] = v66[3];
  *&v64[2] = v29;
  *&v65[2] = v29;
  *(&v64[3] + 1) = v31;
  *(&v65[3] + 1) = v31;
  LOBYTE(v70[0]) = 0;
  v64[0] = v27;
  *&v64[1] = v28;
  *(&v64[1] + 1) = v57;
  *(&v64[2] + 8) = v30;
  LOBYTE(v64[11]) = v32;
  *(&v64[11] + 1) = v34;
  *&v64[12] = v36;
  *(&v64[12] + 1) = v38;
  *&v64[13] = v40;
  BYTE8(v64[13]) = 0;
  LOBYTE(v64[14]) = v41;
  *(&v64[14] + 1) = v42;
  *&v64[15] = v43;
  *(&v64[15] + 1) = v44;
  *&v64[16] = v45;
  BYTE8(v64[16]) = 0;
  v65[0] = v27;
  *&v65[1] = v28;
  *(&v65[1] + 1) = v57;
  *(&v65[2] + 8) = v30;
  v65[4] = v66[0];
  v65[5] = v66[1];
  v65[9] = v66[5];
  v65[10] = v66[6];
  v65[7] = v66[3];
  v65[8] = v66[4];
  v65[6] = v66[2];
  LOBYTE(v65[11]) = v32;
  *(&v65[11] + 1) = v34;
  *&v65[12] = v36;
  *(&v65[12] + 1) = v38;
  *&v65[13] = v40;
  BYTE8(v65[13]) = 0;
  LOBYTE(v65[14]) = v41;
  *(&v65[14] + 1) = v42;
  *&v65[15] = v43;
  *(&v65[15] + 1) = v44;
  *&v65[16] = v45;
  BYTE8(v65[16]) = 0;
  sub_243F5F574(v64, v70, &qword_27EDC1670);
  sub_243F5EED4(v65, &qword_27EDC1670);

  v46 = memcpy(&v62[7], v64, 0x109uLL);
  v47 = v63;
  MEMORY[0x245D554C0](v46, 0.0, 35.0);
  sub_2440D15D0();
  sub_2440D15E0();

  if (qword_27EDC8818 != -1)
  {
    swift_once();
  }

  sub_2440D1600();

  sub_2440D15D0();
  sub_2440D1580();

  sub_2440D2B70();
  v48 = sub_2440D1600();

  v66[0] = v58;
  LOBYTE(v66[1]) = v47;
  memcpy(&v66[1] + 1, v62, 0x110uLL);
  *(&v66[18] + 1) = v48;
  *&v66[19] = 0xD000000000000013;
  *(&v66[19] + 1) = 0x80000002440D8EF0;
  nullsub_1(v66);
  memcpy(v70, v66, 0x140uLL);
  v24 = v61;
LABEL_8:
  v49 = v59;
  sub_243F5F574(v24, v59, &qword_27EDC1638);
  memcpy(v64, v70, sizeof(v64));
  v50 = v60;
  sub_243F5F574(v49, v60, &qword_27EDC1638);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1660) + 48);
  memcpy(v65, v64, sizeof(v65));
  memcpy((v50 + v51), v64, 0x140uLL);
  sub_243F5F574(v65, v66, &qword_27EDC1668);
  sub_243F5EED4(v24, &qword_27EDC1638);
  memcpy(v66, v64, 0x140uLL);
  sub_243F5EED4(v66, &qword_27EDC1668);
  return sub_243F5EED4(v49, &qword_27EDC1638);
}

uint64_t sub_243F93AFC()
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243F93B74()
{
  result = qword_27EDC1368;
  if (!qword_27EDC1368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1360);
    sub_243F93C2C();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1368);
  }

  return result;
}

unint64_t sub_243F93C2C()
{
  result = qword_27EDC1370;
  if (!qword_27EDC1370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1378);
    sub_243F5DD50(&qword_27EDC1380, &qword_27EDC1388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1370);
  }

  return result;
}

uint64_t sub_243F93CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_243F93E40()
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

unint64_t sub_243F93EB8()
{
  result = qword_27EDC1390;
  if (!qword_27EDC1390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1360);
    sub_243F93B74();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1390);
  }

  return result;
}

__n128 sub_243F93FC0@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  *a7 = a8;
  *(a7 + 8) = a1;
  *(a7 + 9) = a2;
  *(a7 + 16) = v18;
  *(a7 + 24) = v19;
  *(a7 + 32) = v18;
  *(a7 + 40) = v19;
  v16 = *(a3 + 16);
  *(a7 + 48) = *a3;
  *(a7 + 64) = v16;
  *(a7 + 80) = *(a3 + 32);
  result = *(a3 + 41);
  *(a7 + 89) = result;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 128) = a6;
  *(a7 + 136) = v18;
  *(a7 + 144) = v19;
  return result;
}

void sub_243F9413C(uint64_t a1@<X8>)
{
  v51 = a1;
  v44 = sub_2440D2200();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13A0);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v1[1];
  v47 = *v1;
  v7 = v47;
  v48 = &v41 - v9;
  v45 = v1;
  v46 = v8;
  v10 = sub_243F68750();
  *&v67 = sub_2440579C8(v10 & 1, v7);
  *(&v67 + 1) = v11;
  sub_243F4EF64();
  v12 = sub_2440D2310();
  v14 = v13;
  v16 = v15;
  sub_2440D21D0();
  v17 = v44;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], v44);
  sub_2440D2220();

  (*(v2 + 8))(v4, v17);
  v18 = sub_2440D22E0();
  v20 = v19;
  v22 = v21;

  sub_243F62C68(v12, v14, v16 & 1);

  sub_2440D21B0();
  v23 = sub_2440D22A0();
  v43 = v24;
  v44 = v23;
  LOBYTE(v8) = v25;
  v42 = v26;
  sub_243F62C68(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  LOBYTE(v2) = v8 & 1;
  LOBYTE(v67) = v8 & 1;
  v29 = sub_2440D26C0();
  v30 = swift_getKeyPath();
  v67 = *(v45 + 1);
  v31 = v45;
  v68 = v45[4];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53B0);
  MEMORY[0x245D56840](v52);
  v33 = v52[0] * 0.0174532925;
  sub_2440D2C40();
  v35 = v34;
  v37 = v36;
  v67 = *(v31 + 5);
  v68 = v31[7];
  MEMORY[0x245D56840](v52, v32);
  v38 = v52[0];
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  sub_2440D3830();

  *&v67 = 0xD000000000000014;
  *(&v67 + 1) = 0x80000002440EA020;
  MEMORY[0x245D57000](v47, v46);
  v39 = v67;
  v40 = sub_243F9A09C();
  sub_2440D2B00();
  sub_2440D18E0();
  *&v52[0] = v44;
  v52[1] = v43;
  v53 = v2;
  v54 = v42;
  v55 = KeyPath;
  v56 = 0x3FE3333333333333;
  v57 = v28;
  v58 = 1;
  v59 = v30;
  v60 = v29;
  v61 = v33;
  v62 = v35;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v66 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13A8);
  sub_243F97554();
  sub_24408F1C4();
}

uint64_t sub_243F94578()
{
  v5 = *(v0 + 296);
  *(v0 + 528) = *(v0 + 280);
  *(v0 + 544) = v5;
  *(v0 + 560) = *(v0 + 312);
  *(v0 + 576) = *(v0 + 328);
  v6 = *(v0 + 232);
  *(v0 + 464) = *(v0 + 216);
  *(v0 + 480) = v6;
  v7 = *(v0 + 264);
  *(v0 + 496) = *(v0 + 248);
  *(v0 + 512) = v7;
  v8 = *(v0 + 168);
  *(v0 + 400) = *(v0 + 152);
  *(v0 + 416) = v8;
  v9 = *(v0 + 200);
  *(v0 + 432) = *(v0 + 184);
  *(v0 + 448) = v9;
  v10 = *(v0 + 104);
  *(v0 + 336) = *(v0 + 88);
  *(v0 + 352) = v10;
  v11 = *(v0 + 136);
  *(v0 + 368) = *(v0 + 120);
  *(v0 + 384) = v11;
  sub_243F5EED4(v0 + 336, v1);
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  swift_getOpaqueTypeConformance2();
  v12 = *(v0 + 64);
  sub_2440D24E0();
  return (*(*(v0 + 72) + 8))(v2, v12);
}

uint64_t sub_243F946A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v53 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13F8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1400);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1408);
  MEMORY[0x28223BE20](v54);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1410);
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v55 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1418);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  *v5 = sub_2440D2AF0();
  v5[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1420);
  sub_243F94C74(v2, v5 + *(v23 + 44));
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v5, v9, &qword_27EDC13F0);
  v24 = &v9[*(v7 + 44)];
  v25 = v69;
  *(v24 + 4) = v68;
  *(v24 + 5) = v25;
  *(v24 + 6) = v70;
  v26 = v65;
  *v24 = v64;
  *(v24 + 1) = v26;
  v27 = v67;
  *(v24 + 2) = v66;
  *(v24 + 3) = v27;
  v59 = *(v2 + 120);
  *&v60 = *(v2 + 136);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC53B0);
  MEMORY[0x245D56840](v62);
  v29 = v62[0] * 0.0174532925;
  sub_2440D2C40();
  v31 = v30;
  v33 = v32;
  sub_243F681C8(v9, v13, &qword_27EDC13F8);
  v34 = &v13[*(v11 + 44)];
  *v34 = v29;
  *(v34 + 1) = v31;
  *(v34 + 2) = v33;
  v59 = *(v2 + 144);
  *&v60 = *(v2 + 160);
  MEMORY[0x245D56840](v62, v28);
  v35 = v62[0];
  sub_243F681C8(v13, v15, &qword_27EDC1400);
  *&v15[*(v54 + 36)] = v35;
  v36 = *(v2 + 72);
  v59 = *(v2 + 56);
  v60 = v36;
  v61[0] = *(v2 + 88);
  *(v61 + 9) = *(v2 + 97);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1340);
  MEMORY[0x245D56840](v62, v37);

  sub_243F929C8(*&v62[2]);
  LOBYTE(v62[0]) = v63;
  v38 = swift_allocObject();
  v39 = *(v2 + 144);
  *(v38 + 144) = *(v2 + 128);
  *(v38 + 160) = v39;
  *(v38 + 176) = *(v2 + 160);
  v40 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v40;
  v41 = *(v2 + 112);
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = v41;
  v42 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v42;
  v43 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v43;
  sub_243F976D4(v2, &v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1398);
  sub_243F9770C();
  sub_243F978DC();
  v44 = v55;
  sub_2440D25D0();

  sub_243F5EED4(v15, &qword_27EDC1408);
  v45 = swift_allocObject();
  v46 = *(v2 + 144);
  *(v45 + 144) = *(v2 + 128);
  *(v45 + 160) = v46;
  *(v45 + 176) = *(v2 + 160);
  v47 = *(v2 + 80);
  *(v45 + 80) = *(v2 + 64);
  *(v45 + 96) = v47;
  v48 = *(v2 + 112);
  *(v45 + 112) = *(v2 + 96);
  *(v45 + 128) = v48;
  v49 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v49;
  v50 = *(v2 + 48);
  *(v45 + 48) = *(v2 + 32);
  *(v45 + 64) = v50;
  (*(v56 + 32))(v21, v44, v57);
  v51 = &v21[*(v19 + 44)];
  *v51 = sub_243F979B4;
  v51[1] = v45;
  v51[2] = 0;
  v51[3] = 0;
  sub_243F97A60(v21, v58);
  return sub_243F976D4(v2, &v59);
}

uint64_t sub_243F94C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1510);
  MEMORY[0x28223BE20](v70);
  v4 = &v58 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1518);
  MEMORY[0x28223BE20](v67);
  v69 = &v58 - v5;
  v6 = sub_2440D2770();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1520);
  MEMORY[0x28223BE20](v68);
  v11 = &v58 - v10;
  v12 = *(a1 + 72);
  v80 = *(a1 + 56);
  v81 = v12;
  v82[0] = *(a1 + 88);
  *(v82 + 9) = *(a1 + 97);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1340);
  MEMORY[0x245D56840](&v73, v13);

  if (*&v74[0])
  {
    v14 = *(&v74[0] + 1);
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v66 = sub_2440D2790();
    (*(v7 + 8))(v9, v6);
    sub_2440D2B00();
    sub_2440D1560();
    LOBYTE(v80) = 1;
    *&v72[6] = v92;
    *&v72[22] = v93;
    *&v72[38] = v94;
    sub_2440D2160();
    sub_2440D2190();
    v65 = sub_2440D21F0();

    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    v17 = v14;

    sub_2440D15D0();
    sub_2440D2C40();
    sub_2440D15B0();
    sub_2440D15E0();

    if (qword_27EDC8810 != -1)
    {
      swift_once();
    }

    sub_2440D1600();

    sub_2440D15D0();
    v18 = sub_2440D1580();

    v19 = sub_2440D20B0();
    sub_2440D13D0();
    *(v74 + 2) = *v72;
    LOBYTE(v95) = 0;
    v73 = v66;
    LOWORD(v74[0]) = 1;
    *(&v74[1] + 2) = *&v72[16];
    *(&v74[2] + 2) = *&v72[32];
    *&v74[3] = *&v72[46];
    *(&v74[3] + 1) = KeyPath;
    *&v75 = v65;
    *(&v75 + 1) = v16;
    *&v76 = v17;
    *(&v76 + 1) = v18;
    *&v77 = 0x4008000000000000;
    BYTE8(v77) = v19;
    *&v78 = v20;
    *(&v78 + 1) = v21;
    *&v79[0] = v22;
    *(&v79[0] + 1) = v23;
    LOBYTE(v79[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC15B8);
    sub_243F990EC();
    sub_2440D24E0();
    v87 = v78;
    *v88 = v79[0];
    v83 = v74[3];
    v84 = v75;
    v88[16] = v79[1];
    v85 = v76;
    v86 = v77;
    v80 = v73;
    v81 = v74[0];
    v82[0] = v74[1];
    v82[1] = v74[2];
    sub_243F5EED4(&v80, &qword_27EDC15B8);
    sub_243F5F574(v11, v69, &qword_27EDC1520);
    swift_storeEnumTagMultiPayload();
    sub_243F99458(&qword_27EDC15A8, &qword_27EDC1520, &unk_2440D90F8, sub_243F990EC);
    sub_243F99458(&qword_27EDC1610, &qword_27EDC1510, &unk_2440D90E8, sub_243F98D24);
    v24 = v71;
    sub_2440D1D20();

    sub_243F5EED4(v11, &qword_27EDC1520);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1528);
    v26 = *(*(v25 - 8) + 56);
    v27 = v24;
  }

  else
  {
    v66 = v4;
    v80 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
    sub_2440D2820();
    v28 = v73;
    if (v73 == 2)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1528);
      return (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
    }

    v95 = *(a1 + 24);
    v80 = *(a1 + 24);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
    sub_2440D2820();
    LODWORD(v65) = sub_24405AEFC(v73, v28 & 1);
    sub_2440D2B00();
    sub_2440D1560();
    v32 = BYTE8(v92);
    v62 = v93;
    v63 = v92;
    v33 = BYTE8(v93);
    v60 = *(&v94 + 1);
    v61 = v94;
    v80 = v95;
    v64 = v31;
    sub_2440D2820();
    v90 = 1;
    sub_243F98BAC();
    sub_2440D31F0();
    sub_2440D31F0();
    if (v80 == v73)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = sub_2440D3A10();

      if (v35)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 1.5;
      }
    }

    v59 = (v65 >> 8) & 1;
    v91 = v32;
    v90 = v33;
    sub_2440D2C40();
    v37 = v36;
    v39 = v38;
    v40 = v91;
    v58 = v90;
    v80 = v95;
    sub_2440D2820();
    v89 = 1;
    sub_2440D31F0();
    sub_2440D31F0();
    if (v80 == v73)
    {

      v41 = 1.0;
    }

    else
    {
      v42 = sub_2440D3A10();

      if (v42)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = 0.0;
      }
    }

    v43 = swift_allocObject();
    v44 = *(a1 + 144);
    *(v43 + 144) = *(a1 + 128);
    *(v43 + 160) = v44;
    *(v43 + 176) = *(a1 + 160);
    v45 = *(a1 + 80);
    *(v43 + 80) = *(a1 + 64);
    *(v43 + 96) = v45;
    v46 = *(a1 + 112);
    *(v43 + 112) = *(a1 + 96);
    *(v43 + 128) = v46;
    v47 = *(a1 + 16);
    *(v43 + 16) = *a1;
    *(v43 + 32) = v47;
    v48 = *(a1 + 48);
    *(v43 + 48) = *(a1 + 32);
    *(v43 + 64) = v48;
    v49 = swift_allocObject();
    v50 = *(a1 + 144);
    *(v49 + 144) = *(a1 + 128);
    *(v49 + 160) = v50;
    *(v49 + 176) = *(a1 + 160);
    v51 = *(a1 + 80);
    *(v49 + 80) = *(a1 + 64);
    *(v49 + 96) = v51;
    v52 = *(a1 + 112);
    *(v49 + 112) = *(a1 + 96);
    *(v49 + 128) = v52;
    v53 = *(a1 + 16);
    *(v49 + 16) = *a1;
    *(v49 + 32) = v53;
    v54 = *(a1 + 48);
    *(v49 + 48) = *(a1 + 32);
    *(v49 + 64) = v54;
    sub_243F976D4(a1, &v80);
    sub_243F976D4(a1, &v80);
    v55 = sub_2440D2BC0();
    v80 = v95;
    sub_2440D2820();
    LOBYTE(v73) = v65;
    BYTE1(v73) = v59;
    *(&v73 + 1) = v63;
    LOBYTE(v74[0]) = v40;
    *(&v74[0] + 1) = v62;
    LOBYTE(v74[1]) = v58;
    *(&v74[1] + 1) = v61;
    *&v74[2] = v60;
    *(&v74[2] + 1) = v34;
    *&v74[3] = v34;
    *(&v74[3] + 1) = v37;
    *&v75 = v39;
    *(&v75 + 1) = v41;
    *&v76 = sub_243F98C90;
    *(&v76 + 1) = v43;
    v77 = 0u;
    v78 = 0u;
    *&v79[0] = sub_243F98C98;
    *(&v79[0] + 1) = v49;
    *&v79[1] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1530);
    sub_243F98D24();
    v56 = v66;
    sub_2440D24E0();
    v86 = v77;
    v87 = v78;
    *v88 = v79[0];
    *&v88[9] = *(v79 + 9);
    v83 = v74[3];
    v84 = v75;
    v85 = v76;
    v80 = v73;
    v81 = v74[0];
    v82[0] = v74[1];
    v82[1] = v74[2];
    sub_243F5EED4(&v80, &qword_27EDC1530);
    sub_243F5F574(v56, v69, &qword_27EDC1510);
    swift_storeEnumTagMultiPayload();
    sub_243F99458(&qword_27EDC15A8, &qword_27EDC1520, &unk_2440D90F8, sub_243F990EC);
    sub_243F99458(&qword_27EDC1610, &qword_27EDC1510, &unk_2440D90E8, sub_243F98D24);
    v57 = v71;
    sub_2440D1D20();
    sub_243F5EED4(v56, &qword_27EDC1510);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1528);
    v26 = *(*(v25 - 8) + 56);
    v27 = v57;
  }

  return v26(v27, 0, 1, v25);
}

uint64_t sub_243F957E0(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2440D2CA0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2CD0();
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v24 = *(v8 + 8);
  v24(v11, v7);
  v14 = swift_allocObject();
  v15 = *(a1 + 144);
  *(v14 + 144) = *(a1 + 128);
  *(v14 + 160) = v15;
  *(v14 + 176) = *(a1 + 160);
  v16 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v16;
  v17 = *(a1 + 112);
  *(v14 + 112) = *(a1 + 96);
  *(v14 + 128) = v17;
  v18 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v18;
  v19 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v19;
  aBlock[4] = sub_243F995A0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_83_0;
  v20 = _Block_copy(aBlock);
  sub_243F976D4(a1, v29);

  sub_2440D2C90();
  v29[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  v21 = v23;
  MEMORY[0x245D57400](v13, v6, v4, v20);
  _Block_release(v20);

  (*(v28 + 8))(v4, v2);
  (*(v26 + 8))(v6, v27);
  return (v24)(v13, v25);
}

uint64_t sub_243F95C1C(unsigned __int8 *a1, uint64_t a2)
{
  v55 = sub_2440D2C80();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2440D2CA0();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CD0();
  v49 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = *a1;
  v15 = sub_243F4DF28();
  sub_243F5F574(v15, v13, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_243F5EED4(v13, &qword_27EDC0A50);
    if (v14 != 2)
    {
LABEL_3:
      v56[0] = *(a2 + 40);
      LOBYTE(aBlock) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
      sub_2440D2830();
      sub_243F5DB84();
      v47 = sub_2440D3530();
      sub_2440D2CC0();
      v18 = v48;
      sub_2440D2D20();
      v49 = *(v49 + 8);
      (v49)(v9, v6);
      v19 = swift_allocObject();
      v20 = *(a2 + 144);
      *(v19 + 144) = *(a2 + 128);
      *(v19 + 160) = v20;
      *(v19 + 176) = *(a2 + 160);
      v21 = *(a2 + 80);
      *(v19 + 80) = *(a2 + 64);
      *(v19 + 96) = v21;
      v22 = *(a2 + 112);
      *(v19 + 112) = *(a2 + 96);
      *(v19 + 128) = v22;
      v23 = *(a2 + 16);
      *(v19 + 16) = *a2;
      *(v19 + 32) = v23;
      v24 = *(a2 + 48);
      *(v19 + 48) = *(a2 + 32);
      *(v19 + 64) = v24;
      v60 = sub_243F98C00;
      v61 = v19;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v58 = sub_243F5F604;
      v59 = &block_descriptor_69;
      v25 = _Block_copy(&aBlock);
      sub_243F976D4(a2, v56);

      v26 = v6;
      v27 = v50;
      sub_2440D2C90();
      *&v56[0] = MEMORY[0x277D84F90];
      sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
      v28 = v53;
      v29 = v55;
      sub_2440D3710();
      v30 = v47;
      MEMORY[0x245D57400](v18, v27, v28, v25);
      _Block_release(v25);

      (*(v51 + 8))(v28, v29);
      (*(v52 + 8))(v27, v54);
      return (v49)(v18, v26);
    }
  }

  else
  {
    v47 = v9;
    v32 = sub_2440D11C0();
    v33 = sub_2440D3460();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v44 = v34;
      v45 = swift_slowAlloc();
      *&v56[0] = v45;
      *v34 = 136315138;
      LOBYTE(aBlock) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1398);
      v35 = sub_2440D3040();
      v46 = v14;
      v37 = v6;
      v38 = sub_243F4E6F8(v35, v36, v56);
      v14 = v46;

      v39 = v44;
      *(v44 + 1) = v38;
      v6 = v37;
      v40 = v39;
      _os_log_impl(&dword_243F48000, v32, v33, "glyphType update: %s", v39, 0xCu);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x245D58570](v41, -1, -1);
      MEMORY[0x245D58570](v40, -1, -1);
    }

    (*(v17 + 8))(v13, v16);
    v9 = v47;
    if (v14 != 2)
    {
      goto LABEL_3;
    }
  }

  v56[0] = *(a2 + 24);
  aBlock = *(a2 + 24);
  v64 = *(&v56[0] + 1);
  sub_243F5F574(&v64, &v62, &qword_27EDC13E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
  sub_2440D2820();
  v63 = 0;
  sub_243F98BAC();
  sub_2440D31F0();
  sub_2440D31F0();
  if (aBlock != v62)
  {
    v42 = sub_2440D3A10();

    if (v42)
    {
      goto LABEL_10;
    }

    aBlock = v56[0];
    sub_2440D2820();
    v63 = 4;
    sub_2440D31F0();
    sub_2440D31F0();
    if (aBlock != v62)
    {
      v43 = sub_2440D3A10();

      if ((v43 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  aBlock = *(a2 + 40);
  LOBYTE(v62) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
  sub_2440D2830();
LABEL_11:
  aBlock = v56[0];
  LOBYTE(v62) = 0;
  sub_2440D2830();
  return sub_243F5EED4(v56, &qword_27EDC13D8);
}

uint64_t sub_243F964D4()
{
  v1 = swift_allocObject();
  v2 = v0[3];
  v1[3] = v0[2];
  v1[4] = v2;
  v1[5] = v0[4];
  v3 = v0[1];
  v1[1] = *v0;
  v1[2] = v3;
  v10 = sub_243F97AD4;
  v11 = v1;
  v9 = *v0;
  sub_243F97B38(v0, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1458);
  sub_2440D2820();
  v4 = swift_allocObject();
  v5 = v0[3];
  v4[3] = v0[2];
  v4[4] = v5;
  v4[5] = v0[4];
  v6 = v0[1];
  v4[1] = *v0;
  v4[2] = v6;
  sub_243F97B38(v0, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1470);
  sub_243F5DD50(&qword_27EDC1478, &qword_27EDC1470);
  sub_2440D25E0();
}

uint64_t sub_243F96660@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D1D90();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14C0);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14C8) - 8;
  v11 = MEMORY[0x28223BE20](v46);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v13;
  v14 = a1[2];
  v79 = a1[1];
  v80 = v14;
  v81 = a1[3];
  *&v82 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1460);
  sub_2440D2840();
  LOBYTE(v70) = 0;
  sub_2440D2970();
  v43 = *(&v79 + 1);
  v44 = v79;
  v42 = v80;
  v55 = 0;
  sub_2440D2810();
  v40 = *(&v70 + 1);
  v15 = v70;
  v55 = 0x3FF0000000000000;
  sub_2440D2810();
  v52 = *(&v70 + 1);
  v16 = v70;
  LOBYTE(v55) = 1;
  sub_2440D2810();
  v53 = v70;
  v54 = *(&v70 + 1);
  v65 = v56;
  v66 = v57;
  *v67 = v58[0];
  *&v67[9] = *(v58 + 9);
  sub_2440D1650();
  sub_2440D2B00();
  sub_2440D1560();
  sub_2440D1B70();
  v70 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1458);
  sub_2440D2840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14D0);
  sub_243F5DD50(&qword_27EDC14D8, &qword_27EDC14D0);
  sub_2440D2900();
  v17 = v45;
  sub_2440D1D80();
  sub_243F5DD50(&qword_27EDC14E0, &qword_27EDC14C0);
  v18 = v41;
  v19 = v48;
  v20 = v50;
  sub_2440D23A0();
  (*(v51 + 8))(v17, v20);
  (*(v49 + 8))(v10, v19);
  v21 = sub_2440D20A0();
  v22 = v47;
  v23 = v18 + *(v46 + 44);
  *v23 = v21;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  sub_243F98B3C(v18, v22);
  *&v70 = 0x4062C00000000000;
  WORD4(v70) = 0;
  *(&v70 + 10) = v68;
  HIWORD(v70) = v69;
  *&v71 = v15;
  v24 = v40;
  *(&v71 + 1) = v40;
  *&v72 = v16;
  *(&v72 + 1) = v52;
  v73 = v65;
  v74 = v66;
  v75[0] = *v67;
  *(v75 + 9) = *&v67[9];
  HIDWORD(v75[1]) = *&v64[3];
  *(&v75[1] + 9) = *v64;
  v25 = v43;
  v26 = v44;
  *&v76 = v44;
  *(&v76 + 1) = v43;
  LOBYTE(v20) = v42;
  LOBYTE(v77) = v42;
  DWORD1(v77) = *&v63[3];
  *(&v77 + 1) = *v63;
  BYTE8(v77) = v53;
  *(&v77 + 9) = *v62;
  HIDWORD(v77) = *&v62[3];
  *&v78[0] = v54;
  *(&v78[2] + 8) = v61;
  *(&v78[1] + 8) = v60;
  *(v78 + 8) = v59;
  v27 = v70;
  v28 = v71;
  v29 = v65;
  *(a2 + 32) = v72;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v30 = v74;
  v31 = v75[0];
  v32 = v76;
  *(a2 + 96) = v75[1];
  *(a2 + 112) = v32;
  *(a2 + 64) = v30;
  *(a2 + 80) = v31;
  v33 = v77;
  v34 = v78[0];
  v35 = v78[2];
  v36 = *&v78[3];
  *(a2 + 160) = v78[1];
  *(a2 + 176) = v35;
  *(a2 + 128) = v33;
  *(a2 + 144) = v34;
  *(a2 + 192) = v36;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14E8);
  sub_243F98B3C(v22, a2 + *(v37 + 64));
  sub_243F5F574(&v70, &v79, &qword_27EDC14F0);
  sub_243F5EED4(v18, &qword_27EDC14C8);
  sub_243F5EED4(v22, &qword_27EDC14C8);
  *&v79 = 0x4062C00000000000;
  WORD4(v79) = 0;
  *(&v79 + 10) = v68;
  HIWORD(v79) = v69;
  *&v80 = v15;
  *(&v80 + 1) = v24;
  *&v81 = v16;
  *(&v81 + 1) = v52;
  v82 = v65;
  v83 = v66;
  *v84 = *v67;
  *&v84[9] = *&v67[9];
  *&v85[3] = *&v64[3];
  *v85 = *v64;
  v86 = v26;
  v87 = v25;
  v88 = v20;
  *&v89[3] = *&v63[3];
  *v89 = *v63;
  v90 = v53;
  *v91 = *v62;
  *&v91[3] = *&v62[3];
  v92 = v54;
  v95 = v61;
  v94 = v60;
  v93 = v59;
  return sub_243F5EED4(&v79, &qword_27EDC14F0);
}

uint64_t sub_243F96D6C@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14F8);
  v36 = *(v1 - 8);
  v2 = v36;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_2440D1B70();
  *v19 = sub_2440D2300();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  *(v19 + 4) = 0;
  v19[40] = 1;
  sub_2440D1B70();
  *v17 = sub_2440D2300();
  *(v17 + 1) = v23;
  v17[16] = v24 & 1;
  *(v17 + 3) = v25;
  *(v17 + 4) = 1;
  v17[40] = 1;
  sub_2440D1B70();
  *v14 = sub_2440D2300();
  *(v14 + 1) = v26;
  v14[16] = v27 & 1;
  *(v14 + 3) = v28;
  *(v14 + 4) = 2;
  v14[40] = 1;
  v29 = *(v2 + 16);
  v30 = v11;
  v37 = v11;
  v29(v11, v19, v1);
  v31 = v8;
  v29(v8, v17, v1);
  v29(v5, v14, v1);
  v32 = v38;
  v29(v38, v30, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1500);
  v29(&v32[*(v33 + 48)], v31, v1);
  v29(&v32[*(v33 + 64)], v5, v1);
  v34 = *(v36 + 8);
  v34(v14, v1);
  v34(v17, v1);
  v34(v19, v1);
  v34(v5, v1);
  v34(v31, v1);
  return (v34)(v37, v1);
}

uint64_t sub_243F97130(_OWORD *a1)
{
  v2 = sub_2440D2C80();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440D2CA0();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243F5DB84();
  v8 = sub_2440D3530();
  v9 = swift_allocObject();
  v10 = a1[3];
  v9[3] = a1[2];
  v9[4] = v10;
  v9[5] = a1[4];
  v11 = a1[1];
  v9[1] = *a1;
  v9[2] = v11;
  aBlock[4] = sub_243F989CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_9;
  v12 = _Block_copy(aBlock);
  sub_243F97B38(a1, v16);

  sub_2440D2C90();
  v16[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v12);
  _Block_release(v12);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

__n128 sub_243F97474@<Q0>(uint64_t a1@<X8>)
{
  sub_243F97EDC(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_243F974BC(uint64_t a1)
{
  v2 = sub_243F98914();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243F97508(uint64_t a1)
{
  v2 = sub_243F98914();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_243F97554()
{
  result = qword_27EDC13B0;
  if (!qword_27EDC13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC13A8);
    sub_243F975E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC13B0);
  }

  return result;
}

unint64_t sub_243F975E0()
{
  result = qword_27EDC13B8;
  if (!qword_27EDC13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC13C0);
    sub_243F5DD50(&qword_27EDC13C8, &qword_27EDC13D0);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC13B8);
  }

  return result;
}

unint64_t sub_243F9770C()
{
  result = qword_27EDC1428;
  if (!qword_27EDC1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1408);
    sub_243F97798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1428);
  }

  return result;
}

unint64_t sub_243F97798()
{
  result = qword_27EDC1430;
  if (!qword_27EDC1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1400);
    sub_243F97824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1430);
  }

  return result;
}

unint64_t sub_243F97824()
{
  result = qword_27EDC1438;
  if (!qword_27EDC1438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC13F8);
    sub_243F5DD50(&qword_27EDC1440, &qword_27EDC13F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1438);
  }

  return result;
}

unint64_t sub_243F978DC()
{
  result = qword_27EDC1448;
  if (!qword_27EDC1448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1398);
    sub_243F97960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1448);
  }

  return result;
}

unint64_t sub_243F97960()
{
  result = qword_27EDC1450;
  if (!qword_27EDC1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1450);
  }

  return result;
}

uint64_t sub_243F979B4()
{
  v1 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = v1;
  v8[0] = *(v0 + 104);
  *(v8 + 9) = *(v0 + 113);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1340);
  MEMORY[0x245D56840](v4, v2);

  sub_243F929C8(v4[2]);
  v6 = *(v0 + 56);
  LOBYTE(v4[0]) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
  return sub_2440D2830();
}

uint64_t sub_243F97A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F97AD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14B8);
  return sub_243F96660((v1 + 16), a1 + *(v3 + 44));
}

uint64_t sub_243F97B78()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2440D1EF0();

    return sub_2440D1810();
  }

  else
  {
    sub_2440D18C0();
    swift_getWitnessTable();
    sub_2440D1E00();
    sub_2440D1810();
    sub_2440D3630();
    swift_getWitnessTable();
    sub_2440D18C0();
    swift_getWitnessTable();
    sub_2440D1E00();
    return sub_2440D1810();
  }
}

uint64_t sub_243F97CDC()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2440D1EF0();
    sub_2440D1810();
  }

  else
  {
    sub_2440D18C0();
    swift_getWitnessTable();
    sub_2440D1E00();
    sub_2440D1810();
    sub_2440D3630();
    swift_getWitnessTable();
    sub_2440D18C0();
    swift_getWitnessTable();
    sub_2440D1E00();
    sub_2440D1810();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_243F97EDC@<Q0>(uint64_t a1@<X8>)
{
  *&v18 = 0;
  sub_2440D2810();
  v12 = v13;
  sub_2440BD1F4(0x535F535554415453, 0xEF474E4954524154, 0, 0, 0, 2, &v18);
  sub_2440D2810();
  v2 = *&v14[16];
  v3 = v14[24];
  v4 = v15;
  v10 = v13;
  v11 = *v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1468);
  v5 = swift_allocObject();
  v5[1] = xmmword_2440D8A70;
  sub_2440BD1F4(0x535F535554415453, 0xEF474E4954524154, 0, 0, 0, 2, &v16);
  v6 = v17[0];
  v5[2] = v16;
  v5[3] = v6;
  *(v5 + 57) = *(v17 + 9);
  sub_2440BD1F4(0x575F535554415453, 0xEE00474E49544941, 0, 0, 0, 2, &v18);
  v7 = v19[0];
  v5[5] = v18;
  v5[6] = v7;
  *(v5 + 105) = *(v19 + 9);
  sub_2440BD1F4(0xD000000000000015, 0x80000002440EA040, 0, 0, 0, 0, &v13);
  v8 = *v14;
  v5[8] = v13;
  v5[9] = v8;
  *(v5 + 153) = *&v14[9];
  result = v11;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

unint64_t sub_243F980FC()
{
  result = qword_27EDC1480;
  if (!qword_27EDC1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1480);
  }

  return result;
}

unint64_t sub_243F9818C()
{
  result = qword_27EDC1488;
  if (!qword_27EDC1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1488);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19ContactlessReaderUI14ImageContainerVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_243F98248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243F98290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243F98318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_243F98360(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_243F9840C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243F98454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_243F984F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243F98540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243F985A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1358);
  sub_243F93EB8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243F98620()
{
  result = qword_27EDC1490;
  if (!qword_27EDC1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC13A8);
    sub_243F97554();
    swift_getOpaqueTypeConformance2();
    sub_243F682A4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1490);
  }

  return result;
}

unint64_t sub_243F9871C()
{
  result = qword_27EDC14A0;
  if (!qword_27EDC14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1398);
    sub_243F9770C();
    sub_243F978DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC14A0);
  }

  return result;
}

uint64_t sub_243F98810()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1470);
  sub_243F5DD50(&qword_27EDC1478, &qword_27EDC1470);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243F988C0()
{
  result = qword_27EDC14A8;
  if (!qword_27EDC14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC14A8);
  }

  return result;
}

unint64_t sub_243F98914()
{
  result = qword_27EDC14B0;
  if (!qword_27EDC14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC14B0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_243F989CC()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v25[0] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1458);
  result = sub_2440D2820();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v2 + 16))
  {
    v4 = v2 + 48 * v21;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v9 = *(v4 + 64);
    LOBYTE(v4) = *(v4 + 72);
    v10 = *(v1 + 48);
    v25[0] = *(v1 + 32);
    v25[1] = v10;
    v12 = *(v1 + 32);
    v11 = *(v1 + 48);
    v25[2] = *(v1 + 64);
    v26 = *(v1 + 80);
    v21 = v12;
    v22 = v11;
    v23 = *(v1 + 64);
    v24 = *(v1 + 80);
    v15 = v6;
    v16 = v5;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v4;

    sub_243F92988(v7);
    sub_243F5F574(v25, v14, &qword_27EDC1460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1460);
    sub_2440D2830();
    v13 = v22;

    sub_243F929C8(v13);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F98B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC14C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243F98BAC()
{
  result = qword_27EDC1508;
  if (!qword_27EDC1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1508);
  }

  return result;
}

uint64_t sub_243F98C00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
  result = sub_2440D2820();
  if (v1 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
    return sub_2440D2830();
  }

  return result;
}

uint64_t sub_243F98C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13D8);
  sub_2440D2830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC13E8);
  return sub_2440D2830();
}

unint64_t sub_243F98D24()
{
  result = qword_27EDC1538;
  if (!qword_27EDC1538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1530);
    sub_243F98DDC();
    sub_243F5DD50(&qword_27EDC1598, &qword_27EDC15A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1538);
  }

  return result;
}

unint64_t sub_243F98DDC()
{
  result = qword_27EDC1540;
  if (!qword_27EDC1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1548);
    sub_243F98E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1540);
  }

  return result;
}

unint64_t sub_243F98E68()
{
  result = qword_27EDC1550;
  if (!qword_27EDC1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1558);
    sub_243F98EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1550);
  }

  return result;
}

unint64_t sub_243F98EF4()
{
  result = qword_27EDC1560;
  if (!qword_27EDC1560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1568);
    sub_243F98F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1560);
  }

  return result;
}

unint64_t sub_243F98F80()
{
  result = qword_27EDC1570;
  if (!qword_27EDC1570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1578);
    sub_243F9900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1570);
  }

  return result;
}

unint64_t sub_243F9900C()
{
  result = qword_27EDC1580;
  if (!qword_27EDC1580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1588);
    sub_243F99098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1580);
  }

  return result;
}

unint64_t sub_243F99098()
{
  result = qword_27EDC1590;
  if (!qword_27EDC1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1590);
  }

  return result;
}

unint64_t sub_243F990EC()
{
  result = qword_27EDC15B0;
  if (!qword_27EDC15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC15B8);
    sub_243F99178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC15B0);
  }

  return result;
}

unint64_t sub_243F99178()
{
  result = qword_27EDC15C0;
  if (!qword_27EDC15C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC15C8);
    sub_243F99230();
    sub_243F5DD50(&qword_27EDC1600, &qword_27EDC1608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC15C0);
  }

  return result;
}

unint64_t sub_243F99230()
{
  result = qword_27EDC15D0;
  if (!qword_27EDC15D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC15D8);
    sub_243F992E8();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC15D0);
  }

  return result;
}

unint64_t sub_243F992E8()
{
  result = qword_27EDC15E0;
  if (!qword_27EDC15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC15E8);
    sub_243F993A0();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC15E0);
  }

  return result;
}

unint64_t sub_243F993A0()
{
  result = qword_27EDC15F0;
  if (!qword_27EDC15F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC15F8);
    sub_243F88738();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC15F0);
  }

  return result;
}

uint64_t sub_243F99458(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F682A4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_243F996FC()
{
  result = qword_27EDC1640;
  if (!qword_27EDC1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1640);
  }

  return result;
}

unint64_t sub_243F99780()
{
  result = qword_27EDC1648;
  if (!qword_27EDC1648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1630);
    sub_243F99458(&qword_27EDC1650, &qword_27EDC1658, &unk_2440D91C8, sub_243F996FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1648);
  }

  return result;
}

double sub_243F99838(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_243F998B4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_243F99924()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_2440D3210();
    [v1 vasReadSuccessWithMerchantNames_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_243F99A58(SEL *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_243F99ABC(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_243F99B20(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_243F99B98(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_243F99BF8()
{
  sub_243F8EF38(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_243F99C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1678);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1680) + 36);
  *v10 = v5;
  *(v10 + 8) = 0;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1688) + 36));
  *v11 = 0;
  v11[1] = v6;
  sub_2440D2C40();
  v13 = v12;
  v15 = v14;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1690) + 36));
  *v16 = v8;
  v16[1] = v8;
  v16[2] = v13;
  v16[3] = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1698);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_243F99D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = (1.0 - *v2) * 8.0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC16A0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC16A8) + 36);
  *v8 = v6;
  *(v8 + 8) = 0;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC16B0) + 36)) = v5;
  v9 = v5 * 0.1 + 0.9;
  sub_2440D2C40();
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC16B8) + 36);
  *v14 = v9;
  *(v14 + 8) = v9;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v15 = sub_2440D2B30();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC16C0);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v5;
  return result;
}

uint64_t *sub_243F99F1C()
{
  if (qword_27EDC8C48 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6448;
}

uint64_t *sub_243F99F88()
{
  if (qword_27EDC8C50 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6450;
}

uint64_t sub_243F99FF4(uint64_t a1, uint64_t *a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  sub_243F9A0F4();
  result = sub_2440D15F0();
  *a2 = result;
  return result;
}

uint64_t *sub_243F9A04C()
{
  if (qword_27EDC8C58 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6458;
}

uint64_t sub_243F9A09C()
{
  __asm { FMOV            V0.2D, #1.0 }

  sub_243F9A0F4();
  return sub_2440D15F0();
}

unint64_t sub_243F9A0F4()
{
  result = qword_27EDC16C8;
  if (!qword_27EDC16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16C8);
  }

  return result;
}

uint64_t sub_243F9A148()
{
  sub_243F9A7DC();
  result = sub_2440D15F0();
  qword_27EDC6460 = result;
  return result;
}

uint64_t *sub_243F9A190()
{
  if (qword_27EDC8C60 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6460;
}

uint64_t sub_243F9A200()
{
  __asm { FMOV            V0.2D, #1.0 }

  sub_243F9A0F4();
  return sub_2440D15F0();
}

uint64_t sub_243F9A284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F9A2A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_243F9A2F4()
{
  result = qword_27EDC16D0;
  if (!qword_27EDC16D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1698);
    sub_243F9A380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16D0);
  }

  return result;
}

unint64_t sub_243F9A380()
{
  result = qword_27EDC16D8;
  if (!qword_27EDC16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1690);
    sub_243F9A40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16D8);
  }

  return result;
}

unint64_t sub_243F9A40C()
{
  result = qword_27EDC16E0;
  if (!qword_27EDC16E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1688);
    sub_243F9A498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16E0);
  }

  return result;
}

unint64_t sub_243F9A498()
{
  result = qword_27EDC16E8;
  if (!qword_27EDC16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1680);
    sub_243F5DD50(&qword_27EDC16F0, &qword_27EDC1678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16E8);
  }

  return result;
}

unint64_t sub_243F9A554()
{
  result = qword_27EDC16F8;
  if (!qword_27EDC16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC16C0);
    sub_243F9A60C();
    sub_243F5DD50(&qword_27EDC1720, &qword_27EDC1728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC16F8);
  }

  return result;
}

unint64_t sub_243F9A60C()
{
  result = qword_27EDC1700;
  if (!qword_27EDC1700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC16B8);
    sub_243F9A698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1700);
  }

  return result;
}

unint64_t sub_243F9A698()
{
  result = qword_27EDC1708;
  if (!qword_27EDC1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC16B0);
    sub_243F9A724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1708);
  }

  return result;
}

unint64_t sub_243F9A724()
{
  result = qword_27EDC1710;
  if (!qword_27EDC1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC16A8);
    sub_243F5DD50(&qword_27EDC1718, &qword_27EDC16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1710);
  }

  return result;
}

unint64_t sub_243F9A7DC()
{
  result = qword_27EDC1730;
  if (!qword_27EDC1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1730);
  }

  return result;
}

BOOL sub_243F9A83C()
{
  v0 = objc_opt_self();
  v1 = sub_2440D2F80();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
  }

  return v2 != 0;
}

id sub_243F9A8BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = objc_opt_self();
  v5 = sub_2440D2F80();
  v6 = [v4 linkWithBundleIdentifier_];

  if (v6)
  {
    [v6 setDisplayIcon_];
  }

  else
  {
    v7 = sub_243F4DFA8();
    sub_243F4DE64(v7, v3);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      sub_243F5FAB0(v3);
    }

    else
    {
      v10 = sub_2440D11C0();
      v11 = sub_2440D3490();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_243F48000, v10, v11, "Failed to create privacy link", v12, 2u);
        MEMORY[0x245D58570](v12, -1, -1);
      }

      (*(v9 + 8))(v3, v8);
    }

    return [objc_allocWithZone(MEMORY[0x277D37670]) init];
  }

  return v6;
}

void sub_243F9AAB4(void *a1)
{
  v2 = v1;
  v4 = sub_2440D2C80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v37 = v5;
    v14 = a1;
    [v14 intrinsicContentSize];
    if (v15 > 0.0)
    {
      v38 = v14;
      [v13 intrinsicContentSize];
      v17 = v16;
      [v13 intrinsicContentSize];
      v19 = v18;

      v20 = *(v2 + 24);
      if (v20 <= 0.0)
      {
        v35 = v38;
      }

      else
      {
        v21 = v17 / v20;
        sub_243F9B2E8(0, &qword_27EDC6160);
        v22 = sub_2440D3530();
        v23 = swift_allocObject();
        v24 = *(v2 + 16);
        *(v23 + 16) = *v2;
        *(v23 + 32) = v24;
        *(v23 + 48) = *(v2 + 32);
        *(v23 + 64) = *(v2 + 48);
        *(v23 + 72) = v19;
        *(v23 + 80) = v21;
        aBlock[4] = sub_243F9B378;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_243F5F604;
        aBlock[3] = &block_descriptor_10;
        v25 = _Block_copy(aBlock);
        sub_243F9B418(v2, v39);

        sub_2440D2C90();
        v39[0] = MEMORY[0x277D84F90];
        sub_243F91D78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
        sub_243F73DE0();
        sub_2440D3710();
        MEMORY[0x245D57440](0, v11, v7, v25);
        _Block_release(v25);

        (*(v37 + 8))(v7, v4);
        (*(v9 + 8))(v11, v8);
        [v13 sizeToFit];
      }

      return;
    }
  }

  v26 = [a1 subviews];
  sub_243F9B2E8(0, &qword_27EDC1750);
  v27 = sub_2440D3220();

  if (v27 >> 62)
  {
    v28 = sub_2440D38E0();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v29 = [a1 subviews];
    v30 = sub_2440D3220();

    if (v30 >> 62)
    {
      v31 = sub_2440D38E0();
      if (v31)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_11:
        if (v31 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v31; ++i)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x245D57760](i, v30);
          }

          else
          {
            v33 = *(v30 + 8 * i + 32);
          }

          v34 = v33;
          sub_243F9AAB4();
        }
      }
    }
  }
}

uint64_t sub_243F9AFB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

void sub_243F9AFC8(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    sub_243F9AAB4(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243F9B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F9B294();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243F9B0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F9B294();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243F9B150()
{
  sub_243F9B294();
  sub_2440D2020();
  __break(1u);
}

unint64_t sub_243F9B17C()
{
  result = qword_27EDC1740;
  if (!qword_27EDC1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1740);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243F9B1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_243F9B234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243F9B294()
{
  result = qword_27EDC1748;
  if (!qword_27EDC1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1748);
  }

  return result;
}

uint64_t sub_243F9B2E8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243F9B330()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F9B450()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_243F9B4B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2440D3390();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_243F5D774(a1, v10);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  sub_243F9C80C(v10, (v7 + 4));
  v7[9] = v1;

  sub_243F54830(0, 0, v5, &unk_2440D9530, v7);
}

uint64_t sub_243F9B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9B67C, 0, 0);
}

uint64_t sub_243F9B67C()
{
  v28 = v0;
  sub_243F5D774(v0[22], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1768);
  type metadata accessor for AddDigitCommand();
  if (swift_dynamicCast())
  {
    v1 = v0[23];

    v2 = *(v1 + 16);
    v0[25] = v2;
    v3 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0x7B39000000000000;
    v0[26] = *(*v2 + 152);
    v0[27] = v3;
    v4 = sub_243F9BAF8;
LABEL_11:

    return MEMORY[0x2822009F8](v4, v2, 0);
  }

  type metadata accessor for RemoveDigitCommand();
  if (swift_dynamicCast())
  {
    v5 = v0[23];

    v2 = *(v5 + 16);
    v0[28] = v2;
    v6 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0x7B39000000000000;
    v0[29] = *(*v2 + 152);
    v0[30] = v6;
    v4 = sub_243F9BBD4;
    goto LABEL_11;
  }

  type metadata accessor for SubmitCommand();
  if (swift_dynamicCast())
  {
    v7 = v0[23];

    v2 = *(v7 + 16);
    v0[31] = v2;
    v8 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0x7B39000000000000;
    v0[32] = *(*v2 + 152);
    v0[33] = v8;
    v4 = sub_243F9BC44;
    goto LABEL_11;
  }

  type metadata accessor for SwitchAXCommand();
  if (swift_dynamicCast())
  {
    v9 = v0[23];

    v2 = *(v9 + 16);
    v0[34] = v2;
    v10 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0x5361000000000000;
    v0[35] = *(*v2 + 160);
    v0[36] = v10;
    v4 = sub_243F9BCB4;
    goto LABEL_11;
  }

  type metadata accessor for CancelCommand();
  if (swift_dynamicCast())
  {
    v11 = v0[23];

    v2 = *(v11 + 16);
    v0[37] = v2;
    v12 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0x5361000000000000;
    v0[38] = *(*v2 + 160);
    v0[39] = v12;
    v4 = sub_243F9BD24;
    goto LABEL_11;
  }

  v13 = v0[24];
  v14 = sub_243F4DF68();
  sub_243F5F574(v14, v13, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_243F5EED4(v0[24], &qword_27EDC0A50);
  }

  else
  {
    sub_243F5D774(v0[22], (v0 + 7));
    v17 = sub_2440D11C0();
    v18 = sub_2440D3470();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_243F5D774((v0 + 7), (v0 + 12));
      v21 = sub_2440D3040();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v24 = sub_243F4E6F8(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_243F48000, v17, v18, "skipping %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x245D58570](v20, -1, -1);
      MEMORY[0x245D58570](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    (*(v16 + 8))(v0[24], v15);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v25 = v0[1];

  return v25();
}

uint64_t sub_243F9BAF8()
{
  (*(v0 + 208))(*(v0 + 176));

  return MEMORY[0x2822009F8](sub_243F9BB68, 0, 0);
}

uint64_t sub_243F9BB68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243F9BBD4()
{
  (*(v0 + 232))(*(v0 + 176));

  return MEMORY[0x2822009F8](sub_243F9BB68, 0, 0);
}

uint64_t sub_243F9BC44()
{
  (*(v0 + 256))(*(v0 + 176));

  return MEMORY[0x2822009F8](sub_243F9BB68, 0, 0);
}

uint64_t sub_243F9BCB4()
{
  (*(v0 + 280))(*(v0 + 176));

  return MEMORY[0x2822009F8](sub_243F9BB68, 0, 0);
}

uint64_t sub_243F9BD24()
{
  (*(v0 + 304))(*(v0 + 176));

  return MEMORY[0x2822009F8](sub_243F9BB68, 0, 0);
}

uint64_t sub_243F9BD94(uint64_t a1)
{
  sub_243F5D774(a1, v7);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_243FA090C(0, v2[2] + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_243FA090C((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  sub_243F9C80C(v7, &v2[5 * v5 + 4]);
  *(v1 + 112) = v2;
  swift_endAccess();
  return sub_243F9BEE4();
}

uint64_t sub_243F9BE6C(uint64_t a1)
{
  swift_beginAccess();
  v1[14] = MEMORY[0x277D84F90];

  return (*(*v1 + 152))(a1);
}

uint64_t sub_243F9BEE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12[-v3];
  if (!*(v0 + 120))
  {
    result = swift_beginAccess();
    v5 = *(v0 + 112);
    if (*(v5 + 16))
    {
      swift_beginAccess();
      sub_243F5D774(v5 + 32, v13);
      v6 = v0;
      sub_243FA1284(0, 1);
      swift_endAccess();
      sub_243F9C80C(v13, v14);
      v7 = sub_2440D3390();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      sub_243F5D774(v14, v13);
      v9 = sub_243FA1344(&qword_27EDC1760, v8, type metadata accessor for CommandExecutor.Sequencer);
      v10 = swift_allocObject();
      v10[2] = v6;
      v10[3] = v9;
      sub_243F9C80C(v13, (v10 + 4));
      v10[9] = v6;
      swift_retain_n();
      v11 = sub_243F54830(0, 0, v4, &unk_2440D9818, v10);
      __swift_destroy_boxed_opaque_existential_0(v14);
      *(v6 + 120) = v11;
    }
  }

  return result;
}

uint64_t sub_243F9C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9C174, a5, 0);
}

uint64_t sub_243F9C174()
{
  v21 = v0;
  v1 = v0[25];
  v2 = sub_243F4DF68();
  v0[26] = v2;
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v5 = *(v4 + 48);
  v0[29] = v5;
  v0[30] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_243F5EED4(v0[25], &qword_27EDC0A50);
  }

  else
  {
    sub_243F5D774(v0[22], (v0 + 12));
    v6 = sub_2440D11C0();
    v7 = sub_2440D3490();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_243F5D774((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1768);
      v10 = sub_2440D3040();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0((v0 + 12));
      v13 = sub_243F4E6F8(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_243F48000, v6, v7, "starting %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x245D58570](v9, -1, -1);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 12));
    }

    (*(v4 + 8))(v0[25], v3);
  }

  v14 = v0[22];
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v19 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[31] = v17;
  *v17 = v0;
  v17[1] = sub_243F9C494;

  return v19(v15, v16);
}

uint64_t sub_243F9C494()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_243F9C5A4, v1, 0);
}

uint64_t sub_243F9C5A4()
{
  v15 = v0;
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  sub_243F5F574(v0[26], v3, &qword_27EDC0A50);
  if (v1(v3, 1, v2) == 1)
  {
    sub_243F5EED4(v0[24], &qword_27EDC0A50);
  }

  else
  {
    sub_243F5D774(v0[22], (v0 + 2));
    v4 = sub_2440D11C0();
    v5 = sub_2440D3490();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      sub_243F5D774((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1768);
      v8 = sub_2440D3040();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
      v11 = sub_243F4E6F8(v8, v10, &v14);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_243F48000, v4, v5, "finished %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x245D58570](v7, -1, -1);
      MEMORY[0x245D58570](v6, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    }

    (*(v0[28] + 8))(v0[24], v0[27]);
  }

  *(v0[23] + 120) = 0;

  sub_243F9BEE4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_243F9C7C8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243F9C80C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_243F9C824()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F9B5E0(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_243F9CA04()
{

  v1 = OBJC_IVAR____TtC19ContactlessReaderUI15CommandExecutor___observationRegistrar;
  v2 = sub_2440D0930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_243F9CAA8()
{
  v0 = swift_allocObject();
  type metadata accessor for CommandExecutor.Sequencer();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 120) = 0;
  *(v0 + 16) = v1;
  sub_2440D0920();
  return v0;
}

uint64_t sub_243F9CB14(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_243F9CB5C()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9CC10, 0, 0);
}

uint64_t sub_243F9CC10()
{
  v34 = v0;
  v1 = *(v0[11] + 24);
  v2 = (*v1 + 504);
  v3 = *v2;
  v4 = (*v2)();
  if (sub_243FA1978(v4, 1))
  {
    v5 = (*(*v1 + 408))();
    if (v5 < *sub_2440B36B4())
    {
      v6 = v0[11];
      sub_243F5D774(*(v6 + 16) + 16, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      (*(v8 + 24))(*(v6 + 32), v7, v8);
      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
      v32 = (*(*v1 + 816) + **(*v1 + 816));
      v29 = swift_task_alloc();
      v0[15] = v29;
      *v29 = v0;
      v29[1] = sub_243F9D368;

      return v32();
    }

    v13 = v0[14];
    v14 = sub_243F4DF68();
    sub_243F5F574(v14, v13, &qword_27EDC0A50);
    v15 = sub_2440D11E0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      v17 = sub_243F5EED4(v0[14], &qword_27EDC0A50);
    }

    else
    {
      v25 = sub_2440D11C0();
      v26 = sub_2440D3490();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_243F48000, v25, v26, "max digit reached", v27, 2u);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      v28 = v0[14];

      v17 = (*(v16 + 8))(v28, v15);
    }

    (*(*v1 + 824))(v17);
  }

  else
  {
    v9 = v0[13];
    v10 = sub_243F4DF68();
    sub_243F5F574(v10, v9, &qword_27EDC0A50);
    v11 = sub_2440D11E0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_243F5EED4(v0[13], &qword_27EDC0A50);
    }

    else
    {

      v18 = sub_2440D11C0();
      v19 = sub_2440D3470();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33 = v21;
        *v20 = 136315138;
        v3();
        v22 = sub_2440B4528();
        v24 = sub_243F4E6F8(v22, v23, &v33);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_243F48000, v18, v19, "digit cannot be added in state [%s]", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x245D58570](v21, -1, -1);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      (*(v12 + 8))(v0[13], v11);
    }
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_243F9D368()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F9D4B8()
{
  v4 = (*(**v0 + 112) + **(**v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return v4();
}

uint64_t sub_243F9D5CC()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9D674, 0, 0);
}

uint64_t sub_243F9D674()
{
  v1 = *(v0[11] + 24);
  if ((*(*v1 + 408))() < 1)
  {
    v4 = v0[13];
    v5 = sub_243F4DF68();
    sub_243F5F574(v5, v4, &qword_27EDC0A50);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(v0[13], &qword_27EDC0A50);
    }

    else
    {
      v11 = sub_2440D11C0();
      v12 = sub_2440D3490();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_243F48000, v11, v12, "no digit to remove", v13, 2u);
        MEMORY[0x245D58570](v13, -1, -1);
      }

      v14 = v0[13];

      (*(v7 + 8))(v14, v6);
    }

    v8 = sub_243F4E2F4();
    v16 = (*(*v1 + 840) + **(*v1 + 840));
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v10 = sub_243F9DDA4;
  }

  else
  {
    sub_243F5D774(*(v0[11] + 16) + 16, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 32))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    v8 = sub_243F4E2F4();
    v16 = (*(*v1 + 840) + **(*v1 + 840));
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v10 = sub_243F9DC78;
  }

  v9[1] = v10;

  return v16(v8 & 1);
}

uint64_t sub_243F9DC78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F9DDA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F9DED0()
{
  v4 = (*(**v0 + 104) + **(**v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return v4();
}

uint64_t sub_243F9DFE4()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9E08C, 0, 0);
}

uint64_t sub_243F9E08C()
{
  v1 = (**(v0[11] + 24) + 408);
  v2 = *v1;
  if ((*v1)() < 1)
  {
    v8 = v0[13];
    v9 = sub_243F4DF68();
    sub_243F5F574(v9, v8, &qword_27EDC0A50);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_243F5EED4(v0[13], &qword_27EDC0A50);
    }

    else
    {
      v12 = sub_2440D11C0();
      v13 = sub_2440D3490();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_243F48000, v12, v13, "no digits to clear", v14, 2u);
        MEMORY[0x245D58570](v14, -1, -1);
      }

      v15 = v0[13];

      (*(v11 + 8))(v15, v10);
    }
  }

  else
  {
    v3 = v0[11];
    sub_243F5D774(*(v3 + 16) + 16, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = v2();
    v7 = *(v5 + 40);

    v7(v6, sub_243FA0AA0, v3, v4, v5);

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_243F9E500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_2440D3390();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_243F54830(0, 0, v4, &unk_2440D9800, v6);
}

uint64_t sub_243F9E62C()
{
  v3 = (*(**(*(v0 + 16) + 24) + 840) + **(**(*(v0 + 16) + 24) + 840));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243F57278;

  return v3(1);
}

uint64_t sub_243F9E750()
{
  v4 = (*(**v0 + 104) + **(**v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return v4();
}

uint64_t sub_243F9E864()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v2 = sub_2440D0AC0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9E9A0, 0, 0);
}

uint64_t sub_243F9E9A0()
{
  v1 = *(v0[11] + 24);
  v2 = (*v1 + 408);
  v3 = *v2;
  v4 = (*v2)();
  if (v4 >= *sub_2440B36A8() || *(v0[11] + 32) == 1 && !v3())
  {
    v9 = v0[11];
    (*(*v1 + 936))();
    (*(*v1 + 904))(2);
    sub_243F5D774(*(v9 + 16) + 16, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v12 = (*(v11 + 48))(v10, v11);
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    (*(*v1 + 288))(v12);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    sub_2440D09E0();
    sub_2440D0AA0();
    v16 = (*(v14 + 8))(v13, v15);
    v17 = (*(*v1 + 224))(v16);
    if (v17)
    {
      [v17 pinValidateSession];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = v0[14];
    v6 = sub_243F4DF68();
    sub_243F5F574(v6, v5, &qword_27EDC0A50);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_243F5EED4(v0[14], &qword_27EDC0A50);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3490();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "not enough digits", v20, 2u);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      v21 = v0[14];

      (*(v8 + 8))(v21, v7);
    }

    v22 = *(*(v0[11] + 16) + 56);
    v23 = *(*v1 + 552);

    v25 = v23(v24);
    v26 = sub_2440B446C(v25 & 1);
    (*(*v22 + 272))(3, v26 & 1);

    v28 = v23(v27);
    if (sub_2440B446C(v28 & 1))
    {
      v29 = v0[11];
      v30 = v0[12];
      v31 = sub_2440D3390();
      (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v29;

      sub_243F54B30(0, 0, v30, &unk_2440D9568, v32);
    }
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_243F9F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_243F9F090, 0, 0);
}

uint64_t sub_243F9F090()
{
  v1 = *(*(v0[3] + 16) + 56);
  v0[4] = v1;
  v2 = *(*v1 + 280);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_243F55C88;

  return (v5)(0, 0, 5);
}

uint64_t sub_243F9F1DC()
{
  v4 = (*(**v0 + 112) + **(**v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return v4();
}

uint64_t sub_243F9F2F0(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_243F9F350()
{
  (*(**(*(v0 + 16) + 24) + 936))();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243F9F450;

  return MEMORY[0x282200600]();
}

uint64_t sub_243F9F450()
{

  return MEMORY[0x2822009F8](sub_243F55A48, 0, 0);
}

uint64_t sub_243F9F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F9F5E8, 0, 0);
}

uint64_t sub_243F9F5E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_2440D3390();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_243F9F854(v1, &unk_2440D97E0, v5);
  sub_243F5EED4(v1, &unk_27EDC03E0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_243F9F854(v1, &unk_2440D97F0, v6);
  sub_243F5EED4(v1, &unk_27EDC03E0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_243F9F7A8()
{
  sub_243F5D774(*(v0[7] + 16) + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_243F9F854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_243F5F574(a1, v20 - v9, &unk_27EDC03E0);
  v11 = sub_2440D3390();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_243F5EED4(v10, &unk_27EDC03E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2440D3320();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2440D3380();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_243F9FA8C()
{
  v1 = *(v0[2] + 24);
  v0[3] = v1;
  v2 = sub_243F4E2F4();
  v5 = (*(*v1 + 872) + **(*v1 + 872));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_243F9FBC8;

  return v5(v2 & 1);
}

uint64_t sub_243F9FBC8()
{

  return MEMORY[0x2822009F8](sub_243F9FCC4, 0, 0);
}

uint64_t sub_243F9FCC4()
{
  v1 = *sub_244070AF8();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_243F9FD60;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_243F9FD60()
{

  if (v0)
  {

    v1 = sub_243FA1470;
  }

  else
  {
    v1 = sub_243F9FE78;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F9FE78()
{
  v1 = (*(**(v0 + 24) + 248))();
  if (v1)
  {
    v2 = v1;
    v1(3);
    sub_243F7EE58(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243F9FF24()
{
  v4 = (*(**v0 + 104) + **(**v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5DE2C;

  return v4();
}

uint64_t sub_243FA0058()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243FA0124;

  return MEMORY[0x282200600]();
}

uint64_t sub_243FA0124()
{

  return MEMORY[0x2822009F8](sub_243FA14A0, 0, 0);
}

uint64_t sub_243FA0220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243FA02BC, 0, 0);
}

uint64_t sub_243FA02BC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_2440D3390();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_243F9F854(v1, &unk_2440D97B0, v5);
  sub_243F5EED4(v1, &unk_27EDC03E0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_243F9F854(v1, &unk_2440D97C0, v6);
  sub_243F5EED4(v1, &unk_27EDC03E0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_243FA047C()
{
  v1 = v0[2];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  type metadata accessor for ClearAllCommand();
  v4 = swift_allocObject();
  v0[3] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_243FA054C;

  return sub_243F9DFE4();
}

uint64_t sub_243FA054C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243FA067C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  v5 = (*(**(v1 + 24) + 880) + **(**(v1 + 24) + 880));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_243FA1498;

  return v5(v2);
}

uint64_t sub_243FA07AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243FA07F8()
{
  v4 = (*(**v0 + 112) + **(**v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return v4();
}

void *sub_243FA090C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1768);
    swift_arrayInitWithCopy();
  }

  return v10;
}