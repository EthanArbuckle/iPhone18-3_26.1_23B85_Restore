uint64_t sub_18E1C29A4@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F2FC();
}

uint64_t sub_18E1C29FC()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C2A1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  return result;
}

void sub_18E1C2A38(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 96) = 100000;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0;
}

ModelCatalog::UseCaseIdentifier_optional __swiftcall UseCaseIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  sub_18E1C77B0();
  v6 = v4 == 0xD00000000000001DLL && v5 == object;
  if (v6 || (v7 = v4, (sub_18E1C8DF0() & 1) != 0))
  {

    v9 = 0;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v11 = v7 == 0xD000000000000026 && v10 == object;
  if (v11 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 1;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v13 = v7 == 0xD00000000000002DLL && v12 == object;
  if (v13 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 2;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v15 = v7 == 0xD000000000000037 && v14 == object;
  if (v15 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 3;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v17 = v7 == 0xD000000000000030 && v16 == object;
  if (v17 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 4;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v19 = v7 == 0xD000000000000030 && v18 == object;
  if (v19 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 5;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v21 = v7 == 0xD000000000000030 && v20 == object;
  if (v21 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 6;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v23 = v7 == 0xD000000000000026 && v22 == object;
  if (v23 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 7;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v25 = v7 == 0xD000000000000026 && v24 == object;
  if (v25 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 8;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v27 = v7 == 0xD000000000000026 && v26 == object;
  if (v27 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 9;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v29 = v7 == 0xD00000000000001FLL && v28 == object;
  if (v29 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 10;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v31 = v7 == 0xD00000000000001DLL && v30 == object;
  if (v31 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 11;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v33 = v7 == 0xD000000000000025 && v32 == object;
  if (v33 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 12;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v35 = v7 == 0xD00000000000001BLL && v34 == object;
  if (v35 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 13;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v37 = v7 == 0xD00000000000002CLL && v36 == object;
  if (v37 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 14;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v39 = v7 == 0xD000000000000016 && v38 == object;
  if (v39 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 15;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v41 = v7 == 0xD000000000000027 && v40 == object;
  if (v41 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 16;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1D7FA4();
  v43 = v6 && v42 == object;
  if (v43 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 17;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v45 = v7 == 0xD000000000000020 && v44 == object;
  if (v45 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 18;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v47 = v7 == 0xD000000000000026 && v46 == object;
  if (v47 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 19;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v49 = v7 == 0xD00000000000001CLL && v48 == object;
  if (v49 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 20;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v51 = v7 == 0xD000000000000025 && v50 == object;
  if (v51 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 21;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v53 = v7 == 0xD000000000000039 && v52 == object;
  if (v53 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 22;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v55 = v7 == 0xD000000000000046 && v54 == object;
  if (v55 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 23;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v57 = v7 == 0xD00000000000003ELL && v56 == object;
  if (v57 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 24;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v59 = v7 == 0xD000000000000031 && v58 == object;
  if (v59 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 25;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1CF678();
  v61 = v6 && v60 == object;
  if (v61 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 26;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v63 = v7 == 0xD00000000000003FLL && v62 == object;
  if (v63 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 27;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v65 = v7 == 0xD00000000000004CLL && v64 == object;
  if (v65 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 28;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v67 = v7 == 0xD000000000000041 && v66 == object;
  if (v67 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 29;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v69 = v7 == 0xD00000000000004ELL && v68 == object;
  if (v69 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 30;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v71 = v7 == 0xD000000000000040 && v70 == object;
  if (v71 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 31;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v73 = v7 == 0xD000000000000033 && v72 == object;
  if (v73 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 32;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v75 = v7 == 0xD00000000000003BLL && v74 == object;
  if (v75 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 33;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E22877C();
  v77 = v6 && v76 == object;
  if (v77 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 34;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1D019C();
  v79 = v6 && v78 == object;
  if (v79 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 35;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1CF678();
  v81 = v6 && v80 == object;
  if (v81 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 36;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v83 = v7 == 0xD000000000000024 && v82 == object;
  if (v83 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 37;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v85 = v7 == 0xD000000000000017 && v84 == object;
  if (v85 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 38;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v87 = v7 == 0xD00000000000001ELL && v86 == object;
  if (v87 || (sub_18E1C8DF0() & 1) != 0)
  {

    v9 = 39;
    goto LABEL_7;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000019 && v88 == object)
  {

LABEL_249:

    v9 = 40;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E87A4();
  if (v216)
  {
    goto LABEL_249;
  }

  sub_18E1CF29C();
  if (v6 && v90 == object)
  {

LABEL_257:

    v9 = 41;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C8DF0();
  sub_18E1E87A4();
  if (v216)
  {
    goto LABEL_257;
  }

  sub_18E1CF29C();
  if (v6 && v92 == object)
  {

LABEL_265:

    v9 = 42;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C8DF0();
  sub_18E1E87A4();
  if (v216)
  {
    goto LABEL_265;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000028 && v94 == object)
  {

LABEL_273:

    v9 = 43;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E87A4();
  if (v216)
  {
    goto LABEL_273;
  }

  sub_18E1C88C4();
  sub_18E22877C();
  if (v6 && v96 == object)
  {

LABEL_281:

    v9 = 44;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E87A4();
  if (v216)
  {
    goto LABEL_281;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000001ALL && v98 == object)
  {

LABEL_289:

    v9 = 45;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_289;
  }

  sub_18E1CF29C();
  if (v6 && v100 == object)
  {

LABEL_297:

    v9 = 46;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_297;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v102 == object)
  {

LABEL_305:

    v9 = 47;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_305;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000002ELL && v104 == object)
  {

LABEL_313:

    v9 = 48;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_313;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000034 && v106 == object)
  {

LABEL_321:

    v9 = 49;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_321;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000038 && v108 == object)
  {

LABEL_329:

    v9 = 50;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_329;
  }

  sub_18E1CF29C();
  if (v6 && v110 == object)
  {

LABEL_337:

    v9 = 51;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_337;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v112 == object)
  {

LABEL_345:

    v9 = 52;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_345;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000017 && v114 == object)
  {

LABEL_353:

    v9 = 53;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_353;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  if (v6 && v116 == object)
  {

LABEL_361:

    v9 = 54;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E3690();
  if (v205)
  {
    goto LABEL_361;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000023 && v118 == object)
  {

LABEL_369:

    v9 = 55;
    goto LABEL_7;
  }

  v203 = sub_18E1CAF84();

  if (v203)
  {
    goto LABEL_369;
  }

  sub_18E1CA158();
  v206 = v120;
  if (v6 && v120 == object)
  {

LABEL_377:

    v9 = 56;
    goto LABEL_7;
  }

  v204 = sub_18E1CAF84();

  if (v204)
  {
    goto LABEL_377;
  }

  sub_18E1CA158();
  if (v6 && v122 == object)
  {

LABEL_385:

    v9 = 57;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_385;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000002ELL && v124 == object)
  {

LABEL_393:

    v9 = 58;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_393;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD00000000000002FLL && v126 == object)
  {

LABEL_401:

    v9 = 59;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_401;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  v211 = v128;
  if (v6 && v128 == object)
  {

LABEL_409:

    v9 = 60;
    goto LABEL_7;
  }

  v217 = sub_18E1C57BC();

  if (v217)
  {
    goto LABEL_409;
  }

  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v130 == object)
  {

LABEL_417:

    v9 = 61;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E8414();
  if (v211)
  {
    goto LABEL_417;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v132 == object)
  {

LABEL_425:

    v9 = 62;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E8414();
  if (v211)
  {
    goto LABEL_425;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD00000000000001FLL && v134 == object)
  {

LABEL_433:

    v9 = 63;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E8414();
  if (v211)
  {
    goto LABEL_433;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v136 == object)
  {

LABEL_441:

    v9 = 64;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E8414();
  if (v211)
  {
    goto LABEL_441;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v138 == object)
  {

LABEL_449:

    v9 = 65;
    goto LABEL_7;
  }

  sub_18E1C8DF0();
  sub_18E1E8414();
  if (v211)
  {
    goto LABEL_449;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000014 && v140 == object)
  {

LABEL_457:

    v9 = 66;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_457;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000001ELL && v142 == object)
  {

LABEL_465:

    v9 = 67;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_465;
  }

  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v144 == object)
  {

LABEL_473:

    v9 = 68;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_473;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000015 && v146 == object)
  {

LABEL_481:

    v9 = 69;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v206)
  {
    goto LABEL_481;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000021 && v148 == object)
  {

    v9 = 70;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v150 == object)
  {

    v9 = 71;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v152 == object)
  {

    v9 = 72;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v154 == object)
  {

    v9 = 73;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1CA158();
  if (v6 && v156 == object)
  {

    v9 = 74;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  sub_18E211FE8();
  if (v6 && v158 == object)
  {

    v9 = 75;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v160 == object)
  {

    v9 = 76;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1C88C4();
  if (v7 == 0xD000000000000020 && v162 == object)
  {

    v9 = 77;
    goto LABEL_7;
  }

  sub_18E1CAF84();
  sub_18E1D4AD0();
  sub_18E1CA158();
  v207 = v164;
  if (v6 && v164 == object)
  {

LABEL_537:

    v9 = 78;
    goto LABEL_7;
  }

  v212 = sub_18E1CAF84();

  if (v212)
  {
    goto LABEL_537;
  }

  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v166 == object)
  {

LABEL_545:

    v9 = 79;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v207)
  {
    goto LABEL_545;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  if (v6 && v168 == object)
  {

LABEL_553:

    v9 = 80;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v207)
  {
    goto LABEL_553;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000013 && v170 == object)
  {

LABEL_561:

    v9 = 81;
    goto LABEL_7;
  }

  sub_18E1C57BC();
  sub_18E1CC4A0();
  if (v207)
  {
    goto LABEL_561;
  }

  sub_18E1C88C4();
  v213 = v172;
  if (v7 == 0xD000000000000017 && v172 == object)
  {

LABEL_569:

    v9 = 82;
    goto LABEL_7;
  }

  v214 = sub_18E1C8DF0();

  if (v214)
  {
    goto LABEL_569;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v174 == object)
  {

LABEL_577:

    v9 = 83;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_577;
  }

  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v176 == object)
  {

LABEL_585:

    v9 = 84;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_585;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v178 == object)
  {

LABEL_593:

    v9 = 85;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_593;
  }

  sub_18E1CF29C();
  if (v6 && v180 == object)
  {

LABEL_601:

    v9 = 86;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_601;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000018 && v182 == object)
  {

LABEL_609:

    v9 = 87;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_609;
  }

  sub_18E1CF29C();
  if (v6 && v184 == object)
  {

LABEL_617:

    v9 = 88;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C5598();
  sub_18E1DD318();
  if (v213)
  {
    goto LABEL_617;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000002ALL && v186 == object)
  {

LABEL_625:

    v9 = 89;
    goto LABEL_7;
  }

  v208 = sub_18E1C8DF0();

  if (v208)
  {
    goto LABEL_625;
  }

  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v188 == object)
  {

LABEL_633:

    v9 = 90;
    goto LABEL_7;
  }

  v209 = sub_18E1C5598();

  if (v209)
  {
    goto LABEL_633;
  }

  sub_18E1CF29C();
  if (v6 && v190 == object)
  {

LABEL_641:

    v9 = 91;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  v210 = sub_18E1C5598();

  if (v210)
  {
    goto LABEL_641;
  }

  sub_18E1CA158();
  if (v6 && v192 == object)
  {

    v9 = 92;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  sub_18E1C88C4();
  v215 = v194;
  if (v7 == 0xD000000000000028 && v194 == object)
  {

    v9 = 93;
    goto LABEL_7;
  }

  sub_18E1C5598();
  sub_18E1DD318();
  sub_18E1CA5A4();
  v197 = v196;
  if (v7 == 0xD000000000000030 && v196 == object)
  {

LABEL_661:

    v9 = 94;
    goto LABEL_7;
  }

  sub_18E1C5EEC();
  sub_18E2218EC();
  if (v215)
  {
    goto LABEL_661;
  }

  sub_18E1CC3B8();
  if (v7 == 0xD000000000000022 && v197 == object)
  {

LABEL_669:

    v9 = 95;
    goto LABEL_7;
  }

  sub_18E1E11C0();
  sub_18E1C5EEC();
  sub_18E2218EC();
  if (v215)
  {
    goto LABEL_669;
  }

  sub_18E1CC3B8();
  if (v7 == 0xD000000000000028 && v197 == object)
  {

LABEL_677:

    v9 = 96;
    goto LABEL_7;
  }

  sub_18E1C5EEC();
  sub_18E2218EC();
  if (v215)
  {
    goto LABEL_677;
  }

  sub_18E1CC3B8();
  sub_18E22877C();
  if (v6 && v197 == object)
  {

LABEL_685:

    v9 = 97;
    goto LABEL_7;
  }

  sub_18E1C5EEC();
  sub_18E2218EC();
  if (v215)
  {
    goto LABEL_685;
  }

  sub_18E1CC3B8();
  if (v7 == 0xD00000000000002DLL && v197 == object)
  {
  }

  else
  {
    sub_18E1C5EEC();
    sub_18E1D4D14();
  }

  v9 = 98;
LABEL_7:
  *v3 = v9;
  return result;
}

uint64_t sub_18E1C4F14()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C4F90()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C4FE0()
{

  return _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE4costAA11CostProfileVvg_0(v1, v0);
}

void sub_18E1C5008()
{

  JUMPOUT(0x193ACD400);
}

void *sub_18E1C5040(void *a1, uint64_t a2)
{
  result = sub_18E1E15F4(a1, a2);
  v4 = *(*(*(v2 + 8) + 8) + 112);
  return result;
}

uint64_t sub_18E1C5074()
{

  return sub_18E1E8F44(v2, v0, v1);
}

uint64_t sub_18E1C5090()
{

  return swift_dynamicCast();
}

void sub_18E1C50F4(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 2;
}

__n128 *sub_18E1C5108(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C51B4()
{

  return sub_18E44F0EC();
}

uint64_t sub_18E1C51D4()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C5220()
{

  return swift_once();
}

uint64_t sub_18E1C5240(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  *(v1 + 22) = 2048;
  *(v1 + 24) = *(v3 - 312);
  return result;
}

uint64_t sub_18E1C5260()
{

  return swift_beginAccess();
}

unint64_t sub_18E1C527C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t sub_18E1C52AC()
{
  v2 = *(v0 - 176);

  return sub_18E44F1AC();
}

void sub_18E1C5318()
{
  v1 = *(v0 - 112);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

void *sub_18E1C5340(void *a1)
{
  *v1 = a1;
  a1[28] = v2;

  return memcpy(a1, v2, 0xD8uLL);
}

double sub_18E1C5364()
{
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  return result;
}

__n128 sub_18E1C53B4()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  sub_18E1C551C((v3 - 128), v0 + 16);
  sub_18E1C551C((v3 - 168), v0 + 56);
  result = *(v3 - 208);
  v5 = *(v3 - 192);
  *(v0 + 96) = result;
  *(v0 + 112) = v5;
  return result;
}

uint64_t sub_18E1C53E8()
{

  return type metadata accessor for AJAXConfiguration();
}

double sub_18E1C5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(a1 + 32) = *v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

__n128 *sub_18E1C546C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C54E0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_18E1C5500()
{

  return swift_allocObject();
}

uint64_t sub_18E1C551C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_18E1C5568()
{

  return swift_once();
}

uint64_t sub_18E1C5598()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C55D8()
{

  return sub_18E44F20C();
}

uint64_t sub_18E1C5644()
{
  *(v0 + 32) = 1;

  return sub_18E44F1CC();
}

uint64_t sub_18E1C566C(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

__n128 *sub_18E1C56A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

_OWORD *sub_18E1C56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{

  return sub_18E270D70((v25 - 128), &a25);
}

uint64_t sub_18E1C56E0(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000029;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_18E1C5720()
{
}

uint64_t sub_18E1C57BC()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C57DC()
{

  return sub_18E44E50C();
}

uint64_t sub_18E1C5854@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

__n128 *sub_18E1C5888(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

__n128 sub_18E1C58B4()
{
  result = *v0;
  v3 = v0[1].n128_u64[0];
  *(v1 - 104) = *v0;
  *(v1 - 88) = v3;
  return result;
}

void sub_18E1C58E8(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 32) = v2;

  JUMPOUT(0x193ACC600);
}

void sub_18E1C596C()
{

  sub_18E3EFF88();
}

uint64_t sub_18E1C5990()
{

  return type metadata accessor for AJAXConfiguration();
}

id sub_18E1C5A08()
{
  v2 = *(v0 - 224) | 0x8000000000000000;

  return sub_18E2462E8(0xD00000000000001BLL, v2);
}

uint64_t sub_18E1C5A2C()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C5A4C(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C5A90(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

void sub_18E1C5AD8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_18E1C5AE8()
{

  return swift_once();
}

void sub_18E1C5B2C()
{
  v2 = *(v0 + 16) + 1;

  sub_18E3EFF88();
}

uint64_t sub_18E1C5B9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C5C08()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C5C20()
{

  return swift_once();
}

uint64_t sub_18E1C5C40()
{

  return swift_once();
}

uint64_t sub_18E1C5C98()
{

  return _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE17executionContextsShyAA16ExecutionContextVGvg_0(v0, v1, v2);
}

uint64_t sub_18E1C5CBC()
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C5CE0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E1C5CFC()
{

  return sub_18E2491A4(0x5672657470616461, 0xEE00746E61697261, v0);
}

uint64_t sub_18E1C5D84(uint64_t a1)
{

  return sub_18E1E8F44(a1, v1, v2);
}

uint64_t sub_18E1C5D9C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_18E1C5DB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

void sub_18E1C5E38(uint64_t a1)
{

  sub_18E2533A8(a1, v1, v2, v3);
}

uint64_t sub_18E1C5E54(uint64_t a1)
{

  return MEMORY[0x1EEDC6098](a1, v1, v2);
}

uint64_t sub_18E1C5E70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_18E1C5EB4()
{

  return sub_18E44EFFC();
}

uint64_t sub_18E1C5EEC()
{

  return sub_18E44F3CC();
}

void *sub_18E1C5F34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xD8uLL);
}

uint64_t sub_18E1C5F54()
{
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0u;

  return sub_18E298E58(v0 - 128);
}

uint64_t sub_18E1C5F74()
{

  return swift_slowAlloc();
}

void sub_18E1C5FA4()
{
  v0[74] = 0;
  v0[76] = 0;
  v0[78] = 0;
}

unint64_t sub_18E1C5FC0()
{
  *(v3 + 16) = v0;
  v4 = *(v2 + 32);
  return v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
}

uint64_t sub_18E1C6010()
{

  return sub_18E44F26C();
}

__n128 *sub_18E1C6050(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

void *sub_18E1C6114(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xD8uLL);
}

uint64_t sub_18E1C614C@<X0>(uint64_t a1@<X8>)
{
  v3 = **(a1 - 256);
  result = v1;
  v5 = *(v2 - 296);
  return result;
}

uint64_t sub_18E1C6188()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C61BC@<X0>(char a1@<W8>)
{
  *(v1 + 416) = a1;
  result = v1 + 416;
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  return result;
}

__n128 sub_18E1C61E0()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t sub_18E1C61FC(uint64_t result)
{
  *(result + 40) = 841889841;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 841889073;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

void sub_18E1C6234(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

void sub_18E1C6260()
{
  v8 = *(v7 - 304);
  *(v7 - 376) = v2;
  *(v7 - 392) = v4;
  *(v7 - 456) = v0;
  *(v7 - 480) = v6;
  *(v7 - 464) = v5;
  *(v7 - 472) = v3;
  v9 = *(v1 + 16);
}

uint64_t sub_18E1C62EC()
{

  return sub_18E44F14C();
}

__n128 sub_18E1C630C()
{
  v2 = v0->n128_u64[1];
  v3 = v0[2].n128_u8[0];
  *(v1 - 56) = v0->n128_u8[0];
  *(v1 - 48) = v2;
  result = v0[1];
  *(v1 - 40) = result;
  *(v1 - 24) = v3;
  return result;
}

uint64_t sub_18E1C6334()
{

  return sub_18E44E6DC();
}

void sub_18E1C6358(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

unint64_t sub_18E1C638C(uint64_t a1)
{

  return sub_18E291C98(a1);
}

uint64_t sub_18E1C63E8(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = 0xE400000000000000;
  return result;
}

__n128 *sub_18E1C6434(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

void sub_18E1C6460()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1C64CC(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_18E1C6594(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  *(v1 + 112) = result;
  return result;
}

uint64_t sub_18E1C65B4@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

__n128 *sub_18E1C65C0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C6604(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(v2, a2);

  return swift_beginAccess();
}

void sub_18E1C6694()
{

  AssetBackedLLMModelBase.init(configuration:variant:)();
}

void sub_18E1C66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, char a26, int a27, char a28, int a29, char a30)
{
  *(v32 - 216) = v31;
  *(v32 - 215) = a24;
  *(v32 - 214) = a26;
  *(v32 - 213) = a28;
  *(v32 - 212) = a30;
  *(v32 - 211) = v30;
  *(v32 - 209) = BYTE2(v30);
}

unint64_t sub_18E1C670C(uint64_t a1)
{

  return sub_18E291C98(a1);
}

void sub_18E1C6730(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = v1 + ((*(v2 + 48) + 32) & ~*(v2 + 48));
  v5 = *(v2 + 40);
}

void sub_18E1C6760()
{

  JUMPOUT(0x193ACC300);
}

__n128 *sub_18E1C6788(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

id sub_18E1C67BC()
{

  return objc_allocWithZone(v0);
}

uint64_t sub_18E1C6838@<X0>(uint64_t a1@<X8>)
{
  v3 = **(a1 - 256);
  result = v1;
  v5 = *(v2 - 296);
  return result;
}

void *sub_18E1C68BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char __dst)
{

  return memcpy(&__dst, (v35 - 248), 0xC1uLL);
}

uint64_t sub_18E1C6900()
{

  return sub_18E44F26C();
}

uint64_t sub_18E1C6924(uint64_t result)
{
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  return result;
}

uint64_t sub_18E1C6948@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_18E1C69C4()
{
  result = *(v0 - 256);
  v3 = *(v1 - 296);
  return result;
}

__n128 *sub_18E1C6A44(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 3419698;
  result[6].n128_u64[0] = 0xE300000000000000;
  return result;
}

void sub_18E1C6AE8()
{

  sub_18E3EFF88();
}

uint64_t sub_18E1C6BD8()
{

  return sub_18E44F39C();
}

__n128 *sub_18E1C6C38(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v3;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  result[6].n128_u8[8] = 5;
  result[7].n128_u64[0] = 3419698;
  result[7].n128_u64[1] = 0xE300000000000000;
  *(v2 + 112) = result;
  return result;
}

__n128 *sub_18E1C6CB4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  result[6].n128_u8[8] = 5;
  result[7].n128_u64[0] = 3419698;
  result[7].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C6D24()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1C6D58()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1C6D8C()
{

  return swift_once();
}

unint64_t sub_18E1C6DAC(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 7:
    case 8:
    case 9:
    case 19:
    case 100:
    case 106:
    case 121:
    case 123:
      result = 0xD000000000000026;
      break;
    case 2:
    case 98:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD000000000000037;
      break;
    case 4:
    case 5:
    case 6:
    case 94:
      result = 0xD000000000000030;
      break;
    case 10:
    case 63:
    case 112:
    case 117:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 21:
    case 122:
      result = 0xD000000000000025;
      break;
    case 13:
    case 75:
    case 99:
    case 102:
    case 108:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD00000000000002CLL;
      break;
    case 15:
    case 17:
    case 54:
    case 60:
      result = 0xD000000000000016;
      break;
    case 16:
    case 34:
    case 44:
    case 97:
    case 120:
      result = 0xD000000000000027;
      break;
    case 18:
    case 77:
    case 101:
    case 114:
      result = 0xD000000000000020;
      break;
    case 20:
    case 61:
    case 72:
    case 84:
    case 103:
    case 104:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD000000000000039;
      break;
    case 23:
      result = 0xD000000000000046;
      break;
    case 24:
    case 26:
      result = 0xD00000000000003ELL;
      break;
    case 25:
      result = 0xD000000000000031;
      break;
    case 27:
    case 56:
    case 57:
      result = 0xD00000000000003FLL;
      break;
    case 28:
      result = 0xD00000000000004CLL;
      break;
    case 29:
      result = 0xD000000000000041;
      break;
    case 30:
      result = 0xD00000000000004ELL;
      break;
    case 31:
    case 36:
      result = 0xD000000000000040;
      break;
    case 32:
    case 35:
      result = 0xD000000000000033;
      break;
    case 33:
      result = 0xD00000000000003BLL;
      break;
    case 37:
    case 47:
    case 52:
    case 64:
    case 125:
      result = 0xD000000000000024;
      break;
    case 38:
    case 53:
    case 82:
      result = 0xD000000000000017;
      break;
    case 39:
    case 67:
    case 109:
      result = 0xD00000000000001ELL;
      break;
    case 40:
    case 62:
    case 65:
    case 83:
    case 85:
    case 105:
      result = 0xD000000000000019;
      break;
    case 41:
    case 42:
    case 46:
    case 51:
    case 86:
    case 88:
    case 91:
    case 95:
    case 115:
    case 118:
      result = sub_18E1E11C0();
      break;
    case 43:
    case 93:
    case 96:
    case 107:
      result = 0xD000000000000028;
      break;
    case 45:
    case 71:
    case 79:
    case 90:
    case 119:
      result = 0xD00000000000001ALL;
      break;
    case 48:
    case 58:
      result = 0xD00000000000002ELL;
      break;
    case 49:
      result = 0xD000000000000034;
      break;
    case 50:
      result = 0xD000000000000038;
      break;
    case 55:
    case 68:
    case 73:
    case 76:
    case 111:
      result = 0xD000000000000023;
      break;
    case 59:
      result = 0xD00000000000002FLL;
      break;
    case 66:
    case 80:
    case 124:
      result = 0xD000000000000014;
      break;
    case 69:
      result = 0xD000000000000015;
      break;
    case 70:
    case 74:
    case 78:
      result = 0xD000000000000021;
      break;
    case 81:
      result = 0xD000000000000013;
      break;
    case 87:
      result = 0xD000000000000018;
      break;
    case 89:
    case 92:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E1C7750()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C7780()
{

  return swift_once();
}

uint64_t sub_18E1C7804()
{

  return swift_once();
}

uint64_t sub_18E1C7824(uint64_t a1)
{

  return sub_18E1E8F44(a1, v1, v2);
}

unint64_t sub_18E1C78D8()
{

  return sub_18E26DBE8(v0);
}

uint64_t sub_18E1C791C()
{

  return swift_once();
}

_BYTE *sub_18E1C7960(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E1C7A2CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E1C7A5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static UseCaseIdentifier.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_18E1C6DAC(*a1);
  v5 = v4;
  if (v3 == sub_18E1C6DAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E44F3CC();
  }

  return v8 & 1;
}

double static PartnerCapabilities.ChatGPT()@<D0>(uint64_t a1@<X8>)
{
  sub_18E2706EC(&qword_1EABE0FE0, &qword_18E49D9E0);
  v2 = *(sub_18E44E79C() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18E49D9B0;
  sub_18E44E75C();
  sub_18E2706EC(&qword_1EABE0FE8, &qword_18E49D9E8);
  v6 = *(sub_18E44E72C() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18E49D9B0;
  sub_18E44E6BC();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18E49D9C0;
  sub_18E44E76C();
  sub_18E44E78C();
  sub_18E44E77C();
  *a1 = 1;
  *(a1 + 8) = 100000;
  *(a1 + 16) = v5;
  *(a1 + 24) = v9;
  *(a1 + 32) = 1;
  *&result = 100000;
  *(a1 + 40) = xmmword_18E49D9D0;
  *(a1 + 56) = &unk_1F011DEA8;
  *(a1 + 64) = &unk_1F011DED0;
  *(a1 + 72) = v10;
  *(a1 + 80) = 257;
  *(a1 + 88) = &unk_1F011DEF8;
  *(a1 + 96) = &unk_1F011DF20;
  *(a1 + 104) = &unk_1F011DF70;
  *(a1 + 112) = &unk_1F011DF98;
  *(a1 + 120) = &unk_1F011DFC0;
  *(a1 + 128) = &unk_1F011DFE8;
  return result;
}

uint64_t sub_18E1C7E6C()
{

  return swift_beginAccess();
}

void sub_18E1C7EA4(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  *(v2 + 96) = 1390000;
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
}

void sub_18E1C7EF4()
{

  JUMPOUT(0x193ACD400);
}

double sub_18E1C7F10()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t sub_18E1C7F2C()
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C7F64()
{
  v2 = v0[13];
  v1 = v0[14];
  sub_18E1E15F4(v0 + 10, v2);
  v3 = *(*(*(v1 + 8) + 8) + 112);
  return v2;
}

uint64_t sub_18E1C8078()
{

  return sub_18E44F3CC();
}

void *sub_18E1C80C0(int a1, unsigned __int8 *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *a2;

  return memcpy(&__dst, v10, 0xD8uLL);
}

uint64_t Capabilities.imageGeneration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(a1, (v1 + 32), 0x68uLL);
  return sub_18E1C867C(__dst, &v4);
}

void sub_18E1C81D0()
{
  v1 = *(v0 - 112);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

void sub_18E1C820C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

double sub_18E1C824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_18E26C3FC(v16, &a16);
}

uint64_t sub_18E1C828C(unint64_t *a1)
{

  return sub_18E1E1638(a1, v1, v2);
}

uint64_t sub_18E1C82DC()
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C8328(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C8374()
{

  return swift_deallocPartialClassInstance();
}

void sub_18E1C83A8()
{
  *(v0 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  *(*(v0 + 48) + v3) = v1;
  *(*(v0 + 56) + 8 * v3) = v2;
}

uint64_t sub_18E1C842C()
{

  return swift_once();
}

uint64_t sub_18E1C844C()
{

  return swift_once();
}

uint64_t sub_18E1C84B4()
{

  return sub_18E44F2AC();
}

uint64_t sub_18E1C8540@<X0>(char a1@<W8>)
{
  *(v1 + 416) = a1;
  result = v1 + 416;
  v3 = *(v1 + 216);
  return result;
}

uint64_t sub_18E1C8558()
{

  return swift_allocError();
}

void *sub_18E1C8570(void *a1, uint64_t a2)
{
  result = sub_18E1E15F4(a1, a2);
  v4 = *(*(v2 + 8) + 24);
  return result;
}

uint64_t sub_18E1C85D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C86EC()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1C870C()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_18E1C8734@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F20C();
}

uint64_t sub_18E1C87AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = a2;
  *(result + 96) = 0xE400000000000000;
  *(v2 + 112) = result;
  return result;
}

id sub_18E1C87D4()
{

  return objc_allocWithZone(v0);
}

uint64_t sub_18E1C882C()
{

  return sub_18E201B68(v0);
}

void sub_18E1C884C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = *(v2 - 312);
}

void sub_18E1C8880()
{
  v3 = *(v1 + 24);

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_18E1C88A0()
{

  return sub_18E44EB4C();
}

uint64_t sub_18E1C88FC@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 16);
  *v3 = v5;
  v3[1] = a1;
  sub_18E1C551C((v1 + 40), (v3 + 2));
  v7 = *(v2 + 8);
  return v4;
}

unint64_t sub_18E1C892C(uint64_t a1)
{

  return sub_18E1D5D44(a1);
}

uint64_t sub_18E1C8950()
{

  return swift_once();
}

id sub_18E1C89DC()
{

  return [v0 (v3 + 888)];
}

__n128 sub_18E1C89FC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v11 + 56) = a1;
  a1[1].n128_u64[0] = v9;
  a1[1].n128_u64[1] = v10;
  result = a9;
  a1[2] = a9;
  return result;
}

void sub_18E1C8A14()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E1C8A38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x193ACCC20);
}

uint64_t sub_18E1C8A68()
{
}

uint64_t sub_18E1C8AB4()
{

  return swift_once();
}

__n128 sub_18E1C8AD4()
{
  result = *(v1 - 248);
  v3 = *(v1 - 232);
  *(v0 + 136) = result;
  *(v0 + 152) = v3;
  return result;
}

uint64_t sub_18E1C8B08()
{

  return sub_18E44F26C();
}

__n128 *sub_18E1C8B30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v3;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  *(v2 + 112) = result;
  return result;
}

uint64_t sub_18E1C8B84(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = 0xE400000000000000;
  return result;
}

void *sub_18E1C8BF4(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *a1;

  return memcpy(&__dst, v10, 0xD8uLL);
}

uint64_t sub_18E1C8C1C()
{

  return swift_once();
}

uint64_t sub_18E1C8C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = **(a1 - 256);
  result = v1;
  v5 = *(v2 - 296);
  return result;
}

uint64_t sub_18E1C8C94(void *a1)
{
  sub_18E1E15F4(a1, v1);
  v3 = *(v2 + 24);
  return v1;
}

id sub_18E1C8CC0(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 240);

  return [v5 a2];
}

void sub_18E1C8CE0(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

uint64_t sub_18E1C8D14(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C8DA0()
{

  return sub_18E44F0EC();
}

uint64_t sub_18E1C8DC0()
{
}

uint64_t sub_18E1C8DE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_18E1C8DF0()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C8E7C(uint64_t result)
{
  *(result + 40) = 875444273;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 875443505;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C8EE8()
{

  return swift_allocError();
}

void sub_18E1C8F4C()
{
  *(v0 + 4) = v1;
  v3 = *(v2 - 328);
  *(v0 + 12) = 2048;
  *(v0 + 14) = *(v2 - 312);
}

uint64_t sub_18E1C8F88()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C8FA8()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1C9020@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = a2;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C9074@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 112) = *a1;
  *(v4 - 96) = a2;
  v5 = *(v3 + 16);
  return v2;
}

ModelCatalog::ResourceBundleQuery __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResourceBundleQuery.init(configurationIdentifier:arguments:)(Swift::String configurationIdentifier, Swift::OpaquePointer_optional arguments)
{
  rawValue = arguments.value._rawValue;
  object = configurationIdentifier._object;
  countAndFlagsBits = configurationIdentifier._countAndFlagsBits;
  v8 = v2;
  v57 = configurationIdentifier._countAndFlagsBits;
  if (!arguments.value._rawValue)
  {

LABEL_22:
    if (qword_1ED6A8418 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  v52 = v2;
  v53 = v3;
  v8 = arguments.value._rawValue + 64;
  v9 = *(arguments.value._rawValue + 8);
  v10 = *(arguments.value._rawValue + 32);
  sub_18E1CF244();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v54 = object;

  object = 0;
  v55 = v15;
  v56 = rawValue;
  if (!v13)
  {
LABEL_3:
    while (1)
    {
      v16 = object + 1;
      if (__OFADD__(object, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        object = v54;
        v8 = v52;
        goto LABEL_22;
      }

      v13 = v8[v16];
      ++object;
      if (v13)
      {
        object = v16;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_23:
    v43 = sub_18E44E83C();
    sub_18E1C95EC(v43, qword_1ED6A9858);

    v44 = sub_18E44E80C();
    v45 = sub_18E44EE2C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59[0] = v58;
      *v46 = 136315394;
      v47 = sub_18E1C9624(countAndFlagsBits, object, v59);

      *(v46 + 4) = v47;
      *(v46 + 12) = 2080;
      v59[10] = rawValue;
      sub_18E2706EC(&qword_1EABE0DA8, &unk_18E49CE10);
      v48 = sub_18E44EB0C();
      v50 = v8;
      v51 = sub_18E1C9624(v48, v49, v59);

      *(v46 + 14) = v51;
      v8 = v50;
      countAndFlagsBits = v57;
      _os_log_impl(&dword_18E1C1000, v44, v45, "ResourceBundleQuery: Creating with configuration identifier: %s, arguments: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ACD400](v58, -1, -1);
      MEMORY[0x193ACD400](v46, -1, -1);
    }

    else
    {
    }

    *v8 = countAndFlagsBits;
    v8[1] = object;
    v8[2] = rawValue;
    goto LABEL_29;
  }

LABEL_7:
  v17 = rawValue[6];
  v18 = rawValue[7];
  sub_18E1E64AC((object << 10) | (16 * __clz(__rbit64(v13))));
  v19 = qword_1ED6A8340;

  if (v19 != -1)
  {
    sub_18E1C663C();
    swift_once();
  }

  v20 = qword_1ED6A9848;
  if (*(qword_1ED6A9848 + 16))
  {
    v13 &= v13 - 1;
    v21 = *(qword_1ED6A9848 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    sub_18E44F4CC();
    v22 = *(v20 + 32);
    sub_18E1C5B14();
    v25 = ~v24;
    while (1)
    {
      v26 = v23 & v25;
      if (((*(v20 + 56 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v25)) & 1) == 0)
      {
        break;
      }

      v27 = (*(v20 + 48) + 16 * v26);
      if (*v27 != countAndFlagsBits || v27[1] != v4)
      {
        v29 = sub_18E44F3CC();
        v23 = v26 + 1;
        if ((v29 & 1) == 0)
        {
          continue;
        }
      }

      rawValue = v56;
      countAndFlagsBits = v57;
      v15 = v55;
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  type metadata accessor for CatalogErrors.QueryError(0);
  sub_18E270600();
  sub_18E1CE978();

  sub_18E1D62E4();

  sub_18E1CC38C();
  v30 = sub_18E44EDBC();
  MEMORY[0x193ACC300](v30);

  sub_18E1E2CE8(v31, v32, v33, v34, v35, v36, v37, v38, v52, v53, v54, v55, v56, v57, v15, v59[0], v59[1]);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_29:
  result.arguments.value._rawValue = v41;
  result.configurationIdentifier._object = v40;
  result.configurationIdentifier._countAndFlagsBits = v39;
  result.arguments.is_nil = v42;
  return result;
}

void sub_18E1C94FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_18E1C9574(uint64_t result)
{
  *(result + 40) = v1;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  return result;
}

uint64_t sub_18E1C9588(uint64_t result)
{
  *(result + 40) = 841889841;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 841889073;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C95AC(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

uint64_t sub_18E1C95EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18E1C9624(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_18E23458C();

  v6 = sub_18E1C9834(v11, 0, 0, 1, v4, v3);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v4;
    v11[1] = v3;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_18E1C97D8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_18E1C9934(v11);
  return v7;
}

uint64_t sub_18E1C970C()
{

  return sub_18E44E6DC();
}

void sub_18E1C973C()
{

  sub_18E1D46CC();
}

uint64_t sub_18E1C97B8()
{
  v2 = *(v0 - 360);
}

uint64_t sub_18E1C97D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18E1C9834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18E249828(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_18E44F07C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_18E1C9934(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 initializeBufferWithCopyOfBuffer for AssetSpecificationVersion(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of CatalogClientProtocol.queryResourceBundle(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))();
}

{
  return (*(a3 + 48))();
}

void CatalogClientProtocol.queryResourceBundle(with:)()
{
  sub_18E1C570C();
  v2 = sub_18E44E54C();
  v3 = sub_18E1C4EAC(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C58B4();
  ResourceBundleQuery.toURI()();
  if (!v0)
  {
    v6 = *(v1 + 48);
    v7 = sub_18E1D61F8();
    v8(v7);
    v9 = sub_18E1C8D64();
    v10(v9);
  }
}

{
  sub_18E1C570C();
  type metadata accessor for CatalogIndex();
  static CatalogIndex.resolveResourceBundleQueryURI(uri:)();
  if (!v0)
  {
    (*(v1 + 16))();
  }
}

void sub_18E1C9AF8()
{
  sub_18E1C62A0();
  v75 = v2;
  v76 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v11 = sub_18E44E2BC();
  v82 = sub_18E1C4EAC(v11);
  v83 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v82);
  sub_18E1C4EDC();
  v78 = v16 - v15;
  v17 = sub_18E44E38C();
  v18 = sub_18E1C4EAC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C4EDC();
  v25 = v24 - v23;
  v27 = *v0;
  v26 = v0[1];
  v28 = v0[2];
  sub_18E44E37C();

  v73 = v26;
  v74 = v27;
  MEMORY[0x193ACBAD0](v27, v26);
  if (v28 && (v29 = *(v28 + 16)) != 0)
  {
    v68 = v10;
    v69 = v4;
    v70 = v25;
    v71 = v20;
    v72 = v17;
    v87[0] = MEMORY[0x1E69E7CC0];
    sub_18E1CA37C();
    v30 = v87[0];
    v33 = sub_18E1CA7A0(v28);
    v34 = 0;
    v90 = v28 + 64;
    v80 = v29;
    v81 = v83 + 32;
    v79 = v31;
    v77 = v28 + 72;
    v35 = v28;
    v36 = v78;
    do
    {
      if (v33 < 0 || v33 >= 1 << *(v35 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v37 = v33 >> 6;
      if ((*(v90 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v35 + 36) != v31)
      {
        goto LABEL_32;
      }

      v85 = v34;
      v86 = v31;
      v84 = v32;
      v38 = *(v35 + 56);
      v39 = (*(v35 + 48) + 16 * v33);
      v40 = v35;
      v41 = *v39;
      v42 = v39[1];
      v43 = (v38 + 16 * v33);
      v44 = *v43;
      v45 = v43[1];

      sub_18E44E28C();

      v87[0] = v30;
      v46 = *(v30 + 16);
      if (v46 >= *(v30 + 24) >> 1)
      {
        sub_18E1CA37C();
        v30 = v87[0];
      }

      *(v30 + 16) = v46 + 1;
      v47 = *(v83 + 80);
      sub_18E1C96E4();
      (*(v49 + 32))(v30 + v48 + *(v49 + 72) * v46, v36);
      v50 = 1 << *(v40 + 32);
      if (v33 >= v50)
      {
        goto LABEL_33;
      }

      v51 = *(v90 + 8 * v37);
      if ((v51 & (1 << v33)) == 0)
      {
        goto LABEL_34;
      }

      v35 = v40;
      if (*(v40 + 36) != v86)
      {
        goto LABEL_35;
      }

      v52 = v51 & (-2 << (v33 & 0x3F));
      if (v52)
      {
        v50 = __clz(__rbit64(v52)) | v33 & 0x7FFFFFFFFFFFFFC0;
        v53 = v80;
        v54 = v85;
      }

      else
      {
        v55 = v37 << 6;
        v56 = v37 + 1;
        v57 = (v77 + 8 * v37);
        v53 = v80;
        while (v56 < (v50 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_18E249F2C(v33, v86, v84 & 1);
            v50 = __clz(__rbit64(v58)) + v55;
            goto LABEL_20;
          }
        }

        sub_18E249F2C(v33, v86, v84 & 1);
LABEL_20:
        v36 = v78;
        v54 = v85;
      }

      v32 = 0;
      v34 = v54 + 1;
      v33 = v50;
      v31 = v79;
    }

    while (v34 != v53);
    v60 = v35;
    v87[0] = v30;

    v61 = v76;
    sub_18E1CA7DC(v87);
    v10 = v68;
    v76 = v61;
    if (!v61)
    {

      v25 = v70;
      sub_18E44E2FC();
      v20 = v71;
      v17 = v72;
      v4 = v69;
      goto LABEL_26;
    }

LABEL_36:

    __break(1u);
  }

  else
  {
    v60 = v28;
LABEL_26:
    sub_18E44E32C();
    v62 = sub_18E44E54C();
    if (sub_18E1CAF28(v10, 1, v62) == 1)
    {
      sub_18E1E8EEC(v10, &qword_1EABE2FE0, &qword_18E49CE00);
      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E270600();
      swift_allocError();
      v64 = v63;
      v65 = (v63 + *(sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08) + 48));
      (*(v20 + 16))(v64, v25, v17);
      v88 = 0;
      v89 = 0xE000000000000000;
      v87[0] = v74;
      v87[1] = v73;
      v87[2] = v60;
      sub_18E44F0DC();
      v66 = v89;
      *v65 = v88;
      v65[1] = v66;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v20 + 8))(v25, v17);
    }

    else
    {
      (*(v20 + 8))(v25, v17);
      (*(*(v62 - 8) + 32))(v4, v10, v62);
    }

    sub_18E1C6650();
  }
}

unint64_t sub_18E1CA0FC()
{
  v2 = *v0;

  return sub_18E1CBD4C();
}

double sub_18E1CA16C()
{
  *(v0 + 168) = 0;
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

void sub_18E1CA184()
{
  *(v2 + 16) = v1;
  v4 = *(v0 + 32);
  v3 = v0 + 32;
  v5 = v2 + ((*(v3 + 48) + 32) & ~*(v3 + 48));
  v6 = *(v3 + 40);
}

__n128 *sub_18E1CA1C0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 875444273;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 875443505;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

void sub_18E1CA1EC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t sub_18E1CA1F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

double sub_18E1CA298()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  return result;
}

uint64_t sub_18E1CA340(uint64_t a1)
{
  *(v3 - 136) = a1;
  *v1 = *(v3 - 432);
  v5 = *(v3 - 368);

  return sub_18E1C9624(v5, v2, (v3 - 136));
}

void sub_18E1CA37C()
{
  v1 = *v0;
  sub_18E1C6850();
  sub_18E1CA3C4();
  *v0 = v2;
}

void sub_18E1CA3C4()
{
  sub_18E1C575C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_18E1C5534();
    if (v13 != v14)
    {
      sub_18E1E1CA8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_18E2706EC(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(*(v6(0) - 8) + 80);
  sub_18E1C96E4();
  if (v10)
  {
    sub_18E26E004(v8 + v24, v15, v20 + v24, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_18E1C5544();
}

uint64_t sub_18E1CA578()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_18E2886E4(v3, type metadata accessor for RawGuardrailResult);
}

void sub_18E1CA5D4()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_18E1CA614(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 96) = 0;
  *(v3 + 101) = 0;
}

uint64_t sub_18E1CA644(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

void sub_18E1CA684()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 288);
  v3 = *(v0 - 152);
  v4 = *(v0 - 216);
}

void *sub_18E1CA720(void *a1)
{
  *v1 = a1;

  return memcpy(a1, v2, 0xD8uLL);
}

uint64_t sub_18E1CA740(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 100000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1CA780()
{

  return swift_allocObject();
}

uint64_t sub_18E1CA7A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_18E1C5B14();
  result = sub_18E44EF5C();
  v4 = *(a1 + 36);
  return result;
}

void sub_18E1CA7DC(uint64_t *a1)
{
  v2 = sub_18E44E2BC();
  sub_18E1C5B08(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CA880(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_18E1CABA8(v8);
  *a1 = v5;
}

void sub_18E1CA8D0()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18E44E2BC();
  v9 = sub_18E1C4EAC(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C64E0();
  v54 = v12;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1CA564();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v46 = v5;
  if (v3 != v5)
  {
    v19 = v16;
    v20 = *v1;
    v22 = *(v15 + 16);
    v21 = v15 + 16;
    v23 = *(v21 + 56);
    v55 = (v21 - 8);
    v56 = v22;
    v52 = (v21 + 16);
    v53 = v20;
    v24 = v20 + v23 * (v3 - 1);
    v51 = -v23;
    v25 = v7 - v3;
    v45 = v23;
    v26 = v20 + v23 * v3;
    while (2)
    {
      v49 = v24;
      v50 = v3;
      v47 = v26;
      v48 = v25;
      v27 = v24;
      while (1)
      {
        v28 = v56;
        v56(v18, v26, v8);
        v28(v19, v27, v8);
        v29 = sub_18E44E29C();
        v30 = v18;
        v31 = v19;
        v33 = v32;
        if (v29 == sub_18E44E29C() && v33 == v34)
        {
          break;
        }

        v36 = sub_18E221AF0();

        v37 = *v55;
        (*v55)(v31, v8);
        v38 = sub_18E1C89D0();
        v37(v38);
        v19 = v31;
        v18 = v30;
        if (v36)
        {
          if (!v53)
          {
            __break(1u);
            return;
          }

          v39 = *v52;
          v40 = v54;
          (*v52)(v54, v26, v8);
          swift_arrayInitWithTakeFrontToBack();
          v39(v27, v40, v8);
          v27 += v51;
          v26 += v51;
          if (!__CFADD__(v25++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v42 = *v55;
      (*v55)(v31, v8);
      v43 = sub_18E1C89D0();
      v42(v43);
      v19 = v31;
      v18 = v30;
LABEL_14:
      v3 = v50 + 1;
      v24 = v49 + v45;
      v25 = v48 - 1;
      v26 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  sub_18E1C6650();
}

void sub_18E1CABA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_18E44F38C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E44E2BC();
        v3 = sub_18E44ECCC();
        *(v3 + 16) = v2;
      }

      v4 = sub_18E44E2BC();
      sub_18E1C5B08(v4);
      v6 = *(v5 + 80);
      sub_18E1C96E4();
      sub_18E26E0E8();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_18E1CA8D0();
  }
}

uint64_t sub_18E1CAD2C()
{

  return swift_dynamicCast();
}

uint64_t sub_18E1CAD4C(void *a1)
{
  sub_18E1E15F4(a1, v1);
  v3 = *(v2 + 24);
  return v1;
}

__n128 sub_18E1CAD88(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u8[0] = 2;
  a1[2].n128_u64[1] = 875443505;
  a1[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CADF8()
{
  *(v1 - 344) = v0;

  return swift_slowAlloc();
}

uint64_t sub_18E1CAE34()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CAEE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = __clz(v2) | (a2 << 6);
  v5 = (*(result + 48) + 16 * v4);
  v3[26] = *v5;
  v3[27] = v5[1];
  v3[28] = *(*(result + 56) + 8 * v4);
  return result;
}

uint64_t sub_18E1CAF84()
{

  return sub_18E44F3CC();
}

void *sub_18E1CAFC8(void *__src)
{

  return memcpy((v1 - 248), __src, 0xC1uLL);
}

uint64_t sub_18E1CB024(uint64_t a1, uint64_t a2)
{

  return sub_18E2FB4EC(a1, a2, v2, v3);
}

__n128 *sub_18E1CB03C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

id sub_18E1CB068(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_18E1CB084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = a2 + 257;
  *(result + 120) = v2;
  return result;
}

uint64_t sub_18E1CB0E4(uint64_t a1)
{

  return MEMORY[0x1EEDC6098](a1, v1, v2);
}

uint64_t type metadata accessor for CatalogIndex()
{
  result = qword_1ED6A9500;
  if (!qword_1ED6A9500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CatalogIndex.resolveResourceBundleQueryURI(uri:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_18E44E38C();
  v7 = sub_18E1C4EAC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v14 = v13 - v12;
  v121 = sub_18E44E2BC();
  v15 = sub_18E1C4EAC(v121);
  v123 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C86C0();
  v120 = v19 - v20;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v21);
  v119 = v101 - v22;
  v23 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v23);
  v25 = *(v24 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1CAF50();
  v128 = v27;
  v28 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v28);
  v30 = *(v29 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1CAF50();
  v127 = v32;
  v33 = sub_18E44E54C();
  v34 = sub_18E1C4EAC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1C4EDC();
  v129 = v40 - v39;
  v133 = sub_18E44E49C();
  v42 = v41;
  v126 = sub_18E44E4FC();
  v130 = v43;
  if (!v43)
  {
    goto LABEL_7;
  }

  if (qword_1ED6A7EF0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v124 = v42;
  v44 = sub_18E21654C(v133, v42, qword_1ED6A7DA0);
  if (!v44)
  {

    goto LABEL_7;
  }

  v45 = v44;
  static VariantHelpers.isResourceBundleQueryURIResolved(uri:)();
  if (v46)
  {

    sub_18E44E48C();
LABEL_7:
    sub_18E1C6650();
    return;
  }

  v117 = v3;
  v106 = v5;
  v107 = v14;
  v118 = v6;
  v6 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v14 = v48 & *(v45 + 64);
  v49 = (v47 + 63) >> 6;
  v116 = (v36 + 32);
  v108 = v9;
  v111 = (v9 + 8);
  v105 = v123 + 16;
  v104 = v123 + 8;
  v115 = (v36 + 8);
  v103 = v123 + 32;
  v122 = v45;

  v42 = 0;
  v109 = MEMORY[0x1E69E7CC0];
  v113 = v49;
  v114 = v6;
  while (2)
  {
    v50 = v42;
    if (!v14)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v42 = v50;
LABEL_16:
      v51 = (v42 << 10) | (16 * __clz(__rbit64(v14)));
      v52 = *(v122 + 56);
      v53 = (*(v122 + 48) + v51);
      v36 = v53[1];
      v112 = *v53;
      v54 = (v52 + v51);
      v9 = v54[1];
      v131 = *v54;
      v132 = v9;
      swift_bridgeObjectRetain_n();

      MEMORY[0x193ACC300](63, 0xE100000000000000);
      MEMORY[0x193ACC300](v126, v130);
      v55 = v131;
      v56 = v127;
      v125 = v132;
      sub_18E44E50C();
      v57 = sub_18E1D4DCC();
      if (sub_18E1CAF28(v57, v58, v33) == 1)
      {
        sub_18E1CD978();

        sub_18E1E8EEC(v56, &qword_1EABE2FE0, &qword_18E49CE00);
        type metadata accessor for CatalogErrors.QueryError(0);
        sub_18E1C6D0C();
        sub_18E3F6D08(v91, v92);
        sub_18E1C8558();
        v94 = v93;
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_18E44EFFC();
        MEMORY[0x193ACC300](0xD000000000000036, 0x800000018E477A60);
        sub_18E3F6D08(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
        v95 = sub_18E44F39C();
        MEMORY[0x193ACC300](v95);

        v96 = v131;
        v97 = v132;
        v98 = v125;
        *v94 = v55;
        v94[1] = v98;
        v94[2] = v96;
        v94[3] = v97;
        sub_18E1CF9A0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_7;
      }

      (*v116)(v129, v56, v33);
      if (qword_1ED6A8360 != -1)
      {
        swift_once();
      }

      static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();
      if (v2)
      {

        v99 = sub_18E1E315C();
        v100(v99, v33);
        sub_18E1CD978();

        goto LABEL_7;
      }

      v3 = v59;
      v60 = v33;
      v14 &= v14 - 1;
      v5 = v128;
      sub_18E44E35C();
      v61 = sub_18E1D4DCC();
      v62 = v118;
      if (sub_18E1CAF28(v61, v63, v118) != 1)
      {
        break;
      }

      v64 = sub_18E1E315C();
      v33 = v60;
      v65(v64, v60);

      sub_18E1E8EEC(v5, &qword_1EABE0DB0, &unk_18E4E24B0);
      v50 = v42;
LABEL_24:
      v49 = v113;
      v6 = v114;
      if (!v14)
      {
        while (1)
        {
LABEL_13:
          v42 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v42 >= v49)
          {
            break;
          }

          v14 = *(v6 + 8 * v42);
          ++v50;
          if (v14)
          {
            goto LABEL_16;
          }
        }

        v81 = v107;
        sub_18E44E37C();
        MEMORY[0x193ACBAD0](v133, v124);
        if (*(v109 + 16))
        {
          v131 = v109;

          sub_18E3F05D4(&v131);
          v82 = v118;
          v83 = v108;
          if (v2)
          {
            goto LABEL_46;
          }

          sub_18E44E2FC();
        }

        else
        {

          v82 = v118;
          v83 = v108;
        }

        sub_18E44E36C();
        if (v84)
        {
          (*v111)(v81, v82);
        }

        else
        {
          type metadata accessor for CatalogErrors.QueryError(0);
          sub_18E1C6D0C();
          sub_18E3F6D08(v85, v86);
          sub_18E1C8EE8();
          v88 = v87;
          v89 = (v87 + *(sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08) + 48));
          (*(v83 + 16))(v88, v81, v82);
          sub_18E1CA5A4();
          *v89 = 0xD00000000000001ELL;
          v89[1] = v90;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v83 + 8))(v81, v82);
        }

        goto LABEL_7;
      }
    }

    v110 = 0;
    v5 = v128;
    v2 = sub_18E44E2EC();
    (*v111)(v128, v62);
    if (!v2)
    {
      v66 = sub_18E1E315C();
      v33 = v60;
      v67(v66, v60);

      v50 = v42;
      v2 = v110;
      goto LABEL_24;
    }

    if (*(v2 + 2))
    {
      v33 = v60;
      v68 = v123;
      v69 = *(v123 + 16);
      v102 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v70 = v119;
      v69(v119, &v2[v102], v121);
      v101[1] = sub_18E44E2AC();
      v71 = *(v68 + 8);
      v73 = v72;
      v71(v70, v121);
      if (v73)
      {

        v131 = v112;
        v132 = v36;
        v74 = sub_18E1E1244(0x6156u);
        MEMORY[0x193ACC300](v74, 0xE700000000000000);
        sub_18E44E28C();

        sub_18E1CD978();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = *(v109 + 16);
          sub_18E1CC468();
          sub_18E3EF9F0();
          v109 = v79;
        }

        v36 = v129;
        v5 = *(v109 + 16);
        v76 = *(v109 + 24);
        if (v5 >= v76 >> 1)
        {
          sub_18E1C8C60(v76);
          sub_18E3EF9F0();
          v109 = v80;
        }

        (*v115)(v36, v33);
        v77 = v109;
        *(v109 + 16) = v5 + 1;
        (*(v123 + 32))(v77 + v102 + *(v123 + 72) * v5, v120, v121);
        v2 = v110;
        v49 = v113;
        continue;
      }
    }

    else
    {
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_46:

  __break(1u);
}

unint64_t sub_18E1CBD4C()
{
  sub_18E23458C();
  v1 = *(v0 + 40);
  sub_18E44F48C();
  sub_18E1CAE1C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  v2 = sub_18E1D0080();

  return sub_18E1CBEE8(v2, v3, v4);
}

uint64_t sub_18E1CBDB8(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  return result;
}

uint64_t sub_18E1CBDCC(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_18E1CBDE8()
{

  return swift_allocObject();
}

uint64_t sub_18E1CBE48()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  *(v0 + 32) = *v1;
  *(v0 + 40) = result;
  *(v0 + 48) = v3;
  return result;
}

uint64_t sub_18E1CBE5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  return result;
}

uint64_t sub_18E1CBE80()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_18E42BBD4;

  return swift_continuation_init();
}

uint64_t sub_18E1CBEB4(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

unint64_t sub_18E1CBEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18E44F3CC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void static VariantHelpers.isResourceBundleQueryURIResolved(uri:)()
{
  sub_18E1C575C();
  v1 = sub_18E44E2BC();
  v2 = sub_18E1C4EAC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  v10 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  v11 = sub_18E1C5B08(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C86C0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C89A8();
  sub_18E44E31C();
  sub_18E1CC250(v0, v16);
  v18 = sub_18E44E38C();
  v19 = sub_18E1D4DCC();
  if (sub_18E1CAF28(v19, v20, v18) == 1)
  {
    sub_18E1E8EEC(v0, &qword_1EABE0DB0, &unk_18E4E24B0);
    v21 = sub_18E208090();
LABEL_11:
    sub_18E1E8EEC(v21, v22, &unk_18E4E24B0);
    goto LABEL_12;
  }

  v23 = sub_18E44E2EC();
  sub_18E1C82B8(v18);
  (*(v24 + 8))(v16, v18);
  if (!v23)
  {
    v22 = &qword_1EABE0DB0;
    v21 = v0;
    goto LABEL_11;
  }

  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = 0;
    while (v25 != v26)
    {
      if (v26 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      v27 = *(v4 + 80);
      sub_18E1C96E4();
      (*(v4 + 16))(v9, v23 + v28 + *(v4 + 72) * v26++, v1);
      sub_18E44E29C();
      sub_18E1E1244(0x6156u);
      v29 = sub_18E44EBFC();

      (*(v4 + 8))(v9, v1);
      if ((v29 & 1) == 0)
      {
        break;
      }
    }
  }

  sub_18E1E8EEC(v0, &qword_1EABE0DB0, &unk_18E4E24B0);

LABEL_12:
  sub_18E1C5544();
}

uint64_t sub_18E1CC250(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1CC2D0()
{

  return swift_dynamicCast();
}

__n128 sub_18E1CC2F0()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  *(v0 - 256) = *(v0 - 192);
  result = *(v0 - 182);
  *(v0 - 246) = result;
  return result;
}

uint64_t sub_18E1CC324()
{
  v2 = *(v0 - 96);
}

uint64_t sub_18E1CC340(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E1D5BCC(a1, a2, a3);
  sub_18E1C4EEC(v4);
  (*(v5 + 8))(v3);
  return v3;
}

void sub_18E1CC428(uint64_t a1@<X8>)
{
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

uint64_t sub_18E1CC4A0()
{
}

uint64_t sub_18E1CC4C8()
{

  return sub_18E44E25C();
}

uint64_t sub_18E1CC534@<X0>(void *a1@<X8>)
{
  v1[25] = a1[4];
  v1[26] = a1[5];
  v1[27] = a1[6];
}

void static CatalogIndex.resolveResourceQueryURIComponents(uri:variantResolverMappings:)()
{
  sub_18E1C62A0();
  v184 = v2;
  v185 = v0;
  v4 = v3;
  v5 = sub_18E44E2BC();
  v6 = sub_18E1C4EAC(v5);
  v186 = v7;
  v187 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C86C0();
  v188 = v10 - v11;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v12);
  v177 = &v163 - v13;
  sub_18E1C6668();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v163 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v180 = &v163 - v18;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C89A8();
  v20 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  v21 = sub_18E1C5B08(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_18E1C86C0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v163 - v28;
  v181 = sub_18E44E49C();
  v183 = v30;
  v178 = v4;
  sub_18E44E31C();
  sub_18E1CC250(v29, v26);
  v31 = sub_18E44E38C();
  v32 = sub_18E1CAF28(v26, 1, v31);
  v182 = v29;
  if (v32 == 1)
  {
    sub_18E1E8EEC(v26, &qword_1EABE0DB0, &unk_18E4E24B0);
  }

  else
  {
    v33 = sub_18E44E2EC();
    sub_18E1C82B8(v31);
    (*(v34 + 8))(v26, v31);
    if (v33)
    {
      goto LABEL_5;
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v193 = v33;
  if (*(v33 + 16) != 1)
  {
    goto LABEL_11;
  }

  v176 = v17;
  v35 = v186;
  v36 = (*(v186 + 80) + 32) & ~*(v186 + 80);
  v37 = *(v186 + 16);
  v37(v1, v33 + v36, v187);
  v38 = sub_18E44E29C();
  v40 = v39;
  v41 = *(v35 + 8);
  v42 = sub_18E1CF9A0();
  v41(v42);
  sub_18E1E381C();
  if (v38 == v43 && v40 == 0xE700000000000000)
  {

    v46 = v193;
LABEL_72:
    v108 = v180;
    v109 = v187;
    v37(v180, v46 + v36, v187);

    sub_18E44E2AC();
    v17 = v110;
    (v41)(v108, v109);
    if (v17)
    {
      v111 = sub_18E44EB5C();
      v112 = v182;
      if (v111 > 0)
      {
        goto LABEL_79;
      }

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      sub_18E3F6D08(v123, v124);
      sub_18E1C8EE8();
      v126 = v125;
      v127 = sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      v128 = sub_18E1D0240(v127);
      sub_18E1C4EEC(v128);
      (*(v129 + 16))(v126, v178);
      sub_18E1CA5A4();
      *v17 = 0xD000000000000039;
      v17[1] = v130;
      sub_18E208090();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v131 = v112;
    }

    else
    {

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      sub_18E3F6D08(v113, v114);
      sub_18E1C8EE8();
      v116 = v115;
      v117 = sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      v118 = sub_18E1D0240(v117);
      sub_18E1C4EEC(v118);
      (*(v119 + 16))(v116, v178);
      sub_18E1C6990();
      v122 = v121 + 35;
LABEL_82:
      *v17 = v122;
      v17[1] = v120;
      sub_18E208090();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v131 = v182;
    }

    sub_18E1E8EEC(v131, &qword_1EABE0DB0, &unk_18E4E24B0);
    goto LABEL_84;
  }

  sub_18E1D0380();
  v45 = sub_18E44F3CC();

  v46 = v193;
  v17 = v176;
  if (v45)
  {
    goto LABEL_72;
  }

LABEL_11:
  v47 = sub_18E21654C(v181, v183, v184);
  if (!v47)
  {
    sub_18E21D184();

    v112 = v182;
LABEL_79:
    sub_18E1E8EEC(v112, &qword_1EABE0DB0, &unk_18E4E24B0);
LABEL_84:
    sub_18E1C6650();
    return;
  }

  v48 = v185;
  if (!*(v47 + 16))
  {
    sub_18E21D184();

    v112 = v182;
    goto LABEL_79;
  }

  v49 = 0;
  v50 = v47 + 64;
  v51 = 1 << *(v47 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v47 + 64);
  v54 = (v51 + 63) >> 6;
  v179 = v186 + 16;
  v180 = (v186 + 8);
  v167 = (v186 + 32);
LABEL_17:
  if (v53)
  {
    v164 = v54;
    v185 = v48;
    v165 = v50;
    v176 = v17;
    goto LABEL_23;
  }

  do
  {
    v55 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_89;
    }

    if (v55 >= v54)
    {

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      sub_18E3F6D08(v132, v133);
      sub_18E1C8EE8();
      v135 = v134;
      v136 = sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      v137 = sub_18E1D0240(v136);
      sub_18E1C4EEC(v137);
      (*(v138 + 16))(v135, v178);
      sub_18E1C6990();
      v122 = v139 + 24;
      goto LABEL_82;
    }

    v53 = *(v50 + 8 * v55);
    ++v49;
  }

  while (!v53);
  v164 = v54;
  v185 = v48;
  v165 = v50;
  v176 = v17;
  v49 = v55;
LABEL_23:
  v56 = __clz(__rbit64(v53));
  v53 &= v53 - 1;
  v57 = v56 | (v49 << 6);
  v169 = v47;
  v58 = (*(v47 + 48) + 16 * v57);
  v59 = *(*(v47 + 56) + 8 * v57);
  v60 = *(v59 + 64);
  v172 = v59 + 64;
  v61 = *v58;
  v62 = v58[1];
  v63 = 1 << *(v59 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & v60;
  v171 = (v63 + 63) >> 6;
  v168 = v61;
  v67 = v61 == 0x636972656E6567 && v62 == 0xE700000000000000;
  v166 = v67;
  v174 = v59;
  swift_bridgeObjectRetain_n();
  v170 = v62;

  v68 = 0;
LABEL_33:
  if (v65)
  {
    v69 = v193;
    goto LABEL_40;
  }

  v69 = v193;
  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v171)
    {

      v112 = v182;
      goto LABEL_79;
    }

    v65 = *(v172 + 8 * v70);
    ++v68;
    if (v65)
    {
      v68 = v70;
LABEL_40:
      v71 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v72 = v71 | (v68 << 6);
      v73 = (*(v174 + 48) + 48 * v72);
      v74 = v73[3];
      v75 = v73[5];
      v76 = *(*(v174 + 56) + 8 * v72);
      v184 = v73[1];
      if (v74)
      {
        v77 = v73[2];
        v173 = v73[4];
        v78 = qword_1EABE0C78;

        v175 = v76;

        if (v78 != -1)
        {
          swift_once();
        }

        if (!*(off_1EABE0C80 + 2))
        {
          goto LABEL_91;
        }

        sub_18E1CF9A0();
        sub_18E1CBD4C();
        if ((v79 & 1) == 0)
        {
          goto LABEL_92;
        }

        v191 = &type metadata for GenerativePlaygroundFFKey;
        v192 = sub_18E26DB94();
        v80 = (v173)(&v189);
        sub_18E1C9934(&v189);
        v189 = 0;
        v190 = 0xE000000000000000;
        if (v80)
        {
          v81 = 1702195828;
        }

        else
        {
          v81 = 0x65736C6166;
        }

        if (v80)
        {
          v82 = 0xE400000000000000;
        }

        else
        {
          v82 = 0xE500000000000000;
        }

        MEMORY[0x193ACC300](v81, v82);

        v173 = &v163;
        MEMORY[0x1EEE9AC00](v83);
        sub_18E1E3748();
        v84 = v185;
        v86 = sub_18E1CD660(sub_18E3F7204, v85, v175);
        v185 = v84;

        if (!v86)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v87 = *(v69 + 16);
        if (v87)
        {
          v88 = *v73;

          v173 = v75;

          v175 = v76;

          v89 = 0;
          v90 = v187;
          while (v87 != v89)
          {
            if (v89 >= *(v69 + 16))
            {
              goto LABEL_90;
            }

            v91 = *(v186 + 80);
            sub_18E1C96E4();
            (*(v93 + 16))(v188, v69 + v92 + *(v93 + 72) * v89, v90);
            if (sub_18E44E29C() == v88 && v94 == v184)
            {

LABEL_66:
              v97 = *v167;
              v98 = v177;
              v99 = v187;
              (*v167)(v177, v188, v187);
              v97(v176, v98, v99);
              v100 = sub_18E44E2AC();
              if (v101)
              {
                v189 = v100;
                v190 = v101;
                MEMORY[0x1EEE9AC00](v100);
                sub_18E1E3748();
                v102 = v185;
                v104 = sub_18E1CD660(sub_18E1CD848, v103, v175);
                v185 = v102;
                v105 = sub_18E1D43AC();
                v106(v105);

                if (v104)
                {
                  goto LABEL_33;
                }

LABEL_70:

                sub_18E1CD978();

                v17 = v176;
                v47 = v169;
                v50 = v165;
                v48 = v185;
                v54 = v164;
                goto LABEL_17;
              }

              type metadata accessor for CatalogErrors.QueryError(0);
              sub_18E1C6D0C();
              sub_18E3F6D08(v150, v151);
              sub_18E1C8558();
              v153 = v152;
              v154 = (v152 + *(sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10) + 48));
              v155 = sub_18E44E54C();
              sub_18E1C4EEC(v155);
              (*(v156 + 16))(v153, v178);
              v189 = 0;
              v190 = 0xE000000000000000;
              sub_18E44EFFC();

              sub_18E1C6990();
              v189 = v158 | 2;
              v190 = v157;
              v159 = sub_18E44E29C();
              MEMORY[0x193ACC300](v159);

              v160 = v190;
              *v154 = v189;
              v154[1] = v160;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v161 = sub_18E1D43AC();
              v162(v161);
LABEL_86:

              sub_18E1CD978();

              sub_18E1E8EEC(v182, &qword_1EABE0DB0, &unk_18E4E24B0);

              goto LABEL_84;
            }

            v96 = sub_18E44F3CC();

            if (v96)
            {
              goto LABEL_66;
            }

            v90 = v187;
            (*v180)(v188, v187);
            ++v89;
            v69 = v193;
          }

          type metadata accessor for CatalogErrors.QueryError(0);
          sub_18E1C6D0C();
          sub_18E3F6D08(v140, v141);
          sub_18E1C8EE8();
          v143 = v142;
          v144 = (v142 + *(sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10) + 48));
          v145 = sub_18E44E54C();
          sub_18E1C4EEC(v145);
          (*(v146 + 16))(v143, v178);
          v189 = 0;
          v190 = 0xE000000000000000;
          sub_18E44EFFC();

          sub_18E1C6990();
          v189 = v148;
          v190 = v147;
          MEMORY[0x193ACC300](v88, v184);
          v149 = v190;
          *v144 = v189;
          v144[1] = v149;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_86;
        }

        if (v166)
        {
        }

        else
        {
          sub_18E212024();
          sub_18E1D0380();
          v107 = sub_18E44F3CC();

          if ((v107 & 1) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)()
{
  static CatalogIndex.resolveResourceQueryURIComponents(uri:variantResolverMappings:)();
  if (!v0)
  {
    v2 = v1;
    sub_18E212024();
    v5 = v2 == v4 && v3 == 0xE700000000000000;
    if (v5 || (sub_18E1CBE3C(), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
    {
    }

    else
    {
      sub_18E1C2970();
      static VariantHelpers.createResourceIdentifier(with:variant:)();
    }
  }

  return sub_18E1C2970();
}

uint64_t sub_18E1CD514()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CD52C()
{

  return sub_18E44F14C();
}

void *sub_18E1CD54C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xC1uLL);
}

uint64_t sub_18E1CD56C()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

uint64_t sub_18E1CD580@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, char a10)
{
  v12 = *(v10 + 112);
  a8 = *(v10 + 96);
  a9 = v12;
  v13 = *(v10 + 128);
  a10 = v13;
  *a1 = a8;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;

  return sub_18E327BB0(&a8, &a3);
}

uint64_t sub_18E1CD5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 360) = a3;
  *(v3 - 368) = a2;

  return sub_18E44E83C();
}

void sub_18E1CD638()
{
  v1 = v0[28];
  *v0 = v0[27];
  v0[1] = v1;
}

BOOL sub_18E1CD660(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_18E1CD710()
{

  return swift_allocObject();
}

void sub_18E1CD744()
{

  sub_18E3EFF88();
}

double sub_18E1CD75C()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

void sub_18E1CD780()
{
  v0[1] = v1;
  v2 = v0[2];
  v3 = v0[38];
}

uint64_t sub_18E1CD7A8(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CD7C8()
{

  return swift_beginAccess();
}

id sub_18E1CD7E8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_18E1CD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18E44F3CC() & 1;
  }
}

uint64_t sub_18E1CD8C4()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CD8DC@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 1, (a1 - 32) | 0x8000000000000000, v1);
}

void *sub_18E1CD8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0xC1uLL);
}

uint64_t sub_18E1CD944(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 250000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

void sub_18E1CD95C(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

uint64_t sub_18E1CD990()
{

  return sub_18E44E6DC();
}

void *sub_18E1CD9B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __dst)
{

  return memcpy(&__dst, v60, 0xC1uLL);
}

uint64_t sub_18E1CD9F0()
{
  v3 = *v0;
  v2 = v0[1];
}

__n128 sub_18E1CDA38@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

void sub_18E1CDA5C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_18E1C5534();
    if (v7 != v8)
    {
      sub_18E1E1CA8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_18E1CDB50()
{
  result = qword_1ED6A80E0;
  if (!qword_1ED6A80E0)
  {
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A80E0);
  }

  return result;
}

void sub_18E1CDC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1CDBD8(a1, a2);
  if (!v2)
  {
    v4 = v3;
    ResourceBundleContainer.toResourceBundle()();
  }
}

uint64_t sub_18E1CDC54(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (*(v3 + 16))
  {
    v6 = result;

    a3(v7, v6, a2);
    sub_18E25E13C();
    return sub_18E1DD230();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E1CDCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v32 = sub_18E1CD5F8(v29, v30, v31);
  v33 = sub_18E1C5E70(v32, &a14);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E2219B0();
  sub_18E212AA0();
  if (v21)
  {
    goto LABEL_2;
  }

  sub_18E1C6260();
  if (!v40)
  {
    sub_18E2885F0();
    v83 = sub_18E1C8558();
    sub_18E1CBDCC(v83, v84);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  sub_18E223B94(v40);
  os_unfair_lock_unlock((v23 + 24));
  sub_18E223DB8();
  sub_18E1CC560();
  v41.n128_u64[0] = 136315138;
  sub_18E1E23AC(v41);
  v42.n128_u64[0] = 136315650;
  sub_18E1E334C(v42);
  sub_18E1E3684();
  while (1)
  {
    if (v43 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v44 = &qword_1F018ABF0;
    sub_18E1CC494();
    v45 = swift_allocObject();
    v46 = sub_18E1E2DEC(v45);
    v167 = sub_18E44D310;
    v168 = v46;
    sub_18E1C8480();
    sub_18E1C80EC(&a11);
    v165 = v47;
    v166 = &unk_1F018BAB0;
    _Block_copy(&v163);
    sub_18E1CF544();

    v48 = sub_18E1E32D8(&v164);
    v50 = [v48 v49];
    v51 = sub_18E1CF9C4();
    _Block_release(v51);
    sub_18E1CC494();
    v52 = swift_allocObject();
    sub_18E223EA4(v52);
    sub_18E1CC494();
    v53 = swift_allocObject();
    sub_18E1D1A18(v53);
    sub_18E1CD8AC();
    v54 = swift_allocObject();
    sub_18E223B08(v54);
    sub_18E1CD8AC();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_18E44D248;
    *(v55 + 24) = v23;
    v56 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v56 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v57 = sub_18E221A54();
    sub_18E1CE8B4(v57, qword_1ED6A9888);
    sub_18E233C70();
    v58 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v59)
    {
      sub_18E1C5F74();
      sub_18E1CA69C();
      v60 = swift_slowAlloc();
      v61 = sub_18E1CA340(v60);
      sub_18E200E1C(v61);
      sub_18E1E2FD0(&dword_18E1C1000, v58, v62, "requesting resource bundle container for %s");
      sub_18E221850();
      v25 = v22;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E6C6C();
    }

    else
    {

      v44 = v160;
    }

    sub_18E1D45C8();
    v63 = sub_18E44EA8C();
    v167 = sub_18E1E0F7C;
    v168 = v55;
    sub_18E1C8480();
    sub_18E1E15E8();
    v165 = sub_18E1E0EE0;
    v166 = &unk_1F018BB50;
    _Block_copy(&v163);
    sub_18E1CC324();

    v64 = sub_18E1CD984();
    sub_18E232F2C(v64, v65);
    _Block_release(v24);

    sub_18E1E6580();
    v20 = *v44;
    if (!v20)
    {
      break;
    }

    sub_18E220B64();
    v66 = v20;
    sub_18E223A9C();
    sub_18E1E3B68();
    sub_18E280314(v67, v68);
    sub_18E1E3C94();
    if ((v63 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v69, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0(&v161);
        sub_18E1D5EF4();
        v102();
        v103 = v20;
        v104 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v105 = sub_18E1CADF8();
          sub_18E1CFFE8(v105);
          sub_18E21D1B0();
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v106 = sub_18E1D84BC();
          sub_18E1C9624(v106, &qword_1EABE9328, v107);
          sub_18E1C97B8();
          sub_18E1E1520();
          v108 = v20;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v109);
          sub_18E1C8D90();
          _os_log_impl(v110, v111, v112, v113, v114, 0x20u);
          sub_18E32F548(v26);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5904();
          v115 = sub_18E1C69C4();
          v116(v115);
        }

        else
        {

          sub_18E1C5904();
          sub_18E1E1028();
          v117();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E1CEB50();

        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v69 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v70 = sub_18E1C9090();
    sub_18E1C95AC(v70, qword_1ED6A9028);
    sub_18E1CFC50();
    sub_18E1D42A4();
    v71();
    v72 = v20;
    v73 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v23 = swift_slowAlloc();
      sub_18E20809C();
      v74 = swift_slowAlloc();
      sub_18E1CA69C();
      v75 = swift_slowAlloc();
      sub_18E240E98(v75);
      sub_18E21D1B0();
      v22 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v76 = sub_18E24707C();
      sub_18E1C9624(v76, v25, v77);
      sub_18E44D3C4();
      *(v23 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v78;
      *v74 = v78;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v73, v55, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v74);
      sub_18E1E6C6C();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v79 = sub_18E1C6838(&v162);
      v80(v79);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v81 = sub_18E1C6838(&v162);
      v82(v81);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v85 = v24[2];
  if (v85)
  {
    v86 = v85;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v86 = swift_once();
    }

    sub_18E1CB0FC(v86, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v87 = sub_18E1D6224();
    v88(v87);
    v89 = v85;
    v90 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v91 = sub_18E1CADF8();
      sub_18E1E18E4(v91);
      sub_18E21D1B0();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v92 = sub_18E1E3D6C();
      sub_18E1C9624(v92, &qword_1EABE9328, v93);
      sub_18E1C97B8();
      sub_18E1E3098();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v94);
      sub_18E1C8D90();
      _os_log_impl(v95, v96, v97, v98, v99, 0x20u);
      sub_18E32F548(v26);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5904();
      v100 = sub_18E1C69C4();
      v101(v100);
      sub_18E1E383C();
    }

    else
    {

      v138 = sub_18E1C8C3C(&v162);
      v139(v138);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v118 = swift_beginAccess();
  v119 = *(v25 + 16);
  if (v119)
  {
    v120 = v119;
    sub_18E1D49FC();
    if (!v122)
    {
      sub_18E1C6A1C();
      v121 = swift_once();
    }

    sub_18E1CB0FC(v121, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v123 = sub_18E1D6224();
    v124(v123);
    v125 = sub_18E44E80C();
    v126 = sub_18E44EDFC();
    if (sub_18E1E115C(v126))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v127 = swift_slowAlloc();
      sub_18E1E2408(v127);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v128 = sub_18E1D5C74();
      sub_18E1C9624(v128, &qword_1EABE9328, v129);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v130, v131, v132, v133, v134, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CEB50();
      swift_unknownObjectRelease();
      sub_18E1C5904();
      v136 = sub_18E1C69C4();
      v137(v136);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E1CEB50();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v153 = sub_18E1C8C3C(&v162);
      v154(v153);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
    sub_18E240AB4();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v118 = swift_once();
    }

    sub_18E1C8658(v118, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v141 = sub_18E212088();
    v142(v141);
    v143 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v143, v144))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v145 = swift_slowAlloc();
      sub_18E221F1C(v145);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v146 = sub_18E1D5C74();
      sub_18E1C9624(v146, &qword_1EABE9328, v147);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v148, v149, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v150 = sub_18E1C614C(&v162);
      v151(v150);
      sub_18E1D62D8();
    }

    else
    {

      v155 = sub_18E1C614C(&v162);
      v156(v155);
      sub_18E1E84AC();
    }

    sub_18E2885F0();
    v157 = sub_18E1C8558();
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E1CEB50();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E1CE8CC(void *a1)
{

  _os_log_impl(a1, v1, v3, v2, v4, 2u);
}

void sub_18E1CE92C(uint64_t a1@<X8>)
{
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

__n128 *sub_18E1CE93C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CE978()
{

  return swift_allocError();
}

void sub_18E1CE9C8()
{

  sub_18E1D46CC();
}

uint64_t sub_18E1CE9EC()
{

  return sub_18E44F26C();
}

uint64_t sub_18E1CEA58()
{
}

uint64_t sub_18E1CEA94@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 5, (a1 - 32) | 0x8000000000000000, v1);
}

void sub_18E1CEAE4()
{
  *(v0 + 200) = v1;
  *(v0 + 208) = v1;
  *(v0 + 216) = 256;
  *(v0 + 224) = v1;
}

void sub_18E1CEAF8(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 250000;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

uint64_t sub_18E1CEB2C()
{

  return sub_18E44EB4C();
}

uint64_t sub_18E1CEB5C(uint64_t *a1)
{
  v55 = a1;
  v3 = sub_18E44E83C();
  v4 = sub_18E1C4EAC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C86C0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(ObjectType, v15);
    if (v2 || *v55)
    {
      return swift_unknownObjectRelease();
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v17 = sub_18E1C95EC(v3, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E2244D0();
    v50 = v17;
    v49 = v18;
    v48 = v19;
    v19(v14, v17, v3);
    v20 = sub_18E44E80C();
    v53 = sub_18E44EE2C();
    v54 = v20;
    v21 = os_log_type_enabled(v20, v53);
    v51 = v11;
    v52 = v6;
    if (v21)
    {
      sub_18E1E2FE8();
      v22 = swift_slowAlloc();
      sub_18E1CA69C();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v22 = 136315138;
      sub_18E1D4CFC();
      swift_beginAccess();
      v23 = qword_1EABE9328;
      v24 = off_1EABE9330;

      v25 = sub_18E1C9624(v23, v24, &aBlock);

      v46 = v22;
      *(v22 + 4) = v25;
      v26 = v54;
      _os_log_impl(&dword_18E1C1000, v54, v53, "%s: establishing connection.", v22, 0xCu);
      sub_18E1C9934(v47);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {
    }

    v54 = *(v6 + 8);
    (v54)(v14, v3);
    sub_18E1D4CFC();
    swift_beginAccess();
    v27 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

    v28 = sub_18E44EA8C();

    v29 = [v27 initWithMachServiceName:v28 options:0];

    *v55 = v29;
    if (v29)
    {
      v30 = v29;
      v31 = sub_18E206E44();
      [v30 setRemoteObjectInterface_];

      sub_18E1CC494();
      v32 = swift_allocObject();
      swift_weakInit();
      v60 = sub_18E2886A0;
      v61 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_18E203E04;
      v59 = &unk_1F013FAF8;
      v33 = _Block_copy(&aBlock);

      [v30 setInterruptionHandler_];
      _Block_release(v33);
      sub_18E1CC494();
      v34 = swift_allocObject();
      swift_weakInit();
      v60 = sub_18E203ED4;
      v61 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_18E203E04;
      v59 = &unk_1F013FB20;
      v35 = _Block_copy(&aBlock);

      [v30 setInvalidationHandler_];
      _Block_release(v35);
      [v30 resume];

      return swift_unknownObjectRelease();
    }

    v37 = v51;
    v48(v51, v50, v3);
    v38 = sub_18E44E80C();
    v39 = sub_18E44EE0C();
    v40 = sub_18E223CA0();
    if (os_log_type_enabled(v40, v41))
    {
      sub_18E1E2FE8();
      v42 = swift_slowAlloc();
      sub_18E1CA69C();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v42 = 136315138;
      v43 = qword_1EABE9328;
      v44 = off_1EABE9330;

      v45 = sub_18E1C9624(v43, v44, &aBlock);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_18E1C1000, v38, v39, "%s: did not create connection.", v42, 0xCu);
      sub_18E1C9934(v55);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (v54)(v37, v3);
  }

  else
  {
    result = sub_18E44F14C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E1CF1AC()
{
  swift_weakDestroy();
  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E1CF1F8()
{

  return swift_allocObject();
}

uint64_t sub_18E1CF210()
{
  *(v1 - 123) = 0;
  *(v1 - 128) = 0;
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

uint64_t sub_18E1CF2C4@<X0>(char a1@<W8>)
{
  *(v1 + 648) = a1;
  result = v1 + 648;
  v5 = *(v1 + 304);
  v4 = *(v1 + 312);
  v6 = *(v2 - 72);
  return result;
}

void sub_18E1CF2EC()
{
  sub_18E1C9934(v0);

  JUMPOUT(0x193ACD400);
}

double sub_18E1CF330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  return result;
}

double sub_18E1CF34C()
{

  return sub_18E26C3FC(v0, (v1 - 128));
}

uint64_t sub_18E1CF3DC()
{

  return sub_18E44F3CC();
}

void sub_18E1CF41C(uint64_t a1@<X8>)
{
  *(v1 + 96) = a1;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

uint64_t sub_18E1CF42C()
{
  v2 = *(v0 - 416);
}

uint64_t sub_18E1CF450()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CF494()
{

  return swift_once();
}

uint64_t sub_18E1CF4CC()
{
  result = *(v0 - 256);
  v3 = *(v1 - 296);
  return result;
}

uint64_t sub_18E1CF518()
{

  return swift_allocObject();
}

uint64_t sub_18E1CF550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF570(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18E1CF5C8()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1CF5E4(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_initStackObject();
}

void sub_18E1CF630()
{
  v5 = *(v4 - 312);
  *(v4 - 304) = v2;
  *(v4 - 392) = v0;
  *(v4 - 464) = v3;
  v6 = *(v1 + 16);
}

void sub_18E1CF6E0(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 100000;
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
}

BOOL sub_18E1CF7C4()
{

  return os_log_type_enabled(v0, v1);
}

void sub_18E1CF7DC()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

id sub_18E1CF834@<X0>(void *a1@<X8>)
{
  *(v4 - 472) = v3;
  *(v4 - 480) = v1;
  *(v4 - 488) = v2;

  return a1;
}

uint64_t sub_18E1CF89C()
{

  return swift_allocObject();
}

uint64_t sub_18E1CF90C()
{

  return sub_18E44F4DC();
}

__n128 *sub_18E1CF930(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1CF940@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  return result;
}

void sub_18E1CFA14()
{
  v2 = v1[28];
  *v1 = v1[27];
  v1[1] = v2;
  *(v0 + 24) = 0;
}

uint64_t sub_18E1CFAB8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

double sub_18E1CFAE8(uint64_t a1)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = 240000;
  *&result = 0x10000000100;
  *(v1 + 48) = 256;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1CFB1C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E1CFB90@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F2FC();
}

uint64_t sub_18E1CFBD4()
{

  return swift_beginAccess();
}

uint64_t sub_18E1CFC20()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E1CFC78()
{

  return swift_dynamicCast();
}

uint64_t sub_18E1CFCA8(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 1590000;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
  return result;
}

uint64_t sub_18E1CFCDC()
{

  return sub_18E44F48C();
}

void *sub_18E1CFD00()
{
  v3 = v0[14];
  v0[55] = v0[13];
  v0[56] = v3;
  v4 = v0[16];
  v0[57] = v0[15];
  v0[58] = v4;
  v5 = v0[18];
  v0[59] = v0[17];
  v0[60] = v5;
  v6 = v0[11];
  v0[61] = v0[12];
  v0[62] = v6;
  v7 = v0[9];
  v0[63] = v0[10];
  v0[64] = v7;
  v0[65] = v0[8];

  return memcpy((v1 + 352), v0 + 264, 0x140uLL);
}

uint64_t sub_18E1CFD4C()
{

  return sub_18E44E38C();
}

uint64_t sub_18E1CFDD4()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t sub_18E1CFE24()
{
  v4 = *(v1 - 2);
  v3 = *(v1 - 1);
  v5 = *v1;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) + 1;
}

uint64_t sub_18E1CFE74(uint64_t result)
{
  *(v1 + 14) = result;
  **(v2 - 288) = result;
  *(v1 + 22) = 2048;
  *(v1 + 24) = *(v2 - 232);
  return result;
}

uint64_t sub_18E1CFEAC()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *v1 = v3;
  v1[1] = v4;
  v5 = *(v0 + 96);
  v1[2] = *(v0 + 88);
  v1[3] = v5;
  v6 = *(v0 + 112);
  v1[4] = *(v0 + 120);
  v1[5] = v6;
  v1[6] = *(v0 + 104);
  *(v0 + 208) = 7;

  return sub_18E2C1F7C(v3);
}

void *sub_18E1CFEE4(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 344), 0xD8uLL);
}

uint64_t sub_18E1CFF30()
{
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  return v0;
}

uint64_t sub_18E1CFF78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = 3;
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(v3 + 112) = result;
  return result;
}

__n128 *sub_18E1CFF8C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

void *sub_18E1CFFA8(void *a1)
{

  return memcpy(a1, v1, 0xC1uLL);
}

void *sub_18E1D0000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(v9, &a9, 0xC8uLL);
}

uint64_t sub_18E1D0038()
{
  v2 = *v0;
  result = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_18E1D0044(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 0;
  *(v2 + 101) = 0;
}

uint64_t sub_18E1D008C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_18E1D00B8()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_18E2869B0(v2);
}

__n128 *sub_18E1D0130(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1D0174()
{

  return sub_18E2491A4(0x65676175676E616CLL, 0xE800000000000000, v0);
}

uint64_t sub_18E1D01F8(__n128 a1)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *(v1 + 96) = *v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  *(v1 + 120) = a1;
  *(v1 + 136) = a1;
  *(v1 + 152) = 0;
}

void sub_18E1D0224(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 100000;
  *(v2 + 104) = 0;
}

uint64_t sub_18E1D0240(uint64_t a1)
{
  v3 = v1 + *(a1 + 48);

  return sub_18E44E54C();
}

uint64_t sub_18E1D02C0()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t sub_18E1D02D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
}

__n128 *sub_18E1D02E4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  return result;
}

uint64_t sub_18E1D0300()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D0318()
{

  return sub_18E44F3CC();
}

void *sub_18E1D0338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xC1uLL);
}

__n128 sub_18E1D03A4@<Q0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 152) = v6;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 200) = *(v2 + 200);
  result = *(v2 + 216);
  *(v1 + 216) = result;
  *(v1 + 232) = *(v3 - 96);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  return result;
}

__n128 sub_18E1D03DC@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_18E1D0404()
{

  return swift_initStackObject();
}

uint64_t sub_18E1D041C()
{
  *(v1 - 123) = 0;
  *(v1 - 128) = 0;
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

uint64_t sub_18E1D0468@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 968) = v1;
  *(v2 + 976) = a1;
  return v3;
}

void sub_18E1D04C8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_18E1D0528();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_18E1D055C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_18E1D0584(uint64_t a1)
{
  v126[1] = *MEMORY[0x1E69E9840];
  v120 = sub_18E44E6AC();
  v3 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &type metadata for RawGuardrailResult;
  if (*(v6 + 16))
  {
    v111 = a1;
    v112 = v1;
    v8 = v6 + 64;
    v9 = 1 << *(v6 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;
    v114 = (v4 + 8);

    v13 = 0;
    *&v14 = 136315394;
    v113 = v14;
    v121 = v12;
    v122 = v6;
    v115 = v6 + 64;
    while (v11)
    {
      v15 = v13;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(v6 + 56);
      v18 = *(v6 + 48) + 16 * v16;
      v19 = *(v18 + 8);
      v124 = *v18;
      v20 = *(v17 + 8 * v16);
      Kind = v7[171].Kind;

      v22 = v20;
      if (Kind != -1)
      {
        swift_once();
      }

      v23 = sub_18E44E83C();
      sub_18E1C95EC(v23, qword_1ED6A9870);

      v24 = v22;
      v25 = sub_18E44E80C();
      v26 = sub_18E44EE2C();

      LODWORD(v123) = v26;
      v27 = os_log_type_enabled(v25, v26);
      v125 = v19;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v126[0] = v117;
        *v28 = v113;
        *(v28 + 4) = sub_18E1C9624(v124, v19, v126);
        *(v28 + 12) = 2080;
        v29 = [v24 uuid];
        v116 = v25;
        v30 = v29;
        v31 = v119;
        sub_18E44E68C();

        sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8]);
        v32 = v120;
        v33 = sub_18E44F39C();
        v118 = v24;
        v35 = v34;
        v36 = v32;
        v8 = v115;
        (*v114)(v31, v36);
        v37 = sub_18E1C9624(v33, v35, v126);
        v24 = v118;

        *(v28 + 14) = v37;
        v38 = v116;
        _os_log_impl(&dword_18E1C1000, v116, v123, "Attempting unlock for: %s, %s", v28, 0x16u);
        v39 = v117;
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v39, -1, -1);
        v40 = v28;
        v7 = &type metadata for RawGuardrailResult;
        MEMORY[0x193ACD400](v40, -1, -1);
      }

      else
      {
      }

      v11 &= v11 - 1;
      v126[0] = 0;
      v41 = v24;
      if ([v24 unlock_])
      {
        v42 = v126[0];

        v13 = v15;
        v12 = v121;
        v6 = v122;
      }

      else
      {
        v43 = v126[0];
        v44 = sub_18E44E44C();

        v123 = v44;
        swift_willThrow();
        v45 = v125;

        v46 = v41;
        v47 = sub_18E44E80C();
        v48 = sub_18E44EE2C();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v126[0] = v118;
          *v49 = v113;
          v50 = sub_18E1C9624(v124, v45, v126);
          v124 = v47;
          v51 = v50;

          *(v49 + 4) = v51;
          *(v49 + 12) = 2080;
          v52 = [v46 uuid];
          v53 = v119;
          sub_18E44E68C();

          sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8]);
          v54 = v120;
          v55 = sub_18E44F39C();
          v57 = v56;
          (*v114)(v53, v54);
          v58 = sub_18E1C9624(v55, v57, v126);

          *(v49 + 14) = v58;
          v59 = v124;
          _os_log_impl(&dword_18E1C1000, v124, v48, "unlock failed for: %s, %s", v49, 0x16u);
          v60 = v118;
          swift_arrayDestroy();
          MEMORY[0x193ACD400](v60, -1, -1);
          v61 = v49;
          v8 = v115;
          MEMORY[0x193ACD400](v61, -1, -1);
        }

        else
        {
        }

        v112 = 0;
        v13 = v15;
        v12 = v121;
        v6 = v122;
        v7 = &type metadata for RawGuardrailResult;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v13;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v62 = v111;
    v63 = *(v111 + 40);
    if (!v63)
    {
      if (v7[171].Kind != -1)
      {
        swift_once();
      }

      v86 = sub_18E44E83C();
      sub_18E1C95EC(v86, qword_1ED6A9870);

      v87 = sub_18E44E80C();
      v88 = sub_18E44EE2C();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v126[0] = v90;
        *v89 = 136315138;
        sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

        v91 = sub_18E44E9BC();
        v93 = v92;

        v94 = sub_18E1C9624(v91, v93, v126);
        v62 = v111;

        *(v89 + 4) = v94;
        _os_log_impl(&dword_18E1C1000, v87, v88, "unlock called when we believe we are already unlocked  %s", v89, 0xCu);
        sub_18E1C9934(v90);
        MEMORY[0x193ACD400](v90, -1, -1);
        v95 = v89;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v64 = __OFSUB__(v63, 1);
    v65 = v63 - 1;
    if (!v64)
    {
      *(v111 + 40) = v65;
      v66 = v7[171].Kind;
      if (v65)
      {
        if (v66 != -1)
        {
          swift_once();
        }

        v67 = sub_18E44E83C();
        sub_18E1C95EC(v67, qword_1ED6A9870);
        swift_retain_n();
        v68 = sub_18E44E80C();
        v69 = sub_18E44EE2C();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v126[0] = v71;
          *v70 = 136315650;
          sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

          v72 = sub_18E44E9BC();
          v74 = v73;

          v75 = sub_18E1C9624(v72, v74, v126);

          *(v70 + 4) = v75;
          *(v70 + 12) = 2080;

          v76 = sub_18E44E9CC();
          v78 = v77;

          v79 = sub_18E1C9624(v76, v78, v126);

          *(v70 + 14) = v79;
          *(v70 + 22) = 2048;
          v80 = *(v62 + 40);

          *(v70 + 24) = v80;

          _os_log_impl(&dword_18E1C1000, v68, v69, "unlock finished, but lock is still in place: %s, %s lock count: %ld", v70, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193ACD400](v71, -1, -1);
          MEMORY[0x193ACD400](v70, -1, -1);
        }

        else
        {
        }

        goto LABEL_44;
      }

      if (v66 != -1)
      {
        swift_once();
      }

      v96 = sub_18E44E83C();
      sub_18E1C95EC(v96, qword_1ED6A9870);
      swift_retain_n();
      v87 = sub_18E44E80C();
      v97 = sub_18E44EE2C();
      if (os_log_type_enabled(v87, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v126[0] = v99;
        *v98 = 136315650;
        sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

        v100 = sub_18E44E9BC();
        v102 = v101;

        v103 = sub_18E1C9624(v100, v102, v126);

        *(v98 + 4) = v103;
        *(v98 + 12) = 2080;

        v104 = sub_18E44E9CC();
        v106 = v105;

        v107 = sub_18E1C9624(v104, v106, v126);
        v62 = v111;

        *(v98 + 14) = v107;
        *(v98 + 22) = 2048;
        v108 = *(v62 + 40);

        *(v98 + 24) = v108;

        _os_log_impl(&dword_18E1C1000, v87, v97, "unlock succeeded for: %s, %s lock count: %ld", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v99, -1, -1);
        v95 = v98;
LABEL_40:
        MEMORY[0x193ACD400](v95, -1, -1);
        goto LABEL_41;
      }

LABEL_42:
      [*(v62 + 32) invalidate];
      v109 = *(v62 + 32);
      *(v62 + 32) = 0;

LABEL_44:
      v110 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (qword_1ED6A8AB0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = sub_18E44E80C();
  v83 = sub_18E44EE2C();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_18E1C1000, v82, v83, "Attempting unlock when there are no tokens", v84, 2u);
    MEMORY[0x193ACD400](v84, -1, -1);
  }

  v85 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18E1D121C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_18E1D125C()
{
  sub_18E1C62A0();
  v80 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E2BC();
  v85 = sub_18E1C4EAC(v5);
  v86 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v85);
  sub_18E1C4EDC();
  v84 = v10 - v9;
  v11 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v11);
  v13 = *(v12 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1CAF50();
  v83 = v15;
  v16 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v16);
  v18 = *(v17 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1CAF50();
  v91 = v20;
  v21 = sub_18E1D839C();
  v22 = 0;
  v23 = *(v21 + 16);
  v24 = v21 + 32;
  while (v23 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_18E1E8C38(v24, &v87);
    v25 = v89;
    sub_18E1E15F4(&v87, v88);
    v26 = *(v25 + 32);
    v27 = sub_18E1D4560();
    if (v28(v27, v25) == v4 && v29 == v2)
    {

LABEL_13:

      sub_18E1C551C(&v87, v90);
      sub_18E1C551C(v90, v80);
LABEL_40:
      sub_18E1C6650();
      return;
    }

    v31 = sub_18E44F3CC();

    if (v31)
    {
      goto LABEL_13;
    }

    sub_18E1C9934(&v87);
    v24 += 40;
    ++v22;
  }

  sub_18E44E50C();
  v32 = sub_18E44E54C();
  if (sub_18E1CAF28(v91, 1, v32) == 1)
  {
    sub_18E1E8EEC(v91, &qword_1EABE2FE0, &qword_18E49CE00);
LABEL_20:
    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1C6D0C();
    sub_18E3F6D08(v43, v44);
    sub_18E1C8EE8();
    sub_18E1CA5A4();
    *v45 = v4;
    v45[1] = v2;
    v45[2] = 0xD000000000000022;
    v45[3] = v46;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_40;
  }

  v33 = sub_18E44E49C();
  sub_18E1C82B8(v32);
  v35 = v32;
  v37 = v36;
  (*(v34 + 8))(v91, v35);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    goto LABEL_20;
  }

  v39 = MEMORY[0x1E69E7CC0];
  v40 = sub_18E44E9AC();
  sub_18E44E35C();
  v41 = sub_18E44E38C();
  if (sub_18E1CAF28(v83, 1, v41) == 1)
  {
    sub_18E1E8EEC(v83, &qword_1EABE0DB0, &unk_18E4E24B0);
    v42 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = sub_18E44E2EC();
    sub_18E1C82B8(v41);
    v49 = *(v48 + 8);
    v50 = sub_18E1CF9A0();
    v51(v50);
    if (v47)
    {
      v42 = v47;
    }

    else
    {
      v42 = v39;
    }
  }

  v82 = *(v42 + 16);
  if (!v82)
  {
LABEL_39:

    static Catalog.ResourceBundle.createResourceBundleVariant(configurationIdentifier:resourceVariants:)(v40, v80);

    goto LABEL_40;
  }

  v52 = *(v86 + 80);
  sub_18E1C96E4();
  v81 = v42 + v54;
  while (v53 < *(v42 + 16))
  {
    v92 = v53;
    (*(v86 + 16))(v84, v81 + *(v86 + 72) * v53, v85);
    v55 = sub_18E44E29C();
    v57 = v56;
    v58 = sub_18E44E2AC();
    v60 = v59;
    (*(v86 + 8))(v84, v85);
    if (v60)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v90[0] = v40;
      v61 = sub_18E1CBD4C();
      if (__OFADD__(v40[2], (v62 & 1) == 0))
      {
        goto LABEL_43;
      }

      v63 = v61;
      v64 = v62;
      sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
      if (sub_18E44F0EC())
      {
        v65 = sub_18E1CBD4C();
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_45;
        }

        v63 = v65;
      }

      if (v64)
      {

        v40 = *&v90[0];
        v67 = (*(*&v90[0] + 56) + 16 * v63);
        v68 = v67[1];
        *v67 = v58;
        v67[1] = v60;
      }

      else
      {
        v40 = *&v90[0];
        *(*&v90[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
        v75 = (v40[6] + 16 * v63);
        *v75 = v55;
        v75[1] = v57;
        v76 = (v40[7] + 16 * v63);
        *v76 = v58;
        v76[1] = v60;
        v77 = v40[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_44;
        }

        v40[2] = v79;
      }
    }

    else
    {
      v69 = sub_18E1CBD4C();
      v71 = v70;

      if (v71)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v90[0] = v40;
        v72 = v40[3];
        sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
        sub_18E44F0EC();
        v40 = *&v90[0];
        v73 = *(*(*&v90[0] + 48) + 16 * v69 + 8);

        v74 = *(v40[7] + 16 * v69 + 8);

        sub_18E44F10C();
      }
    }

    v53 = v92 + 1;
    if (v82 == v92 + 1)
    {
      goto LABEL_39;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_18E44F41C();
  __break(1u);
}

uint64_t sub_18E1D19C8(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_18E1D1A04()
{
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return 47;
}

uint64_t sub_18E1D1A24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = static Catalog.ResourceBundle.fetchAllResourceBundles()();
  }

  return v1;
}

uint64_t static Catalog.ResourceBundle.fetchAllResourceBundles()()
{
  v80 = *MEMORY[0x1E69E9840];
  sub_18E2706EC(&qword_1EABE12E8, &qword_18E4E2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E49ED70;
  *(v2 + 56) = &type metadata for AssetBackedDefaultOverridesBundle;
  *(v2 + 64) = sub_18E1D3DD8();
  sub_18E1E1950();
  *(v2 + 32) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.DefaultOverrides.DefaultOverridesOnly()();
  *(v2 + 96) = &type metadata for AssetBackedLLMBundle;
  v3 = sub_18E1D4BA0();
  *(v2 + 104) = v3;
  sub_18E1D48C0();
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental()();
  static Catalog.Resource.LLM.Model.CodeLMExperimental()();
  sub_18E1E3DC4();
  *(v4 + 16) = 0xD000000000000023;
  *(v4 + 24) = v0;
  *(v2 + 136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 144) = v3;
  sub_18E1D48C0();
  v5 = swift_allocObject();
  *(v2 + 112) = v5;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV1()();
  sub_18E1E3DC4();
  *(v5 + 16) = 0xD000000000000028;
  *(v5 + 24) = v0;
  *(v2 + 176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 184) = v3;
  sub_18E1D48C0();
  v6 = swift_allocObject();
  *(v2 + 152) = v6;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV2()();
  sub_18E1E3DC4();
  *(v6 + 16) = 0xD000000000000028;
  *(v6 + 24) = v0;
  *(v2 + 216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 224) = v3;
  sub_18E1D48C0();
  v7 = swift_allocObject();
  *(v2 + 192) = v7;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV3()();
  sub_18E1E3DC4();
  *(v7 + 16) = 0xD000000000000028;
  *(v7 + 24) = v0;
  *(v2 + 256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 264) = v3;
  sub_18E1D48C0();
  v8 = swift_allocObject();
  *(v2 + 232) = v8;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV4()();
  sub_18E1E3DC4();
  *(v8 + 16) = 0xD000000000000028;
  *(v8 + 24) = v0;
  *(v2 + 296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 304) = v3;
  sub_18E1D48C0();
  v9 = swift_allocObject();
  *(v2 + 272) = v9;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV5()();
  sub_18E1E3DC4();
  *(v9 + 16) = 0xD000000000000028;
  *(v9 + 24) = v0;
  *(v2 + 336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 344) = v3;
  sub_18E1D48C0();
  v10 = swift_allocObject();
  *(v2 + 312) = v10;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail()();
  sub_18E1E3DC4();
  *(v10 + 16) = 0xD000000000000030;
  *(v10 + 24) = v0;
  *(v2 + 376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 384) = v3;
  sub_18E1D48C0();
  v11 = swift_allocObject();
  *(v2 + 352) = v11;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV1()();
  sub_18E1E3DC4();
  *(v11 + 16) = 0xD000000000000028;
  *(v11 + 24) = v0;
  *(v2 + 416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 424) = v3;
  sub_18E1D48C0();
  v12 = swift_allocObject();
  *(v2 + 392) = v12;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV2()();
  sub_18E1E3DC4();
  *(v12 + 16) = 0xD000000000000028;
  *(v12 + 24) = v0;
  *(v2 + 456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 464) = v3;
  sub_18E1D48C0();
  v13 = swift_allocObject();
  *(v2 + 432) = v13;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV3()();
  sub_18E1E3DC4();
  *(v13 + 16) = 0xD000000000000028;
  *(v13 + 24) = v0;
  *(v2 + 496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 504) = v3;
  sub_18E1D48C0();
  v14 = swift_allocObject();
  *(v2 + 472) = v14;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV4()();
  sub_18E1E3DC4();
  *(v14 + 16) = 0xD000000000000028;
  *(v14 + 24) = v0;
  *(v2 + 536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 544) = v3;
  sub_18E1D48C0();
  v15 = swift_allocObject();
  *(v2 + 512) = v15;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV5()();
  sub_18E1E3DC4();
  *(v15 + 16) = 0xD000000000000028;
  *(v15 + 24) = v0;
  *(v2 + 576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 584) = v3;
  sub_18E1D48C0();
  v16 = swift_allocObject();
  *(v2 + 552) = v16;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E1E3DC4();
  *(v16 + 16) = 0xD000000000000022;
  *(v16 + 24) = v0;
  *(v2 + 616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 624) = v3;
  sub_18E1D48C0();
  *(v2 + 592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMWithDraft()();
  *(v2 + 656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 664) = v3;
  sub_18E1D48C0();
  *(v2 + 632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV1ANE3B()();
  *(v2 + 696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 704) = v3;
  sub_18E1D48C0();
  v17 = swift_allocObject();
  *(v2 + 672) = v17;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV2()();
  static Catalog.Resource.LLM.Model.CodeLMV2()();
  sub_18E1E3DC4();
  *(v17 + 16) = 0xD000000000000022;
  *(v17 + 24) = v0;
  *(v2 + 736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 744) = v3;
  sub_18E1D48C0();
  v18 = swift_allocObject();
  *(v2 + 712) = v18;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV3()();
  static Catalog.Resource.LLM.Model.CodeLMV3()();
  sub_18E1E3DC4();
  *(v18 + 16) = 0xD000000000000022;
  *(v18 + 24) = v0;
  *(v2 + 776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 784) = v3;
  sub_18E1D48C0();
  v19 = swift_allocObject();
  *(v2 + 752) = v19;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV4()();
  static Catalog.Resource.LLM.Model.CodeLMV4()();
  sub_18E1E3DC4();
  *(v19 + 16) = 0xD000000000000022;
  *(v19 + 24) = v0;
  *(v2 + 816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 824) = v3;
  sub_18E1D48C0();
  v20 = swift_allocObject();
  *(v2 + 792) = v20;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesAction()();
  sub_18E1E3DC4();
  *(v20 + 16) = 0xD000000000000026;
  *(v20 + 24) = v0;
  *(v2 + 856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 864) = v3;
  sub_18E1D48C0();
  v21 = swift_allocObject();
  *(v2 + 832) = v21;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesReply()();
  sub_18E1E3DC4();
  *(v21 + 16) = 0xD000000000000025;
  *(v21 + 24) = v0;
  *(v2 + 896) = &type metadata for SecureAnalyticsBundle;
  *(v2 + 904) = sub_18E2ADF28();
  sub_18E1E1950();
  *(v2 + 872) = swift_allocObject();
  static Catalog.ResourceBundle.SecureAnalytics.IntegrityDiagnoseModel()();
  *(v2 + 936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 944) = v3;
  sub_18E1D48C0();
  v22 = swift_allocObject();
  *(v2 + 912) = v22;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeSafetyGuardrail()();
  sub_18E1E3DC4();
  *(v22 + 16) = 0xD000000000000030;
  *(v22 + 24) = v0;
  *(v2 + 976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 984) = v3;
  sub_18E1D48C0();
  v23 = swift_allocObject();
  *(v2 + 952) = v23;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()();
  static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()();
  sub_18E1E3DC4();
  *(v23 + 16) = 0xD00000000000002CLL;
  *(v23 + 24) = v0;
  *(v2 + 1016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1024) = v3;
  sub_18E1D48C0();
  *(v2 + 992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMBackgroundPrompt()();
  *(v2 + 1056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1064) = v3;
  sub_18E1D48C0();
  *(v2 + 1032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPeopleGrounding()();
  *(v2 + 1096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1104) = v3;
  sub_18E1D48C0();
  *(v2 + 1072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPromptRewriting()();
  *(v2 + 1136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1144) = v3;
  sub_18E1D48C0();
  *(v2 + 1112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FactualConsistencyClassifier()();
  *(v2 + 1176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1184) = v3;
  sub_18E1D48C0();
  *(v2 + 1152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesActionSmall()();
  *(v2 + 1216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1224) = v3;
  sub_18E1D48C0();
  *(v2 + 1192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReplyWatch()();
  *(v2 + 1256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1264) = v3;
  sub_18E1D48C0();
  *(v2 + 1232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafety()();
  *(v2 + 1296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1304) = v3;
  sub_18E1D48C0();
  *(v2 + 1272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafetyCustomized()();
  *(v2 + 1336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1344) = v3;
  sub_18E1D48C0();
  *(v2 + 1312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail()();
  *(v2 + 1376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1384) = v3;
  sub_18E1D48C0();
  *(v2 + 1352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMSafety()();
  *(v2 + 1416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1424) = v3;
  sub_18E1D48C0();
  *(v2 + 1392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerification()();
  *(v2 + 1456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1464) = v3;
  sub_18E1D48C0();
  *(v2 + 1432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafety()();
  *(v2 + 1496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1504) = v3;
  sub_18E1D48C0();
  *(v2 + 1472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafetyCustomized()();
  *(v2 + 1536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1544) = v3;
  sub_18E1D48C0();
  *(v2 + 1512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Safety()();
  *(v2 + 1576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1584) = v3;
  sub_18E1D48C0();
  *(v2 + 1552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrity()();
  *(v2 + 1616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1624) = v3;
  sub_18E1D48C0();
  *(v2 + 1592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrityCustomized()();
  *(v2 + 1656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1664) = v3;
  sub_18E1D48C0();
  *(v2 + 1632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextGuardSafetyGuardrail()();
  *(v2 + 1696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1704) = v3;
  sub_18E1D48C0();
  *(v2 + 1672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.VIContentClassifier()();
  *(v2 + 1736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1744) = v3;
  sub_18E1D48C0();
  *(v2 + 1712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesis()();
  *(v2 + 1776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1784) = v3;
  sub_18E1D48C0();
  *(v2 + 1752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FullPayloadCorrection()();
  *(v2 + 1816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1824) = v3;
  sub_18E1D48C0();
  *(v2 + 1792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AutoTagger()();
  *(v2 + 1856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1864) = v3;
  sub_18E1D48C0();
  *(v2 + 1832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AutonamingMessages()();
  *(v2 + 1896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1904) = v3;
  sub_18E1D48C0();
  *(v2 + 1872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BBase()();
  *(v2 + 1936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1944) = v3;
  sub_18E1D48C0();
  *(v2 + 1912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.BulletsTransform()();
  *(v2 + 1976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1984) = v3;
  sub_18E1D48C0();
  *(v2 + 1952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ConciseTone()();
  *(v2 + 2016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2024) = v3;
  sub_18E1D48C0();
  *(v2 + 1992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContextAwareness()();
  *(v2 + 2056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2064) = v3;
  sub_18E1D48C0();
  *(v2 + 2032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContextProgram()();
  *(v2 + 2096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2104) = v3;
  sub_18E1D48C0();
  *(v2 + 2072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.DescribeYourEdit()();
  *(v2 + 2136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2144) = v3;
  sub_18E1D48C0();
  *(v2 + 2112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FitnessSummary()();
  *(v2 + 2176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2184) = v3;
  sub_18E1D48C0();
  *(v2 + 2152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContentTagger()();
  *(v2 + 2216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2224) = v3;
  sub_18E1D48C0();
  *(v2 + 2192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructFMApiGeneric()();
  *(v2 + 2256) = &type metadata for LLMCompileDraftBundle;
  *(v2 + 2264) = sub_18E2ADF7C();
  sub_18E1E1950();
  *(v2 + 2232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLMCompileDraft.InstructFMApiThirdPartyCompileDraft()();
  *(v2 + 2296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2304) = v3;
  sub_18E1D48C0();
  *(v2 + 2272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FriendlyTone()();
  *(v2 + 2336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2344) = v3;
  sub_18E1D48C0();
  *(v2 + 2312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsClassification()();
  *(v2 + 2376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2384) = v3;
  sub_18E1D48C0();
  *(v2 + 2352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsReflection()();
  *(v2 + 2416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2424) = v3;
  sub_18E1D48C0();
  *(v2 + 2392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.LWOnDevicePlannerV1()();
  *(v2 + 2456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2464) = v3;
  sub_18E1D48C0();
  *(v2 + 2432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MagicRewrite()();
  *(v2 + 2496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2504) = v3;
  sub_18E1D48C0();
  *(v2 + 2472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReply()();
  *(v2 + 2536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2544) = v3;
  sub_18E1D48C0();
  *(v2 + 2512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormBasic()();
  *(v2 + 2576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2584) = v3;
  sub_18E1D48C0();
  *(v2 + 2552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormRewrite()();
  *(v2 + 2616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2624) = v3;
  sub_18E1D48C0();
  *(v2 + 2592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyQA()();
  *(v2 + 2656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2664) = v3;
  sub_18E1D48C0();
  *(v2 + 2632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesAction()();
  *(v2 + 2696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2704) = v3;
  sub_18E1D48C0();
  *(v2 + 2672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReply()();
  *(v2 + 2736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2744) = v3;
  sub_18E1D48C0();
  *(v2 + 2712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail3B()();
  *(v2 + 2776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2784) = v3;
  sub_18E1D48C0();
  *(v2 + 2752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Nutrition()();
  *(v2 + 2816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2824) = v3;
  sub_18E1D48C0();
  *(v2 + 2792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PersonalizedSmartReply()();
  *(v2 + 2856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2864) = v3;
  sub_18E1D48C0();
  *(v2 + 2832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingMM()();
  *(v2 + 2896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2904) = v3;
  sub_18E1D48C0();
  *(v2 + 2872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingT2T()();
  *(v2 + 2936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2944) = v3;
  sub_18E1D48C0();
  *(v2 + 2912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationOutlier3b()();
  *(v2 + 2976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2984) = v3;
  sub_18E1D48C0();
  *(v2 + 2952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits3b()();
  *(v2 + 3016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3024) = v3;
  sub_18E1D48C0();
  *(v2 + 2992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding3b()();
  *(v2 + 3056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3064) = v3;
  sub_18E1D48C0();
  *(v2 + 3032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller3b()();
  *(v2 + 3096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3104) = v3;
  sub_18E1D48C0();
  *(v2 + 3072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesTitle()();
  *(v2 + 3136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3144) = v3;
  sub_18E1D48C0();
  *(v2 + 3112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationTitle3b()();
  *(v2 + 3176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3184) = v3;
  sub_18E1D48C0();
  *(v2 + 3152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV4()();
  *(v2 + 3216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3224) = v3;
  sub_18E1D48C0();
  *(v2 + 3192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV5()();
  *(v2 + 3256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3264) = v3;
  sub_18E1D48C0();
  *(v2 + 3232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV6()();
  *(v2 + 3296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3304) = v3;
  sub_18E1D48C0();
  *(v2 + 3272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ProfessionalTone()();
  *(v2 + 3336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3344) = v3;
  sub_18E1D48C0();
  *(v2 + 3312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ProofreadingReview()();
  *(v2 + 3376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3384) = v3;
  sub_18E1D48C0();
  *(v2 + 3352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItems()();
  *(v2 + 3416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3424) = v3;
  sub_18E1D48C0();
  *(v2 + 3392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2()();
  *(v2 + 3456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3464) = v3;
  sub_18E1D48C0();
  *(v2 + 3432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV4()();
  *(v2 + 3496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3504) = v3;
  sub_18E1D48C0();
  *(v2 + 3472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV5()();
  *(v2 + 3536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3544) = v3;
  sub_18E1D48C0();
  *(v2 + 3512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV6()();
  *(v2 + 3576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3584) = v3;
  sub_18E1D48C0();
  *(v2 + 3552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SafetyGuardrail()();
  *(v2 + 3616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3624) = v3;
  sub_18E1D48C0();
  *(v2 + 3592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingOnDevice()();
  *(v2 + 3656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3664) = v3;
  sub_18E1D48C0();
  *(v2 + 3632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3B()();
  *(v2 + 3696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3704) = v3;
  sub_18E1D48C0();
  *(v2 + 3672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3BV2()();
  *(v2 + 3736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3744) = v3;
  sub_18E1D48C0();
  *(v2 + 3712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SmartAppActions()();
  *(v2 + 3776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3784) = v3;
  sub_18E1D48C0();
  *(v2 + 3752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralExtraction()();
  *(v2 + 3816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3824) = v3;
  sub_18E1D48C0();
  *(v2 + 3792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuredExtraction()();
  *(v2 + 3856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3864) = v3;
  sub_18E1D48C0();
  *(v2 + 3832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItems()();
  *(v2 + 3896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3904) = v3;
  sub_18E1D48C0();
  *(v2 + 3872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2()();
  *(v2 + 3936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3944) = v3;
  sub_18E1D48C0();
  *(v2 + 3912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Summarization()();
  *(v2 + 3976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3984) = v3;
  sub_18E1D48C0();
  *(v2 + 3952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TablesTransform()();
  *(v2 + 4016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4024) = v3;
  sub_18E1D48C0();
  *(v2 + 3992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TakeawaysTransform()();
  *(v2 + 4056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4064) = v3;
  sub_18E1D48C0();
  *(v2 + 4032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TamalePOI()();
  *(v2 + 4096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4104) = v3;
  sub_18E1D48C0();
  *(v2 + 4072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextEventExtraction()();
  *(v2 + 4136) = &type metadata for AssetBackedLLMDraftBundle;
  v24 = sub_18E2083A8();
  *(v2 + 4144) = v24;
  sub_18E1E2C84();
  v25 = swift_allocObject();
  *(v2 + 4112) = v25;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  *(v25 + 16) = 0xD00000000000003DLL;
  *(v25 + 24) = v1;
  *(v2 + 4176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4184) = v3;
  sub_18E1D48C0();
  *(v2 + 4152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextExpert()();
  *(v2 + 4216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4224) = v3;
  sub_18E1D48C0();
  *(v2 + 4192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextPersonExtraction()();
  *(v2 + 4256) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4264) = v24;
  sub_18E1E2C84();
  v26 = swift_allocObject();
  *(v2 + 4232) = v26;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  *(v26 + 16) = 0xD00000000000003ELL;
  *(v26 + 24) = v1;
  *(v2 + 4296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4304) = v3;
  sub_18E1D48C0();
  *(v2 + 4272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.DeviceSummarizationTextSummarizer()();
  *(v2 + 4336) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4344) = v24;
  sub_18E1E2C84();
  v27 = swift_allocObject();
  *(v2 + 4312) = v27;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.Textunderstanding()();
  *(v27 + 16) = 0xD00000000000003ALL;
  *(v27 + 24) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4384) = v3;
  sub_18E1D48C0();
  *(v2 + 4352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdParty()();
  *(v2 + 4416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4424) = v3;
  sub_18E1D48C0();
  *(v2 + 4392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdPartySD()();
  *(v2 + 4456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4464) = v3;
  sub_18E1D48C0();
  *(v2 + 4432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UIGrounding()();
  *(v2 + 4496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4504) = v3;
  sub_18E1D48C0();
  *(v2 + 4472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UIPreviews()();
  *(v2 + 4536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4544) = v3;
  sub_18E1D48C0();
  *(v2 + 4512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UrgencyClassification()();
  *(v2 + 4576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4584) = v3;
  sub_18E1D48C0();
  *(v2 + 4552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SmallMessagesReplyWatch()();
  *(v2 + 4616) = &type metadata for LLMBundle;
  v28 = sub_18E1D8410();
  *(v2 + 4624) = v28;
  sub_18E1D48C0();
  *(v2 + 4592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AccessibilityMagnifier()();
  *(v2 + 4656) = &type metadata for LLMBundle;
  *(v2 + 4664) = v28;
  sub_18E1D48C0();
  *(v2 + 4632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServer()();
  *(v2 + 4696) = &type metadata for LLMBundle;
  *(v2 + 4704) = v28;
  sub_18E1D48C0();
  *(v2 + 4672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerAutograder()();
  *(v2 + 4736) = &type metadata for LLMBundle;
  *(v2 + 4744) = v28;
  sub_18E1D48C0();
  *(v2 + 4712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerBase()();
  *(v2 + 4776) = &type metadata for LLMBundle;
  *(v2 + 4784) = v28;
  sub_18E1D48C0();
  *(v2 + 4752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerBulletsTransform()();
  *(v2 + 4816) = &type metadata for LLMBundle;
  *(v2 + 4824) = v28;
  sub_18E1D48C0();
  *(v2 + 4792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerConciseTone()();
  *(v2 + 4856) = &type metadata for LLMBundle;
  *(v2 + 4864) = v28;
  sub_18E1D48C0();
  *(v2 + 4832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerDescribeYourEdit()();
  *(v2 + 4896) = &type metadata for LLMBundle;
  *(v2 + 4904) = v28;
  sub_18E1D48C0();
  *(v2 + 4872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFitnessWorkoutVoice()();
  *(v2 + 4936) = &type metadata for LLMBundle;
  *(v2 + 4944) = v28;
  sub_18E1D48C0();
  *(v2 + 4912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFriendlyTone()();
  *(v2 + 4976) = &type metadata for LLMBundle;
  *(v2 + 4984) = v28;
  sub_18E1D48C0();
  *(v2 + 4952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalFollowUpPrompts()();
  *(v2 + 5016) = &type metadata for LLMBundle;
  *(v2 + 5024) = v28;
  sub_18E1D48C0();
  *(v2 + 4992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.LWPlannerV1()();
  *(v2 + 5056) = &type metadata for LLMBundle;
  *(v2 + 5064) = v28;
  sub_18E1D48C0();
  *(v2 + 5032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMagicRewrite()();
  *(v2 + 5096) = &type metadata for LLMBundle;
  *(v2 + 5104) = v28;
  sub_18E1D48C0();
  *(v2 + 5072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormBasic()();
  *(v2 + 5136) = &type metadata for LLMBundle;
  *(v2 + 5144) = v28;
  sub_18E1D48C0();
  *(v2 + 5112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormRewrite()();
  *(v2 + 5176) = &type metadata for LLMBundle;
  *(v2 + 5184) = v28;
  sub_18E1D48C0();
  *(v2 + 5152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyQA()();
  *(v2 + 5216) = &type metadata for LLMBundle;
  *(v2 + 5224) = v28;
  sub_18E1D48C0();
  *(v2 + 5192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesUserRequest()();
  *(v2 + 5256) = &type metadata for LLMBundle;
  *(v2 + 5264) = v28;
  sub_18E1D48C0();
  *(v2 + 5232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrailServer()();
  *(v2 + 5296) = &type metadata for LLMBundle;
  *(v2 + 5304) = v28;
  sub_18E1D48C0();
  *(v2 + 5272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedInteraction()();
  *(v2 + 5336) = &type metadata for LLMBundle;
  *(v2 + 5344) = v28;
  sub_18E1D48C0();
  *(v2 + 5312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedReflection()();
  *(v2 + 5376) = &type metadata for LLMBundle;
  *(v2 + 5384) = v28;
  sub_18E1D48C0();
  *(v2 + 5352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedSchema()();
  *(v2 + 5416) = &type metadata for LLMBundle;
  *(v2 + 5424) = v28;
  sub_18E1D48C0();
  *(v2 + 5392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedTone()();
  *(v2 + 5456) = &type metadata for LLMBundle;
  *(v2 + 5464) = v28;
  sub_18E1D48C0();
  *(v2 + 5432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneBase()();
  *(v2 + 5496) = &type metadata for LLMBundle;
  *(v2 + 5504) = v28;
  sub_18E1D48C0();
  *(v2 + 5472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponse()();
  *(v2 + 5536) = &type metadata for LLMBundle;
  *(v2 + 5544) = v28;
  sub_18E1D48C0();
  *(v2 + 5512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponseV2()();
  *(v2 + 5576) = &type metadata for LLMBundle;
  *(v2 + 5584) = v28;
  sub_18E1D48C0();
  *(v2 + 5552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPersonalizedSmartReply()();
  *(v2 + 5616) = &type metadata for LLMBundle;
  *(v2 + 5624) = v28;
  sub_18E1D48C0();
  *(v2 + 5592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosCommon()();
  *(v2 + 5656) = &type metadata for LLMBundle;
  *(v2 + 5664) = v28;
  sub_18E1D48C0();
  *(v2 + 5632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCuration()();
  *(v2 + 5696) = &type metadata for LLMBundle;
  *(v2 + 5704) = v28;
  sub_18E1D48C0();
  *(v2 + 5672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationV2()();
  *(v2 + 5736) = &type metadata for LLMBundle;
  *(v2 + 5744) = v28;
  sub_18E1D48C0();
  *(v2 + 5712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits()();
  *(v2 + 5776) = &type metadata for LLMBundle;
  *(v2 + 5784) = v28;
  sub_18E1D48C0();
  *(v2 + 5752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV2()();
  *(v2 + 5816) = &type metadata for LLMBundle;
  *(v2 + 5824) = v28;
  sub_18E1D48C0();
  *(v2 + 5792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV3()();
  *(v2 + 5856) = &type metadata for LLMBundle;
  *(v2 + 5864) = v28;
  sub_18E1D48C0();
  *(v2 + 5832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding()();
  *(v2 + 5896) = &type metadata for LLMBundle;
  *(v2 + 5904) = v28;
  sub_18E1D48C0();
  *(v2 + 5872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV2()();
  *(v2 + 5936) = &type metadata for LLMBundle;
  *(v2 + 5944) = v28;
  sub_18E1D48C0();
  *(v2 + 5912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV3()();
  *(v2 + 5976) = &type metadata for LLMBundle;
  *(v2 + 5984) = v28;
  sub_18E1D48C0();
  *(v2 + 5952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller()();
  *(v2 + 6016) = &type metadata for LLMBundle;
  *(v2 + 6024) = v28;
  sub_18E1D48C0();
  *(v2 + 5992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStorytellerV2()();
  *(v2 + 6056) = &type metadata for LLMBundle;
  *(v2 + 6064) = v28;
  sub_18E1D48C0();
  *(v2 + 6032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Planner()();
  *(v2 + 6096) = &type metadata for LLMBundle;
  *(v2 + 6104) = v28;
  sub_18E1D48C0();
  *(v2 + 6072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV2()();
  *(v2 + 6136) = &type metadata for LLMBundle;
  *(v2 + 6144) = v28;
  sub_18E1D48C0();
  *(v2 + 6112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV3()();
  *(v2 + 6176) = &type metadata for LLMBundle;
  *(v2 + 6184) = v28;
  sub_18E1D48C0();
  *(v2 + 6152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV7()();
  *(v2 + 6216) = &type metadata for LLMBundle;
  *(v2 + 6224) = v28;
  sub_18E1D48C0();
  *(v2 + 6192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV8()();
  *(v2 + 6256) = &type metadata for LLMBundle;
  *(v2 + 6264) = v28;
  sub_18E1D48C0();
  *(v2 + 6232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV9()();
  *(v2 + 6296) = &type metadata for LLMBundle;
  *(v2 + 6304) = v28;
  sub_18E1D48C0();
  *(v2 + 6272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPQAVerification()();
  *(v2 + 6336) = &type metadata for LLMBundle;
  *(v2 + 6344) = v28;
  sub_18E1D48C0();
  *(v2 + 6312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProfessionalTone()();
  *(v2 + 6376) = &type metadata for LLMBundle;
  *(v2 + 6384) = v28;
  sub_18E1D48C0();
  *(v2 + 6352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProofreadingReview()();
  *(v2 + 6416) = &type metadata for LLMBundle;
  *(v2 + 6424) = v28;
  sub_18E1D48C0();
  *(v2 + 6392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeList()();
  *(v2 + 6456) = &type metadata for LLMBundle;
  *(v2 + 6464) = v28;
  sub_18E1D48C0();
  *(v2 + 6432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGeneration()();
  *(v2 + 6496) = &type metadata for LLMBundle;
  *(v2 + 6504) = v28;
  sub_18E1D48C0();
  *(v2 + 6472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV2()();
  *(v2 + 6536) = &type metadata for LLMBundle;
  *(v2 + 6544) = v28;
  sub_18E1D48C0();
  *(v2 + 6512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV3()();
  *(v2 + 6576) = &type metadata for LLMBundle;
  *(v2 + 6584) = v28;
  sub_18E1D48C0();
  *(v2 + 6552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV7()();
  *(v2 + 6616) = &type metadata for LLMBundle;
  *(v2 + 6624) = v28;
  sub_18E1D48C0();
  *(v2 + 6592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV8()();
  *(v2 + 6656) = &type metadata for LLMBundle;
  *(v2 + 6664) = v28;
  sub_18E1D48C0();
  *(v2 + 6632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingServer()();
  *(v2 + 6696) = &type metadata for LLMBundle;
  *(v2 + 6704) = v28;
  sub_18E1D48C0();
  *(v2 + 6672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction()();
  *(v2 + 6736) = &type metadata for LLMBundle;
  *(v2 + 6744) = v28;
  sub_18E1D48C0();
  *(v2 + 6712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMActionV2()();
  *(v2 + 6776) = &type metadata for LLMBundle;
  *(v2 + 6784) = v28;
  sub_18E1D48C0();
  *(v2 + 6752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerStructuredExtraction()();
  *(v2 + 6816) = &type metadata for LLMBundle;
  *(v2 + 6824) = v28;
  sub_18E1D48C0();
  *(v2 + 6792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.STXMultimodal()();
  *(v2 + 6856) = &type metadata for LLMBundle;
  *(v2 + 6864) = v28;
  sub_18E1D48C0();
  *(v2 + 6832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuperAutofillMultimodal()();
  *(v2 + 6896) = &type metadata for LLMBundle;
  *(v2 + 6904) = v28;
  sub_18E1D48C0();
  *(v2 + 6872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTablesTransform()();
  *(v2 + 6936) = &type metadata for LLMBundle;
  *(v2 + 6944) = v28;
  sub_18E1D48C0();
  *(v2 + 6912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTakeawaysTransform()();
  *(v2 + 6976) = &type metadata for LLMBundle;
  *(v2 + 6984) = v28;
  sub_18E1D48C0();
  *(v2 + 6952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SummarizationTextSummarizer()();
  *(v2 + 7016) = &type metadata for LLMBundle;
  *(v2 + 7024) = v28;
  sub_18E1D48C0();
  *(v2 + 6992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.VisualIntelligence()();
  *(v2 + 7056) = &type metadata for LLMBundle;
  *(v2 + 7064) = v28;
  sub_18E1D48C0();
  *(v2 + 7032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FinancialInsights()();
  *(v2 + 7096) = &type metadata for LLMBundle;
  *(v2 + 7104) = v28;
  sub_18E1D48C0();
  v29 = swift_allocObject();
  *(v2 + 7072) = v29;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase()();
  sub_18E1D4980();
  *(v29 + 16) = 0xD000000000000033;
  *(v29 + 24) = v1;
  *(v2 + 7136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 7144) = v3;
  sub_18E1D48C0();
  v30 = swift_allocObject();
  *(v2 + 7112) = v30;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.PQAVerificationBase()();
  sub_18E1D4980();
  *(v30 + 16) = 0xD000000000000026;
  *(v30 + 24) = v1;
  *(v2 + 7176) = &type metadata for LLMBundle;
  *(v2 + 7184) = v28;
  sub_18E1D48C0();
  v31 = swift_allocObject();
  *(v2 + 7152) = v31;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase()();
  sub_18E1D4980();
  *(v31 + 16) = 0xD00000000000003DLL;
  *(v31 + 24) = v1;
  *(v2 + 7216) = &type metadata for AssetBackedDiffusionBundle;
  v32 = sub_18E22EAB0();
  *(v2 + 7224) = v32;
  sub_18E1E2C84();
  v33 = swift_allocObject();
  *(v2 + 7192) = v33;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Animation()();
  *(v33 + 16) = 0xD000000000000030;
  *(v33 + 24) = &unk_1F0141400;
  *(v2 + 7256) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7264) = v32;
  sub_18E1E2C84();
  *(v2 + 7232) = swift_allocObject();
  static Catalog.ResourceBundle.VisualGeneration.Diffusion.DiffusionBase()();
  *(v2 + 7296) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7304) = v32;
  sub_18E1E2C84();
  v34 = swift_allocObject();
  *(v2 + 7272) = v34;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Emoji()();
  *(v34 + 16) = 0xD00000000000002CLL;
  *(v34 + 24) = &unk_1F0141400;
  *(v2 + 7336) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7344) = v32;
  sub_18E1E2C84();
  v35 = swift_allocObject();
  *(v2 + 7312) = v35;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Illustration()();
  *(v35 + 16) = 0xD000000000000033;
  *(v35 + 24) = &unk_1F0141400;
  *(v2 + 7376) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7384) = v32;
  sub_18E1E2C84();
  v36 = swift_allocObject();
  *(v2 + 7352) = v36;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds()();
  *(v36 + 16) = 0xD00000000000003BLL;
  *(v36 + 24) = &unk_1F0141400;
  *(v2 + 7416) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7424) = v32;
  sub_18E1E2C84();
  v37 = swift_allocObject();
  *(v2 + 7392) = v37;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation()();
  *(v37 + 16) = 0xD00000000000003DLL;
  *(v37 + 24) = &unk_1F0141400;
  *(v2 + 7456) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7464) = v32;
  sub_18E1E2C84();
  v38 = swift_allocObject();
  *(v2 + 7432) = v38;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji()();
  *(v38 + 16) = 0xD000000000000039;
  *(v38 + 24) = &unk_1F0141400;
  *(v2 + 7496) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7504) = v32;
  sub_18E1E2C84();
  v39 = swift_allocObject();
  *(v2 + 7472) = v39;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration()();
  *(v39 + 16) = 0xD000000000000040;
  *(v39 + 24) = &unk_1F0141400;
  *(v2 + 7536) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7544) = v32;
  sub_18E1E2C84();
  v40 = swift_allocObject();
  *(v2 + 7512) = v40;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch()();
  *(v40 + 16) = 0xD00000000000003ALL;
  *(v40 + 24) = &unk_1F0141400;
  *(v2 + 7576) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7584) = v32;
  sub_18E1E2C84();
  v41 = swift_allocObject();
  *(v2 + 7552) = v41;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble()();
  *(v41 + 16) = 0xD000000000000042;
  *(v41 + 24) = &unk_1F0141400;
  *(v2 + 7616) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7624) = v32;
  sub_18E1E2C84();
  v42 = swift_allocObject();
  *(v2 + 7592) = v42;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Refiner()();
  *(v42 + 16) = 0xD00000000000002ELL;
  *(v42 + 24) = &unk_1F0141400;
  *(v2 + 7656) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7664) = v32;
  sub_18E1E2C84();
  v43 = swift_allocObject();
  *(v2 + 7632) = v43;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Sketch()();
  *(v43 + 16) = 0xD00000000000002DLL;
  *(v43 + 24) = &unk_1F0141400;
  *(v2 + 7696) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7704) = v32;
  sub_18E1E2C84();
  v44 = swift_allocObject();
  *(v2 + 7672) = v44;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji()();
  *(v44 + 16) = 0xD000000000000035;
  *(v44 + 24) = &unk_1F0141400;
  *(v2 + 7736) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7744) = v32;
  sub_18E1E2C84();
  v45 = swift_allocObject();
  *(v2 + 7712) = v45;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Scribble()();
  *(v45 + 16) = 0xD000000000000035;
  *(v45 + 24) = &unk_1F0141400;
  *(v2 + 7776) = &type metadata for LLMBundle;
  *(v2 + 7784) = v28;
  sub_18E1D48C0();
  v46 = swift_allocObject();
  *(v2 + 7752) = v46;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer()();
  static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase()();
  sub_18E1D4980();
  *(v46 + 16) = 0xD000000000000022;
  *(v46 + 24) = &unk_1F0141400;
  *(v2 + 7816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 7824) = v3;
  sub_18E1D48C0();
  v47 = swift_allocObject();
  *(v2 + 7792) = v47;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.NLRouterTokenizer()();
  static Catalog.Resource.LLM.Model.NLRouterBase()();
  bzero(v47 + 14, 0xC8uLL);
  v47[2] = 0xD000000000000022;
  v47[3] = &unk_1F0141400;
  *(v2 + 7856) = &type metadata for LLMBundle;
  *(v2 + 7864) = v28;
  sub_18E1D48C0();
  v48 = swift_allocObject();
  *(v2 + 7832) = v48;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.ChatGPTTokenizer()();
  static Catalog.Resource.LLM.Model.ChatGPT()();
  bzero(v48 + 14, 0xC8uLL);
  v48[2] = 0xD000000000000018;
  v48[3] = &unk_1F0141400;
  *(v2 + 7896) = &type metadata for ImageSpatialPhotosReliveBundle;
  *(v2 + 7904) = sub_18E231008();
  sub_18E1E2C84();
  v49 = swift_allocObject();
  *(v2 + 7872) = v49;
  sub_18E1CF684();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin()();
  *(v49 + 16) = 0xD00000000000002CLL;
  *(v49 + 24) = &unk_1F0141400;
  *(v2 + 7936) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
  *(v2 + 7944) = sub_18E23144C();
  sub_18E1E2C84();
  v50 = swift_allocObject();
  *(v2 + 7912) = v50;
  sub_18E1CF684();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain()();
  *(v50 + 16) = 0xD000000000000029;
  *(v50 + 24) = &unk_1F0141400;
  *(v2 + 7976) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
  *(v2 + 7984) = sub_18E2316AC();
  sub_18E1E6400();
  v51 = swift_allocObject();
  *(v2 + 7952) = v51;
  sub_18E1CF684();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v51 + 16) = 0xD00000000000002ELL;
  *(v51 + 24) = &unk_1F0141400;
  *(v2 + 8016) = &type metadata for AssetBackedTokenInputDenyListBundle;
  *(v2 + 8024) = sub_18E207A4C();
  sub_18E1E2C84();
  v52 = swift_allocObject();
  *(v2 + 7992) = v52;
  sub_18E1CF684();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v52 + 16) = 0xD000000000000025;
  *(v52 + 24) = &unk_1F0141400;
  *(v2 + 8056) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
  *(v2 + 8064) = sub_18E2319DC();
  sub_18E1E6400();
  v53 = swift_allocObject();
  *(v2 + 8032) = v53;
  sub_18E1CF684();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v53 + 16) = 0xD00000000000002FLL;
  *(v53 + 24) = &unk_1F0141400;
  *(v2 + 8096) = &type metadata for AssetBackedTokenOutputDenyListBundle;
  *(v2 + 8104) = sub_18E231D0C();
  sub_18E1E2C84();
  v54 = swift_allocObject();
  *(v2 + 8072) = v54;
  sub_18E1CF684();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v54 + 16) = 0xD000000000000026;
  *(v54 + 24) = &unk_1F0141400;
  *(v2 + 8136) = &type metadata for AssetBackedTokenOutputRetainListBundle;
  v55 = sub_18E2AE01C();
  *(v2 + 8144) = v55;
  sub_18E1E1950();
  *(v2 + 8112) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListStructureExtractionSafetyWordList()();
  *(v2 + 8176) = &type metadata for AssetBackedTokenOutputRetainListBundle;
  *(v2 + 8184) = v55;
  sub_18E1E1950();
  *(v2 + 8152) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListWithDefaultsTemplate()();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets()();
  v78 = 0xD000000000000042;
  v79 = 0x800000018E459040;
  sub_18E231D60();
  v57 = v56;
  v76 = &type metadata for AssetBackedMotionBundle;
  v58 = sub_18E2AE070();
  v77 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v59, v60);
  *(v57 + 16) = 205;
  sub_18E1C551C(&v75, v57 + 0x2000);
  sub_18E2AE120(&v78);
  sub_18E1D44C0();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  v78 = 0xD00000000000003ELL;
  v79 = 205;
  v61 = *(v57 + 16);
  if (v61 >= *(v57 + 24) >> 1)
  {
    sub_18E1E2944();
    v57 = v72;
  }

  v76 = &type metadata for AssetBackedMotionBundle;
  v77 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v62, v63);
  *(v57 + 16) = v61 + 1;
  sub_18E1C551C(&v75, v57 + 40 * v61 + 32);
  sub_18E2AE120(&v78);
  static Catalog.ResourceBundle.Motion.CoreMotionIMUFoundationModel()();
  v64 = *(v57 + 16);
  if (v64 >= *(v57 + 24) >> 1)
  {
    sub_18E1E2944();
    v57 = v73;
  }

  v76 = &type metadata for AssetBackedMotionBundle;
  v77 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v65, v66);
  *(v57 + 16) = v64 + 1;
  sub_18E1C551C(&v75, v57 + 40 * v64 + 32);
  sub_18E2AE120(&v78);
  static Catalog.ResourceBundle.Motion.CoreMotionPednetFoundationModel()();
  v67 = *(v57 + 16);
  if (v67 >= *(v57 + 24) >> 1)
  {
    sub_18E231D60();
    v57 = v74;
  }

  v76 = &type metadata for MotionBundle;
  v77 = sub_18E205FC8();
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E1DEEE0(v68, v69);
  *(v57 + 16) = v67 + 1;
  sub_18E1C551C(&v75, v57 + 40 * v67 + 32);
  sub_18E231E1C(&v78);
  v70 = *MEMORY[0x1E69E9840];
  return v57;
}

unint64_t sub_18E1D3DD8()
{
  result = qword_1EABE06D8;
  if (!qword_1EABE06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06D8);
  }

  return result;
}

uint64_t static Catalog.ResourceBundle.Overrides.DefaultOverrides.DefaultOverridesOnly()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.defaultoverrides", v3, v4, v5, v6, v7, v8, v9, v10);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](67, 0x800000018E4659C0);
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4();
  sub_18E22EA38();
  result = sub_18E1CD52C();
  __break(1u);
  return result;
}

unint64_t sub_18E1D40A4()
{
  result = qword_1ED6A90C8;
  if (!qword_1ED6A90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90C8);
  }

  return result;
}

void AssetBackedModelConfigurationReplacementBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v49, v54, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v50, v55);
  sub_18E1E3BD4();
  v22 = sub_18E21D09C(29, v20, v21);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v207 || !*(v207 + 16))
  {
    sub_18E2D0B44();
    v46 = sub_18E1C8558();
    sub_18E1E6860(v46, v47);
    sub_18E221DDC(v48, 41);

LABEL_7:

    sub_18E1FE044(&v206);
    goto LABEL_8;
  }

  sub_18E223A20(v22, v23, v24, v25, v26, v27, v28, v29, v51, v56, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v206);
  sub_18E1C973C();
  v38 = sub_18E1D5E70(v30, v31, v32, v33, v34, v35, v36, v37, v52, v57, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v206);
  sub_18E1D4410(v38, v39, v40, v41, v42, v43, v44, v45, v53, v58);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

void *sub_18E1D41CC(uint64_t a1)
{
  *(v1 + 120) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 808), 0xD8uLL);
}

uint64_t sub_18E1D4214()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
}

void sub_18E1D4294()
{
  *(v1 - 88) = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t sub_18E1D42C0()
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *(v0 + 32) = *v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
}

void sub_18E1D42E0(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

uint64_t sub_18E1D430C()
{

  return sub_18E44E46C();
}

uint64_t sub_18E1D432C()
{

  return sub_18E44EB4C();
}

void *sub_18E1D4380()
{

  return memcpy((v0 + 224), (v0 + 424), 0xC1uLL);
}

uint64_t sub_18E1D43AC()
{
  v2 = **(v1 - 200);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_18E1D43E0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0xE000000000000000;

  return sub_18E44EFFC();
}

void *sub_18E1D4410(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0xC8uLL);
}

uint64_t sub_18E1D443C()
{

  return swift_once();
}

void sub_18E1D4494(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_18E1D44E0()
{
  v1 = *(v0 + 624);
  *(v0 + 616) = *(v0 + 616);
  *(v0 + 624) = v1;
}

uint64_t sub_18E1D451C(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 150000;
  *(v1 + 48) = 0;
  return result;
}

void sub_18E1D4530(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 1590000;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

double sub_18E1D456C()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

void sub_18E1D4598()
{
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v1 - 65) = 1;
}

uint64_t sub_18E1D45A8()
{

  return swift_once();
}

char *sub_18E1D45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  result = &a10;
  v12 = *(v10 - 72);
  return result;
}

uint64_t sub_18E1D45EC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != result || v4 != a2)
  {
    sub_18E21D0F8();
    result = sub_18E44F3CC();
    if ((result & 1) == 0)
    {

      sub_18E44EFFC();

      sub_18E1CA5A4();
      v9 = v6;
      v7 = sub_18E1CBE3C();
      MEMORY[0x193ACC300](v7);
      sub_18E24B33C();
      sub_18E1C8558();
      *v8 = v3;
      v8[1] = v4;
      v8[2] = 0xD00000000000001CLL;
      v8[3] = v9;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_18E1D46CC()
{
  sub_18E212024();
  if (v0 != v3 || v1 != 0xE700000000000000)
  {
    v5 = v1;
    v6 = v0;
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    v9 = *(v2 + 192);
    sub_18E1D0380();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      if (qword_1ED6A94E0 != -1)
      {
        swift_once();
      }

      v10 = sub_18E1E3DF8();
      if (sub_18E2230F4(v10, v11, v12) && (v9 == 2 || (v9 & 1) == 0))
      {
        if (qword_1ED6A9048 != -1)
        {
          swift_once();
        }

        v13 = sub_18E1E3DF8();
        v16 = sub_18E21654C(v13, v14, v15);
        if (!v16 || (v17 = v16, v25 = v6, v26 = v5, MEMORY[0x1EEE9AC00](v16), v24[2] = &v25, v18 = sub_18E1CD660(sub_18E1CD848, v24, v17), , !v18))
        {
          v25 = 0;
          v26 = 0xE000000000000000;

          sub_18E44EFFC();

          sub_18E1CA5A4();
          v25 = 0xD000000000000014;
          v26 = v19;
          v20 = sub_18E1E3DF8();
          MEMORY[0x193ACC300](v20);
          v21 = v25;
          v22 = v26;
          sub_18E328264();
          sub_18E1C8558();
          *v23 = v6;
          v23[1] = v5;
          v23[2] = v21;
          v23[3] = v22;
          swift_willThrow();
        }
      }
    }
  }
}

void *sub_18E1D48D8()
{
  sub_18E1C551C((v1 - 128), (v0 + 10));
  v2 = v0[14];
  v3 = v0[13];

  return sub_18E1E15F4(v0 + 10, v3);
}

void sub_18E1D491C()
{
  *(v0 + 56) = v1;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
}

__n128 *sub_18E1D4930(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

void sub_18E1D4980()
{

  bzero((v0 + 112), 0xC8uLL);
}

uint64_t sub_18E1D49D0()
{

  return swift_initStackObject();
}

uint64_t sub_18E1D4A18()
{
  *v3 = v1;
  v3[1] = v2;
  result = sub_18E1C551C(v0 + 4, (v3 + 2));
  v5 = *v0;
  v3[7] = *(v0 + 1);
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = v5;
  v3[11] = *(v0 + 2);
  return result;
}

__n128 *sub_18E1D4A58(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1D4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_18E1D4AD0()
{
}

uint64_t sub_18E1D4B50(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 1590000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1D4B68(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1D4B84()
{

  return sub_18E44F48C();
}

unint64_t sub_18E1D4BA0()
{
  result = qword_1ED6A8108;
  if (!qword_1ED6A8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8108);
  }

  return result;
}

uint64_t sub_18E1D4C00()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1D4C20()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D4C98()
{

  return swift_once();
}

uint64_t sub_18E1D4D14()
{
}

uint64_t sub_18E1D4D90@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 | 0x20000u;
  *(v2 + 48) = 0;
  *(v2 + 52) = 0;
  return result;
}

uint64_t sub_18E1D4DA4(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t *sub_18E1D4E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E44E24C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_18E44E23C();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v8 = *(a1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType);
  v9 = *(a1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType + 8);
  sub_18E1C77B0();
  v11 = v8 == 0xD000000000000018 && v10 == v9;
  if (v11 || (sub_18E22324C(), (sub_18E1E37B4() & 1) != 0))
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
      v42 = sub_18E23144C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F76A0();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for ImageSpatialPhotosReliveBundle;
      v42 = sub_18E231008();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F764C();
    }

LABEL_9:
    sub_18E1E2088();
    sub_18E44E22C();
    sub_18E1E8F44(&v43, &qword_1EABE1010, &unk_18E4E24D0);

    if (v2)
    {
      return sub_18E287190(&v40);
    }

LABEL_30:
    v43 = v40;
    v44 = v41;
    v45 = v42;
    goto LABEL_31;
  }

  v13 = v8 == 0x6E6F69746F4DLL && v9 == 0xE600000000000000;
  if (v13 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedMotionBundle;
      v42 = sub_18E2AE070();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F75F8();
      goto LABEL_9;
    }

    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
    *(&v41 + 1) = &type metadata for MotionBundle;
    v42 = sub_18E205FC8();
    sub_18E1E2C84();
    swift_allocObject();
    sub_18E1E3C4C();
    sub_18E2F75A4();
LABEL_19:
    sub_18E1E2088();
    sub_18E44E22C();
    if (v2)
    {
      sub_18E1E8F44(&v43, &qword_1EABE1010, &unk_18E4E24D0);

      return sub_18E287190(&v40);
    }

    sub_18E1E8F44(&v43, &qword_1EABE1010, &unk_18E4E24D0);

    goto LABEL_30;
  }

  sub_18E1C77B0();
  v15 = v8 == 0xD00000000000001ALL && v14 == v9;
  if (v15 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedDefaultOverridesBundle;
      v42 = sub_18E1D3DD8();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7550();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for DefaultOverridesBundle;
      v42 = sub_18E2EE04C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F74FC();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v17 = v8 == 0xD00000000000001CLL && v16 == v9;
  if (v17 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedTokenInputDenyListBundle;
      v42 = sub_18E207A4C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E224854();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for TokenInputDenyListBundle;
      v42 = sub_18E2EDFF8();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F74A8();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v19 = v8 == 0xD000000000000028 && v18 == v9;
  if (v19 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
      v42 = sub_18E2316AC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7454();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for TokenInputDenyListWithDefaultsBundle;
      v42 = sub_18E2EDFA4();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7400();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v21 = v8 == 0xD00000000000001DLL && v20 == v9;
  if (v21 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedTokenOutputDenyListBundle;
      v42 = sub_18E231D0C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F73AC();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for TokenOutputDenyListBundle;
      v42 = sub_18E2EDF50();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7358();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v23 = v8 == 0xD000000000000029 && v22 == v9;
  if (v23 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
      v42 = sub_18E2319DC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7304();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for TokenOutputDenyListWithDefaultsBundle;
      v42 = sub_18E2EDEFC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F72B0();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v26 = v25 + 7;
  v27 = v8 == v25 + 7 && v24 == v9;
  if (v27 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedTokenOutputRetainListBundle;
      v42 = sub_18E2AE01C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F725C();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for TokenOutputRetainListBundle;
      v42 = sub_18E2EDEA8();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7208();
    }

    goto LABEL_19;
  }

  v29 = v8 == sub_18E220D9C() && v9 == v28;
  if (v29 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedSecureAnalyticsBundle;
      v42 = sub_18E2062CC();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F71B4();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for SecureAnalyticsBundle;
      v42 = sub_18E2ADF28();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7160();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v32 = v8 == v31 - 5 && v30 == v9;
  if (v32 || (sub_18E1E37B4() & 1) != 0)
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedLLMBundle;
      v42 = sub_18E1D4BA0();
      sub_18E1D48C0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E1E01EC();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for LLMBundle;
      v42 = sub_18E1D8410();
      sub_18E1D48C0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F710C();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v34 = v8 == v26 && v33 == v9;
  if (v34 || (sub_18E221BD4(), (sub_18E1E37B4() & 1) != 0))
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedLLMCompileDraftBundle;
      v42 = sub_18E2EE0A0();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F70B8();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for LLMCompileDraftBundle;
      v42 = sub_18E2ADF7C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7064();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v37 = v8 == v36 && v35 == v9;
  if (v37 || (sub_18E22324C(), (sub_18E1E37B4() & 1) != 0))
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedLLMDraftBundle;
      v42 = sub_18E2083A8();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7010();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for LLMDraftBundle;
      v42 = sub_18E2EDE54();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6FBC();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v39 = v8 == 0xD00000000000001ALL && v38 == v9;
  if (v39 || (sub_18E221BD4(), (sub_18E1E37B4() & 1) != 0))
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for AssetBackedDiffusionBundle;
      v42 = sub_18E22EAB0();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6F68();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
      *(&v41 + 1) = &type metadata for DiffusionBundle;
      v42 = sub_18E2EDE00();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6F14();
    }

    goto LABEL_19;
  }

LABEL_31:
  v40 = v43;
  v41 = v44;
  v42 = v45;
  if (*(&v44 + 1))
  {
    return sub_18E1C551C(&v40, a2);
  }

  result = sub_18E1E8F44(&v40, &qword_1EABE1010, &unk_18E4E24D0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}